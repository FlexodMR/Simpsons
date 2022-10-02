//Maya ASCII 4.0 scene
//Name: cbg_loco_idle_rest.ma
//Last modified: Tue, Jul 30, 2002 02:41:17 PM
requires maya "4.0";
requires "p3dmayaexp" "18.0";
requires "p3dSimpleShader" "18.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "hom_loco_idle_restSource";
	setAttr ".ihi" 0;
	setAttr ".du" 60;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL165";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 30 0 60 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "animCurveTL166";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 30 1 59 0 60 0;
	setAttr -s 4 ".kit[0:3]"  9 3 3 3;
createNode animCurveTL -n "animCurveTL167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.051425456377630012 60 -0.051425456377630012;
createNode animCurveTL -n "animCurveTL168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 
		0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0;
createNode animCurveTL -n "animCurveTL169";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "animCurveTA453";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 
		0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0;
createNode animCurveTU -n "animCurveTU33";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU34";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU35";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU36";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU37";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU38";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU39";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU40";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "animCurveTA454";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA455";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA456";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.26454016861507795 60 -0.26454016861507795;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.13806192026723146 60 0.13806192026723146;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.064904406754016042 60 -0.064904406754016042;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA457";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA458";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -25.948901905116401 60 -25.948901905116401;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA459";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.21594587158542247 60 0.21594587158542247;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.1380615615975922 60 0.1380615615975922;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.00078430246903575811 60 0.00078430246903575811;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA460";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA461";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA462";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA463";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA464";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA465";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA466";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA467";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA468";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL185";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.076472881617957691 15 -0.049115608091234594 
		30 -0.038147729077297791 45 -0.058268992084502813 60 -0.076472881617957691;
	setAttr -s 5 ".kit[0:4]"  3 1 1 1 9;
	setAttr -s 5 ".kot[0:4]"  3 1 1 1 9;
	setAttr -s 5 ".kix[1:4]"  0.13747239112854004 0.45730835199356079 
		0.21109887957572937 0.26485756039619446;
	setAttr -s 5 ".kiy[1:4]"  0.99050557613372803 -0.88930821418762207 
		-0.97746473550796509 -0.96428751945495605;
	setAttr -s 5 ".kox[1:4]"  0.1374724805355072 0.45730942487716675 
		0.21109795570373535 0.26485756039619446;
	setAttr -s 5 ".koy[1:4]"  0.99050557613372803 -0.88930767774581909 
		-0.97746491432189941 -0.96428751945495605;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL186";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.90401582865979546 15 0.9109865270547437 
		30 0.90433638612605105 45 0.91052740869910487 60 0.90401582865979546;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL187";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 15 0 30 0 45 0 60 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA475";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.62843630316474508 15 -0.65014527504287623 
		30 -0.66290175412811214 45 -0.6419282029118657 60 -0.62843630316474508;
	setAttr -s 5 ".kit[0:4]"  3 1 1 1 9;
	setAttr -s 5 ".kot[0:4]"  3 1 1 1 9;
	setAttr -s 5 ".kix[1:4]"  0.99999970197677612 1 0.9999995231628418 
		0.99999988079071045;
	setAttr -s 5 ".kiy[1:4]"  -0.00080412602983415127 0.00010943452070932835 
		0.00095835921820253134 0.00047095608897507191;
	setAttr -s 5 ".kox[1:4]"  0.99999970197677612 1 0.9999995231628418 
		0.99999988079071045;
	setAttr -s 5 ".koy[1:4]"  -0.00080412550596520305 0.00010943465895252302 
		0.00095835939282551408 0.00047095608897507191;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA476";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -5.8284402688137158 15 -1.8191924631776812 
		30 -1.9633965085767597 45 -4.7588526339487593 60 -5.8284402688137158;
	setAttr -s 5 ".kit[0:4]"  3 1 1 1 9;
	setAttr -s 5 ".kot[0:4]"  3 1 1 1 9;
	setAttr -s 5 ".kix[1:4]"  0.98883962631225586 0.99453610181808472 
		0.99638795852661133 0.99930375814437866;
	setAttr -s 5 ".kiy[1:4]"  0.14898401498794556 -0.10439326614141464 
		-0.084918089210987091 -0.037309657782316208;
	setAttr -s 5 ".kox[1:4]"  0.98883962631225586 0.99453610181808472 
		0.99638795852661133 0.99930375814437866;
	setAttr -s 5 ".koy[1:4]"  0.14898405969142914 -0.10439325869083405 
		-0.084918089210987091 -0.037309657782316208;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA477";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.2956360193097458 15 -0.90547523873851721 
		30 -0.72155522823878782 45 -1.1193696019407173 60 -1.2956360193097458;
	setAttr -s 5 ".kit[0:4]"  3 1 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  0.9998512864112854 0.99999302625656128 
		0.99994981288909912 0.99998104572296143;
	setAttr -s 5 ".kiy[1:4]"  0.017244532704353333 -0.0037331348285079002 
		-0.010019097477197647 -0.006152742076665163;
	setAttr -s 5 ".kox[1:4]"  0.9998512864112854 0.99999302625656128 
		0.99994981288909912 0.99998104572296143;
	setAttr -s 5 ".koy[1:4]"  0.017244530841708183 -0.0037331348285079002 
		-0.010019097477197647 -0.006152742076665163;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA478";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA479";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA480";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA481";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA482";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA483";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA484";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA485";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA486";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA487";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA488";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA489";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA490";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA491";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA492";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA493";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA494";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA495";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA496";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA497";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA498";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA499";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA500";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA501";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA502";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA503";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.43524234076486068;
createNode animCurveTL -n "animCurveTL189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL190";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.27773886459742925;
createNode animCurveTA -n "animCurveTA504";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.8121934161072303e-015;
createNode animCurveTA -n "animCurveTA505";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 28.652637602052774;
createNode animCurveTA -n "animCurveTA506";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 64.676908227303443;
createNode animCurveTL -n "animCurveTL191";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.5198069948790518;
createNode animCurveTL -n "animCurveTL192";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL193";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.36439499068905612;
createNode animCurveTA -n "animCurveTA507";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 7.7976222737965299;
createNode animCurveTA -n "animCurveTA508";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -30.409274105849079;
createNode animCurveTA -n "animCurveTA509";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -64.859940280210878;
createNode animCurveTL -n "animCurveTL194";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.98071836797454492 20 -0.99524636715761161 
		40 -1.0129905651982316 60 -0.98071836797454492;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL195";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.3548645271011504 20 1.3837430685943748 
		40 1.3723681376666566 60 1.3548645271011504;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL196";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.097994651149805143 20 0.0046779612288372482 
		40 -0.061760327799222373 60 -0.097994651149805143;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA510";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 5.4739599453216474 20 5.4739599453216474 
		40 5.4739599453216474 60 5.4739599453216474;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA511";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.5874521608419823 20 8.5874521608419823 
		40 8.5874521608419823 60 8.5874521608419823;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA512";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 74.754744621954103 20 74.754744621954103 
		40 74.754744621954103 60 74.754744621954103;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL197";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0.01 0.94325532077352603 10.28 
		0.93049212572711626 30 0.91643617872447269 45 0.92563293594915752 61 0.94325532077352603;
	setAttr -s 5 ".kit[1:4]"  1 9 9 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  0.2458505779504776 0.92202788591384888 
		0.35953304171562195 0.28966993093490601;
	setAttr -s 5 ".kiy[1:4]"  -0.96930772066116333 -0.38712343573570251 
		0.9331323504447937 0.95712661743164063;
	setAttr -s 5 ".kox[1:4]"  0.24585182964801788 0.92202788591384888 
		0.35953304171562195 0.28966993093490601;
	setAttr -s 5 ".koy[1:4]"  -0.96930742263793945 -0.38712343573570251 
		0.9331323504447937 0.95712661743164063;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL198";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0.01 1.3708366322640035 10 1.37707375618351 
		30 1.3779183490298894 45 1.3779183490298894 61 1.3708366322640035;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL199";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.14314299916678522 0.01 0.1426992296645149 
		10 0.11693695821876761 30 0.046476452931097645 45 0.033322531751603233 61 
		0.1426992296645149;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA513";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 16.226511010665405 10 16.226511010665405 
		30 16.226511010665405 45 16.226511010665405 60 16.226511010665405;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA514";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -8.513966085499284 10 -8.513966085499284 
		30 -8.513966085499284 45 -8.513966085499284 60 -8.513966085499284;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA515";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -68.213989601412422 10 -68.213989601412422 
		30 -68.213989601412422 45 -68.213989601412422 60 -68.213989601412422;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "animCurveTL201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "animCurveTL202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1 60 -1;
createNode animCurveTL -n "animCurveTL203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.10167917362943303 60 -0.10167917362943303;
createNode animCurveTL -n "animCurveTL204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.40762644910266188 60 -0.40762644910266188;
createNode animCurveTL -n "animCurveTL205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.93129112588482243 60 -0.93129112588482243;
createNode animCurveTA -n "animCurveTA516";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 12.253734489678925 15 2.5080130201733613 
		35 8.9711994505746979 60 12.253734489678925;
	setAttr -s 4 ".kit[0:3]"  3 9 1 9;
	setAttr -s 4 ".kot[0:3]"  3 9 1 9;
	setAttr -s 4 ".kix[2:3]"  0.98217999935150146 0.99764513969421387;
	setAttr -s 4 ".kiy[2:3]"  0.18794278800487518 0.068587355315685272;
	setAttr -s 4 ".kox[2:3]"  0.98217999935150146 0.99764513969421387;
	setAttr -s 4 ".koy[2:3]"  0.18794280290603638 0.068587355315685272;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA517";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -65.746751280844961 15 -66.23189068800383 
		35 -65.911934826160262 60 -65.746751280844961;
	setAttr -s 4 ".kit[0:3]"  3 1 1 9;
	setAttr -s 4 ".kot[0:3]"  3 1 1 9;
	setAttr -s 4 ".kix[1:3]"  0.99999308586120605 0.99996083974838257 
		0.99999403953552246;
	setAttr -s 4 ".kiy[1:3]"  -0.0037223771214485168 0.0088514136150479317 
		0.0034595753531903028;
	setAttr -s 4 ".kox[1:3]"  0.99999308586120605 0.99996083974838257 
		0.99999403953552246;
	setAttr -s 4 ".koy[1:3]"  -0.0037223771214485168 0.0088514126837253571 
		0.0034595753531903028;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA518";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 3.871449260799477e-015 15 10.66049297399303 
		35 2.7123737418397913 60 3.871449260799477e-015;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA519";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.061808866237337522 15 -1.8696893211112606 
		40 -9.4806490727460329 60 -0.061808866237337522;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA520";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -59.058178941076754 15 -58.016233844005519 
		40 -57.82222388892724 60 -59.058178941076754;
	setAttr -s 4 ".kit[0:3]"  3 1 1 9;
	setAttr -s 4 ".kot[0:3]"  3 1 1 9;
	setAttr -s 4 ".kix[1:3]"  0.9993630051612854 0.99966120719909668 
		0.99947690963745117;
	setAttr -s 4 ".kiy[1:3]"  0.035688102245330811 -0.026029288768768311 
		-0.032340303063392639;
	setAttr -s 4 ".kox[1:3]"  0.9993630051612854 0.99966120719909668 
		0.99947690963745117;
	setAttr -s 4 ".koy[1:3]"  0.035688098520040512 -0.026029288768768311 
		-0.032340303063392639;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA521";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 16.579147429757843 15 19.186045316761614 
		40 26.120893869188869 60 16.579147429757843;
	setAttr -s 4 ".kit[0:3]"  3 1 9 9;
	setAttr -s 4 ".kot[0:3]"  3 1 9 9;
	setAttr -s 4 ".kix[1:3]"  0.98076349496841431 0.99954026937484741 
		0.97018760442733765;
	setAttr -s 4 ".kiy[1:3]"  0.19519966840744019 -0.030318690463900566 
		-0.24235512316226959;
	setAttr -s 4 ".kox[1:3]"  0.98076349496841431 0.99954026937484741 
		0.97018760442733765;
	setAttr -s 4 ".koy[1:3]"  0.19519966840744019 -0.030318690463900566 
		-0.24235512316226959;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA522";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.5572674112203622 15 11.258794193049559 
		35 20.489010807363705 60 8.5572674112203622;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA523";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 15.711328223519057 10 15.711328223519057 
		20 15.711328223519057 30 15.711328223519057 40 15.711328223519057 50 15.711328223519057 
		60 15.711328223519057;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA524";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA525";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA526";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA527";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 15.821664458316235 40 14.533232671953092 
		60 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA528";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 40 -5.5539031469783557 
		60 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA529";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 40 -1.4372191713728382 
		60 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA530";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 10.423754966968488 10 10.423754966968488 
		20 10.423754966968488 30 10.423754966968488 40 10.423754966968488 50 10.423754966968488 
		60 10.423754966968488;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA531";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.722848255843903 10 27.722848255843903 
		20 27.722848255843903 30 27.722848255843903 40 27.722848255843903 50 27.722848255843903 
		60 27.722848255843903;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA532";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 21.576484776388227 10 21.576484776388227 
		20 21.576484776388227 30 21.576484776388227 40 21.576484776388227 50 21.576484776388227 
		60 21.576484776388227;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA533";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA534";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA535";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.080064458283051 10 27.080064458283051 
		20 27.080064458283051 30 27.080064458283051 40 27.080064458283051 50 27.080064458283051 
		60 27.080064458283051;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA536";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA537";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA538";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA539";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA540";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA541";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.994403295754109;
createNode animCurveTA -n "animCurveTA542";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA543";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA544";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.994403295754109;
createNode animCurveTA -n "animCurveTA545";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 60 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA546";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 60 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA547";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.911632519594587 20 -0.67634283285596541 
		60 27.911632519594587;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA548";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA549";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA550";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA551";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.65073001024951671 10 -0.56759285525053427 
		20 -0.65719875860049726 30 -0.56759285525053427 40 -0.65719875860049726 50 
		-0.56759285525053427 60 -0.65073001024951671;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA552";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -4.2368721935960929 10 -4.2828905650316926 
		20 -4.1887753598478321 30 -4.2828905650316926 40 -4.1887753598478321 50 -4.2828905650316926 
		60 -4.2368721935960929;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA553";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.7398866450636881 10 7.6990388231913949 
		20 9.1226747072604333 30 7.6990388231913949 40 9.1226747072604333 50 7.6990388231913949 
		60 8.7398866450636881;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA554";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA555";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA556";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA557";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 4.8714700432790456 15 4.3246860402866583 
		37 4.1660591115274057 50 4.4925035091346528 60 4.8714700432790456;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA558";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 11.783606204137085 15 6.4027014788002301 
		37 0.16829796535264974 50 5.740823772630578 60 11.783606204137085;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA559";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 7.5423825101935913 15 6.4298123317378364 
		37 5.6448562486554694 50 6.5583990414765427 60 7.5423825101935913;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA560";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.8903601258661931 10 -1.874610877599076 
		20 -1.8970838135102988 30 -1.874610877599076 40 -1.8970838135102988 50 -1.874610877599076 
		60 -1.8903601258661931;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA561";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.5597289571479034 10 2.6319880365042492 
		20 2.5247080677125848 30 2.6319880365042492 40 2.5247080677125848 50 2.6319880365042492 
		60 2.5597289571479034;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA562";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.016811087403604 10 2.8113975041174442 
		20 1.5705932342953803 30 2.8113975041174442 40 1.5705932342953803 50 2.8113975041174442 
		60 2.016811087403604;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA563";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA564";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA565";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 33.429092416277157 10 33.429092416277157 
		20 33.429092416277157 30 33.429092416277157 40 33.429092416277157 50 33.429092416277157 
		60 33.429092416277157;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA566";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.2533422302317216 10 8.2533422302317216 
		20 8.2533422302317216 30 8.2533422302317216 40 8.2533422302317216 50 8.2533422302317216 
		60 8.2533422302317216;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA567";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 23.263402056531085 10 23.263402056531085 
		20 23.263402056531085 30 23.263402056531085 40 23.263402056531085 50 23.263402056531085 
		60 23.263402056531085;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA568";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 20.166277752815617 10 20.166277752815617 
		20 20.166277752815617 30 20.166277752815617 40 20.166277752815617 50 20.166277752815617 
		60 20.166277752815617;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA569";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA570";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA571";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 17.254116939558369 10 17.254116939558369 
		20 17.254116939558369 30 17.254116939558369 40 17.254116939558369 50 17.254116939558369 
		60 17.254116939558369;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode clipLibrary -n "clipLibrary2";
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
	setAttr ".o" 30;
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
connectAttr "hom_loco_idle_restSource.st" "clipLibrary2.st[0]";
connectAttr "hom_loco_idle_restSource.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL165.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL166.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "animCurveTL167.a" "clipLibrary2.cel[0].cev[2].cevr";
connectAttr "animCurveTL168.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "animCurveTL169.a" "clipLibrary2.cel[0].cev[4].cevr";
connectAttr "animCurveTA453.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "animCurveTU33.a" "clipLibrary2.cel[0].cev[6].cevr";
connectAttr "animCurveTU34.a" "clipLibrary2.cel[0].cev[7].cevr";
connectAttr "animCurveTU35.a" "clipLibrary2.cel[0].cev[8].cevr";
connectAttr "animCurveTU36.a" "clipLibrary2.cel[0].cev[9].cevr";
connectAttr "animCurveTU37.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU38.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU39.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU40.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA454.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA455.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA456.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL170.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL171.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL172.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL173.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL174.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL175.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA457.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA458.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA459.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL176.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL177.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL178.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA460.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA461.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA462.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA463.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA464.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA465.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA466.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA467.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA468.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTL179.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTL180.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTL181.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTL182.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTL183.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTL184.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL185.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL186.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL187.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTA475.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTA476.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTA477.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTA478.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTA479.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTA480.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA481.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA482.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA483.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA484.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA485.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA486.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA487.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA488.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA489.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA490.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA491.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA492.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA493.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA494.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA495.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA496.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA497.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA498.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA499.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA500.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA501.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA502.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA503.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTL188.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTL189.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTL190.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA504.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA505.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA506.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL191.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL192.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL193.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA507.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA508.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA509.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL194.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL195.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL196.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA510.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA511.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA512.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL197.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL198.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL199.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA513.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA514.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA515.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL200.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL201.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL202.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTL203.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTL204.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTL205.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTA516.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTA517.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTA518.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTA519.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTA520.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTA521.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA522.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA523.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA524.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA525.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA526.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA527.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA528.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA529.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA530.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA531.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA532.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA533.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA534.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA535.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA536.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA537.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA538.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA539.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA540.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA541.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA542.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA543.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA544.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA545.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA546.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA547.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA548.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA549.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA550.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA551.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA552.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA553.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA554.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA555.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA556.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA557.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA558.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA559.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA560.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA561.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA562.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA563.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA564.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA565.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA566.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA567.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA568.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA569.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA570.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA571.a" "clipLibrary2.cel[0].cev[161].cevr";
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
// End of cbg_loco_idle_rest.ma
