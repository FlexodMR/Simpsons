//Maya ASCII 4.0 scene
//Name: mrg_run_into_person.ma
//Last modified: Tue, Oct 01, 2002 05:22:45 PM
requires maya "4.0";
requires "p3dmayaexp" "18.5";
requires "p3dSimpleShader" "18.5";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mrg_run_into_personSource";
	setAttr ".ihi" 0;
	setAttr ".du" 23;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL235";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTL -n "animCurveTL236";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTL -n "Motion_Root_translateX";
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
createNode animCurveTL -n "animCurveTL238";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0.83651488981792188 1 0.95161184755694639 
		2 1.1964009148663912 3 1.4201293828848141 4 1.5665302813884114 5 1.6512512318137469 
		6 1.6369174202982117 7 1.5784788623321562 8 1.5212853974477765 9 1.4567627242184329 
		10 1.3958131550488464 11 1.3253566950154152 12 1.2385551151244638 13 1.1443796127017773 
		14 1.0452910774543509 15 0.93697387264890797 16 0.82173289659115145 17 0.69676013288604299 
		18 0.58700188508170026 19 0.51504504725848799 20 0.48515984233222265 21 0.48515984233222265 
		22 0.48515984233222265 23 0.48515984233222265;
createNode animCurveTA -n "animCurveTA676";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0;
createNode animCurveTU -n "animCurveTU49";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 18 0 23 0;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU50";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 18 0 23 0;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU51";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 18 0 23 0;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU52";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 18 0 23 0;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU53";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 18 1 23 0;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU54";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 18 1 23 0;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU55";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 18 0 23 1;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU56";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 18 0 23 1;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA677";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 18 0 23 0;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA678";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 18 0 23 0;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA679";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 18 0 23 0;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL240";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 18 0 23 0;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL241";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 18 0 23 0;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL242";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 18 0 23 0;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL243";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.1569147887077551 3 -0.1569147887077551 
		5 -0.1569147887077551 7 -0.1569147887077551 9 -0.1569147887077551 11 -0.1569147887077551 
		14 -0.1569147887077551 16 -0.1569147887077551 18 -0.1569147887077551 20 -0.1569147887077551 
		23 -0.1566550719173089;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL244";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.10368013414454622 3 0.10368013414454622 
		5 0.10368013414454622 7 0.1730601152643288 9 0.097605526406637153 11 0.15653968145916874 
		14 0.28319634063206595 16 0.26667590682690551 18 0.095 20 0.095 23 0.095;
	setAttr -s 11 ".kit[0:10]"  3 9 3 9 9 9 9 
		9 3 3 3;
	setAttr -s 11 ".kot[0:10]"  3 9 3 9 9 9 9 
		9 3 3 3;
createNode animCurveTL -n "animCurveTL245";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.1961929756633671 3 1.1961929756633671 
		5 1.1961929756633671 7 1.8184626489910816 9 1.9341056856272059 11 1.8404898940646288 
		14 1.1851793531265946 16 0.48030751077307954 18 0.43625302062598426 20 0.43625302062598426 
		23 0.43625302062598426;
	setAttr -s 11 ".kit[0:10]"  3 9 3 9 9 9 9 
		1 3 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 3 9 9 9 9 
		1 3 9 9;
	setAttr -s 11 ".kix[7:10]"  0.0028174612671136856 1 1 1;
	setAttr -s 11 ".kiy[7:10]"  -0.99999600648880005 0 0 0;
	setAttr -s 11 ".kox[7:10]"  0.0028174591716378927 1 1 1;
	setAttr -s 11 ".koy[7:10]"  -0.99999600648880005 0 0 0;
createNode animCurveTA -n "animCurveTA680";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -19.288990945907496 3 0.46104444544296308 
		5 0.46104444544296308 7 7.7551081793330283 9 -0.58279095637978728 11 -41.889616153138562 
		14 15.034008524188943 16 34.646432388829645 18 1.0242955470480299 20 1.0242955470480299 
		23 0;
	setAttr -s 11 ".kit[3:10]"  9 9 9 9 9 3 3 
		3;
	setAttr -s 11 ".kot[3:10]"  9 9 9 9 9 3 3 
		3;
createNode animCurveTA -n "animCurveTA681";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 7 0 9 0 11 0 14 0 16 
		0 18 0 20 0 23 -25.948901905116401;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA682";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 7 0 9 0 11 0 14 0 16 
		0 18 0 20 0 23 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL246";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.063986118737031625 3 0.063986118737031625 
		5 0.063986118737031625 7 0.063986118737031625 9 0.063986118737031625 11 0.063986118737031625 
		14 0.063986118737031625 16 0.063986118737031625 18 0.063986118737031625 20 
		0.063986118737031625 23 0.06393928041356077;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL247";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.57299516960695085 3 0.29214779491922199 
		5 0.093745203905223756 7 0.093745203905223756 9 0.25360011604051408 11 0.19302519208825888 
		14 0.09169980380251809 16 0.09169980380251809 18 0.21505243716180653 20 0.096400000000000013 
		23 0.096400000000000013;
	setAttr -s 11 ".kit[1:10]"  9 3 3 9 9 3 3 
		9 3 3;
	setAttr -s 11 ".kot[1:10]"  9 3 3 9 9 3 3 
		9 3 3;
createNode animCurveTL -n "animCurveTL248";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.24226175870239405 3 1.2445014095487996 
		5 2.0209617983913453 7 2.0209617983913453 9 1.6189645757991042 11 1.2885558996958926 
		14 1.1674060517913818 16 1.1674060517913818 18 0.87003824329849266 20 0.47354783197463968 
		23 0.47354783197463968;
	setAttr -s 11 ".kit[1:10]"  9 3 3 9 9 3 3 
		9 3 9;
	setAttr -s 11 ".kot[1:10]"  9 3 3 9 9 3 3 
		9 3 9;
createNode animCurveTA -n "animCurveTA683";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 101.83600965070561 3 66.596702656887672 
		5 3.1599555742657675 7 3.1599555742657675 9 36.25972385798908 11 45.393511271088919 
		14 -0.52437167089126113 16 -0.52437167089126113 18 -19.066508418398907 20 
		1.3040672431773508 23 0;
	setAttr -s 11 ".kit[1:10]"  9 3 3 9 9 3 3 
		9 3 3;
	setAttr -s 11 ".kot[1:10]"  9 3 3 9 9 3 3 
		9 3 3;
createNode animCurveTA -n "animCurveTA684";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 7 0 9 0 11 0 14 0 16 
		0 18 0 20 0 23 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA685";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 7 0 9 0 11 0 14 0 16 
		0 18 0 20 0 23 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA686";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA687";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA688";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA689";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA690";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA691";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA692";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA693";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA694";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA695";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA696";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA697";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTL -n "animCurveTL249";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 7 0 9 0 11 0 14 0 16 
		0 18 0 20 0 23 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL250";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 7 0 9 0 11 0 14 0 16 
		0 18 0 20 0 23 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL251";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 3 1 5 1 7 1 9 1 11 1 14 1 16 
		1 18 1 20 1 23 1;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL252";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 7 0 9 0 11 0 14 0 16 
		0 18 0 20 0 23 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL253";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 7 0 9 0 11 0 14 0 16 
		0 18 0 20 0 23 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL254";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 3 1 5 1 7 1 9 1 11 1 14 1 16 
		1 18 1 20 1 23 1;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL255";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.048692319506319935 3 -0.048692319506319935 
		5 -0.048692319506319935 7 -0.048692319506319935 9 -0.048692319506319935 11 
		-0.048692319506319935 14 -0.048692319506319935 16 -0.048692319506319935 18 
		-0.048692319506319935 20 -0.048692319506319935 23 -0.065562039591274171;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL256";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.80405512309672722 3 0.61385923536869702 
		5 0.59479629489802621 7 0.79304150055995282 9 0.7544938216812449 11 0.71957829518183736 
		14 0.81361588468177981 16 0.81506874563350029 18 0.77101425548640523 20 0.87564366958575501 
		23 0.87718946468492121;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL257";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.90464203133755872 3 1.5357870437604584 
		5 1.785731834279455 7 1.7070327639408474 9 1.5754038643599586 11 1.4332959131026948 
		14 1.1304212933414186 16 0.88865616839279471 18 0.63480827918660265 20 0.52467205381886617 
		23 0.52467205381886617;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 3 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 3 9;
createNode animCurveTA -n "animCurveTA698";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 20.950825280283912 3 31.893921676442705 
		5 1.2128078773019906 7 -22.636245182644341 9 -28.444448227445374 11 -21.539180797641826 
		14 -0.93600239830150667 16 9.656357383484508 18 9.656357383484508 20 4.802459265983229 
		23 -0.62843630316474508;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 1 
		9 9 1 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 1 
		9 9 1 3;
	setAttr -s 11 ".kix[6:10]"  0.24623928964138031 0.58495700359344482 
		0.8440396785736084 0.47925189137458801 1;
	setAttr -s 11 ".kiy[6:10]"  0.96920907497406006 0.81106430292129517 
		-0.53628069162368774 -0.87767738103866577 0;
	setAttr -s 11 ".kox[6:10]"  0.24623940885066986 0.58495700359344482 
		0.8440396785736084 0.47925195097923279 1;
	setAttr -s 11 ".koy[6:10]"  0.96920901536941528 0.81106430292129517 
		-0.53628069162368774 -0.87767738103866577 0;
createNode animCurveTA -n "animCurveTA699";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -6.813923225810286 3 -6.8139232258102789 
		5 -6.8139232258102771 7 -6.8139232258102789 9 -6.8139232258102771 11 -6.8139232258102789 
		14 -6.8139232258102789 16 -6.813923225810278 18 -5.095981714050196 20 -0.15955804330378326 
		23 -5.8284402688137167;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA700";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.045251426940717945 3 0.045251426940717335 
		5 0.045251426940716148 7 0.045251426940718119 9 0.045251426940719319 11 0.045251426940725155 
		14 0.045251426940725155 16 0.04525142694072623 18 0.34681922893850214 20 
		1.3471416410679662 23 -1.295636019309746;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA701";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA702";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA703";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA704";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA705";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA706";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA707";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA708";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA709";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA710";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA711";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA712";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA713";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA714";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA715";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA716";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA717";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA718";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA719";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA720";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA721";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA722";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA723";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA724";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA725";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA726";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "mrg_Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mrg_Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 27.07011333750042;
createNode animCurveTA -n "mrg_Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 61.104714369119215;
createNode animCurveTA -n "mrg_Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 7.7976222737965317;
createNode animCurveTA -n "mrg_Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 -30.409274105849079;
createNode animCurveTA -n "mrg_Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 -64.859940280210893;
createNode animCurveTL -n "mrg_Right_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 -0.71067033196120377;
createNode animCurveTL -n "mrg_Right_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 2.2394438071426466;
createNode animCurveTL -n "mrg_Right_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0.96157121140809843;
createNode animCurveTA -n "mrg_Right_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 5.034855407914403;
createNode animCurveTA -n "mrg_Right_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 7.8985926795415988;
createNode animCurveTA -n "mrg_Right_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 68.758144741044489;
createNode animCurveTL -n "animCurveTL267";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.3705978542308779 23 0.31432036959158904;
createNode animCurveTL -n "animCurveTL268";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.1618621235956237 23 2.2297686973003263;
createNode animCurveTL -n "animCurveTL269";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.12044250833667494 23 1.3393972039299251;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
createNode animCurveTA -n "animCurveTA736";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 16.226511010665412;
createNode animCurveTA -n "animCurveTA737";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 -8.5139660854992858;
createNode animCurveTA -n "animCurveTA738";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 -68.213989601412422;
createNode animCurveTL -n "animCurveTL270";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTL -n "animCurveTL271";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTL -n "animCurveTL272";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1 23 -1;
createNode animCurveTL -n "animCurveTL273";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 -0.10167917362943303;
createNode animCurveTL -n "animCurveTL274";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 -0.40762644910266188;
createNode animCurveTL -n "animCurveTL275";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1 23 -0.93129112588482243;
createNode animCurveTA -n "animCurveTA739";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 33.632953330522966 4 23.922450407474429 
		7 16.858057253517053 10 16.260676631777585 15 23.139533114462068 18 25.766877140427454 
		23 23.523963651895997;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA740";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -45.161034679655693 4 -44.763005758739872 
		7 -41.771608773953588 10 -31.101508516912691 15 -47.695911325494642 18 -72.190067186275186 
		23 -77.051628023584144;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA741";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -67.538091601379463 4 -53.216467079965888 
		7 -46.362339500152054 10 -39.942186324936451 15 -22.635743128838957 18 -21.103583533063212 
		23 -12.062810641800088;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA742";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -31.916939564270447 2 -15.356018695340643 
		5 -3.4005304920938717 8 3.0524947880950166 13 4.1360087222789206 16 3.1944540543822528 
		20 -3.4925619607257858 23 -1.0886538431586763;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA743";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -29.868546772813136 2 -1.6370789986654639 
		5 -7.0844467536525366 8 -35.956285287140965 13 -27.911779252573016 16 -70.159756603832889 
		20 -70.79556508729317 23 -74.728963262836643;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA744";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 68.338326027891256 2 69.61309617468136 
		5 41.676216099784234 8 57.124078329493635 13 50.953024955291845 16 8.6907501770335873 
		20 7.7621367176605087 23 15.070576693552971;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA745";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 63.595530963034982 4 48.559360783080216 
		7 39.785190822437166 10 69.722195837486979 15 91.340106145489386 18 62.920143586743741 
		23 8.5572674112203639;
	setAttr -s 7 ".kit[0:6]"  3 1 1 1 9 1 3;
	setAttr -s 7 ".kot[0:6]"  3 1 1 1 9 1 3;
	setAttr -s 7 ".kix[1:6]"  0.26793861389160156 0.43621712923049927 
		0.13787105679512024 0.91355746984481812 0.11515767127275467 1;
	setAttr -s 7 ".kiy[1:6]"  -0.96343600749969482 0.89984142780303955 
		0.99045020341873169 -0.40670967102050781 -0.99334722757339478 0;
	setAttr -s 7 ".kox[1:6]"  0.26793864369392395 0.43621718883514404 
		0.13787107169628143 0.91355746984481812 0.11515769362449646 1;
	setAttr -s 7 ".koy[1:6]"  -0.96343594789505005 0.89984142780303955 
		0.99045020341873169 -0.40670967102050781 -0.99334722757339478 0;
createNode animCurveTA -n "animCurveTA746";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 60.185649943194235 2 60.185649943194235 
		5 32.773389946283913 8 38.822239469914635 13 62.477565153340926 16 16.300985903101061 
		20 21.464222889398297 23 15.711328223519061;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 1 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 1 
		3;
	setAttr -s 8 ".kix[6:7]"  0.90959548950195313 1;
	setAttr -s 8 ".kiy[6:7]"  -0.4154948890209198 0;
	setAttr -s 8 ".kox[6:7]"  0.90959548950195313 1;
	setAttr -s 8 ".koy[6:7]"  -0.41549494862556458 0;
createNode animCurveTA -n "animCurveTA747";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 18.476235154862632 2 18.476235154862632 
		5 18.476235154862632 8 -35.569958414167132 13 26.143667863132649 16 19.515523380515379 
		23 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA748";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 10.082003051124275 2 10.082003051124275 
		5 10.082003051124275 8 8.2098502661088659 13 22.185798862097901 16 10.649115719039902 
		23 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA749";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -4.720189328892868 2 -4.720189328892868 
		5 -4.720189328892868 8 11.472952671989578 13 22.170041679302255 16 -4.985699992858259 
		23 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA750";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -13.555270109330269 2 -13.555270109330269 
		5 7.2700206595743291 8 3.3783800264308916 13 -47.430971648837762 16 -14.317753995053931 
		23 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA751";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 11.615881410206432 2 11.615881410206432 
		5 24.306051945728726 8 26.550301271138668 13 -4.051820135700285 16 12.269274762865578 
		23 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA752";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.32159281075535101 2 0.32159281075535068 
		5 -2.9316255344058337 8 -12.336297648946006 13 11.022350940076182 16 0.33968240652337872 
		23 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA753";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 11.09331921989552 2 11.093319219895511 
		5 -9.48160100269404 8 -9.3151782554239855 11 -20.118918908518399 13 11.093319219895511 
		23 10.423754966968488;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA754";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 59.959644693642325 2 59.959644693642325 
		5 10.56340091674662 8 20.155075157808181 11 4.4603547742436804 13 59.959644693642325 
		23 27.7228482558439;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA755";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 48.10646961869692 2 48.106469618696913 
		5 14.233697396349978 8 15.213745528589195 11 17.67993502309351 13 48.106469618696913 
		23 21.576484776388224;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA756";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 8 0 11 0 13 0 23 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA757";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 8 0 11 0 13 0 23 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA758";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 67.810939637714412 2 67.810939637714412 
		5 36.760375202950165 8 40.780933826498483 11 34.869010566565144 13 49.220986385679851 
		23 27.080064458283051;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA759";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA760";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA761";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "mrg_Thumb_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mrg_Thumb_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mrg_Thumb_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mrg_Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mrg_Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mrg_Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "animCurveTA768";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 8 0 11 0 13 0 23 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA769";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 8 0 11 0 13 0 23 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA770";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 40.637834425062678 2 40.637834425062678 
		5 40.637834425062678 8 40.637834425062678 11 40.637834425062678 13 40.637834425062678 
		23 27.911632519594587;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA771";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.2945941069882385 2 1.2945941069882381 
		5 1.2945941069882381 8 1.2945941069882381 11 1.2945941069882381 13 1.2945941069882381 
		16 1.3674150174168214 23 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA772";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 3.3208811165553156 2 3.3208811165553147 
		5 3.3208811165553147 8 3.3208811165553147 11 3.3208811165553147 13 3.3208811165553147 
		16 3.5076806841266883 23 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA773";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -27.52582447785997 2 -27.525824477859967 
		5 -27.525824477859967 8 -27.525824477859967 11 -27.525824477859967 13 -27.525824477859967 
		16 -29.074152125383112 23 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA774";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -7.7966372458940247 2 -21.897916030805764 
		5 -27.026607495669865 8 -3.2192397419481766 11 -1.5687377008013468 13 -0.01800229915334188 
		16 -2.6433860314125552 23 -0.65073001024951671;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA775";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 5 -1.8399336948780474 8 
		2.789816990309629 11 2.6335331205563497 13 -2.2120116005629544 16 2.2289899803918249 
		23 -4.2368721935960929;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA776";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.59407764503375837 2 0.5940776450337566 
		5 -10.116452954015815 8 -16.84450977575354 11 -19.946276829499073 13 -19.372854163739966 
		16 -14.780247566026143 23 9.4592235793901747;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 1 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 1 
		3;
	setAttr -s 8 ".kix[6:7]"  0.52487486600875854 1;
	setAttr -s 8 ".kiy[6:7]"  0.85117942094802856 0;
	setAttr -s 8 ".kox[6:7]"  0.52487492561340332 1;
	setAttr -s 8 ".koy[6:7]"  0.85117936134338379 0;
createNode animCurveTA -n "animCurveTA777";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 5 0 8 0 11 0 13 0 16 0 
		23 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA778";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 5 0 8 0 11 0 13 0 16 0 
		23 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA779";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 5 0 8 -8.7299801591531629 
		11 -3.7713514762097855 13 0 16 0.11785472970351051 23 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA780";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 3.0795085576620211 5 -9.0453627006818138 
		8 -0.48043271724491937 11 -2.1994867039360457 16 -6.2893151825303244 23 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA781";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -8.2806426894500227 2 24.795574194960771 
		5 -27.168266729928344 8 -1.1099470514642238 11 6.37812285762997 16 -6.5290168112633511 
		23 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA782";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.4030948218520336 2 -19.713013998044485 
		5 18.737481670184192 8 15.30682015070221 11 -13.464496188158469 16 7.4228031599308189 
		23 13.82813883587926;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 1 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 1 3;
	setAttr -s 7 ".kix[5:6]"  0.94529211521148682 1;
	setAttr -s 7 ".kiy[5:6]"  0.32622507214546204 0;
	setAttr -s 7 ".kox[5:6]"  0.94529211521148682 1;
	setAttr -s 7 ".koy[5:6]"  0.3262251615524292 0;
createNode animCurveTA -n "animCurveTA783";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 5 0 8 0 11 0 13 0 16 0.10633275776453374 
		23 -1.8905779124872235;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA784";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 5 0 8 0 11 0 13 0 16 -0.14398475666619143 
		23 2.5602510346124583;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA785";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 7.9008995674020186 5 13.902630719132157 
		8 32.999877464068796 11 25.723884979038182 13 20.201647746547522 16 12.292629576166151 
		23 -12.60544106178066;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA786";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 8 0 11 0 13 0 23 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA787";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 8 0 11 0 13 0 23 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA788";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 66.910735171519136 2 66.910735171519136 
		5 66.910735171519136 8 66.910735171519136 11 66.910735171519136 13 66.910735171519136 
		23 33.429092416277157;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA789";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 26.194612819039182 2 26.194612819039175 
		5 26.194612819039175 8 26.194612819039175 11 26.194612819039175 13 26.194612819039175 
		23 8.2533422302317216;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA790";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 42.116293762219598 2 42.116293762219605 
		5 42.116293762219605 8 42.116293762219605 11 42.116293762219605 13 42.116293762219605 
		23 23.263402056531085;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA791";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 51.312599966148298 2 51.312599966148291 
		5 51.312599966148291 8 51.312599966148291 11 51.312599966148291 13 51.312599966148291 
		23 20.166277752815617;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA792";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 8 0 11 0 13 0 23 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA793";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 8 0 11 0 13 0 23 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA794";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 55.749331591600708 2 55.749331591600708 
		5 17.335501153048515 8 1.3335997782094318 11 21.70959717748967 13 34.317606237987832 
		23 17.254116939558369;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "hair_1_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 1.3380213537735037 5 2.6131639134662308 
		8 3.9197458701993466 13 5.2263278269324616 18 4.6464383917524197 23 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "hair_1_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 6.6964524279684214 2 14.046855746024445 
		5 6.4401839818369684 8 6.3120497587712423 13 6.1839155357055162 18 7.5979987806039828 
		23 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "hair_1_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 15.849616712688743 2 27.301423562908905 
		5 -30.491530457205403 8 -44.422574955869713 13 24.434909611377325 18 17.352024645318647 
		23 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "hair_2_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 1.3916390011034376 5 2.6131639134662308 
		8 3.9197458701993466 13 5.2263278269324616 18 4.6464383917524197 23 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "hair_2_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 6.6964524279684214 2 21.135839344766254 
		5 6.4401839818369684 8 6.3120497587712423 13 6.1839155357055162 18 7.5979987806039828 
		23 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "hair_2_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 15.849616712688743 2 27.478493216753321 
		5 -30.491530457205403 8 -44.422574955869713 13 24.434909611377325 18 17.352024645318647 
		23 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "hair_3_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 1.3065819567331154 5 2.6131639134662308 
		8 3.9197458701993466 13 5.2263278269324616 18 4.6464383917524197 23 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "hair_3_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 6.6964524279684214 2 6.5683182049026954 
		5 6.4401839818369684 8 6.3120497587712423 13 6.1839155357055162 18 7.5979987806039828 
		23 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "hair_3_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 15.849616712688743 2 27.126092394887358 
		5 -30.491530457205403 8 -44.422574955869713 13 24.434909611377325 18 17.352024645318647 
		23 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode clipLibrary -n "clipLibrary1";
	setAttr -s 171 ".cel[0].cev";
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
	setAttr ".o" 23;
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
connectAttr "mrg_run_into_personSource.st" "clipLibrary1.st[0]";
connectAttr "mrg_run_into_personSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL235.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL236.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL238.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA676.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU49.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU50.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU51.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU52.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU53.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU54.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU55.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU56.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA677.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA678.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA679.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL240.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL241.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL242.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL243.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL244.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL245.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA680.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA681.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA682.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL246.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL247.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL248.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA683.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA684.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA685.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA686.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA687.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA688.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA689.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA690.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA691.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA692.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA693.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA694.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA695.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA696.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA697.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL249.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL250.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL251.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL252.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL253.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL254.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL255.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL256.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL257.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA698.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA699.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA700.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA701.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA702.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA703.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA704.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA705.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA706.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA707.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA708.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA709.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA710.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA711.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA712.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA713.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA714.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA715.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA716.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA717.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA718.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA719.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA720.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA721.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA722.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA723.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA724.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA725.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA726.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "mrg_Right_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[85].cevr"
		;
connectAttr "mrg_Right_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[86].cevr"
		;
connectAttr "mrg_Right_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[87].cevr"
		;
connectAttr "mrg_Left_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[91].cevr"
		;
connectAttr "mrg_Left_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[92].cevr"
		;
connectAttr "mrg_Left_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[93].cevr"
		;
connectAttr "mrg_Right_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[94].cevr"
		;
connectAttr "mrg_Right_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[95].cevr"
		;
connectAttr "mrg_Right_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[96].cevr"
		;
connectAttr "mrg_Right_Arm_World_rotateX.a" "clipLibrary1.cel[0].cev[97].cevr"
		;
connectAttr "mrg_Right_Arm_World_rotateY.a" "clipLibrary1.cel[0].cev[98].cevr"
		;
connectAttr "mrg_Right_Arm_World_rotateZ.a" "clipLibrary1.cel[0].cev[99].cevr"
		;
connectAttr "animCurveTL267.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL268.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL269.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA736.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA737.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA738.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL270.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL271.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL272.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL273.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL274.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL275.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA739.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA740.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA741.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA742.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA743.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA744.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA745.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA746.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA747.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA748.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA749.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA750.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA751.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA752.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA753.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA754.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA755.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA756.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA757.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA758.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA759.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA760.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA761.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "mrg_Thumb_R_rotateX.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "mrg_Thumb_R_rotateY.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "mrg_Thumb_R_rotateZ.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "mrg_Thumb_L_rotateX.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "mrg_Thumb_L_rotateY.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "mrg_Thumb_L_rotateZ.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA768.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA769.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA770.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA771.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA772.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA773.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA774.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA775.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA776.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA777.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA778.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA779.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA780.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA781.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA782.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA783.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA784.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA785.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA786.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA787.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA788.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA789.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA790.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA791.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA792.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA793.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA794.a" "clipLibrary1.cel[0].cev[167].cevr";
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
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of mrg_run_into_person.ma
