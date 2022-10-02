//Maya ASCII 4.0 scene
//Name: lsa_hands_on_hips.ma
//Last modified: Tue, Feb 18, 2003 03:43:58 PM
requires maya "4.0";
requires "p3dmayaexp" "2.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "lsa_hands_on_hipsSource";
	setAttr ".ihi" 0;
	setAttr ".du" 60;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 1 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.0033333150204271078;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.99999445676803589;
	setAttr -s 5 ".kox[3:4]"  1 0.0033333150204271078;
	setAttr -s 5 ".koy[3:4]"  0 -0.99999445676803589;
createNode animCurveTL -n "animCurveTL201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 -0.033135114381557439 1 -0.036255889831741543 
		2 -0.039752135533794516 3 -0.043438330574694567 4 -0.047173294458691652 5 
		-0.050815846690035721 6 -0.054224806772976725 7 -0.057258994211764613 8 -0.059777228510649344 
		9 -0.061638329173880867 10 -0.062701115705709132 11 -0.06328861420240077 
		12 -0.063819376036392234 13 -0.064295501881472858 14 -0.06471909241143195 
		15 -0.06509224830005883 16 -0.06541707022114282 17 -0.06569565884847324 18 
		-0.065930114855839397 19 -0.066122538917030613 20 -0.066275031705836207 21 
		-0.066389693896045487 22 -0.066468626161447802 23 -0.066513929175832445 24 
		-0.066527703612988751 25 -0.066512050146706012 26 -0.066469069450773577 27 
		-0.06640086219898074 28 -0.066309529065116821 29 -0.066197170722971141 30 
		-0.066065887846333049 31 -0.06591778110899181 32 -0.065754951184736787 33 
		-0.065579498747357287 34 -0.065393524470642617 35 -0.065199129028382097 36 
		-0.064998413094365035 37 -0.064793477342380779 38 -0.064586422446218636 39 
		-0.064379349079667914 40 -0.064174357916517932 41 -0.063973549630558013 42 
		-0.063779024895577477 43 -0.063592884385365644 44 -0.063417228773711837 45 
		-0.063254158734405361 46 -0.063105774941235523 47 -0.062974178067991674 48 
		-0.062861468788463104 49 -0.06276974777643915 50 -0.062701115705709132 51 
		-0.062093687892166072 52 -0.060500187726509419 53 -0.058094627980875758 54 
		-0.055051021427401682 55 -0.051543380838223775 56 -0.047745718985478636 57 
		-0.043832048641302843 58 -0.039976382577832988 59 -0.036352733567205656 60 
		-0.033135114381557439;
createNode animCurveTL -n "animCurveTL203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 
		0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0;
createNode animCurveTA -n "animCurveTA581";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU21";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 1 50 1 60 0;
createNode animCurveTU -n "animCurveTU22";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 1 50 1 60 0;
createNode animCurveTU -n "animCurveTU23";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU24";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA582";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA583";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA584";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.26454016861507795 0.01 -0.26454016861507795 
		0.015 -0.26454016861507795 60 -0.26454016861507795;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.13806192026723146 0.01 0.13806192026723146 
		0.015 0.13806192026723146 60 0.13806192026723146;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.064904406754016042 0.01 -0.064904406754016042 
		0.015 -0.064904406754016042 60 -0.064904406754016042;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA585";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 60 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA586";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -13.717778871715202 0.01 -13.717778871715202 
		0.015 -13.717778871715204 60 -13.717778871715202;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA587";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 60 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.21594587158542247 0.01 0.21594587158542247 
		0.015 0.21594587158542247 60 0.21594587158542247;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.1380615615975922 0.01 0.1380615615975922 
		0.015 0.1380615615975922 60 0.1380615615975922;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.00078430246903575811 0.01 0.00078430246903575811 
		0.015 0.00078430246903575811 60 0.00078430246903575811;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA588";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 60 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA589";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 60 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA590";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 60 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA591";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA592";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA593";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA594";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA595";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA596";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA597";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 60 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA598";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 60 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA599";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 60 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA600";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 60 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA601";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 60 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA602";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 60 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 0.01 1 0.015 1 50 1 60 1;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 0.01 1 0.015 1 50 1 60 1;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL220";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.076472881617957691 0.01 -0.076472881617957691 
		0.015 -0.076472881617957691 10 -0.14470856938841167 50 -0.14470856938841167 
		60 -0.076472881617957691;
	setAttr -s 6 ".kit[0:5]"  9 1 1 1 1 9;
	setAttr -s 6 ".kot[0:5]"  9 9 9 1 1 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.22807508707046509 0.93152487277984619 
		0.048792112618684769;
	setAttr -s 6 ".kiy[1:5]"  0 0 -0.97364354133605957 0.36367762088775635 
		0.99880897998809814;
	setAttr -s 6 ".kox[3:5]"  0.22807587683200836 0.93152487277984619 
		0.048792112618684769;
	setAttr -s 6 ".koy[3:5]"  -0.97364336252212524 0.36367765069007874 
		0.99880897998809814;
createNode animCurveTL -n "animCurveTL221";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.96147551361829853 0.01 0.96147551361829853 
		0.015 0.96147551361829853 10 0.96293972492601154 50 0.96282306814716079 60 
		0.96147551361829853;
	setAttr -s 6 ".kit[0:5]"  9 1 1 1 1 9;
	setAttr -s 6 ".kot[0:5]"  9 9 9 1 1 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.99821358919143677 0.99855321645736694 
		0.92710649967193604;
	setAttr -s 6 ".kiy[1:5]"  0 0 0.059745892882347107 -0.053772065788507462 
		-0.37479794025421143;
	setAttr -s 6 ".kox[3:5]"  0.99821364879608154 0.99855321645736694 
		0.92710649967193604;
	setAttr -s 6 ".koy[3:5]"  0.059745822101831436 -0.053772173821926117 
		-0.37479794025421143;
createNode animCurveTL -n "animCurveTL222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA603";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.62843630316474508 0.01 -0.62843630316474508 
		0.015 -0.62843630316474508 50 0 60 -0.62843630316474508;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.99945908784866333;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.0328870490193367;
	setAttr -s 5 ".kox[3:4]"  1 0.99945908784866333;
	setAttr -s 5 ".koy[3:4]"  0 -0.0328870490193367;
createNode animCurveTA -n "animCurveTA604";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -5.8284402688137158 0.01 -5.8284402688137158 
		0.015 -5.8284402688137167 50 0 60 -5.8284402688137158;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.95645284652709961;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.29188686609268188;
	setAttr -s 5 ".kox[3:4]"  1 0.95645284652709961;
	setAttr -s 5 ".koy[3:4]"  0 -0.29188686609268188;
createNode animCurveTA -n "animCurveTA605";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.2956360193097458 0.01 -1.2956360193097458 
		0.015 -1.295636019309746 10 -4.3212854030817898 50 -4.1503252733564429 60 
		-1.2956360193097458;
	setAttr -s 6 ".kit[0:5]"  9 1 1 1 1 9;
	setAttr -s 6 ".kot[0:5]"  9 9 9 1 1 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.99986976385116577 0.99979531764984131 
		0.9890129566192627;
	setAttr -s 6 ".kiy[1:5]"  0 0 -0.016139119863510132 0.020232776179909706 
		0.14782893657684326;
	setAttr -s 6 ".kox[3:5]"  0.99986976385116577 0.99979531764984131 
		0.9890129566192627;
	setAttr -s 6 ".koy[3:5]"  -0.016139118000864983 0.020232765004038811 
		0.14782893657684326;
createNode animCurveTA -n "animCurveTA606";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA607";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA608";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA609";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA610";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA611";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA612";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA613";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA614";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA615";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA616";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA617";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA618";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA619";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA620";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA621";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA622";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA623";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA624";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA625";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA626";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA627";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA628";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA629";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA630";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA631";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.43524234076486068 0.01 -0.43524234076486068 
		0.015 -0.43524234076486068 50 -0.22164053326398034 60 -0.43524234076486068;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.015603462234139442;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.99987828731536865;
	setAttr -s 5 ".kox[3:4]"  1 0.015603462234139442;
	setAttr -s 5 ".koy[3:4]"  0 -0.99987828731536865;
createNode animCurveTL -n "animCurveTL224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.82665738350180629 0.01 -0.82665738350180629 
		0.015 -0.82665738350180629 50 -0.9417076481617882 60 -0.82665738350180629;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.028960691764950752;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.99958056211471558;
	setAttr -s 5 ".kox[3:4]"  1 0.028960691764950752;
	setAttr -s 5 ".koy[3:4]"  0 0.99958056211471558;
createNode animCurveTL -n "animCurveTL225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.27773886459742925 0.01 0.27773886459742925 
		0.015 0.27773886459742925 50 0.038362195289875119 60 0.27773886459742925;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.0139237055554986;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.99990308284759521;
	setAttr -s 5 ".kox[3:4]"  1 0.0139237055554986;
	setAttr -s 5 ".koy[3:4]"  0 0.99990308284759521;
createNode animCurveTA -n "animCurveTA632";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.8121934161072303e-015 0.01 
		0 0.015 1.8121934161072299e-015 50 6.7230119492284173 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.94326388835906982;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.33204403519630432;
	setAttr -s 5 ".kox[3:4]"  1 0.94326388835906982;
	setAttr -s 5 ".koy[3:4]"  0 -0.33204403519630432;
createNode animCurveTA -n "animCurveTA633";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 28.652637602052774 0.01 28.652637602052774 
		0.015 28.652637602052774 50 19.839511008631867 60 28.652637602052774;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.90798848867416382;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.41899511218070984;
	setAttr -s 5 ".kox[3:4]"  1 0.90798848867416382;
	setAttr -s 5 ".koy[3:4]"  0 0.41899511218070984;
createNode animCurveTA -n "animCurveTA634";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 64.676908227303443 0.01 64.676908227303443 
		0.015 64.676908227303443 50 76.90743997913691 60 64.676908227303443;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.84212255477905273;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.53928613662719727;
	setAttr -s 5 ".kox[3:4]"  1 0.84212255477905273;
	setAttr -s 5 ".koy[3:4]"  0 -0.53928613662719727;
createNode animCurveTL -n "animCurveTL226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.5198069948790518 0.01 0.5198069948790518 
		0.015 0.5198069948790518 50 0.20623790699604494 60 0.5198069948790518;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.010629699565470219;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.99994349479675293;
	setAttr -s 5 ".kox[3:4]"  1 0.010629699565470219;
	setAttr -s 5 ".koy[3:4]"  0 0.99994349479675293;
createNode animCurveTL -n "animCurveTL227";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.72394202659893114 0.01 -0.72394202659893114 
		0.015 -0.72394202659893114 50 -0.94615818397708606 60 -0.72394202659893114;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.014998722821474075;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.99988752603530884;
	setAttr -s 5 ".kox[3:4]"  1 0.014998722821474075;
	setAttr -s 5 ".koy[3:4]"  0 0.99988752603530884;
createNode animCurveTL -n "animCurveTL228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.36439499068905612 0.01 0.36439499068905612 
		0.015 0.36439499068905612 50 0.023808763748733922 60 0.36439499068905612;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.009786577895283699;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.99995213747024536;
	setAttr -s 5 ".kox[3:4]"  1 0.009786577895283699;
	setAttr -s 5 ".koy[3:4]"  0 0.99995213747024536;
createNode animCurveTA -n "animCurveTA635";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 7.7976222737965299 0.01 7.7976222737965299 
		0.015 7.7976222737965317 50 8.1910546202722809 60 7.7976222737965299;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.99978786706924438;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.020595699548721313;
	setAttr -s 5 ".kox[3:4]"  1 0.99978786706924438;
	setAttr -s 5 ".koy[3:4]"  0 -0.020595699548721313;
createNode animCurveTA -n "animCurveTA636";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -30.409274105849079 0.01 -30.409274105849079 
		0.015 -30.409274105849079 50 -16.680769289981995 60 -30.409274105849079;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.81198734045028687;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.58367502689361572;
	setAttr -s 5 ".kox[3:4]"  1 0.81198734045028687;
	setAttr -s 5 ".koy[3:4]"  0 -0.58367502689361572;
createNode animCurveTA -n "animCurveTA637";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -64.859940280210878 0.01 -64.859940280210878 
		0.015 -64.859940280210893 50 -64.609749241846473 60 -64.859940280210878;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.99991422891616821;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.01309884712100029;
	setAttr -s 5 ".kox[3:4]"  1 0.99991422891616821;
	setAttr -s 5 ".koy[3:4]"  0 -0.01309884712100029;
createNode animCurveTL -n "animCurveTL229";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.97384023505055983 0.01 -0.97384023505055983 
		0.015 -0.97384023505055983 50 -0.8448236677023373 60 -0.97384023505055983;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.025827856734395027;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.99966639280319214;
	setAttr -s 5 ".kox[3:4]"  1 0.025827856734395027;
	setAttr -s 5 ".koy[3:4]"  0 -0.99966639280319214;
createNode animCurveTL -n "animCurveTL230";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.2525748803373358 0.01 1.2525965505547216 
		0.015 1.2525965505547216 50 1.5117481219250299 60 1.2525748803373358;
	setAttr -s 5 ".kit[0:4]"  9 1 1 1 9;
	setAttr -s 5 ".kot[1:4]"  9 9 1 9;
	setAttr -s 5 ".kix[1:4]"  0.22482451796531677 1 1 0.012860346585512161;
	setAttr -s 5 ".kiy[1:4]"  0.97439926862716675 0 0 -0.99991732835769653;
	setAttr -s 5 ".kox[0:4]"  0.22482451796531677 0.22482451796531677 
		0.064167052507400513 1 0.012860346585512161;
	setAttr -s 5 ".koy[0:4]"  0.97439926862716675 0.97439926862716675 
		0.99793916940689087 0 -0.99991732835769653;
createNode animCurveTL -n "animCurveTL231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.097994651149805143 0.01 -0.097994651149805143 
		0.015 -0.097994651149805143 50 -0.097994651149805143 60 -0.097994651149805143;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA638";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -12.222987645962959 0.01 -12.222987645962959 
		0.015 -12.222987645962959 50 5.4739599453216474 60 -12.222987645962959;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.73351049423217773;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.67967814207077026;
	setAttr -s 5 ".kox[3:4]"  1 0.73351049423217773;
	setAttr -s 5 ".koy[3:4]"  0 -0.67967814207077026;
createNode animCurveTA -n "animCurveTA639";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -19.681044208515029 0.01 -19.681044208515029 
		0.015 -19.681044208515029 50 8.5874521608419823 60 -19.681044208515029;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.55982238054275513;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.82861262559890747;
	setAttr -s 5 ".kox[3:4]"  1 0.55982238054275513;
	setAttr -s 5 ".koy[3:4]"  0 -0.82861262559890747;
createNode animCurveTA -n "animCurveTA640";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 65.119655550709041 0.01 65.119655550709041 
		0.015 65.119655550709027 50 74.754744621954103 60 65.119655550709041;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.89281719923019409;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.45041918754577637;
	setAttr -s 5 ".kox[3:4]"  1 0.89281719923019409;
	setAttr -s 5 ".koy[3:4]"  0 -0.45041918754577637;
createNode animCurveTL -n "animCurveTL232";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.75854111686822778 0.01 0.75854111686822778 
		0.015 0.75854111686822778 50 0.61083301393139333 60 0.75854111686822778;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.022561287507414818;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.99974548816680908;
	setAttr -s 5 ".kox[3:4]"  1 0.022561287507414818;
	setAttr -s 5 ".koy[3:4]"  0 0.99974548816680908;
createNode animCurveTL -n "animCurveTL233";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.1932952672205326 0.01 1.1932952672205326 
		0.015 1.1932952672205326 50 1.4644416293758407 60 1.1932952672205326;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.012292555533349514;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.9999244213104248;
	setAttr -s 5 ".kox[3:4]"  1 0.012292555533349514;
	setAttr -s 5 ".koy[3:4]"  0 -0.9999244213104248;
createNode animCurveTL -n "animCurveTL234";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.14314299916678522 0.01 0.14314299916678522 
		0.015 0.14314299916678522 50 0.14314299916678522 60 0.14314299916678522;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA641";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -5.7993291745893352 0.01 -5.7993291745893352 
		0.015 -5.7993291745893352 50 16.226511010665405 60 -5.7993291745893352;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.6551172137260437;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.75552725791931152;
	setAttr -s 5 ".kox[3:4]"  1 0.6551172137260437;
	setAttr -s 5 ".koy[3:4]"  0 -0.75552725791931152;
createNode animCurveTA -n "animCurveTA642";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.228264010471275 0.01 -1.228264010471275 
		0.015 -1.228264010471275 50 -8.513966085499284 60 -1.228264010471275;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.93432414531707764;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.35642454028129578;
	setAttr -s 5 ".kox[3:4]"  1 0.93432414531707764;
	setAttr -s 5 ".koy[3:4]"  0 0.35642454028129578;
createNode animCurveTA -n "animCurveTA643";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -60.456694896838378 0.01 -60.456694896838378 
		0.015 -60.456694896838378 50 -68.213989601412422 60 -60.456694896838378;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.92649209499359131;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.3763141930103302;
	setAttr -s 5 ".kox[3:4]"  1 0.92649209499359131;
	setAttr -s 5 ".koy[3:4]"  0 0.3763141930103302;
createNode animCurveTL -n "animCurveTL235";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL236";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL237";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1 0.01 -1 0.015 -1 50 -1 60 
		-1;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL238";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.10167917362943303 0.01 -0.10167917362943303 
		0.015 -0.10167917362943303 50 -0.10167917362943303 60 -0.10167917362943303;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL239";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.40762644910266188 0.01 -0.40762644910266188 
		0.015 -0.40762644910266188 50 -0.40762644910266188 60 -0.40762644910266188;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL240";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.93129112588482243 0.01 -0.93129112588482243 
		0.015 -0.93129112588482243 50 -0.93129112588482243 60 -0.93129112588482243;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA644";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 12.253734489678925 0.01 12.253734489678925 
		0.015 12.253734489678925 5 37.579434668794725 10 75.473387389371169 50 75.473387389371169 
		60 12.253734489678925;
	setAttr -s 7 ".kit[1:6]"  1 1 9 1 1 9;
	setAttr -s 7 ".kot[4:6]"  1 1 9;
	setAttr -s 7 ".kix[1:6]"  1 1 0.2887931764125824 0.99989038705825806 
		0.99855822324752808 0.28919076919555664;
	setAttr -s 7 ".kiy[1:6]"  0 0 0.95739150047302246 0.01480470784008503 
		-0.053679678589105606 -0.9572715163230896;
	setAttr -s 7 ".kox[4:6]"  0.99989038705825806 0.99855822324752808 
		0.28919076919555664;
	setAttr -s 7 ".koy[4:6]"  0.014804709702730179 -0.053679727017879486 
		-0.9572715163230896;
createNode animCurveTA -n "animCurveTA645";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -65.746751280844961 0.01 -65.746751280844961 
		0.015 -65.746751280844975 5 -6.3462418033839807 10 -9.0407165644845247 50 
		-9.0407165644845247 60 -65.746751280844961;
	setAttr -s 7 ".kit[1:6]"  1 1 9 1 1 9;
	setAttr -s 7 ".kot[4:6]"  1 1 9;
	setAttr -s 7 ".kix[1:6]"  1 1 0.3187529444694519 0.99943125247955322 
		0.99883949756622314 0.31918305158615112;
	setAttr -s 7 ".kiy[1:6]"  0 0 0.94783782958984375 0.033721357583999634 
		-0.048162501305341721 -0.9476931095123291;
	setAttr -s 7 ".kox[4:6]"  0.99943125247955322 0.99883949756622314 
		0.31918305158615112;
	setAttr -s 7 ".koy[4:6]"  0.033721357583999634 -0.048162512481212616 
		-0.9476931095123291;
createNode animCurveTA -n "animCurveTA646";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 3.871449260799477e-015 0.01 0 
		0.015 0 5 -4.5874637168352717 10 -13.957435360258904 50 -13.957435360258904 
		60 0;
	setAttr -s 7 ".kit[1:6]"  1 1 9 1 1 9;
	setAttr -s 7 ".kot[4:6]"  1 1 9;
	setAttr -s 7 ".kix[1:6]"  1 1 0.80695337057113647 0.99999463558197021 
		0.99999845027923584 0.80737560987472534;
	setAttr -s 7 ".kiy[1:6]"  0 0 -0.59061521291732788 -0.0032688896171748638 
		0.0017713884590193629 0.59003782272338867;
	setAttr -s 7 ".kox[4:6]"  0.99999463558197021 0.99999845027923584 
		0.80737560987472534;
	setAttr -s 7 ".koy[4:6]"  -0.0032688896171748638 0.001771390438079834 
		0.59003782272338867;
createNode animCurveTA -n "animCurveTA647";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.061808866237337522 0.01 -0.061808866237337522 
		0.015 -0.061808866237340665 7 38.73290704806795 12 85.620549070845613 52 
		85.620549070845613 60 -0.061808866237337522;
	setAttr -s 7 ".kit[1:6]"  1 1 9 1 1 9;
	setAttr -s 7 ".kot[4:6]"  1 1 9;
	setAttr -s 7 ".kix[1:6]"  1 1 0.25809460878372192 0.99979871511459351 
		0.99465084075927734 0.17555072903633118;
	setAttr -s 7 ".kiy[1:6]"  0 0 0.96611964702606201 0.020062925294041634 
		-0.10329411178827286 -0.98447036743164063;
	setAttr -s 7 ".kox[4:6]"  0.99979871511459351 0.99465084075927734 
		0.17555072903633118;
	setAttr -s 7 ".koy[4:6]"  0.020062930881977081 -0.10329411923885345 
		-0.98447036743164063;
createNode animCurveTA -n "animCurveTA648";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -59.058178941076754 0.01 -59.058178941076754 
		0.015 -59.058178941076754 7 -18.766116847402333 12 -36.380103994628307 52 
		-36.380103994628307 60 -59.058178941076754;
	setAttr -s 7 ".kit[1:6]"  1 1 9 1 1 9;
	setAttr -s 7 ".kot[4:6]"  1 1 9;
	setAttr -s 7 ".kix[1:6]"  1 1 0.71038252115249634 0.99991285800933838 
		0.99993860721588135 0.55874842405319214;
	setAttr -s 7 ".kiy[1:6]"  0 0 0.70381581783294678 -0.01319961529225111 
		-0.011080232448875904 -0.82933717966079712;
	setAttr -s 7 ".kox[4:6]"  0.99991285800933838 0.99993860721588135 
		0.55874842405319214;
	setAttr -s 7 ".koy[4:6]"  -0.013199616223573685 -0.011080228723585606 
		-0.82933717966079712;
createNode animCurveTA -n "animCurveTA649";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 16.579147429757843 0.01 16.579147429757843 
		0.015 16.57914742975785 7 -0.60734868645786699 12 -22.304289643301495 52 
		-22.304289643301495 60 16.579147429757843;
	setAttr -s 7 ".kit[1:6]"  1 1 9 1 1 9;
	setAttr -s 7 ".kot[4:6]"  1 1 9;
	setAttr -s 7 ".kix[1:6]"  1 1 0.50730091333389282 0.99995851516723633 
		0.99998784065246582 0.36571955680847168;
	setAttr -s 7 ".kiy[1:6]"  0 0 -0.86176902055740356 -0.0091062719002366066 
		0.0049348636530339718 0.93072509765625;
	setAttr -s 7 ".kox[4:6]"  0.99995851516723633 0.99998784065246582 
		0.36571955680847168;
	setAttr -s 7 ".koy[4:6]"  -0.0091062532737851143 0.0049348375760018826 
		0.93072509765625;
createNode animCurveTA -n "animCurveTA650";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.5572674112203622 0.01 8.5572674112203622 
		0.015 8.5572674112203639 5 52.951000114384385 10 76.776952612042763 50 76.776952612042763 
		60 8.5572674112203622;
	setAttr -s 7 ".kit[1:6]"  1 1 9 1 1 9;
	setAttr -s 7 ".kot[4:6]"  1 1 9;
	setAttr -s 7 ".kix[1:6]"  1 1 0.26921665668487549 0.99928635358810425 
		0.99635040760040283 0.26959174871444702;
	setAttr -s 7 ".kiy[1:6]"  0 0 0.96307963132858276 0.037772420793771744 
		-0.085357405245304108 -0.96297472715377808;
	setAttr -s 7 ".kox[4:6]"  0.99928635358810425 0.99635040760040283 
		0.26959174871444702;
	setAttr -s 7 ".koy[4:6]"  0.037772413343191147 -0.08535737544298172 
		-0.96297472715377808;
createNode animCurveTA -n "animCurveTA651";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 15.711328223519057 0.01 15.711328223519057 
		0.015 15.711328223519061 7 42.224114506718678 12 51.10579996363208 52 51.10579996363208 
		60 15.711328223519057;
	setAttr -s 7 ".kit[1:6]"  1 1 9 1 1 9;
	setAttr -s 7 ".kot[4:6]"  1 1 9;
	setAttr -s 7 ".kix[1:6]"  1 1 0.54303985834121704 0.99977833032608032 
		0.99954742193222046 0.3963245153427124;
	setAttr -s 7 ".kiy[1:6]"  0 0 0.8397068977355957 0.021055262535810471 
		-0.030083190649747849 -0.91811048984527588;
	setAttr -s 7 ".kox[4:6]"  0.99977833032608032 0.99954742193222046 
		0.3963245153427124;
	setAttr -s 7 ".koy[4:6]"  0.021055255085229874 -0.030083170160651207 
		-0.91811048984527588;
createNode animCurveTA -n "animCurveTA652";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 0.01 0 0.015 0 5 32.409591974637593 
		10 64.819183949275185 50 64.819183949275185 60 0;
	setAttr -s 7 ".kit[1:6]"  1 1 9 1 1 9;
	setAttr -s 7 ".kot[4:6]"  1 1 9;
	setAttr -s 7 ".kix[1:6]"  1 1 0.28224095702171326 0.99985581636428833 
		0.99956995248794556 0.28263112902641296;
	setAttr -s 7 ".kiy[1:6]"  0 0 0.9593435525894165 0.016981262713670731 
		-0.029323562979698181 -0.95922869443893433;
	setAttr -s 7 ".kox[4:6]"  0.99985581636428833 0.99956995248794556 
		0.28263112902641296;
	setAttr -s 7 ".koy[4:6]"  0.016981221735477448 -0.029323544353246689 
		-0.95922869443893433;
createNode animCurveTA -n "animCurveTA653";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 0.01 0 0.015 0 5 13.557467627703799 
		10 27.114935255407598 50 27.114935255407598 60 0;
	setAttr -s 7 ".kit[1:6]"  1 1 9 1 1 9;
	setAttr -s 7 ".kot[4:6]"  1 1 9;
	setAttr -s 7 ".kix[1:6]"  1 1 0.57527273893356323 0.99978995323181152 
		0.99887776374816895 0.57585054636001587;
	setAttr -s 7 ".kiy[1:6]"  0 0 0.81796163320541382 0.020494243130087852 
		-0.047362800687551498 -0.8175550103187561;
	setAttr -s 7 ".kox[4:6]"  0.99978995323181152 0.99887776374816895 
		0.57585054636001587;
	setAttr -s 7 ".koy[4:6]"  0.020494241267442703 -0.047362800687551498 
		-0.8175550103187561;
createNode animCurveTA -n "animCurveTA654";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 0.01 0 0.015 0 5 28.831458081234352 
		10 57.662916162468704 50 57.662916162468704 60 0;
	setAttr -s 7 ".kit[1:6]"  1 1 9 1 1 9;
	setAttr -s 7 ".kot[4:6]"  1 1 9;
	setAttr -s 7 ".kix[1:6]"  1 1 0.31398886442184448 0.99986326694488525 
		0.99969279766082764 0.31441399455070496;
	setAttr -s 7 ".kiy[1:6]"  0 0 0.94942665100097656 0.016535546630620956 
		-0.024786258116364479 -0.94928598403930664;
	setAttr -s 7 ".kox[4:6]"  0.99986326694488525 0.99969279766082764 
		0.31441399455070496;
	setAttr -s 7 ".koy[4:6]"  0.016535550355911255 -0.024786239489912987 
		-0.94928598403930664;
createNode animCurveTA -n "animCurveTA655";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 0.01 0 0.015 0 7 44.033418162461274 
		12 88.066836324922548 52 88.066836324922548 60 0;
	setAttr -s 7 ".kit[1:6]"  1 1 9 1 1 9;
	setAttr -s 7 ".kot[4:6]"  1 1 9;
	setAttr -s 7 ".kix[1:6]"  1 1 0.25155442953109741 0.99978739023208618 
		0.99720782041549683 0.17093832790851593;
	setAttr -s 7 ".kiy[1:6]"  0 0 0.96784317493438721 0.020620746538043022 
		-0.07467670738697052 -0.98528170585632324;
	setAttr -s 7 ".kox[4:6]"  0.99978739023208618 0.99720782041549683 
		0.17093832790851593;
	setAttr -s 7 ".koy[4:6]"  0.020620785653591156 -0.074676677584648132 
		-0.98528170585632324;
createNode animCurveTA -n "animCurveTA656";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 0.01 0 0.015 0 7 11.34513429647426 
		12 22.69026859294852 52 22.69026859294852 60 0;
	setAttr -s 7 ".kit[1:6]"  1 1 9 1 1 9;
	setAttr -s 7 ".kot[4:6]"  1 1 9;
	setAttr -s 7 ".kix[1:6]"  1 1 0.71019333600997925 0.99999088048934937 
		0.99932736158370972 0.55854189395904541;
	setAttr -s 7 ".kiy[1:6]"  0 0 0.70400673151016235 0.0042741047218441963 
		-0.03667110949754715 -0.82947635650634766;
	setAttr -s 7 ".kox[4:6]"  0.99999088048934937 0.99932736158370972 
		0.55854189395904541;
	setAttr -s 7 ".koy[4:6]"  0.0042741079814732075 -0.036671124398708344 
		-0.82947635650634766;
createNode animCurveTA -n "animCurveTA657";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 0.01 0 0.015 0 7 35.269677024193385 
		12 70.53935404838677 52 70.53935404838677 60 0;
	setAttr -s 7 ".kit[1:6]"  1 1 9 1 1 9;
	setAttr -s 7 ".kot[4:6]"  1 1 9;
	setAttr -s 7 ".kix[1:6]"  1 1 0.30865153670310974 0.99986356496810913 
		0.99636518955230713 0.21169179677963257;
	setAttr -s 7 ".kiy[1:6]"  0 0 0.95117515325546265 0.016518596559762955 
		-0.085184887051582336 -0.97733646631240845;
	setAttr -s 7 ".kox[4:6]"  0.99986356496810913 0.99636512994766235 
		0.21169179677963257;
	setAttr -s 7 ".koy[4:6]"  0.016518626362085342 -0.085184916853904724 
		-0.97733646631240845;
createNode animCurveTA -n "animCurveTA658";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 10.423754966968488 0.01 10.423754966968488 
		0.015 10.423754966968488 10 -14.4515173062985 50 -14.4515173062985 60 10.423754966968488;
	setAttr -s 6 ".kit[1:5]"  1 1 9 9 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.96768772602081299 0.96770614385604858 
		0.60898470878601074;
	setAttr -s 6 ".kiy[1:5]"  0 0 -0.25215175747871399 0.25208091735839844 
		0.79318195581436157;
createNode animCurveTA -n "animCurveTA659";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.722848255843903 0.01 27.722848255843903 
		0.015 27.7228482558439 10 25.967082121804467 50 25.967082121804467 60 27.722848255843903;
	setAttr -s 6 ".kit[1:5]"  1 1 9 9 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.99983090162277222 0.99983102083206177 
		0.99580085277557373;
	setAttr -s 6 ".kiy[1:5]"  0 0 -0.018388746306300163 0.01838323287665844 
		0.091545671224594116;
createNode animCurveTA -n "animCurveTA660";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 21.576484776388227 0.01 21.576484776388227 
		0.015 21.576484776388224 10 -30.480457499351246 50 -30.480457499351246 60 
		21.576484776388227;
	setAttr -s 6 ".kit[1:5]"  1 1 9 9 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.87795162200927734 0.87801200151443481 
		0.34443026781082153;
	setAttr -s 6 ".kiy[1:5]"  0 0 -0.47874933481216431 0.47863858938217163 
		0.93881189823150635;
createNode animCurveTA -n "animCurveTA661";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA662";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA663";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.080064458283051 0.01 27.080064458283051 
		0.015 27.080064458283051 50 27.080064458283051 60 27.080064458283051;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA664";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA665";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA666";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA667";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA668";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA669";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 13.994403295754109 0.01 13.994403295754109 
		0.015 13.994403295754109 50 13.994403295754109 60 13.994403295754109;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA670";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA671";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA672";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 13.994403295754109 0.01 13.994403295754109 
		0.015 13.994403295754109 50 13.994403295754109 60 13.994403295754109;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA673";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA674";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA675";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.911632519594587 0.01 27.911632519594587 
		0.015 27.911632519594587 50 27.911632519594587 60 27.911632519594587;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA676";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA677";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA678";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA679";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.65073001024951671 0.01 -0.65073001024951671 
		0.015 -0.65073001024951671 10 3.2937256948146443 50 3.2937256948146443 60 
		-0.65073001024951671;
	setAttr -s 6 ".kit[0:5]"  9 1 1 1 1 9;
	setAttr -s 6 ".kot[0:5]"  9 9 9 1 1 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.99995869398117065 0.99997967481613159 
		0.979331374168396;
	setAttr -s 6 ".kiy[1:5]"  0 0 0.0090897213667631149 -0.0063746795058250427 
		-0.20226249098777771;
	setAttr -s 6 ".kox[3:5]"  0.99995869398117065 0.99997967481613159 
		0.979331374168396;
	setAttr -s 6 ".koy[3:5]"  0.0090897222980856895 -0.0063746790401637554 
		-0.20226249098777771;
createNode animCurveTA -n "animCurveTA680";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -4.2368721935960929 0.01 -4.2368721935960929 
		0.015 -4.2368721935960938 10 10.776956577636053 50 10.776956577636053 60 
		-4.2368721935960929;
	setAttr -s 6 ".kit[0:5]"  9 1 1 1 1 9;
	setAttr -s 6 ".kot[0:5]"  9 9 9 1 1 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.99964022636413574 0.99919712543487549 
		0.78616255521774292;
	setAttr -s 6 ".kiy[1:5]"  0 0 0.026822648942470551 -0.040063995867967606 
		-0.61801981925964355;
	setAttr -s 6 ".kox[3:5]"  0.99964022636413574 0.99919712543487549 
		0.78616255521774292;
	setAttr -s 6 ".koy[3:5]"  0.026822634041309357 -0.040063995867967606 
		-0.61801981925964355;
createNode animCurveTA -n "animCurveTA681";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.6995264082587447 0.01 2.6995264082587447 
		0.015 2.6995264082587447 10 0.31076532431907161 50 0.31076532431907161 60 
		2.6995264082587447;
	setAttr -s 6 ".kit[0:5]"  9 1 1 1 1 9;
	setAttr -s 6 ".kot[0:5]"  9 9 9 1 1 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.99999988079071045 0.99999988079071045 
		0.99226868152618408;
	setAttr -s 6 ".kiy[1:5]"  0 0 0.00052251416491344571 -0.00048315557069145143 
		0.12410824000835419;
	setAttr -s 6 ".kox[3:5]"  0.99999988079071045 0.99999988079071045 
		0.99226868152618408;
	setAttr -s 6 ".koy[3:5]"  0.00052251433953642845 -0.00048315533786080778 
		0.12410824000835419;
createNode animCurveTA -n "animCurveTA682";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.01 0 0.015 0 8 -2.4729351326710889 
		48 -2.4729351326710889 60 0;
	setAttr -s 6 ".kit[1:5]"  1 1 9 9 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.99963611364364624 0.99969011545181274 
		0.99422889947891235;
	setAttr -s 6 ".kiy[1:5]"  0 0 -0.026974152773618698 0.024892780929803848 
		0.10727943480014801;
createNode animCurveTA -n "animCurveTA683";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.01 0 0.015 0 8 -18.544209596187311 
		48 -18.544209596187311 60 0;
	setAttr -s 6 ".kit[1:5]"  1 1 9 9 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.98013538122177124 0.98300981521606445 
		0.77738934755325317;
	setAttr -s 6 ".kiy[1:5]"  0 0 -0.19832959771156311 0.18355299532413483 
		0.62901973724365234;
createNode animCurveTA -n "animCurveTA684";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.01 0 0.015 0 8 0.0053891490684985013 
		48 0.0053891490684985013 60 0;
	setAttr -s 6 ".kit[1:5]"  1 1 9 9 9;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 5.880487515241839e-005 -5.4264459322439507e-005 
		-0.00023514596978202462;
createNode animCurveTA -n "animCurveTA685";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -4.0198472869727979 0.01 -4.0198472869727979 
		0.015 -4.0198472869727979 60 -4.0198472869727979;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA686";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -9.1335573833666519 0.01 -9.1335573833666519 
		0.015 -9.1335573833666519 60 -9.1335573833666519;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA687";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -2.2752136084709536 0.01 -2.2752136084709536 
		0.015 -2.2752136084709536 60 -2.2752136084709536;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA688";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.8903601258661931 0.01 -1.8903601258661931 
		0.015 -1.8903601258661931 10 -0.62041045444479548 50 -0.62041045444479548 
		60 -1.8903601258661931;
	setAttr -s 6 ".kit[0:5]"  9 1 1 1 1 9;
	setAttr -s 6 ".kot[0:5]"  9 9 9 1 1 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.99999982118606567 0.99999719858169556 
		0.99779653549194336;
	setAttr -s 6 ".kiy[1:5]"  0 0 -0.00059299665736034513 0.0023762497585266829 
		-0.066347889602184296;
	setAttr -s 6 ".kox[3:5]"  0.99999982118606567 0.99999719858169556 
		0.99779653549194336;
	setAttr -s 6 ".koy[3:5]"  -0.00059299601707607508 0.0023762499913573265 
		-0.066347889602184296;
createNode animCurveTA -n "animCurveTA689";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.5597289571479034 0.01 2.5597289571479034 
		0.015 2.5597289571479034 10 4.3490016686787003 50 4.3490016686787003 60 2.5597289571479034;
	setAttr -s 6 ".kit[0:5]"  9 1 1 1 1 9;
	setAttr -s 6 ".kot[0:5]"  9 9 9 1 1 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.99999135732650757 0.99999982118606567 
		0.99564015865325928;
	setAttr -s 6 ".kiy[1:5]"  0 0 0.004156758077442646 -0.0005519779515452683 
		-0.093277640640735626;
	setAttr -s 6 ".kox[3:5]"  0.99999135732650757 0.99999982118606567 
		0.99564015865325928;
	setAttr -s 6 ".koy[3:5]"  0.004156758077442646 -0.00055197632173076272 
		-0.093277640640735626;
createNode animCurveTA -n "animCurveTA690";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.016811087403604 0.01 2.016811087403604 
		0.015 2.0168110874036045 10 -0.02355748243287319 50 -0.02355748243287319 
		60 2.016811087403604;
	setAttr -s 6 ".kit[0:5]"  9 1 1 1 1 9;
	setAttr -s 6 ".kot[0:5]"  9 9 9 1 1 9;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 0.99434167146682739;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 2.0031437088618986e-005 0.10622894763946533;
	setAttr -s 6 ".kox[3:5]"  1 1 0.99434167146682739;
	setAttr -s 6 ".koy[3:5]"  0 2.0031446183566004e-005 0.10622894763946533;
createNode animCurveTA -n "animCurveTA691";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA692";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA693";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 33.429092416277157 0.01 33.429092416277157 
		0.015 33.429092416277157 50 33.429092416277157 60 33.429092416277157;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA694";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.2533422302317216 0.01 8.2533422302317216 
		0.015 8.2533422302317216 10 -18.901438859026499 50 -18.901438859026499 60 
		8.2533422302317216;
	setAttr -s 6 ".kit[1:5]"  1 1 9 9 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.96184462308883667 0.96186619997024536 
		0.57528537511825562;
	setAttr -s 6 ".kiy[1:5]"  0 0 -0.27359625697135925 0.27352032065391541 
		0.81795281171798706;
createNode animCurveTA -n "animCurveTA695";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 23.263402056531085 0.01 23.263402056531085 
		0.015 23.263402056531085 10 16.053500470762661 50 16.053500470762661 60 23.263402056531085;
	setAttr -s 6 ".kit[1:5]"  1 1 9 9 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.99716013669967651 0.997161865234375 
		0.93555504083633423;
	setAttr -s 6 ".kiy[1:5]"  0 0 -0.075310088694095612 0.075287625193595886 
		0.35318097472190857;
createNode animCurveTA -n "animCurveTA696";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 20.166277752815617 0.01 20.166277752815617 
		0.015 20.166277752815617 10 -51.07475780232911 50 -51.07475780232911 60 20.166277752815617;
	setAttr -s 6 ".kit[1:5]"  1 1 9 9 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.80143707990646362 0.80152308940887451 
		0.25894066691398621;
	setAttr -s 6 ".kiy[1:5]"  0 0 -0.59807908535003662 0.59796380996704102 
		0.9658932089805603;
createNode animCurveTA -n "animCurveTA697";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA698";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 50 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA699";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 17.254116939558369 0.01 17.254116939558369 
		0.015 17.254116939558369 50 17.254116939558369 60 17.254116939558369;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode clipLibrary -n "clipLibrary3";
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
	setAttr -s 102 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".top" 479;
	setAttr ".rght" 639;
	setAttr ".fs" 1;
	setAttr ".ef" 10;
select -ne :defaultRenderQuality;
	setAttr ".eaa" 1;
select -ne :defaultResolution;
	setAttr ".w" 640;
	setAttr ".h" 480;
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
connectAttr "lsa_hands_on_hipsSource.st" "clipLibrary3.st[0]";
connectAttr "lsa_hands_on_hipsSource.du" "clipLibrary3.du[0]";
connectAttr "animCurveTL200.a" "clipLibrary3.cel[0].cev[0].cevr";
connectAttr "animCurveTL201.a" "clipLibrary3.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary3.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL203.a" "clipLibrary3.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary3.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA581.a" "clipLibrary3.cel[0].cev[5].cevr";
connectAttr "lsa_Hoop_Root_IK_FK_RFoot.a" "clipLibrary3.cel[0].cev[6].cevr"
		;
connectAttr "lsa_Hoop_Root_IK_FK_LFoot.a" "clipLibrary3.cel[0].cev[7].cevr"
		;
connectAttr "lsa_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary3.cel[0].cev[8].cevr"
		;
connectAttr "lsa_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary3.cel[0].cev[9].cevr"
		;
connectAttr "animCurveTU21.a" "clipLibrary3.cel[0].cev[10].cevr";
connectAttr "animCurveTU22.a" "clipLibrary3.cel[0].cev[11].cevr";
connectAttr "animCurveTU23.a" "clipLibrary3.cel[0].cev[12].cevr";
connectAttr "animCurveTU24.a" "clipLibrary3.cel[0].cev[13].cevr";
connectAttr "animCurveTA582.a" "clipLibrary3.cel[0].cev[14].cevr";
connectAttr "animCurveTA583.a" "clipLibrary3.cel[0].cev[15].cevr";
connectAttr "animCurveTA584.a" "clipLibrary3.cel[0].cev[16].cevr";
connectAttr "animCurveTL205.a" "clipLibrary3.cel[0].cev[17].cevr";
connectAttr "animCurveTL206.a" "clipLibrary3.cel[0].cev[18].cevr";
connectAttr "animCurveTL207.a" "clipLibrary3.cel[0].cev[19].cevr";
connectAttr "animCurveTL208.a" "clipLibrary3.cel[0].cev[20].cevr";
connectAttr "animCurveTL209.a" "clipLibrary3.cel[0].cev[21].cevr";
connectAttr "animCurveTL210.a" "clipLibrary3.cel[0].cev[22].cevr";
connectAttr "animCurveTA585.a" "clipLibrary3.cel[0].cev[23].cevr";
connectAttr "animCurveTA586.a" "clipLibrary3.cel[0].cev[24].cevr";
connectAttr "animCurveTA587.a" "clipLibrary3.cel[0].cev[25].cevr";
connectAttr "animCurveTL211.a" "clipLibrary3.cel[0].cev[26].cevr";
connectAttr "animCurveTL212.a" "clipLibrary3.cel[0].cev[27].cevr";
connectAttr "animCurveTL213.a" "clipLibrary3.cel[0].cev[28].cevr";
connectAttr "animCurveTA588.a" "clipLibrary3.cel[0].cev[29].cevr";
connectAttr "animCurveTA589.a" "clipLibrary3.cel[0].cev[30].cevr";
connectAttr "animCurveTA590.a" "clipLibrary3.cel[0].cev[31].cevr";
connectAttr "animCurveTA591.a" "clipLibrary3.cel[0].cev[32].cevr";
connectAttr "animCurveTA592.a" "clipLibrary3.cel[0].cev[33].cevr";
connectAttr "animCurveTA593.a" "clipLibrary3.cel[0].cev[34].cevr";
connectAttr "animCurveTA594.a" "clipLibrary3.cel[0].cev[35].cevr";
connectAttr "animCurveTA595.a" "clipLibrary3.cel[0].cev[36].cevr";
connectAttr "animCurveTA596.a" "clipLibrary3.cel[0].cev[37].cevr";
connectAttr "animCurveTA597.a" "clipLibrary3.cel[0].cev[38].cevr";
connectAttr "animCurveTA598.a" "clipLibrary3.cel[0].cev[39].cevr";
connectAttr "animCurveTA599.a" "clipLibrary3.cel[0].cev[40].cevr";
connectAttr "animCurveTA600.a" "clipLibrary3.cel[0].cev[41].cevr";
connectAttr "animCurveTA601.a" "clipLibrary3.cel[0].cev[42].cevr";
connectAttr "animCurveTA602.a" "clipLibrary3.cel[0].cev[43].cevr";
connectAttr "animCurveTL214.a" "clipLibrary3.cel[0].cev[44].cevr";
connectAttr "animCurveTL215.a" "clipLibrary3.cel[0].cev[45].cevr";
connectAttr "animCurveTL216.a" "clipLibrary3.cel[0].cev[46].cevr";
connectAttr "animCurveTL217.a" "clipLibrary3.cel[0].cev[47].cevr";
connectAttr "animCurveTL218.a" "clipLibrary3.cel[0].cev[48].cevr";
connectAttr "animCurveTL219.a" "clipLibrary3.cel[0].cev[49].cevr";
connectAttr "animCurveTL220.a" "clipLibrary3.cel[0].cev[50].cevr";
connectAttr "animCurveTL221.a" "clipLibrary3.cel[0].cev[51].cevr";
connectAttr "animCurveTL222.a" "clipLibrary3.cel[0].cev[52].cevr";
connectAttr "animCurveTA603.a" "clipLibrary3.cel[0].cev[53].cevr";
connectAttr "animCurveTA604.a" "clipLibrary3.cel[0].cev[54].cevr";
connectAttr "animCurveTA605.a" "clipLibrary3.cel[0].cev[55].cevr";
connectAttr "animCurveTA606.a" "clipLibrary3.cel[0].cev[56].cevr";
connectAttr "animCurveTA607.a" "clipLibrary3.cel[0].cev[57].cevr";
connectAttr "animCurveTA608.a" "clipLibrary3.cel[0].cev[58].cevr";
connectAttr "animCurveTA609.a" "clipLibrary3.cel[0].cev[59].cevr";
connectAttr "animCurveTA610.a" "clipLibrary3.cel[0].cev[60].cevr";
connectAttr "animCurveTA611.a" "clipLibrary3.cel[0].cev[61].cevr";
connectAttr "animCurveTA612.a" "clipLibrary3.cel[0].cev[62].cevr";
connectAttr "animCurveTA613.a" "clipLibrary3.cel[0].cev[63].cevr";
connectAttr "animCurveTA614.a" "clipLibrary3.cel[0].cev[64].cevr";
connectAttr "animCurveTA615.a" "clipLibrary3.cel[0].cev[65].cevr";
connectAttr "animCurveTA616.a" "clipLibrary3.cel[0].cev[66].cevr";
connectAttr "animCurveTA617.a" "clipLibrary3.cel[0].cev[67].cevr";
connectAttr "animCurveTA618.a" "clipLibrary3.cel[0].cev[68].cevr";
connectAttr "animCurveTA619.a" "clipLibrary3.cel[0].cev[69].cevr";
connectAttr "animCurveTA620.a" "clipLibrary3.cel[0].cev[70].cevr";
connectAttr "animCurveTA621.a" "clipLibrary3.cel[0].cev[71].cevr";
connectAttr "animCurveTA622.a" "clipLibrary3.cel[0].cev[72].cevr";
connectAttr "animCurveTA623.a" "clipLibrary3.cel[0].cev[73].cevr";
connectAttr "animCurveTA624.a" "clipLibrary3.cel[0].cev[74].cevr";
connectAttr "animCurveTA625.a" "clipLibrary3.cel[0].cev[75].cevr";
connectAttr "animCurveTA626.a" "clipLibrary3.cel[0].cev[76].cevr";
connectAttr "animCurveTA627.a" "clipLibrary3.cel[0].cev[77].cevr";
connectAttr "animCurveTA628.a" "clipLibrary3.cel[0].cev[78].cevr";
connectAttr "animCurveTA629.a" "clipLibrary3.cel[0].cev[79].cevr";
connectAttr "animCurveTA630.a" "clipLibrary3.cel[0].cev[80].cevr";
connectAttr "animCurveTA631.a" "clipLibrary3.cel[0].cev[81].cevr";
connectAttr "animCurveTL223.a" "clipLibrary3.cel[0].cev[82].cevr";
connectAttr "animCurveTL224.a" "clipLibrary3.cel[0].cev[83].cevr";
connectAttr "animCurveTL225.a" "clipLibrary3.cel[0].cev[84].cevr";
connectAttr "animCurveTA632.a" "clipLibrary3.cel[0].cev[85].cevr";
connectAttr "animCurveTA633.a" "clipLibrary3.cel[0].cev[86].cevr";
connectAttr "animCurveTA634.a" "clipLibrary3.cel[0].cev[87].cevr";
connectAttr "animCurveTL226.a" "clipLibrary3.cel[0].cev[88].cevr";
connectAttr "animCurveTL227.a" "clipLibrary3.cel[0].cev[89].cevr";
connectAttr "animCurveTL228.a" "clipLibrary3.cel[0].cev[90].cevr";
connectAttr "animCurveTA635.a" "clipLibrary3.cel[0].cev[91].cevr";
connectAttr "animCurveTA636.a" "clipLibrary3.cel[0].cev[92].cevr";
connectAttr "animCurveTA637.a" "clipLibrary3.cel[0].cev[93].cevr";
connectAttr "animCurveTL229.a" "clipLibrary3.cel[0].cev[94].cevr";
connectAttr "animCurveTL230.a" "clipLibrary3.cel[0].cev[95].cevr";
connectAttr "animCurveTL231.a" "clipLibrary3.cel[0].cev[96].cevr";
connectAttr "animCurveTA638.a" "clipLibrary3.cel[0].cev[97].cevr";
connectAttr "animCurveTA639.a" "clipLibrary3.cel[0].cev[98].cevr";
connectAttr "animCurveTA640.a" "clipLibrary3.cel[0].cev[99].cevr";
connectAttr "animCurveTL232.a" "clipLibrary3.cel[0].cev[100].cevr";
connectAttr "animCurveTL233.a" "clipLibrary3.cel[0].cev[101].cevr";
connectAttr "animCurveTL234.a" "clipLibrary3.cel[0].cev[102].cevr";
connectAttr "animCurveTA641.a" "clipLibrary3.cel[0].cev[103].cevr";
connectAttr "animCurveTA642.a" "clipLibrary3.cel[0].cev[104].cevr";
connectAttr "animCurveTA643.a" "clipLibrary3.cel[0].cev[105].cevr";
connectAttr "animCurveTL235.a" "clipLibrary3.cel[0].cev[106].cevr";
connectAttr "animCurveTL236.a" "clipLibrary3.cel[0].cev[107].cevr";
connectAttr "animCurveTL237.a" "clipLibrary3.cel[0].cev[108].cevr";
connectAttr "animCurveTL238.a" "clipLibrary3.cel[0].cev[109].cevr";
connectAttr "animCurveTL239.a" "clipLibrary3.cel[0].cev[110].cevr";
connectAttr "animCurveTL240.a" "clipLibrary3.cel[0].cev[111].cevr";
connectAttr "animCurveTA644.a" "clipLibrary3.cel[0].cev[112].cevr";
connectAttr "animCurveTA645.a" "clipLibrary3.cel[0].cev[113].cevr";
connectAttr "animCurveTA646.a" "clipLibrary3.cel[0].cev[114].cevr";
connectAttr "animCurveTA647.a" "clipLibrary3.cel[0].cev[115].cevr";
connectAttr "animCurveTA648.a" "clipLibrary3.cel[0].cev[116].cevr";
connectAttr "animCurveTA649.a" "clipLibrary3.cel[0].cev[117].cevr";
connectAttr "animCurveTA650.a" "clipLibrary3.cel[0].cev[118].cevr";
connectAttr "animCurveTA651.a" "clipLibrary3.cel[0].cev[119].cevr";
connectAttr "animCurveTA652.a" "clipLibrary3.cel[0].cev[120].cevr";
connectAttr "animCurveTA653.a" "clipLibrary3.cel[0].cev[121].cevr";
connectAttr "animCurveTA654.a" "clipLibrary3.cel[0].cev[122].cevr";
connectAttr "animCurveTA655.a" "clipLibrary3.cel[0].cev[123].cevr";
connectAttr "animCurveTA656.a" "clipLibrary3.cel[0].cev[124].cevr";
connectAttr "animCurveTA657.a" "clipLibrary3.cel[0].cev[125].cevr";
connectAttr "animCurveTA658.a" "clipLibrary3.cel[0].cev[126].cevr";
connectAttr "animCurveTA659.a" "clipLibrary3.cel[0].cev[127].cevr";
connectAttr "animCurveTA660.a" "clipLibrary3.cel[0].cev[128].cevr";
connectAttr "animCurveTA661.a" "clipLibrary3.cel[0].cev[129].cevr";
connectAttr "animCurveTA662.a" "clipLibrary3.cel[0].cev[130].cevr";
connectAttr "animCurveTA663.a" "clipLibrary3.cel[0].cev[131].cevr";
connectAttr "animCurveTA664.a" "clipLibrary3.cel[0].cev[132].cevr";
connectAttr "animCurveTA665.a" "clipLibrary3.cel[0].cev[133].cevr";
connectAttr "animCurveTA666.a" "clipLibrary3.cel[0].cev[134].cevr";
connectAttr "animCurveTA667.a" "clipLibrary3.cel[0].cev[135].cevr";
connectAttr "animCurveTA668.a" "clipLibrary3.cel[0].cev[136].cevr";
connectAttr "animCurveTA669.a" "clipLibrary3.cel[0].cev[137].cevr";
connectAttr "animCurveTA670.a" "clipLibrary3.cel[0].cev[138].cevr";
connectAttr "animCurveTA671.a" "clipLibrary3.cel[0].cev[139].cevr";
connectAttr "animCurveTA672.a" "clipLibrary3.cel[0].cev[140].cevr";
connectAttr "animCurveTA673.a" "clipLibrary3.cel[0].cev[141].cevr";
connectAttr "animCurveTA674.a" "clipLibrary3.cel[0].cev[142].cevr";
connectAttr "animCurveTA675.a" "clipLibrary3.cel[0].cev[143].cevr";
connectAttr "animCurveTA676.a" "clipLibrary3.cel[0].cev[144].cevr";
connectAttr "animCurveTA677.a" "clipLibrary3.cel[0].cev[145].cevr";
connectAttr "animCurveTA678.a" "clipLibrary3.cel[0].cev[146].cevr";
connectAttr "animCurveTA679.a" "clipLibrary3.cel[0].cev[147].cevr";
connectAttr "animCurveTA680.a" "clipLibrary3.cel[0].cev[148].cevr";
connectAttr "animCurveTA681.a" "clipLibrary3.cel[0].cev[149].cevr";
connectAttr "animCurveTA682.a" "clipLibrary3.cel[0].cev[150].cevr";
connectAttr "animCurveTA683.a" "clipLibrary3.cel[0].cev[151].cevr";
connectAttr "animCurveTA684.a" "clipLibrary3.cel[0].cev[152].cevr";
connectAttr "animCurveTA685.a" "clipLibrary3.cel[0].cev[153].cevr";
connectAttr "animCurveTA686.a" "clipLibrary3.cel[0].cev[154].cevr";
connectAttr "animCurveTA687.a" "clipLibrary3.cel[0].cev[155].cevr";
connectAttr "animCurveTA688.a" "clipLibrary3.cel[0].cev[156].cevr";
connectAttr "animCurveTA689.a" "clipLibrary3.cel[0].cev[157].cevr";
connectAttr "animCurveTA690.a" "clipLibrary3.cel[0].cev[158].cevr";
connectAttr "animCurveTA691.a" "clipLibrary3.cel[0].cev[159].cevr";
connectAttr "animCurveTA692.a" "clipLibrary3.cel[0].cev[160].cevr";
connectAttr "animCurveTA693.a" "clipLibrary3.cel[0].cev[161].cevr";
connectAttr "animCurveTA694.a" "clipLibrary3.cel[0].cev[162].cevr";
connectAttr "animCurveTA695.a" "clipLibrary3.cel[0].cev[163].cevr";
connectAttr "animCurveTA696.a" "clipLibrary3.cel[0].cev[164].cevr";
connectAttr "animCurveTA697.a" "clipLibrary3.cel[0].cev[165].cevr";
connectAttr "animCurveTA698.a" "clipLibrary3.cel[0].cev[166].cevr";
connectAttr "animCurveTA699.a" "clipLibrary3.cel[0].cev[167].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[3].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[4].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[5].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[5].olnk";
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
// End of lsa_hands_on_hips.ma
