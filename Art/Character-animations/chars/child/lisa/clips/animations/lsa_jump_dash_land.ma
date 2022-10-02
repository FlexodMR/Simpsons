//Maya ASCII 4.0 scene
//Name: lsa_jump_dash_land.ma
//Last modified: Fri, Oct 11, 2002 03:00:23 PM
requires maya "4.0";
requires "p3dmayaexp" "18.6";
requires "p3dSimpleShader" "18.6";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "lsa_jump_dash_landSource";
	setAttr ".ihi" 0;
	setAttr ".du" 18;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL756";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTL -n "animCurveTL757";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0.013101565074642448 1 0.01539575535255667 
		2 0.018286082591634643 3 0.019625397708399377 4 0.018897051240781539 5 0.017313083428700891 
		6 0.015319379741664117 7 0.0133618256491779 8 0.01188630662074891 9 0.011119697576843455 
		10 0.010810198668574434 11 0.010685683211418417 12 0.010474024520851983 13 
		0.009903095912351707 14 0.0087007707013941563 15 0.0065949222034559088 16 
		0.0033373427596970488 17 -0.00092684996781074104 18 -0.005879794682223485 
		19 -0.011203630086697206 20 -0.016580494884387939 21 -0.021692527778451688 
		22 -0.026221867472044483 23 -0.029850652668322365 24 -0.032261022070441341 
		25 -0.033135114381557439;
createNode animCurveTL -n "animCurveTL759";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 8.1891780262336145 1 8.2910920721677623 
		2 8.3991730163803293 3 8.4688134629158771 4 8.491820871282334 5 8.4953653317286673 
		6 8.4878833944109822 7 8.4778116094853857 8 8.4735865271079884 9 8.475436925791886 
		10 8.477778398553717 11 8.4803277173048972 12 8.4828016539568427 13 8.484916980420973 
		14 8.4863904686087057 15 8.4869388904314516 16 8.4866755415469033 17 8.4859561843731957 
		18 8.4848612909624297 19 8.4834713333666993 20 8.4818667836381039 21 8.4801281138287408 
		22 8.4783357959907057 23 8.4765703021760981 24 8.4749121044370117 25 8.4734416748255477;
createNode animCurveTA -n "animCurveTA2154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0;
createNode animCurveTU -n "animCurveTU153";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTU -n "animCurveTU154";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTU -n "animCurveTU155";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTU -n "animCurveTU156";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_FK_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "lsa_Hoop_Root_IK_FK_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU159";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 1;
createNode animCurveTU -n "animCurveTU160";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 1;
createNode animCurveTA -n "animCurveTA2155";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2156";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2157";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTL -n "animCurveTL761";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTL -n "animCurveTL762";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTL -n "animCurveTL763";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTL -n "animCurveTL764";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.22659690697677989 2 -0.2317732285397984 
		7 -0.2317732285397984 9 -0.18714516942762646 12 -0.2233542531468036;
createNode animCurveTL -n "animCurveTL765";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.20712684860372185 2 0.10721832705451574 
		7 0.10721832705451574 9 0.21583413844942467 12 0.14962124006309727;
createNode animCurveTL -n "animCurveTL766";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 19.244557190972021 2 19.407685704169218 
		7 19.407685704169218 9 19.587205316144772 12 19.777139716418635;
createNode animCurveTA -n "animCurveTA2158";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -45.627760894416291 2 2.6744316620370898 
		7 2.6744316620370898 9 24.244549408443024 12 -2.1378751225324386;
createNode animCurveTA -n "animCurveTA2159";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.43608925488945727 2 -0.45386286897071376 
		7 -0.45386286897071376 12 0;
createNode animCurveTA -n "animCurveTA2160";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -3.0130697931149304 2 -3.1358729647033394 
		7 -3.1358729647033394 12 0;
createNode animCurveTL -n "animCurveTL767";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.28178543541046364 2 0.21594587158542247;
createNode animCurveTL -n "animCurveTL768";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.74479324492596188 2 0.13800000000000001;
createNode animCurveTL -n "animCurveTL769";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 19.204766912655362 2 19.860445204467013;
createNode animCurveTA -n "animCurveTA2161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -48.908992857674974 2 -1.1333774065517455;
createNode animCurveTA -n "animCurveTA2162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 2 0;
createNode animCurveTA -n "animCurveTA2163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 2 0;
createNode animCurveTA -n "animCurveTA2164";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2165";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2166";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2167";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2168";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2169";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2170";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2171";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2172";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2173";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2174";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2175";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTL -n "animCurveTL770";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 15 0 25 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL771";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 15 0 25 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL772";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 3 1 15 1 25 1;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL773";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 15 0 25 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL774";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 15 0 25 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL775";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 3 1 15 1 25 1;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL776";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.065457878523700178 3 0.042500442655740364 
		8 0.017116076452902133 12 0.014617223670348017 16 -0.035207998541519063;
createNode animCurveTL -n "animCurveTL777";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.90027255509550042 3 0.69338121252249996 
		8 0.73738126651052338 12 0.76627928180037064 16 0.92850496763879731;
createNode animCurveTL -n "animCurveTL778";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 18.761379777108509 3 19.490493325678617 
		8 19.783466156160717 12 19.840943130688355 16 19.855685571068829;
createNode animCurveTA -n "animCurveTA2176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -44.566313284619632 3 17.332745687058708 
		8 16.134307530096347 12 10.307216569984554 16 -0.62843630316474508;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA2177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 8 0 12 0 16 -5.8284402688137167;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA2178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 8 0 12 0 16 -1.295636019309746;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA2179";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2180";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2181";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2182";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2183";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2184";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2185";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2186";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2187";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2188";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2189";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2190";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2191";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2192";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2193";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2194";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2195";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2196";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2197";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2198";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2199";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2200";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2201";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2202";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2203";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2204";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTL -n "lsa_Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.43524234076486068;
createNode animCurveTL -n "lsa_Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.82665738350180629;
createNode animCurveTL -n "lsa_Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.27773886459742925;
createNode animCurveTA -n "animCurveTA2205";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2206";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2207";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTL -n "lsa_Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.5198069948790518;
createNode animCurveTL -n "lsa_Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.72394202659893114;
createNode animCurveTL -n "lsa_Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.36439499068905612;
createNode animCurveTA -n "animCurveTA2208";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2209";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2210";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTL -n "animCurveTL779";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.81366721158659117 3 -0.7596020228373821 
		15 -0.89872828252831027 25 -0.97384023505055983;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL780";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.81017725342659119 3 0.50816079545363169 
		15 1.0739666612215788 25 1.2525965505547216;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL781";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 28.272387981611473 3 29.469551459414937 
		15 29.177886629830248 25 28.538805738673254;
createNode animCurveTA -n "animCurveTA2211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 50.79177939302059 3 -6.5497694085259983 
		15 -15.275628486635982 25 -12.222987645962956;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA2212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 55.228058117531276 3 24.767806780562221 
		15 10.573544209344728 25 -19.681044208515029;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA2213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 82.33092823712218 3 45.231945695514959 
		15 46.811115809066436 25 65.119655550709012;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL782";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.98753484054318963 3 0.86306372125613096 
		15 0.88698380505404006 25 0.75854111686822778;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL783";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.98041083757176228 3 0.45197248438154064 
		15 1.0031289439571389 25 1.1932952672205326;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL784";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 28.533813336486293 3 29.461789023254404 
		15 29.217256809829088 25 28.779943388989846;
createNode animCurveTA -n "animCurveTA2214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -8.6956122072065014 3 41.99478438900978 
		15 5.2157101296799437 25 -5.7993291745893361;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA2215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -62.182869075925943 3 -35.152233517104122 
		15 -36.60764546449181 25 -1.2282640104712745;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA2216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -60.86370447129287 3 -65.276690851317866 
		15 -35.601526191623421 25 -60.456694896838378;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL785";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.48608220680805114 3 0.48608220680805114 
		15 0.48865623708605266 25 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL786";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.2341020444288966 3 -1.2341020444288966 
		15 -1.3362930736062528 25 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL787";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.9993623657977142 3 -0.9993623657977142 
		15 -0.91725258962026146 25 -1;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL788";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.57597564774320764 3 -0.57597564774320764 
		15 -0.57555789187053286 25 -0.10167917362943303;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL789";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.75601350916139098 3 -0.75601350916139098 
		15 -0.82335937465046505 25 -0.40762644910266188;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL790";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.54077942611803975 3 -0.54077942611803975 
		15 -0.48593958088934258 25 -0.93129112588482243;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA2217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -22.782822431309448 1 -24.185229702245927 
		5 -58.282919861543412 10 -22.78039507191296 17 12.253734489678925;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA2218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 49.127731656085352 1 50.616863605016633 
		5 -52.552655764034682 10 -59.78589307060367 17 -65.746751280844975;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA2219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.7772318907230442 1 10.449253707916377 
		5 83.28470249590417 10 34.574435665981952 17 0;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA2220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 16.124257632118848 2 20.397481682160219 
		7 -66.604099500534048 11 -4.3077020824181265 17 -0.061808866237340665;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA2221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 64.205243898316567 2 56.775444084754902 
		7 -41.775093537705629 11 -49.658336589859132 17 -59.058178941076754;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA2222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 12.822973072446597 2 18.012588533016029 
		7 77.939664981283713 11 45.957278122761899 17 16.57914742975785;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA2223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 17.189777853489566 1 13.891858918547939 
		5 1.8225065714146671 10 64.255341242982553 17 8.5572674112203639;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA2224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 32.688138967191136 2 26.10300309527651 
		7 0.81064164353487722 12 72.208811687058059 18 15.711328223519061;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA2225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 46.213725760420992 2 7.5044499862116671 
		3 -28.651940189735168 5 -40.823311830799966 6 -32.1114567107821 10 9.0783236888701992 
		17 0;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTA -n "animCurveTA2226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 31.754923892926062 2 35.224795679311441 
		3 69.923513948353317 5 -15.973678670012339 6 26.064356333352936 10 39.598760728341013 
		17 0;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTA -n "animCurveTA2227";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 61.184435331749476 2 56.771965155298119 
		3 12.647264013980807 5 -20.498948019723205 6 -26.892408600476696 10 42.18387634272657 
		17 0;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTA -n "animCurveTA2228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -18.026760617958491 2 -33.712304801154588 
		4 -77.728649757480355 7 -37.752050963320123 13 59.556508727470074 19 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA2229";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 37.724928720158594 2 38.835263373386958 
		4 48.949140492095843 7 -14.756803116194448 13 36.028288837490415 19 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA2230";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 21.72561393998857 2 14.908842632329584 
		4 -62.874093096769329 7 -37.199070607759779 13 13.094680882304901 19 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA2231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 143.15000228576875 3 143.15000228576875 
		15 143.15000228576875 25 10.423754966968501;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA2232";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 53.910048648242878 3 53.910048648242878 
		15 53.910048648242878 25 27.722848255843903;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA2233";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 43.127820754253513 3 43.127820754253513 
		15 43.127820754253513 25 21.576484776388227;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA2234";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 15 0 25 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA2235";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 15 0 25 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA2236";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 59.219502482153104 3 59.219502482153104 
		15 59.219502482153104 25 27.080064458283051;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA2237";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2238";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2239";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2240";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2241";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2242";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 13.994403295754109;
createNode animCurveTA -n "animCurveTA2243";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2244";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA2245";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 13.994403295754109;
createNode animCurveTA -n "animCurveTA2246";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 15 0 25 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA2247";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 15 0 25 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA2248";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 66.672206829852314 3 66.672206829852314 
		15 66.672206829852314 25 27.911632519594587;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA2249";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 15 0 25 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA2250";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 15 0 25 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA2251";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 15 0 25 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA2252";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.96615235111188802 3 -1.7222213883462014 
		17 -0.65073001024951671;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA2253";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.0209018830060801 3 -1.4323683570519787 
		17 -4.2368721935960938;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA2254";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.9642347691857585 3 27.667160626694486 
		17 2.6995264082587447;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA2255";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 16 0;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA2256";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 16 0;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA2257";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.3591123210895373 2 -20.269558753487079 
		5 32.826078405640018 10 68.721349296732328 16 0;
	setAttr -s 5 ".kit[2:4]"  1 9 3;
	setAttr -s 5 ".kot[2:4]"  1 9 3;
	setAttr -s 5 ".kix[2:4]"  0.23107355833053589 0.53904938697814941 
		1;
	setAttr -s 5 ".kiy[2:4]"  0.97293627262115479 -0.84227418899536133 
		0;
	setAttr -s 5 ".kox[2:4]"  0.23107351362705231 0.53904938697814941 
		1;
	setAttr -s 5 ".koy[2:4]"  0.97293627262115479 -0.84227418899536133 
		0;
createNode animCurveTA -n "animCurveTA2258";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.2239744454617516 3 2.2239744454617516 
		11 4.747822869067849 17 -4.0198472869727979;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA2259";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 5.8970685922674964 3 5.8970685922674964 
		11 4.1882713219045913 17 -9.1335573833666519;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA2260";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -17.691452850314786 3 -17.691452850314786 
		11 10.187734121095215 17 -2.2752136084709531;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA2261";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.0060464437170478 3 -0.26862115475572979 
		17 -1.8903601258661935;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA2262";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.0909109433137727 3 1.4594355426723329 
		17 2.5597289571479038;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA2263";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -3.3284025074410919 3 28.928530085622626 
		17 2.0168110874036049;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA2264";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 15 0 25 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA2265";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 15 0 25 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA2266";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 61.824373247854581 3 61.824373247854581 
		15 61.824373247854581 25 33.429092416277157;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA2267";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -122.90211145181451 3 -122.90211145181451 
		15 -122.90211145181451 25 8.2533422302317234;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA2268";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 38.578337509358107 3 38.578337509358107 
		15 38.578337509358107 25 23.263402056531085;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA2269";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 45.467643381850564 3 45.467643381850564 
		15 45.467643381850564 25 20.166277752815617;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA2270";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 15 0 25 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA2271";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 15 0 25 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA2272";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 50.17101925731437 3 50.17101925731437 
		15 50.17101925731437 25 17.254116939558369;
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
connectAttr "lsa_jump_dash_landSource.st" "clipLibrary1.st[0]";
connectAttr "lsa_jump_dash_landSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL756.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL757.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL759.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA2154.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU153.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU154.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU155.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU156.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "lsa_Hoop_Root_IK_FK_RArm.a" "clipLibrary1.cel[0].cev[10].cevr"
		;
connectAttr "lsa_Hoop_Root_IK_FK_LArm.a" "clipLibrary1.cel[0].cev[11].cevr"
		;
connectAttr "animCurveTU159.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU160.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA2155.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA2156.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA2157.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL761.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL762.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL763.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL764.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL765.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL766.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA2158.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA2159.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA2160.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL767.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL768.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL769.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA2161.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA2162.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA2163.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA2164.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA2165.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA2166.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA2167.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA2168.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA2169.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA2170.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA2171.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA2172.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA2173.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA2174.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA2175.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL770.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL771.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL772.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL773.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL774.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL775.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL776.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL777.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL778.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA2176.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA2177.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA2178.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA2179.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA2180.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA2181.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA2182.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA2183.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA2184.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA2185.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA2186.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA2187.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA2188.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA2189.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA2190.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA2191.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA2192.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA2193.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA2194.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA2195.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA2196.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA2197.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA2198.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA2199.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA2200.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA2201.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA2202.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA2203.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA2204.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "lsa_Right_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[82].cevr"
		;
connectAttr "lsa_Right_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[83].cevr"
		;
connectAttr "lsa_Right_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[84].cevr"
		;
connectAttr "animCurveTA2205.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA2206.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA2207.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "lsa_Left_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[88].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[89].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[90].cevr"
		;
connectAttr "animCurveTA2208.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA2209.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA2210.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL779.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL780.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL781.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA2211.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA2212.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA2213.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL782.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL783.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL784.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA2214.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA2215.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA2216.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL785.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL786.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL787.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL788.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL789.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL790.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA2217.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA2218.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA2219.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA2220.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA2221.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA2222.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA2223.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA2224.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA2225.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA2226.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA2227.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA2228.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA2229.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA2230.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA2231.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA2232.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA2233.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA2234.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA2235.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA2236.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA2237.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA2238.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA2239.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA2240.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA2241.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA2242.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA2243.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA2244.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA2245.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA2246.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA2247.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA2248.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA2249.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA2250.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA2251.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA2252.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA2253.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA2254.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA2255.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA2256.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA2257.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA2258.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA2259.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA2260.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA2261.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA2262.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA2263.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA2264.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA2265.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA2266.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA2267.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA2268.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA2269.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA2270.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA2271.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA2272.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of lsa_jump_dash_land.ma
