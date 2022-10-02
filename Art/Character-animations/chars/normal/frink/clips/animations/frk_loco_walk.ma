//Maya ASCII 4.0 scene
//Name: frk_loco_walk.ma
//Last modified: Wed, Jun 19, 2002 11:51:28 AM
requires maya "4.0";
requires "p3dmayaexp" "17.6";
requires "p3dSimpleShader" "17.1";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "frk_loco_walkSource";
	setAttr ".ihi" 0;
	setAttr ".du" 30;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL452";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 0 31 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "animCurveTL453";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 1 31 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -0.0092142088792947548 1 -0.01213737754220399 
		2 -0.015124677296875468 3 -0.018137629463334394 4 -0.021137755361605944 5 
		-0.024086576311715333 6 -0.026945613633687731 7 -0.02967638864754835 8 -0.032240422673322375 
		9 -0.031424746072526086 10 -0.028047393739113479 11 -0.024512354654361263 
		12 -0.020839753243124905 13 -0.01704971393025986 14 -0.013162361140621588 
		15 -0.009197819299065553 16 -0.0046148690495957222 17 0.00077394241409942642 
		18 0.0064178408426376803 19 0.011766051986636819 20 0.016267801596714634 
		21 0.019372315423488912 22 0.020528819217577432 23 0.019656604874490585 24 
		0.017274446248487375 25 0.013730792028308531 26 0.0093740909026947834 27 
		0.0045527915603868528 28 -0.00038465730987453304 29 -0.0050898070193486477 
		30 -0.0092142088792947548;
createNode animCurveTL -n "frk_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -0.068988472970326092 1 -0.031341211642611784 
		2 0.0063632199352123987 3 0.044090519469833341 4 0.081806384667937881 5 0.11947651323621288 
		6 0.15706660288134519 7 0.19454235131002176 8 0.23186945622892932 9 0.2661836827543288 
		10 0.29815898950697534 11 0.33013053735506775 12 0.36196987105606915 13 0.39354853536744272 
		14 0.42473807504665156 15 0.45541003485115888 16 0.48426498862044703 17 0.51100411606770102 
		18 0.53699987076093803 19 0.56362470626817529 20 0.59225107615742989 21 0.62425143399671879 
		22 0.66099823335405927 23 0.7079748307110123 24 0.76615954559184662 25 0.83016727612864205 
		26 0.89461292045347818 27 0.95411137669843415 28 1.00327754299559 29 1.0367263174770254 
		30 1.0490725982748195;
createNode animCurveTA -n "frk_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU85";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU86";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU87";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU88";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU89";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU90";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU91";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU92";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1245";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1246";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1247";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL457";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL458";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL459";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL460";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.17125597190466166 8 -0.17125597190466166 
		9 -0.17125597190466166 15 -0.17125597190466166 22 -0.17125597190466166 30 
		-0.17125597190466166;
createNode animCurveTL -n "animCurveTL461";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.2005192291692092 8 0.18220247528357539 
		9 0.18582931563540772 15 0.26322675964581832 22 0.48304777687485601 30 0.2005192291692092;
	setAttr -s 6 ".kit[1:5]"  1 9 9 9 9;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 9;
	setAttr -s 6 ".kix[1:5]"  0.13706184923648834 0.028786016628146172 
		0.014578074216842651 0.079482980072498322 0.0094381542876362801;
	setAttr -s 6 ".kiy[1:5]"  0.99056249856948853 0.99958556890487671 
		0.99989372491836548 -0.99683624505996704 -0.99995547533035278;
	setAttr -s 6 ".kox[1:5]"  0.13706126809120178 0.028786016628146172 
		0.014578074216842651 0.079482980072498322 0.0094381542876362801;
	setAttr -s 6 ".koy[1:5]"  0.9905625581741333 0.99958556890487671 
		0.99989372491836548 -0.99683624505996704 -0.99995547533035278;
createNode animCurveTL -n "animCurveTL462";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.25252650811472799 8 0.34324730916303497 
		9 0.3445417995312513 15 0.42594849307412502 22 0.7190180655501418 30 2.1174117089017925;
	setAttr -s 6 ".kit[1:5]"  3 9 9 9 9;
	setAttr -s 6 ".kot[1:5]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA1248";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -11.312429905193213 8 0.37165693108336528 
		9 2.6765058019620431 15 23.241589083193311 22 75.196008025751809 30 -11.312429905193213;
createNode animCurveTA -n "animCurveTA1249";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 8 0 9 -0.087644839053093462 
		15 -0.98166935394451782 22 -1.6938608337583265 30 0;
createNode animCurveTA -n "animCurveTA1250";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 8 0 9 -0.33020821310027537 
		15 -3.6985095036404418 22 -6.3817419007164782 30 0;
createNode animCurveTL -n "animCurveTL463";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.10352156903935404 8 0.10352156903935404 
		9 0.1053134791743281 15 0.12443388723565417 22 0.1482001658175067 30 0.10352156903935404;
createNode animCurveTL -n "animCurveTL464";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.29562191565027063 8 0.42276878065636442 
		9 0.4116246962422529 15 0.20964206040319108 22 0.18212938651771551 30 0.29562191565027063;
	setAttr -s 6 ".kit[0:5]"  9 1 9 1 2 3;
	setAttr -s 6 ".kot[0:5]"  9 1 9 1 1 3;
	setAttr -s 6 ".ktl[4:5]" no yes;
	setAttr -s 6 ".kix[1:5]"  0.97235304117202759 0.010947446338832378 
		0.056552872061729431 0.084506034851074219 1;
	setAttr -s 6 ".kiy[1:5]"  -0.23351556062698364 -0.99994009733200073 
		-0.99839961528778076 -0.99642294645309448 0;
	setAttr -s 6 ".kox[1:5]"  0.97235304117202759 0.010947446338832378 
		0.056553684175014496 0.021233296021819115 1;
	setAttr -s 6 ".koy[1:5]"  -0.23351559042930603 -0.99994009733200073 
		-0.99839955568313599 0.99977457523345947 0;
createNode animCurveTL -n "animCurveTL465";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.57532263739726708 8 0.24594432151332982 
		9 0.37101905030262133 15 1.0733131115319363 22 1.1443627084343033 30 1.2895625633897978;
	setAttr -s 6 ".kit[3:5]"  1 1 1;
	setAttr -s 6 ".kot[3:5]"  1 1 1;
	setAttr -s 6 ".kix[3:5]"  0.027097949758172035 0.097083911299705505 
		0.012624851427972317;
	setAttr -s 6 ".kiy[3:5]"  0.99963277578353882 0.99527621269226074 
		0.9999203085899353;
	setAttr -s 6 ".kox[3:5]"  0.027097849175333977 0.097083829343318939 
		0.012625244446098804;
	setAttr -s 6 ".koy[3:5]"  0.99963277578353882 0.99527621269226074 
		0.9999203085899353;
createNode animCurveTA -n "animCurveTA1251";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 40.139444581516756 8 49.81912553520538 
		9 43.495778945664632 15 -19.452186437862306 22 0.35698196984974301 30 40.139444581516756;
createNode animCurveTA -n "animCurveTA1252";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 16.823573513837797 8 13.673001813525291 
		9 14.163743266415571 15 20.452712786468044 22 20.826246605303695 30 16.823573513837797;
createNode animCurveTA -n "animCurveTA1253";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 13.715468599285048 8 15.533439125520166 
		9 13.38310702035807 15 -7.0354733269358718 22 2.2463559202319088 30 13.715468599285048;
createNode animCurveTA -n "animCurveTA1254";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1255";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1256";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1257";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1258";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1259";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL466";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.25204401494835493 8 -0.25204401494835493 
		9 -0.2513614542895945 15 -0.24402626481170292 22 -0.23440496516343678 30 
		-0.25204401494835493;
createNode animCurveTL -n "animCurveTL467";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -3.4036622767418095e-017 8 -3.4036622767418095e-017 
		9 -4.1743967190895395e-017 15 -1.7317447209650832e-016 22 -3.1231232142559858e-016 
		30 -3.4036622767418095e-017;
createNode animCurveTL -n "animCurveTL468";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 8 1 9 0.99992100316209775 15 
		0.99907205771239549 22 0.9979585270654705 30 1;
createNode animCurveTL -n "animCurveTL469";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 8 0 9 0 15 0 22 0 30 0;
createNode animCurveTL -n "animCurveTL470";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 8 0 9 0 15 0 22 0 30 0;
createNode animCurveTL -n "animCurveTL471";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 8 1 9 1 15 1 22 1 30 1;
createNode animCurveTL -n "animCurveTL472";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.015368965272014128 8 -0.053775852372393108 
		9 -0.052415333470005016 15 -0.015341628048312642 22 0.034241323781944943 
		30 -0.015368965272014128;
createNode animCurveTL -n "animCurveTL473";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.91489891716000771 8 0.98782723885085821 
		9 0.98628769275245276 15 0.9604047696944451 22 1.0030084231504131 30 0.91489891716000771;
	setAttr -s 6 ".kit[0:5]"  9 1 9 1 1 9;
	setAttr -s 6 ".kot[0:5]"  9 1 9 1 1 9;
	setAttr -s 6 ".kix[1:5]"  0.99548143148422241 0.084782011806964874 
		0.99758309125900269 0.98587709665298462 0.030251519754528999;
	setAttr -s 6 ".kiy[1:5]"  -0.094956167042255402 -0.99639952182769775 
		-0.06948377937078476 -0.16747055947780609 -0.99954229593276978;
	setAttr -s 6 ".kox[1:5]"  0.99548143148422241 0.084782011806964874 
		0.99758309125900269 0.98587709665298462 0.030251519754528999;
	setAttr -s 6 ".koy[1:5]"  -0.09495621919631958 -0.99639952182769775 
		-0.069483771920204163 -0.1674705296754837 -0.99954229593276978;
createNode animCurveTL -n "animCurveTL474";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.11507026366992668 8 0.38674981944797937 
		9 0.44398470121736849 15 0.75960737398541744 22 1.1025210114467012 30 1.7498149371171381;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1260";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 8 0 9 0 15 0 22 0 30 0;
createNode animCurveTA -n "animCurveTA1261";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 8 0 9 0 15 0 22 0 30 0;
createNode animCurveTA -n "animCurveTA1262";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 8 -0.52996894379984683 9 -0.5098116137425458 
		15 0 22 0.52184628521892806 30 0;
createNode animCurveTA -n "animCurveTA1263";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1264";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1265";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1266";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1267";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1268";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1269";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1270";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1271";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1272";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1273";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1274";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1275";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1276";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1277";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1278";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1279";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1280";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1281";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1282";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1283";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 9 -0.13766142667135525 
		22 -2.5601801833569793 30 0;
createNode animCurveTA -n "animCurveTA1284";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 9 -0.062364551699752753 
		22 -1.1598346683945755 30 0;
createNode animCurveTA -n "animCurveTA1285";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 8 0.62750616540321502 9 -1.5633492462383707 
		15 -23.899432959848234 22 -38.058789036302976 30 0;
createNode animCurveTA -n "animCurveTA1286";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -4.89362113965473 8 0 9 0.20654895335248918 
		22 0 30 -4.89362113965473;
createNode animCurveTA -n "animCurveTA1287";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -3.1697959600055694 8 0 9 0.13379009390430863 
		22 0 30 -3.1697959600055694;
createNode animCurveTA -n "animCurveTA1288";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -41.716402040619947 8 -17.146888029020133 
		9 -15.577530713061147 15 -12.17608802754787 22 0.33075918973047297 30 -41.716402040619947;
createNode animCurveTL -n "animCurveTL475";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.46929293092673668 8 -0.38994941461691979 
		9 -0.38874867583813555 15 -0.41488867654840705 22 -0.38051871903489159 30 
		-0.46929293092673668;
createNode animCurveTL -n "animCurveTL476";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.7309971566395721 8 -0.87358960587531631 
		9 -0.86020633122269763 15 -0.68027113741541811 22 -0.89532800451604577 30 
		-0.7309971566395721;
createNode animCurveTL -n "animCurveTL477";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.29938754524331623 8 0.20474310871602558 
		9 0.26675687126228492 15 0.55386085944795593 22 0.10377318781214408 30 -0.29938754524331623;
createNode animCurveTA -n "animCurveTA1289";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -18.056704240833856 8 -5.8919762558407198 
		9 -5.6983760850551191 15 -10.059745659261855 22 -9.6398326301160875 30 -18.056704240833856;
createNode animCurveTA -n "animCurveTA1290";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -21.828472896995603 8 28.847664139730721 
		9 34.240891626363499 15 55.976163473107569 22 19.741788922249274 30 -21.828472896995603;
createNode animCurveTA -n "animCurveTA1291";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 67.249152650737614 8 76.274687421773464 
		9 75.731844092362692 15 66.20949951004097 22 68.771526161598786 30 67.249152650737614;
createNode animCurveTL -n "animCurveTL478";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.26688472573755401 8 0.39322372762230545 
		9 0.39928723332958904 15 0.39192150635083062 22 0.39192150635083034 30 0.26688472573755401;
createNode animCurveTL -n "animCurveTL479";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.64967451571438362 8 -0.87943336430668329 
		9 -0.87840661185277757 15 -0.76271383179839092 22 -0.89062189465959007 30 
		-0.64967451571438362;
createNode animCurveTL -n "animCurveTL480";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.57113394102737158 8 -0.091363232301149802 
		9 -0.15502152293654234 15 -0.38330593363669779 22 -0.0069323397865033607 
		30 0.57113394102737158;
createNode animCurveTA -n "animCurveTA1292";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 46.244188109333557 8 10.195089734990809 
		9 8.6924975774931053 15 12.561837517473059 22 8.3597003019645637 30 46.244188109333557;
createNode animCurveTA -n "animCurveTA1293";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -64.471845092713608 8 -12.222797092840999 
		9 -7.2563940055591676 15 10.222888958351561 22 -19.601692755442151 30 -64.471845092713608;
createNode animCurveTA -n "animCurveTA1294";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -111.90145055514685 8 -67.908868244479123 
		9 -65.266915129337249 15 -62.918749973144301 22 -64.064956650697482 30 -111.90145055514685;
createNode animCurveTL -n "animCurveTL481";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.3901227102594373 9 -1.3901227102594373 
		30 -1.3901227102594373;
createNode animCurveTL -n "animCurveTL482";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.4305827260697495 9 2.4305827260697495 
		30 2.4305827260697495;
createNode animCurveTL -n "animCurveTL483";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.12866023270740809 9 -0.12866023270740809 
		30 -0.12866023270740809;
createNode animCurveTA -n "animCurveTA1295";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 30 0;
createNode animCurveTA -n "animCurveTA1296";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 30 0;
createNode animCurveTA -n "animCurveTA1297";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 30 0;
createNode animCurveTL -n "animCurveTL484";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.3901225681514251 9 1.3901225681514251 
		30 1.3901225681514251;
createNode animCurveTL -n "animCurveTL485";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.430579559974364 9 2.430579559974364 
		30 2.430579559974364;
createNode animCurveTL -n "animCurveTL486";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.12866034257670189 9 -0.12866034257670189 
		30 -0.12866034257670189;
createNode animCurveTA -n "animCurveTA1298";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 30 0;
createNode animCurveTA -n "animCurveTA1299";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 30 0;
createNode animCurveTA -n "animCurveTA1300";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 30 0;
createNode animCurveTL -n "animCurveTL487";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.49720503530451865 8 0 9 -0.024352900060166358 
		15 0 22 0 30 0.49720503530451865;
createNode animCurveTL -n "animCurveTL488";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.00014449885523225837 8 0 9 
		7.0774953124445088e-006 15 0 22 0 30 -0.00014449885523225837;
createNode animCurveTL -n "animCurveTL489";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.99893496577084384 8 -1 9 -1.000052164944399 
		15 -1 22 -1 30 -0.99893496577084384;
createNode animCurveTL -n "animCurveTL490";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 8 0 9 0 15 0 22 0 30 0;
createNode animCurveTL -n "animCurveTL491";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 8 0 9 0 15 0 22 0 30 0;
createNode animCurveTL -n "animCurveTL492";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1 8 -1 9 -1 15 -1 22 -1 30 -1;
createNode animCurveTA -n "animCurveTA1301";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 30 0;
createNode animCurveTA -n "animCurveTA1302";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 30 0;
createNode animCurveTA -n "animCurveTA1303";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 30 0;
createNode animCurveTA -n "animCurveTA1304";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 30 0;
createNode animCurveTA -n "animCurveTA1305";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 30 0;
createNode animCurveTA -n "animCurveTA1306";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 30 0;
createNode animCurveTA -n "animCurveTA1307";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 30 0;
createNode animCurveTA -n "animCurveTA1308";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 30 0;
createNode animCurveTA -n "animCurveTA1309";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 30 0;
createNode animCurveTA -n "animCurveTA1310";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 30 0;
createNode animCurveTA -n "animCurveTA1311";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 30 0;
createNode animCurveTA -n "animCurveTA1312";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 30 0;
createNode animCurveTA -n "animCurveTA1313";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 30 0;
createNode animCurveTA -n "animCurveTA1314";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 30 0;
createNode animCurveTA -n "animCurveTA1315";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 3.1022902742995262 8 3.0966635992918916 
		9 2.9299178624338515 22 -4.0341768622071204e-016 30 3.1022902742995262;
createNode animCurveTA -n "animCurveTA1316";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 28.350389469677708 8 22.976718992910179 
		9 22.039669383021465 22 9.7679391128674968 30 28.350389469677708;
createNode animCurveTA -n "animCurveTA1317";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.2205561586650227 8 8.952894367829991 
		9 9.4120954906184302 22 16.918099615834347 30 8.2205561586650227;
createNode animCurveTA -n "animCurveTA1318";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 9 0 22 0 30 0;
createNode animCurveTA -n "animCurveTA1319";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 9 0 22 0 30 0;
createNode animCurveTA -n "animCurveTA1320";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.609444352316761 8 19.596115301726076 
		9 19.335959842406528 22 21.048024737263454 30 27.609444352316761;
createNode animCurveTA -n "animCurveTA1321";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1322";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1323";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1324";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1325";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1326";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1327";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1328";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1329";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1330";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 9 0 22 0 30 0;
createNode animCurveTA -n "animCurveTA1331";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 9 0 22 0 30 0;
createNode animCurveTA -n "animCurveTA1332";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 10.456644662005091 8 11.843925968948794 
		9 11.934912116379097 22 12.447086467236723 30 10.456644662005091;
createNode animCurveTA -n "animCurveTA1333";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 9 0 22 0 30 0;
createNode animCurveTA -n "animCurveTA1334";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 9 0 22 0 30 0;
createNode animCurveTA -n "animCurveTA1335";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 9 0 22 0 30 0;
createNode animCurveTA -n "animCurveTA1336";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.41615345727527508 8 0.41615345727527508 
		9 0.39937107663294258 22 0.10404047196455379 30 0.41615345727527508;
createNode animCurveTA -n "animCurveTA1337";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.52579753262149775 8 0.52579753262149775 
		9 0.47020364329432685 22 -0.50811865951918911 30 0.52579753262149775;
createNode animCurveTA -n "animCurveTA1338";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.00192183969257714 8 0.00192183969257714 
		9 0.001793861414577783 22 -0.00045825668421389077 30 0.00192183969257714;
createNode animCurveTA -n "animCurveTA1339";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -5.1619886154963152e-005 8 -5.1619886154963152e-005 
		9 -5.1619886154963152e-005 22 -5.1619886154963152e-005 30 -5.1619886154963152e-005;
createNode animCurveTA -n "animCurveTA1340";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.159995043422771 8 2.159995043422771 
		9 2.159995043422771 22 2.159995043422771 30 2.159995043422771;
createNode animCurveTA -n "animCurveTA1341";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.0046283116250824879 8 -0.0046283116250824879 
		9 -0.0046283116250824879 22 -0.0046283116250824879 30 -0.0046283116250824879;
createNode animCurveTA -n "animCurveTA1342";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.29801883227324 8 7.4219811677267993 
		9 7.0380151919531606 15 -2.29801883227324 22 -10.237908783284714 30 -2.29801883227324;
createNode animCurveTA -n "animCurveTA1343";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 8 0 9 0 15 0 22 0 30 0;
createNode animCurveTA -n "animCurveTA1344";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 8 0 9 0 15 0 22 0 30 0;
createNode animCurveTA -n "animCurveTA1345";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.036924194703133843 8 -0.036924194703133843 
		9 -0.031134907471354386 22 0.070742995812284187 30 -0.036924194703133843;
createNode animCurveTA -n "animCurveTA1346";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.61834994081159689 8 -0.61834994081159689 
		9 -0.65900289994249628 22 -1.3743998397468788 30 -0.61834994081159689;
createNode animCurveTA -n "animCurveTA1347";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.00048204272631972297 8 0.00048204272631972297 
		9 0.00038136974424468655 22 -0.0013902390638080408 30 0.00048204272631972297;
createNode animCurveTA -n "animCurveTA1348";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 9 0 22 0 30 0;
createNode animCurveTA -n "animCurveTA1349";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 9 0 22 0 30 0;
createNode animCurveTA -n "animCurveTA1350";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 19.377606185245892 8 31.565547299272325 
		9 31.719469880833213 22 24.861026047167801 30 19.377606185245892;
createNode animCurveTA -n "animCurveTA1351";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 4.2583526964466412 8 4.1617575995985128 
		9 3.9615355185301024 22 0.51391961819397902 30 4.2583526964466412;
createNode animCurveTA -n "animCurveTA1352";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 19.254395214493165 8 20.069490139434375 
		9 20.416884554310659 22 25.890391000973306 30 19.254395214493165;
createNode animCurveTA -n "animCurveTA1353";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 12.723826264166211 8 11.971812183183605 
		9 11.36810178549795 22 1.3345179611939275 30 12.723826264166211;
createNode animCurveTA -n "animCurveTA1354";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 9 -0.14217860118847697 
		22 -2.6441889496550637 30 0;
createNode animCurveTA -n "animCurveTA1355";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 9 0.0074312106310255345 
		22 0.13820311656485401 30 0;
createNode animCurveTA -n "animCurveTA1356";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.2795812889038771 8 12.871693492854662 
		9 13.256025062891039 22 16.414708300831293 30 8.2795812889038771;
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
	setAttr ".ihi" 0;
	setAttr -s 20 ".lnk";
select -ne :time1;
	setAttr ".o" 0;
select -ne :renderPartition;
	setAttr -s 20 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 20 ".s";
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
	setAttr -s 108 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".top" 478;
	setAttr ".rght" 638;
	setAttr ".fs" 1;
	setAttr ".ef" 10;
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
connectAttr "frk_loco_walkSource.st" "clipLibrary1.st[0]";
connectAttr "frk_loco_walkSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL452.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL453.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "frk_Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "frk_Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr"
		;
connectAttr "animCurveTU85.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU86.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU87.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU88.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU89.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU90.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU91.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU92.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA1245.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA1246.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA1247.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL457.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL458.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL459.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL460.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL461.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL462.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA1248.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA1249.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA1250.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL463.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL464.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL465.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA1251.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA1252.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA1253.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA1254.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA1255.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA1256.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA1257.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA1258.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA1259.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTL466.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTL467.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTL468.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTL469.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTL470.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTL471.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL472.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL473.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL474.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTA1260.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTA1261.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTA1262.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTA1263.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTA1264.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTA1265.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA1266.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA1267.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA1268.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA1269.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA1270.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA1271.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA1272.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA1273.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA1274.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA1275.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA1276.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA1277.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA1278.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA1279.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA1280.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA1281.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA1282.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA1283.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA1284.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA1285.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA1286.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA1287.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA1288.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTL475.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTL476.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTL477.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA1289.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA1290.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA1291.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL478.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL479.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL480.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA1292.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA1293.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA1294.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL481.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL482.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL483.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA1295.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA1296.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA1297.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL484.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL485.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL486.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA1298.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA1299.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA1300.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL487.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL488.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL489.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTL490.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTL491.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTL492.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTA1301.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTA1302.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTA1303.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTA1304.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTA1305.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTA1306.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA1307.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA1308.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA1309.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA1310.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA1311.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA1312.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA1313.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA1314.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA1315.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA1316.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA1317.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1318.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1319.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1320.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA1321.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1322.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1323.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1324.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1325.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1326.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1327.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1328.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1329.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA1330.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA1331.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA1332.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA1333.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA1334.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA1335.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1336.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1337.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1338.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1339.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1340.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1341.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1342.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1343.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1344.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1345.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1346.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1347.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1348.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1349.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1350.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1351.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1352.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1353.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1354.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1355.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1356.a" "clipLibrary1.cel[0].cev[161].cevr";
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
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of frk_loco_walk.ma
