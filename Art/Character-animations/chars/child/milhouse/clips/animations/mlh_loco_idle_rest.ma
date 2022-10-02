//Maya ASCII 4.0 scene
//Name: mlh_loco_idle_rest.ma
//Last modified: Tue, Jun 25, 2002 01:44:13 PM
requires maya "4.0";
requires "p3dSimpleShader" "17.1";
requires "p3dDeformer" "17.1.0.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mlh_loco_idle_restSource";
	setAttr ".ihi" 0;
	setAttr ".du" 60;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL83";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7 1 18 0 50 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "animCurveTL84";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 30 1 40 0 50 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.037367575899315227 60 -0.037367575899315227;
createNode animCurveTL -n "animCurveTL86";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 
		0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "animCurveTA239";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 
		0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0;
createNode animCurveTU -n "animCurveTU17";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTU -n "animCurveTU18";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTU -n "animCurveTU19";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTU -n "animCurveTU20";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTU -n "animCurveTU21";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTU -n "animCurveTU22";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTU -n "animCurveTU23";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 1;
createNode animCurveTU -n "animCurveTU24";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 1;
createNode animCurveTA -n "animCurveTA240";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA241";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA242";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTL -n "animCurveTL88";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTL -n "animCurveTL89";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTL -n "animCurveTL90";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTL -n "animCurveTL91";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.21764441145149604;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL92";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.1521050350093231;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL93";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.064904406754016042;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA243";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA244";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -25.948901905116401;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA245";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL94";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.1393832443869546;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL95";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.1521046763396838;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL96";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.00078430246903575811;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA246";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA247";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA248";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA249";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA250";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA251";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA252";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA253";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA254";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA255";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA256";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA257";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA258";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA259";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA260";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL97";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL98";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL99";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL100";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL101";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL102";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL103";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.076472881617957691 15 -0.05865540287016241 
		30 -0.051776007332908977 45 -0.067808786863430628 60 -0.076472881617957691;
	setAttr -s 5 ".kit[0:4]"  3 1 1 1 3;
	setAttr -s 5 ".kot[0:4]"  3 1 1 1 3;
	setAttr -s 5 ".kix[1:4]"  0.25332087278366089 0.45730835199356079 
		0.30713561177253723 1;
	setAttr -s 5 ".kiy[1:4]"  0.96738231182098389 -0.88930821418762207 
		-0.95166575908660889 0;
	setAttr -s 5 ".kox[1:4]"  0.25332006812095642 0.45730942487716675 
		0.30713373422622681 1;
	setAttr -s 5 ".koy[1:4]"  0.96738255023956299 -0.88930767774581909 
		-0.95166635513305664 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL104";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.96474337111153452 15 0.9769408538941261 
		30 0.95092869221453113 45 0.97627054108651812 60 0.96474337111153452;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 15 0 30 0 45 0 60 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA261";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.62843630316474508 15 -0.65014527504287623 
		30 -0.66290175412811247 45 -0.6419282029118657 60 -0.62843630316474508;
	setAttr -s 5 ".kit[0:4]"  3 1 1 1 3;
	setAttr -s 5 ".kot[0:4]"  3 1 1 1 3;
	setAttr -s 5 ".kix[1:4]"  0.99999970197677612 1 0.9999995231628418 
		1;
	setAttr -s 5 ".kiy[1:4]"  -0.00080412602983415127 0.00010943452070932835 
		0.00095835921820253134 0;
	setAttr -s 5 ".kox[1:4]"  0.99999970197677612 1 0.9999995231628418 
		1;
	setAttr -s 5 ".koy[1:4]"  -0.00080412550596520305 0.00010943465895252302 
		0.00095835939282551408 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA262";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -5.8284402688137158 15 -4.7763741515562934 
		30 -4.6343993238864734 45 -5.4584009903393982 60 -5.8284402688137158;
	setAttr -s 5 ".kit[0:4]"  3 1 1 1 3;
	setAttr -s 5 ".kot[0:4]"  3 1 1 1 3;
	setAttr -s 5 ".kix[1:4]"  0.99937891960144043 0.99994486570358276 
		0.99964827299118042 1;
	setAttr -s 5 ".kiy[1:4]"  0.035238973796367645 -0.010501529090106487 
		-0.026520300656557083 0;
	setAttr -s 5 ".kox[1:4]"  0.99937891960144043 0.99994486570358276 
		0.99964827299118042 1;
	setAttr -s 5 ".koy[1:4]"  0.035239022225141525 -0.010501525364816189 
		-0.026520296931266785 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA263";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.2956360193097458 15 -0.90547523873851721 
		30 -0.72155522823878782 45 -1.1193696019407173 60 -1.2956360193097458;
	setAttr -s 5 ".kit[0:4]"  3 1 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 1 9 9 3;
	setAttr -s 5 ".kix[1:4]"  0.9998512864112854 0.99999302625656128 
		0.99994981288909912 1;
	setAttr -s 5 ".kiy[1:4]"  0.017244532704353333 -0.0037331348285079002 
		-0.010019097477197647 0;
	setAttr -s 5 ".kox[1:4]"  0.9998512864112854 0.99999302625656128 
		0.99994981288909912 1;
	setAttr -s 5 ".koy[1:4]"  0.017244530841708183 -0.0037331348285079002 
		-0.010019097477197647 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA264";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA265";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA266";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA267";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA268";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA269";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA270";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA271";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA272";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA273";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA274";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA275";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA276";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA277";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA278";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA279";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA280";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA281";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA282";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA283";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA284";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA285";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA286";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA287";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA288";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA289";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTL -n "animCurveTL106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 -0.43524234076486068;
createNode animCurveTL -n "animCurveTL107";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL108";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0.27773886459742925;
createNode animCurveTA -n "animCurveTA290";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 -1.8121934161072303e-015;
createNode animCurveTA -n "animCurveTA291";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 28.652637602052774;
createNode animCurveTA -n "animCurveTA292";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 64.676908227303443;
createNode animCurveTL -n "animCurveTL109";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0.5198069948790518;
createNode animCurveTL -n "animCurveTL110";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL111";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0.36439499068905612;
createNode animCurveTA -n "animCurveTA293";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 7.7976222737965299;
createNode animCurveTA -n "animCurveTA294";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 -30.409274105849079;
createNode animCurveTA -n "animCurveTA295";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 -64.859940280210878;
createNode animCurveTL -n "animCurveTL112";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.84654347043021561 20 -0.85752326760828956 
		40 -0.86273048523126639 60 -0.84654347043021561;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL113";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -0.015 1.2151450018376315 19.985 
		1.2329672731155745 39.985 1.2263617136532716 59.985 1.2151450018376315;
	setAttr -s 4 ".kit[1:3]"  9 1 3;
	setAttr -s 4 ".kot[1:3]"  9 1 3;
	setAttr -s 4 ".kix[2:3]"  0.41313698887825012 1;
	setAttr -s 4 ".kiy[2:3]"  -0.91066890954971313 0;
	setAttr -s 4 ".kox[2:3]"  0.41313886642456055 1;
	setAttr -s 4 ".koy[2:3]"  -0.9106680154800415 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL114";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.097994651149805143 20 -0.043501073173092618 
		40 -0.061760327799222373 60 -0.097994651149805143;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA296";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -13.607468531903837 20 -13.607468531903837 
		40 -13.607468531903837 60 -13.607468531903837;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA297";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 5.3248413331634161 20 5.3248413331634161 
		40 5.3248413331634161 60 5.3248413331634161;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA298";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 56.915544200805968 20 56.915544200805968 
		40 56.915544200805968 60 56.915544200805968;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL115";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.61083301393139333 10 0.62083512457775281 
		30 0.64431663687152585 45 0.63947603327809222 60 0.61083301393139333;
	setAttr -s 5 ".kit[0:4]"  3 1 1 1 3;
	setAttr -s 5 ".kot[0:4]"  3 1 1 1 3;
	setAttr -s 5 ".kix[1:4]"  0.21748949587345123 0.36327260732650757 
		0.23033854365348816 1;
	setAttr -s 5 ".kiy[1:4]"  0.97606265544891357 0.93168288469314575 
		-0.97311055660247803 0;
	setAttr -s 5 ".kox[1:4]"  0.21748994290828705 0.36327269673347473 
		0.23033815622329712 1;
	setAttr -s 5 ".koy[1:4]"  0.97606253623962402 0.93168282508850098 
		-0.97311067581176758 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL116";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.205921556906836 10 1.2061223115773132 
		30 1.2069669044236926 45 1.2068669394960649 60 1.205921556906836;
	setAttr -s 5 ".kit[0:4]"  3 9 9 1 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 1 3;
	setAttr -s 5 ".kix[3:4]"  0.98048228025436401 1;
	setAttr -s 5 ".kiy[3:4]"  -0.19660747051239014 0;
	setAttr -s 5 ".kox[3:4]"  0.98048245906829834 1;
	setAttr -s 5 ".koy[3:4]"  -0.19660666584968567 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL117";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.14314299916678522 10 0.11693695821876761 
		30 0.077821221088760689 45 0.093569624877585314 60 0.14314299916678522;
	setAttr -s 5 ".kit[0:4]"  3 1 9 1 3;
	setAttr -s 5 ".kot[0:4]"  3 1 9 1 3;
	setAttr -s 5 ".kix[1:4]"  0.10878211259841919 0.4466928243637085 
		0.070714928209781647 1;
	setAttr -s 5 ".kiy[1:4]"  -0.99406564235687256 -0.89468741416931152 
		0.99749654531478882 0;
	setAttr -s 5 ".kox[1:4]"  0.10878223180770874 0.4466928243637085 
		0.070715121924877167 1;
	setAttr -s 5 ".koy[1:4]"  -0.99406558275222778 -0.89468741416931152 
		0.99749654531478882 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA299";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.14751373646059296 10 -0.14751373646059296 
		30 -0.14751373646059296 45 -0.14751373646059296 60 -0.14751373646059296;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA300";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -8.513966085499284 10 -8.513966085499284 
		30 -8.513966085499284 45 -8.513966085499284 60 -8.513966085499284;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA301";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -58.291954750297876 10 -58.291954750297876 
		30 -58.291954750297876 45 -58.291954750297876 60 -58.291954750297876;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTL -n "animCurveTL119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTL -n "animCurveTL120";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 -1;
createNode animCurveTL -n "animCurveTL121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 -0.10167917362943303;
createNode animCurveTL -n "animCurveTL122";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 -0.40762644910266188;
createNode animCurveTL -n "animCurveTL123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 -0.93129112588482243;
createNode animCurveTA -n "animCurveTA302";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 12.253734489678925 15 2.5080130201733613 
		35 8.9711994505746979 60 12.253734489678925;
	setAttr -s 4 ".kit[1:3]"  9 1 3;
	setAttr -s 4 ".kot[1:3]"  9 1 3;
	setAttr -s 4 ".kix[2:3]"  0.98217999935150146 1;
	setAttr -s 4 ".kiy[2:3]"  0.18794278800487518 0;
	setAttr -s 4 ".kox[2:3]"  0.98217999935150146 1;
	setAttr -s 4 ".koy[2:3]"  0.18794280290603638 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA303";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -65.746751280844961 15 -66.23189068800383 
		35 -65.911934826160262 60 -65.746751280844961;
	setAttr -s 4 ".kit[0:3]"  3 1 1 3;
	setAttr -s 4 ".kot[0:3]"  3 1 1 3;
	setAttr -s 4 ".kix[1:3]"  0.99999308586120605 0.99996083974838257 
		1;
	setAttr -s 4 ".kiy[1:3]"  -0.0037223771214485168 0.0088514136150479317 
		0;
	setAttr -s 4 ".kox[1:3]"  0.99999308586120605 0.99996083974838257 
		1;
	setAttr -s 4 ".koy[1:3]"  -0.0037223771214485168 0.0088514126837253571 
		0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA304";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 3.871449260799477e-015 15 10.66049297399303 
		35 2.7123737418397913 60 3.871449260799477e-015;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA305";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.061808866237337522 15 -1.8696893211112606 
		40 -9.4806490727460329 60 -0.061808866237337522;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA306";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -59.058178941076754 15 -58.016233844005519 
		40 -57.82222388892724 60 -59.058178941076754;
	setAttr -s 4 ".kit[0:3]"  3 1 1 3;
	setAttr -s 4 ".kot[0:3]"  3 1 1 3;
	setAttr -s 4 ".kix[1:3]"  0.9993630051612854 0.99966120719909668 
		1;
	setAttr -s 4 ".kiy[1:3]"  0.035688102245330811 -0.026029288768768311 
		0;
	setAttr -s 4 ".kox[1:3]"  0.9993630051612854 0.99966120719909668 
		1;
	setAttr -s 4 ".koy[1:3]"  0.035688098520040512 -0.026029288768768311 
		0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA307";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 16.579147429757843 15 19.186045316761614 
		40 26.120893869188869 60 16.579147429757843;
	setAttr -s 4 ".kit[1:3]"  1 9 3;
	setAttr -s 4 ".kot[1:3]"  1 9 3;
	setAttr -s 4 ".kix[1:3]"  0.98076349496841431 0.99954026937484741 
		1;
	setAttr -s 4 ".kiy[1:3]"  0.19519966840744019 -0.030318690463900566 
		0;
	setAttr -s 4 ".kox[1:3]"  0.98076349496841431 0.99954026937484741 
		1;
	setAttr -s 4 ".koy[1:3]"  0.19519966840744019 -0.030318690463900566 
		0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA308";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.5572674112203622 15 11.258794193049559 
		35 20.489010807363705 60 8.5572674112203622;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA309";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 15.711328223519057 10 15.711328223519057 
		20 15.711328223519057 30 15.711328223519057 40 15.711328223519057 50 15.711328223519057 
		60 15.711328223519057;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA310";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA311";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA312";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA313";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 15.821664458316235 40 14.533232671953092 
		60 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA314";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 40 -5.5539031469783557 
		60 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA315";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 40 -1.4372191713728382 
		60 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA316";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 143.71460997127252 60 143.71460997127252;
createNode animCurveTA -n "animCurveTA317";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 27.804554996454375 60 27.804554996454375;
createNode animCurveTA -n "animCurveTA318";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 29.452980944098748 60 29.452980944098748;
createNode animCurveTA -n "animCurveTA319";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA320";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA321";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.080064458283051 10 27.080064458283051 
		20 27.080064458283051 30 27.080064458283051 40 27.080064458283051 50 27.080064458283051 
		60 27.080064458283051;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA322";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA323";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA324";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA325";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA326";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA327";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA328";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA329";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA330";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 13.994403295754109;
createNode animCurveTA -n "animCurveTA331";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 60 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA332";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 60 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA333";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.911632519594587 20 -0.67634283285596541 
		60 27.911632519594587;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA334";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA335";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA336";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA337";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.65073001024951671 10 -0.56759285525053427 
		20 -0.65719875860049726 30 -0.56759285525053427 40 -0.65719875860049726 50 
		-0.56759285525053427 60 -0.65073001024951671;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA338";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -4.2368721935960929 10 -4.2828905650316926 
		20 -4.1887753598478321 30 -4.2828905650316926 40 -4.1887753598478321 50 -4.2828905650316926 
		60 -4.2368721935960929;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA339";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.6995264082587447 10 1.967424106244942 
		20 2.98208980282637 30 1.967424106244942 40 2.98208980282637 50 1.967424106244942 
		60 2.6995264082587447;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA340";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA341";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA342";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA343";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.9251701322399404e-015 15 -1.8524933829669337 
		40 -2.915163190384261 60 8.9251701322399404e-015;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA344";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -5.2836650271627619 15 -1.5139391048102526 
		40 2.9905051952737489 60 -5.2836650271627619;
	setAttr -s 4 ".kit[1:3]"  1 9 3;
	setAttr -s 4 ".kot[1:3]"  1 9 3;
	setAttr -s 4 ".kix[1:3]"  0.97823286056518555 0.9990394115447998 
		1;
	setAttr -s 4 ".kiy[1:3]"  0.20751027762889862 -0.043820619583129883 
		0;
	setAttr -s 4 ".kox[1:3]"  0.97823280096054077 0.9990394115447998 
		1;
	setAttr -s 4 ".koy[1:3]"  0.20751036703586578 -0.043820619583129883 
		0;
createNode animCurveTA -n "animCurveTA345";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 6.6786334979782902 15 6.6988898329509974 
		40 6.7370509793033619 60 6.6786334979782902;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA346";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.8903601258661931 10 -1.874610877599076 
		20 -1.8970838135102988 30 -1.874610877599076 40 -1.8970838135102988 50 -1.874610877599076 
		60 -1.8903601258661931;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA347";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.5597289571479034 10 2.6319880365042492 
		20 2.5247080677125848 30 2.6319880365042492 40 2.5247080677125848 50 2.6319880365042492 
		60 2.5597289571479034;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA348";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.016811087403604 10 2.8113975041174442 
		20 1.5705932342953803 30 2.8113975041174442 40 1.5705932342953803 50 2.8113975041174442 
		60 2.016811087403604;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA349";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA350";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA351";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 33.429092416277157 10 33.429092416277157 
		20 33.429092416277157 30 33.429092416277157 40 33.429092416277157 50 33.429092416277157 
		60 33.429092416277157;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA352";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 106.91515461315002 60 106.91515461315002;
createNode animCurveTA -n "animCurveTA353";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 28.612774017129329 60 28.612774017129329;
createNode animCurveTA -n "animCurveTA354";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 17.632837226638049 60 17.632837226638049;
createNode animCurveTA -n "animCurveTA355";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA356";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA357";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 17.254116939558369 10 17.254116939558369 
		20 17.254116939558369 30 17.254116939558369 40 17.254116939558369 50 17.254116939558369 
		60 17.254116939558369;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
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
	setAttr ".o" 31;
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
connectAttr "mlh_loco_idle_restSource.st" "clipLibrary1.st[0]";
connectAttr "mlh_loco_idle_restSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL83.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL84.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL86.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA239.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU17.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU18.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU19.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU20.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU21.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU22.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU23.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU24.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA240.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA241.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA242.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL88.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL89.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL90.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL91.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL92.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL93.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA243.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA244.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA245.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL94.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL95.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL96.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA246.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA247.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA248.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA249.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA250.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA251.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA252.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA253.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA254.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA255.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA256.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA257.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA258.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA259.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA260.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL97.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL98.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL99.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL100.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL101.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL102.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL103.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL104.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL105.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA261.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA262.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA263.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA264.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA265.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA266.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA267.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA268.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA269.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA270.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA271.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA272.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA273.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA274.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA275.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA276.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA277.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA278.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA279.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA280.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA281.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA282.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA283.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA284.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA285.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA286.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA287.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA288.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA289.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL106.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL107.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL108.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA290.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA291.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA292.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL109.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL110.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL111.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA293.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA294.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA295.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL112.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL113.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL114.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA296.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA297.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA298.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL115.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL116.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL117.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA299.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA300.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA301.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL118.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL119.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL120.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL121.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL122.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL123.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA302.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA303.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA304.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA305.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA306.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA307.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA308.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA309.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA310.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA311.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA312.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA313.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA314.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA315.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA316.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA317.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA318.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA319.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA320.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA321.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA322.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA323.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA324.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA325.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA326.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA327.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA328.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA329.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA330.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA331.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA332.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA333.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA334.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA335.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA336.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA337.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA338.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA339.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA340.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA341.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA342.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA343.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA344.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA345.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA346.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA347.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA348.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA349.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA350.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA351.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA352.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA353.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA354.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA355.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA356.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA357.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of mlh_loco_idle_rest.ma
