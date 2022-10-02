//Maya ASCII 4.0 scene
//Name: cbg_hit_by_car_front.ma
//Last modified: Tue, Jul 30, 2002 02:54:17 PM
requires maya "4.0";
requires "p3dmayaexp" "18.0";
requires "p3dSimpleShader" "18.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "cbg_hit_by_car_frontSource";
	setAttr ".ihi" 0;
	setAttr ".du" 36;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL247";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTL -n "animCurveTL248";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTL -n "animCurveTL249";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  0 -0.032743957069742133 1 -0.022912773958716458 
		2 -0.013081590893431246 3 -0.0052269629148552713 4 -0.00045086453392371864 
		5 0.0023486786639294898 6 0.0045010350259873976 7 0.0058031502855858822 8 
		0.0061324657502579748 9 0.0062774818110291645 10 0.0062049737806435879 11 
		0.006132465750258006 12 0.006132465750258006 13 0.006132465750258006 14 0.006132465750258006 
		15 0.006132465750258006 16 0.006132465750258006 17 0.006132465750258006 18 
		0.006132465750258006 19 0.006132465750258006 20 0.006132465750258006 21 0.006132465750258006 
		22 0.006132465750258006 23 0.006132465750258006 24 0.006132465750258006 25 
		0.006132465750258006 26 0.006132465750258006 27 0.006132465750258006 28 0.006132465750258006;
createNode animCurveTL -n "animCurveTL250";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0;
createNode animCurveTL -n "animCurveTL251";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  0 0.6083415236309837 1 0.65678648059922917 
		2 0.70523143839656188 3 0.71933333454679049 4 0.68350348908579561 5 0.61333058064669599 
		6 0.52123758464915748 7 0.37820825559675258 8 0.2247730788605633 9 0.11694624625578375 
		10 0.021789858267727235 11 -0.077381150377498445 12 -0.18277851093216896 
		13 -0.30892693869638183 14 -0.49566245464245018 15 -0.6703497163100437 16 
		-0.75661995384743619 17 -0.80550943540893816 18 -0.84642774332290094 19 -0.87925905421759409 
		20 -0.9172703127485754 21 -0.96802155016727587 22 -1.0245337266693555 23 
		-1.0782651803267143 24 -1.1206742492112525 25 -1.1291494131751096 26 -1.1206742492112525 
		27 -1.1206742492112525 28 -1.1206742492112525;
createNode animCurveTA -n "animCurveTA679";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0;
createNode animCurveTU -n "animCurveTU49";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTU -n "animCurveTU50";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTU -n "animCurveTU51";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTU -n "animCurveTU52";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTU -n "animCurveTU53";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 26 1;
createNode animCurveTU -n "animCurveTU54";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 26 1;
createNode animCurveTU -n "animCurveTU55";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTU -n "animCurveTU56";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA680";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA681";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA682";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTL -n "animCurveTL252";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTL -n "animCurveTL253";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTL -n "animCurveTL254";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTL -n "animCurveTL255";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.19763288944005308 3 -0.19763288944005308 
		6 -0.19763288944005308 8 -0.19934934560661241 11 -0.17437811750381982 13 
		-0.17437811750381982 15 -0.17437811750381982 17 -0.17437811750381982 20 -0.13089637572580659 
		24 -0.13089637572580659 26 -0.13089637572580659 28 -0.13089637572580659;
createNode animCurveTL -n "animCurveTL256";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.14552605892239473 3 0.14552605892239473 
		6 0.14552605892239473 8 1.2957563309544535 11 1.1140776664474361 13 1.3729805425093278 
		15 1.9185404772726398 17 2.1049821655099308 20 1.7457907542591389 24 0.77737418812157699 
		26 0.25386361095716931 28 0.25386361095716931;
createNode animCurveTL -n "animCurveTL257";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1.1961929756633671 3 1.1961929756633671 
		6 1.1961929756633671 8 0.99664045337899043 11 0.43778313519566958 13 0.26323908132482915 
		15 -0.50695070908629136 17 -1.3463632338938305 20 -2.0515383238331304 24 
		-2.3168579309941082 26 -2.3140904844987187 28 -2.3140904844987187;
createNode animCurveTA -n "animCurveTA683";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -19.288990945907496 3 0 6 0 8 
		-33.630440768693376 11 -110.35250651901146 13 -75.787217246980148 15 -75.787217246980148 
		17 -143.06681253796452 20 -217.16027279375012 24 -176.92919135626317 26 -239.7234789790609 
		28 -239.7234789790609;
createNode animCurveTA -n "animCurveTA684";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 8 0 11 0 13 0 15 0 
		17 0 20 0 24 0 26 0 28 0;
createNode animCurveTA -n "animCurveTA685";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 8 0 11 0 13 0 15 0 
		17 0 20 0 24 0 26 0 28 0;
createNode animCurveTL -n "animCurveTL258";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.19697756422115981 3 0.16123877199057202 
		6 0.25300619704434296 8 0.29185150429015561 11 0.29185150429015561 13 0.29185150429015561 
		15 0.29185150429015561 17 0.29185150429015561 20 0.30774412616396013 24 0.30774412616396013 
		26 0.30774412616396013 28 0.30774412616396013;
createNode animCurveTL -n "animCurveTL259";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.57299516960695041 3 0.30624379531570661 
		6 0.61089537625919665 8 0.53000322324925853 11 1.3279749288656657 13 1.8447776991635121 
		15 1.9327712370285628 17 1.1742584044942033 20 0.8650008372781619 24 0.44033007182812334 
		26 0.22297080503070837 28 0.22297080503070837;
createNode animCurveTL -n "animCurveTL260";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.24226175870239405 3 0.8475425357502373 
		6 1.3239894041173907 8 0.83243535509530708 11 0.39742005083927739 13 -0.68052036206479738 
		15 -1.5035062751949426 17 -1.8457409647030403 20 -1.8455745314719998 24 -2.458727414608247 
		26 -2.3169568126232196 28 -2.3169568126232196;
createNode animCurveTA -n "animCurveTA686";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 101.83600965070561 3 48.955541083724086 
		6 -3.9320360584068554 8 -3.9320360584068554 11 -70.716483637855859 13 -141.41568314681552 
		15 -172.04655492550918 17 -261.04511629440469 20 -293.13621979047753 24 -226.25151871918891 
		26 -233.40027923404165 28 -233.40027923404165;
createNode animCurveTA -n "animCurveTA687";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 8 0 11 0 13 0 15 0 
		17 0 20 0 24 0 26 0 28 0;
createNode animCurveTA -n "animCurveTA688";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 8 0 11 0 13 0 15 0 
		17 0 20 0 24 0 26 0 28 0;
createNode animCurveTA -n "animCurveTA689";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA690";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA691";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA692";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA693";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA694";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "cbg_Right_Toe_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  36 0;
createNode animCurveTA -n "cbg_Right_Toe_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  36 0;
createNode animCurveTA -n "cbg_Right_Toe_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  36 0;
createNode animCurveTA -n "cbg_Left_Toe_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  36 0;
createNode animCurveTA -n "cbg_Left_Toe_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  36 0;
createNode animCurveTA -n "cbg_Left_Toe_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  36 0;
createNode animCurveTL -n "animCurveTL261";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 11 0 13 0 15 0 
		17 0 24 0 26 0 28 0;
createNode animCurveTL -n "animCurveTL262";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 11 0 13 0 15 0 
		17 0 24 0 26 0 28 0;
createNode animCurveTL -n "animCurveTL263";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 3 1 6 1 8 1 11 1 13 1 15 1 
		17 1 24 1 26 1 28 1;
createNode animCurveTL -n "animCurveTL264";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 11 0 13 0 15 0 
		17 0 24 0 26 0 28 0;
createNode animCurveTL -n "animCurveTL265";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 11 0 13 0 15 0 
		17 0 24 0 26 0 28 0;
createNode animCurveTL -n "animCurveTL266";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 3 1 6 1 8 1 11 1 13 1 15 1 
		17 1 24 1 26 1 28 1;
createNode animCurveTL -n "animCurveTL267";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.048692319506319935 3 -0.0077728219517184515 
		6 0.0066933216143579997 8 0.009119361506525361 11 0.0091193615065254061 13 
		0.0091193615065254061 15 0.0091193615065254061 17 0.0091193615065254061 20 
		0.0091193615065254061 24 0.0091193615065254061 26 0.0091193615065254061 28 
		0.0091193615065254061;
createNode animCurveTL -n "animCurveTL268";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.85503661073851567 3 0.68531953232099319 
		6 0.84649195757100448 8 1.1608812956267951 11 0.88345979735081615 13 1.1328371265498229 
		15 1.3795744375276129 17 1.3795744375276129 20 1.4431763543104021 24 0.4515380293866918 
		26 0.42926098354990871 28 0.42926098354990871;
createNode animCurveTL -n "animCurveTL269";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.90464203133755872 3 1.0696938211437341 
		6 0.77511300654289361 8 0.33425167730907945 11 -0.11507062783897723 13 -0.45939374923667403 
		15 -0.99685210611585495 17 -1.1978430924138848 20 -1.3640385322667232 24 
		-1.666512953485535 26 -1.666512953485535 28 -1.666512953485535;
createNode animCurveTA -n "animCurveTA695";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 20.950825280283908 3 23.686988860744673 
		6 -20.451217483196501 8 -65.585535993622102 11 -163.11684917533097 13 -164.37990763705878 
		15 -204.65744299671405 17 -243.04789541436654 20 -272.53831014426686 24 -282.85257454817804 
		26 -262.00552149884214 28 -262.00552149884214;
createNode animCurveTA -n "animCurveTA696";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -6.8139232258102842 3 9.3491547302982809 
		6 11.948637237067912 8 11.948637237067988 11 11.948637237067976 13 4.181683626026313 
		15 4.1816836260263219 17 4.1816836260263281 20 4.181683626026337 24 4.1816836260263388 
		26 4.1816836260263512 28 4.1816836260263512;
createNode animCurveTA -n "animCurveTA697";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -1.4726187357019898 3 -1.4726187357019898 
		6 -1.4726187357019873 8 -1.4726187357019895 11 -1.4726187357019864 13 -1.4726187357019784 
		15 -1.4726187357019762 17 -1.4726187357019749 20 -1.4726187357019762 24 -1.4726187357019747 
		26 -1.4726187357019644 28 -1.4726187357019644;
createNode animCurveTA -n "animCurveTA698";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA699";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA700";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.0984482521620249 26 4.0984482521620249;
createNode animCurveTA -n "animCurveTA701";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 18.588300303494186 26 18.588300303494186;
createNode animCurveTA -n "animCurveTA702";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA703";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA704";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -22.686733334985114 26 -22.686733334985114;
createNode animCurveTA -n "animCurveTA705";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA706";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA707";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0579251312417477e-005 26 1.0579251312417477e-005;
createNode animCurveTA -n "animCurveTA708";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA709";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA710";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.0984482535121209 26 4.0984482535121209;
createNode animCurveTA -n "animCurveTA711";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 18.588300300216801 26 18.588300300216801;
createNode animCurveTA -n "animCurveTA712";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA713";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA714";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -22.686733333057838 26 -22.686733333057838;
createNode animCurveTA -n "animCurveTA715";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA716";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA717";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0579251312417477e-005 26 1.0579251312417477e-005;
createNode animCurveTA -n "animCurveTA718";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA719";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA720";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.4782236286598103 26 2.4782236286598103;
createNode animCurveTA -n "animCurveTA721";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA722";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA723";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -26.720521212576141 26 -26.720521212576141;
createNode animCurveTL -n "animCurveTL270";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.99214331096561381 26 -0.99214331096561381;
createNode animCurveTL -n "animCurveTL271";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.033841737269357866 26 -0.033841737269357866;
createNode animCurveTL -n "animCurveTL272";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.027201153963313806 26 -0.027201153963313806;
createNode animCurveTA -n "animCurveTA724";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 3.1805546814635164e-015 26 0;
createNode animCurveTA -n "animCurveTA725";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.016273151455886e-014 26 0;
createNode animCurveTA -n "animCurveTA726";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 5.3764496942944332e-016 26 0;
createNode animCurveTL -n "animCurveTL273";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.99214413619678865 26 0.99214413619678865;
createNode animCurveTL -n "animCurveTL274";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.033851474715545553 26 -0.033851474715545553;
createNode animCurveTL -n "animCurveTL275";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.0272011762672867 26 -0.0272011762672867;
createNode animCurveTA -n "animCurveTA727";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 6.3611093629270264e-015 26 0;
createNode animCurveTA -n "animCurveTA728";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.5281705937149269e-014 26 0;
createNode animCurveTA -n "animCurveTA729";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.5365128437888133e-014 26 0;
createNode animCurveTL -n "animCurveTL276";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.8091891372350974 8 -1.8091891372350974 
		26 -1.8091891372350974 28 -1.8091891372350974;
createNode animCurveTL -n "animCurveTL277";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.8536629786602403 8 2.8536629786602403 
		26 2.8536629786602403 28 2.8536629786602403;
createNode animCurveTL -n "animCurveTL278";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.15898405984075725 8 -0.15898405984075725 
		26 -0.15898405984075725 28 -0.15898405984075725;
createNode animCurveTA -n "animCurveTA730";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 8 0 26 0 28 0;
createNode animCurveTA -n "animCurveTA731";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 8 0 26 0 28 0;
createNode animCurveTA -n "animCurveTA732";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 8 0 26 0 28 0;
createNode animCurveTL -n "animCurveTL279";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.8091892394754774 8 1.8091892394754774 
		26 1.8091892394754774 28 1.8091892394754774;
createNode animCurveTL -n "animCurveTL280";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.8536581165404047 8 2.8536581165404047 
		26 2.8536581165404047 28 2.8536581165404047;
createNode animCurveTL -n "animCurveTL281";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.1589841173218719 8 -0.1589841173218719 
		26 -0.1589841173218719 28 -0.1589841173218719;
createNode animCurveTA -n "animCurveTA733";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 8 0 26 0 28 0;
createNode animCurveTA -n "animCurveTA734";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 8 0 26 0 28 0;
createNode animCurveTA -n "animCurveTA735";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 8 0 26 0 28 0;
createNode animCurveTL -n "animCurveTL282";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 8 0 26 0 28 0;
createNode animCurveTL -n "animCurveTL283";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 8 0 26 0 28 0;
createNode animCurveTL -n "animCurveTL284";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1 8 -1 26 -1 28 -1;
createNode animCurveTL -n "animCurveTL285";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 8 0 26 0 28 0;
createNode animCurveTL -n "animCurveTL286";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 8 0 26 0 28 0;
createNode animCurveTL -n "animCurveTL287";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1 8 -1 26 -1 28 -1;
createNode animCurveTA -n "animCurveTA736";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 33.632953330522966 3 -35.280552173416005 
		6 -55.670009807431882 8 -8.3722158444725974 11 -16.297507820464077 13 20.466042117605447 
		15 127.48536277756757 17 246.96015580379759 20 277.49179953974857 24 309.04385349967112 
		26 287.57834110884949 28 287.57834110884949;
createNode animCurveTA -n "animCurveTA737";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -45.161034679655693 3 2.5816969024663949 
		6 -13.611207391781139 8 -23.977773843939502 11 31.835176141779371 13 56.661856098087881 
		15 41.013149753006978 17 11.710838646405016 20 -27.940856704611825 24 -31.165628174285445 
		26 8.7748602616270031 28 8.7748602616270031;
createNode animCurveTA -n "animCurveTA738";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -67.538091601379463 3 53.251722291748415 
		6 27.497501682495685 8 33.682233492227084 11 -24.076726639641418 13 -28.699632222133822 
		15 45.346002066312501 17 32.480610201019267 20 58.04731783741925 24 34.506321274098752 
		26 21.740523934117991 28 21.740523934117991;
createNode animCurveTA -n "animCurveTA739";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -31.91693956427045 3 -29.573411147573808 
		6 -8.563012295375076 8 -25.419177015304644 11 26.943190414120078 13 62.99575776272026 
		15 174.74587104237403 17 233.71267964250777 20 284.66088723782713 24 330.11156906213751 
		26 284.36345896057048 28 284.36345896057048;
createNode animCurveTA -n "animCurveTA740";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -29.868546772813136 3 2.3677661369630982 
		6 20.507370224920166 8 -41.133378951685579 11 7.2443843468251901 13 53.385531449688173 
		15 48.967794122774158 17 10.436124567407168 20 -27.831035788392342 24 -32.166669775128739 
		26 -2.9804150894888526 28 -2.9804150894888526;
createNode animCurveTA -n "animCurveTA741";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 68.33832602789127 3 84.877951062747869 
		6 107.09766021769482 8 27.16586626679436 11 -18.153646702893731 13 -14.090108290252097 
		15 81.508814113311871 17 60.593298883625017 20 79.052538064966612 24 65.518782913602706 
		26 53.010434986386485 28 53.010434986386485;
createNode animCurveTA -n "animCurveTA742";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 63.595530963034982 3 89.911651693682515 
		6 32.789921414575325 8 39.038962484432531 11 9.3989932667131928 13 9.3989932667131928 
		15 -5.3360930724022282 17 34.943582142404118 20 17.247157141173556 24 17.247157141173556 
		26 54.683158598271568 28 54.683158598271568;
createNode animCurveTA -n "animCurveTA743";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 60.185649943194235 3 60.185649943194235 
		6 3.2573665005240873 8 63.89762232629036 11 15.437855926894944 13 15.437855926894944 
		15 -3.3294543489349664 17 43.846746382814068 20 9.30462320498712 24 9.30462320498712 
		26 72.338252365348367 28 72.338252365348367;
createNode animCurveTA -n "animCurveTA744";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 18.476235154862632 3 -25.061733991251923 
		6 22.425089944480888 8 22.425089944480884 11 -46.888961348044667 13 -53.603276388815203 
		15 -53.603276388815203 17 -48.199966158045299 20 27.122600099538275 24 55.450834435291732 
		26 27.197261990409952 28 27.197261990409952;
createNode animCurveTA -n "animCurveTA745";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 10.082003051124275 3 10.082003051124259 
		6 28.721836935985287 8 28.721836935985294 11 -2.715375222305227 13 -25.050704084525055 
		15 -25.050704084525055 17 11.990470783161467 20 25.282534237842544 24 23.419033512330966 
		26 9.8426506888087779 28 9.8426506888087779;
createNode animCurveTA -n "animCurveTA746";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -4.720189328892868 3 -4.7201893288928662 
		6 7.6266657808874898 8 7.6266657808874898 11 -15.221796636601614 13 11.753445760496902 
		15 11.753445760496902 17 -31.199647464773626 20 -7.7764014971976971 24 33.698802438579953 
		26 26.10051299282949 28 26.10051299282949;
createNode animCurveTA -n "animCurveTA747";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -13.555270109330269 3 -13.555270109330269 
		6 -18.847227132200882 8 2.0447427744579891 11 64.990660279695049 13 68.708080844032509 
		15 68.708080844032509 17 -3.074535163533088 20 1.9565995845644464 24 1.9565995845644464 
		26 24.555145006650083 28 24.555145006650083;
createNode animCurveTA -n "animCurveTA748";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 11.615881410206432 3 11.615881410206432 
		6 44.709551992010134 8 5.5429207840541235 11 -10.545281643186353 13 8.7561412431068693 
		15 8.7561412431068693 17 -47.111294478913067 20 16.453915224712091 24 16.453915224712091 
		26 -1.4560769262065318 28 -1.4560769262065318;
createNode animCurveTA -n "animCurveTA749";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.32159281075535068 3 0.32159281075535068 
		6 -10.402617814119608 8 34.868956102818473 11 2.4733535335569705 13 23.048918134273173 
		15 23.048918134273173 17 25.624912546867609 20 6.3265626033853684 24 6.3265626033853684 
		26 -2.0905382112390241 28 -2.0905382112390241;
createNode animCurveTA -n "animCurveTA750";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 11.093319219895511 3 11.093319219895511 
		6 -32.123718040735945 8 -32.123718040735959 11 -32.123718040735945 13 -32.123718040735945 
		15 -32.123718040735945 17 -32.123718040735945 20 -32.123718040735945 24 -32.123718040735945 
		26 -32.123718040735945 28 -32.123718040735945;
createNode animCurveTA -n "animCurveTA751";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 59.959644693642325 3 59.959644693642325 
		6 19.407819173437478 8 19.407819173437481 11 19.407819173437478 13 19.407819173437478 
		15 19.407819173437478 17 19.407819173437478 20 19.407819173437478 24 19.407819173437478 
		26 19.407819173437478 28 19.407819173437478;
createNode animCurveTA -n "animCurveTA752";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 48.106469618696913 3 48.106469618696913 
		6 4.4751336445171193 8 4.4751336445171193 11 4.4751336445171193 13 4.4751336445171193 
		15 4.4751336445171193 17 4.4751336445171193 20 4.4751336445171193 24 4.4751336445171193 
		26 4.4751336445171193 28 4.4751336445171193;
createNode animCurveTA -n "animCurveTA753";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 8 0 11 0 13 0 15 0 
		17 0 20 0 24 0 26 0 28 0;
createNode animCurveTA -n "animCurveTA754";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 8 0 11 0 13 0 15 0 
		17 0 20 0 24 0 26 0 28 0;
createNode animCurveTA -n "animCurveTA755";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 67.810939637714412 3 67.810939637714412 
		6 -11.433734901667266 8 -11.43373490166727 11 -11.433734901667266 13 -11.433734901667266 
		15 -11.433734901667266 17 -11.433734901667266 20 -11.433734901667266 24 -11.433734901667266 
		26 -11.433734901667266 28 -11.433734901667266;
createNode animCurveTA -n "animCurveTA756";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA757";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA758";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA759";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.705218915343313 3 27.705218915343313 
		26 27.705218915343313;
createNode animCurveTA -n "animCurveTA760";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 43.35103828268312 3 43.35103828268312 
		26 43.35103828268312;
createNode animCurveTA -n "animCurveTA761";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 54.23572299800319 3 54.23572299800319 
		26 54.23572299800319;
createNode animCurveTA -n "animCurveTA762";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 39.038703285259977 3 39.038703285259977 
		26 39.038703285259977;
createNode animCurveTA -n "animCurveTA763";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 72.755037061650995 3 72.755037061650995 
		26 72.755037061650995;
createNode animCurveTA -n "animCurveTA764";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 38.926480273156798 3 38.926480273156798 
		26 38.926480273156798;
createNode animCurveTA -n "animCurveTA765";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 8 0 11 0 13 0 15 0 
		17 0 20 0 24 0 26 0 28 0;
createNode animCurveTA -n "animCurveTA766";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 8 0 11 0 13 0 15 0 
		17 0 20 0 24 0 26 0 28 0;
createNode animCurveTA -n "animCurveTA767";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 40.637834425062678 3 -9.6043099083038648 
		6 -9.6043099083038648 8 -9.6043099083038648 11 -9.6043099083038648 13 -9.6043099083038648 
		15 -9.6043099083038648 17 -9.6043099083038648 20 -9.6043099083038648 24 -9.6043099083038648 
		26 -9.6043099083038648 28 -9.6043099083038648;
createNode animCurveTA -n "animCurveTA768";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1.2945941069882381 3 1.2945941069882381 
		6 3.1198943483277444 8 3.1198943483277444 11 3.1198943483277444 13 3.1198943483277444 
		15 3.1198943483277444 17 3.1198943483277444 20 3.1198943483277444 24 3.1198943483277444 
		26 3.1198943483277444 28 3.1198943483277444;
createNode animCurveTA -n "animCurveTA769";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 3.3208811165553147 3 3.3208811165553147 
		6 1.7238169885910806 8 1.723816988591081 11 1.7238169885910806 13 1.7238169885910806 
		15 1.7238169885910806 17 1.7238169885910806 20 1.7238169885910806 24 1.7238169885910806 
		26 1.7238169885910806 28 1.7238169885910806;
createNode animCurveTA -n "animCurveTA770";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -27.525824477859967 3 -27.525824477859967 
		6 12.268388134198538 8 12.268388134198538 11 12.268388134198538 13 12.268388134198538 
		15 12.268388134198538 17 12.268388134198538 20 12.268388134198538 24 12.268388134198538 
		26 12.268388134198538 28 12.268388134198538;
createNode animCurveTA -n "animCurveTA771";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -7.7966372458940265 3 6.308963718970988 
		6 6.9103069920743438 8 6.2649641345144991 11 6.2134928516470831 13 5.1998413472431118 
		15 3.1973588746862549 17 5.8237721189490967 20 -1.5663964108745752 24 -2.6319364232281028 
		26 2.8674066212672042 28 2.8674066212672042;
createNode animCurveTA -n "animCurveTA772";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 5.7322064377030788 6 4.9896665793491746 
		8 5.7802940471161621 11 5.9762161196385373 13 6.7136465875395306 15 7.8974650357864595 
		17 6.2245905697316513 20 8.372103076736634 24 8.1023066244755135 26 8.0224690310320828 
		28 8.0224690310320828;
createNode animCurveTA -n "animCurveTA773";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.59407764503375837 3 21.713029036968567 
		6 28.142527379210097 8 21.274336518663386 11 38.624933918372733 13 17.331021464653251 
		15 7.1409277013279251 17 -5.3595049781495909 20 -36.829282696131159 24 -44.256262142505207 
		26 -6.4497274483450688 28 -6.4497274483450688;
createNode animCurveTA -n "animCurveTA774";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 8 0 11 0 13 0 15 0 
		17 0 20 0 24 0 26 0 28 0;
createNode animCurveTA -n "animCurveTA775";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 8 0 11 0 13 0 15 0 
		17 0 20 0 24 0 26 0 28 0;
createNode animCurveTA -n "animCurveTA776";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 8 15.545129367555202 
		11 0 13 14.624621040473459 15 14.624621040473459 17 29.275153700579608 20 
		0 24 0 26 0 28 0;
createNode animCurveTA -n "animCurveTA777";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 14.794623739018833 6 14.794623739018833 
		8 22.334659718447345 11 0.082203225578748748 13 -1.2605016252822598 15 0.78106541184921829 
		17 2.5904248085613304 20 10.799949798769624 24 10.799949798769624 26 8.082384738201343 
		28 8.082384738201343;
createNode animCurveTA -n "animCurveTA778";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -8.2806426894500209 3 22.395186436807986 
		6 22.395186436807986 8 14.888605045675133 11 -5.1144665871353965 13 -4.9577828836018174 
		15 -5.0552970855989194 17 -4.4121965700996633 20 2.0347930942760355 24 2.0347930942760355 
		26 -54.423343112218433 28 -54.423343112218433;
createNode animCurveTA -n "animCurveTA779";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -1.4030948218520338 3 -0.5621560964572182 
		6 -0.5621560964572182 8 28.394145862336995 11 30.522556723613391 13 45.728934836770435 
		15 35.0416541756925 17 -1.1762819584024538 20 -13.046621705934337 24 -13.046621705934337 
		26 -0.08946566869529092 28 -0.08946566869529092;
	setAttr -s 12 ".kit[6:11]"  1 1 9 9 9 9;
	setAttr -s 12 ".kot[6:11]"  1 1 9 9 9 9;
	setAttr -s 12 ".kix[6:11]"  0.10958237200975418 0.21050886809825897 
		0.74777662754058838 0.66247838735580444 0.50788819789886475 1;
	setAttr -s 12 ".kiy[6:11]"  -0.99397772550582886 -0.97759193181991577 
		-0.66395038366317749 0.74908101558685303 0.86142295598983765 0;
	setAttr -s 12 ".kox[6:11]"  0.1095823347568512 0.21050900220870972 
		0.74777662754058838 0.66247838735580444 0.50788819789886475 1;
	setAttr -s 12 ".koy[6:11]"  -0.99397772550582886 -0.97759193181991577 
		-0.66395038366317749 0.74908101558685303 0.86142295598983765 0;
createNode animCurveTA -n "animCurveTA780";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 22.078247600383854 6 18.977509968842877 
		8 20.941119161468873 11 9.3048607388316942 13 12.763443183788777 15 12.763443183788777 
		17 10.646951801867568 20 10.646951801867568 24 10.646951801867568 26 11.633369793509914 
		28 11.633369793509914;
createNode animCurveTA -n "animCurveTA781";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 -9.6389434643346714 6 -14.961349670392833 
		8 -11.985276261935251 11 -11.176286408425661 13 -6.9486401737915386 15 -6.9486401737915386 
		17 -9.9077818303728673 20 -9.9077818303728673 24 -9.9077818303728673 26 -8.7236436077397581 
		28 -8.7236436077397581;
createNode animCurveTA -n "animCurveTA782";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 7.1941842949003796 6 21.659909015129006 
		8 13.249280848849958 11 15.823669576289326 13 -5.8630759927213489 15 -5.8630759927213489 
		17 8.4982171228833856 20 8.4982171228833856 24 8.4982171228833856 26 2.4104032148540666 
		28 2.4104032148540666;
createNode animCurveTA -n "animCurveTA783";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 8 0 11 0 13 0 15 0 
		17 0 20 0 24 0 26 0 28 0;
createNode animCurveTA -n "animCurveTA784";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 8 0 11 0 13 0 15 0 
		17 0 20 0 24 0 26 0 28 0;
createNode animCurveTA -n "animCurveTA785";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 66.910735171519136 3 21.472939016776969 
		6 21.472939016776969 8 21.472939016776973 11 21.472939016776969 13 21.472939016776969 
		15 21.472939016776969 17 21.472939016776969 20 21.472939016776969 24 21.472939016776969 
		26 21.472939016776969 28 21.472939016776969;
createNode animCurveTA -n "animCurveTA786";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 26.194612819039175 3 26.194612819039175 
		6 -15.564086868905925 8 -15.564086868905928 11 -15.564086868905925 13 -15.564086868905925 
		15 -15.564086868905925 17 -15.564086868905925 20 -15.564086868905925 24 -15.564086868905925 
		26 -15.564086868905925 28 -15.564086868905925;
createNode animCurveTA -n "animCurveTA787";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 42.116293762219605 3 42.116293762219605 
		6 5.9119201843313247 8 5.9119201843313265 11 5.9119201843313247 13 5.9119201843313247 
		15 5.9119201843313247 17 5.9119201843313247 20 5.9119201843313247 24 5.9119201843313247 
		26 5.9119201843313247 28 5.9119201843313247;
createNode animCurveTA -n "animCurveTA788";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 51.312599966148291 3 51.312599966148291 
		6 -0.89181587725581968 8 -0.89181587725581979 11 -0.89181587725581968 13 
		-0.89181587725581968 15 -0.89181587725581968 17 -0.89181587725581968 20 -0.89181587725581968 
		24 -0.89181587725581968 26 -0.89181587725581968 28 -0.89181587725581968;
createNode animCurveTA -n "animCurveTA789";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 8 0 11 0 13 0 15 0 
		17 0 20 0 24 0 26 0 28 0;
createNode animCurveTA -n "animCurveTA790";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 8 0 11 0 13 0 15 0 
		17 0 20 0 24 0 26 0 28 0;
createNode animCurveTA -n "animCurveTA791";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 55.749331591600708 3 55.749331591600708 
		6 21.151890972437133 8 21.151890972437133 11 21.151890972437133 13 21.151890972437133 
		15 21.151890972437133 17 21.151890972437133 20 21.151890972437133 24 21.151890972437133 
		26 21.151890972437133 28 21.151890972437133;
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
select -ne :time1;
	setAttr ".o" 36;
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
connectAttr "cbg_hit_by_car_frontSource.st" "clipLibrary1.st[0]";
connectAttr "cbg_hit_by_car_frontSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL247.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL248.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL249.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL250.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL251.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA679.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU49.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU50.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU51.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU52.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU53.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU54.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU55.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU56.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA680.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA681.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA682.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL252.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL253.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL254.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL255.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL256.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL257.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA683.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA684.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA685.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL258.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL259.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL260.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA686.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA687.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA688.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA689.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA690.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA691.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA692.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA693.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA694.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "cbg_Right_Toe_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[38].cevr"
		;
connectAttr "cbg_Right_Toe_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[39].cevr"
		;
connectAttr "cbg_Right_Toe_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[40].cevr"
		;
connectAttr "cbg_Left_Toe_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[41].cevr"
		;
connectAttr "cbg_Left_Toe_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[42].cevr"
		;
connectAttr "cbg_Left_Toe_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[43].cevr"
		;
connectAttr "animCurveTL261.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL262.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL263.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL264.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL265.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL266.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL267.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL268.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL269.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA695.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA696.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA697.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA698.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA699.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA700.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA701.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA702.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA703.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA704.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA705.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA706.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA707.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA708.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA709.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA710.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA711.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA712.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA713.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA714.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA715.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA716.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA717.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA718.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA719.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA720.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA721.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA722.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA723.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL270.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL271.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL272.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA724.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA725.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA726.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL273.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL274.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL275.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA727.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA728.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA729.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL276.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL277.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL278.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA730.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA731.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA732.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL279.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL280.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL281.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA733.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA734.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA735.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL282.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL283.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL284.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL285.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL286.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL287.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA736.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA737.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA738.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA739.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA740.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA741.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA742.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA743.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA744.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA745.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA746.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA747.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA748.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA749.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA750.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA751.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA752.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA753.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA754.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA755.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA756.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA757.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA758.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA759.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA760.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA761.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA762.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA763.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA764.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA765.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA766.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA767.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA768.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA769.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA770.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA771.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA772.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA773.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA774.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA775.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA776.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA777.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA778.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA779.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA780.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA781.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA782.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA783.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA784.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA785.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA786.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA787.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA788.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA789.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA790.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA791.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of cbg_hit_by_car_front.ma
