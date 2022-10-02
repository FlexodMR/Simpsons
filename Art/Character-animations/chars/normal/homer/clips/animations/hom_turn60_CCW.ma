//Maya ASCII 4.0 scene
//Name: hom_turn60_CCW.ma
//Last modified: Thu, May 29, 2003 03:44:34 PM
requires maya "4.0";
requires "p3dmayaexp" "2.0.3.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "hom_turn60_CCW";
	setAttr ".ihi" 0;
	setAttr ".du" 12;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL247";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL248";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL249";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.004 12 0.028000000000000004;
createNode animCurveTL -n "animCurveTL250";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTL -n "animCurveTL251";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0.027000000000000003;
createNode animCurveTA -n "animCurveTA679";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 59.999999999999993;
createNode animCurveTU -n "animCurveTU49";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTU -n "animCurveTU50";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTU -n "animCurveTU51";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTU -n "animCurveTU52";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTU -n "animCurveTU53";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 3 1 9 1 12 1;
createNode animCurveTU -n "animCurveTU54";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 3 1 9 1 12 1;
createNode animCurveTU -n "animCurveTU55";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 9 0 12 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTU -n "animCurveTU56";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 9 0 12 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA680";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA681";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA682";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL252";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL253";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL254";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL255";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.22948570846143723 3 -0.22948570846143723 
		6 -0.22948570846143723 9 -0.16228438085086222 12 -0.12509369763076253;
	setAttr -s 5 ".kit[3:4]"  1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[3:4]"  0.026950595900416374 0.026878742501139641;
	setAttr -s 5 ".kiy[3:4]"  0.99963676929473877 0.99963867664337158;
	setAttr -s 5 ".kox[3:4]"  0.026950454339385033 0.026878742501139641;
	setAttr -s 5 ".koy[3:4]"  0.99963676929473877 0.99963867664337158;
createNode animCurveTL -n "animCurveTL256";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.13964711708164665 3 0.13964711708164665 
		6 0.13964711708164665 9 0.2057375857622244 12 0.13339563279458819;
	setAttr -s 5 ".kit[3:4]"  9 9;
	setAttr -s 5 ".kot[3:4]"  9 9;
createNode animCurveTL -n "animCurveTL257";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.064904406754016042 3 -0.064904406754016042 
		6 -0.064904406754016042 9 -0.024644046684705823 12 0.18456109034217957;
	setAttr -s 5 ".kit[3:4]"  1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[3:4]"  0.015928095206618309 0.0047799432650208473;
	setAttr -s 5 ".kiy[3:4]"  0.99987316131591797 0.99998855590820313;
	setAttr -s 5 ".kox[3:4]"  0.015928095206618309 0.0047799432650208473;
	setAttr -s 5 ".koy[3:4]"  0.99987316131591797 0.99998855590820313;
createNode animCurveTA -n "animCurveTA683";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 15.455066653965995 9 
		16.310568499955281 12 2.4213615894162608;
	setAttr -s 5 ".kit[0:4]"  3 3 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 3 9 9 9;
createNode animCurveTA -n "animCurveTA684";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -12.031576538165268 3 -12.031576538165268 
		6 -25.948901905116411 9 -8.1311352826598498 12 40.203708870731305;
	setAttr -s 5 ".kit[0:4]"  3 3 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 3 9 9 9;
createNode animCurveTA -n "animCurveTA685";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 9 -6.4807146401485536 
		12 -0.40508553917468498;
	setAttr -s 5 ".kit[0:4]"  3 3 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 3 9 9 9;
createNode animCurveTL -n "animCurveTL258";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.10825868069997467 3 0.17216051291118575 
		6 0.13587013286927296 9 0.13587013286927296 12 0.13587013286927296;
	setAttr -s 5 ".kit[1:4]"  9 3 3 3;
	setAttr -s 5 ".kot[1:4]"  9 3 3 3;
createNode animCurveTL -n "animCurveTL259";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.13791212285411131 3 0.19294021910917628 
		6 0.14453294020787613 9 0.14453294020787613 12 0.14453294020787613;
	setAttr -s 5 ".kit[1:4]"  9 3 3 3;
	setAttr -s 5 ".kot[1:4]"  9 3 3 3;
createNode animCurveTL -n "animCurveTL260";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.10454507572235824 3 -0.015452821534730965 
		6 -0.14605880635666027 9 -0.14605880635666027 12 -0.14605880635666027;
	setAttr -s 5 ".kit[1:4]"  9 3 3 3;
	setAttr -s 5 ".kot[1:4]"  9 3 3 3;
createNode animCurveTA -n "animCurveTA686";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 9.815331343540727 6 0.19457412295340779 
		9 0.19457412295340779 12 0.19457412295340779;
	setAttr -s 5 ".kit[1:4]"  9 3 3 3;
	setAttr -s 5 ".kot[1:4]"  9 3 3 3;
createNode animCurveTA -n "animCurveTA687";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 18.635117457566011 3 9.3978216967302792 
		6 71.496716967210304 9 71.496716967210304 12 71.496716967210304;
	setAttr -s 5 ".kit[1:4]"  9 3 3 3;
	setAttr -s 5 ".kot[1:4]"  9 3 3 3;
createNode animCurveTA -n "animCurveTA688";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 8.9659790917083324 6 -0.48831959710047212 
		9 -0.48831959710047212 12 -0.48831959710047212;
	setAttr -s 5 ".kit[1:4]"  9 3 3 3;
	setAttr -s 5 ".kot[1:4]"  9 3 3 3;
createNode animCurveTA -n "animCurveTA689";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA690";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA691";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA692";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA693";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA694";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL261";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 0 9 0 12 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 1;
	setAttr -s 4 ".kot[0:3]"  3 9 9 5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "animCurveTL262";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 0 9 0 12 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 1;
	setAttr -s 4 ".kot[0:3]"  3 9 9 5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "animCurveTL263";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 6 1 9 1 12 1;
	setAttr -s 4 ".kit[0:3]"  3 9 9 1;
	setAttr -s 4 ".kot[0:3]"  3 9 9 5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "animCurveTL264";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 0 9 0 12 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 1;
	setAttr -s 4 ".kot[0:3]"  3 9 9 5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "animCurveTL265";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 0 9 0 12 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 1;
	setAttr -s 4 ".kot[0:3]"  3 9 9 5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "animCurveTL266";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 6 1 9 1 12 1;
	setAttr -s 4 ".kit[0:3]"  3 9 9 1;
	setAttr -s 4 ".kot[0:3]"  3 9 9 5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "animCurveTL267";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.0052529700667724097 3 -0.12744857667504858 
		6 -0.016514866345593595 9 0.029370112518350932 12 0.053171079289443701;
	setAttr -s 5 ".kit[0:4]"  3 9 1 1 9;
	setAttr -s 5 ".kot[0:4]"  3 9 1 1 9;
	setAttr -s 5 ".kix[2:4]"  0.018933879211544991 0.063364140689373016 
		0.041978068649768829;
	setAttr -s 5 ".kiy[2:4]"  0.99982070922851563 0.99799048900604248 
		0.99911850690841675;
	setAttr -s 5 ".kox[2:4]"  0.018934018909931183 0.063363596796989441 
		0.041978068649768829;
	setAttr -s 5 ".koy[2:4]"  0.99982070922851563 0.99799048900604248 
		0.99911850690841675;
createNode animCurveTL -n "animCurveTL268";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.9912550528809112 3 0.97769760992763544 
		6 0.97393581247918937 9 0.97674487407846344 12 0.9909771687739114;
	setAttr -s 5 ".kit[0:4]"  3 9 9 1 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 1 9;
	setAttr -s 5 ".kix[3:4]"  0.17808154225349426 0.070089943706989288;
	setAttr -s 5 ".kiy[3:4]"  0.98401576280593872 0.99754065275192261;
	setAttr -s 5 ".kox[3:4]"  0.17808298766613007 0.070089943706989288;
	setAttr -s 5 ".koy[3:4]"  0.98401546478271484 0.99754065275192261;
createNode animCurveTL -n "animCurveTL269";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0.0025722197456121711 6 0.018917037601998175 
		9 0.032480948574189539 12 0.014413711973272479;
	setAttr -s 5 ".kit[0:4]"  3 1 1 1 9;
	setAttr -s 5 ".kot[0:4]"  3 1 1 1 9;
	setAttr -s 5 ".kix[1:4]"  0.24958877265453339 0.07149013876914978 
		0.151372030377388 0.055264223366975784;
	setAttr -s 5 ".kiy[1:4]"  0.96835190057754517 0.99744129180908203 
		0.98847687244415283 -0.99847173690795898;
	setAttr -s 5 ".kox[1:4]"  0.24958889186382294 0.071490302681922913 
		0.15137238800525665 0.055264223366975784;
	setAttr -s 5 ".koy[1:4]"  0.96835190057754517 0.99744129180908203 
		0.98847681283950806 -0.99847173690795898;
createNode animCurveTA -n "animCurveTA695";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 -0.45789806388970972 6 -0.63452367371929341 
		9 -0.34660114724159852 12 -0.16267090200953793;
	setAttr -s 5 ".kit[0:4]"  3 1 9 1 2;
	setAttr -s 5 ".kot[0:4]"  3 1 9 1 2;
	setAttr -s 5 ".kix[1:4]"  0.99841350317001343 0.99995285272598267 
		0.99948453903198242 0.99948513507843018;
	setAttr -s 5 ".kiy[1:4]"  -0.056307490915060043 0.0097120301797986031 
		0.032104693353176117 0.032085347920656204;
	setAttr -s 5 ".kox[1:4]"  0.99841350317001343 0.99995285272598267 
		0.99948453903198242 1;
	setAttr -s 5 ".koy[1:4]"  -0.056307487189769745 0.0097120301797986031 
		0.032104738056659698 0;
createNode animCurveTA -n "animCurveTA696";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 -3.4694333682257517 6 20.667069266929182 
		9 48.800985968783216 12 59.999999999999993;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA697";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 -1.2956360193097458 6 -1.4679065213487994 
		9 -1.0541097398874615 12 -0.096463519366417824;
	setAttr -s 5 ".kit[0:4]"  3 9 9 1 2;
	setAttr -s 5 ".kot[0:4]"  3 9 9 1 2;
	setAttr -s 5 ".kix[3:4]"  0.99579471349716187 0.98631799221038818;
	setAttr -s 5 ".kiy[3:4]"  0.091612733900547028 0.16485393047332764;
	setAttr -s 5 ".kox[3:4]"  0.99579471349716187 1;
	setAttr -s 5 ".koy[3:4]"  0.091612726449966431 0;
createNode animCurveTA -n "animCurveTA698";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA699";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA700";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA701";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA702";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA703";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA704";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA705";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA706";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA707";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA708";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA709";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA710";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA711";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA712";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA713";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA714";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA715";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA716";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA717";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA718";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA719";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA720";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA721";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA722";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA723";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL270";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.22164053326398034 12 -0.43524234076486068;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL271";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.9417076481617882 12 -0.9417076481617882;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
createNode animCurveTL -n "animCurveTL272";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.038362195289875119 12 0.27773886459742925;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA724";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 6.7230119492284173 12 6.7230119492284173;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
createNode animCurveTA -n "animCurveTA725";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 19.83951100863187 12 19.83951100863187;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
createNode animCurveTA -n "animCurveTA726";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 76.90743997913691 12 76.90743997913691;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
createNode animCurveTL -n "animCurveTL273";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.20623790699604494 12 0.5198069948790518;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL274";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.94615818397708606 12 -0.946;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL275";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.023808763748733922 12 0.36439499068905612;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA727";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 8.1910546202722827 12 8.1910546202722827;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
createNode animCurveTA -n "animCurveTA728";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -16.680769289981995 12 -16.680769289981995;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
createNode animCurveTA -n "animCurveTA729";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -64.609749241846473 12 -64.609749241846473;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
createNode animCurveTL -n "animCurveTL276";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.8448236677023373 12 -0.8448236677023373;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL277";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.5117481219250299 12 1.272818195449458;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL278";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.097994651149805143 12 -0.097994651149805143;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA730";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 5.4739599453216465 12 5.4739599453216474;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA731";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 8.5874521608419823 12 8.5874521608419823;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA732";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 74.754744621954103 12 74.754744621954103;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL279";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.61083301393139333 12 0.61083301393139333;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL280";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.4644416293758407 12 1.229336924066629;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL281";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.14314299916678522 12 0.14314299916678522;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA733";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 16.226511010665412 12 16.226511010665405;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA734";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -8.5139660854992858 12 -8.513966085499284;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA735";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -68.213989601412422 12 -68.213989601412422;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL282";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL283";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL284";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1 12 -1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL285";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.10167917362943303 12 -0.10167917362943303;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL286";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.40762644910266188 12 -0.40762644910266188;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL287";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.93129112588482243 12 -0.93129112588482243;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA736";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 36.027350717051704 3 22.037039561243681 
		6 19.273327480079161 9 24.636205707220718 12 36.027350717051704;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA737";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -73.527281583930133 3 -67.302145459108218 
		6 -63.144815037296773 9 -68.378428816250846 12 -73.527281583930133;
	setAttr -s 5 ".kit[0:4]"  3 1 9 1 3;
	setAttr -s 5 ".kot[0:4]"  3 1 9 1 3;
	setAttr -s 5 ".kix[1:4]"  0.74116235971450806 0.99561816453933716 
		0.64798611402511597 1;
	setAttr -s 5 ".kiy[1:4]"  0.67132580280303955 -0.093511886894702911 
		-0.76165217161178589 0;
	setAttr -s 5 ".kox[1:4]"  0.74116235971450806 0.99561816453933716 
		0.64798617362976074 1;
	setAttr -s 5 ".koy[1:4]"  0.67132586240768433 -0.093511886894702911 
		-0.76165205240249634 0;
createNode animCurveTA -n "animCurveTA738";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -31.83712907398235 3 -21.558470539973971 
		6 -17.43155057459845 9 -21.123428541674834 12 -31.83712907398235;
	setAttr -s 5 ".kit[0:4]"  3 1 9 1 3;
	setAttr -s 5 ".kot[0:4]"  3 1 9 1 3;
	setAttr -s 5 ".kix[1:4]"  0.65958750247955322 0.99928009510040283 
		0.72005331516265869 1;
	setAttr -s 5 ".kiy[1:4]"  0.75162780284881592 0.037937246263027191 
		-0.69391876459121704 0;
	setAttr -s 5 ".kox[1:4]"  0.65958750247955322 0.99928009510040283 
		0.72005325555801392 1;
	setAttr -s 5 ".koy[1:4]"  0.75162780284881592 0.037937246263027191 
		-0.69391876459121704 0;
createNode animCurveTA -n "animCurveTA739";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 39.946135100597459 3 19.949442813396637 
		6 13.91293804023268 9 20.216161997439727 12 39.946135100597459;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA740";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -73.87118323772745 3 -66.059539934277055 
		6 -61.588274346980775 9 -65.025835416626407 12 -73.87118323772745;
	setAttr -s 5 ".kit[0:4]"  3 1 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 1 9 9 3;
	setAttr -s 5 ".kix[1:4]"  0.67468678951263428 0.9959559440612793 
		0.6821625828742981 1;
	setAttr -s 5 ".kiy[1:4]"  0.73810416460037231 0.089842937886714935 
		-0.73120051622390747 0;
	setAttr -s 5 ".kox[1:4]"  0.67468678951263428 0.9959559440612793 
		0.6821625828742981 1;
	setAttr -s 5 ".koy[1:4]"  0.73810416460037231 0.089842937886714935 
		-0.73120051622390747 0;
createNode animCurveTA -n "animCurveTA741";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -36.082368514675586 3 -16.790885450170791 
		6 -10.006213348804106 9 -18.883389535827032 12 -36.082368514675586;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA742";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 13.975580453407172 3 13.116972786795994 
		6 43.140672272072486 9 23.635560538852598 12 13.975580453407172;
createNode animCurveTA -n "animCurveTA743";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 13.712720854354775 3 36.359771961425444 
		6 33.363749485314663 9 25.802359460742274 12 13.712720854354775;
createNode animCurveTA -n "animCurveTA744";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 18.95911507313274 3 9.3291488420621747 
		6 9.3291488420621747 9 9.3291488420621747 12 18.95911507313274;
createNode animCurveTA -n "animCurveTA745";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.90812622620329453 3 -6.6514077340403857 
		6 -6.6514077340403857 9 -6.6514077340403857 12 -0.90812622620329453;
createNode animCurveTA -n "animCurveTA746";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.287693868398831 3 -0.7727548353978072 
		6 -0.7727548353978072 9 -0.7727548353978072 12 8.287693868398831;
createNode animCurveTA -n "animCurveTA747";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 24.066389889144549 3 6.3876354565306093 
		6 6.3876354565306093 9 6.3876354565306093 12 24.066389889144549;
createNode animCurveTA -n "animCurveTA748";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 11.893987242563952 3 2.0258412992430621 
		6 2.0258412992430621 9 2.0258412992430621 12 11.893987242563952;
createNode animCurveTA -n "animCurveTA749";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 6.4139491860903055 3 -6.6477254433837762 
		6 -6.6477254433837762 9 -6.6477254433837762 12 6.4139491860903055;
createNode animCurveTA -n "animCurveTA750";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 10.423754966968488 3 10.423754966968488 
		6 10.423754966968488 9 10.423754966968488 12 10.423754966968488;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA751";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.7228482558439 3 27.722848255843903 
		6 27.722848255843903 9 27.722848255843903 12 27.7228482558439;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA752";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 21.576484776388224 3 21.576484776388227 
		6 21.576484776388227 9 21.576484776388227 12 21.576484776388224;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA753";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 9 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA754";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 9 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA755";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.080064458283051 3 27.080064458283051 
		6 27.080064458283051 9 27.080064458283051 12 27.080064458283051;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA756";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA757";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA758";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA759";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA760";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA761";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 13.994403295754109;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA762";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA763";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA764";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 13.994403295754109;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA765";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 9 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA766";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 9 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA767";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.911632519594587 3 27.911632519594587 
		6 27.911632519594587 9 27.911632519594587 12 27.911632519594587;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA768";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 9 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA769";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 9 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA770";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 9 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA771";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 -4.7616230637930279 6 5.5501506738970123 
		9 0.9036778685205652 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA772";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 -0.75132303305912507 6 -4.4061983740954869 
		9 -4.4109208760485776 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 1 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 1 3;
	setAttr -s 5 ".kix[3:4]"  0.9987378716468811 1;
	setAttr -s 5 ".kiy[3:4]"  0.050225619226694107 0;
	setAttr -s 5 ".kox[3:4]"  0.9987378716468811 1;
	setAttr -s 5 ".koy[3:4]"  0.050225615501403809 0;
createNode animCurveTA -n "animCurveTA773";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0.17447035004225536 6 0.7186054318041265 
		9 3.7048543692817062 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 1 1 3;
	setAttr -s 5 ".kot[0:4]"  3 9 1 1 3;
	setAttr -s 5 ".kix[2:4]"  0.98908919095993042 0.99610865116119385 
		1;
	setAttr -s 5 ".kiy[2:4]"  0.14731790125370026 0.088133670389652252 
		0;
	setAttr -s 5 ".kox[2:4]"  0.98908919095993042 0.99610865116119385 
		1;
	setAttr -s 5 ".koy[2:4]"  0.14731788635253906 0.088133968412876129 
		0;
createNode animCurveTA -n "animCurveTA774";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 6.8318802729961208 9 
		5.5667171846955004 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA775";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 9 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA776";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 9 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA777";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -4.9367554394300086 3 -31.402804771815635 
		6 -9.8851209532562621 9 -5.0033349922112906 12 -4.9367554394300086;
	setAttr -s 5 ".kit[0:4]"  3 9 1 1 3;
	setAttr -s 5 ".kot[0:4]"  3 9 1 1 3;
	setAttr -s 5 ".kix[2:4]"  0.70743381977081299 0.97446519136428833 
		1;
	setAttr -s 5 ".kiy[2:4]"  0.7067795991897583 0.22453851997852325 
		0;
	setAttr -s 5 ".kox[2:4]"  0.70743393898010254 0.97446519136428833 
		1;
	setAttr -s 5 ".koy[2:4]"  0.70677947998046875 0.22453851997852325 
		0;
createNode animCurveTA -n "animCurveTA778";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -8.6986303327609935 3 -38.452646213827457 
		6 -17.061119366514788 9 -9.8367601299935803 12 -8.6986303327609935;
	setAttr -s 5 ".kit[0:4]"  3 9 1 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 1 9 3;
	setAttr -s 5 ".kix[2:4]"  0.509022057056427 0.80777746438980103 
		1;
	setAttr -s 5 ".kiy[2:4]"  0.86075347661972046 0.58948755264282227 
		0;
	setAttr -s 5 ".kox[2:4]"  0.509022057056427 0.80777746438980103 
		1;
	setAttr -s 5 ".koy[2:4]"  0.86075347661972046 0.58948755264282227 
		0;
createNode animCurveTA -n "animCurveTA779";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 17.455917002855635 3 22.725179413208338 
		6 14.846437945232971 9 9.7315674949867752 12 17.455917002855635;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA780";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 -1.8903601258661931 6 -1.8903601258661931 
		9 -1.8903601258661931 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA781";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 2.5597289571479034 6 2.5597289571479034 
		9 2.5597289571479034 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA782";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 2.016811087403604 6 2.016811087403604 
		9 2.016811087403604 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA783";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 9 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA784";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 9 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA785";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 33.429092416277157 3 33.429092416277157 
		6 33.429092416277157 9 33.429092416277157 12 33.429092416277157;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA786";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.2533422302317216 3 8.2533422302317216 
		6 8.2533422302317216 9 8.2533422302317216 12 8.2533422302317216;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA787";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 23.263402056531085 3 23.263402056531085 
		6 23.263402056531085 9 23.263402056531085 12 23.263402056531085;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA788";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 20.166277752815617 3 20.166277752815617 
		6 20.166277752815617 9 20.166277752815617 12 20.166277752815617;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA789";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 9 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA790";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 9 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA791";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 17.254116939558369 3 17.254116939558369 
		6 17.254116939558369 9 17.254116939558369 12 17.254116939558369;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
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
connectAttr "hom_turn60_CCW.st" "clipLibrary2.st[0]";
connectAttr "hom_turn60_CCW.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL247.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL248.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "animCurveTL249.a" "clipLibrary2.cel[0].cev[2].cevr";
connectAttr "animCurveTL250.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "animCurveTL251.a" "clipLibrary2.cel[0].cev[4].cevr";
connectAttr "animCurveTA679.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "animCurveTU49.a" "clipLibrary2.cel[0].cev[6].cevr";
connectAttr "animCurveTU50.a" "clipLibrary2.cel[0].cev[7].cevr";
connectAttr "animCurveTU51.a" "clipLibrary2.cel[0].cev[8].cevr";
connectAttr "animCurveTU52.a" "clipLibrary2.cel[0].cev[9].cevr";
connectAttr "animCurveTU53.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU54.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU55.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU56.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA680.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA681.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA682.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL252.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL253.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL254.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL255.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL256.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL257.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA683.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA684.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA685.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL258.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL259.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL260.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA686.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA687.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA688.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA689.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA690.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA691.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA692.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA693.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA694.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTL261.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTL262.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTL263.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTL264.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTL265.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTL266.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL267.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL268.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL269.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTA695.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTA696.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTA697.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTA698.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTA699.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTA700.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA701.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA702.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA703.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA704.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA705.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA706.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA707.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA708.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA709.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA710.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA711.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA712.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA713.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA714.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA715.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA716.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA717.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA718.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA719.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA720.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA721.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA722.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA723.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTL270.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTL271.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTL272.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA724.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA725.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA726.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL273.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL274.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL275.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA727.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA728.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA729.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL276.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL277.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL278.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA730.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA731.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA732.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL279.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL280.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL281.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA733.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA734.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA735.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL282.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL283.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL284.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTL285.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTL286.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTL287.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTA736.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTA737.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTA738.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTA739.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTA740.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTA741.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA742.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA743.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA744.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA745.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA746.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA747.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA748.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA749.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA750.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA751.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA752.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA753.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA754.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA755.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA756.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA757.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA758.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA759.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA760.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA761.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA762.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA763.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA764.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA765.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA766.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA767.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA768.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA769.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA770.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA771.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA772.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA773.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA774.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA775.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA776.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA777.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA778.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA779.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA780.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA781.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA782.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA783.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA784.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA785.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA786.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA787.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA788.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA789.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA790.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA791.a" "clipLibrary2.cel[0].cev[161].cevr";
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
// End of hom_turn60_CCW.ma
