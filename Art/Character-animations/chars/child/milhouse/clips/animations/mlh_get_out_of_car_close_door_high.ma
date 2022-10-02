//Maya ASCII 4.0 scene
//Name: mlh_get_out_of_car_close_door_high.ma
//Last modified: Wed, Jun 26, 2002 11:12:41 AM
requires maya "4.0";
requires "p3dSimpleShader" "17.1";
requires "p3dmayaexp" "17.7";
requires "p3dDeformer" "17.1.0.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mlh_get_out_of_car_close_door_highSource";
	setAttr ".ihi" 0;
	setAttr ".du" 15;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL288";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTL -n "animCurveTL289";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0.1323161565074808 1 0.11563790952200939 
		2 0.091793590082312804 3 0.064696196326534949 4 0.038258726392819777 5 0.016394178419311286 
		6 -0.0013896542032132842 7 -0.017701436606549274 8 -0.031802858436411764 
		9 -0.042955609338515867 10 -0.050421378958576658 11 -0.052504535778084407 
		12 -0.049697286661596431 13 -0.044543078829428449 14 -0.039585359501896157 
		15 -0.037367575899315227;
createNode animCurveTL -n "Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0.11952173018820952 1 0.12677605575246503 
		2 0.14079248328009103 3 0.1552746305195265 4 0.16392611521921047 5 0.16045055512758186 
		6 0.13920953306313855 7 0.10440063695347672 8 0.064481492210683181 9 0.027909724246844753 
		10 0.003142958474048196 11 -0.0074527451794640367 12 -0.009515803377554392 
		13 -0.0065953055962934496 14 -0.0022403413117517987 15 0;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -110.79018491848576 1 -109.28377827337316 
		2 -106.66628393584153 3 -102.82539846238069 4 -97.648818409480484 5 -91.024240333630729 
		6 -83.312110310880414 7 -75.016399916404779 8 -66.240093955383088 9 -57.086177232994636 
		10 -47.657634554418649 11 -38.05745072483441 12 -28.388610549421156 13 -18.754098833358174 
		14 -9.2569003818247015 15 0;
createNode animCurveTU -n "animCurveTU57";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTU -n "animCurveTU58";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTU -n "animCurveTU59";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTU -n "animCurveTU60";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTU -n "animCurveTU61";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTU -n "animCurveTU62";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTU -n "animCurveTU63";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 1;
createNode animCurveTU -n "animCurveTU64";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 1;
createNode animCurveTA -n "animCurveTA811";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA812";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA813";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTL -n "animCurveTL293";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTL -n "animCurveTL294";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTL -n "animCurveTL295";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTL -n "animCurveTL296";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.42471957076167488 5 0.23544064970124495 
		10 -0.21764441145149604 15 -0.21764441145149604;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL297";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.15617942679476385 5 0.25366143527271862 
		10 0.1521050350093231 15 0.1521050350093231;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL298";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.04295041053611711 5 0.090396430285037979 
		10 -0.064904406754016042 15 -0.064904406754016042;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA814";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -3.1220038384960587 5 -40.376349723711272 
		10 -173.73768703833946 15 -180.47216035195257;
createNode animCurveTA -n "animCurveTA815";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -113.32682153040034 5 -109.38363684393025 
		10 -120.34241176433399 15 -170.45202551515843;
createNode animCurveTA -n "animCurveTA816";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 4.5212018102435723 5 85.920608006910172 
		10 171.36557992801863 15 181.28519400211036;
createNode animCurveTL -n "animCurveTL299";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.21594587158542247 5 0.21594587158542247 
		10 0.24702698943208226 15 0.1393832443869546;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL300";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.15592918032721184 5 0.15592918032721184 
		10 0.17235842000328791 15 0.1521046763396838;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL301";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.48428229143983942 5 0.48428229143983942 
		10 0.37354366008108897 15 0.00078430246903575811;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA817";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -171.83932330268107 5 -196.13469811126072 
		10 -345.02472286088141 15 -362.27249837420715;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA818";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -68.169561768861598 5 -82.896548172398099 
		10 -41.238383398518884 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA819";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 170.56724895848305 5 199.44322781221274 
		10 352.18104340607545 15 356.21455893080559;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA820";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA821";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA822";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA823";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA824";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA825";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA826";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA827";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA828";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA829";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA830";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA831";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTL -n "animCurveTL302";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL303";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL304";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 5 1 10 1 15 1;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL305";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL306";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL307";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 5 1 10 1 15 1;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL308";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.27078550131278833 5 0.033550746477687445 
		10 -0.10318753762627872 15 -0.076472881617957691;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL309";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.96067307055352125 5 0.91279668011788151 
		10 0.85934527457539023 15 0.96474337111153452;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL310";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.2446016607575533 5 0.32836265164398898 
		10 0.0064320760855255035 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA832";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -181.38341392974726 5 -196.675683492183 
		10 -173.47216319331591 15 -185.9560390112099;
createNode animCurveTA -n "animCurveTA833";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -49.574855699002391 5 -87.209322404525551 
		10 -157.48903697794736 15 -180.67537535233853;
createNode animCurveTA -n "animCurveTA834";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 181.7751651360046 5 200.29121306815358 
		10 183.18265646779872 15 178.44647788405769;
createNode animCurveTA -n "animCurveTA835";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA836";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA837";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA838";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA839";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA840";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA841";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA842";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA843";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA844";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA845";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA846";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA847";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA848";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA849";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA850";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA851";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA852";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA853";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA854";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA855";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA856";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA857";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA858";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA859";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA860";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTL -n "animCurveTL311";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 -0.43524234076486068;
createNode animCurveTL -n "animCurveTL312";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL313";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0.27773886459742925;
createNode animCurveTA -n "animCurveTA861";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA862";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 28.652637602052774;
createNode animCurveTA -n "animCurveTA863";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 64.676908227303443;
createNode animCurveTL -n "animCurveTL314";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0.5198069948790518;
createNode animCurveTL -n "animCurveTL315";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL316";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0.36439499068905612;
createNode animCurveTA -n "animCurveTA864";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 7.7976222737965317;
createNode animCurveTA -n "animCurveTA865";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 -30.409274105849079;
createNode animCurveTA -n "animCurveTA866";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 -64.859940280210893;
createNode animCurveTL -n "animCurveTL317";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.97280454603329236 5 0.033678587201424713 
		10 -0.77339373226194341 15 -0.84654347043021561;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL318";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.2541244860637808 5 1.2397763237013613 
		10 1.1481854343615399 15 1.2151450287453427;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL319";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.17929719218555817 5 -0.3430554572345435 
		10 0.15398750308028297 15 -0.097994651149805143;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA867";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 220.90896415127256 5 265.64413658133498 
		10 345.14852186746617 15 345.14852186746617;
createNode animCurveTA -n "animCurveTA868";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -31.611876234674341 5 -39.088385971292958 
		10 -12.868633408077004 15 -12.868633408077004;
createNode animCurveTA -n "animCurveTA869";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -233.83174650947143 5 -271.83843087496513 
		10 -318.29844264776671 15 -318.29844264776671;
createNode animCurveTL -n "animCurveTL320";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.15490543823085126 5 -0.55465492679202255 
		7 -0.495530495686616 8 -0.14622109807987221 9 0.28005281513204627 10 0.58098309799099879 
		15 0.61083301393139333;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTL -n "animCurveTL321";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.2046269710762594 5 2.1617771034587236 
		7 2.2302963943107494 8 2.2029890966048784 9 2.1486160317802026 10 2.0526342187120954 
		15 1.205921556906836;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTL -n "animCurveTL322";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.1534303021330221 5 1.5032776277567044 
		7 1.2426651310310803 8 1.0524938351548883 9 0.84905828616718038 10 0.6752399677333486 
		15 0.14314299916678522;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTA -n "animCurveTA870";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 159.73669575466215 5 247.87088285548552 
		7 290.18947065077447 8 275.34014433058428 9 290.65959771716058 10 325.24707638297446 
		15 361.57593237880769;
createNode animCurveTA -n "animCurveTA871";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -48.227224459632737 5 -28.684954716085265 
		7 -9.4375204282761995 8 4.3503387610034858 9 4.3598554974380397 10 3.1412827877330232 
		15 0.85829769311755422;
createNode animCurveTA -n "animCurveTA872";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -147.78167708424758 5 -246.16035769150534 
		7 -238.86730903998438 8 -246.84981331172287 9 -237.76897873186161 10 -252.3669118661025 
		15 -389.21499024273311;
createNode animCurveTL -n "animCurveTL323";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.047646009069586132 5 0.11422262436484759 
		10 0.047646009069586132 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL324";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.70977769184901862 5 -0.50446781311246858 
		10 -0.70977769184901862 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL325";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.64237249774344829 5 -1.0973961480223062 
		10 -0.64237249774344829 15 -1;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL326";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.31054502397108613 5 -0.31054502397108613 
		10 -0.31054502397108613 15 -0.10167917362943303;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL327";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.55640530640609931 5 -0.55640530640609931 
		10 -0.55640530640609931 15 -0.40762644910266188;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL328";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.57914122395678103 5 -0.57914122395678103 
		10 -0.57914122395678103 15 -0.93129112588482243;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA873";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 12.253734489678925 5 12.253734489678925 
		10 12.253734489678925 15 12.253734489678925;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA874";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -65.746751280844975 5 -65.746751280844975 
		10 -65.746751280844975 15 -65.746751280844975;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA875";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA876";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.061808866237340665 5 -0.061808866237340665 
		10 -0.061808866237340665 15 -0.061808866237340665;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA877";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -59.058178941076754 5 -59.058178941076754 
		10 -59.058178941076754 15 -59.058178941076754;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA878";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 16.57914742975785 5 16.57914742975785 
		10 16.57914742975785 15 16.57914742975785;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA879";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.5572674112203639 5 8.5572674112203639 
		10 8.5572674112203639 15 8.5572674112203639;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA880";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 15.711328223519061 5 15.711328223519061 
		10 15.711328223519061 15 15.711328223519061;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA881";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA882";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA883";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA884";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA885";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA886";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA887";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 143.71460997127252 5 143.71460997127252 
		10 143.71460997127252 15 143.71460997127252;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA888";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.804554996454378 5 27.804554996454378 
		10 27.804554996454378 15 27.804554996454378;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA889";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 29.452980944098744 5 29.452980944098744 
		10 29.452980944098744 15 29.452980944098744;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA890";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA891";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA892";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.080064458283051 5 27.080064458283051 
		10 27.080064458283051 15 27.080064458283051;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA893";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA894";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA895";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA896";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA897";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA898";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA899";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA900";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA901";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 13.994403295754109;
createNode animCurveTA -n "animCurveTA902";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA903";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA904";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.911632519594587 5 27.911632519594587 
		10 27.911632519594587 15 27.911632519594587;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA905";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA906";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA907";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA908";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -2.6595410672074675 5 -9.7624195992479237 
		10 9.5688162172274307 15 -0.65073001024951671;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA909";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -4.2368721935960938 5 -3.17079856343662 
		10 -7.0846265600455363 15 -4.2368721935960938;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA910";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.6995264082587447 5 -7.5142948618181018 
		10 -8.3067314352119279 15 2.6995264082587447;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA911";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA912";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA913";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA914";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.3135728563434184 5 -9.2544721301840536 
		10 -9.7276368255431933 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA915";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -17.736920898324417 5 -49.943334355888872 
		10 -42.597565772281506 15 -5.2836650271627628;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA916";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 5.5539259014248019 5 2.5501658732849886 
		10 6.9795147681048828 15 6.6786334979782911;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA917";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.8903601258661935 5 -1.8903601258661935 
		10 9.8971004586292839 15 -1.8903601258661935;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA918";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.5597289571479038 5 2.5597289571479038 
		10 0.40783862799678089 15 2.5597289571479038;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA919";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.0168110874036049 5 2.0168110874036049 
		10 2.6909656336528314 15 2.0168110874036049;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA920";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA921";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA922";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 33.429092416277157 5 33.429092416277157 
		10 33.429092416277157 15 33.429092416277157;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA923";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 106.91515461315004 5 106.91515461315004 
		10 106.91515461315004 15 106.91515461315004;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA924";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 28.612774017129322 5 28.612774017129322 
		10 28.612774017129322 15 28.612774017129322;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA925";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 17.632837226638053 5 17.632837226638053 
		10 17.632837226638053 15 17.632837226638053;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA926";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA927";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA928";
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
	setAttr -s 73 ".lnk";
select -ne :time1;
	setAttr ".o" 0;
select -ne :renderPartition;
	setAttr -s 73 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 73 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 37 ".u";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 37 ".tx";
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
	setAttr -s 1356 ".gn";
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
connectAttr "mlh_get_out_of_car_close_door_highSource.st" "clipLibrary1.st[0]"
		;
connectAttr "mlh_get_out_of_car_close_door_highSource.du" "clipLibrary1.du[0]"
		;
connectAttr "animCurveTL288.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL289.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU57.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU58.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU59.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU60.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU61.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU62.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU63.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU64.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA811.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA812.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA813.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL293.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL294.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL295.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL296.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL297.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL298.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA814.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA815.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA816.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL299.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL300.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL301.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA817.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA818.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA819.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA820.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA821.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA822.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA823.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA824.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA825.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA826.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA827.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA828.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA829.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA830.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA831.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL302.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL303.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL304.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL305.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL306.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL307.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL308.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL309.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL310.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA832.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA833.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA834.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA835.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA836.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA837.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA838.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA839.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA840.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA841.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA842.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA843.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA844.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA845.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA846.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA847.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA848.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA849.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA850.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA851.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA852.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA853.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA854.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA855.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA856.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA857.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA858.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA859.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA860.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL311.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL312.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL313.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA861.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA862.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA863.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL314.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL315.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL316.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA864.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA865.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA866.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL317.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL318.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL319.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA867.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA868.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA869.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL320.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL321.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL322.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA870.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA871.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA872.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL323.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL324.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL325.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL326.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL327.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL328.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA873.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA874.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA875.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA876.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA877.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA878.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA879.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA880.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA881.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA882.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA883.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA884.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA885.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA886.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA887.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA888.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA889.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA890.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA891.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA892.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA893.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA894.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA895.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA896.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA897.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA898.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA899.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA900.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA901.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA902.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA903.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA904.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA905.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA906.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA907.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA908.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA909.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA910.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA911.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA912.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA913.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA914.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA915.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA916.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA917.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA918.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA919.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA920.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA921.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA922.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA923.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA924.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA925.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA926.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA927.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA928.a" "clipLibrary1.cel[0].cev[167].cevr";
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
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[48].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[49].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[50].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[51].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[52].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[53].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[54].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[55].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[56].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[57].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[58].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[59].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[60].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[61].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[62].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[63].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[64].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[65].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[66].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[67].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[68].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[69].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[70].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[71].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[72].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[72].olnk";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of mlh_get_out_of_car_close_door_high.ma
