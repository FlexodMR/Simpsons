//Maya ASCII 4.0 scene
//Name: mrg_get_out_of_car_close_door.ma
//Last modified: Tue, Oct 01, 2002 05:16:49 PM
requires maya "4.0";
requires "p3dmayaexp" "18.5";
requires "p3dSimpleShader" "18.5";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mrg_get_out_of_car_close_doorSource";
	setAttr ".ihi" 0;
	setAttr ".du" 26;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL329";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTL -n "animCurveTL330";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -0.027308064073132386 1 -0.029586464620814931 
		2 -0.030628652172003355 3 -0.030010545673756297 4 -0.027308064073132382 5 
		-0.019811916454877669 6 -0.0086136803082114931 7 0.0010094228130975757 8 
		0.0037801713552809914 9 -0.0069039722525530466 10 -0.026496730380174062 11 
		-0.043552101779667264 12 -0.046624085203117865 13 -0.02509931249902889 14 
		0.012397315120051204 15 0.048454394855969078 16 0.06566052391057127 17 0.059426068824207735 
		18 0.040805218003187142 19 0.015852301448294397 20 -0.0093783508396856098 
		21 -0.02883240885996799 22 -0.041813723698739563 23 -0.052358515242183511 
		24 -0.061511006689507951 25 -0.07031542123992103 26 -0.079815982092630841;
createNode animCurveTL -n "animCurveTL332";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0.47784294398531513 1 0.49023820217466302 
		2 0.51259814438304896 3 0.53291545685306885 4 0.53918282582731869 5 0.53065833481664737 
		6 0.51292587319284022 7 0.48346683598989737 8 0.43976261824181884 9 0.36980826295222441 
		10 0.27872480429458441 11 0.18968262405767525 12 0.12585210403027397 13 0.0986306105301855 
		14 0.093921073067692762 15 0.096652218220288605 16 0.091752772565465893 17 
		0.075115273218605547 18 0.054744586842373079 19 0.03373793433518852 20 0.015192536595471881 
		21 0.0022056145216432202 22 -0.0038253672173857406 23 -0.0049652225466159756 
		24 -0.0033101484584960495 25 -0.00095634194547453491 26 0;
createNode animCurveTA -n "animCurveTA956";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -86.753970536409511 1 -84.030906592833119 
		2 -80.965224089643925 3 -77.593614074484506 4 -73.952767594997454 5 -70.079375698825359 
		6 -66.010129433610828 7 -61.781719846996445 8 -57.430837986624795 9 -52.994174900138496 
		10 -48.508421635180113 11 -44.010269239392251 12 -39.536408760417508 13 -35.123531245898477 
		14 -30.808327743477733 15 -26.627489300797887 16 -22.617706965501512 17 -18.815671785231238 
		18 -15.258074807629635 19 -11.981607080339282 20 -9.0229596510027701 21 -6.4188235672627263 
		22 -4.2058898767617379 23 -2.4208496271423576 24 -1.1003938660472257 25 -0.28121364111891844 
		26 0;
createNode animCurveTU -n "animCurveTU65";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTU -n "animCurveTU66";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTU -n "animCurveTU67";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTU -n "animCurveTU68";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTU -n "animCurveTU69";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTU -n "animCurveTU70";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTU -n "animCurveTU71";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 1;
createNode animCurveTU -n "animCurveTU72";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 1;
createNode animCurveTA -n "animCurveTA957";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA958";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA959";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTL -n "animCurveTL334";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTL -n "animCurveTL335";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTL -n "animCurveTL336";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTL -n "animCurveTL337";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.01334837033442416 4 0.01334837033442416 
		8 0.01334837033442416 12 -0.073393833574625256 16 -0.16245816556856835 21 
		-0.177 26 -0.17655026201706334;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL338";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.099792524394212101 4 0.16429221986272155 
		8 0.099792524394212101 12 0.099792524394212101 16 0.099792524394212101 21 
		0.099792524394212101 26 0.10676264329452093;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL339";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.48556028562852094 4 0.39027045150935075 
		8 0.12928879237410715 12 -0.0086020369464332534 16 -0.061573084977052099 
		21 -0.0731 26 -0.073147264740539078;
	setAttr -s 7 ".kit[1:6]"  9 9 9 3 3 3;
	setAttr -s 7 ".kot[1:6]"  9 9 9 3 3 3;
createNode animCurveTA -n "animCurveTA960";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 144.92877310043403 4 171.20124692783591 
		8 171.49494554947267 12 34.600028648441352 16 5.7693649405216698 21 6.0325929315681783 
		26 5.6629127955431562;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA961";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -87.915006050863568 4 -78.564188045702821 
		8 -78.714164456336192 12 -59.582561112203173 16 -11.183512645502196 21 -6.9441905118964682 
		26 -6.8747580729711366;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA962";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -145.65913196895923 4 -157.18421114483817 
		8 -151.89620799494065 12 -12.447773910254774 16 0.80133104098917929 21 0.34237423761573804 
		26 -2.1843412102549582;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL340";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.026973059925548423 4 -0.026973059925548423 
		8 -0.026973059925548423 12 0.16950627163622828 16 0.097796833997525534 21 
		0.072059567379697251 26 0.072059567379697251;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTL -n "animCurveTL341";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.10106150608198576 4 0.10106150608198576 
		8 0.10106150608198576 12 0.19541889418905686 16 0.12824673964386374 21 0.10860528941614173 
		26 0.10860528941614173;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTL -n "animCurveTL342";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.71334405017861091 4 0.71334405017861091 
		8 0.71334405017861091 12 0.34434175372386416 16 0.14434896516657003 21 0.0008839088624081271 
		26 0.0008839088624081271;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTA -n "animCurveTA963";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 24.012797569894396 4 24.012797569894396 
		8 24.012797569894396 12 25.456812378317853 16 21.562245977221632 21 0 26 
		0;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTA -n "animCurveTA964";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -84.299783223770348 4 -84.299783223770348 
		8 -84.299783223770348 12 -39.579712152118418 16 -2.1977354511416105 21 0 
		26 0;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTA -n "animCurveTA965";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -25.856432587073389 4 -25.856432587073389 
		8 -25.856432587073389 12 -0.8002714089509384 16 -1.1615837197473202 21 0 
		26 0;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTA -n "animCurveTA966";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA967";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA968";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA969";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA970";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA971";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA972";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA973";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA974";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA975";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA976";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA977";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTL -n "animCurveTL343";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 12 0 16 0 21 0 26 0;
createNode animCurveTL -n "animCurveTL344";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 12 0 16 0 21 0 26 0;
createNode animCurveTL -n "animCurveTL345";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 4 1 8 1 12 1 16 1 21 1 26 1.1269999742507935;
createNode animCurveTL -n "animCurveTL346";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 12 0 16 0 21 0 26 0;
createNode animCurveTL -n "animCurveTL347";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 12 0 16 0 21 0 26 0;
createNode animCurveTL -n "animCurveTL348";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 4 1 8 1 12 1 16 1 21 1 26 1.1269999742507935;
createNode animCurveTL -n "animCurveTL349";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.033272033051868183 4 -0.033272033051868183 
		8 0.0046057452457195563 12 -0.056806593822866909 16 0.080000512519118175 
		21 -0.035129288476280975 26 -0.09724746460025116;
createNode animCurveTL -n "animCurveTL350";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.99029027513321821 4 0.99029027513321821 
		8 0.9074778601178537 12 0.98123932504145872 16 0.94611562974387742 21 0.97890800762837882 
		26 0.9825577053607899;
createNode animCurveTL -n "animCurveTL351";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.58220187939004353 4 0.65693813936728651 
		8 0.53580496698459446 12 0.15333768639653395 16 0.11179120106145821 21 0.002687311669815339 
		26 0;
createNode animCurveTA -n "animCurveTA978";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 12.6864720256344 4 5.8930145652408079 
		8 28.266543945529605 12 -0.89817015756346852 16 2.685051648812832 21 1.7783618380334596 
		26 -0.62843630316474508;
createNode animCurveTA -n "animCurveTA979";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -87.632297593257519 4 -74.351309383189658 
		8 -70.499221147852381 12 -40.892751792028974 16 1.860684325736869 21 1.4242559392603515 
		26 -5.8284402688137167;
createNode animCurveTA -n "animCurveTA980";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -14.351427973717879 4 -7.133412074787417 
		8 -28.373285965298471 12 0.75365155269392403 16 0.63576956726219758 21 2.0087722765450557 
		26 -1.295636019309746;
createNode animCurveTA -n "animCurveTA981";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA982";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA983";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA984";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA985";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA986";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA987";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA988";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA989";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA990";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA991";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA992";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA993";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA994";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA995";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA996";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA997";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA998";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA999";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA1000";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA1001";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA1002";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA1003";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA1004";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA1005";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA1006";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTL -n "animCurveTL352";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 -0.43524234076486068;
createNode animCurveTL -n "animCurveTL353";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL354";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0.27773886459742925;
createNode animCurveTA -n "animCurveTA1007";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA1008";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 28.652637602052774;
createNode animCurveTA -n "animCurveTA1009";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 64.676908227303443;
createNode animCurveTL -n "animCurveTL355";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0.5198069948790518;
createNode animCurveTL -n "animCurveTL356";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL357";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0.36439499068905612;
createNode animCurveTA -n "animCurveTA1010";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 7.7976222737965317;
createNode animCurveTA -n "animCurveTA1011";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 -30.409274105849079;
createNode animCurveTA -n "animCurveTA1012";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 -64.859940280210893;
createNode animCurveTL -n "animCurveTL358";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.0075284509982356 4 -0.0075284509982356 
		8 0.091743034887307895 12 -0.49853273131807713 16 -0.4617160097092618 21 
		-0.56969872164830826 26 -0.65311611999272123;
createNode animCurveTL -n "animCurveTL359";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.2308892076869316 4 2.2308892076869316 
		8 2.1472020629491384 12 2.2412754310134706 16 2.2353025224795129 21 2.1803016990226438 
		26 2.222264083594911;
createNode animCurveTL -n "animCurveTL360";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.75264579493080264 4 0.84921128911483201 
		8 0.63604770306138159 12 -0.028554783498594496 16 0.39845173435029418 21 
		0.049138999316822932 26 -0.097994651149805143;
createNode animCurveTA -n "animCurveTA1013";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -57.686752578536527 4 -57.686752578536527 
		8 -45.742631129466183 12 -35.920902173225301 16 36.468973445177326 21 33.615596642434539 
		26 5.4739599453216465;
createNode animCurveTA -n "animCurveTA1014";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -15.010180308222342 4 -15.010180308222342 
		8 -28.06594362434268 12 -8.7053007022251077 16 26.071937459029961 21 9.5655688468324644 
		26 8.5874521608419823;
createNode animCurveTA -n "animCurveTA1015";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 82.72145983872133 4 82.72145983872133 
		8 75.592674639658583 12 76.93827431414816 16 77.192726032104872 21 70.931950500879353 
		26 74.754744621954103;
createNode animCurveTL -n "animCurveTL361";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.08315331409687525 4 -0.08315331409687525 
		8 -0.67169508212032913 12 -0.06927412699458492 16 1.0986121589399371 21 0.38079662094507366 
		26 0.25368378509166489;
createNode animCurveTL -n "animCurveTL362";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.2340748261771268 4 2.2340748261771268 
		8 2.7685917686027217 12 2.7325313580980328 16 2.5079681948471713 21 2.1869526501608458 
		26 2.2026421011163611;
createNode animCurveTL -n "animCurveTL363";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.673664753965252 4 1.8851731156708318 
		8 2.299337812815228 12 1.3103114339947228 16 0.91781784563645963 21 0.04637487919223663 
		26 0.0085295933619702075;
createNode animCurveTA -n "animCurveTA1016";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 99.53154639603973 4 99.53154639603973 
		8 189.04538884048836 12 185.10666708573055 16 71.802518442445489 21 35.885536710775561 
		26 16.226511010665412;
createNode animCurveTA -n "animCurveTA1017";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -16.995570213197844 4 -16.995570213197844 
		8 -41.778346433017248 12 -44.643903840689909 16 -68.458149867145863 21 -13.571169015481965 
		26 -8.5139660854992858;
createNode animCurveTA -n "animCurveTA1018";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -85.806336390412298 4 -85.806336390412298 
		8 -176.13447951885203 12 -169.28580712734981 16 -28.339379763904628 21 -66.552434996218651 
		26 -68.213989601412422;
createNode animCurveTL -n "animCurveTL364";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.098479895550541749 4 0.098479895550541749 
		8 0.75645780713626298 12 0.75645780713626298 16 0.75645780713626298 21 -0.00057432013934466061 
		26 -0.245189189189189;
createNode animCurveTL -n "animCurveTL365";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.58076064884528811 4 -0.58076064884528811 
		8 -0.79368011868045951 12 -0.79368011868045951 16 -0.79368011868045951 21 
		-0.7446206329845434 26 0;
createNode animCurveTL -n "animCurveTL366";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.3428777128417846 4 -1.3428777128417846 
		8 -0.92269028705633338 12 -0.92269028705633338 16 -0.92269028705633338 21 
		-1.1223586308962659 26 -1;
createNode animCurveTL -n "animCurveTL367";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.041145264892337378 4 -0.041145264892337378 
		8 -0.080441146695552371 12 -0.31054502397108613 16 -0.042694131097698665 
		21 -0.31054502397108613 26 0.062337280601809833;
createNode animCurveTL -n "animCurveTL368";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.31146429538707981 4 -0.31146429538707981 
		8 -0.45580053506493712 12 -0.55640530640609931 16 -0.83872599956255056 21 
		-0.55640530640609931 26 -0.40762644910266188;
createNode animCurveTL -n "animCurveTL369";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.89435116137917281 4 -0.89435116137917281 
		8 -1.0276991708368715 12 -0.57914122395678103 16 -1.2725516231768901 21 -0.57914122395678103 
		26 -0.93129112588482243;
createNode animCurveTA -n "animCurveTA1019";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 12.253734489678925 4 12.253734489678925 
		8 12.253734489678925 12 12.253734489678925 16 12.253734489678925 21 12.253734489678925 
		26 12.253734489678925;
createNode animCurveTA -n "animCurveTA1020";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -65.746751280844975 4 -65.746751280844975 
		8 -65.746751280844961 12 -65.746751280844961 16 -65.746751280844961 21 -65.746751280844975 
		26 -65.746751280844975;
createNode animCurveTA -n "animCurveTA1021";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 12 0 16 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1022";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.061808866237340665 4 -0.061808866237340665 
		8 -0.061808866237337522 12 -0.061808866237337522 16 -0.061808866237337522 
		21 -0.061808866237340665 26 -0.061808866237340665;
createNode animCurveTA -n "animCurveTA1023";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -59.058178941076754 4 -59.058178941076754 
		8 -59.058178941076754 12 -59.058178941076754 16 -59.058178941076754 21 -59.058178941076754 
		26 -59.058178941076754;
createNode animCurveTA -n "animCurveTA1024";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 16.57914742975785 4 16.57914742975785 
		8 16.579147429757843 12 16.579147429757843 16 16.579147429757843 21 16.57914742975785 
		26 16.57914742975785;
createNode animCurveTA -n "animCurveTA1025";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.5572674112203639 4 8.5572674112203639 
		8 8.5572674112203622 12 8.5572674112203622 16 8.5572674112203622 21 8.5572674112203657 
		26 8.5572674112203639;
createNode animCurveTA -n "animCurveTA1026";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 15.711328223519061 4 15.711328223519061 
		8 15.711328223519057 12 15.711328223519057 16 15.711328223519057 21 15.711328223519061 
		26 15.711328223519061;
createNode animCurveTA -n "animCurveTA1027";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 12 0 16 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1028";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 12 0 16 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1029";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 12 0 16 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1030";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 12 0 16 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1031";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 12 0 16 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1032";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 12 0 16 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1033";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 10.423754966968488 4 10.423754966968488 
		8 10.423754966968488 12 10.423754966968488 16 10.423754966968488 21 10.423754966968488 
		26 10.423754966968488;
createNode animCurveTA -n "animCurveTA1034";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.7228482558439 4 27.7228482558439 
		8 27.722848255843903 12 27.722848255843903 16 27.722848255843903 21 27.7228482558439 
		26 27.7228482558439;
createNode animCurveTA -n "animCurveTA1035";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 21.576484776388224 4 21.576484776388224 
		8 21.576484776388227 12 21.576484776388227 16 21.576484776388227 21 21.576484776388224 
		26 21.576484776388224;
createNode animCurveTA -n "animCurveTA1036";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 12 0 16 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1037";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 12 0 16 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1038";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.080064458283051 4 27.080064458283051 
		8 27.080064458283051 12 27.080064458283051 16 27.080064458283051 21 27.080064458283051 
		26 27.080064458283051;
createNode animCurveTA -n "animCurveTA1039";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA1040";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA1041";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA1042";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA1043";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA1044";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 13.994403295754109;
createNode animCurveTA -n "animCurveTA1045";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA1046";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 0;
createNode animCurveTA -n "animCurveTA1047";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  26 13.994403295754109;
createNode animCurveTA -n "animCurveTA1048";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 12 0 16 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1049";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 12 0 16 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1050";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.911632519594587 4 27.911632519594587 
		8 27.911632519594587 12 27.911632519594587 16 27.911632519594587 21 27.911632519594587 
		26 27.911632519594587;
createNode animCurveTA -n "animCurveTA1051";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 12 0 16 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1052";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 12 0 16 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1053";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 12 0 16 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1054";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.71009266045615993 4 0.71009266045615993 
		8 9.5129642942978396 12 8.6047211987592203 16 13.571462368894577 21 8.764820797501395 
		26 0.71009266045615993;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTA -n "animCurveTA1055";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.39065484564574882 4 0.39065484564574882 
		8 -9.0640328497633025 12 -17.131651571862989 16 -17.66577749149733 21 -4.8515811555076827 
		26 0.39065484564574882;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTA -n "animCurveTA1056";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.1445984161934586 4 8.1445984161934586 
		8 11.223331661014909 12 12.375686593639298 16 12.589959755978652 21 10.245219519566536 
		26 8.1445984161934586;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTA -n "animCurveTA1057";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 7.1097278539792699 12 
		7.1097278539792699 16 7.1097278539792699 21 7.109727853979269 26 0;
createNode animCurveTA -n "animCurveTA1058";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 12 0 16 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1059";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 12 0 16 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1060";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -2.0270270270270276 4 -26.713418424032003 
		8 -38.837066469332456 12 -35.256258923892929 16 -15.004682056424583 21 8.2840701651343664 
		26 -2.0270270270270276;
createNode animCurveTA -n "animCurveTA1061";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -2.4108692476260059 4 -21.337833190651377 
		8 -35.617293482145001 12 -32.356744162060963 16 -19.080775118539581 21 11.487649979561349 
		26 -2.4108692476260059;
createNode animCurveTA -n "animCurveTA1062";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 13.0432985235726 4 31.096124794246727 
		8 26.32631400615217 12 23.760613509556418 16 14.675420929054647 21 17.125099307842437 
		26 13.0432985235726;
createNode animCurveTA -n "animCurveTA1063";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 -27.468162927430001 12 
		-27.468162927430001 16 -10.9721819780569 21 -1.8903601258661935 26 0;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTA -n "animCurveTA1064";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0.89165934927086621 12 
		0.89165934927086621 16 2.116649024881609 21 2.5597289571479038 26 0;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTA -n "animCurveTA1065";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -10.382821061592265 4 -10.382821061592265 
		8 -6.4360795111927258 12 -6.4360795111927258 16 -5.4167397361132394 21 -7.4785107574175491 
		26 -10.382821061592265;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTA -n "animCurveTA1066";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 12 0 16 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1067";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 12 0 16 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1068";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 33.429092416277157 4 33.429092416277157 
		8 33.429092416277157 12 33.429092416277157 16 33.429092416277157 21 33.429092416277157 
		26 33.429092416277157;
createNode animCurveTA -n "animCurveTA1069";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.2533422302317216 4 8.2533422302317216 
		8 8.2533422302317216 12 8.2533422302317216 16 8.2533422302317216 21 8.2533422302317216 
		26 8.2533422302317216;
createNode animCurveTA -n "animCurveTA1070";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 23.263402056531085 4 23.263402056531085 
		8 23.263402056531085 12 23.263402056531085 16 23.263402056531085 21 23.263402056531085 
		26 23.263402056531085;
createNode animCurveTA -n "animCurveTA1071";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 20.166277752815617 4 20.166277752815617 
		8 20.166277752815617 12 20.166277752815617 16 20.166277752815617 21 20.166277752815617 
		26 20.166277752815617;
createNode animCurveTA -n "animCurveTA1072";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 12 0 16 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1073";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 12 0 16 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1074";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 17.254116939558369 4 17.254116939558369 
		8 17.254116939558369 12 17.254116939558369 16 17.254116939558369 21 17.254116939558369 
		26 17.254116939558369;
createNode animCurveTA -n "hair_1_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 0 11 0 26 0;
createNode animCurveTA -n "hair_1_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 0 11 0 26 0;
createNode animCurveTA -n "hair_1_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 -6.9562072631984533 11 8.7291120205742434 
		26 0;
createNode animCurveTA -n "hair_2_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 0 11 0 26 0;
createNode animCurveTA -n "hair_2_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 0 11 0 26 0;
createNode animCurveTA -n "hair_2_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 -5.6234551525974101 11 9.683906901063013 
		26 0;
createNode animCurveTA -n "hair_3_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 0 11 0 26 0;
createNode animCurveTA -n "hair_3_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 0 11 0 26 0;
createNode animCurveTA -n "hair_3_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 -4.7601954878041219 11 10.302353367569086 
		26 0;
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
	setAttr -s 48 ".lnk";
select -ne :time1;
	setAttr ".o" 8;
select -ne :renderPartition;
	setAttr -s 48 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 48 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 12 ".u";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 12 ".tx";
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
connectAttr "mrg_get_out_of_car_close_doorSource.st" "clipLibrary1.st[0]"
		;
connectAttr "mrg_get_out_of_car_close_doorSource.du" "clipLibrary1.du[0]"
		;
connectAttr "animCurveTL329.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL330.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL332.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA956.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU65.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU66.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU67.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU68.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU69.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU70.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU71.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU72.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA957.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA958.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA959.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL334.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL335.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL336.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL337.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL338.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL339.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA960.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA961.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA962.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL340.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL341.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL342.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA963.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA964.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA965.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA966.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA967.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA968.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA969.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA970.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA971.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA972.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA973.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA974.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA975.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA976.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA977.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL343.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL344.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL345.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL346.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL347.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL348.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL349.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL350.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL351.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA978.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA979.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA980.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA981.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA982.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA983.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA984.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA985.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA986.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA987.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA988.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA989.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA990.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA991.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA992.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA993.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA994.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA995.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA996.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA997.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA998.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA999.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA1000.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA1001.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA1002.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA1003.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA1004.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA1005.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA1006.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL352.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL353.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL354.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA1007.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA1008.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA1009.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL355.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL356.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL357.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA1010.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA1011.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA1012.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL358.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL359.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL360.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA1013.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA1014.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA1015.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL361.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL362.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL363.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA1016.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA1017.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA1018.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL364.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL365.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL366.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL367.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL368.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL369.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA1019.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA1020.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA1021.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA1022.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA1023.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA1024.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA1025.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA1026.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA1027.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA1028.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA1029.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1030.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1031.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1032.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA1033.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1034.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1035.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1036.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1037.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1038.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1039.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1040.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1041.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA1042.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA1043.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA1044.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA1045.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA1046.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA1047.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1048.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1049.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1050.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1051.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1052.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1053.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1054.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1055.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1056.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1057.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1058.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1059.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1060.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1061.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1062.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1063.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1064.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1065.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1066.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1067.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1068.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA1069.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA1070.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA1071.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA1072.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA1073.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA1074.a" "clipLibrary1.cel[0].cev[167].cevr";
connectAttr "hair_1_rotateX.a" "clipLibrary1.cel[0].cev[168].cevr";
connectAttr "hair_1_rotateY.a" "clipLibrary1.cel[0].cev[169].cevr";
connectAttr "hair_1_rotateZ.a" "clipLibrary1.cel[0].cev[170].cevr";
connectAttr "hair_2_rotateX.a" "clipLibrary1.cel[0].cev[171].cevr";
connectAttr "hair_2_rotateY.a" "clipLibrary1.cel[0].cev[172].cevr";
connectAttr "hair_2_rotateZ.a" "clipLibrary1.cel[0].cev[173].cevr";
connectAttr "hair_3_rotateX.a" "clipLibrary1.cel[0].cev[174].cevr";
connectAttr "hair_3_rotateY.a" "clipLibrary1.cel[0].cev[175].cevr";
connectAttr "hair_3_rotateZ.a" "clipLibrary1.cel[0].cev[176].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[3].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[4].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[5].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[6].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[7].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[8].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[9].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[10].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[10].olnk";
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
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[38].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[39].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[40].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[41].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[42].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[43].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[44].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[45].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[46].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[47].llnk";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of mrg_get_out_of_car_close_door.ma
