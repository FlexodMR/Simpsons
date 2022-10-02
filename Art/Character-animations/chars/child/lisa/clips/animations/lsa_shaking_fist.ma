//Maya ASCII 4.0 scene
//Name: lsa_shaking_fist.ma
//Last modified: Tue, Feb 18, 2003 03:44:26 PM
requires maya "4.0";
requires "p3dmayaexp" "2.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "lsa_shaking_fistSource";
	setAttr ".ihi" 0;
	setAttr ".du" 60;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 1 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.016997544094920158;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.99985551834106445;
	setAttr -s 5 ".kox[3:4]"  1 0.016997544094920158;
	setAttr -s 5 ".koy[3:4]"  0 -0.99985551834106445;
createNode animCurveTL -n "animCurveTL201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 -0.033135114381557439 1 -0.0341255412077201 
		2 -0.035233144993682186 3 -0.03639988360625044 4 -0.03758180630697696 5 -0.038734962357413825 
		6 -0.039815401019113142 7 -0.040779171553626981 8 -0.041582323222507434 9 
		-0.042180905287306593 10 -0.042530967009576558 11 -0.042738409264085016 12 
		-0.042938346685416379 13 -0.043130649174847741 14 -0.043315186633656202 15 
		-0.043491828963118866 16 -0.043660446064512852 17 -0.043820907839115235 18 
		-0.043973084188203122 19 -0.044116845013053643 20 -0.044252060214943878 21 
		-0.044378599695150928 22 -0.044496333354951893 23 -0.04460513109562389 24 
		-0.044704862818444012 25 -0.044795398424689367 26 -0.044876607815637043 27 
		-0.044948360892564168 28 -0.045010527556747823 29 -0.045062977709465109 30 
		-0.045105581251993147 31 -0.045138208085609026 32 -0.045160728111589866 33 
		-0.045173011231212742 34 -0.045174927345754769 35 -0.045166346356493046 36 
		-0.045147138164704684 37 -0.045117172671666775 38 -0.045076319778656435 39 
		-0.045024449386950764 40 -0.044961431397826844 41 -0.044887135712561803 42 
		-0.044801432232432735 43 -0.044704190858716734 44 -0.044595281492690909 45 
		-0.044474574035632368 46 -0.044341938388818204 47 -0.044197244453525526 48 
		-0.044040362131031435 49 -0.043871161322613039 50 -0.043689511929547419 51 
		-0.043336765566046084 52 -0.042689061486159877 53 -0.041798451050924987 54 
		-0.04071698562137762 55 -0.039496716558553933 56 -0.038189695223490132 57 
		-0.036847972977222393 58 -0.035523601180786908 59 -0.034268631195219862 60 
		-0.033135114381557439;
createNode animCurveTL -n "animCurveTL203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0 1 0.0019538707685711944 2 0.0041512241319576352 
		3 0.0064723674646971034 4 0.0088252873768717415 5 0.011117970478563702 6 
		0.013258403379855127 7 0.015154572690828158 8 0.016714465021564946 9 0.017846066982147631 
		10 0.018457365182658364 11 0.018766519050943693 12 0.019053213396230631 13 
		0.019317722900671998 14 0.019560322246420635 15 0.019781286115629366 16 0.019980889190451018 
		17 0.020159406153038413 18 0.020317111685544398 19 0.020454280470121794 20 
		0.020571187188923427 21 0.020668106524102125 22 0.020745313157810728 23 0.02080308177220205 
		24 0.020841687049428931 25 0.020861403671644192 26 0.02086250632100067 27 
		0.020845269679651196 28 0.020809968429748592 29 0.020756877253445688 30 0.020686270832895315 
		31 0.020598423850250302 32 0.020493610987663478 33 0.020372106927287671 34 
		0.020234186351275715 35 0.020080123941780433 36 0.019910194380954659 37 0.019724672350951218 
		38 0.019523832533922942 39 0.019307949612022663 40 0.019077298267403203 41 
		0.018832153182217395 42 0.018572789038618066 43 0.018299480518758047 44 0.018012502304790172 
		45 0.01771212907886726 46 0.017398635523142147 47 0.017072296319767661 48 
		0.016733386150896628 49 0.016382179698681883 50 0.016018951645276253 51 0.015415582250706506 
		52 0.014393078570969471 53 0.013025405482173052 54 0.011386527860425164 55 
		0.0095504105818337189 56 0.0075910185225066262 57 0.0055823165585517963 58 
		0.0035982695660771451 59 0.0017128424211905761 60 0;
createNode animCurveTA -n "animCurveTA581";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTU -n "animCurveTU27";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 1 50 1 60 0;
	setAttr -s 4 ".kit[0:3]"  9 2 2 1;
	setAttr -s 4 ".kot[0:3]"  9 2 2 5;
	setAttr -s 4 ".kix[3]"  0.31622779369354248;
	setAttr -s 4 ".kiy[3]"  -0.94868326187133789;
createNode animCurveTU -n "animCurveTU28";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 1 50 1 60 0;
	setAttr -s 4 ".kit[0:3]"  9 2 2 1;
	setAttr -s 4 ".kot[0:3]"  9 2 2 5;
	setAttr -s 4 ".kix[3]"  0.31622779369354248;
	setAttr -s 4 ".kiy[3]"  -0.94868326187133789;
createNode animCurveTU -n "animCurveTU29";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "animCurveTU30";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA582";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 60 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA583";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 60 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA584";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 60 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 60 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 60 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 60 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
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
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA592";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA593";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA594";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA595";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA596";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
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
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 0.01 1 0.015 1 9 1 60 1;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 0.01 1 0.015 1 9 1 60 1;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.076472881617957691 0.01 -0.076472881617957691 
		0.015 -0.076472881617957691 10 -0.098157669467134556 50 -0.1008314875651741 
		60 -0.076472881617957691;
	setAttr -s 6 ".kit[1:5]"  1 1 9 9 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.56457430124282837 0.6093904972076416 
		0.13558059930801392;
	setAttr -s 6 ".kiy[1:5]"  0 0 -0.82538223266601563 0.79287022352218628 
		0.99076634645462036;
createNode animCurveTL -n "animCurveTL221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.96147551361829786 0.01 0.96147551361829786 
		0.015 0.96147551361829786 10 0.97943543780764664 50 0.97943543780764664 60 
		0.96147551361829786;
	setAttr -s 6 ".kit[1:5]"  1 1 9 9 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.68011331558227539 0.68022298812866211 
		0.18248206377029419;
	setAttr -s 6 ".kiy[1:5]"  0 0 0.73310697078704834 -0.73300522565841675 
		-0.98320919275283813;
createNode animCurveTL -n "animCurveTL222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.01 0 0.015 0 10 0.042597948699958685 
		50 0.036970308256875271 60 0;
	setAttr -s 6 ".kit[1:5]"  1 1 9 9 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.41087785363197327 0.36435961723327637 
		0.089798189699649811;
	setAttr -s 6 ".kiy[1:5]"  0 0 0.91169041395187378 -0.93125832080841064 
		-0.99595999717712402;
createNode animCurveTA -n "animCurveTA603";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.62843630316474508 0.01 -0.62843630316474508 
		0.015 -0.62843630316474508 10 2.8798183916023534 50 4.2946925490903149 60 
		-0.62843630316474508;
	setAttr -s 6 ".kit[1:5]"  1 1 9 9 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.99867290258407593 0.99932581186294556 
		0.96834522485733032;
	setAttr -s 6 ".kiy[1:5]"  0 0 0.051501914858818054 -0.036713588982820511 
		-0.24961464107036591;
createNode animCurveTA -n "animCurveTA604";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -5.8284402688137158 0.01 -5.8284402688137158 
		0.015 -5.8284402688137167 10 0.032356037197084186 50 0.032356037197084173 
		60 -5.8284402688137158;
	setAttr -s 6 ".kit[1:5]"  1 1 9 9 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.99812078475952148 0.99812191724777222 
		0.95599955320358276;
	setAttr -s 6 ".kiy[1:5]"  0 0 0.06127716600894928 -0.061258852481842041 
		-0.2933681309223175;
createNode animCurveTA -n "animCurveTA605";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.2956360193097458 0.01 -1.2956360193097458 
		0.015 -1.295636019309746 10 -0.64317426163671099 50 -0.64317426163671065 
		60 -1.2956360193097458;
	setAttr -s 6 ".kit[1:5]"  1 1 9 9 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.99997663497924805 0.99997663497924805 
		0.99941694736480713;
	setAttr -s 6 ".kiy[1:5]"  0 0 0.0068344543687999249 -0.0068324045278131962 
		-0.034142900258302689;
createNode animCurveTA -n "animCurveTA606";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA607";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA608";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA609";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA610";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA611";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA612";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA613";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA614";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA615";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA616";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA617";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA618";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA619";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA620";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA621";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA622";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA623";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA624";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA625";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA626";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA627";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA628";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA629";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA630";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA631";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
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
		0.015 -0.43524234076486068 9 -0.22164053326398034 60 -0.43524234076486068;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.079336479306221008;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.99684786796569824;
	setAttr -s 5 ".kox[3:4]"  1 0.079336479306221008;
	setAttr -s 5 ".koy[3:4]"  0 -0.99684786796569824;
createNode animCurveTL -n "animCurveTL224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.82665738350180629 0.01 -0.82665738350180629 
		0.015 -0.82665738350180629 9 -0.9417076481617882 60 -0.82665738350180629;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.14617437124252319;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.98925882577896118;
	setAttr -s 5 ".kox[3:4]"  1 0.14617437124252319;
	setAttr -s 5 ".koy[3:4]"  0 0.98925882577896118;
createNode animCurveTL -n "animCurveTL225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.27773886459742925 0.01 0.27773886459742925 
		0.015 0.27773886459742925 9 0.038362195289875119 60 0.27773886459742925;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.070839367806911469;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.99748772382736206;
	setAttr -s 5 ".kox[3:4]"  1 0.070839367806911469;
	setAttr -s 5 ".koy[3:4]"  0 0.99748772382736206;
createNode animCurveTA -n "animCurveTA632";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.8121934161072303e-015 0.01 
		0 0.015 1.8121934161072299e-015 9 6.7230119492284173 60 -1.8121934161072303e-015;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.99762642383575439;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.068858928978443146;
	setAttr -s 5 ".kox[3:4]"  1 0.99762642383575439;
	setAttr -s 5 ".koy[3:4]"  0 -0.068858928978443146;
createNode animCurveTA -n "animCurveTA633";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 28.652637602052774 0.01 28.652637602052774 
		0.015 28.652637602052774 9 19.839511008631867 60 28.652637602052774;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.99593156576156616;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.090113095939159393;
	setAttr -s 5 ".kox[3:4]"  1 0.99593156576156616;
	setAttr -s 5 ".koy[3:4]"  0 0.090113095939159393;
createNode animCurveTA -n "animCurveTA634";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 64.676908227303443 0.01 64.676908227303443 
		0.015 64.676908227303443 9 76.90743997913691 60 64.676908227303443;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.99220854043960571;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.12458815425634384;
	setAttr -s 5 ".kox[3:4]"  1 0.99220854043960571;
	setAttr -s 5 ".koy[3:4]"  0 -0.12458815425634384;
createNode animCurveTL -n "animCurveTL226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.5198069948790518 0.01 0.5198069948790518 
		0.015 0.5198069948790518 9 0.20623790699604494 60 0.5198069948790518;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.054135031998157501;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.99853360652923584;
	setAttr -s 5 ".kox[3:4]"  1 0.054135031998157501;
	setAttr -s 5 ".koy[3:4]"  0 0.99853360652923584;
createNode animCurveTL -n "animCurveTL227";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.72394202659893114 0.01 -0.72394202659893114 
		0.015 -0.72394202659893114 9 -0.94615818397708606 60 -0.72394202659893114;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.076279200613498688;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.99708652496337891;
	setAttr -s 5 ".kox[3:4]"  1 0.076279200613498688;
	setAttr -s 5 ".koy[3:4]"  0 0.99708652496337891;
createNode animCurveTL -n "animCurveTL228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.36439499068905612 0.01 0.36439499068905612 
		0.015 0.36439499068905612 9 0.023808763748733922 60 0.36439499068905612;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.049851875752210617;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.99875664710998535;
	setAttr -s 5 ".kox[3:4]"  1 0.049851875752210617;
	setAttr -s 5 ".koy[3:4]"  0 0.99875664710998535;
createNode animCurveTA -n "animCurveTA635";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 7.7976222737965299 0.01 7.7976222737965299 
		0.015 7.7976222737965317 9 8.1910546202722809 60 7.7976222737965299;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.99999183416366577;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.0040391962975263596;
	setAttr -s 5 ".kox[3:4]"  1 0.99999183416366577;
	setAttr -s 5 ".koy[3:4]"  0 -0.0040391962975263596;
createNode animCurveTA -n "animCurveTA636";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -30.409274105849079 0.01 -30.409274105849079 
		0.015 -30.409274105849079 9 -16.680769289981995 60 -30.409274105849079;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.99021273851394653;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.13956618309020996;
	setAttr -s 5 ".kox[3:4]"  1 0.99021273851394653;
	setAttr -s 5 ".koy[3:4]"  0 -0.13956618309020996;
createNode animCurveTA -n "animCurveTA637";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -64.859940280210878 0.01 -64.859940280210878 
		0.015 -64.859940280210893 9 -64.609749241846473 60 -64.859940280210878;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.99999672174453735;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.0025686132721602917;
	setAttr -s 5 ".kox[3:4]"  1 0.99999672174453735;
	setAttr -s 5 ".koy[3:4]"  0 -0.0025686132721602917;
createNode animCurveTL -n "animCurveTL229";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.97384023505055983 0.01 -0.97384023505055983 
		0.015 -0.97384023505055983 9 -0.8448236677023373 60 -0.97384023505055983;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.13063682615756989;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.99143028259277344;
	setAttr -s 5 ".kox[3:4]"  1 0.13063682615756989;
	setAttr -s 5 ".koy[3:4]"  0 -0.99143028259277344;
createNode animCurveTL -n "animCurveTL230";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.2525748803373358 0.01 1.2525965505547216 
		0.015 1.2525965505547216 9 1.5117481219250299 60 1.2525748803373358;
	setAttr -s 5 ".kit[0:4]"  9 1 1 1 9;
	setAttr -s 5 ".kot[1:4]"  9 9 1 9;
	setAttr -s 5 ".kix[1:4]"  0.22482451796531677 1 1 0.065452538430690765;
	setAttr -s 5 ".kiy[1:4]"  0.97439926862716675 0 0 -0.99785566329956055;
	setAttr -s 5 ".kox[0:4]"  0.22482451796531677 0.22482451796531677 
		0.01156260073184967 1 0.065452538430690765;
	setAttr -s 5 ".koy[0:4]"  0.97439926862716675 0.97439926862716675 
		0.99993312358856201 0 -0.99785566329956055;
createNode animCurveTL -n "animCurveTL231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.097994651149805143 0.01 -0.097994651149805143 
		0.015 -0.097994651149805143 9 -0.097994651149805143 60 -0.097994651149805143;
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
		0.015 -12.222987645962959 9 5.4739599453216474 60 -12.222987645962959;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.98389238119125366;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.17876167595386505;
	setAttr -s 5 ".kox[3:4]"  1 0.98389238119125366;
	setAttr -s 5 ".koy[3:4]"  0 -0.17876167595386505;
createNode animCurveTA -n "animCurveTA639";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -19.681044208515029 0.01 -19.681044208515029 
		0.015 -19.681044208515029 9 8.5874521608419823 60 -19.681044208515029;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.96037197113037109;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.27872160077095032;
	setAttr -s 5 ".kox[3:4]"  1 0.96037197113037109;
	setAttr -s 5 ".koy[3:4]"  0 -0.27872160077095032;
createNode animCurveTA -n "animCurveTA640";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 65.119655550709041 0.01 65.119655550709041 
		0.015 65.119655550709027 9 74.754744621954103 60 65.119655550709041;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.99514305591583252;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.098439566791057587;
	setAttr -s 5 ".kox[3:4]"  1 0.99514305591583252;
	setAttr -s 5 ".koy[3:4]"  0 -0.098439566791057587;
createNode animCurveTL -n "animCurveTL232";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.75854111686822778 0.01 0.75854111686822778 
		0.015 0.75854111686822778 9 0.61083301393139333 60 0.75854111686822778;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.11433709412813187;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.99344199895858765;
	setAttr -s 5 ".kox[3:4]"  1 0.11433709412813187;
	setAttr -s 5 ".koy[3:4]"  0 0.99344199895858765;
createNode animCurveTL -n "animCurveTL233";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.1932952672205326 0.01 1.1932952672205326 
		0.015 1.1932952672205326 9 1.4644416293758407 60 1.1932952672205326;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.062573902308940887;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.99804031848907471;
	setAttr -s 5 ".kox[3:4]"  1 0.062573902308940887;
	setAttr -s 5 ".koy[3:4]"  0 -0.99804031848907471;
createNode animCurveTL -n "animCurveTL234";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.14314299916678522 0.01 0.14314299916678522 
		0.015 0.14314299916678522 9 0.14314299916678522 60 0.14314299916678522;
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
		0.015 -5.7993291745893352 9 16.226511010665405 60 -5.7993291745893352;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.97537285089492798;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.22056245803833008;
	setAttr -s 5 ".kox[3:4]"  1 0.97537285089492798;
	setAttr -s 5 ".koy[3:4]"  0 -0.22056245803833008;
createNode animCurveTA -n "animCurveTA642";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.228264010471275 0.01 -1.228264010471275 
		0.015 -1.228264010471275 9 -8.513966085499284 60 -1.228264010471275;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.99721419811248779;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.074591323733329773;
	setAttr -s 5 ".kox[3:4]"  1 0.99721419811248779;
	setAttr -s 5 ".koy[3:4]"  0 0.074591323733329773;
createNode animCurveTA -n "animCurveTA643";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -60.456694896838378 0.01 -60.456694896838378 
		0.015 -60.456694896838378 9 -68.213989601412422 60 -60.456694896838378;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.99684363603591919;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.079389989376068115;
	setAttr -s 5 ".kox[3:4]"  1 0.99684363603591919;
	setAttr -s 5 ".koy[3:4]"  0 0.079389989376068115;
createNode animCurveTL -n "animCurveTL235";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL236";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL237";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1 0.01 -1 0.015 -1 9 -1 60 -1;
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
		0.015 -0.10167917362943303 9 -0.10167917362943303 60 -0.10167917362943303;
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
		0.015 -0.40762644910266188 9 -0.40762644910266188 60 -0.40762644910266188;
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
		0.015 -0.93129112588482243 9 -0.93129112588482243 60 -0.93129112588482243;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA644";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 12.253734489678925 0.01 12.253734489678925 
		0.015 12.253734489678925 10 -67.023443446392847 50 -67.023443446392847 60 
		12.253734489678925;
	setAttr -s 6 ".kit[0:5]"  9 1 1 1 1 9;
	setAttr -s 6 ".kot[0:5]"  9 9 9 1 1 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.99438655376434326 0.97092688083648682 
		0.23420853912830353;
	setAttr -s 6 ".kiy[1:5]"  0 0 -0.10580802708864212 0.23937629163265228 
		0.9721863865852356;
	setAttr -s 6 ".kox[3:5]"  0.99438655376434326 0.97092688083648682 
		0.23420853912830353;
	setAttr -s 6 ".koy[3:5]"  -0.10580804944038391 0.23937623202800751 
		0.9721863865852356;
createNode animCurveTA -n "animCurveTA645";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -65.746751280844961 0.01 -65.746751280844961 
		0.015 -65.746751280844975 10 -11.674435651078507 50 -11.674435651078507 60 
		-65.746751280844961;
	setAttr -s 6 ".kit[0:5]"  9 1 1 1 1 9;
	setAttr -s 6 ".kot[0:5]"  9 9 9 1 1 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.98572587966918945 0.99898278713226318 
		0.33304101228713989;
	setAttr -s 6 ".kiy[1:5]"  0 0 0.16835823655128479 -0.045093424618244171 
		-0.94291234016418457;
	setAttr -s 6 ".kox[3:5]"  0.98572587966918945 0.99898278713226318 
		0.33304101228713989;
	setAttr -s 6 ".koy[3:5]"  0.1683582067489624 -0.045093409717082977 
		-0.94291234016418457;
createNode animCurveTA -n "animCurveTA646";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 3.871449260799477e-015 0.01 0 
		0.015 0 10 73.209880528654736 50 73.209880528654736 60 3.871449260799477e-015;
	setAttr -s 6 ".kit[0:5]"  9 1 1 1 1 9;
	setAttr -s 6 ".kot[0:5]"  9 9 9 1 1 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.99779433012008667 0.99568289518356323 
		0.2524263858795166;
	setAttr -s 6 ".kiy[1:5]"  0 0 0.066381484270095825 -0.092819929122924805 
		-0.96761608123779297;
	setAttr -s 6 ".kox[3:5]"  0.99779433012008667 0.99568289518356323 
		0.2524263858795166;
	setAttr -s 6 ".koy[3:5]"  0.066381439566612244 -0.092819914221763611 
		-0.96761608123779297;
createNode animCurveTA -n "animCurveTA647";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.061808866237337522 0.01 -0.061808866237337522 
		0.015 -0.061808866237340665 10 46.211399949024518 50 46.211399949024518 60 
		-0.061808866237337522;
	setAttr -s 6 ".kit[1:5]"  1 1 9 9 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.8998604416847229 0.89991182088851929 
		0.38151690363883972;
	setAttr -s 6 ".kiy[1:5]"  0 0 0.43617793917655945 -0.4360719621181488 
		-0.92436188459396362;
createNode animCurveTA -n "animCurveTA648";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -59.058178941076754 0.01 -59.058178941076754 
		0.015 -59.058178941076754 10 -31.253419128209984 50 -31.253419128209984 60 
		-59.058178941076754;
	setAttr -s 6 ".kit[1:5]"  1 1 9 9 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.96010535955429077 0.96012789011001587 
		0.56618297100067139;
	setAttr -s 6 ".kiy[1:5]"  0 0 0.27963852882385254 -0.27956119179725647 
		-0.82427960634231567;
createNode animCurveTA -n "animCurveTA649";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 16.579147429757843 0.01 16.579147429757843 
		0.015 16.57914742975785 10 -53.488362918341828 50 -53.488362918341828 60 
		16.579147429757843;
	setAttr -s 6 ".kit[1:5]"  1 1 9 9 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.80616194009780884 0.80624657869338989 
		0.26297992467880249;
	setAttr -s 6 ".kiy[1:5]"  0 0 -0.59169501066207886 0.5915796160697937 
		0.96480131149291992;
createNode animCurveTA -n "animCurveTA650";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 8.5572674112203622 0.01 8.5572674112203622 
		0.015 8.5572674112203639 10 58.18498084109217 12 63.906122114553988 14 55.46201856474346 
		16 69.955479566884932 18 53.899675724094713 20 68.868987069778143 23 54.735696694276058 
		26 63.340599085373547 29 53.194059493785232 32 61.373811912588913 36 54.378362965883163 
		40 58.18498084109217 50 58.18498084109217 60 8.5572674112203622;
	setAttr -s 17 ".kit[0:16]"  9 1 1 9 3 3 3 
		3 3 3 3 3 3 3 9 1 9;
	setAttr -s 17 ".kot[0:16]"  9 9 9 9 3 3 3 
		3 3 3 3 3 3 3 9 1 9;
	setAttr -s 17 ".kix[1:16]"  1 1 0.38216203451156616 1 1 1 1 
		1 1 1 1 1 1 0.99001729488372803 0.99849766492843628 0.35915946960449219;
	setAttr -s 17 ".kiy[1:16]"  0 0 0.92409533262252808 0 0 0 0 
		0 0 0 0 0 0 0.14094597101211548 -0.054794751107692719 -0.93327623605728149;
	setAttr -s 17 ".kox[15:16]"  0.99849766492843628 0.35915946960449219;
	setAttr -s 17 ".koy[15:16]"  -0.054794769734144211 -0.93327623605728149;
createNode animCurveTA -n "animCurveTA651";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 15.711328223519057 0.01 15.711328223519057 
		0.015 15.711328223519061 10 43.274961386243781 50 43.274961386243781 60 15.711328223519057;
	setAttr -s 6 ".kit[1:5]"  1 1 9 9 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.96075427532196045 0.96077644824981689 
		0.5695340633392334;
	setAttr -s 6 ".kiy[1:5]"  0 0 0.27740082144737244 -0.27732399106025696 
		-0.8219677209854126;
createNode animCurveTA -n "animCurveTA652";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.01 0 0.015 0 10 -56.06501192956862 
		50 -56.06501192956862 60 0;
	setAttr -s 6 ".kit[1:5]"  1 1 9 9 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.86229109764099121 0.86235743761062622 
		0.32245489954948425;
	setAttr -s 6 ".kiy[1:5]"  0 0 -0.50641286373138428 0.50629991292953491 
		0.94658482074737549;
createNode animCurveTA -n "animCurveTA653";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.01 0 0.015 0 10 -10.471413205801918 
		50 -10.471413205801918 60 0;
	setAttr -s 6 ".kit[1:5]"  1 1 9 9 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.99403786659240723 0.99404144287109375 
		0.87685132026672363;
	setAttr -s 6 ".kiy[1:5]"  0 0 -0.10903530567884445 0.10900299251079559 
		0.48076170682907104;
createNode animCurveTA -n "animCurveTA654";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.01 0 0.015 0 10 15.115370958430159 
		50 15.115370958430159 60 0;
	setAttr -s 6 ".kit[1:5]"  1 1 9 9 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.98769581317901611 0.98770308494567871 
		0.78413271903991699;
	setAttr -s 6 ".kiy[1:5]"  0 0 0.15638712048530579 -0.15634134411811829 
		-0.62059319019317627;
createNode animCurveTA -n "animCurveTA655";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA656";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA657";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA658";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 10.423754966968488 0.01 10.423754966968488 
		0.015 10.423754966968488 9 10.423754966968488 60 10.423754966968488;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA659";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.722848255843903 0.01 27.722848255843903 
		0.015 27.7228482558439 9 27.722848255843903 60 27.722848255843903;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA660";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 21.576484776388227 0.01 21.576484776388227 
		0.015 21.576484776388224 9 21.576484776388227 60 21.576484776388227;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA661";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA662";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA663";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.080064458283051 0.01 27.080064458283051 
		0.015 27.080064458283051 10 67.192248785462226 50 67.192248785462226 60 27.080064458283051;
	setAttr -s 6 ".kit[1:5]"  1 1 9 9 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.92192286252975464 0.92196440696716309 
		0.42988869547843933;
	setAttr -s 6 ".kiy[1:5]"  0 0 0.38737344741821289 -0.38727465271949768 
		-0.902881920337677;
createNode animCurveTA -n "animCurveTA664";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA665";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA666";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA667";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA668";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
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
		0.015 13.994403295754109 9 13.994403295754109 60 13.994403295754109;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA670";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA671";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
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
		0.015 13.994403295754109 9 13.994403295754109 60 13.994403295754109;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA673";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA674";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA675";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.911632519594587 0.01 27.911632519594587 
		0.015 27.911632519594587 10 55.279018713593231 50 55.279018713593231 60 27.911632519594587;
	setAttr -s 6 ".kit[1:5]"  1 1 9 9 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.96127921342849731 0.96130108833312988 
		0.57228374481201172;
	setAttr -s 6 ".kiy[1:5]"  0 0 0.27557626366615295 -0.27549988031387329 
		-0.82005566358566284;
createNode animCurveTA -n "animCurveTA676";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA677";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA678";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA679";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.65073001024951671 0.01 -0.65073001024951671 
		0.015 -0.65073001024951671 10 6.3236536703965802 50 7.0214176866588671 60 
		-0.65073001024951671;
	setAttr -s 6 ".kit[1:5]"  1 1 9 9 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.99678617715835571 0.99734354019165039 
		0.92792767286300659;
	setAttr -s 6 ".kiy[1:5]"  0 0 0.080108366906642914 -0.072841554880142212 
		-0.37276032567024231;
createNode animCurveTA -n "animCurveTA680";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -4.2368721935960929 0.01 -4.2368721935960929 
		0.015 -4.2368721935960938 10 6.9342283547515615 50 6.8621161012451184 60 
		-4.2368721935960929;
	setAttr -s 6 ".kit[1:5]"  1 1 9 9 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.99330919981002808 0.99322688579559326 
		0.86460250616073608;
	setAttr -s 6 ".kiy[1:5]"  0 0 0.11548531800508499 -0.11619114875793457 
		-0.50245648622512817;
createNode animCurveTA -n "animCurveTA681";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 2.6995264082587447 0.01 2.6995264082587447 
		0.015 2.6995264082587447 10 0.1044908688053426 12 1.3217209690329967 14 0.1044908688053426 
		16 1.3217209690329967 18 0.1044908688053426 20 1.3217209690329967 23 0.1044908688053426 
		26 1.3217209690329967 29 0.1044908688053426 32 1.3217209690329967 36 0.1044908688053426 
		40 1.3217209690329967 50 0.72027540605350671 60 2.6995264082587447;
	setAttr -s 17 ".kit[1:16]"  1 1 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 17 ".kix[1:16]"  1 1 0.99819326400756836 1 1 1 1 
		1 1 1 1 1 1 0.99973493814468384 0.99935007095336914 0.99467295408248901;
	setAttr -s 17 ".kiy[1:16]"  0 0 -0.060084592550992966 0 0 0 
		0 0 0 0 0 0 0 0.023024182766675949 0.036047417670488358 0.10308127105236053;
createNode animCurveTA -n "animCurveTA682";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.01 0 0.015 0 10 -9.570709688671819 
		50 -9.570709688671819 60 0;
	setAttr -s 6 ".kit[1:5]"  1 1 9 9 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.99501210451126099 0.99501508474349976 
		0.89402586221694946;
	setAttr -s 6 ".kiy[1:5]"  0 0 -0.099754251539707184 0.099724628031253815 
		0.44801530241966248;
createNode animCurveTA -n "animCurveTA683";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.01 0 0.015 0 10 -6.3361945571336244 
		50 -6.3361945571336244 60 0;
	setAttr -s 6 ".kit[1:5]"  1 1 9 9 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.99780458211898804 0.9978058934211731 
		0.94912964105606079;
	setAttr -s 6 ".kiy[1:5]"  0 0 -0.066226676106452942 0.066206887364387512 
		0.31488549709320068;
createNode animCurveTA -n "animCurveTA684";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 60 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA685";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -4.0198472869727979 0.01 -4.0198472869727979 
		0.015 -4.0198472869727979 9 -4.9367554394300077 60 -4.0198472869727979;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.99995571374893188;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.0094131510704755783;
	setAttr -s 5 ".kox[3:4]"  1 0.99995571374893188;
	setAttr -s 5 ".koy[3:4]"  0 0.0094131510704755783;
createNode animCurveTA -n "animCurveTA686";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -9.1335573833666519 0.01 -9.1335573833666519 
		0.015 -9.1335573833666519 9 -8.6986303327609935 60 -9.1335573833666519;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.99999004602432251;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.0044651958160102367;
	setAttr -s 5 ".kox[3:4]"  1 0.99999004602432251;
	setAttr -s 5 ".koy[3:4]"  0 -0.0044651958160102367;
createNode animCurveTA -n "animCurveTA687";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.2752136084709536 0.01 -2.2752136084709536 
		0.015 -2.2752136084709536 9 17.455917002855632 60 -2.2752136084709536;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.98009282350540161;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.19853982329368591;
	setAttr -s 5 ".kox[3:4]"  1 0.98009282350540161;
	setAttr -s 5 ".koy[3:4]"  0 -0.19853982329368591;
createNode animCurveTA -n "animCurveTA688";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.8903601258661931 0.01 -1.8903601258661931 
		0.015 -1.8903601258661931 10 -0.64722709656317345 50 1.0527259485707507 60 
		-1.8903601258661931;
	setAttr -s 6 ".kit[1:5]"  1 1 9 9 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.99952512979507446 0.99991530179977417 
		0.98833400011062622;
	setAttr -s 6 ".kiy[1:5]"  0 0 0.030814534053206444 -0.013016955927014351 
		-0.15230189263820648;
createNode animCurveTA -n "animCurveTA689";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.5597289571479034 0.01 2.5597289571479034 
		0.015 2.5597289571479034 10 4.5362068636446526 50 4.5111806380491659 60 2.5597289571479034;
	setAttr -s 6 ".kit[1:5]"  1 1 9 9 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.99979114532470703 0.9997859001159668 
		0.99482035636901855;
	setAttr -s 6 ".kiy[1:5]"  0 0 0.020437417551875114 -0.020693197846412659 
		-0.10164852440357208;
createNode animCurveTA -n "animCurveTA690";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.016811087403604 0.01 2.016811087403604 
		0.015 2.0168110874036045 10 -0.02563471306874987 50 1.4186355726303357 60 
		2.016811087403604;
	setAttr -s 6 ".kit[1:5]"  1 1 9 9 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.9999803900718689 0.9997713565826416 
		0.99950987100601196;
	setAttr -s 6 ".kiy[1:5]"  0 0 -0.0062658363021910191 0.021383551880717278 
		0.031305044889450073;
createNode animCurveTA -n "animCurveTA691";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA692";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA693";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 33.429092416277157 0.01 33.429092416277157 
		0.015 33.429092416277157 10 84.356784919957406 50 84.356784919957406 60 33.429092416277157;
	setAttr -s 6 ".kit[1:5]"  1 1 9 9 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.88230156898498535 0.88236016035079956 
		0.35113486647605896;
	setAttr -s 6 ".kiy[1:5]"  0 0 0.47068458795547485 -0.47057464718818665 
		-0.93632489442825317;
createNode animCurveTA -n "animCurveTA694";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.2533422302317216 0.01 8.2533422302317216 
		0.015 8.2533422302317216 10 6.8355305161438329 50 6.8355305161438329 60 8.2533422302317216;
	setAttr -s 6 ".kit[1:5]"  1 1 9 9 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.99988973140716553 0.9998897910118103 
		0.99725580215454102;
	setAttr -s 6 ".kiy[1:5]"  0 0 -0.014850107952952385 0.014845653437077999 
		0.074032731354236603;
createNode animCurveTA -n "animCurveTA695";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 23.263402056531085 0.01 23.263402056531085 
		0.015 23.263402056531085 10 35.29420794367595 50 35.29420794367595 60 23.263402056531085;
	setAttr -s 6 ".kit[1:5]"  1 1 9 9 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.99215233325958252 0.992156982421875 
		0.84611767530441284;
	setAttr -s 6 ".kiy[1:5]"  0 0 0.1250351220369339 -0.12499819695949554 
		-0.53299617767333984;
createNode animCurveTA -n "animCurveTA696";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 20.166277752815617 0.01 20.166277752815617 
		0.015 20.166277752815617 10 18.034481280099516 50 18.034481280099516 60 20.166277752815617;
	setAttr -s 6 ".kit[1:5]"  1 1 9 9 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.99975073337554932 0.99975091218948364 
		0.99382805824279785;
	setAttr -s 6 ".kiy[1:5]"  0 0 -0.02232525497674942 0.022318560630083084 
		0.11093167215585709;
createNode animCurveTA -n "animCurveTA697";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA698";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 9 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA699";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 17.254116939558369 0.01 17.254116939558369 
		0.015 17.254116939558369 10 53.374751096036299 50 53.374751096036299 60 17.254116939558369;
	setAttr -s 6 ".kit[1:5]"  1 1 9 9 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.93528950214385986 0.93532460927963257 
		0.46742701530456543;
	setAttr -s 6 ".kiy[1:5]"  0 0 0.3538835346698761 -0.35379067063331604 
		-0.88403165340423584;
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
	setAttr ".o" 60;
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
connectAttr "lsa_shaking_fistSource.st" "clipLibrary3.st[0]";
connectAttr "lsa_shaking_fistSource.du" "clipLibrary3.du[0]";
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
connectAttr "animCurveTU27.a" "clipLibrary3.cel[0].cev[10].cevr";
connectAttr "animCurveTU28.a" "clipLibrary3.cel[0].cev[11].cevr";
connectAttr "animCurveTU29.a" "clipLibrary3.cel[0].cev[12].cevr";
connectAttr "animCurveTU30.a" "clipLibrary3.cel[0].cev[13].cevr";
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
// End of lsa_shaking_fist.ma
