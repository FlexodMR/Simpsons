//Maya ASCII 4.0 scene
//Name: hom_idle_scratch.ma
//Last modified: Wed, Jul 03, 2002 02:09:33 PM
requires maya "4.0";
requires "p3dmayaexp" "17.7";
requires "p3dSimpleShader" "17.1";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "hom_idle_scratchSource";
	setAttr ".ihi" 0;
	setAttr ".du" 60;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL126";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 -0.05999433615776268 1 -0.05983812899293451 
		2 -0.059386884443582144 3 -0.058666667927403826 4 -0.057703544862097778 5 
		-0.056523580665362234 6 -0.055152840754895439 7 -0.053617390548395621 8 -0.051943295463561009 
		9 -0.050156620918089846 10 -0.048283432329680347 11 -0.046349795116030754 
		12 -0.044381774694839317 13 -0.042405436483804237 14 -0.040446845900623779 
		15 -0.03853206836299615 16 -0.036749466968052626 17 -0.035165965405687984 
		18 -0.033775473658951637 19 -0.032571901710892991 20 -0.031549159544561459 
		21 -0.030701157143006457 22 -0.030021804489277385 23 -0.029505011566423666 
		24 -0.029144688357494702 25 -0.028934744845539907 26 -0.028869091013608683 
		27 -0.028941636844750453 28 -0.029146292322014624 29 -0.029476967428450598 
		30 -0.029927572147107791 31 -0.030496341205157231 32 -0.031178722099201139 
		33 -0.031964439466945535 34 -0.032843217946096404 35 -0.033804782174359775 
		36 -0.034838856789441645 37 -0.035935166429048031 38 -0.037083435730884934 
		39 -0.038273389332658357 40 -0.039494751872074317 41 -0.040737247986838823 
		42 -0.041990602314657871 43 -0.043244539493237484 44 -0.044488784160283672 
		45 -0.045713060953502423 46 -0.046949820126147158 47 -0.048226025855303639 
		48 -0.049523190227083645 49 -0.050822825327598922 50 -0.052106443242961271 
		51 -0.053355556059282445 52 -0.054551675862674232 53 -0.055676314739248396 
		54 -0.056710984775116692 55 -0.057637198056390899 56 -0.058436466669182806 
		57 -0.059090302699604157 58 -0.059580218233766739 59 -0.059887725357782327 
		60 -0.05999433615776268;
createNode animCurveTL -n "animCurveTL127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 
		0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0;
createNode animCurveTL -n "animCurveTL128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 
		0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0;
createNode animCurveTA -n "animCurveTA340";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 
		0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0;
createNode animCurveTU -n "animCurveTU25";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU26";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU27";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU28";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU29";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU30";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU31";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU32";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "animCurveTA341";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA342";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA343";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.26454016861507795;
createNode animCurveTL -n "animCurveTL133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.13806192026723146;
createNode animCurveTL -n "animCurveTL134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.064904406754016042;
createNode animCurveTA -n "animCurveTA344";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA345";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -25.948901905116401;
createNode animCurveTA -n "animCurveTA346";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.21594587158542247;
createNode animCurveTL -n "animCurveTL136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.1380615615975922;
createNode animCurveTL -n "animCurveTL137";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.00078430246903575811;
createNode animCurveTA -n "animCurveTA347";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA348";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA349";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA350";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA351";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA352";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA353";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA354";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA355";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "animCurveTL141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "animCurveTL144";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.076472881617957691 15 -0.049115608091234594 
		30 -0.038147729077297791 45 -0.058268992084502813 60 -0.076472881617957691;
	setAttr -s 5 ".kit[0:4]"  3 1 1 1 3;
	setAttr -s 5 ".kot[0:4]"  3 1 1 1 3;
	setAttr -s 5 ".kix[1:4]"  0.13747239112854004 0.45730835199356079 
		0.21109887957572937 1;
	setAttr -s 5 ".kiy[1:4]"  0.99050557613372803 -0.88930821418762207 
		-0.97746473550796509 0;
	setAttr -s 5 ".kox[1:4]"  0.1374724805355072 0.45730942487716675 
		0.21109795570373535 1;
	setAttr -s 5 ".koy[1:4]"  0.99050557613372803 -0.88930767774581909 
		-0.97746491432189941 0;
createNode animCurveTL -n "animCurveTL145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.93105416142265018 15 0.93752785944497652 
		30 0.93476767333318067 45 0.93706874108933758 60 0.93105416142265018;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "animCurveTL146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 15 0 30 0 45 0 60 0;
createNode animCurveTA -n "animCurveTA356";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.62843630316474508 15 -0.65014527504287623 
		30 -0.66290175412811214 45 -0.6419282029118657 60 -0.62843630316474508;
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
createNode animCurveTA -n "animCurveTA357";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -5.8284402688137158 15 -1.8191924631776812 
		30 -1.9633965085767597 45 -4.7588526339487593 60 -5.8284402688137158;
	setAttr -s 5 ".kit[0:4]"  3 1 1 1 3;
	setAttr -s 5 ".kot[0:4]"  3 1 1 1 3;
	setAttr -s 5 ".kix[1:4]"  0.98883962631225586 0.99453610181808472 
		0.99638795852661133 1;
	setAttr -s 5 ".kiy[1:4]"  0.14898401498794556 -0.10439326614141464 
		-0.084918089210987091 0;
	setAttr -s 5 ".kox[1:4]"  0.98883962631225586 0.99453610181808472 
		0.99638795852661133 1;
	setAttr -s 5 ".koy[1:4]"  0.14898405969142914 -0.10439325869083405 
		-0.084918089210987091 0;
createNode animCurveTA -n "animCurveTA358";
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
createNode animCurveTA -n "animCurveTA359";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA360";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA361";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA362";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA363";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA364";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA365";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA366";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA367";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA368";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA369";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA370";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA371";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA372";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA373";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA374";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA375";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA376";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA377";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA378";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA379";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA380";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA381";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA382";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA383";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA384";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.43524234076486068;
createNode animCurveTL -n "animCurveTL148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.27773886459742925;
createNode animCurveTA -n "animCurveTA385";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.8121934161072303e-015;
createNode animCurveTA -n "animCurveTA386";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 28.652637602052774;
createNode animCurveTA -n "animCurveTA387";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 64.676908227303443;
createNode animCurveTL -n "animCurveTL150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.5198069948790518;
createNode animCurveTL -n "animCurveTL151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.36439499068905612;
createNode animCurveTA -n "animCurveTA388";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 7.7976222737965299;
createNode animCurveTA -n "animCurveTA389";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -30.409274105849079;
createNode animCurveTA -n "animCurveTA390";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -64.859940280210878;
createNode animCurveTL -n "animCurveTL153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.11516728567985 20 -1.1037287716909991 
		40 -1.0792878484254524 60 -1.11516728567985;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL154";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.680120084755256 20 1.6904210201129433 
		40 1.7018981160107749 60 1.680120084755256;
	setAttr -s 4 ".kit[1:3]"  1 9 3;
	setAttr -s 4 ".kot[1:3]"  1 9 3;
	setAttr -s 4 ".kix[1:3]"  0.20617297291755676 0.79134517908096313 
		1;
	setAttr -s 4 ".kiy[1:3]"  0.97851556539535522 -0.61136960983276367 
		0;
	setAttr -s 4 ".kox[1:3]"  0.20617252588272095 0.79134517908096313 
		1;
	setAttr -s 4 ".koy[1:3]"  0.97851568460464478 -0.61136960983276367 
		0;
createNode animCurveTL -n "animCurveTL155";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.12935294465776678 20 -0.074001758818887667 
		40 -0.11154204332901384 60 -0.12935294465776678;
	setAttr -s 4 ".kit[0:3]"  3 1 1 3;
	setAttr -s 4 ".kot[0:3]"  3 1 1 3;
	setAttr -s 4 ".kix[1:3]"  0.84871590137481689 0.14366815984249115 
		1;
	setAttr -s 4 ".kiy[1:3]"  0.52884906530380249 -0.98962593078613281 
		0;
	setAttr -s 4 ".kox[1:3]"  0.848716139793396 0.14366839826107025 
		1;
	setAttr -s 4 ".koy[1:3]"  0.52884870767593384 -0.98962587118148804 
		0;
createNode animCurveTA -n "animCurveTA391";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 5.4739599453216474 20 8.3332333806913734 
		40 20.374795129499638 60 5.4739599453216474;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA392";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.5874521608419823 20 15.241179411464307 
		40 9.9803072986426926 60 8.5874521608419823;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA393";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 74.754744621954103 20 77.687136146279556 
		40 81.324889585037582 60 74.754744621954103;
	setAttr -s 4 ".kit[1:3]"  1 9 3;
	setAttr -s 4 ".kot[1:3]"  1 9 3;
	setAttr -s 4 ".kix[1:3]"  0.98630034923553467 0.99926412105560303 
		1;
	setAttr -s 4 ".kiy[1:3]"  0.16495929658412933 -0.038356669247150421 
		0;
	setAttr -s 4 ".kox[1:3]"  0.98630034923553467 0.99926412105560303 
		1;
	setAttr -s 4 ".koy[1:3]"  0.16495934128761292 -0.038356669247150421 
		0;
createNode animCurveTL -n "animCurveTL156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0.80629961042890586 8 0.83956256179105637 
		15 0.92963759348791808 20 0.85639298705120337 24 0.87968586181880992 26 0.90003725415879998 
		29 0.86672106738363408 33 0.87968586181880992 35 0.90003725415879998 39 0.86672106738363408 
		43 0.87968586181880992 45 0.90003725415879998 48 0.86672106738363408 53 0.8244473268059207 
		60 0.80629961042890586;
	setAttr -s 15 ".kit[0:14]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 3;
	setAttr -s 15 ".kot[0:14]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1.6227248042492379 8 1.6639905284158523 
		15 1.8904665519446915 20 1.9186596872422446 24 2.0614792712183734 26 2.0729853468364592 
		29 1.9586609103795696 33 2.0614792712183734 35 2.0729853468364592 39 1.9586609103795696 
		43 2.0614792712183734 45 2.0729853468364592 48 1.9586609103795696 53 1.6727947668443579 
		60 1.6227248042492379;
	setAttr -s 15 ".kit[0:14]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 1 3;
	setAttr -s 15 ".kot[0:14]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 1 3;
	setAttr -s 15 ".kix[13:14]"  0.017186578363180161 1;
	setAttr -s 15 ".kiy[13:14]"  -0.99985229969024658 0;
	setAttr -s 15 ".kox[13:14]"  0.01718658022582531 1;
	setAttr -s 15 ".koy[13:14]"  -0.99985229969024658 0;
createNode animCurveTL -n "animCurveTL158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0.1889487664083056 8 0.1543567909823608 
		15 -0.30144337081442335 20 -0.49858578038885681 24 -0.52012301654872939 26 
		-0.53088456430246678 29 -0.51909522240681372 33 -0.52012301654872939 35 -0.53088456430246678 
		39 -0.51909522240681372 43 -0.52012301654872939 45 -0.53088456430246678 48 
		-0.39829676300278438 53 0.11601011457250654 60 0.1889487664083056;
	setAttr -s 15 ".kit[0:14]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 1 3;
	setAttr -s 15 ".kot[0:14]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 1 3;
	setAttr -s 15 ".kix[13:14]"  0.0097741279751062393 1;
	setAttr -s 15 ".kiy[13:14]"  0.99995225667953491 0;
	setAttr -s 15 ".kox[13:14]"  0.0097738159820437431 1;
	setAttr -s 15 ".koy[13:14]"  0.99995225667953491 0;
createNode animCurveTA -n "animCurveTA394";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 16.226511010665405 8 11.564977209479267 
		15 -13.997970105078918 20 -20.776618168291591 24 -20.14817852432294 26 -19.841778017584204 
		29 -20.857548169780479 33 -20.14817852432294 35 -19.841778017584204 39 -20.857548169780479 
		43 -20.14817852432294 45 -19.841778017584204 48 -13.182424271056494 53 8.6377218468794759 
		60 16.226511010665405;
	setAttr -s 15 ".kit[0:14]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 3;
	setAttr -s 15 ".kot[0:14]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA395";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -8.513966085499284 8 -8.0027562893774498 
		15 -9.9912746210883849 20 -5.4175367535576591 24 -7.4902831428739747 26 -8.2945221244129304 
		29 -13.789355409405246 33 -7.4902831428739747 35 -8.2945221244129304 39 -13.789355409405246 
		43 -7.4902831428739747 45 -8.2945221244129304 48 -13.789355409405246 53 -11.605095371430131 
		60 -8.513966085499284;
	setAttr -s 15 ".kit[0:14]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 1 3;
	setAttr -s 15 ".kot[0:14]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 1 3;
	setAttr -s 15 ".kix[13:14]"  0.91981989145278931 1;
	setAttr -s 15 ".kiy[13:14]"  0.39234089851379395 0;
	setAttr -s 15 ".kox[13:14]"  0.91981989145278931 1;
	setAttr -s 15 ".koy[13:14]"  0.39234089851379395 0;
createNode animCurveTA -n "animCurveTA396";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -68.213989601412422 8 -68.213989601412422 
		15 -74.011350633196059 20 -110.680091790539 24 -116.26571011696073 26 -118.49677723589021 
		29 -108.27221027952319 33 -116.26571011696073 35 -118.49677723589021 39 -108.27221027952319 
		43 -116.26571011696073 45 -118.49677723589021 48 -108.27221027952319 53 -86.960862790473868 
		60 -68.213989601412422;
	setAttr -s 15 ".kit[0:14]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 1 3;
	setAttr -s 15 ".kot[0:14]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 1 3;
	setAttr -s 15 ".kix[13:14]"  0.34180295467376709 1;
	setAttr -s 15 ".kiy[13:14]"  0.93977165222167969 0;
	setAttr -s 15 ".kox[13:14]"  0.34180295467376709 1;
	setAttr -s 15 ".koy[13:14]"  0.93977165222167969 0;
createNode animCurveTL -n "animCurveTL159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 -0.023858500086647218 15 
		-0.075415780777918981 20 -0.10404598088189568 48 -0.13651990938298211 53 
		-0.0396842337068627 60 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 -0.021841594093995838 15 
		-0.1629363684420973 20 -0.2038893573683398 48 -0.21458297740151061 53 -0.17333619291212871 
		60 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1 10 -0.97962545519046118 15 
		-0.92394700940329022 20 -0.90601740997089575 48 -0.89153615884794757 53 -0.92022202786844054 
		60 -1;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.10167917362943303;
createNode animCurveTL -n "animCurveTL163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.40762644910266188;
createNode animCurveTL -n "animCurveTL164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.93129112588482243;
createNode animCurveTA -n "animCurveTA397";
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
createNode animCurveTA -n "animCurveTA398";
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
createNode animCurveTA -n "animCurveTA399";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 3.871449260799477e-015 15 10.66049297399303 
		35 2.7123737418397913 60 3.871449260799477e-015;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA400";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.061808866237337522 15 -1.8696893211112606 
		40 -9.4806490727460329 60 -0.061808866237337522;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA401";
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
createNode animCurveTA -n "animCurveTA402";
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
createNode animCurveTA -n "animCurveTA403";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.5572674112203622 15 11.258794193049559 
		35 20.489010807363705 60 8.5572674112203622;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 15.711328223519057 10 15.711328223519057 
		20 15.711328223519057 30 15.711328223519057 40 15.711328223519057 50 15.711328223519057 
		60 15.711328223519057;
createNode animCurveTA -n "animCurveTA405";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
createNode animCurveTA -n "animCurveTA406";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
createNode animCurveTA -n "animCurveTA407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
createNode animCurveTA -n "animCurveTA408";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 15.821664458316235 40 14.533232671953092 
		60 0;
createNode animCurveTA -n "animCurveTA409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 40 -5.5539031469783557 
		60 0;
createNode animCurveTA -n "animCurveTA410";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 40 -1.4372191713728382 
		60 0;
createNode animCurveTA -n "animCurveTA411";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 10.423754966968488 10 10.423754966968488 
		20 10.423754966968488 30 10.423754966968488 40 10.423754966968488 50 10.423754966968488 
		60 10.423754966968488;
createNode animCurveTA -n "animCurveTA412";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.722848255843903 10 27.722848255843903 
		20 27.722848255843903 30 27.722848255843903 40 27.722848255843903 50 27.722848255843903 
		60 27.722848255843903;
createNode animCurveTA -n "animCurveTA413";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 21.576484776388227 10 21.576484776388227 
		20 21.576484776388227 30 21.576484776388227 40 21.576484776388227 50 21.576484776388227 
		60 21.576484776388227;
createNode animCurveTA -n "animCurveTA414";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 20 0 25 0 30 0 35 0 40 0 45 
		0 60 0;
createNode animCurveTA -n "animCurveTA415";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 20 0 25 0 30 0 35 0 40 0 45 
		0 60 0;
createNode animCurveTA -n "animCurveTA416";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 27.080064458283051 20 27.080064458283051 
		25 40.033069329577415 30 15.036634461762125 35 46.873754596076616 40 20.008396950472417 
		45 38.058920226371029 60 27.080064458283051;
createNode animCurveTA -n "animCurveTA417";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA418";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA419";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA420";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA421";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA422";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.994403295754109;
createNode animCurveTA -n "animCurveTA423";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA424";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA425";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.994403295754109;
createNode animCurveTA -n "animCurveTA426";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 60 0;
createNode animCurveTA -n "animCurveTA427";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 60 0;
createNode animCurveTA -n "animCurveTA428";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.911632519594587 20 -0.67634283285596541 
		60 27.911632519594587;
createNode animCurveTA -n "animCurveTA429";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
createNode animCurveTA -n "animCurveTA430";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
createNode animCurveTA -n "animCurveTA431";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
createNode animCurveTA -n "animCurveTA432";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.65073001024951671 10 -0.56759285525053427 
		20 -0.65719875860049726 30 -0.56759285525053427 40 -0.65719875860049726 50 
		-0.56759285525053427 60 -0.65073001024951671;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA433";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -4.2368721935960929 10 -4.2828905650316926 
		20 -4.1887753598478321 30 -4.2828905650316926 40 -4.1887753598478321 50 -4.2828905650316926 
		60 -4.2368721935960929;
createNode animCurveTA -n "animCurveTA434";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.7398866450636881 10 6.5999460632468825 
		20 9.9087854779302145 30 6.5999460632468825 40 9.9087854779302145 50 6.5999460632468825 
		60 8.7398866450636881;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA435";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "animCurveTA436";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "animCurveTA437";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "animCurveTA438";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 4.8714700432790456 1 4.920564367552152 
		2 5.0628248254870316 3 5.286962835173953 4 5.5816091136011048 5 5.9345946211600884 
		6 6.3323881196368887 7 6.759687491963966 8 7.2153585479814204 9 7.7044371710823878 
		10 8.2194274916597063 11 8.7529185741549167 12 9.2972687252881077 13 9.8447706772207919 
		14 10.387838892457664 15 10.919019568711201 16 11.426264421068101 17 11.900525121628567 
		18 12.339041974612849 19 12.739153126623727 20 13.098262456205221 21 13.413923918072729 
		22 13.68400321737864 23 13.90640610022337 24 14.079050223540333 25 14.199878004699954 
		26 14.274562954050205 27 14.311545937687274 28 14.312972587296047 29 14.280906621557415 
		30 14.217240994694976 31 14.128241506272794 32 14.018414295566693 33 13.886746207489638 
		34 13.732147960052167 35 13.553544532975144 36 13.34993236268968 37 13.120381297320655 
		38 12.863973517153196 39 12.57969353327544 40 12.266311666906061 41 11.855125702717414 
		42 11.298045015817655 43 10.625796894348293 44 9.8727717409720057 45 9.0772740410779758 
		46 8.2841720295385315 47 7.5369378478825295 48 6.870300719144371 49 6.3135155192723182 
		50 5.8907613616843042 51 5.5836338418053684 52 5.3506212366502721 53 5.1797619618778574 
		54 5.0601910127793808 55 4.981778331812051 56 4.9348136252835522 57 4.9097702577175291 
		58 4.8971660977320495 59 4.8875292214235264 60 4.8714700432790456;
createNode animCurveTA -n "animCurveTA439";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 11.783606204137085 1 11.859165639881265 
		2 12.063717554772413 3 12.375100425169425 4 12.771510574190026 5 13.231668960351094 
		6 13.734726823267565 7 14.25989634164438 8 14.794287399010594 9 15.336836927136474 
		10 15.884191073222684 11 16.432993652314138 12 16.979032228424952 13 17.517681993567525 
		14 18.044356014679053 15 18.554533898684934 16 19.034525884179992 17 19.476394341490938 
		18 19.884400455679163 19 20.262923050396054 20 20.616444827129122 21 20.949490882559896 
		22 21.267542083682084 23 21.576654734714641 24 21.883023794926956 25 22.193015517571766 
		26 22.569359078866441 27 23.057341484232861 28 23.637122169473297 29 24.288284500555932 
		30 24.98952541646053 31 25.722136343953341 32 26.463808386764217 33 27.186296473208113 
		34 27.860503888211134 35 28.456692220539207 36 28.944708349564735 37 29.294218314157668 
		38 29.474945330631066 39 29.45691882528633 40 29.210753067561754 41 28.538693662152507 
		42 27.344022516270766 43 25.752073071466551 44 23.889540386021714 45 21.881831046354563 
		46 19.853626672076345 47 17.922324995324754 48 16.193183658089893 49 14.762666431546302 
		50 13.720249905530236 51 13.011580143325531 52 12.501160896257467 53 12.155564093701757 
		54 11.943109490307277 55 11.833270314439684 56 11.796173268933513 57 11.802223336359214 
		58 11.821869922174871 59 11.82552098771828 60 11.783606204137085;
createNode animCurveTA -n "animCurveTA440";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 7.5423825101935913 1 7.6628082958554096 
		2 7.9816618731497435 3 8.4346049344066678 4 8.9571640763519031 5 9.4844381048311934 
		6 9.9509477185793642 7 10.290629697265009 8 10.505028405855418 9 10.627474598241047 
		10 10.639137672181896 11 10.519982760929855 12 10.282305527636916 13 9.9555907845172129 
		14 9.5692033958400788 15 9.1523963056009805 16 8.7326178984037242 17 8.3381824379232246 
		18 7.9996143153815193 19 7.7474833490774371 20 7.6123744601467482 21 7.6199931665571894 
		22 7.7580308024778137 23 8.0000064200378151 24 8.3193830797473751 25 8.6895640918177595 
		26 9.0933226498532882 27 9.5030741179536271 28 9.8770104986215443 29 10.17430831702384 
		30 10.35564411911596 31 10.395739859443195 32 10.310877307766036 33 10.127040488185589 
		34 9.8722739602260852 35 9.5764682740586906 36 9.2709699271468402 37 8.9880005206289351 
		38 8.7598787846878583 39 8.6180541844965504 40 8.5919807054725101 41 8.7109407590313808 
		42 8.9481946327703028 43 9.2417189105898281 44 9.5326679857163761 45 9.7741067670837136 
		46 9.9374371413584974 47 10.010942161791586 48 9.9969015860289598 49 9.9105801219577696 
		50 9.7750501549471753 51 9.5962884785140332 52 9.3753138480677745 53 9.1270640894493322 
		54 8.8639840026294348 55 8.5969201020677861 56 8.335819193031119 57 8.0902432112366913 
		58 7.8697069711691015 59 7.6838414533998485 60 7.5423825101935913;
createNode animCurveTA -n "animCurveTA441";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.8903601258661931 10 -1.874610877599076 
		20 -1.8970838135102988 30 -1.874610877599076 40 -1.8970838135102988 50 -1.874610877599076 
		60 -1.8903601258661931;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA442";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.5597289571479034 10 2.6319880365042492 
		20 2.5247080677125848 30 2.6319880365042492 40 2.5247080677125848 50 2.6319880365042492 
		60 2.5597289571479034;
createNode animCurveTA -n "animCurveTA443";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.016811087403604 10 2.5796951927847864 
		20 1.7733327567114563 30 2.5796951927847864 40 1.7733327567114563 50 2.5796951927847864 
		60 2.016811087403604;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA444";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
createNode animCurveTA -n "animCurveTA445";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
createNode animCurveTA -n "animCurveTA446";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 33.429092416277157 10 33.429092416277157 
		20 33.429092416277157 30 33.429092416277157 40 33.429092416277157 50 33.429092416277157 
		60 33.429092416277157;
createNode animCurveTA -n "animCurveTA447";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.2533422302317216 10 8.2533422302317216 
		20 8.2533422302317216 30 8.2533422302317216 40 8.2533422302317216 50 8.2533422302317216 
		60 8.2533422302317216;
createNode animCurveTA -n "animCurveTA448";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 23.263402056531085 10 23.263402056531085 
		20 23.263402056531085 30 23.263402056531085 40 23.263402056531085 50 23.263402056531085 
		60 23.263402056531085;
createNode animCurveTA -n "animCurveTA449";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 20.166277752815617 10 20.166277752815617 
		20 20.166277752815617 30 20.166277752815617 40 20.166277752815617 50 20.166277752815617 
		60 20.166277752815617;
createNode animCurveTA -n "animCurveTA450";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 20 0 25 0 30 0 35 0 40 
		0 45 0 50 0 60 0;
createNode animCurveTA -n "animCurveTA451";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 20 0 25 0 30 0 35 0 40 
		0 45 0 50 0 60 0;
createNode animCurveTA -n "animCurveTA452";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 17.254116939558369 10 17.254116939558369 
		20 17.254116939558369 25 50.856014706433754 30 -6.541456252844335 35 35.628196467788186 
		40 -2.2393579736572198 45 32.330473085249494 50 17.254116939558369 60 17.254116939558369;
createNode clipLibrary -n "clipLibrary1";
	setAttr -s 162 ".cel[0].cev";
	setAttr ".cd[0].cm" -type "characterMapping" 162 "Extra_Attributes.translateX" 
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
		2 15 "Left_Ball_Hoop.rotateZ" 2 16 "Right_Knee_Hoop.translateX" 
		1 15 "Right_Knee_Hoop.translateY" 1 16 "Right_Knee_Hoop.translateZ" 
		1 17 "Left_Knee_Hoop.translateX" 1 18 "Left_Knee_Hoop.translateY" 
		1 19 "Left_Knee_Hoop.translateZ" 1 20 "Character_Hoop.translateX" 
		1 21 "Character_Hoop.translateY" 1 22 "Character_Hoop.translateZ" 
		1 23 "Character_Hoop.rotateX" 2 17 "Character_Hoop.rotateY" 
		2 18 "Character_Hoop.rotateZ" 2 19 "R_Hip_Fk.rotateX" 2 
		20 "R_Hip_Fk.rotateY" 2 21 "R_Hip_Fk.rotateZ" 2 22 "R_Knee_Fk.rotateZ" 
		2 23 "R_Ankle_Fk.rotateX" 2 24 "R_Ankle_Fk.rotateY" 2 
		25 "R_Ankle_Fk.rotateZ" 2 26 "R_Ball_Fk.rotateX" 2 27 "R_Ball_Fk.rotateY" 
		2 28 "R_Ball_Fk.rotateZ" 2 29 "L_Hip_Fk.rotateX" 2 
		30 "L_Hip_Fk.rotateY" 2 31 "L_Hip_Fk.rotateZ" 2 32 "L_Knee_Fk.rotateZ" 
		2 33 "L_Ankle_Fk.rotateX" 2 34 "L_Ankle_Fk.rotateY" 2 
		35 "L_Ankle_Fk.rotateZ" 2 36 "L_Ball_Fk.rotateX" 2 37 "L_Ball_Fk.rotateY" 
		2 38 "L_Ball_Fk.rotateZ" 2 39 "R_Ball_IK_Fk.rotateX" 2 
		40 "R_Ball_IK_Fk.rotateY" 2 41 "R_Ball_IK_Fk.rotateZ" 2 
		42 "L_Ball_IK_Fk.rotateX" 2 43 "L_Ball_IK_Fk.rotateY" 2 
		44 "L_Ball_IK_Fk.rotateZ" 2 45 "Right_Arm_Hoop.translateX" 1 
		24 "Right_Arm_Hoop.translateY" 1 25 "Right_Arm_Hoop.translateZ" 
		1 26 "Right_Arm_Hoop.rotateX" 2 46 "Right_Arm_Hoop.rotateY" 
		2 47 "Right_Arm_Hoop.rotateZ" 2 48 "Left_Arm_Hoop.translateX" 
		1 27 "Left_Arm_Hoop.translateY" 1 28 "Left_Arm_Hoop.translateZ" 
		1 29 "Left_Arm_Hoop.rotateX" 2 49 "Left_Arm_Hoop.rotateY" 
		2 50 "Left_Arm_Hoop.rotateZ" 2 51 "Right_Arm_World.translateX" 
		1 30 "Right_Arm_World.translateY" 1 31 "Right_Arm_World.translateZ" 
		1 32 "Right_Arm_World.rotateX" 2 52 "Right_Arm_World.rotateY" 
		2 53 "Right_Arm_World.rotateZ" 2 54 "Left_Arm_World.translateX" 
		1 33 "Left_Arm_World.translateY" 1 34 "Left_Arm_World.translateZ" 
		1 35 "Left_Arm_World.rotateX" 2 55 "Left_Arm_World.rotateY" 
		2 56 "Left_Arm_World.rotateZ" 2 57 "Left_Elbow_Hoop.translateX" 
		1 36 "Left_Elbow_Hoop.translateY" 1 37 "Left_Elbow_Hoop.translateZ" 
		1 38 "Right_Elbow_Hoop.translateX" 1 39 "Right_Elbow_Hoop.translateY" 
		1 40 "Right_Elbow_Hoop.translateZ" 1 41 "R_FK_Shoulder.rotateX" 
		2 58 "R_FK_Shoulder.rotateY" 2 59 "R_FK_Shoulder.rotateZ" 
		2 60 "L_FK_Shoulder.rotateX" 2 61 "L_FK_Shoulder.rotateY" 
		2 62 "L_FK_Shoulder.rotateZ" 2 63 "R_FK_Elbow.rotateZ" 
		2 64 "L_FK_Elbow.rotateZ" 2 65 "R_FK_Wrist.rotateX" 2 
		66 "R_FK_Wrist.rotateY" 2 67 "R_FK_Wrist.rotateZ" 2 68 "L_FK_Wrist.rotateX" 
		2 69 "L_FK_Wrist.rotateY" 2 70 "L_FK_Wrist.rotateZ" 2 
		71 "Thumb_Base_L.rotateX" 2 72 "Thumb_Base_L.rotateY" 2 
		73 "Thumb_Base_L.rotateZ" 2 74 "Middle_Base_L.rotateX" 2 
		75 "Middle_Base_L.rotateY" 2 76 "Middle_Base_L.rotateZ" 2 
		77 "Pelvis.rotateX" 2 78 "Pelvis.rotateY" 2 79 "Pelvis.rotateZ" 
		2 80 "Thumb_R.rotateX" 2 81 "Thumb_R.rotateY" 2 82 "Thumb_R.rotateZ" 
		2 83 "Thumb_L.rotateX" 2 84 "Thumb_L.rotateY" 2 85 "Thumb_L.rotateZ" 
		2 86 "Middle_R.rotateX" 2 87 "Middle_R.rotateY" 2 
		88 "Middle_R.rotateZ" 2 89 "Jaw.rotateX" 2 90 "Jaw.rotateY" 
		2 91 "Jaw.rotateZ" 2 92 "Spine_2.rotateX" 2 93 "Spine_2.rotateY" 
		2 94 "Spine_2.rotateZ" 2 95 "Neck.rotateX" 2 96 "Neck.rotateY" 
		2 97 "Neck.rotateZ" 2 98 "Head.rotateX" 2 99 "Head.rotateY" 
		2 100 "Head.rotateZ" 2 101 "Spine_1.rotateX" 2 102 "Spine_1.rotateY" 
		2 103 "Spine_1.rotateZ" 2 104 "Middle_Base_R.rotateX" 2 
		105 "Middle_Base_R.rotateY" 2 106 "Middle_Base_R.rotateZ" 2 
		107 "Thumb_Base_R.rotateX" 2 108 "Thumb_Base_R.rotateY" 2 
		109 "Thumb_Base_R.rotateZ" 2 110 "Middle_L.rotateX" 2 111 "Middle_L.rotateY" 
		2 112 "Middle_L.rotateZ" 2 113  ;
	setAttr ".cd[0].cim" -type "Int32Array" 162 0 1 2 3
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
		 158 159 160 161 ;
createNode lightLinker -n "lightLinker1";
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
connectAttr "hom_idle_scratchSource.st" "clipLibrary1.st[0]";
connectAttr "hom_idle_scratchSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL124.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL125.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL126.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL127.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL128.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA340.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU25.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU26.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU27.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU28.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU29.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU30.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU31.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU32.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA341.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA342.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA343.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL129.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL130.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL131.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL132.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL133.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL134.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA344.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA345.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA346.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL135.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL136.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL137.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA347.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA348.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA349.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA350.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA351.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA352.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA353.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA354.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA355.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTL138.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTL139.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTL140.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTL141.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTL142.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTL143.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL144.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL145.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL146.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTA356.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTA357.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTA358.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTA359.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTA360.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTA361.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA362.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA363.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA364.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA365.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA366.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA367.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA368.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA369.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA370.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA371.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA372.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA373.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA374.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA375.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA376.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA377.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA378.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA379.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA380.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA381.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA382.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA383.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA384.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTL147.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTL148.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTL149.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA385.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA386.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA387.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL150.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL151.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL152.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA388.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA389.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA390.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL153.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL154.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL155.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA391.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA392.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA393.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL156.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL157.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL158.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA394.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA395.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA396.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL159.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL160.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL161.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTL162.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTL163.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTL164.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTA397.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTA398.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTA399.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTA400.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTA401.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTA402.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA403.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA404.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA405.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA406.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA407.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA408.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA409.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA410.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA411.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA412.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA413.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA414.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA415.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA416.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA417.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA418.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA419.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA420.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA421.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA422.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA423.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA424.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA425.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA426.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA427.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA428.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA429.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA430.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA431.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA432.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA433.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA434.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA435.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA436.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA437.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA438.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA439.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA440.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA441.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA442.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA443.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA444.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA445.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA446.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA447.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA448.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA449.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA450.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA451.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA452.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[2].olnk";
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
// End of hom_idle_scratch.ma
