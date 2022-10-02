//Maya ASCII 4.0 scene
//Name: lsa_get_out_of_car_close_door_high.ma
//Last modified: Fri, Oct 11, 2002 02:57:27 PM
requires maya "4.0";
requires "p3dmayaexp" "18.6";
requires "p3dSimpleShader" "18.6";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "lsa_get_out_of_car_close_door_highSource";
	setAttr ".ihi" 0;
	setAttr ".du" 15;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL1190";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTL -n "animCurveTL1191";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTL -n "animCurveTL1192";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0.11732928548045783 1 0.10365535028184349 
		2 0.082651177363905884 3 0.058204771666750803 4 0.034204138130484021 5 0.014537281695211455 
		6 -0.0012322541632979742 7 -0.015696472478072807 8 -0.028200688072203627 
		9 -0.038090215768781056 10 -0.04471037039089569 11 -0.046557577169175773 
		12 -0.044068292854266292 13 -0.039497879549282952 14 -0.035101699357341441 
		15 -0.033135114381557439;
createNode animCurveTL -n "animCurveTL1193";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0;
createNode animCurveTL -n "animCurveTL1194";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0.10598402774477389 1 0.11224884839255199 
		2 0.12465671670899908 3 0.13756147433694957 4 0.14531696291923787 5 0.14227702409869836 
		6 0.12344187949143436 7 0.092575634455974873 8 0.057177956248792849 9 0.024748512126361262 
		10 0.0027869693451530696 11 -0.006608605402810384 12 -0.0084379900424167865 
		13 -0.0058482842425567694 14 -0.0019865876721209693 15 0;
createNode animCurveTA -n "animCurveTA3428";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -110.79018491848576 1 -109.28377827337316 
		2 -106.66628393584153 3 -102.82539846238069 4 -97.648818409480484 5 -91.024240333630729 
		6 -83.312110310880414 7 -75.016399916404779 8 -66.240093955383088 9 -57.086177232994643 
		10 -47.657634554418649 11 -38.05745072483441 12 -28.388610549421156 13 -18.754098833358174 
		14 -7.011331930912533 15 0;
createNode animCurveTU -n "animCurveTU233";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTU -n "animCurveTU234";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTU -n "animCurveTU235";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTU -n "animCurveTU236";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTU -n "animCurveTU237";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTU -n "animCurveTU238";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTU -n "animCurveTU239";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 1;
createNode animCurveTU -n "animCurveTU240";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 1;
createNode animCurveTA -n "animCurveTA3429";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3430";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3431";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTL -n "animCurveTL1195";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTL -n "animCurveTL1196";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTL -n "animCurveTL1197";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTL -n "animCurveTL1198";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.42471957076167488 5 0.23544064970124495 
		10 -0.21764441145149604 15 -0.26454016861507795;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL1199";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.14164123466493578 5 0.17675725921715688 
		10 0.14164123466493578 15 0.13806192026723146;
	setAttr -s 4 ".kit[1:3]"  9 3 3;
	setAttr -s 4 ".kot[1:3]"  9 3 3;
createNode animCurveTL -n "animCurveTL1200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.04295041053611711 5 0.090396430285037979 
		10 -0.064904406754016042 15 -0.064904406754016042;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3432";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -3.1220038384960587 5 -40.376349723711272 
		10 -173.73768703833946 15 -169.92446859312361;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  0.58394819498062134 0.92869448661804199;
	setAttr -s 4 ".kiy[2:3]"  -0.81179088354110718 0.37084564566612244;
	setAttr -s 4 ".kox[2:3]"  0.58394819498062134 0.92869448661804199;
	setAttr -s 4 ".koy[2:3]"  -0.81179094314575195 0.37084564566612244;
createNode animCurveTA -n "animCurveTA3433";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -113.32682153040034 5 -109.38363684393025 
		10 -120.34241176433399 15 -178.07066020604711;
createNode animCurveTA -n "animCurveTA3434";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 4.5212018102435731 5 85.920608006910172 
		10 171.36557992801863 15 178.93356120144901;
createNode animCurveTL -n "animCurveTL1201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.21594587158542247 5 0.21594587158542247 
		10 0.24702698943208226 15 0.21594587158542247;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL1202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.14164087599529637 5 0.14164087599529637 
		10 0.14164087599529637 15 0.1380615615975922;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL1203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.48428229143983942 5 0.48428229143983942 
		10 0.37354366008108897 15 0.00078430246903575811;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3435";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -171.83932330268107 5 -196.13469811126072 
		10 -345.02472286088141 15 -348.14807561859618;
createNode animCurveTA -n "animCurveTA3436";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -68.169561768861598 5 -82.896548172398099 
		10 -41.238383398518884 15 6.6562713460040568;
createNode animCurveTA -n "animCurveTA3437";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 170.56724895848305 5 199.44322781221274 
		10 352.18104340607545 15 357.34157574651488;
createNode animCurveTA -n "animCurveTA3438";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3439";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3440";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3441";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3442";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3443";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3444";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3445";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3446";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3447";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3448";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3449";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTL -n "animCurveTL1204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL1205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL1206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 5 1 10 1 15 1;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL1207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL1208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL1209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 5 1 10 1 15 1;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL1210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.27078550131278833 5 0.033550746477687445 
		10 -0.10318753762627872 15 -0.076472881617957691;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL1211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.95473100313980441 5 0.91279668011788151 
		10 0.85934527457539023 15 0.96147551361829786;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL1212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.2446016607575533 5 0.32836265164398898 
		10 0.0064320760855255035 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3450";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -181.18618296711085 5 -196.675683492183 
		10 -185.08061895527479 15 -183.08300603080491;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3451";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -73.584725781050324 5 -87.209322404525551 
		10 -159.91269158002834 15 -180.19246512564098;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3452";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 178.96129049071283 5 200.29121306815358 
		10 180.76941993100405 15 181.52371620714788;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3453";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3454";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3455";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3456";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3457";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3458";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3459";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3460";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3461";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3462";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3463";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3464";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3465";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3466";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3467";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3468";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3469";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3470";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3471";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3472";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3473";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3474";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3475";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3476";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3477";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3478";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTL -n "animCurveTL1213";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 -0.43524234076486068;
createNode animCurveTL -n "animCurveTL1214";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL1215";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0.27773886459742925;
createNode animCurveTA -n "animCurveTA3479";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3480";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 28.652637602052774;
createNode animCurveTA -n "animCurveTA3481";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 64.676908227303443;
createNode animCurveTL -n "animCurveTL1216";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0.5198069948790518;
createNode animCurveTL -n "animCurveTL1217";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL1218";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0.36439499068905612;
createNode animCurveTA -n "animCurveTA3482";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 7.7976222737965317;
createNode animCurveTA -n "animCurveTA3483";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 -30.409274105849079;
createNode animCurveTA -n "animCurveTA3484";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 -64.859940280210893;
createNode animCurveTL -n "animCurveTL1219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.61294164802918749 5 0.033678587201424713 
		10 -0.77339373226194341 15 -0.97384023505055983;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL1220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.2525965505547216 5 1.2397763237013613 
		10 1.1481854343615399 15 1.2525965505547216;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL1221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.43766142688412474 5 -0.3430554572345435 
		10 0.15398750308028297 15 -0.097994651149805143;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3485";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 243.64247564816833 5 265.64413658133498 
		10 345.14852186746617 15 330.95827397331766;
createNode animCurveTA -n "animCurveTA3486";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -20.532869880126128 5 -39.088385971292958 
		10 -12.868633408077004 15 -4.115967737551717;
createNode animCurveTA -n "animCurveTA3487";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -265.8551275245099 5 -271.83843087496513 
		10 -318.29844264776671 15 -308.19963275848022;
createNode animCurveTL -n "animCurveTL1222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.076245805012821452 5 -0.63789765170330814 
		10 0.97130899359392431 15 0.75854111686822778;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL1223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.1932952672205326 5 2.1617771034587236 
		10 2.0083287341659308 15 1.1932952672205326;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL1224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.0370477783765644 5 1.398658191867155 
		10 0.52246928744813903 15 0.14314299916678522;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3488";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 89.903823884388046 5 247.87088285548552 
		10 290.34630916205839 15 357.32221680110229;
createNode animCurveTA -n "animCurveTA3489";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -32.504234509361467 5 -28.684954716085265 
		10 -6.2268131781437734 15 -13.984098876888629;
createNode animCurveTA -n "animCurveTA3490";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -86.65282174900733 5 -246.16035769150534 
		10 -335.15595125056785 15 -403.29241379628189;
createNode animCurveTL -n "animCurveTL1225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.047646009069586132 5 0.11422262436484759 
		10 0.047646009069586132 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL1226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.70977769184901862 5 -0.50446781311246858 
		10 -0.70977769184901862 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL1227";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.64237249774344829 5 -1.0973961480223062 
		10 -0.64237249774344829 15 -1;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL1228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.31054502397108613 5 -0.31054502397108613 
		10 -0.31054502397108613 15 -0.10167917362943303;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL1229";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.55640530640609931 5 -0.55640530640609931 
		10 -0.55640530640609931 15 -0.40762644910266188;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL1230";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.57914122395678103 5 -0.57914122395678103 
		10 -0.57914122395678103 15 -0.93129112588482243;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3491";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 12.253734489678925 5 12.253734489678925 
		10 12.253734489678925 15 12.253734489678925;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3492";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -65.746751280844975 5 -65.746751280844975 
		10 -65.746751280844975 15 -65.746751280844975;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3493";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3494";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.061808866237340665 5 -0.061808866237340665 
		10 -0.061808866237340665 15 -0.061808866237340665;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3495";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -59.058178941076754 5 -59.058178941076754 
		10 -59.058178941076754 15 -59.058178941076754;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3496";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 16.57914742975785 5 16.57914742975785 
		10 16.57914742975785 15 16.57914742975785;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3497";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.5572674112203657 5 8.5572674112203657 
		10 8.5572674112203657 15 8.5572674112203657;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3498";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 15.711328223519061 5 15.711328223519061 
		10 15.711328223519061 15 15.711328223519061;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3499";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3500";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3501";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3502";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3503";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3504";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3505";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 10.423754966968488;
createNode animCurveTA -n "animCurveTA3506";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.804554996454378 5 27.804554996454378 
		10 27.804554996454378 15 27.7228482558439;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3507";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 29.452980944098744 5 29.452980944098744 
		10 29.452980944098744 15 21.576484776388224;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3508";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3509";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3510";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.080064458283051 5 27.080064458283051 
		10 27.080064458283051 15 27.080064458283051;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3511";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3512";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3513";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3514";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3515";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3516";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 13.994403295754109;
createNode animCurveTA -n "animCurveTA3517";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3518";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA3519";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 13.994403295754109;
createNode animCurveTA -n "animCurveTA3520";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3521";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3522";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.911632519594587 5 27.911632519594587 
		10 27.911632519594587 15 27.911632519594587;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3523";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3524";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3525";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3526";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.65073001024951671 5 -9.7624195992479237 
		10 9.5688162172274307 15 -0.65073001024951671;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3527";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -4.2368721935960938 5 -3.17079856343662 
		10 -7.0846265600455363 15 -4.2368721935960938;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3528";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.6995264082587447 5 -7.5142948618181018 
		10 -8.3067314352119279 15 2.6995264082587447;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3529";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3530";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3531";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3532";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 -56.895247087937577 10 -24.22632884962432 
		15 -4.0198472869727979;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3533";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 -36.557848533371633 10 -28.085678372064539 
		15 -9.1335573833666519;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3534";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 6.6786334979782902 5 29.398669348522365 
		10 24.248342033667061 15 -2.2752136084709531;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3535";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.8903601258661935 5 -1.8903601258661935 
		10 9.8971004586292839 15 -1.8903601258661935;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3536";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.5597289571479038 5 2.5597289571479038 
		10 0.40783862799678089 15 2.5597289571479038;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3537";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.0168110874036049 5 2.0168110874036049 
		10 2.6909656336528314 15 2.0168110874036049;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3538";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3539";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3540";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 33.429092416277157 5 33.429092416277157 
		10 33.429092416277157 15 33.429092416277157;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3541";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 8.253342230231727;
createNode animCurveTA -n "animCurveTA3542";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 28.612774017129329 5 28.612774017129322 
		10 28.612774017129322 15 23.263402056531081;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3543";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 17.632837226638049 5 17.632837226638053 
		10 17.632837226638053 15 20.166277752815621;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3544";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3545";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA3546";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 17.254116939558369 5 17.254116939558369 
		10 17.254116939558369 15 17.254116939558369;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
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
	setAttr -s 21 ".lnk";
select -ne :time1;
	setAttr ".o" 1;
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
connectAttr "lsa_get_out_of_car_close_door_highSource.st" "clipLibrary1.st[0]"
		;
connectAttr "lsa_get_out_of_car_close_door_highSource.du" "clipLibrary1.du[0]"
		;
connectAttr "animCurveTL1190.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL1191.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL1192.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL1193.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL1194.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA3428.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU233.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU234.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU235.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU236.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU237.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU238.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU239.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU240.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA3429.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA3430.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA3431.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL1195.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL1196.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL1197.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL1198.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL1199.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL1200.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA3432.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA3433.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA3434.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL1201.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL1202.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL1203.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA3435.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA3436.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA3437.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA3438.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA3439.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA3440.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA3441.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA3442.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA3443.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA3444.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA3445.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA3446.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA3447.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA3448.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA3449.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL1204.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL1205.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL1206.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL1207.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL1208.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL1209.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL1210.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL1211.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL1212.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA3450.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA3451.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA3452.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA3453.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA3454.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA3455.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA3456.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA3457.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA3458.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA3459.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA3460.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA3461.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA3462.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA3463.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA3464.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA3465.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA3466.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA3467.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA3468.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA3469.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA3470.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA3471.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA3472.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA3473.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA3474.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA3475.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA3476.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA3477.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA3478.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL1213.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL1214.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL1215.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA3479.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA3480.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA3481.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL1216.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL1217.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL1218.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA3482.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA3483.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA3484.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL1219.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL1220.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL1221.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA3485.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA3486.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA3487.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL1222.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL1223.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL1224.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA3488.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA3489.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA3490.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL1225.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL1226.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL1227.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL1228.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL1229.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL1230.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA3491.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA3492.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA3493.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA3494.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA3495.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA3496.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA3497.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA3498.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA3499.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA3500.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA3501.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA3502.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA3503.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA3504.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA3505.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA3506.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA3507.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA3508.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA3509.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA3510.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA3511.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA3512.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA3513.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA3514.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA3515.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA3516.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA3517.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA3518.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA3519.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA3520.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA3521.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA3522.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA3523.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA3524.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA3525.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA3526.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA3527.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA3528.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA3529.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA3530.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA3531.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA3532.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA3533.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA3534.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA3535.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA3536.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA3537.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA3538.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA3539.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA3540.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA3541.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA3542.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA3543.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA3544.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA3545.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA3546.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of lsa_get_out_of_car_close_door_high.ma
