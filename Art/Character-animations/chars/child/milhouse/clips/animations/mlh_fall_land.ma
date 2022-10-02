//Maya ASCII 4.0 scene
//Name: mlh_fall_land.ma
//Last modified: Tue, Jun 25, 2002 01:40:34 PM
requires maya "4.0";
requires "p3dSimpleShader" "17.1";
requires "p3dmayaexp" "17.7";
requires "p3dDeformer" "17.1.0.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mlh_fall_landSource";
	setAttr ".ihi" 0;
	setAttr ".du" 21;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTL -n "animCurveTL151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTL -n "animCurveTL152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 21 0.059636706081690555;
createNode animCurveTL -n "animCurveTL153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 21 0;
createNode animCurveTL -n "animCurveTL154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 21 0;
createNode animCurveTA -n "animCurveTA533";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 21 0;
createNode animCurveTU -n "animCurveTU33";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 2 0 16 0;
	setAttr -s 3 ".kit[0:2]"  9 1 1;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  0 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU34";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 2 0 16 0;
	setAttr -s 3 ".kit[0:2]"  9 1 1;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  0 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU35";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 2 0 16 0;
	setAttr -s 3 ".kit[0:2]"  9 1 1;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  0 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU36";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 2 0 16 0;
	setAttr -s 3 ".kit[0:2]"  9 1 1;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  0 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU37";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 12 0 16 1;
	setAttr -s 4 ".kit[1:3]"  3 9 3;
	setAttr -s 4 ".kot[0:3]"  1 1 9 3;
	setAttr -s 4 ".kox[0:3]"  1 1 0.4228854775428772 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0.90618312358856201 0;
createNode animCurveTU -n "animCurveTU38";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 12 0 16 1;
	setAttr -s 4 ".kit[1:3]"  3 9 3;
	setAttr -s 4 ".kot[0:3]"  1 1 9 3;
	setAttr -s 4 ".kox[0:3]"  1 1 0.4228854775428772 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0.90618312358856201 0;
createNode animCurveTU -n "animCurveTU39";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 2 1 12 1 16 0;
	setAttr -s 4 ".kit[1:3]"  3 9 3;
	setAttr -s 4 ".kot[0:3]"  1 1 9 3;
	setAttr -s 4 ".kox[0:3]"  1 1 0.4228854775428772 1;
	setAttr -s 4 ".koy[0:3]"  0 0 -0.90618312358856201 0;
createNode animCurveTU -n "animCurveTU40";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 2 1 12 1 16 0;
	setAttr -s 4 ".kit[1:3]"  3 9 3;
	setAttr -s 4 ".kot[0:3]"  1 1 9 3;
	setAttr -s 4 ".kox[0:3]"  1 1 0.4228854775428772 1;
	setAttr -s 4 ".koy[0:3]"  0 0 -0.90618312358856201 0;
createNode animCurveTA -n "animCurveTA534";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA535";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA536";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTL -n "animCurveTL156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTL -n "animCurveTL157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTL -n "animCurveTL158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.24991649100183089 3 -0.42414407797394071 
		6 -0.41389539605363701 9 -0.4315597834710963 12 -0.4587884833822401 14 -0.35826208238065815 
		16 -0.20579117077652787 21 -0.18720350650219833;
	setAttr -s 8 ".kit[5:7]"  1 1 3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 1 1 
		3;
	setAttr -s 8 ".kix[5:7]"  0.003834025003015995 0.025409398600459099 
		1;
	setAttr -s 8 ".kiy[5:7]"  0.99999266862869263 0.99967712163925171 
		0;
	setAttr -s 8 ".kox[0:7]"  0.0057395249605178833 0.012195782735943794 
		0.26039394736289978 0.044506143778562546 0.022732444107532501 0.0038340268656611443 
		0.02540927566587925 1;
	setAttr -s 8 ".koy[0:7]"  -0.99998354911804199 -0.99992561340332031 
		-0.96550244092941284 -0.99900913238525391 0.99974161386489868 0.99999266862869263 
		0.99967712163925171 0;
createNode animCurveTL -n "animCurveTL159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.65946614155053052 3 0.30620813901057398 
		6 0.75042615370475874 9 1.2461990012116864 12 0.76146333434924007 14 0.28777788611288713 
		16 0.17322535761726618 21 0.18407761067571052;
	setAttr -s 8 ".kit[2:7]"  1 9 9 9 9 1;
	setAttr -s 8 ".kot[0:7]"  1 9 1 9 9 9 9 
		5;
	setAttr -s 8 ".kix[2:7]"  0.0014632011298090219 0.17830201983451843 
		0.001738968538120389 0.0022666503209620714 0.022495049983263016 0.091305315494537354;
	setAttr -s 8 ".kiy[2:7]"  0.99999892711639404 0.98397582769393921 
		-0.99999850988388062 -0.99999743700027466 -0.99974697828292847 0.9958229660987854;
	setAttr -s 8 ".kox[0:7]"  0.0016845335485413671 0.021982369944453239 
		0.0014631885569542646 0.17830201983451843 0.001738968538120389 0.0022666503209620714 
		0.022495049983263016 0;
	setAttr -s 8 ".koy[0:7]"  -0.99999856948852539 0.99975836277008057 
		0.99999892711639404 0.98397582769393921 -0.99999850988388062 -0.99999743700027466 
		-0.99974697828292847 0;
createNode animCurveTL -n "animCurveTL160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.58788142103364116 3 0.61952560369460907 
		6 0.43629874310993549 9 0.36969424615034358 12 0.72133066885175967 14 0.67564070667932374 
		16 0.71599963422608837 21 0.72363068543753417;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.031585618853569031 0.013192972168326378 
		0.0080051440745592117 0.0070165852084755898 0.0054474957287311554 0.24263404309749603 
		0.048563890159130096 1;
	setAttr -s 8 ".koy[0:7]"  0.99950104951858521 -0.99991297721862793 
		-0.99996793270111084 0.99997538328170776 0.99998515844345093 -0.97011786699295044 
		0.99882006645202637 0;
createNode animCurveTA -n "animCurveTA537";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -26.415396378218961 3 -22.148487760461904 
		6 -1.6352382551833344 9 -11.225213209975619 12 -77.683127870269587 14 -55.025244320401292 
		16 -33.75058490487276 21 -14.120925422142024;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.80202960968017578 0.41972720623016357 
		0.72382891178131104 0.149001345038414 0.21301645040512085 0.17131930589675903 
		0.31066432595252991 1;
	setAttr -s 8 ".koy[0:7]"  0.59728431701660156 0.90765029191970825 
		0.68997949361801147 -0.98883700370788574 -0.97704863548278809 0.98521554470062256 
		0.95051968097686768 0;
createNode animCurveTA -n "animCurveTA538";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -4.9396511688497213 6 -5.1292121439420102 
		9 -6.3529022793830352 12 -5.7505465759921215 14 -4.7377581518654601 16 -1.1458459513937183 
		21 10.41569297971105;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 3;
	setAttr -s 7 ".kox[0:6]"  0.99986320734024048 0.99663698673248291 
		0.99853324890136719 0.98599600791931152 0.85645061731338501 0.66157495975494385 
		1;
	setAttr -s 7 ".koy[0:6]"  -0.016540052369236946 -0.081943109631538391 
		-0.054142128676176071 0.16676889359951019 0.51622897386550903 0.74987906217575073 
		0;
createNode animCurveTA -n "animCurveTA539";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.4972445100027116 6 1.4972445100027101 
		9 5.2209791497224263 12 3.6338494487010147 14 0.96528242044505552 16 -0.23288113208146571 
		21 -0.92396648882032695;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 3;
	setAttr -s 7 ".kox[0:6]"  1 0.97732889652252197 0.98305797576904297 
		0.91340053081512451 0.892220139503479 0.99016207456588745 1;
	setAttr -s 7 ".koy[0:6]"  0 0.21172668039798737 0.18329504132270813 
		-0.40706199407577515 -0.45160070061683655 -0.13992524147033691 0;
createNode animCurveTL -n "animCurveTL161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.30835866311523619 3 0.19133394046774699 
		6 0.19821774794352254 12 0.1893236295459288 14 0.24908098664912381 16 0.30363524914652262 
		21 0.31408772304664229;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 3;
	setAttr -s 7 ".kox[0:6]"  0.0085448911413550377 0.018155563622713089 
		0.830730140209198 0.052356265485286713 0.011663229204714298 0.035870615392923355 
		1;
	setAttr -s 7 ".koy[0:6]"  -0.99996346235275269 -0.99983519315719604 
		-0.55667531490325928 0.99862849712371826 0.99993199110031128 0.99935644865036011 
		0;
createNode animCurveTL -n "animCurveTL162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.2622628336448336 3 0.19299995626656291 
		6 0.54954193409052565 9 1.2996356198876935 12 0.62246938352266601 14 0.23353409709752179 
		16 0.14683604530459629 21 0.16676410758846061;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.049868706613779068;
	setAttr -s 8 ".kiy[7]"  0.99875575304031372;
	setAttr -s 8 ".kox[0:7]"  0.014436244033277035 0.0069617019034922123 
		0.0018072766251862049 0.027414208278059959 0.0015633263392373919 0.0028032688423991203 
		0.034924522042274475 0;
	setAttr -s 8 ".koy[0:7]"  -0.99989581108093262 0.99997574090957642 
		0.99999839067459106 0.99962413311004639 -0.99999874830245972 -0.99999606609344482 
		-0.99938994646072388 0;
createNode animCurveTL -n "animCurveTL163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.068555836957604935 3 0.6394125916309743 
		6 0.29976440453644604 9 0.50865006601203822 12 0.68793602880819527 14 0.66924505865301376 
		16 0.62946583335520612 21 0.60752603759332391;
	setAttr -s 8 ".kit[6:7]"  1 3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 1 
		3;
	setAttr -s 8 ".kix[6:7]"  0.01810171827673912 1;
	setAttr -s 8 ".kiy[6:7]"  -0.99983614683151245 0;
	setAttr -s 8 ".kox[0:7]"  0.0014124909648671746 0.0054299770854413509 
		0.015293112955987453 0.0051522916182875633 0.010377515107393265 0.022797714918851852 
		0.018101725727319717 1;
	setAttr -s 8 ".koy[0:7]"  0.99999898672103882 0.99998527765274048 
		-0.99988305568695068 0.99998670816421509 0.99994617700576782 -0.9997401237487793 
		-0.99983614683151245 0;
createNode animCurveTA -n "animCurveTA540";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 16.583176526244966 3 -25.583763553673762 
		6 25.249434491512854 9 -2.8579184401736151 12 -54.009883788188247 14 -51.517955068022381 
		16 -47.35706889890178 21 -47.030685128504309;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.13464118540287018 0.79759174585342407 
		0.45023587346076965 0.14309026300907135 0.19257199764251709 0.75412499904632568 
		0.94802320003509521 1;
	setAttr -s 8 ".koy[0:7]"  -0.99089443683624268 0.60319763422012329 
		0.89290964603424072 -0.98970961570739746 -0.98128283023834229 0.65673089027404785 
		0.31820115447044373 0;
createNode animCurveTA -n "animCurveTA541";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -4.9396511688497222 3 -4.6725436750344969 
		6 -4.6882558815768842 21 -21.733570087519642;
	setAttr -s 4 ".kit[2:3]"  1 3;
	setAttr -s 4 ".kot[0:3]"  1 9 1 3;
	setAttr -s 4 ".kix[2:3]"  0.99007970094680786 1;
	setAttr -s 4 ".kiy[2:3]"  -0.14050702750682831 0;
	setAttr -s 4 ".kox[0:3]"  0.99891507625579834 0.99975943565368652 
		0.99007964134216309 1;
	setAttr -s 4 ".koy[0:3]"  0.046568471938371658 0.021933101117610931 
		-0.14050711691379547 0;
createNode animCurveTA -n "animCurveTA542";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.4972445100027116 3 -0.27009592457168702 
		6 -0.16613472175511035 21 -0.22301602594868908;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[0:3]"  1 9 9 3;
	setAttr -s 4 ".kox[0:3]"  0.95557284355163574 0.98962831497192383 
		0.99999904632568359 1;
	setAttr -s 4 ".koy[0:3]"  -0.29475513100624084 -0.14365169405937195 
		0.0013694975059479475 0;
createNode animCurveTA -n "animCurveTA543";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 21 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA544";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 21 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA545";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 21 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA546";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 21 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA547";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 21 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA548";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 21 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA549";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 21 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA550";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 21 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA551";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 21 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA552";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 21 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA553";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 21 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA554";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 21 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 4 0 6 0 8 0 10 0 13 0 16 
		-0.10236215513657064 21 -0.40864513999961338;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 1 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  0.0032486931886523962;
	setAttr -s 9 ".kiy[8]"  -0.99999469518661499;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 0.019534742459654808 
		0.0065254904329776764 0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 -0.99980920553207397 
		-0.99997872114181519 0;
createNode animCurveTL -n "animCurveTL165";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 4 0 6 0 8 0 10 0 13 0 16 
		0.0021624372930286124 21 0.011617857068574339;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 1 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  0.10465537756681442;
	setAttr -s 9 ".kiy[8]"  0.99450856447219849;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 0.67899543046951294 
		0.22371417284011841 0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0.7341424822807312 
		0.97465479373931885 0;
createNode animCurveTL -n "animCurveTL166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 2 1 4 1 6 1 8 1 10 1 13 1 16 
		1.0089890667941415 21 0.94963589092223599;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 1 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  0.016762116923928261;
	setAttr -s 9 ".kiy[8]"  -0.9998595118522644;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 0.21718186140060425 
		0.052873693406581879 0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0.9761311411857605 
		-0.99860119819641113 0;
createNode animCurveTL -n "animCurveTL167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 4 0 6 0 8 0 10 0 13 0 16 
		0.34363883015479102 21 0.81996708794027429;
	setAttr -s 9 ".kit[8]"  3;
	setAttr -s 9 ".kot[0:8]"  1 1 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 0.0058199656195938587 
		0.0032521456014364958 1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0.99998307228088379 
		0.99999469518661499 0;
createNode animCurveTL -n "animCurveTL168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 4 0 6 0 8 0 10 0 13 0 16 
		0.0055379856130097086 21 0.039118356651539815;
	setAttr -s 9 ".kit[8]"  3;
	setAttr -s 9 ".kot[0:8]"  1 1 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 0.33967027068138123 
		0.068011343479156494 1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0.94054460525512695 
		0.9976845383644104 0;
createNode animCurveTL -n "animCurveTL169";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 2 1 4 1 6 1 8 1 10 1 13 1 16 
		0.95168228447545322 21 0.79745410839398134;
	setAttr -s 9 ".kit[8]"  3;
	setAttr -s 9 ".kot[0:8]"  1 1 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 0.041357271373271942 
		0.013164599426090717 1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 -0.99914443492889404 
		-0.99991333484649658 0;
createNode animCurveTL -n "animCurveTL170";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 21 0.13763618594322471;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  0.0072291940450668335;
	setAttr -s 2 ".kiy[1]"  0.99997389316558838;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.94619799383949099 3 0.37601797711823964 
		6 1.1324991865632972 9 1.6272006155651531 13 0.55961761296129864 16 0.27577008195572289 
		21 0.28031137988230137;
	setAttr -s 7 ".kit[2:6]"  1 9 9 1 1;
	setAttr -s 7 ".kot[0:6]"  1 9 1 9 9 1 5;
	setAttr -s 7 ".kix[2:6]"  0.0013053332222625613 0.0040729427710175514 
		0.0017265629721805453 0.019449412822723389 0.027205951511859894;
	setAttr -s 7 ".kiy[2:6]"  0.99999916553497314 -0.99999171495437622 
		-0.99999850988388062 -0.99981081485748291 0.99962985515594482;
	setAttr -s 7 ".kox[0:6]"  0.0014954658690840006 0.010734685696661472 
		0.0013053296133875847 0.0040729427710175514 0.0017265629721805453 0.019449405372142792 
		0;
	setAttr -s 7 ".koy[0:6]"  -0.99999886751174927 0.9999423623085022 
		0.99999916553497314 -0.99999171495437622 -0.99999850988388062 -0.99981081485748291 
		0;
createNode animCurveTL -n "animCurveTL172";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 21 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA555";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -40.029319794943724 3 -68.451750747979972 
		6 -85.680495078345473 9 -92.187033190510178 13 -71.008172105178176 16 -87.779721419068935 
		21 -86.635327210264862;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  0.65212386846542358;
	setAttr -s 7 ".kiy[6]"  0.75811243057250977;
	setAttr -s 7 ".kox[0:6]"  0.19761130213737488 0.24346257746219635 
		0.43477195501327515 0.673514723777771 0.94972294569015503 0.69909399747848511 
		0;
	setAttr -s 7 ".koy[0:6]"  -0.98028045892715454 -0.96991026401519775 
		-0.90054059028625488 0.73917382955551147 0.31309151649475098 -0.71502977609634399 
		0;
createNode animCurveTA -n "animCurveTA556";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.0437115357484497 3 9.5115082472260735 
		6 0.88499592456957155 13 0.88499592456957255 16 0.11784615400866637 21 1.4335928156981164;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  0.92349898815155029;
	setAttr -s 6 ".kiy[5]"  0.38360092043876648;
	setAttr -s 6 ".kox[0:5]"  0.44423186779022217 0.96885758638381958 
		0.91134661436080933 0.99919426441192627 0.99935603141784668 0;
	setAttr -s 6 ".koy[0:5]"  0.89591187238693237 0.24761863052845001 
		-0.41163986921310425 -0.040135502815246582 0.035882461816072464 0;
createNode animCurveTA -n "animCurveTA557";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.94178715813267944 3 -21.961150450352275 
		6 0.88511203159018581 13 0.88511203159018892 16 -0.98196057629406186 21 0.88505153303575668;
	setAttr -s 6 ".kit[0:5]"  9 9 1 1 9 1;
	setAttr -s 6 ".kot[1:5]"  9 1 1 9 5;
	setAttr -s 6 ".kix[2:5]"  0.89918690919876099 0.9437408447265625 
		1 0.86221945285797119;
	setAttr -s 6 ".kiy[2:5]"  0.43756473064422607 -0.33068591356277466 
		0 0.5065348744392395;
	setAttr -s 6 ".kox[0:5]"  0.26299029588699341 0.98752874135971069 
		0.89918690919876099 0.9437408447265625 1 0;
	setAttr -s 6 ".koy[0:5]"  -0.96479851007461548 0.15743878483772278 
		0.43756470084190369 -0.33068603277206421 0 0;
createNode animCurveTA -n "animCurveTA558";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 21 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA559";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 21 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA560";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 21 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA561";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 21 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA562";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 21 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA563";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 21 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA564";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 21 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA565";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 21 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA566";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 21 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA567";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 21 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA568";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 21 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA569";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 21 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA570";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 21 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA571";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 21 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA572";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 21 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA573";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 21 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA574";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 21 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA575";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 21 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA576";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 21 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA577";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 21 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA578";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 21 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA579";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 21 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA580";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 21 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA581";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 19 0 21 0;
	setAttr -s 4 ".kit[1:3]"  1 9 1;
	setAttr -s 4 ".kot[1:3]"  1 9 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA582";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 19 0 21 0;
	setAttr -s 4 ".kit[1:3]"  1 9 1;
	setAttr -s 4 ".kot[1:3]"  1 9 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA583";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 19 3.5440492335106843e-006 
		21 1.0579251312417479e-005;
	setAttr -s 4 ".kit[1:3]"  1 9 1;
	setAttr -s 4 ".kot[1:3]"  1 9 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.7861743581581293 3 -0.83908298236093926 
		6 -1.0557381358022293 9 -1.2109354603191338 12 -1.2486660599879524 14 -1.0536070522522352 
		16 -1.2355216250307488 21 -1.2355216250307488;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kox[0:7]"  0.018897134810686111 0.0074191903695464134 
		0.0053783990442752838 0.010366008616983891 0.010592957027256489 0.10091922432184219 
		0.012825478799641132 1;
	setAttr -s 8 ".koy[0:7]"  -0.99982142448425293 -0.99997246265411377 
		-0.99998551607131958 -0.99994629621505737 0.99994391202926636 0.99489462375640869 
		-0.99991774559020996 0;
createNode animCurveTL -n "animCurveTL174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.5230165938827278 3 1.4803302579491624 
		6 1.2402443631667466 9 2.1748441428250507 12 1.5259633822281666 14 0.80999868412677056 
		16 0.35282942294141956 21 0.35282942294141956;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kox[0:7]"  0.023420276120305061 0.0070726531557738781 
		0.0028796999249607325 0.0069997124373912811 0.0012211385183036327 0.0011365560349076986 
		0.0051038051024079323 1;
	setAttr -s 8 ".koy[0:7]"  -0.99972569942474365 -0.99997496604919434 
		0.99999582767486572 0.99997550249099731 -0.99999922513961792 -0.99999934434890747 
		-0.99998694658279419 0;
createNode animCurveTL -n "animCurveTL175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.018977579049605644 3 -0.19963289593854167 
		6 -0.40096858859985829 9 -0.65208881179394085 12 -0.28570312521538166 14 
		-0.12845818986585961 16 -0.48416228445127502 21 -0.48416228445127502;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kox[0:7]"  0.0045742983929812908 0.0047624614089727402 
		0.0044202767312526703 0.017348639667034149 0.0031828891951590776 0.0067182746715843678 
		0.0065596182830631733 1;
	setAttr -s 8 ".koy[0:7]"  -0.99998950958251953 -0.99998867511749268 
		-0.99999022483825684 0.99984949827194214 0.99999493360519409 -0.99997740983963013 
		-0.99997848272323608 0;
createNode animCurveTA -n "animCurveTA584";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -88.65938293907206 3 -130.6790582106976 
		6 -112.69797713377361 9 -97.993481800106395 12 -92.503425156365552 14 -74.2280201303372 
		16 -22.48552033169792 21 -50.361592792450381;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.1351044625043869 0.43030717968940735 
		0.33084431290626526 0.49352025985717773 0.37284129858016968 0.10846322774887085 
		0.48870953917503357 1;
	setAttr -s 8 ".koy[0:7]"  -0.99083137512207031 -0.90268254280090332 
		0.94368535280227661 0.86973428726196289 0.92789512872695923 0.99410045146942139 
		0.87244653701782227 0;
createNode animCurveTA -n "animCurveTA585";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 68.677487372193411 3 22.771608381805081 
		6 -3.4147325453489068 9 -17.133555429916075 12 -5.9987255095403107 14 1.404297420227349 
		16 -15.720290017498716 21 10.054523309489301;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.12385048717260361 0.15698061883449554 
		0.2760053277015686 0.97550606727600098 0.45793738961219788 0.61787480115890503 
		0.83957910537719727 1;
	setAttr -s 8 ".koy[0:7]"  -0.99230086803436279 -0.98760169744491577 
		-0.96115612983703613 -0.2199726402759552 0.88898444175720215 -0.78627651929855347 
		0.54323744773864746 0;
createNode animCurveTA -n "animCurveTA586";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -43.617946532176269 3 -84.828082405841712 
		6 56.304607458308475 9 -2.5692457028595719 12 -6.4015533124885318 14 -1.4062913484834452 
		16 24.267982054140464 21 2.6526871509000878;
	setAttr -s 8 ".kit[5:7]"  1 9 3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 1 9 
		3;
	setAttr -s 8 ".kix[5:7]"  0.49848887324333191 0.95687007904052734 
		1;
	setAttr -s 8 ".kiy[5:7]"  0.86689609289169312 0.29051616787910461 
		0;
	setAttr -s 8 ".kox[0:7]"  0.1377086341381073 0.11393361538648605 
		0.13797374069690704 0.17976666986942291 0.99266576766967773 0.49848887324333191 
		0.95687007904052734 1;
	setAttr -s 8 ".koy[0:7]"  -0.99047279357910156 0.9934883713722229 
		0.9904358983039856 -0.98370927572250366 0.12089110910892487 0.86689609289169312 
		0.29051616787910461 0;
createNode animCurveTL -n "animCurveTL176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.90273284438930912 3 1.0329615138163972 
		6 1.0423592695330282 9 0.85737230304910683 12 1.2625381879783688 14 1.1876307004933655 
		16 1.420900478582555 21 1.5863752002046139;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kox[0:7]"  0.0076785744167864323 0.014322467148303986 
		0.011389481835067272 0.0090831471607089043 0.0050464891828596592 0.0084192138165235519 
		0.0058515998534858227 0.010071520693600178;
	setAttr -s 8 ".koy[0:7]"  0.99997049570083618 0.99989742040634155 
		-0.99993515014648438 0.99995875358581543 0.99998724460601807 0.99996453523635864 
		0.99998289346694946 0.99994927644729614;
createNode animCurveTL -n "animCurveTL177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.3326142276032942 3 0.13129089564225555 
		6 1.0158296784890002 9 1.6429751939001125 12 1.2315261655338554 14 0.55513646707398379 
		16 0.31026717673790066 21 0.12980859841378997;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kox[0:7]"  0.00083241506945341825 0.0063133132643997669 
		0.0013230263721197844 0.0092718899250030518 0.0015320880338549614 0.001447293208912015 
		0.0054858815856277943 0.0092353355139493942;
	setAttr -s 8 ".koy[0:7]"  -0.99999964237213135 -0.99998009204864502 
		0.99999910593032837 0.99995702505111694 -0.99999880790710449 -0.99999892711639404 
		-0.9999849796295166 -0.9999573826789856;
createNode animCurveTL -n "animCurveTL178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.28676346452076534 3 -0.74888775781455141 
		6 -0.71250219041338869 9 -0.7160565329045272 12 -0.43048237790804617 14 -0.39365272716747512 
		16 -0.47154786138266036 21 -0.90890894826263013;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kox[0:7]"  0.0021639149636030197 0.0046976651065051556 
		0.060804896056652069 0.007091522216796875 0.0051694312132894993 0.032451368868350983 
		0.0045284447260200977 0.0038107060827314854;
	setAttr -s 8 ".koy[0:7]"  -0.99999767541885376 -0.99998897314071655 
		0.99814969301223755 0.99997484683990479 0.99998664855957031 -0.99947333335876465 
		-0.99998974800109863 -0.9999927282333374;
createNode animCurveTA -n "animCurveTA587";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 15.99130728599699 3 -8.5768791511066453 
		6 -39.714372455209897 9 -48.044134098609689 12 -44.662824674727609 14 -37.891355970734814 
		16 -31.327774861751749 21 -31.327774861751749;
	setAttr -s 8 ".kit[3:7]"  1 9 9 9 9;
	setAttr -s 8 ".kot[0:7]"  1 9 9 1 9 9 9 
		9;
	setAttr -s 8 ".kix[3:7]"  0.9400981068611145 0.68512654304504395 
		0.4970906674861908 0.89765143394470215 1;
	setAttr -s 8 ".kiy[3:7]"  0.34090405702590942 0.728424072265625 
		0.86769860982894897 0.44070619344711304 0;
	setAttr -s 8 ".kox[0:7]"  0.22711688280105591 0.20148997008800507 
		0.27883085608482361 0.9400983452796936 0.68512654304504395 0.4970906674861908 
		0.89765143394470215 1;
	setAttr -s 8 ".koy[0:7]"  -0.97386753559112549 -0.97949057817459106 
		-0.96034020185470581 0.34090328216552734 0.728424072265625 0.86769860982894897 
		0.44070619344711304 0;
createNode animCurveTA -n "animCurveTA588";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -11.102702618717139 3 3.5463242711900502 
		6 -2.9363764889567974 9 -5.2864169440339586 12 4.1638878847933727 14 7.159179153693799 
		16 1.5331587519928696 21 1.5331587519928696;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kox[0:7]"  0.36425322294235229 0.81436437368392944 
		0.79202216863632202 0.85004925727844238 0.60873955488204956 0.94550865888595581 
		0.9217103123664856 1;
	setAttr -s 8 ".koy[0:7]"  0.93129992485046387 0.58035385608673096 
		-0.61049234867095947 0.52670323848724365 0.79337012767791748 -0.32559689879417419 
		-0.38787904381752014 0;
createNode animCurveTA -n "animCurveTA589";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -58.622564880317491 3 -10.505676933567004 
		6 -44.646967032203442 9 -27.208714661547891 12 -14.783078777993577 14 -6.4216162905038168 
		16 -2.315047826080785 21 -2.315047826080785;
	setAttr -s 8 ".kit[3:7]"  1 9 9 9 9;
	setAttr -s 8 ".kot[0:7]"  1 9 9 1 9 9 9 
		9;
	setAttr -s 8 ".kix[3:7]"  0.26839521527290344 0.4174448549747467 
		0.52244973182678223 0.95591908693313599 1;
	setAttr -s 8 ".kiy[3:7]"  0.96330887079238892 0.90870225429534912 
		0.85267007350921631 0.29363024234771729 0;
	setAttr -s 8 ".kox[0:7]"  0.11824091523885727 0.63405197858810425 
		0.56571787595748901 0.26839521527290344 0.4174448549747467 0.52244973182678223 
		0.95591908693313599 1;
	setAttr -s 8 ".koy[0:7]"  0.99298495054244995 0.77329045534133911 
		-0.82459884881973267 0.96330887079238892 0.90870225429534912 0.85267007350921631 
		0.29363024234771729 0;
createNode animCurveTL -n "animCurveTL179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.95955701966258378 2 0.95955701966258378 
		4 0.95955701966258378 6 0.32058753429445025 8 0.32058753429445025 10 0.32058753429445025 
		13 0.23252723504128667 16 0.57660780102920417 19 0.38344418529439045 21 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.0017256498103961349;
	setAttr -s 10 ".kiy[9]"  -0.99999850988388062;
	setAttr -s 10 ".kox[0:9]"  1 1 0.0020866887643933296 0.0020866887643933296 
		1 0.018923034891486168 0.0078116431832313538 0.013251158408820629 0.0028904562350362539 
		0;
	setAttr -s 10 ".koy[0:9]"  0 0 -0.99999779462814331 -0.99999779462814331 
		0 -0.99982094764709473 0.999969482421875 0.99991220235824585 -0.99999582767486572 
		0;
createNode animCurveTL -n "animCurveTL180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.64030869588996853 2 -0.64030869588996853 
		4 -0.64030869588996853 6 0.13140964663256008 8 0.13140964663256008 10 0.13140964663256008 
		13 -1.132955211077957 16 -1.2342709116574349 19 -0.8207901511361605 21 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.00080616364721208811;
	setAttr -s 10 ".kiy[9]"  0.99999970197677612;
	setAttr -s 10 ".kox[0:9]"  1 1 0.0017277435399591923 0.0017277435399591923 
		1 0.0013181838439777493 0.0014644697075709701 0.0064067351631820202 0.0013503235531970859 
		0;
	setAttr -s 10 ".koy[0:9]"  0 0 0.99999850988388062 0.99999850988388062 
		0 -0.99999910593032837 -0.99999892711639404 0.99997949600219727 0.99999910593032837 
		0;
createNode animCurveTL -n "animCurveTL181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1.6499000421201597 2 -1.6499000421201597 
		4 -1.6499000421201597 6 -2.1764187959865144 8 -2.1764187959865144 10 -2.1764187959865144 
		13 -2.1132534744257123 16 -2.0595333664902054 19 -1.7045896843242372 21 -1;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.00093911553267389536;
	setAttr -s 10 ".kiy[9]"  0.99999958276748657;
	setAttr -s 10 ".kox[0:9]"  1 1 0.0025323487352579832 0.0025323487352579832 
		1 0.026376606896519661 0.017108269035816193 0.0048939399421215057 0.0015730175655335188 
		0;
	setAttr -s 10 ".koy[0:9]"  0 0 -0.99999678134918213 -0.99999678134918213 
		0 0.99965208768844604 0.99985367059707642 0.99998801946640015 0.99999874830245972 
		0;
createNode animCurveTL -n "animCurveTL182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.37518978153922194 2 -0.37518978153922194 
		4 -0.37518978153922194 6 -0.37518978153922194 8 -0.37518978153922194 10 -0.37518978153922178 
		13 -0.64723151790899636 16 -0.44472090212388388 21 -0.44472090212388388;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 0.0061263963580131531 
		0.028752205893397331 0.013166892342269421 1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 -0.99998122453689575 
		-0.99958658218383789 0.99991333484649658 0;
createNode animCurveTL -n "animCurveTL183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.0049486269609355501 2 -0.0049486269609355501 
		4 -0.0049486269609355501 6 -0.0049486269609355501 8 -0.0049486269609355501 
		10 1.0273194070033955 13 -0.032898776520877963 16 1.2439946116996796 21 1.2439946116996796;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 0.0012916530249640346 0.059524238109588623 
		0.0092300120741128922 0.0020883975084871054 1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0.99999916553497314 -0.99822688102722168 
		0.9999573826789856 0.99999779462814331 0;
createNode animCurveTL -n "animCurveTL184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -2.3299995351681959 2 -2.3299995351681959 
		4 -2.3299995351681959 6 -2.3299995351681959 8 -2.3299995351681959 10 -2.3299995351681959 
		13 -2.6328130576947384 16 -2.3149332509255429 21 -2.3149332509255429;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 0.0055038542486727238 
		0.13159236311912537 0.0083886198699474335 1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 -0.99998486042022705 
		0.99130392074584961 0.99996483325958252 0;
createNode animCurveTA -n "animCurveTA590";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.5555755750740079 4 -1.5555755750740079 
		8 -1.5555755750740079 10 -1.5555755750740079 13 -1.5555755750740079 16 34.264663304237622 
		21 43.31305561735428;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  0.056722782552242279;
	setAttr -s 7 ".kiy[6]"  0.99838995933532715;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 0.30469563603401184 0.32234787940979004 
		0;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0.95244979858398438 0.94662129878997803 
		0;
createNode animCurveTA -n "animCurveTA591";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.8362155502334307 4 -1.8362155502334307 
		8 -1.8362155502334307 10 -1.8362155502334307 13 -1.8362155502334307 16 7.4055204577428446 
		21 5.5328457016804613;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  0.8805229663848877;
	setAttr -s 7 ".kiy[6]"  0.47400346398353577;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 0.7783970832824707 0.90071189403533936 
		0;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0.62777227163314819 0.43441691994667053 
		0;
createNode animCurveTA -n "animCurveTA592";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -5.0323831593938717 4 -5.0323831593938717 
		8 -5.0323831593938717 10 -5.0323831593938717 13 -5.0323831593938717 16 -35.831608099274113 
		21 1.6451165553684832;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  0.11386196315288544;
	setAttr -s 7 ".kiy[6]"  0.9934965968132019;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 0.34870642423629761 0.91631162166595459 
		0;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 -0.93723201751708984 0.40046605467796326 
		0;
createNode animCurveTA -n "animCurveTA593";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -78.024183224002883 4 -78.024183224002883 
		8 -78.024183224002883 10 -78.024183224002883 13 -82.271526535810764 16 -19.503547881283428 
		19 -9.5485285219130649 21 12.106481619659668;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kox[0:7]"  1 1 1 0.91369748115539551 0.19216449558734894 
		0.15565215051174164 0.28918904066085815 0.17370797693729401;
	setAttr -s 8 ".koy[0:7]"  0 0 0 -0.40639504790306091 0.98136270046234131 
		0.98781192302703857 0.9572719931602478 0.98479717969894409;
createNode animCurveTA -n "animCurveTA594";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 27.204395537948077 4 27.204395537948077 
		8 27.204395537948077 10 27.204395537948077 13 -7.6001936217421484 16 6.7701654832508869 
		19 15.048249928854087 21 21.161305136813464;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kox[0:7]"  1 1 1 0.26459059119224548 0.48912274837493896 
		0.45146137475967407 0.55290323495864868 0.52990508079528809;
	setAttr -s 8 ".koy[0:7]"  0 0 0 -0.96436083316802979 -0.87221497297286987 
		0.89229065179824829 0.83324545621871948 0.84805697202682495;
createNode animCurveTA -n "animCurveTA595";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 24.297465729795011 4 24.297465729795011 
		8 24.297465729795011 10 24.297465729795011 13 4.2114658959171489 16 -8.639036593078675 
		19 -13.61889865582493 21 -21.207452285138618;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kox[0:7]"  1 1 1 0.42936667799949646 0.32859688997268677 
		0.54065006971359253 0.60497486591339111 0.4496077299118042;
	setAttr -s 8 ".koy[0:7]"  0 0 0 -0.90313023328781128 -0.94447028636932373 
		-0.84124761819839478 -0.79624456167221069 -0.89322614669799805;
createNode animCurveTA -n "animCurveTA596";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 68.327235470237881 4 68.327235470237881 
		8 68.327235470237881 10 68.327235470237881 13 68.327235470237881 16 16.597668453762086 
		21 9.342304586567403;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  0.34230345487594604;
	setAttr -s 7 ".kiy[6]"  -0.93958944082260132;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 0.21627746522426605 0.25075432658195496 
		0;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 -0.97633194923400879 -0.96805077791213989 
		0;
createNode animCurveTA -n "animCurveTA597";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 38.08722284185874 4 38.08722284185874 
		8 38.08722284185874 10 38.08722284185874 13 -16.235990381738052 16 16.318531771872284 
		21 14.326926958980692;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  0.94405287504196167;
	setAttr -s 7 ".kiy[6]"  -0.32979416847229004;
	setAttr -s 7 ".kox[0:6]"  1 1 1 0.17313204705715179 0.46580851078033447 
		0.44715309143066406 0;
	setAttr -s 7 ".koy[0:6]"  0 0 0 -0.98489862680435181 -0.88488554954528809 
		0.89445745944976807 0;
createNode animCurveTA -n "animCurveTA598";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 22.836699594643825 4 22.836699594643825 
		8 22.836699594643825 10 22.836699594643825 13 22.836699594643825 16 31.386824901382752 
		21 32.145951579643629;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 3;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 0.80148285627365112 0.853973388671875 
		1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0.59801775217056274 0.52031666040420532 
		0;
createNode animCurveTA -n "animCurveTA599";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 30.664763547309338 4 30.664763547309338 
		8 30.664763547309338 10 30.664763547309338 13 30.664763547309338 16 -18.594602046140011 
		21 2.4180200242859677;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 3;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 0.22657893598079681 0.47576677799224854 
		1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 -0.97399282455444336 -0.87957149744033813 
		0;
createNode animCurveTA -n "animCurveTA600";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.9136426523866348 4 8.9136426523866348 
		8 8.9136426523866348 10 8.9136426523866348 13 8.9136426523866348 16 -38.626314326368338 
		21 -14.081475378779396;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 3;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 0.23433122038841248 0.55341553688049316 
		1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 -0.972156822681427 -0.83290529251098633 
		0;
createNode animCurveTA -n "animCurveTA601";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 69.487218399018005 4 69.487218399018005 
		8 69.487218399018005 10 69.487218399018005 13 69.487218399018005 16 71.390818193217271 
		21 71.390818193217271;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 3;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 0.9864811897277832 0.99232780933380127 
		1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0.16387467086315155 0.12363443523645401 
		0;
createNode animCurveTA -n "animCurveTA602";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -9.4843470595736985 4 -9.4843470595736985 
		8 -9.4843470595736985 10 -9.4843470595736985 13 -9.4843470595736985 16 -9.2933896978321879 
		21 -9.2933896978321879;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 3;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 0.99986118078231812 0.99992191791534424 
		1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0.016661860048770905 0.01249715406447649 
		0;
createNode animCurveTA -n "animCurveTA603";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 10.820461089301046 4 10.820461089301046 
		8 10.820461089301046 10 10.820461089301046 13 10.820461089301046 16 10.87922428714811 
		21 10.87922428714811;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 3;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 0.99998682737350464 0.99999260902404785 
		1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0.0051279887557029724 0.0038460139185190201 
		0;
createNode animCurveTA -n "animCurveTA604";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -36.628454700917274 4 -36.628454700917274 
		8 -36.628454700917274 10 -36.628454700917274 13 -36.628454700917274 16 -36.628454700917274 
		19 0 21 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 0.29857796430587769 0.25227466225624084 
		0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0.95438522100448608 0.96765565872192383 
		0;
createNode animCurveTA -n "animCurveTA605";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 15.180891733866947 4 15.180891733866947 
		8 15.180891733866947 10 15.180891733866947 13 15.180891733866947 16 15.180891733866947 
		19 0 21 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 0.60246986150741577 0.53245216608047485 
		0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 -0.79814165830612183 
		-0.84646010398864746 0;
createNode animCurveTA -n "animCurveTA606";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.072787087017036858 4 -0.072787087017036858 
		8 -0.072787087017036858 10 -0.072787087017036858 13 -0.072787087017036858 
		16 -0.072787087017036858 19 0 21 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 0.99997985363006592 0.99997097253799438 
		0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0.0063517438247799873 
		0.0076220249757170677 0;
createNode animCurveTA -n "animCurveTA607";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 13 0 16 0 19 0 
		21 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA608";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 13 0 16 0 19 0 
		21 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA609";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -19.693819774835177 4 -19.693819774835177 
		8 -19.693819774835177 10 -19.693819774835177 13 -19.693819774835177 16 -19.693819774835177 
		19 -13.09639006863482 21 -3.9601632996738055e-016;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.27806839346885681;
	setAttr -s 8 ".kiy[7]"  0.96056127548217773;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 0.8666311502456665 0.4363023042678833 
		0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0.49894934892654419 0.89980012178421021 
		0;
createNode animCurveTA -n "animCurveTA610";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 21 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA611";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 21 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA612";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 21 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA613";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA614";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA615";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA616";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA617";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA618";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA619";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 13 0 16 0 19 0 
		21 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA620";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 13 0 16 0 19 0 
		21 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA621";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -14.841309524368913 4 -14.841309524368913 
		8 -14.841309524368913 10 -14.841309524368913 13 -14.841309524368913 16 -14.841309524368913 
		19 -9.8694707721883344 21 -1.0575965517952398e-015;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.35858869552612305;
	setAttr -s 8 ".kiy[7]"  0.93349564075469971;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 0.91737431287765503 0.54109650850296021 
		0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0.39802557229995728 0.84096050262451172 
		0;
createNode animCurveTA -n "mlh_Jaw_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "mlh_Jaw_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "mlh_Jaw_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA625";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 4.7918197052726175 8 4.5591828249418214 
		10 4.7833170665837326 13 4.7325518039215666 16 8.1349496097053766 19 -4.0476983905324735 
		21 -4.6297048981494937;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.99072861671447754;
	setAttr -s 8 ".kiy[7]"  -0.1358560174703598;
	setAttr -s 8 ".kox[0:7]"  0.84714138507843018 0.95824778079986572 
		0.99999970197677612 0.99983525276184082 0.95978856086730957 0.7937769889831543 
		0.59902822971343994 0;
	setAttr -s 8 ".koy[0:7]"  0.53136754035949707 0.28593903779983521 
		-0.00074199499795213342 0.018152166157960892 0.28072386980056763 -0.60820889472961426 
		-0.80072790384292603 0;
createNode animCurveTA -n "animCurveTA626";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 1.4764793631020883 10 
		0.28566343937078548 13 -0.75218135305261336 16 -2.7537431465968543 19 3.7435897561148375 
		21 0.35757313242625988;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.74480247497558594;
	setAttr -s 8 ".kiy[7]"  -0.66728502511978149;
	setAttr -s 8 ".kox[0:7]"  1 0.99536323547363281 0.99968940019607544 
		0.97383010387420654 0.96657782793045044 0.93091839551925659 0.9508056640625 
		0;
	setAttr -s 8 ".koy[0:7]"  0 0.096187278628349304 0.024921094998717308 
		-0.22727714478969574 -0.25637340545654297 0.36522725224494934 0.30978795886039734 
		0;
createNode animCurveTA -n "animCurveTA627";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 4.310474063255155 4 -15.766809066738281 
		8 -33.673896057993041 10 -19.176559487437476 13 -6.7563469975207218 16 -20.471962311720766 
		19 -4.1470664539879305 21 -8.3596211209238476;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.66990149021148682;
	setAttr -s 8 ".kiy[7]"  -0.74244999885559082;
	setAttr -s 8 ".kox[0:7]"  0.35562732815742493 0.37318238615989685 
		0.95846837759017944 0.3343447744846344 0.9936710000038147 0.97504216432571411 
		0.61912178993225098 0;
	setAttr -s 8 ".koy[0:7]"  -0.93462783098220825 -0.92775797843933105 
		-0.28519883751869202 0.94245082139968872 -0.11232975870370865 0.2220197319984436 
		0.78529495000839233 0;
createNode animCurveTA -n "animCurveTA628";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 13 0 16 -3.0740171407418018 
		19 0.029980910418396671 21 0.040577927395231195;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.99999892711639404;
	setAttr -s 8 ".kiy[7]"  -0.0014724535867571831;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 0.9658510684967041 0.9999966025352478 
		0.95070946216583252 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 -0.25909784436225891 0.0026163191068917513 
		0.3100830614566803 0;
createNode animCurveTA -n "animCurveTA629";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 13 0 16 2.3076901383638693 
		19 -0.25683851506160976 21 -0.76977674774379068;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.99095946550369263;
	setAttr -s 8 ".kiy[7]"  -0.13416150212287903;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 0.98031890392303467 0.99974888563156128 
		0.95179450511932373 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0.19742050766944885 -0.022407762706279755 
		-0.30673632025718689 0;
createNode animCurveTA -n "animCurveTA630";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 13 0 16 15.588984396133544 
		19 3.6679170614716807 21 10.949080790025388;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.46182680130004883;
	setAttr -s 8 ".kiy[7]"  0.8869701623916626;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 0.59227865934371948 0.9524003267288208 
		0.89944618940353394 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0.80573320388793945 0.30485016107559204 
		-0.43703153729438782 0;
createNode animCurveTA -n "animCurveTA631";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 4.2038555866233178 8 -1.241008731071926 
		10 -1.6954030068101675 13 2.6918182531793278 16 -2.9842254151555232 19 -19.484102958755525 
		21 -27.138591323308027;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.37918215990066528;
	setAttr -s 8 ".kiy[7]"  -0.92532205581665039;
	setAttr -s 8 ".kox[0:7]"  0.87611103057861328 0.99671757221221924 
		0.88909906148910522 0.92465204000473022 0.99373453855514526 0.45907053351402283 
		0.3676554262638092 0;
	setAttr -s 8 ".koy[0:7]"  0.48210939764976501 -0.080957219004631042 
		-0.45771482586860657 0.38081303238868713 -0.11176629364490509 -0.88839983940124512 
		-0.92996209859848022 0;
createNode animCurveTA -n "animCurveTA632";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 4.4455366758817503 8 5.9887576532727795 
		10 5.8766830721428818 13 5.4932723516333724 16 2.984546415247757 19 -38.561541064261156 
		21 -61.310693300052847;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.16501569747924805;
	setAttr -s 8 ".kiy[7]"  -0.98629093170166016;
	setAttr -s 8 ".kox[0:7]"  0.86431032419204712 0.93103444576263428 
		0.9922911524772644 0.99865657091140747 0.96959561109542847 0.25173476338386536 
		0.14691109955310822 0;
	setAttr -s 8 ".koy[0:7]"  0.50295895338058472 0.36493131518363953 
		0.12392832338809967 -0.051817391067743301 -0.24471287429332733 -0.96779626607894897 
		-0.98914968967437744 0;
createNode animCurveTA -n "animCurveTA633";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 9.348976144606322 4 34.478979385118755 
		8 -20.730427574963819 10 -25.1244986775014 13 17.15663421372809 16 -7.2368008974402107 
		19 11.620934253589757 21 16.177650372523711;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.51768350601196289;
	setAttr -s 8 ".kiy[7]"  0.85557222366333008;
	setAttr -s 8 ".kox[0:7]"  1 0.45287597179412842 0.18879891932010651 
		0.24440276622772217 0.53942197561264038 0.90043795108795166 0.37763860821723938 
		0;
	setAttr -s 8 ".koy[0:7]"  0 -0.89157354831695557 -0.98201578855514526 
		0.96967381238937378 0.84203559160232544 -0.43498444557189941 0.92595309019088745 
		0;
createNode animCurveTA -n "animCurveTA634";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 7.2773573828671791 4 7.0846805378393807 
		8 6.8657886252995093 10 7.2893960008875354 13 7.1522494975013204 16 8.771993342931081 
		19 6.9186800039746821 21 -5.8539557315110954e-016;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.47991108894348145;
	setAttr -s 8 ".kiy[7]"  -0.87731713056564331;
	setAttr -s 8 ".kox[0:7]"  0.99968206882476807 0.99963736534118652 
		0.99984043836593628 0.99955034255981445 0.99173390865325928 0.99979233741760254 
		0.73644417524337769 0;
	setAttr -s 8 ".koy[0:7]"  -0.025213323533535004 -0.026927344501018524 
		0.017861945554614067 0.029984623193740845 0.12831155955791473 -0.020378552377223969 
		-0.67649835348129272 0;
createNode animCurveTA -n "animCurveTA635";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.49428440924719735 4 1.7394456252307366 
		8 2.4684154184154328 10 0.26077877128866195 13 -1.4349096479040127 16 -0.77916130381215765 
		19 -0.99009465149979248 21 6.8877215410623677e-017;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.97268581390380859;
	setAttr -s 8 ".kiy[7]"  0.23212553560733795;
	setAttr -s 8 ".kox[0:7]"  0.9598119854927063 0.98171389102935791 
		0.99177712202072144 0.9256557822227478 0.99590730667114258 0.99924743175506592 
		0.99668776988983154 0;
	setAttr -s 8 ".koy[0:7]"  0.28064385056495667 0.19036242365837097 
		-0.12797695398330688 -0.37836664915084839 -0.090380474925041199 0.038788218051195145 
		0.081323325634002686 0;
createNode animCurveTA -n "animCurveTA636";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 18.701652569624674 4 1.1121617043574759 
		8 -4.844718352926602 10 12.799119397152772 13 26.122606478441053 16 19.921611297754559 
		19 -7.0637242616400782 21 -9.9115268575895019;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.79656004905700684;
	setAttr -s 8 ".kiy[7]"  -0.60455936193466187;
	setAttr -s 8 ".kox[0:7]"  0.39836788177490234 0.54433035850524902 
		0.70011359453201294 0.29467463493347168 0.84931081533432007 0.32638758420944214 
		0.30485367774963379 0;
	setAttr -s 8 ".koy[0:7]"  -0.91722571849822998 -0.83887094259262085 
		0.71403145790100098 0.9555976390838623 0.52789312601089478 -0.94523602724075317 
		-0.95239919424057007 0;
createNode animCurveTA -n "animCurveTA637";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 13 0 16 0 19 0 
		21 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA638";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 13 0 16 0 19 0 
		21 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA639";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 16.736721183175977 4 16.736721183175977 
		8 16.736721183175977 10 16.736721183175977 13 16.736721183175977 16 16.736721183175977 
		19 11.12991951743858 21 1.4846729860737935e-015;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.32243937253952026;
	setAttr -s 8 ".kiy[7]"  -0.9465901255607605;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 0.89824366569519043 0.49556982517242432 
		0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 -0.43949782848358154 
		-0.86856812238693237 0;
createNode animCurveTA -n "animCurveTA640";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -19.916813043140664 4 -19.916813043140664 
		8 -19.916813043140664 10 -19.916813043140664 13 -19.916813043140664 16 -19.916813043140664 
		19 -13.217899051206333 21 9.1612738626128094e-016;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.27631303668022156;
	setAttr -s 8 ".kiy[7]"  0.96106767654418945;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 0.86330610513687134 0.43233460187911987 
		0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0.50468063354492188 0.90171325206756592 
		0;
createNode animCurveTA -n "animCurveTA641";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.1381503000571307 4 2.1381503000571307 
		8 2.1381503000571307 10 2.1381503000571307 13 2.1381503000571307 16 2.1381503000571307 
		19 1.6693904686694991 21 -1.4892965867434119e-016;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.89342373609542847;
	setAttr -s 8 ".kiy[7]"  -0.44921493530273438;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 0.99916434288024902 0.97583770751953125 
		0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 -0.040872830897569656 
		-0.21849648654460907 0;
createNode animCurveTA -n "animCurveTA642";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -6.3333534086058805 4 -6.3333534086058805 
		8 -6.3333534086058805 10 -6.3333534086058805 13 -6.3333534086058805 16 -6.3333534086058805 
		19 -4.1327646733785404 21 2.7318468439120254e-016;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.68459600210189819;
	setAttr -s 8 ".kiy[7]"  0.72892272472381592;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 0.98205560445785522 0.8333708643913269 
		0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0.1885915994644165 0.55271422863006592 
		0;
createNode animCurveTA -n "animCurveTA643";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 13 0 16 0 19 0 
		21 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA644";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 13 0 16 0 19 0 
		21 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA645";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 17.545620107018433 4 17.545620107018433 
		8 17.545620107018433 10 17.545620107018433 13 17.545620107018433 16 17.545620107018433 
		19 11.667837298440938 21 -1.0653615778730345e-015;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.30902454257011414;
	setAttr -s 8 ".kiy[7]"  -0.95105403661727905;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 0.88977670669555664 0.47804009914398193 
		0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 -0.45639610290527344 
		-0.87833797931671143 0;
createNode clipLibrary -n "clipLibrary1";
	setAttr -s 156 ".cel[0].cev";
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
	setAttr ".o" 21;
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
connectAttr "mlh_fall_landSource.st" "clipLibrary1.st[0]";
connectAttr "mlh_fall_landSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL150.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL151.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL152.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL153.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL154.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA533.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU33.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU34.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU35.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU36.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU37.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU38.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU39.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU40.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA534.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA535.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA536.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL155.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL156.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL157.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL158.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL159.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL160.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA537.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA538.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA539.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL161.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL162.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL163.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA540.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA541.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA542.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA543.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA544.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA545.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA546.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA547.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA548.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA549.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA550.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA551.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA552.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA553.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA554.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL164.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL165.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL166.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL167.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL168.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL169.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL170.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL171.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL172.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA555.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA556.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA557.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA558.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA559.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA560.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA561.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA562.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA563.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA564.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA565.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA566.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA567.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA568.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA569.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA570.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA571.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA572.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA573.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA574.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA575.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA576.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA577.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA578.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA579.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA580.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA581.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA582.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA583.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL173.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL174.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL175.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA584.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA585.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA586.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL176.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL177.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL178.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA587.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA588.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA589.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL179.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL180.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL181.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL182.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL183.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL184.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA590.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA591.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA592.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA593.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA594.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA595.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA596.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA597.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA598.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA599.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA600.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA601.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA602.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA603.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA604.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA605.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA606.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA607.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA608.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA609.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA610.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA611.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA612.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA613.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA614.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA615.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA616.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA617.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA618.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA619.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA620.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA621.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "mlh_Jaw_rotateX.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "mlh_Jaw_rotateY.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "mlh_Jaw_rotateZ.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA625.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA626.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA627.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA628.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA629.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA630.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA631.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA632.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA633.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA634.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA635.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA636.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA637.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA638.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA639.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA640.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA641.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA642.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA643.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA644.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA645.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of mlh_fall_land.ma
