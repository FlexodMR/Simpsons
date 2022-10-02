//Maya ASCII 4.0 scene
//Name: mrg_run_into_object.ma
//Last modified: Tue, Oct 01, 2002 05:22:36 PM
requires maya "4.0";
requires "p3dmayaexp" "18.5";
requires "p3dSimpleShader" "18.5";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mrg_run_into_objectSource";
	setAttr ".ihi" 0;
	setAttr ".du" 25;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL276";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTL -n "animCurveTL277";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTL -n "animCurveTL278";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 -0.045025378962974101 1 -0.045025378962974101 
		2 -0.045025378962974101 3 -0.045025378962974101 4 -0.045025378962974101 5 
		-0.045025378962974101 6 -0.045025378962974101 7 -0.045025378962974101 8 -0.045025378962974101 
		9 -0.045025378962974101 10 -0.045025378962974101 11 -0.045025378962974101 
		12 -0.045025378962974101 13 -0.045025378962974101 14 -0.045025378962974101 
		15 -0.045025378962974101 16 -0.045025378962974101 17 -0.045025378962974101 
		18 -0.045025378962974101 19 -0.044245414527647936 20 -0.045025378962974101 
		21 -0.050456242385626959 22 -0.057273709203472641 23 -0.06062466746525573;
createNode animCurveTL -n "animCurveTL279";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0;
createNode animCurveTL -n "animCurveTL280";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0.83651488981792188 1 0.95161184755694639 
		2 1.1964009148663912 3 1.4201293828848141 4 1.5665302813884114 5 1.6512512318137469 
		6 1.6369174202982117 7 1.5784788623321562 8 1.5212853974477765 9 1.4567627242184329 
		10 1.3958131550488464 11 1.3253566950154152 12 1.2385551151244638 13 1.1443796127017773 
		14 1.0452910774543509 15 0.93697387264890797 16 0.82173289659115145 17 0.69676013288604299 
		18 0.58700188508170026 19 0.51504504725848799 20 0.48515984233222265 21 0.48515984233222265 
		22 0.48515984233222265 23 0.48515984233222265;
createNode animCurveTA -n "animCurveTA795";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0;
createNode animCurveTU -n "animCurveTU57";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 18 0 23 0;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU58";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 18 0 23 0;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU59";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 18 0 23 0;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU60";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 18 0 23 0;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU61";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 18 1 23 0;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU62";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 18 0 23 0;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTU -n "animCurveTU63";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 18 0 23 1;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU64";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 18 0 23 1;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA796";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 18 0 23 0;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA797";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 18 0 23 0;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA798";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 18 0 23 0;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL281";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 18 0 23 0;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL282";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 18 0 23 0;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL283";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 18 0 23 0;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL284";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.17684296283320869 3 -0.17684296283320869 
		5 -0.17684296283320869 7 -0.17684296283320869 9 -0.17684296283320869 11 -0.17684296283320869 
		14 -0.17684296283320869 16 -0.17684296283320869 19 -0.17684296283320869 22 
		-0.17684296283320869 25 -0.17655026201706334;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL285";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.11684750851122239 3 0.11684750851122239 
		5 0.11684750851122239 7 0.19503874544673788 9 0.11000142574701521 11 0.17642021697371058 
		14 0.31916226860025726 16 0.30054374012722951 19 0.10706499755382538 22 0.10706499755382538 
		25 0.10706499755382538;
	setAttr -s 11 ".kit[0:10]"  3 9 3 9 9 9 9 
		9 3 3 3;
	setAttr -s 11 ".kot[0:10]"  3 9 3 9 9 9 9 
		9 3 3 3;
createNode animCurveTL -n "animCurveTL286";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.3481094527715949 3 1.3481094527715949 
		5 1.3481094527715949 7 2.0494073585889785 9 2.1797370579001742 11 2.0742320632196822 
		14 1.3356971004562441 16 0.54130655227372337 19 0.49165714301231511 22 0.49165714301231511 
		25 0.49165714301231511;
	setAttr -s 11 ".kit[0:10]"  3 9 3 9 9 9 9 
		1 3 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 3 9 9 9 9 
		1 3 9 9;
	setAttr -s 11 ".kix[7:10]"  0.0024999678134918213 1 1 1;
	setAttr -s 11 ".kiy[7:10]"  -0.99999690055847168 0 0 0;
	setAttr -s 11 ".kox[7:10]"  0.0024999659508466721 1 1 1;
	setAttr -s 11 ".koy[7:10]"  -0.99999690055847168 0 0 0;
createNode animCurveTA -n "animCurveTA799";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -19.288990945907496 3 0.46104444544296308 
		5 0.46104444544296308 7 7.7551081793330283 9 -0.58279095637978728 11 -41.889616153138562 
		14 15.034008524188943 16 34.646432388829645 19 1.0242955470480299 22 1.0242955470480299 
		25 0;
	setAttr -s 11 ".kit[3:10]"  9 9 9 9 9 3 3 
		3;
	setAttr -s 11 ".kot[3:10]"  9 9 9 9 9 3 3 
		3;
createNode animCurveTA -n "animCurveTA800";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 7 0 9 0 11 0 14 0 16 
		0 19 0 22 0 25 -25.948901905116401;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA801";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 7 0 9 0 11 0 14 0 16 
		0 19 0 22 0 25 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL287";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.072112354169042853 3 0.072112354169042853 
		5 0.072112354169042853 7 0.072112354169042853 9 0.072112354169042853 11 0.072112354169042853 
		14 0.072112354169042853 16 0.072112354169042853 19 0.072112354169042853 22 
		0.072112354169042853 25 0.072059567379697251;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL288";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.64576554139286257 3 0.32925055735138925 
		5 0.10565084238732256 7 0.10565084238732256 9 0.28580732424765759 11 0.21753938651322224 
		14 0.1033456765242407 16 0.1033456765242407 19 0.24236409114392632 22 0.1086427975177765 
		25 0.1086427975177765;
	setAttr -s 11 ".kit[1:10]"  9 3 3 9 9 3 3 
		9 3 3;
	setAttr -s 11 ".kot[1:10]"  9 3 3 9 9 3 3 
		9 3 3;
createNode animCurveTL -n "animCurveTL289";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.27302899581955004 3 1.4025530565165734 
		5 2.2776238947488832 7 2.2776238947488832 9 1.8245730352385372 11 1.4522024657779791 
		14 1.3156665903091078 16 1.3156665903091078 19 0.98053307779460686 22 0.53368839444193794 
		25 0.53368839444193794;
	setAttr -s 11 ".kit[1:10]"  9 3 3 9 9 3 3 
		9 3 9;
	setAttr -s 11 ".kot[1:10]"  9 3 3 9 9 3 3 
		9 3 9;
createNode animCurveTA -n "animCurveTA802";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 101.83600965070561 3 66.596702656887672 
		5 3.1599555742657675 7 3.1599555742657675 9 36.25972385798908 11 45.393511271088919 
		14 -0.52437167089126113 16 -0.52437167089126113 19 -19.066508418398907 22 
		1.3040672431773508 25 0;
	setAttr -s 11 ".kit[1:10]"  9 3 3 9 9 3 3 
		9 3 3;
	setAttr -s 11 ".kot[1:10]"  9 3 3 9 9 3 3 
		9 3 3;
createNode animCurveTA -n "animCurveTA803";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 7 0 9 0 11 0 14 0 16 
		0 19 0 22 0 25 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA804";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 7 0 9 0 11 0 14 0 16 
		0 19 0 22 0 25 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA805";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA806";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA807";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA808";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA809";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA810";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA811";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA812";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA813";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA814";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA815";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA816";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTL -n "animCurveTL290";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 7 0 9 0 11 0 14 0 16 
		0 19 0 22 0 25 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL291";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 7 0 9 0 11 0 14 0 16 
		0 19 0 22 0 25 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL292";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.1269999742507935 3 1.1269999742507935 
		5 1.1269999742507935 7 1.1269999742507935 9 1.1269999742507935 11 1.1269999742507935 
		14 1.1269999742507935 16 1.1269999742507935 19 1.1269999742507935 22 1.1269999742507935 
		25 1.1269999742507935;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL293";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 7 0 9 0 11 0 14 0 16 
		0 19 0 22 0 25 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL294";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 7 0 9 0 11 0 14 0 16 
		0 19 0 22 0 25 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL295";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.1269999742507935 3 1.1269999742507935 
		5 1.1269999742507935 7 1.1269999742507935 9 1.1269999742507935 11 1.1269999742507935 
		14 1.1269999742507935 16 1.1269999742507935 19 1.1269999742507935 22 1.1269999742507935 
		25 1.1269999742507935;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL296";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.054876242829833978 3 -0.054876242829833978 
		5 -0.054876242829833978 7 -0.054876242829833978 9 -0.054876242829833978 11 
		-0.054876242829833978 14 -0.054876242829833978 16 -0.054876242829833978 19 
		-0.054876242829833978 22 -0.054876242829833978 25 -0.073888416931195494;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL297";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.90617010302623002 3 0.69181934245413335 
		5 0.67033540903454281 7 0.89375775071087749 9 0.85031451760714571 11 0.81096472014136056 
		14 0.91694508108640249 16 0.91858245534158134 19 0.8689330460801733 22 0.9868503930760163 
		25 0.9885925041129735;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL298";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.0195315460236143 3 1.7308319587727388 
		5 2.0125197312517682 7 1.9238258810065958 9 1.7754801145682737 11 1.6153244571605045 
		14 1.2739847684883274 16 1.0015154788964884 19 0.71542891429749178 22 0.59130539114397307 
		25 0.59130539114397307;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 3 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 3 9;
createNode animCurveTA -n "animCurveTA817";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 20.950825280283912 3 31.893921676442705 
		5 1.2128078773019906 7 -35.091584446272783 9 -38.468350162278199 11 -21.539180797641826 
		14 -27.781102124867992 16 -5.268820818620644 19 17.121698871849407 22 4.802459265983229 
		25 -0.62843630316474508;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 1 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 1 3;
	setAttr -s 11 ".kix[9:10]"  0.47925189137458801 1;
	setAttr -s 11 ".kiy[9:10]"  -0.87767738103866577 0;
	setAttr -s 11 ".kox[9:10]"  0.47925195097923279 1;
	setAttr -s 11 ".koy[9:10]"  -0.87767738103866577 0;
createNode animCurveTA -n "animCurveTA818";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -6.813923225810286 3 -6.8139232258102789 
		5 -6.8139232258102771 7 -6.8139232258102789 9 -6.8139232258102771 11 -6.8139232258102789 
		14 -6.8139232258102771 16 -6.813923225810278 19 -5.095981714050196 22 -0.15955804330378326 
		25 -5.8284402688137167;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA819";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.045251426940717945 3 0.045251426940717335 
		5 0.045251426940716148 7 0.045251426940718951 9 0.045251426940719319 11 0.045251426940725155 
		14 0.045251426940724551 16 0.04525142694072623 19 0.34681922893850214 22 
		1.3471416410679662 25 -1.295636019309746;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA820";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA821";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA822";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA823";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA824";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA825";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA826";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA827";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA828";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA829";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA830";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA831";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA832";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA833";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA834";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA835";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA836";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA837";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA838";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA839";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA840";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA841";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA842";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA843";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA844";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA845";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTL -n "mrg_Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 -0.99992759954608146;
createNode animCurveTL -n "mrg_Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 4.4786252009845515e-016;
createNode animCurveTL -n "mrg_Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 -0.020694801067533634;
createNode animCurveTA -n "animCurveTA846";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA847";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 27.07011333750042;
createNode animCurveTA -n "animCurveTA848";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 61.104714369119215;
createNode animCurveTL -n "animCurveTL299";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.014532035346829533 2 0.37063782584168031 
		6 0.43157473066048019 10 0.52912089071412061 14 0.63695622560578791 17 0.28124725316641658 
		21 0.22756902923533648 25 0.31125336591464692;
createNode animCurveTL -n "animCurveTL300";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.14201176346523714 2 -0.079409290480244352 
		6 -0.45214510839303024 10 0.73522713106967374 14 -0.14026748053152402 17 
		-0.84503357047395655 21 -0.75831554440519544 25 -0.85434162266424529;
createNode animCurveTL -n "animCurveTL301";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.84322251340281174 2 0.68317385309789203 
		6 0.65011283974447209 10 0.27751297772812089 14 -0.68863872970986029 17 -0.27689092869798565 
		21 -0.31102331112299891 25 -0.2928558660356389;
createNode animCurveTA -n "animCurveTA849";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -190.92730622572154 2 -128.56023392873757 
		6 -27.987011242412624 10 -91.673335501751595 14 26.313049359488833 17 -31.217201225974041 
		21 -10.152592094985767 25 -10.152592094985767;
createNode animCurveTA -n "animCurveTA850";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -59.980744244084619 2 -61.208153613387616 
		6 -57.342812918244022 10 -16.191809545376294 14 8.3467326905493344 17 4.2302383059474487 
		21 -5.8350504579615832 25 -5.8350504579615832;
createNode animCurveTA -n "animCurveTA851";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 144.27663927294395 2 102.06243260864211 
		6 29.474911296378565 10 83.912850752716807 14 -4.346969014482581 17 -64.9806386237628 
		21 -44.696747408310344 25 -44.696747408310344;
createNode animCurveTL -n "animCurveTL302";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 -0.71067033196120377;
createNode animCurveTL -n "animCurveTL303";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 2.2394438071426466;
createNode animCurveTL -n "animCurveTL304";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0.96157121140809854;
createNode animCurveTA -n "animCurveTA852";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 5.034855407914403;
createNode animCurveTA -n "animCurveTA853";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 7.8985926795415988;
createNode animCurveTA -n "animCurveTA854";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 68.758144741044489;
createNode animCurveTL -n "animCurveTL305";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.3705978542308779 25 0.31432036959158904;
createNode animCurveTL -n "animCurveTL306";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.1618621235956237 25 2.2297686973003263;
createNode animCurveTL -n "animCurveTL307";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.12044250833667494 25 1.3393972039299251;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
createNode animCurveTA -n "animCurveTA855";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 16.226511010665412;
createNode animCurveTA -n "animCurveTA856";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 -8.5139660854992858;
createNode animCurveTA -n "animCurveTA857";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 -68.213989601412422;
createNode animCurveTL -n "animCurveTL308";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.74208393053191946 2 0.67243160577142302 
		6 0.5239602470010718 10 0.74088360208317017 14 0.16555331607634013 17 -0.25025689938582474 
		21 -0.13165107937552289 25 0;
createNode animCurveTL -n "animCurveTL309";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.49991556016569422 2 -0.45299326565122627 
		6 -0.3529733938263368 10 -0.42371952298966908 14 0.17160739779327711 17 -1.0875330146441722 
		21 -0.30778985260726105 25 0;
createNode animCurveTL -n "animCurveTL310";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.85275872696683297 2 -0.86657885820330038 
		6 -0.89603794037227691 10 -0.64002888813191416 14 -1.435298650075445 17 -0.95611183389201915 
		21 -1.3979027047331856 25 -1;
createNode animCurveTL -n "animCurveTL311";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 -0.10167917362943303;
createNode animCurveTL -n "animCurveTL312";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 -0.40762644910266188;
createNode animCurveTL -n "animCurveTL313";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1 23 -0.93129112588482243;
createNode animCurveTA -n "animCurveTA858";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 33.632953330522966 4 23.922450407474429 
		8 31.103616019521461 10 16.260676631777585 13 20.384168150951659 20 25.766877140427454 
		25 23.523963651895997;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA859";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -45.161034679655693 4 -44.763005758739872 
		8 -9.4392233628306528 10 -31.101508516912691 13 -39.1553596874192 20 -72.190067186275186 
		25 -77.051628023584144;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA860";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -67.538091601379463 4 -53.216467079965888 
		8 -50.392070700018891 10 -39.942186324936451 13 -28.955041317244373 20 -21.103583533063212 
		25 -12.062810641800088;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA861";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -31.916939564270447;
createNode animCurveTA -n "animCurveTA862";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -29.868546772813136;
createNode animCurveTA -n "animCurveTA863";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 68.338326027891256;
createNode animCurveTA -n "animCurveTA864";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 63.595530963034982 4 48.559360783080216 
		7 39.785190822437166 8 46.248683462813155 10 69.722195837486979 11 80.887436153945728 
		13 89.558940245443381 16 91.340106145489386 20 62.920143586743741 25 8.5572674112203657;
	setAttr -s 10 ".kit[0:9]"  3 1 1 9 1 9 9 
		9 1 3;
	setAttr -s 10 ".kot[0:9]"  3 1 1 9 1 9 9 
		9 1 3;
	setAttr -s 10 ".kix[1:9]"  0.26793861389160156 0.43621712923049927 
		0.18797604739665985 0.13787105679512024 0.27749329805374146 0.67448329925537109 
		0.44854485988616943 0.11515767127275467 1;
	setAttr -s 10 ".kiy[1:9]"  -0.96343600749969482 0.89984142780303955 
		0.9821736216545105 0.99045020341873169 0.96072757244110107 0.73829013109207153 
		-0.8937603235244751 -0.99334722757339478 0;
	setAttr -s 10 ".kox[1:9]"  0.26793864369392395 0.43621718883514404 
		0.18797604739665985 0.13787107169628143 0.27749329805374146 0.67448329925537109 
		0.44854485988616943 0.11515769362449646 1;
	setAttr -s 10 ".koy[1:9]"  -0.96343594789505005 0.89984142780303955 
		0.9821736216545105 0.99045020341873169 0.96072757244110107 0.73829013109207153 
		-0.8937603235244751 -0.99334722757339478 0;
createNode animCurveTA -n "animCurveTA865";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 60.185649943194235;
createNode animCurveTA -n "animCurveTA866";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 18.476235154862632 2 18.476235154862632 
		5 18.476235154862632 8 -35.569958414167132 11 -0.077176233079493631 13 26.143667863132649 
		17 19.515523380515379 25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA867";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 10.082003051124275 2 10.082003051124275 
		5 10.082003051124275 8 8.2098502661088659 11 17.772958793177473 13 22.185798862097904 
		17 10.649115719039902 25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA868";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -4.720189328892868 2 -4.720189328892868 
		5 -4.720189328892868 8 11.472952671989578 11 21.499358955165388 13 22.170041679302255 
		17 -4.985699992858259 25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA869";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -13.555270109330269;
createNode animCurveTA -n "animCurveTA870";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 11.615881410206432;
createNode animCurveTA -n "animCurveTA871";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.32159281075535101;
createNode animCurveTA -n "animCurveTA872";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 11.09331921989552 2 11.093319219895511 
		5 -9.48160100269404 8 -9.3151782554239855 11 -20.118918908518399 13 11.093319219895511 
		25 10.423754966968488;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA873";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 59.959644693642325 2 59.959644693642325 
		5 10.56340091674662 8 20.155075157808181 11 4.4603547742436804 13 59.959644693642325 
		25 27.7228482558439;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA874";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 48.10646961869692 2 48.106469618696913 
		5 14.233697396349978 8 15.213745528589195 11 17.67993502309351 13 48.106469618696913 
		25 21.576484776388224;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA875";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 8 0 11 0 13 0 25 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA876";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 8 0 11 0 13 0 25 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA877";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 67.810939637714412 2 67.810939637714412 
		5 36.760375202950165 8 40.780933826498483 11 34.869010566565152 13 49.220986385679851 
		25 27.080064458283051;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA878";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA879";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA880";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA881";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA882";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA883";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA884";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA885";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA886";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA887";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 8 0 11 0 13 0 25 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA888";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 8 0 11 0 13 0 25 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA889";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 40.637834425062678 2 40.637834425062678 
		5 40.637834425062678 8 40.637834425062678 11 40.637834425062678 13 40.637834425062678 
		25 27.911632519594587;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA890";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.2945941069882385 2 1.2945941069882381 
		5 1.2945941069882381 8 1.2945941069882381 11 1.2945941069882381 13 1.2945941069882381 
		17 1.3674150174168214 25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA891";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 3.3208811165553156 2 3.3208811165553147 
		5 3.3208811165553147 8 3.3208811165553147 11 3.3208811165553147 13 3.3208811165553147 
		17 3.5076806841266883 25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA892";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -27.52582447785997 2 -27.525824477859967 
		5 -27.525824477859967 8 -27.525824477859967 11 -27.525824477859967 13 -27.525824477859967 
		17 -29.074152125383112 25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA893";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -7.7966372458940247 2 -21.897916030805764 
		5 -27.026607495669865 8 -5.1994617840387489 11 -2.3221107677840749 13 0.4229602515397734 
		17 -2.6433860314125552 25 -0.65073001024951671;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA894";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 5 -1.8399336948780474 8 
		1.2759524648695639 11 2.0011736396943878 13 -2.1712921303706629 17 2.2289899803918249 
		25 -4.2368721935960929;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA895";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.59407764503375837 2 0.5940776450337566 
		5 -10.116452954015815 8 4.1209972693572068 11 -44.303389219223895 13 -42.736463762731226 
		17 7.868556632952628 25 9.4592235793901747;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA896";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 5 0 8 0 11 0 13 0 17 0 
		25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA897";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 5 0 8 0 11 0 13 0 17 0 
		25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA898";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 5 0 8 -8.7299801591531629 
		11 -3.7713514762097855 13 0 17 0.11785472970351051 25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA899";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 3.0795085576620211 5 -9.0453627006818138 
		8 -0.48043271724491937 11 -2.1994867039360457 13 -4.2498852070355255 17 -6.2893151825303244 
		25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA900";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -8.2806426894500227 2 24.795574194960771 
		5 -27.168266729928344 8 -1.1099470514642238 11 6.37812285762997 13 1.602218344525967 
		17 -6.5290168112633511 25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA901";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.4030948218520336 2 -19.713013998044485 
		5 18.737481670184192 8 15.30682015070221 11 -13.464496188158471 13 -7.1380973339993838 
		17 7.4228031599308189 25 13.828138835879262;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 1 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 1 
		3;
	setAttr -s 8 ".kix[6:7]"  0.94529211521148682 1;
	setAttr -s 8 ".kiy[6:7]"  0.32622507214546204 0;
	setAttr -s 8 ".kox[6:7]"  0.94529211521148682 1;
	setAttr -s 8 ".koy[6:7]"  0.3262251615524292 0;
createNode animCurveTA -n "animCurveTA902";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 5 0 8 0 11 0 13 0 17 0.10633275776453374 
		25 -1.8905779124872235;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA903";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 5 0 8 0 11 0 13 0 17 -0.14398475666619143 
		25 2.5602510346124583;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA904";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 7.9008995674020186 5 13.902630719132157 
		8 -14.93881127687326 11 1.292037014543719 13 20.201647746547522 17 12.292629576166151 
		25 -12.60544106178066;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA905";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 8 0 11 0 13 0 25 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA906";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 8 0 11 0 13 0 25 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA907";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 66.910735171519136 2 66.910735171519136 
		5 66.910735171519136 8 66.910735171519136 11 66.910735171519136 13 66.910735171519136 
		25 33.429092416277157;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA908";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 26.194612819039182 2 26.194612819039175 
		5 26.194612819039175 8 26.194612819039175 11 26.194612819039175 13 26.194612819039175 
		25 8.2533422302317216;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA909";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 42.116293762219598 2 42.116293762219605 
		5 42.116293762219605 8 42.116293762219605 11 42.116293762219605 13 42.116293762219605 
		25 23.263402056531085;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA910";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 51.312599966148298 2 51.312599966148291 
		5 51.312599966148291 8 51.312599966148291 11 51.312599966148291 13 51.312599966148291 
		25 20.166277752815617;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA911";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 8 0 11 0 13 0 25 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA912";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 8 0 11 0 13 0 25 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA913";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 55.749331591600708 2 55.749331591600708 
		5 17.335501153048515 8 1.3335997782094318 11 21.70959717748967 13 34.317606237987832 
		25 17.254116939558369;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA914";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 1.3380213537735037 5 2.6131639134662308 
		8 3.9197458701993466 13 5.2263278269324616 18 4.6464383917524197 23 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA915";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 6.6964524279684214 2 14.046855746024445 
		5 6.4401839818369684 8 6.3120497587712423 13 6.1839155357055162 18 7.5979987806039828 
		23 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA916";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 15.849616712688743 2 27.301423562908905 
		5 -30.491530457205403 8 -44.422574955869713 13 24.434909611377325 18 17.352024645318647 
		23 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA917";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 1.3916390011034376 5 2.6131639134662308 
		8 3.9197458701993466 13 5.2263278269324616 18 4.6464383917524197 23 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA918";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 6.6964524279684214 2 21.135839344766254 
		5 6.4401839818369684 8 6.3120497587712423 13 6.1839155357055162 18 7.5979987806039828 
		23 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA919";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 15.849616712688743 2 27.478493216753321 
		5 -30.491530457205403 8 -44.422574955869713 13 24.434909611377325 18 17.352024645318647 
		23 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA920";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 1.3065819567331154 5 2.6131639134662308 
		8 3.9197458701993466 13 5.2263278269324616 18 4.6464383917524197 23 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA921";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 6.6964524279684214 2 6.5683182049026962 
		5 6.4401839818369684 8 6.3120497587712423 13 6.1839155357055162 18 7.5979987806039828 
		23 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA922";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 15.849616712688743 2 27.126092394887358 
		5 -30.491530457205403 8 -44.422574955869713 13 24.434909611377325 18 17.352024645318647 
		23 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
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
	setAttr ".o" 25;
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
connectAttr "mrg_run_into_objectSource.st" "clipLibrary1.st[0]";
connectAttr "mrg_run_into_objectSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL276.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL277.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL278.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL279.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL280.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA795.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU57.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU58.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU59.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU60.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU61.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU62.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU63.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU64.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA796.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA797.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA798.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL281.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL282.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL283.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL284.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL285.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL286.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA799.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA800.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA801.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL287.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL288.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL289.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA802.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA803.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA804.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA805.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA806.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA807.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA808.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA809.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA810.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA811.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA812.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA813.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA814.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA815.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA816.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL290.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL291.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL292.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL293.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL294.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL295.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL296.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL297.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL298.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA817.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA818.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA819.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA820.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA821.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA822.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA823.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA824.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA825.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA826.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA827.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA828.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA829.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA830.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA831.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA832.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA833.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA834.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA835.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA836.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA837.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA838.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA839.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA840.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA841.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA842.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA843.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA844.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA845.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "mrg_Right_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[82].cevr"
		;
connectAttr "mrg_Right_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[83].cevr"
		;
connectAttr "mrg_Right_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[84].cevr"
		;
connectAttr "animCurveTA846.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA847.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA848.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL299.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL300.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL301.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA849.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA850.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA851.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL302.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL303.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL304.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA852.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA853.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA854.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL305.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL306.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL307.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA855.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA856.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA857.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL308.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL309.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL310.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL311.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL312.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL313.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA858.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA859.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA860.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA861.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA862.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA863.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA864.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA865.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA866.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA867.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA868.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA869.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA870.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA871.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA872.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA873.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA874.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA875.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA876.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA877.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA878.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA879.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA880.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA881.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA882.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA883.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA884.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA885.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA886.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA887.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA888.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA889.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA890.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA891.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA892.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA893.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA894.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA895.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA896.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA897.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA898.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA899.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA900.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA901.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA902.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA903.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA904.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA905.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA906.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA907.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA908.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA909.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA910.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA911.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA912.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA913.a" "clipLibrary1.cel[0].cev[167].cevr";
connectAttr "animCurveTA914.a" "clipLibrary1.cel[0].cev[168].cevr";
connectAttr "animCurveTA915.a" "clipLibrary1.cel[0].cev[169].cevr";
connectAttr "animCurveTA916.a" "clipLibrary1.cel[0].cev[170].cevr";
connectAttr "animCurveTA917.a" "clipLibrary1.cel[0].cev[171].cevr";
connectAttr "animCurveTA918.a" "clipLibrary1.cel[0].cev[172].cevr";
connectAttr "animCurveTA919.a" "clipLibrary1.cel[0].cev[173].cevr";
connectAttr "animCurveTA920.a" "clipLibrary1.cel[0].cev[174].cevr";
connectAttr "animCurveTA921.a" "clipLibrary1.cel[0].cev[175].cevr";
connectAttr "animCurveTA922.a" "clipLibrary1.cel[0].cev[176].cevr";
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
// End of mrg_run_into_object.ma
