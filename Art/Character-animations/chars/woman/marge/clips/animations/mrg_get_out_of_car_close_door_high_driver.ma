//Maya ASCII 4.0 scene
//Name: mrg_get_out_of_car_close_door_high_driver.ma
//Last modified: Mon, Jan 06, 2003 12:19:09 PM
requires maya "4.0";
requires "p3dmayaexp" "2.0";
requires "p3dSimpleShader" "2.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mrg_get_out_of_car_close_door_high_driverSource";
	setAttr ".ihi" 0;
	setAttr ".du" 14;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL737";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL738";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -0.24832759704565835 1 -0.24832759704565835 
		2 -0.23068115380509974 3 -0.20783597200806483 4 -0.18239646195487447 5 -0.15100915750313826 
		6 -0.10922847989469353 7 -0.058947163261597602 8 -0.0050539500467381027 9 
		0.046099193008534253 10 0.088575643598210546 11 0.10329749171539397 12 0.092249164355610813 
		13 0.081558829184480083 14 0.081558829184480097;
createNode animCurveTL -n "Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0.73987954026292235 1 0.73987954026292235 
		2 0.74650147598836358 3 0.75347879931366935 4 0.75759011370732299 5 0.75861377632197613 
		6 0.75845963461515287 7 0.75693453550272682 8 0.7540416378675372 9 0.75028613617468554 
		10 0.74667968226206638 11 0.74459499875500823 12 0.74379957768308724 13 0.7429871476386245 
		14 0.74298714763862417;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0.22358660400660504 1 0.22358660400660504 
		2 0.2331344764013368 3 0.24040602681515058 4 0.21430511860925719 5 0.15150381231155857 
		6 0.076613039164764932 7 0.00092345091980527093 8 -0.066183870905696857 9 
		-0.11849070919749745 10 -0.15287106963361824 11 -0.16348675532852366 12 -0.15778179414154223 
		13 -0.15143491016083696 14 -0.15143491016083696;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 113.15739323711674 14 0;
createNode animCurveTU -n "animCurveTU145";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU146";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU147";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU148";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU149";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU150";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU151";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 1;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU152";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 1;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2199";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2200";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2201";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL740";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL741";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL742";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL743";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 -0.089432696636962142 5 -0.089432696636962142 
		11 -0.081145716287402372 14 -0.072059567379697237;
createNode animCurveTL -n "animCurveTL744";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 0.090739826238255855 5 0.090739826238255855 
		11 0.13523126348040804 14 0.10860528941614173;
createNode animCurveTL -n "animCurveTL745";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 0.37820686953638194 5 0.37820686953638194 
		11 0.25525541732193702 14 0.00088390886240813306;
createNode animCurveTA -n "animCurveTA2202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 -178.44479555013268 5 -178.44479555013268 
		11 -181.80605354237352 14 -177.25592113587427;
createNode animCurveTA -n "animCurveTA2203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 64.348645467164133 5 64.348645467164133 
		11 168.85834103705059 14 175.61546731834773;
createNode animCurveTA -n "animCurveTA2204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 -177.06797680878609 5 -177.06797680878609 
		11 -175.44809965660656 14 -181.17543117470936;
createNode animCurveTL -n "animCurveTL746";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 -0.26314392545677373 5 -0.040468794369370543 
		11 0.21764441145149604 14 0.17655026201706334;
createNode animCurveTL -n "animCurveTL747";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 0.10074079658300666 5 0.19104471982861476 
		11 0.10983571210126375 14 0.10676264329452093;
createNode animCurveTL -n "animCurveTL748";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 0.10232611142150212 5 -0.057536084883982923 
		11 -0.064904406754016042 14 -0.073147264740539078;
createNode animCurveTA -n "animCurveTA2205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 -1.2411000500939884 5 17.224717313701184 
		11 -0.82760133680696057 14 0;
createNode animCurveTA -n "animCurveTA2206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 120.91731311278465 5 113.5567084791402 
		11 9.1503138867726932 14 25.948901905116408;
createNode animCurveTA -n "animCurveTA2207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 -1.2347523458486165 5 -8.5771229115663807 
		11 -2.0095494526916142 14 0;
createNode animCurveTA -n "animCurveTA2208";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2209";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2210";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2211";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2212";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2213";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2214";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2215";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2216";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2217";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2218";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2219";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL749";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 0 5 0 11 0 14 0;
createNode animCurveTL -n "animCurveTL750";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 0 5 0 11 0 14 0;
createNode animCurveTL -n "animCurveTL751";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 1 5 1 11 1 14 1.1269999742507935;
createNode animCurveTL -n "animCurveTL752";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 0 5 0 11 0 14 0;
createNode animCurveTL -n "animCurveTL753";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 0 5 0 11 0 14 0;
createNode animCurveTL -n "animCurveTL754";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 1 5 1 11 1 14 1.1269999742507935;
createNode animCurveTL -n "animCurveTL755";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.134945062126369 3 -0.031790024475427482 
		9 0.10318753762627872 12 0.097247464600251146;
createNode animCurveTL -n "animCurveTL756";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.98054198902067657 3 0.97651016190422446 
		9 0.96334271220060108 12 0.9825577053607899;
createNode animCurveTL -n "animCurveTL757";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.19708112465487385 3 0.2910638798563408 
		9 0.0064320760855255035 12 0;
createNode animCurveTA -n "animCurveTA2220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -181.75712390568867 3 -173.77848169373451 
		9 -176.27925567030778 12 -183.51561099071532;
createNode animCurveTA -n "animCurveTA2221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 64.721581426356707 3 97.406970196070944 
		9 180.3787826440234 12 179.22286324223975;
createNode animCurveTA -n "animCurveTA2222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -177.47049933450054 3 -177.46420467386454 
		9 -181.51466885897165 12 -180.18367849931823;
createNode animCurveTA -n "animCurveTA2223";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2224";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2225";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2226";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2227";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2228";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2229";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2230";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2231";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2232";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2233";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2234";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2235";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2236";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2237";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2238";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2239";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2240";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2241";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2242";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2243";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2244";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2245";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2246";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2247";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2248";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL758";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 -0.5198069948790518;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL759";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 -0.72394202659893114;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL760";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0.36439499068905612;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2249";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 7.7976222737965317;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2250";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 30.409274105849079;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2251";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 64.859940280210893;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL761";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0.43524234076486068;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL762";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 -0.82665738350180629;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL763";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0.27773886459742925;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2252";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2253";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 -28.652637602052774;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2254";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 -64.676908227303443;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL764";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 -0.050511575999421014 5 0.51088742949305455 
		11 -0.50463972766786358 14 -0.25368378509166484;
createNode animCurveTL -n "animCurveTL765";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 2.2282359333804407 5 2.5464026137780782 
		11 2.352008141793438 14 2.2026421011163611;
createNode animCurveTL -n "animCurveTL766";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 0.90766395158927293 5 1.303024768786373 
		11 0.39302303060277383 14 0.0085295933619701902;
createNode animCurveTA -n "animCurveTA2255";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 134.17061414787904 5 268.12374740508557 
		11 160.6499754081286 14 202.0446286644393;
createNode animCurveTA -n "animCurveTA2256";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 26.248045553149087 5 26.025942501031299 
		11 117.28355991241089 14 155.57968670712754;
createNode animCurveTA -n "animCurveTA2257";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 107.36817778262002 5 199.66117837666883 
		11 169.05884783548848 14 242.75973862908975;
createNode animCurveTL -n "animCurveTL767";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 -0.5502285468745024 5 -0.018906252437835933 
		11 0.77123605466896106 14 0.68473570483005786;
createNode animCurveTL -n "animCurveTL768";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 2.2040502209682593 5 2.1843244375921667 
		11 2.2041880843231096 14 2.1983664203382185;
createNode animCurveTL -n "animCurveTL769";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 -0.0047861638845576957 5 0.017435409807179548 
		11 0.16254235272357093 14 -0.1558733356690748;
createNode animCurveTA -n "animCurveTA2258";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 -72.079170570901539 5 -38.21340003185616 
		11 30.300253718764463 14 16.631444046006173;
createNode animCurveTA -n "animCurveTA2259";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 25.431493559211866 5 25.841835758420178 
		11 0.78493955617316402 14 -9.487856524246375;
createNode animCurveTA -n "animCurveTA2260";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 -92.331283509628591 5 -69.57763508696155 
		11 -54.471726640864887 14 -62.805960165937073;
createNode animCurveTL -n "animCurveTL770";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 0.31054502397108613 5 0.31054502397108613 
		11 -0.10212800844106709 14 -0.062337280601809833;
createNode animCurveTL -n "animCurveTL771";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 -0.55640530640609931 5 -0.55640530640609931 
		11 -0.54102419393306622 14 -0.40762644910266188;
createNode animCurveTL -n "animCurveTL772";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 -0.57914122395678103 5 -0.57914122395678103 
		11 -0.90946735956948177 14 -0.93129112588482243;
createNode animCurveTL -n "animCurveTL773";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 -0.047646009069586132 5 -0.11422262436484759 
		11 -0.047646009069586132 14 0.245189189189189;
createNode animCurveTL -n "animCurveTL774";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 -0.70977769184901862 5 -0.50446781311246858 
		11 -0.70977769184901862 14 0;
createNode animCurveTL -n "animCurveTL775";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 -0.64237249774344829 5 -1.0973961480223062 
		11 -0.64237249774344829 14 -1;
createNode animCurveTA -n "animCurveTA2261";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 -0.061808866237340665 5 -0.061808866237340665 
		11 -0.061808866237340665 14 -0.061808866237340665;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA2262";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 -59.058178941076754 5 -59.058178941076754 
		11 -59.058178941076754 14 -59.058178941076754;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA2263";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 16.57914742975785 5 16.57914742975785 
		11 16.57914742975785 14 16.57914742975785;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA2264";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 12.253734489678925 5 12.253734489678925 
		11 12.253734489678925 14 12.253734489678925;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA2265";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 -65.746751280844975 5 -65.746751280844975 
		11 -65.746751280844975 14 -65.746751280844975;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA2266";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 0 5 0 11 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA2267";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 15.711328223519061 5 15.711328223519061 
		11 15.711328223519061 14 15.711328223519061;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA2268";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 8.5572674112203657 5 8.5572674112203657 
		11 8.5572674112203657 14 8.5572674112203657;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA2269";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 0 5 0 11 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA2270";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 0 5 0 11 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA2271";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 0 5 0 11 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA2272";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 0 5 0 11 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA2273";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 0 5 0 11 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA2274";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 0 5 0 11 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA2275";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 8.2533422302317216 5 0 11 -0.63135743097763675 
		14 8.2533422302317216;
	setAttr -s 4 ".kit[1:3]"  1 9 1;
	setAttr -s 4 ".kot[1:3]"  1 9 5;
	setAttr -s 4 ".kix[1:3]"  1 0.90146678686141968 0.44846197962760925;
	setAttr -s 4 ".kiy[1:3]"  0 0.43284827470779419 0.89380192756652832;
	setAttr -s 4 ".kox[1:3]"  1 0.90146678686141968 0;
	setAttr -s 4 ".koy[1:3]"  0 0.43284827470779419 0;
createNode animCurveTA -n "animCurveTA2276";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 23.263402056531085 5 0 11 2.3085835447869996 
		14 23.263402056531085;
	setAttr -s 4 ".kit[1:3]"  1 9 1;
	setAttr -s 4 ".kot[1:3]"  1 9 5;
	setAttr -s 4 ".kix[1:3]"  1 0.5942578911781311 0.24806150794029236;
	setAttr -s 4 ".kiy[1:3]"  0 0.80427455902099609 0.96874427795410156;
	setAttr -s 4 ".kox[1:3]"  1 0.5942578911781311 0;
	setAttr -s 4 ".koy[1:3]"  0 0.80427455902099609 0;
createNode animCurveTA -n "animCurveTA2277";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 20.166277752815617 5 0 11 0.86266758031628532 
		14 20.166277752815617;
	setAttr -s 4 ".kit[1:3]"  1 9 1;
	setAttr -s 4 ".kot[1:3]"  1 9 5;
	setAttr -s 4 ".kix[1:3]"  1 0.64868628978729248 0.25065043568611145;
	setAttr -s 4 ".kiy[1:3]"  0 0.76105594635009766 0.96807765960693359;
	setAttr -s 4 ".kox[1:3]"  1 0.64868628978729248 0;
	setAttr -s 4 ".koy[1:3]"  0 0.76105594635009766 0;
createNode animCurveTA -n "animCurveTA2278";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 0 5 0 11 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA2279";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 0 5 0 11 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA2280";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 33.429092416277157 5 33.429092416277157 
		11 33.429092416277157 14 33.429092416277157;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA2281";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2282";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2283";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2284";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2285";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2286";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 13.994403295754109;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2287";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2288";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2289";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 13.994403295754109;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  0.37727794051170349;
	setAttr ".kiy[0]"  0.92610007524490356;
createNode animCurveTA -n "animCurveTA2290";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 0 5 0 11 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA2291";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 0 5 0 11 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA2292";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 17.254116939558369 5 17.254116939558369 
		11 17.254116939558369 14 17.254116939558369;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA2293";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 0 5 0 11 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA2294";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 0 5 0 11 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA2295";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 0 5 0 11 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA2296";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 -0.71009266045615982 5 -9.5815078686446284 
		11 -9.5688162172274307 14 -0.71009266045615982;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.96683573722839355;
	setAttr -s 4 ".kiy[3]"  -0.25539907813072205;
createNode animCurveTA -n "animCurveTA2297";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 -0.39065484564574865 5 -1.2656233054394754 
		11 7.0846265600455363 14 -0.39065484564574865;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.77934092283248901;
	setAttr -s 4 ".kiy[3]"  -0.62660008668899536;
createNode animCurveTA -n "animCurveTA2298";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 8.1445984161934568 5 -2.5098739063770856 
		11 -8.3067314352119279 14 8.1445984161934568;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.72107517719268799;
	setAttr -s 4 ".kiy[3]"  0.69285678863525391;
createNode animCurveTA -n "animCurveTA2299";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 0 5 0 11 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA2300";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 0 5 0 11 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA2301";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 0 5 0 11 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA2302";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 2.0270270270270276 5 39.573436635723134 
		11 13.881739004174225 14 2.0270270270270276;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.94779270887374878;
	setAttr -s 4 ".kiy[3]"  0.31888717412948608;
createNode animCurveTA -n "animCurveTA2303";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 2.4108692476260059 5 28.272424111075768 
		11 18.464229156998559 14 2.4108692476260059;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.88834899663925171;
	setAttr -s 4 ".kiy[3]"  -0.45916891098022461;
createNode animCurveTA -n "animCurveTA2304";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 13.0432985235726 5 32.11651765391268 
		11 16.979509496058029 14 13.0432985235726;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.66957646608352661;
	setAttr -s 4 ".kiy[3]"  0.74274313449859619;
createNode animCurveTA -n "animCurveTA2305";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 0 5 1.8903601258661935 11 -9.8971004586292839 
		14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.93981879949569702;
	setAttr -s 4 ".kiy[3]"  -0.34167328476905823;
createNode animCurveTA -n "animCurveTA2306";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 0 5 -2.5597289571479038 11 -0.40783862799678089 
		14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.92042249441146851;
	setAttr -s 4 ".kiy[3]"  0.3909250795841217;
createNode animCurveTA -n "animCurveTA2307";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 -10.382821061592265 5 2.0168110874036049 
		11 2.6909656336528314 14 -10.382821061592265;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.41705331206321716;
	setAttr -s 4 ".kiy[3]"  -0.9088820219039917;
createNode animCurveTA -n "animCurveTA2308";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 0 5 0 11 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA2309";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 0 5 0 11 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA2310";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 27.080064458283051 5 27.080064458283051 
		11 27.080064458283051 14 27.080064458283051;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA2311";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 10.42375496696849 5 0 11 -0.90415047241420232 
		14 10.42375496696849;
	setAttr -s 4 ".kit[1:3]"  1 9 1;
	setAttr -s 4 ".kot[1:3]"  1 9 5;
	setAttr -s 4 ".kix[1:3]"  1 0.85505795478820801 0.3636193573474884;
	setAttr -s 4 ".kiy[1:3]"  0 0.518532395362854 0.93154764175415039;
	setAttr -s 4 ".kox[1:3]"  1 0.85505795478820801 0;
	setAttr -s 4 ".koy[1:3]"  0 0.518532395362854 0;
createNode animCurveTA -n "animCurveTA2312";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 27.7228482558439 5 0 11 2.8124094762730083 
		14 27.7228482558439;
	setAttr -s 4 ".kit[1:3]"  1 9 1;
	setAttr -s 4 ".kot[1:3]"  1 9 5;
	setAttr -s 4 ".kix[1:3]"  1 0.52695226669311523 0.21119317412376404;
	setAttr -s 4 ".kiy[1:3]"  0 0.84989488124847412 0.9774443507194519;
	setAttr -s 4 ".kox[1:3]"  1 0.52695226669311523 0;
	setAttr -s 4 ".koy[1:3]"  0 0.84989488124847412 0;
createNode animCurveTA -n "animCurveTA2313";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 21.576484776388231 5 0 11 0.56241550808605079 
		14 21.576484776388231;
	setAttr -s 4 ".kit[1:3]"  1 9 1;
	setAttr -s 4 ".kot[1:3]"  1 9 5;
	setAttr -s 4 ".kix[1:3]"  1 0.62309223413467407 0.22734682261943817;
	setAttr -s 4 ".kiy[1:3]"  0 0.78214836120605469 0.97381383180618286;
	setAttr -s 4 ".kox[1:3]"  1 0.62309223413467407 0;
	setAttr -s 4 ".koy[1:3]"  0 0.78214836120605469 0;
createNode animCurveTA -n "animCurveTA2314";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 0 5 0 11 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA2315";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 0 5 0 11 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA2316";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  2 27.911632519594587 5 27.911632519594587 
		11 27.911632519594587 14 27.911632519594587;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA2317";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 0 8 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA2318";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 0 8 11.244724105141046 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA2319";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 20.115464136302101 8 7.9420670842661147 
		14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA2320";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 0 8 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA2321";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 0 8 11.244724105141046 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA2322";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 20.115464136302101 8 7.9420670842661147 
		14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA2323";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 0 8 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA2324";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 0 8 11.244724105141046 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA2325";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 20.115464136302101 8 7.9420670842661147 
		14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
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
connectAttr "mrg_get_out_of_car_close_door_high_driverSource.st" "clipLibrary1.st[0]"
		;
connectAttr "mrg_get_out_of_car_close_door_high_driverSource.du" "clipLibrary1.du[0]"
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
// End of mrg_get_out_of_car_close_door_high_driver.ma
