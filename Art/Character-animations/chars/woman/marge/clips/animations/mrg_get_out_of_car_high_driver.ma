//Maya ASCII 4.0 scene
//Name: mrg_get_out_of_car_high_driver.ma
//Last modified: Thu, Jan 02, 2003 11:01:04 AM
requires maya "4.0";
requires "p3dmayaexp" "2.0";
requires "p3dSimpleShader" "2.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mrg_get_out_of_car_high_driverSource";
	setAttr ".ihi" 0;
	setAttr ".du" 18;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL737";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL738";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -1.0929638467111296 1 -1.0929638467111296 
		2 -1.0671873706258652 3 -1.0596192400372322 4 -1.0059432323724342 5 -0.88929610789847735 
		6 -0.74395857992609604 7 -0.6088107700140527 8 -0.49805481334535584 9 -0.40055261156513539 
		10 -0.31593961680843874 11 -0.23956790411360673 12 -0.17332439695538429 13 
		-0.12509353066622197 14 -0.1022757517432349 15 -0.097439745375477962 16 -0.097192510674283708 
		17 -0.10297241522710725 18 -0.11338028040953063;
createNode animCurveTL -n "Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.058 18 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0.44384609328363683 1 0.44743626993835761 
		2 0.41793047471807471 3 0.42660405291050063 4 0.45976219885426939 5 0.49658200220225157 
		6 0.52587527499603848 7 0.52269850631036885 8 0.48021752844529914 9 0.41723886375579738 
		10 0.35017755623395608 11 0.28561239424829837 12 0.23352943304879223 13 0.20318325535339796 
		14 0.19091429185798503 15 0.18390741588687282 16 0.17259896340642888 17 0.16229103088956898 
		18 0.16175458744256382;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 5.0000002099514242 2 10.000000345802345 
		3 15.000000416815329 4 20.000000432252932 5 25.000000401377722 6 30.000000333452256 
		7 35.000000237739116 8 40.000000123500833 9 45 10 49.999999876499167 11 54.999999762260884 
		12 59.999999666547744 13 64.999999598622281 14 69.999999567747082 15 74.999999583184675 
		16 79.999999654197651 17 84.999999790048577 18 90;
createNode animCurveTU -n "animCurveTU145";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU146";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU147";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU148";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU149";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU150";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU151";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 1;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU152";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 1;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2199";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2200";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2201";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL740";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL741";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL742";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL743";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1.4496212507996262 4 -0.75662610987177448 
		8 -0.75662610987177448 11 -0.025535954827770047 14 -0.089432696636962142 
		17 -0.089432696636962142 20 -0.089432696636962142 23 -0.089432696636962142 
		29 -0.081145716287402372 32 -0.072059567379697237;
createNode animCurveTL -n "animCurveTL744";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1.2279490663618713 4 0.90425894272881668 
		8 0.90425894272881668 11 0.4605489501004143 14 0.15901539290164871 17 0.090739826238255855 
		20 0.090739826238255855 23 0.090739826238255855 29 0.13523126348040804 32 
		0.10860528941614173;
createNode animCurveTL -n "animCurveTL745";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1.4274355819015074 4 0.93682015547869968 
		8 0.93682015547869968 11 0.44068478113505544 14 0.37820686953638194 17 0.37820686953638194 
		20 0.37820686953638194 23 0.37820686953638194 29 0.25525541732193702 32 0.00088390886240813306;
createNode animCurveTA -n "animCurveTA2202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -24.204848230542304 4 -4.2432371070307617 
		8 -98.648923617843252 11 -144.57627051479582 14 -160.52632885597114 17 -178.44479555013268 
		20 -178.44479555013268 23 -178.44479555013268 29 -181.80605354237352 32 -177.25592113587427;
createNode animCurveTA -n "animCurveTA2203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 71.40228518438056 8 69.202813513275643 
		11 65.395562839128075 14 64.348645467164118 17 64.348645467164133 20 64.348645467164133 
		23 64.348645467164133 29 168.85834103705059 32 175.61546731834773;
createNode animCurveTA -n "animCurveTA2204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 3.694980397967055 8 -123.36829379451167 
		11 -185.97661956872068 14 -177.06797680878609 17 -177.06797680878609 20 -177.06797680878609 
		23 -177.06797680878609 29 -175.44809965660656 32 -181.17543117470936;
createNode animCurveTL -n "animCurveTL746";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.1468862801970878 2 -0.68395863457887773 
		4 -0.60238222946220488 8 -0.60238222946220488 11 -0.56657059087225126 14 
		-0.26314392545677373 17 -0.26314392545677373 20 -0.26314392545677373 23 -0.040468794369370543 
		29 0.21764441145149604 32 0.17655026201706334;
createNode animCurveTL -n "animCurveTL747";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.2464696855624631 2 1.0171068178861062 
		4 0.92040295007758943 8 0.92040295007758943 11 0.87428516625483244 14 0.17835202884694412 
		17 0.10074079658300666 20 0.10074079658300666 23 0.19104471982861476 29 0.10983571210126375 
		32 0.10676264329452093;
createNode animCurveTL -n "animCurveTL748";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.3883743416871892 2 0.74103796155242219 
		4 0.50721591034116531 8 0.50721591034116531 11 0.45596310793574701 14 0.10232611142150212 
		17 0.10232611142150212 20 0.10232611142150212 23 -0.057536084883982923 29 
		-0.064904406754016042 32 -0.073147264740539078;
createNode animCurveTA -n "animCurveTA2205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -36.819011955683756 4 -14.868773507399556 
		8 -129.95294279235549 11 -111.04442304619364 14 20.42261469956993 17 -1.2411000500939884 
		20 -1.2411000500939884 23 17.224717313701184 29 -0.82760133680696057 32 0;
createNode animCurveTA -n "animCurveTA2206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 78.632110970251233 8 77.167965108756619 
		11 63.356438976243041 14 120.91731311278465 17 120.91731311278465 20 120.91731311278465 
		23 113.5567084791402 29 9.1503138867726932 32 25.948901905116408;
createNode animCurveTA -n "animCurveTA2207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 -45.811993104511636 8 -160.88172185248797 
		11 -169.21070321642827 14 -1.2347523458486165 17 -1.2347523458486165 20 -1.2347523458486165 
		23 -8.5771229115663807 29 -2.0095494526916142 32 0;
createNode animCurveTA -n "animCurveTA2208";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2209";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2210";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2211";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2212";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2213";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2214";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2215";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2216";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2217";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2218";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2219";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL749";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0 8 0 11 0 14 0 17 0 20 0 
		23 0 29 0 32 0;
createNode animCurveTL -n "animCurveTL750";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0 8 0 11 0 14 0 17 0 20 0 
		23 0 29 0 32 0;
createNode animCurveTL -n "animCurveTL751";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 4 1 8 1 11 1 14 1 17 1 20 1 
		23 1 29 1 32 1.1269999742507935;
createNode animCurveTL -n "animCurveTL752";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 -0.034660776702225261 8 -0.034660776702225261 
		11 -0.034660776702225261 14 -0.037136546583753045 17 0 20 0 23 0 29 0 32 
		0;
createNode animCurveTL -n "animCurveTL753";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0.43236842264083392 8 0.43236842264083392 
		11 0.43236842264083392 14 0.46325188044122045 17 0 20 0 23 0 29 0 32 0;
createNode animCurveTL -n "animCurveTL754";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 4 1.022596790343715 8 1.022596790343715 
		11 1.022596790343715 14 1.024210846778379 17 1 20 1 23 1 29 1 32 1.1269999742507935;
createNode animCurveTL -n "animCurveTL755";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1.3318677670487873 3 -1.1053045647051232 
		6 -0.62308333677920003 9 -0.29741626348840255 12 -0.092256153986443989 15 
		-0.088497483916374534 18 -0.134945062126369 21 -0.031790024475427482 27 0.10318753762627872 
		30 0.097247464600251146;
createNode animCurveTL -n "animCurveTL756";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.4718651042148105 3 1.4156349662069949 
		6 1.6431944548966531 12 1.0042914624088184 15 0.78136680815198978 18 0.98054198902067657 
		21 0.97651016190422446 27 0.96334271220060108 30 0.9825577053607899;
	setAttr -s 9 ".kit[2:8]"  1 1 9 9 9 9 9;
	setAttr -s 9 ".kot[2:8]"  1 1 9 9 9 9 9;
	setAttr -s 9 ".kix[2:8]"  0.50262618064880371 0.0015816313680261374 
		0.083915367722511292 0.010248337872326374 0.17183157801628113 0.44439429044723511 
		0.051972363144159317;
	setAttr -s 9 ".kiy[2:8]"  0.86450386047363281 -0.99999874830245972 
		-0.99647289514541626 0.99994748830795288 -0.9851263165473938 0.89583128690719604 
		0.99864852428436279;
	setAttr -s 9 ".kox[2:8]"  0.50262629985809326 0.0015814313665032387 
		0.083915367722511292 0.010248337872326374 0.17183157801628113 0.44439429044723511 
		0.051972363144159317;
	setAttr -s 9 ".koy[2:8]"  0.86450380086898804 -0.99999874830245972 
		-0.99647289514541626 0.99994748830795288 -0.9851263165473938 0.89583128690719604 
		0.99864852428436279;
createNode animCurveTL -n "animCurveTL757";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.62126454755213167 3 0.61959169386474788 
		6 0.65005043602501089 9 0.44018376302120749 12 0.24518719055505916 15 0.20915289303639795 
		18 0.19708112465487385 21 0.2910638798563408 27 0.0064320760855255035 30 
		0;
createNode animCurveTA -n "animCurveTA2220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -47.088616656908457 3 -8.5215539741489525 
		9 -173.50714453433415 12 -178.32017754444556 15 -166.43086150798464 18 -181.75712390568867 
		21 -173.77848169373451 27 -176.27925567030778 30 -183.51561099071532;
createNode animCurveTA -n "animCurveTA2221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.0975263990809516 3 64.297551090209751 
		9 70.802999435899054 12 66.138701672266848 15 62.337764729766747 18 64.721581426356707 
		21 97.406970196070944 27 180.3787826440234 30 179.22286324223975;
createNode animCurveTA -n "animCurveTA2222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.53932213336905688 3 7.2379445755754626 
		9 -169.76006021004261 12 -184.39403302728573 15 -184.42544963716392 18 -177.47049933450054 
		21 -177.46420467386454 27 -181.51466885897165 30 -180.18367849931823;
createNode animCurveTA -n "animCurveTA2223";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2224";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2225";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2226";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2227";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2228";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2229";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2230";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2231";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2232";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2233";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2234";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2235";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2236";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2237";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2238";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2239";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2240";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2241";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2242";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2243";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  11 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2244";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  11 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2245";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  11 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0.29765972495079041 1;
	setAttr -s 2 ".kiy[0:1]"  0.95467203855514526 0;
createNode animCurveTA -n "animCurveTA2246";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2247";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2248";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL758";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 -0.5198069948790518;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL759";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 -0.72394202659893114;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL760";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0.36439499068905612;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2249";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 7.7976222737965317;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2250";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 30.409274105849079;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2251";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 64.859940280210893;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL761";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0.43524234076486068;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL762";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 -0.82665738350180629;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL763";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0.27773886459742925;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2252";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2253";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 -28.652637602052774;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2254";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 -64.676908227303443;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL764";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -3.3854287601577617 4 -2.4349248254141824 
		8 -0.56755409218319386 11 0.35397463560481596 14 0.098360475681949555 17 
		0.29595672445326199 20 -0.050511575999421014 23 0.51088742949305455 29 -0.50463972766786358 
		32 -0.25368378509166484;
createNode animCurveTL -n "animCurveTL765";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 3.2951827277525036 4 3.2093367745582122 
		8 3.4122146419506736 11 3.2564957716833374 14 2.4111560171549664 17 1.8829969684963612 
		20 2.2282359333804407 23 2.5464026137780782 29 2.352008141793438 32 2.2026421011163611;
createNode animCurveTL -n "animCurveTL766";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1.1357561097544726 4 1.9552649608274724 
		8 2.3812097276119903 11 1.5194852025327452 14 1.0699235023236144 17 1.0054687400889841 
		20 0.90766395158927293 23 1.303024768786373 29 0.39302303060277383 32 0.0085295933619701902;
createNode animCurveTA -n "animCurveTA2255";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 26.279373069154861 4 94.50353046674239 
		8 135.05490232368319 11 166.51822196318827 14 162.32893465452503 17 148.03334928765904 
		20 134.17061414787904 23 268.12374740508557 29 160.6499754081286 32 202.0446286644393;
createNode animCurveTA -n "animCurveTA2256";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 55.316964386970021 4 47.821496893446991 
		8 37.198790080116289 11 15.597091313553811 14 31.247716093360385 17 26.000739835660212 
		20 26.248045553149087 23 26.025942501031299 29 117.28355991241089 32 155.57968670712754;
createNode animCurveTA -n "animCurveTA2257";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 77.201572122121533 4 127.18655955196871 
		8 144.40156807522339 11 176.6423145983199 14 151.48901628428615 17 133.7501270587309 
		20 107.36817778262002 23 199.66117837666883 29 169.05884783548848 32 242.75973862908975;
createNode animCurveTL -n "animCurveTL767";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -2.1478091564096489 4 -1.8272835982773392 
		8 -1.5789447819403624 14 -0.64049215874667531 17 -0.10793197317211226 20 
		-0.5502285468745024 23 -0.018906252437835933 29 0.77123605466896106 32 0.68473570483005786;
createNode animCurveTL -n "animCurveTL768";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 3.2428528854844094 4 3.6623579277286518 
		8 3.9320850284055178 14 2.5422114258273414 17 1.9213561063299229 20 2.2040502209682593 
		23 2.1843244375921667 29 2.2041880843231096 32 2.1983664203382185;
createNode animCurveTL -n "animCurveTL769";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.2087400184371315 4 0.58555684336640568 
		8 0.82369496811445486 14 -0.19481803584731275 17 -0.27712113122985266 20 
		-0.0047861638845576957 23 0.017435409807179548 29 0.16254235272357093 32 
		-0.1558733356690748;
createNode animCurveTA -n "animCurveTA2258";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 59.007910131897091 4 28.288672191279669 
		8 83.227159798924291 14 -69.811818503132187 17 -65.210455689578708 20 -72.079170570901539 
		23 -38.21340003185616 29 30.300253718764463 32 16.631444046006173;
createNode animCurveTA -n "animCurveTA2259";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -71.601588453715067 4 -4.9966382067771757 
		8 63.127065524947852 14 64.373524147310476 17 46.734600736444989 20 25.431493559211866 
		23 25.841835758420178 29 0.78493955617316402 32 -9.487856524246375;
createNode animCurveTA -n "animCurveTA2260";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -90.779043014820601 4 17.196389197003594 
		8 43.378083526117628 14 -64.412062541150092 17 -70.638430011880061 20 -92.331283509628591 
		23 -69.57763508696155 29 -54.471726640864887 32 -62.805960165937073;
createNode animCurveTL -n "animCurveTL770";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.017571725225418895 4 0.31054502397108613 
		8 0.31054502397108613 11 0.31054502397108613 14 0.31054502397108613 17 0.31054502397108613 
		20 0.31054502397108613 23 0.31054502397108613 29 -0.10212800844106709 32 
		-0.062337280601809833;
createNode animCurveTL -n "animCurveTL771";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.54560785950824164 4 -0.55640530640609931 
		8 -0.55640530640609931 11 -0.55640530640609931 14 -0.55640530640609931 17 
		-0.55640530640609931 20 -0.55640530640609931 23 -0.55640530640609931 29 -0.54102419393306622 
		32 -0.40762644910266188;
createNode animCurveTL -n "animCurveTL772";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.64724218630287966 4 -0.57914122395678103 
		8 -0.57914122395678103 11 -0.57914122395678103 14 -0.57914122395678103 17 
		-0.57914122395678103 20 -0.57914122395678103 23 -0.57914122395678103 29 -0.90946735956948177 
		32 -0.93129112588482243;
createNode animCurveTL -n "animCurveTL773";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.22996541113775407 4 -0.37736680843384973 
		8 -0.37736680843384973 11 -0.37736680843384973 14 -0.047646009069586132 17 
		-0.047646009069586132 20 -0.047646009069586132 23 -0.11422262436484759 29 
		-0.047646009069586132 32 0.245189189189189;
createNode animCurveTL -n "animCurveTL774";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.71572892866406468 4 -0.54343311259648019 
		8 -0.54343311259648019 11 -0.54343311259648019 14 -0.70977769184901862 17 
		-0.70977769184901862 20 -0.70977769184901862 23 -0.50446781311246858 29 -0.70977769184901862 
		32 0;
createNode animCurveTL -n "animCurveTL775";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.86045149817799893 4 -0.97043124551903082 
		8 -0.97043124551903082 11 -0.97043124551903082 14 -0.64237249774344829 17 
		-0.64237249774344829 20 -0.64237249774344829 23 -1.0973961480223062 29 -0.64237249774344829 
		32 -1;
createNode animCurveTA -n "animCurveTA2261";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.061808866237340665 4 -0.061808866237337522 
		8 -0.061808866237337522 11 -0.061808866237337522 14 -0.061808866237337522 
		17 -0.061808866237337522 20 -0.061808866237340665 23 -0.061808866237340665 
		29 -0.061808866237340665 32 -0.061808866237340665;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTA -n "animCurveTA2262";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -59.058178941076754 4 -59.058178941076754 
		8 -59.058178941076754 11 -59.058178941076754 14 -59.058178941076754 17 -59.058178941076754 
		20 -59.058178941076754 23 -59.058178941076754 29 -59.058178941076754 32 -59.058178941076754;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTA -n "animCurveTA2263";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 16.579147429757857 4 16.579147429757843 
		8 16.579147429757843 11 16.579147429757843 14 16.579147429757843 17 16.579147429757843 
		20 16.57914742975785 23 16.57914742975785 29 16.57914742975785 32 16.57914742975785;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTA -n "animCurveTA2264";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 12.253734489678925 4 12.253734489678925 
		8 12.253734489678925 11 12.253734489678925 14 12.253734489678925 17 12.253734489678925 
		20 12.253734489678925 23 12.253734489678925 29 12.253734489678925 32 12.253734489678925;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTA -n "animCurveTA2265";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -65.746751280844975 4 -65.746751280844961 
		8 -65.746751280844961 11 -65.746751280844961 14 -65.746751280844961 17 -65.746751280844961 
		20 -65.746751280844975 23 -65.746751280844975 29 -65.746751280844975 32 -65.746751280844975;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTA -n "animCurveTA2266";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0 8 0 11 0 14 0 17 0 20 0 
		23 0 29 0 32 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTA -n "animCurveTA2267";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 15.711328223519065 4 15.711328223519057 
		8 15.711328223519057 11 15.711328223519057 14 15.711328223519057 17 15.711328223519057 
		20 15.711328223519061 23 15.711328223519061 29 15.711328223519061 32 15.711328223519061;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTA -n "animCurveTA2268";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 8.5572674112203657 4 8.5572674112203622 
		8 8.5572674112203622 11 8.5572674112203622 14 8.5572674112203622 17 8.5572674112203622 
		20 8.5572674112203657 23 8.5572674112203657 29 8.5572674112203657 32 8.5572674112203657;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTA -n "animCurveTA2269";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0 8 0 11 0 14 0 17 0 20 0 
		23 0 29 0 32 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTA -n "animCurveTA2270";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0 8 0 11 0 14 0 17 0 20 0 
		23 0 29 0 32 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTA -n "animCurveTA2271";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0 8 0 11 0 14 0 17 0 20 0 
		23 0 29 0 32 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTA -n "animCurveTA2272";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0 8 0 11 0 14 0 17 0 20 0 
		23 0 29 0 32 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTA -n "animCurveTA2273";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0 8 0 11 0 14 0 17 0 20 0 
		23 0 29 0 32 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTA -n "animCurveTA2274";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0 8 0 11 0 14 0 17 0 20 0 
		23 0 29 0 32 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTA -n "animCurveTA2275";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  20 8.2533422302317216 23 0 29 -0.63135743097763675 
		32 8.2533422302317216;
	setAttr -s 4 ".kit[1:3]"  1 9 1;
	setAttr -s 4 ".kot[1:3]"  1 9 5;
	setAttr -s 4 ".kix[1:3]"  1 0.90146678686141968 0.44846197962760925;
	setAttr -s 4 ".kiy[1:3]"  0 0.43284827470779419 0.89380192756652832;
	setAttr -s 4 ".kox[1:3]"  1 0.90146678686141968 0;
	setAttr -s 4 ".koy[1:3]"  0 0.43284827470779419 0;
createNode animCurveTA -n "animCurveTA2276";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  20 23.263402056531085 23 0 29 2.3085835447869996 
		32 23.263402056531085;
	setAttr -s 4 ".kit[1:3]"  1 9 1;
	setAttr -s 4 ".kot[1:3]"  1 9 5;
	setAttr -s 4 ".kix[1:3]"  1 0.5942578911781311 0.24806150794029236;
	setAttr -s 4 ".kiy[1:3]"  0 0.80427455902099609 0.96874427795410156;
	setAttr -s 4 ".kox[1:3]"  1 0.5942578911781311 0;
	setAttr -s 4 ".koy[1:3]"  0 0.80427455902099609 0;
createNode animCurveTA -n "animCurveTA2277";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  20 20.166277752815617 23 0 29 0.86266758031628532 
		32 20.166277752815617;
	setAttr -s 4 ".kit[1:3]"  1 9 1;
	setAttr -s 4 ".kot[1:3]"  1 9 5;
	setAttr -s 4 ".kix[1:3]"  1 0.64868628978729248 0.25065043568611145;
	setAttr -s 4 ".kiy[1:3]"  0 0.76105594635009766 0.96807765960693359;
	setAttr -s 4 ".kox[1:3]"  1 0.64868628978729248 0;
	setAttr -s 4 ".koy[1:3]"  0 0.76105594635009766 0;
createNode animCurveTA -n "animCurveTA2278";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0 8 0 11 0 14 0 17 0 20 0 
		23 0 29 0 32 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTA -n "animCurveTA2279";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0 8 0 11 0 14 0 17 0 20 0 
		23 0 29 0 32 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTA -n "animCurveTA2280";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 33.429092416277157 4 33.429092416277157 
		8 33.429092416277157 11 33.429092416277157 14 33.429092416277157 17 33.429092416277157 
		20 33.429092416277157 23 33.429092416277157 29 33.429092416277157 32 33.429092416277157;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTA -n "animCurveTA2281";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2282";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2283";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2284";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2285";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2286";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 13.994403295754109;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2287";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2288";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2289";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 13.994403295754109;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  0.37727794051170349;
	setAttr ".kiy[0]"  0.92610007524490356;
createNode animCurveTA -n "animCurveTA2290";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0 8 0 11 0 14 0 17 0 20 0 
		23 0 29 0 32 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTA -n "animCurveTA2291";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0 8 0 11 0 14 0 17 0 20 0 
		23 0 29 0 32 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTA -n "animCurveTA2292";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 17.254116939558369 4 17.254116939558369 
		8 17.254116939558369 11 17.254116939558369 14 17.254116939558369 17 17.254116939558369 
		20 17.254116939558369 23 17.254116939558369 29 17.254116939558369 32 17.254116939558369;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTA -n "animCurveTA2293";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0 8 0 11 0 14 0 17 0 20 0 
		23 0 29 0 32 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTA -n "animCurveTA2294";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0 8 0 11 0 14 0 17 0 20 0 
		23 0 29 0 32 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTA -n "animCurveTA2295";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0 8 0 11 0 14 0 17 0 20 0 
		23 0 29 0 32 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTA -n "animCurveTA2296";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -2.3937906322123035 4 19.510072961584843 
		8 25.890727135803381 11 18.627666657111309 14 4.673284826683159 17 -5.1244257875627879 
		20 -0.71009266045615982 23 -9.5815078686446284 29 -9.5688162172274307 32 
		-0.71009266045615982;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  0.96683573722839355;
	setAttr -s 10 ".kiy[9]"  -0.25539907813072205;
createNode animCurveTA -n "animCurveTA2297";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1.7843868968348546 4 -9.3825260607702123 
		8 2.3049251976124192 11 3.546263523020015 14 4.9375706220930464 17 9.141120159675431 
		20 -0.39065484564574865 23 -1.2656233054394754 29 7.0846265600455363 32 -0.39065484564574865;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  0.77934092283248901;
	setAttr -s 10 ".kiy[9]"  -0.62660008668899536;
createNode animCurveTA -n "animCurveTA2298";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 13.23227595374661 4 20.30642936059165 
		8 8.347150333684521 11 3.2185257670674128 14 5.1436031948885814 17 11.9633245790804 
		20 8.1445984161934568 23 -2.5098739063770856 29 -8.3067314352119279 32 8.1445984161934568;
	setAttr -s 10 ".kit[2:9]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 10 ".kot[2:9]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 10 ".kix[2:9]"  0.48331466317176819 0.96307343244552612 
		0.79496282339096069 0.96737658977508545 0.62074315547943115 0.72243332862854004 
		0.84995901584625244 0.72107517719268799;
	setAttr -s 10 ".kiy[2:9]"  -0.87544667720794678 -0.26923894882202148 
		0.60665816068649292 0.25334262847900391 -0.78401398658752441 -0.69144058227539063 
		0.52684885263442993 0.69285678863525391;
	setAttr -s 10 ".kox[2:9]"  0.48331478238105774 0.96307343244552612 
		0.79496282339096069 0.96737658977508545 0.62074315547943115 0.72243332862854004 
		0.84995901584625244 0;
	setAttr -s 10 ".koy[2:9]"  -0.875446617603302 -0.26923894882202148 
		0.60665816068649292 0.25334262847900391 -0.78401398658752441 -0.69144058227539063 
		0.52684885263442993 0;
createNode animCurveTA -n "animCurveTA2299";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 -7.1097278539792699 8 -7.1097278539792699 
		11 -7.1097278539792699 14 -7.1097278539792699 17 -9.4930924441262015 20 0 
		23 0 29 0 32 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTA -n "animCurveTA2300";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0 8 0 11 0 14 0 17 -4.3462802692132101 
		20 0 23 0 29 0 32 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTA -n "animCurveTA2301";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0 8 0 11 0 14 0 17 -24.059161620117205 
		20 0 23 0 29 0 32 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTA -n "animCurveTA2302";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.7103260003138816 4 -5.9862614705266992 
		8 -8.4757225690489832 11 -11.543926798884067 14 -0.96879310801463325 17 -4.0292350178916774 
		20 2.0270270270270276 23 39.573436635723134 29 13.881739004174225 32 2.0270270270270276;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  0.94779270887374878;
	setAttr -s 10 ".kiy[9]"  0.31888717412948608;
createNode animCurveTA -n "animCurveTA2303";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -3.6938159239902002 4 -2.7936151489449426 
		8 -1.1477434634438117 11 -4.0406450302336587 14 3.6699062068098405 17 -4.6007755972558266 
		20 2.4108692476260059 23 28.272424111075768 29 18.464229156998559 32 2.4108692476260059;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  0.88834899663925171;
	setAttr -s 10 ".kiy[9]"  -0.45916891098022461;
createNode animCurveTA -n "animCurveTA2304";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 14.572231982957494 4 12.739831483800881 
		8 14.696180294034731 11 17.382604922704356 14 29.40037223169206 17 24.721147746370409 
		20 13.0432985235726 23 32.11651765391268 29 16.979509496058029 32 13.0432985235726;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  0.66957646608352661;
	setAttr -s 10 ".kiy[9]"  0.74274313449859619;
createNode animCurveTA -n "animCurveTA2305";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 2.2796212519697256 4 1.8903601258661931 
		8 1.8903601258661931 11 0.18300343148149126 14 -1.4672032523553795 17 -1.4672032523553795 
		20 0 23 1.8903601258661935 29 -9.8971004586292839 32 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  0.93981879949569702;
	setAttr -s 10 ".kiy[9]"  -0.34167328476905823;
createNode animCurveTA -n "animCurveTA2306";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -2.2209313171847875 4 -2.5597289571479034 
		8 -2.5597289571479034 11 -2.5597289571479047 14 -3.0842593602314001 17 -3.0842593602314001 
		20 0 23 -2.5597289571479038 29 -0.40783862799678089 32 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  0.92042249441146851;
	setAttr -s 10 ".kiy[9]"  0.3909250795841217;
createNode animCurveTA -n "animCurveTA2307";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 8.0401232256568242 4 2.016811087403604 
		8 2.016811087403604 11 0.71813315916180298 14 -2.0736047826525068 17 -2.0736047826525068 
		20 -10.382821061592265 23 2.0168110874036049 29 2.6909656336528314 32 -10.382821061592265;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  0.41705331206321716;
	setAttr -s 10 ".kiy[9]"  -0.9088820219039917;
createNode animCurveTA -n "animCurveTA2308";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0 8 0 11 0 14 0 17 0 20 0 
		23 0 29 0 32 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTA -n "animCurveTA2309";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0 8 0 11 0 14 0 17 0 20 0 
		23 0 29 0 32 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTA -n "animCurveTA2310";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 27.080064458283051 4 27.080064458283051 
		8 27.080064458283051 11 27.080064458283051 14 27.080064458283051 17 27.080064458283051 
		20 27.080064458283051 23 27.080064458283051 29 27.080064458283051 32 27.080064458283051;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTA -n "animCurveTA2311";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  20 10.42375496696849 23 0 29 -0.90415047241420232 
		32 10.42375496696849;
	setAttr -s 4 ".kit[1:3]"  1 9 1;
	setAttr -s 4 ".kot[1:3]"  1 9 5;
	setAttr -s 4 ".kix[1:3]"  1 0.85505795478820801 0.3636193573474884;
	setAttr -s 4 ".kiy[1:3]"  0 0.518532395362854 0.93154764175415039;
	setAttr -s 4 ".kox[1:3]"  1 0.85505795478820801 0;
	setAttr -s 4 ".koy[1:3]"  0 0.518532395362854 0;
createNode animCurveTA -n "animCurveTA2312";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  20 27.7228482558439 23 0 29 2.8124094762730083 
		32 27.7228482558439;
	setAttr -s 4 ".kit[1:3]"  1 9 1;
	setAttr -s 4 ".kot[1:3]"  1 9 5;
	setAttr -s 4 ".kix[1:3]"  1 0.52695226669311523 0.21119317412376404;
	setAttr -s 4 ".kiy[1:3]"  0 0.84989488124847412 0.9774443507194519;
	setAttr -s 4 ".kox[1:3]"  1 0.52695226669311523 0;
	setAttr -s 4 ".koy[1:3]"  0 0.84989488124847412 0;
createNode animCurveTA -n "animCurveTA2313";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  20 21.576484776388231 23 0 29 0.56241550808605079 
		32 21.576484776388231;
	setAttr -s 4 ".kit[1:3]"  1 9 1;
	setAttr -s 4 ".kot[1:3]"  1 9 5;
	setAttr -s 4 ".kix[1:3]"  1 0.62309223413467407 0.22734682261943817;
	setAttr -s 4 ".kiy[1:3]"  0 0.78214836120605469 0.97381383180618286;
	setAttr -s 4 ".kox[1:3]"  1 0.62309223413467407 0;
	setAttr -s 4 ".koy[1:3]"  0 0.78214836120605469 0;
createNode animCurveTA -n "animCurveTA2314";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0 8 0 11 0 14 0 17 0 20 0 
		23 0 29 0 32 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTA -n "animCurveTA2315";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0 8 0 11 0 14 0 17 0 20 0 
		23 0 29 0 32 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTA -n "animCurveTA2316";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 27.911632519594587 4 27.911632519594587 
		8 27.911632519594587 11 27.911632519594587 14 27.911632519594587 17 27.911632519594587 
		20 27.911632519594587 23 27.911632519594587 29 27.911632519594587 32 27.911632519594587;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTA -n "animCurveTA2317";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 14 0 21 0 26 0 32 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
createNode animCurveTA -n "animCurveTA2318";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 14 0 21 0 26 11.244724105141046 
		32 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
createNode animCurveTA -n "animCurveTA2319";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 24.358684443344277 8 41.145082885762058 
		14 -8.7930374932932907 19 0 21 20.115464136302101 26 7.9420670842661147 32 
		0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA2320";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 14 0 21 0 26 0 32 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
createNode animCurveTA -n "animCurveTA2321";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 14 0 21 0 26 11.244724105141046 
		32 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
createNode animCurveTA -n "animCurveTA2322";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 24.358684443344277 8 41.145082885762058 
		14 -8.7930374932932907 19 0 21 20.115464136302101 26 7.9420670842661147 32 
		0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA2323";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 14 0 21 0 26 0 32 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
createNode animCurveTA -n "animCurveTA2324";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 14 0 21 0 26 11.244724105141046 
		32 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
createNode animCurveTA -n "animCurveTA2325";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 24.358684443344277 8 41.145082885762058 
		14 -8.7930374932932907 19 0 21 20.115464136302101 26 7.9420670842661147 32 
		0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode clipLibrary -n "clipLibrary1";
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
	setAttr ".o" 18;
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
connectAttr "mrg_get_out_of_car_high_driverSource.st" "clipLibrary1.st[0]"
		;
connectAttr "mrg_get_out_of_car_high_driverSource.du" "clipLibrary1.du[0]"
		;
connectAttr "animCurveTL737.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL738.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU145.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU146.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU147.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU148.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU149.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU150.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU151.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU152.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA2199.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA2200.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA2201.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL740.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL741.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL742.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL743.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL744.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL745.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA2202.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA2203.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA2204.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL746.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL747.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL748.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA2205.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA2206.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA2207.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA2208.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA2209.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA2210.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA2211.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA2212.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA2213.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA2214.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA2215.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA2216.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA2217.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA2218.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA2219.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL749.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL750.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL751.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL752.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL753.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL754.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL755.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL756.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL757.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA2220.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA2221.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA2222.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA2223.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA2224.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA2225.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA2226.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA2227.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA2228.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA2229.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA2230.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA2231.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA2232.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA2233.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA2234.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA2235.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA2236.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA2237.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA2238.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA2239.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA2240.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA2241.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA2242.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA2243.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA2244.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA2245.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA2246.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA2247.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA2248.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL758.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL759.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL760.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA2249.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA2250.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA2251.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL761.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL762.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL763.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA2252.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA2253.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA2254.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL764.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL765.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL766.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA2255.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA2256.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA2257.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL767.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL768.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL769.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA2258.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA2259.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA2260.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL770.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL771.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL772.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL773.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL774.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL775.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA2261.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA2262.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA2263.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA2264.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA2265.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA2266.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA2267.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA2268.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA2269.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA2270.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA2271.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA2272.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA2273.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA2274.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA2275.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA2276.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA2277.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA2278.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA2279.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA2280.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA2281.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA2282.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA2283.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA2284.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA2285.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA2286.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA2287.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA2288.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA2289.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA2290.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA2291.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA2292.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA2293.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA2294.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA2295.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA2296.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA2297.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA2298.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA2299.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA2300.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA2301.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA2302.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA2303.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA2304.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA2305.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA2306.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA2307.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA2308.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA2309.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA2310.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA2311.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA2312.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA2313.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA2314.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA2315.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA2316.a" "clipLibrary1.cel[0].cev[167].cevr";
connectAttr "animCurveTA2317.a" "clipLibrary1.cel[0].cev[168].cevr";
connectAttr "animCurveTA2318.a" "clipLibrary1.cel[0].cev[169].cevr";
connectAttr "animCurveTA2319.a" "clipLibrary1.cel[0].cev[170].cevr";
connectAttr "animCurveTA2320.a" "clipLibrary1.cel[0].cev[171].cevr";
connectAttr "animCurveTA2321.a" "clipLibrary1.cel[0].cev[172].cevr";
connectAttr "animCurveTA2322.a" "clipLibrary1.cel[0].cev[173].cevr";
connectAttr "animCurveTA2323.a" "clipLibrary1.cel[0].cev[174].cevr";
connectAttr "animCurveTA2324.a" "clipLibrary1.cel[0].cev[175].cevr";
connectAttr "animCurveTA2325.a" "clipLibrary1.cel[0].cev[176].cevr";
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
// End of mrg_get_out_of_car_high_driver.ma
