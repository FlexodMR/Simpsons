//Maya ASCII 4.0 scene
//Name: lsa_fall_land.ma
//Last modified: Fri, Oct 11, 2002 02:54:29 PM
requires maya "4.0";
requires "p3dmayaexp" "18.6";
requires "p3dSimpleShader" "18.6";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "lsa_fall_landSource";
	setAttr ".ihi" 0;
	setAttr ".du" 21;
	setAttr ".ci" no;
createNode animCurveTL -n "lsa_Extra_Attributes_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTL -n "lsa_Extra_Attributes_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 21 0.059636706081690555;
createNode animCurveTL -n "Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 21 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 21 0;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 21 0;
createNode animCurveTU -n "animCurveTU25";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 17.995000000000001 0 18 
		0 19 0 20 0 21 0;
	setAttr -s 7 ".kit[1:6]"  1 1 1 9 9 1;
	setAttr -s 7 ".kot[1:6]"  1 9 9 9 9 5;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  0 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTU -n "animCurveTU26";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 17.995000000000001 0 18 
		0 19 0 20 0 21 0;
	setAttr -s 7 ".kit[1:6]"  1 1 1 9 9 1;
	setAttr -s 7 ".kot[1:6]"  1 9 9 9 9 5;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  0 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTU -n "animCurveTU27";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 17.995000000000001 0 18 
		0 19 0 20 0 21 0;
	setAttr -s 7 ".kit[1:6]"  1 1 1 9 9 1;
	setAttr -s 7 ".kot[1:6]"  1 9 9 9 9 5;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  0 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTU -n "animCurveTU28";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 17.995000000000001 0 18 
		0 19 0 20 0 21 0;
	setAttr -s 7 ".kit[1:6]"  1 1 1 9 9 1;
	setAttr -s 7 ".kot[1:6]"  1 9 9 9 9 5;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  0 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTU -n "animCurveTU29";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 16 0 21 1;
	setAttr -s 4 ".kit[1:3]"  3 9 3;
	setAttr -s 4 ".kot[0:3]"  1 1 9 3;
	setAttr -s 4 ".kox[0:3]"  1 1 0.53505206108093262 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0.84481906890869141 0;
createNode animCurveTU -n "animCurveTU30";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 16 0 21 1;
	setAttr -s 4 ".kit[1:3]"  3 9 3;
	setAttr -s 4 ".kot[0:3]"  1 1 9 3;
	setAttr -s 4 ".kox[0:3]"  1 1 0.53505206108093262 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0.84481906890869141 0;
createNode animCurveTU -n "animCurveTU31";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 2 1 16 1 21 0;
	setAttr -s 4 ".kit[1:3]"  3 9 3;
	setAttr -s 4 ".kot[0:3]"  1 1 9 3;
	setAttr -s 4 ".kox[0:3]"  1 1 0.53505206108093262 1;
	setAttr -s 4 ".koy[0:3]"  0 0 -0.84481906890869141 0;
createNode animCurveTU -n "animCurveTU32";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 2 1 16 1 21 0;
	setAttr -s 4 ".kit[1:3]"  3 9 3;
	setAttr -s 4 ".kot[0:3]"  1 1 9 3;
	setAttr -s 4 ".kox[0:3]"  1 1 0.53505206108093262 1;
	setAttr -s 4 ".koy[0:3]"  0 0 -0.84481906890869141 0;
createNode animCurveTA -n "animCurveTA427";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA428";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA429";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTL -n "lsa_Hoop_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTL -n "lsa_Hoop_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTL -n "lsa_Hoop_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTL -n "animCurveTL123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.24991649100183089 3 -0.42414407797394071 
		6 -0.41389539605363701 9 -0.4315597834710963 12 -0.4587884833822401 14 -0.39749925518784152 
		16 -0.31229206839602547 21 -0.23484864491092097;
	setAttr -s 8 ".kit[6:7]"  1 3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 1 
		3;
	setAttr -s 8 ".kix[6:7]"  0.0096122138202190399 1;
	setAttr -s 8 ".kiy[6:7]"  0.99995380640029907 0;
	setAttr -s 8 ".kox[0:7]"  0.0057395249605178833 0.012195782735943794 
		0.26039394736289978 0.044506143778562546 0.048874016851186752 0.0091010965406894684 
		0.009612254798412323 1;
	setAttr -s 8 ".koy[0:7]"  -0.99998354911804199 -0.99992561340332031 
		-0.96550244092941284 -0.99900913238525391 0.99880492687225342 0.9999585747718811 
		0.99995380640029907 0;
createNode animCurveTL -n "animCurveTL124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.89984347220340943 3 0.30620813901057398 
		6 0.75042615370475874 9 1.2461990012116864 12 0.76146333434924007 14 0.28777788611288713 
		16 0.17322535761726618 21 0.18407761067571052;
	setAttr -s 8 ".kit[2:7]"  1 9 9 9 9 1;
	setAttr -s 8 ".kot[0:7]"  1 9 1 9 9 9 9 
		5;
	setAttr -s 8 ".kix[2:7]"  0.0014632011298090219 0.17830201983451843 
		0.001738968538120389 0.0022666503209620714 0.022495049983263016 0.091305315494537354;
	setAttr -s 8 ".kiy[2:7]"  0.99999892711639404 0.98397582769393921 
		-0.99999850988388062 -0.99999743700027466 -0.99974697828292847 0.9958229660987854;
	setAttr -s 8 ".kox[0:7]"  0.0016845335485413671 0.013384130783379078 
		0.0014631885569542646 0.17830201983451843 0.001738968538120389 0.0022666503209620714 
		0.022495049983263016 0;
	setAttr -s 8 ".koy[0:7]"  -0.99999856948852539 -0.99991041421890259 
		0.99999892711639404 0.98397582769393921 -0.99999850988388062 -0.99999743700027466 
		-0.99974697828292847 0;
createNode animCurveTL -n "animCurveTL125";
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
createNode animCurveTA -n "animCurveTA430";
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
createNode animCurveTA -n "animCurveTA431";
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
createNode animCurveTA -n "animCurveTA432";
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
createNode animCurveTL -n "animCurveTL126";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.30835866311523619 3 0.19133394046774699 
		6 0.19821774794352254 12 0.1893236295459288 14 0.24908098664912381 16 0.35933680293224107 
		21 0.43503966840991665;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 3;
	setAttr -s 7 ".kox[0:6]"  0.0085448911413550377 0.018155563622713089 
		0.830730140209198 0.052356265485286713 0.0078422883525490761 0.012546602636575699 
		1;
	setAttr -s 7 ".koy[0:6]"  -0.99996346235275269 -0.99983519315719604 
		-0.55667531490325928 0.99862849712371826 0.9999692440032959 0.99992126226425171 
		0;
createNode animCurveTL -n "animCurveTL127";
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
createNode animCurveTL -n "animCurveTL128";
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
createNode animCurveTA -n "animCurveTA433";
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
createNode animCurveTA -n "animCurveTA434";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -4.9396511688497222 3 -4.6725436750344969 
		6 -4.6882558815768842 18 -19.786903652511576 21 -21.733570087519642;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 3;
	setAttr -s 5 ".kot[1:4]"  9 1 1 3;
	setAttr -s 5 ".kix[2:4]"  0.99007970094680786 0.77060574293136597 
		1;
	setAttr -s 5 ".kiy[2:4]"  -0.14050702750682831 -0.63731217384338379 
		0;
	setAttr -s 5 ".kox[0:4]"  0.99891507625579834 0.99975943565368652 
		0.99007964134216309 0.77060538530349731 1;
	setAttr -s 5 ".koy[0:4]"  0.046568471938371658 0.021933101117610931 
		-0.14050711691379547 -0.63731259107589722 0;
createNode animCurveTA -n "animCurveTA435";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.4972445100027116 3 -0.27009592457168702 
		6 -0.16613472175511035 15 -0.16613472175511307 21 -0.22301602594868908;
	setAttr -s 5 ".kit[3:4]"  1 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 1 3;
	setAttr -s 5 ".kix[3:4]"  0.99997091293334961 1;
	setAttr -s 5 ".kiy[3:4]"  0.0076245926320552826 0;
	setAttr -s 5 ".kox[0:4]"  0.95557284355163574 0.98962831497192383 
		0.99998968839645386 0.99997091293334961 1;
	setAttr -s 5 ".koy[0:4]"  -0.29475513100624084 -0.14365169405937195 
		0.0045361164957284927 0.007624585647135973 0;
createNode animCurveTA -n "animCurveTA436";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA437";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA438";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA439";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA440";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA441";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA442";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA443";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA444";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA445";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA446";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA447";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 2 0 4 0 6 0 8 0 10 0 13 0 16 
		-0.10236215513657064 17.995000000000001 -0.10236215513657064 18 -0.10236215513657064 
		19 -0.20496695633522813 20 -0.30604033880095594 21 -0.40864513999961338;
	setAttr -s 13 ".kit[8:12]"  1 1 9 9 1;
	setAttr -s 13 ".kot[0:12]"  1 1 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[8:12]"  1 1 0.003273119917139411 0.003273119917139411 
		0.0032486931886523962;
	setAttr -s 13 ".kiy[8:12]"  0 0 -0.99999463558197021 -0.99999463558197021 
		-0.99999469518661499;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 0.019534742459654808 
		0.016263626515865326 1 0.0032649370841681957 0.003273119917139411 0.003273119917139411 
		0.0032486931886523962;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 -0.99980920553207397 
		-0.99986773729324341 0 -0.99999469518661499 -0.99999463558197021 -0.99999463558197021 
		-0.99999469518661499;
createNode animCurveTL -n "animCurveTL130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 2 0 4 0 6 0 8 0 10 0 13 0 16 
		0.0021624372930286124 17.995000000000001 0.0021624372930286124 18 0.0021624372930286124 
		19 0.0053300029570289989 20 0.0084502914045739546 21 0.011617857068574339;
	setAttr -s 13 ".kit[8:12]"  1 1 9 9 1;
	setAttr -s 13 ".kot[0:12]"  1 1 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[8:12]"  1 1 0.10543357580900192 0.10543357580900192 
		0.10465537756681442;
	setAttr -s 13 ".kiy[8:12]"  0 0 0.99442636966705322 0.99442636966705322 
		0.99450856447219849;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 0.67899543046951294 
		0.61007595062255859 1 0.10517290234565735 0.10543357580900192 0.10543357580900192 
		0.10465537756681442;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0.7341424822807312 
		0.79234296083450317 0 0.99445396661758423 0.99442636966705322 0.99442636966705322 
		0.99450856447219849;
createNode animCurveTL -n "animCurveTL131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 2 1 4 1 6 1 8 1 10 1 13 1 16 
		1.0089890667941415 17.995000000000001 1.0089890667941415 18 1.0089890667941415 
		19 0.98910575263103517 20 0.96951920508534228 21 0.94963589092223599;
	setAttr -s 13 ".kit[8:12]"  1 1 9 9 1;
	setAttr -s 13 ".kot[0:12]"  1 1 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[8:12]"  1 1 0.016888115555047989 0.016888115555047989 
		0.016762116923928261;
	setAttr -s 13 ".kiy[8:12]"  0 0 -0.99985736608505249 -0.99985736608505249 
		-0.9998595118522644;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 0.21718186140060425 
		0.18212711811065674 1 0.016845908015966415 0.016888115555047989 0.016888115555047989 
		0.016762116923928261;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0.9761311411857605 
		0.98327499628067017 0 -0.99985808134078979 -0.99985736608505249 -0.99985736608505249 
		-0.9998595118522644;
createNode animCurveTL -n "animCurveTL132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 2 0 4 0 6 0 8 0 10 0 13 0 16 
		0.10227972129613595 17.995000000000001 0.10227972129613595 18 0.10227972129613595 
		19 0.34270499209672523 20 0.57954181713968522 21 0.81996708794027429;
	setAttr -s 13 ".kit[8:12]"  1 1 9 9 1;
	setAttr -s 13 ".kot[0:12]"  1 1 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[8:12]"  1 1 0.001396855222992599 0.001396855222992599 
		0.0013864306965842843;
	setAttr -s 13 ".kiy[8:12]"  0 0 0.99999904632568359 0.99999904632568359 
		0.99999904632568359;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 0.01955047994852066 
		0.016276730224490166 1 0.0013933629961684346 0.001396855222992599 0.001396855222992599 
		0.0013864306965842843;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0.99980884790420532 
		0.99986749887466431 0 0.99999904632568359 0.99999904632568359 0.99999904632568359 
		0.99999904632568359;
createNode animCurveTL -n "animCurveTL133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 2 0 4 0 6 0 8 0 10 0 13 0 16 
		0.00030092974962837795 17.995000000000001 0.00030092974962837795 18 0.00030092974962837795 
		19 0.013304767922666336 20 0.026114518478501863 21 0.039118356651539815;
	setAttr -s 13 ".kit[8:12]"  1 1 9 9 1;
	setAttr -s 13 ".kot[0:12]"  1 1 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[8:12]"  1 1 0.025817582383751869 0.025817582383751869 
		0.025625035166740417;
	setAttr -s 13 ".kiy[8:12]"  0 0 0.99966669082641602 0.99966669082641602 
		0.99967163801193237;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 0.9888688325881958 
		0.98405635356903076 1 0.025753078982234001 0.025817582383751869 0.025817582383751869 
		0.025625035166740417;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0.14879003167152405 
		0.17785695195198059 0 0.99966835975646973 0.99966669082641602 0.99966669082641602 
		0.99967163801193237;
createNode animCurveTL -n "animCurveTL134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 2 1 4 1 6 1 8 1 10 1 13 1 16 
		0.99161230204462225 17.995000000000001 0.99161230204462225 18 0.99161230204462225 
		19 0.92656930636687496 20 0.86249710407172875 21 0.79745410839398134;
	setAttr -s 13 ".kit[8:12]"  1 1 9 9 1;
	setAttr -s 13 ".kot[0:12]"  1 1 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[8:12]"  1 1 0.0051632788963615894 0.0051632788963615894 
		0.0051247468218207359;
	setAttr -s 13 ".kiy[8:12]"  0 0 -0.99998664855957031 -0.99998664855957031 
		-0.99998688697814941;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 0.23194196820259094 
		0.19470594823360443 1 0.0051503707654774189 0.0051632788963615894 0.0051632788963615894 
		0.0051247468218207359;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 -0.97272962331771851 
		-0.98086166381835938 0 -0.99998670816421509 -0.99998664855957031 -0.99998664855957031 
		-0.99998688697814941;
createNode animCurveTL -n "animCurveTL135";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 21 0.13763618594322471;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  0.0072291940450668335;
	setAttr -s 2 ".kiy[1]"  0.99997389316558838;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.0447051728969081 3 0.37601797711823964 
		6 1.2220511675245858 9 1.6272006155651531 13 0.55961761296129864 16 0.27577008195572289 
		21 0.28031137988230137;
	setAttr -s 7 ".kit[2:6]"  1 9 9 1 1;
	setAttr -s 7 ".kot[0:6]"  1 9 1 9 9 1 5;
	setAttr -s 7 ".kix[2:6]"  0.0013053332222625613 0.0035223441664129496 
		0.0017265629721805453 0.019449412822723389 0.027205951511859894;
	setAttr -s 7 ".kiy[2:6]"  0.99999916553497314 -0.99999380111694336 
		-0.99999850988388062 -0.99981081485748291 0.99962985515594482;
	setAttr -s 7 ".kox[0:6]"  0.0014954658690840006 0.011276673525571823 
		0.0013053296133875847 0.0035223441664129496 0.0017265629721805453 0.019449405372142792 
		0;
	setAttr -s 7 ".koy[0:6]"  -0.99999886751174927 0.99993640184402466 
		0.99999916553497314 -0.99999380111694336 -0.99999850988388062 -0.99981081485748291 
		0;
createNode animCurveTL -n "animCurveTL137";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 21 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA448";
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
createNode animCurveTA -n "animCurveTA449";
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
createNode animCurveTA -n "animCurveTA450";
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
createNode animCurveTA -n "animCurveTA451";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA452";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA453";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA454";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA455";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA456";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA457";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA458";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA459";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA460";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA461";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA462";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA463";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA464";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA465";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA466";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA467";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA468";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA469";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA470";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA471";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA472";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA473";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA474";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 17.995000000000001 0 18 
		0 19 0 20 0 21 0;
	setAttr -s 7 ".kit[1:6]"  1 1 1 9 9 1;
	setAttr -s 7 ".kot[1:6]"  1 9 9 9 9 5;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA475";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 17.995000000000001 0 18 
		0 19 0 20 0 21 0;
	setAttr -s 7 ".kit[1:6]"  1 1 1 9 9 1;
	setAttr -s 7 ".kot[1:6]"  1 9 9 9 9 5;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA476";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 17.995000000000001 0 18 
		0 19 3.5440492335106843e-006 20 7.0352020789067929e-006 21 1.0579251312417479e-005;
	setAttr -s 7 ".kit[1:6]"  1 1 1 9 9 1;
	setAttr -s 7 ".kot[1:6]"  1 9 9 9 9 5;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.7861743581581293 3 -0.83908298236093926 
		6 -1.0557381358022293 9 -1.2109354603191338 12 -1.2486660599879524 14 -1.0536070522522352 
		16 -1.2355216250307488 21 -1.2091044398151038;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.018897134810686111 0.0074191903695464134 
		0.0053783990442752838 0.010366008616983891 0.010592957027256489 0.10091922432184219 
		0.015003921464085579 1;
	setAttr -s 8 ".koy[0:7]"  -0.99982142448425293 -0.99997246265411377 
		-0.99998551607131958 -0.99994629621505737 0.99994391202926636 0.99489462375640869 
		-0.99988740682601929 0;
createNode animCurveTL -n "animCurveTL139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.5230165938827278 3 1.4803302579491624 
		6 1.2402443631667466 9 1.9605678556997113 12 1.5259633822281666 14 0.80999868412677056 
		16 0.35282942294141956 21 0.33550292997445363;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.023420276120305061 0.0070726531557738781 
		0.004164569079875946 0.0069997124373912811 0.0014485568972304463 0.0011365560349076986 
		0.00491744140163064 1;
	setAttr -s 8 ".koy[0:7]"  -0.99972569942474365 -0.99997496604919434 
		0.99999135732650757 0.99997550249099731 -0.99999892711639404 -0.99999934434890747 
		-0.9999879002571106 0;
createNode animCurveTL -n "animCurveTL140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.018977579049605644 3 -0.19963289593854167 
		6 -0.40096858859985829 9 -0.65208881179394085 12 -0.28570312521538166 14 
		-0.12845818986585961 16 -0.48416228445127502 21 -0.72089257487530589;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.0045742983929812908 0.0047624614089727402 
		0.0044202767312526703 0.017348639667034149 0.0031828891951590776 0.0067182746715843678 
		0.0039385207928717136 1;
	setAttr -s 8 ".koy[0:7]"  -0.99998950958251953 -0.99998867511749268 
		-0.99999022483825684 0.99984949827194214 0.99999493360519409 -0.99997740983963013 
		-0.9999922513961792 0;
createNode animCurveTA -n "animCurveTA477";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -88.65938293907206 3 -130.6790582106976 
		6 -112.69797713377361 9 -97.993481800106395 12 -92.503425156365552 14 -74.2280201303372 
		16 -50.361592792450381 21 -7.3664460738782269;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.1351044625043869 0.43030717968940735 
		0.33084431290626526 0.49352025985717773 0.37284129858016968 0.17837202548980713 
		0.19606959819793701 1;
	setAttr -s 8 ".koy[0:7]"  -0.99083137512207031 -0.90268254280090332 
		0.94368535280227661 0.86973428726196289 0.92789512872695923 0.98396313190460205 
		0.98058998584747314 0;
createNode animCurveTA -n "animCurveTA478";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 68.677487372193411 3 22.771608381805081 
		6 -3.4147325453489068 9 -17.133555429916075 12 -5.9987255095403107 14 1.404297420227349 
		16 10.054523309489301 21 34.342009411411716;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.12385048717260361 0.15698061883449554 
		0.2760053277015686 0.97550606727600098 0.45793738961219788 0.42970582842826843 
		0.376088947057724 1;
	setAttr -s 8 ".koy[0:7]"  -0.99230086803436279 -0.98760169744491577 
		-0.96115612983703613 -0.2199726402759552 0.88898444175720215 0.90296894311904907 
		0.92658358812332153 0;
createNode animCurveTA -n "animCurveTA479";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -43.617946532176269 3 -84.828082405841712 
		6 56.304607458308475 9 -2.5692457028595719 12 -6.4015533124885318 14 -1.4062913484834449 
		16 2.6526871509000878 21 1.5963559061070098;
	setAttr -s 8 ".kit[5:7]"  1 9 3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 1 9 
		3;
	setAttr -s 8 ".kix[5:7]"  0.49848887324333191 0.97569376230239868 
		1;
	setAttr -s 8 ".kiy[5:7]"  0.86689609289169312 0.21913838386535645 
		0;
	setAttr -s 8 ".kox[0:7]"  0.1377086341381073 0.11393361538648605 
		0.13797374069690704 0.17976666986942291 0.99266576766967773 0.49848887324333191 
		0.97569376230239868 1;
	setAttr -s 8 ".koy[0:7]"  -0.99047279357910156 0.9934883713722229 
		0.9904358983039856 -0.98370927572250366 0.12089110910892487 0.86689609289169312 
		0.21913838386535645 0;
createNode animCurveTL -n "animCurveTL141";
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
createNode animCurveTL -n "animCurveTL142";
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
createNode animCurveTL -n "animCurveTL143";
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
createNode animCurveTA -n "animCurveTA480";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 15.99130728599699 3 -8.5768791511066453 
		6 -16.450920025341933 9 -28.3848785240734 12 -30.901345772552197 14 -37.891355970734814 
		16 -31.327774861751749 21 -31.327774861751749;
	setAttr -s 8 ".kit[3:7]"  1 9 9 9 9;
	setAttr -s 8 ".kot[0:7]"  1 9 9 1 9 9 9 
		9;
	setAttr -s 8 ".kix[3:7]"  0.9400981068611145 0.70869386196136475 
		0.99844574928283691 0.89765143394470215 1;
	setAttr -s 8 ".kiy[3:7]"  0.34090405702590942 -0.70551609992980957 
		-0.05573267862200737 0.44070619344711304 0;
	setAttr -s 8 ".kox[0:7]"  0.22711688280105591 0.33305162191390991 
		0.50075370073318481 0.9400983452796936 0.70869386196136475 0.99844574928283691 
		0.89765143394470215 1;
	setAttr -s 8 ".koy[0:7]"  -0.97386753559112549 -0.94290858507156372 
		-0.86558979749679565 0.34090328216552734 -0.70551609992980957 -0.05573267862200737 
		0.44070619344711304 0;
createNode animCurveTA -n "animCurveTA481";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -11.102702618717137 3 3.5463242711900502 
		6 -2.9363764889567974 9 -5.2864169440339586 12 4.1638878847933718 14 7.159179153693799 
		16 1.5331587519928696 21 1.5331587519928696;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kox[0:7]"  0.36425322294235229 0.81436437368392944 
		0.79202216863632202 0.85004925727844238 0.60873955488204956 0.94550865888595581 
		0.9217103123664856 1;
	setAttr -s 8 ".koy[0:7]"  0.93129992485046387 0.58035385608673096 
		-0.61049234867095947 0.52670323848724365 0.79337012767791748 -0.32559689879417419 
		-0.38787904381752014 0;
createNode animCurveTA -n "animCurveTA482";
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
createNode animCurveTL -n "animCurveTL144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.95955701966258378 2 0.95955701966258378 
		4 0.95955701966258378 6 0.32058753429445025 8 0.32058753429445025 10 0.32058753429445025 
		13 0.23252723504128667 16 0.57660780102920417 17.995000000000001 0.57660780102920417 
		18 0.57660780102920417 19 0.38344418529439045 20 0.19316361573481358 21 0;
	setAttr -s 13 ".kit[8:12]"  1 1 9 9 1;
	setAttr -s 13 ".kot[0:12]"  1 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[8:12]"  1 1 0.0017386251129209995 0.0017386251129209995 
		0.0017256498103961349;
	setAttr -s 13 ".kiy[8:12]"  0 0 -0.99999850988388062 -0.99999850988388062 
		-0.99999850988388062;
	setAttr -s 13 ".kox[0:12]"  1 1 0.0020866887643933296 0.0020866887643933296 
		1 0.018923034891486168 0.0078116431832313538 0.0048389262519776821 1 0.0017342785140499473 
		0.0017386251129209995 0.0017386251129209995 0.0017256498103961349;
	setAttr -s 13 ".koy[0:12]"  0 0 -0.99999779462814331 -0.99999779462814331 
		0 -0.99982094764709473 0.999969482421875 0.99998831748962402 0 -0.99999850988388062 
		-0.99999850988388062 -0.99999850988388062 -0.99999850988388062;
createNode animCurveTL -n "animCurveTL145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.64030869588996853 2 -0.64030869588996853 
		4 -0.64030869588996853 6 0.13140964663256008 8 0.13140964663256008 10 0.13140964663256008 
		13 -1.132955211077957 16 -1.2342709116574349 17.995000000000001 -1.2342709116574349 
		18 -1.2342709116574349 19 -0.8207901511361605 20 -0.41348076052127414 21 
		0;
	setAttr -s 13 ".kit[8:12]"  1 1 9 9 1;
	setAttr -s 13 ".kot[0:12]"  1 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[8:12]"  1 1 0.00081222521839663386 0.00081222521839663386 
		0.00080616364721208811;
	setAttr -s 13 ".kiy[8:12]"  0 0 0.99999964237213135 0.99999964237213135 
		0.99999970197677612;
	setAttr -s 13 ".kox[0:12]"  1 1 0.0017277435399591923 0.0017277435399591923 
		1 0.0013181838439777493 0.0014644697075709701 0.01643156073987484 1 0.00081019458593800664 
		0.00081222521839663386 0.00081222521839663386 0.00080616364721208811;
	setAttr -s 13 ".koy[0:12]"  0 0 0.99999850988388062 0.99999850988388062 
		0 -0.99999910593032837 -0.99999892711639404 -0.99986499547958374 0 0.99999964237213135 
		0.99999964237213135 0.99999964237213135 0.99999970197677612;
createNode animCurveTL -n "animCurveTL146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -1.6499000421201597 2 -1.6499000421201597 
		4 -1.6499000421201597 6 -2.1764187959865144 8 -2.1764187959865144 10 -2.1764187959865144 
		13 -2.1132534744257123 16 -2.0595333664902054 17.995000000000001 -2.0595333664902054 
		18 -2.0595333664902054 19 -1.7045896843242372 20 -1.3549436821659679 21 -1;
	setAttr -s 13 ".kit[8:12]"  1 1 9 9 1;
	setAttr -s 13 ".kot[0:12]"  1 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[8:12]"  1 1 0.000946176762226969 0.000946176762226969 
		0.00093911553267389536;
	setAttr -s 13 ".kiy[8:12]"  0 0 0.9999995231628418 0.9999995231628418 
		0.99999958276748657;
	setAttr -s 13 ".kox[0:12]"  1 1 0.0025323487352579832 0.0025323487352579832 
		1 0.026376606896519661 0.017108269035816193 0.030979106202721596 1 0.00094381120288744569 
		0.000946176762226969 0.000946176762226969 0.00093911553267389536;
	setAttr -s 13 ".koy[0:12]"  0 0 -0.99999678134918213 -0.99999678134918213 
		0 0.99965208768844604 0.99985367059707642 0.99952000379562378 0 0.99999958276748657 
		0.9999995231628418 0.9999995231628418 0.99999958276748657;
createNode animCurveTL -n "animCurveTL147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.37518978153922194 2 -0.37518978153922194 
		4 -0.37518978153922194 6 -0.37518978153922194 8 -0.37518978153922194 10 -0.37518978153922178 
		13 -0.64723151790899636 16 -0.44472090212388388 21 0;
	setAttr -s 9 ".kit[8]"  3;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 0.0061263963580131531 
		0.028752205893397331 0.0041200774721801281 1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 -0.99998122453689575 
		-0.99958658218383789 0.99999153614044189 0;
createNode animCurveTL -n "animCurveTL148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.0049486269609355501 2 -0.0049486269609355501 
		4 -0.0049486269609355501 6 -0.0049486269609355501 8 -0.0049486269609355501 
		10 1.0273194070033955 13 -0.032898776520877963 16 1.2439946116996796 21 0;
	setAttr -s 9 ".kit[8]"  3;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 0.0012916530249640346 0.059524238109588623 
		0.0092300120741128922 0.080791741609573364 1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0.99999916553497314 -0.99822688102722168 
		0.9999573826789856 0.9967309832572937 0;
createNode animCurveTL -n "animCurveTL149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -2.3299995351681959 2 -2.3299995351681959 
		4 -2.3299995351681959 6 -2.3299995351681959 8 -2.3299995351681959 10 -2.3299995351681959 
		13 -2.6328130576947384 16 -2.3149332509255429 21 -1;
	setAttr -s 9 ".kit[8]"  3;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 0.0055038542486727238 
		0.13159236311912537 0.0016331709921360016 1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 -0.99998486042022705 
		0.99130392074584961 0.99999868869781494 0;
createNode animCurveTA -n "animCurveTA483";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.5555755750740079 4 -1.5555755750740079 
		8 -1.5555755750740079 10 -1.5555755750740079 13 -1.5555755750740079 16 -52.549613983599983 
		17.995000000000001 -52.549613983599983 18 -52.549613983599983 19 -21.883217282969916 
		20 9.6972142232605041 21 43.31305561735428;
	setAttr -s 11 ".kit[6:10]"  1 1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  1 1 0.061248853802680969 0.058487694710493088 
		0.056722782552242279;
	setAttr -s 11 ".kiy[6:10]"  0 0 0.99812251329421997 0.99828815460205078 
		0.99838995933532715;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 0.21924807131290436 0.18388566374778748 
		1 0.062467720359563828 0.061248853802680969 0.058487694710493088 0.056722782552242279;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 -0.97566914558410645 -0.98294764757156372 
		0 0.99804699420928955 0.99812251329421997 0.99828815460205078 0.99838995933532715;
createNode animCurveTA -n "animCurveTA484";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.8362155502334307 4 -1.8362155502334307 
		8 -1.8362155502334307 10 -1.8362155502334307 13 -1.8362155502334307 16 -20.553162507448068 
		17.995000000000001 -20.553162507448068 18 -20.553162507448064 19 -5.1991908906198834 
		20 4.504729685155894 21 5.5328457016804613;
	setAttr -s 11 ".kit[6:10]"  1 1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  1 1 0.15069498121738434 0.33531227707862854 
		0.8805229663848877;
	setAttr -s 11 ".kiy[6:10]"  0 0 0.98858028650283813 0.94210702180862427 
		0.47400346398353577;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 0.52214723825454712 0.45410335063934326 
		1 0.12404505163431168 0.15069498121738434 0.33531227707862854 0.8805229663848877;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 -0.852855384349823 -0.89094901084899902 
		0 0.99227660894393921 0.98858028650283813 0.94210702180862427 0.47400346398353577;
createNode animCurveTA -n "animCurveTA485";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -5.0323831593938717 4 -5.0323831593938717 
		8 -5.0323831593938717 10 -5.0323831593938717 13 -5.0323831593938717 16 -34.824248933360245 
		17.995000000000001 -34.824248933360245 18 -34.824248933360245 19 -28.243647016380404 
		20 -15.019258197881008 21 1.645116555368483;
	setAttr -s 11 ".kit[6:10]"  1 1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  1 1 0.18937645852565765 0.12676681578159332 
		0.11386196315288544;
	setAttr -s 11 ".kiy[6:10]"  0 0 0.98190456628799438 0.99193257093429565 
		0.9934965968132019;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 0.35899943113327026 0.30495986342430115 
		1 0.28000891208648682 0.18937645852565765 0.12676681578159332 0.11386196315288544;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 -0.93333780765533447 -0.9523652195930481 
		0 0.95999741554260254 0.98190456628799438 0.99193257093429565 0.9934965968132019;
createNode animCurveTA -n "animCurveTA486";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -78.024183224002883 4 -78.024183224002883 
		8 -78.024183224002883 10 -78.024183224002883 13 -78.024183224002883 16 -16.176836270129716 
		17.995000000000001 -16.176836270129716 18 -16.176836270129723 19 -7.0600058805490145 
		20 0.48639114739920192 21 7.2720678869952637;
	setAttr -s 11 ".kit[5:10]"  3 1 1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 3 3 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  1 1 0.22343519330024719 0.2575262188911438 
		0.27092796564102173;
	setAttr -s 11 ".kiy[6:10]"  0 0 0.97471880912780762 0.96627134084701538 
		0.96259963512420654;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 0.18218061327934265 1 1 
		0.20601828396320343 0.22343519330024719 0.2575262188911438 0.27092796564102173;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0.98326510190963745 0 0 
		0.97854816913604736 0.97471880912780762 0.96627134084701538 0.96259963512420654;
createNode animCurveTA -n "animCurveTA487";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 27.204395537948077 4 27.204395537948077 
		8 27.204395537948077 10 27.204395537948077 13 27.204395537948077 16 -13.260766335787961 
		17.995000000000001 -13.260766335787961 18 -13.260766335787961 19 -1.9171786096692609 
		20 10.224032849854677 21 23.187535177944003;
	setAttr -s 11 ".kit[5:10]"  3 1 1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 3 3 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  1 1 0.16053688526153564 0.15042029321193695 
		0.14575256407260895;
	setAttr -s 11 ".kiy[6:10]"  0 0 0.98702985048294067 0.98862212896347046 
		0.98932105302810669;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 0.27247107028961182 1 1 
		0.16683502495288849 0.16053688526153564 0.15042029321193695 0.14575256407260895;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 -0.96216398477554321 0 
		0 0.98598480224609375 0.98702985048294067 0.98862212896347046 0.98932105302810669;
createNode animCurveTA -n "animCurveTA488";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 24.297465729795011 4 24.297465729795011 
		8 24.297465729795011 10 24.297465729795011 13 24.297465729795011 16 -15.915952586566512 
		17.995000000000001 -15.915952586566512 18 -15.915952586566508 19 -23.613066854135237 
		20 -29.449480538315722 21 -33.968891944571425;
	setAttr -s 11 ".kit[5:10]"  3 1 1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 3 3 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  1 1 0.27162942290306091 0.3460574746131897 
		0.3892596960067749;
	setAttr -s 11 ".kiy[6:10]"  0 0 -0.96240192651748657 -0.9382132887840271 
		-0.9211280345916748;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 0.2740490734577179 1 1 
		0.24195778369903564 0.27162942290306091 0.3460574746131897 0.3892596960067749;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 -0.9617156982421875 0 0 
		-0.9702867865562439 -0.96240192651748657 -0.9382132887840271 -0.9211280345916748;
createNode animCurveTA -n "animCurveTA489";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 68.327235470237881 4 68.327235470237881 
		8 68.327235470237881 10 68.327235470237881 13 68.327235470237881 16 24.991188390811168 
		17.995000000000001 24.991188390811168 18 24.991188390811161 19 19.748812251525127 
		20 14.584680725853445 21 9.342304586567403;
	setAttr -s 11 ".kit[6:10]"  1 1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  1 1 0.34457263350486755 0.34457263350486755 
		0.34230345487594604;
	setAttr -s 11 ".kiy[6:10]"  0 0 -0.93875968456268311 -0.93875968456268311 
		-0.93958944082260132;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 0.25563922524452209 0.21498681604862213 
		1 0.34381312131881714 0.34457263350486755 0.34457263350486755 0.34230345487594604;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 -0.96677225828170776 -0.97661697864532471 
		0 -0.93903809785842896 -0.93875968456268311 -0.93875968456268311 -0.93958944082260132;
createNode animCurveTA -n "animCurveTA490";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 38.08722284185874 4 38.08722284185874 
		8 38.08722284185874 10 38.08722284185874 13 38.08722284185874 16 16.318531771872284 
		21 14.326926958980692;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  0.94405287504196167;
	setAttr -s 7 ".kiy[6]"  -0.32979416847229004;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 0.46580851078033447 0.54086774587631226 
		0;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 -0.88488554954528809 -0.84110766649246216 
		0;
createNode animCurveTA -n "animCurveTA491";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 22.836699594643825 4 22.836699594643825 
		8 22.836699594643825 10 22.836699594643825 13 22.836699594643825 16 -10.127434084705557 
		21 32.145951579643629;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 3;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 0.32835114002227783 0.853973388671875 
		1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 -0.94455575942993164 0.52031666040420532 
		0;
createNode animCurveTA -n "animCurveTA492";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 30.664763547309338 4 30.664763547309338 
		8 30.664763547309338 10 30.664763547309338 13 30.664763547309338 16 -5.1651422366164015 
		21 2.4180200242859677;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 3;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 0.30462104082107544 0.47576677799224854 
		1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 -0.95247364044189453 -0.87957149744033813 
		0;
createNode animCurveTA -n "animCurveTA493";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.9136426523866348 4 8.9136426523866348 
		8 8.9136426523866348 10 8.9136426523866348 13 8.9136426523866348 16 20.834132067753103 
		21 -14.081475378779396;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 3;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 0.69301903247833252 0.55341553688049316 
		1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0.72091931104660034 -0.83290529251098633 
		0;
createNode animCurveTA -n "animCurveTA494";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -58.316571219273882 4 -58.316571219273882 
		8 -58.316571219273882 10 -58.316571219273882 13 -58.316571219273882 16 71.390818193217285 
		21 71.390818193217285;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 3;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 0.088003441691398621 0.11698610335588455 
		1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0.9961201548576355 0.993133544921875 
		0;
createNode animCurveTA -n "animCurveTA495";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.90476728715262045 4 0.90476728715262045 
		8 0.90476728715262045 10 0.90476728715262045 13 0.90476728715262045 16 -9.2933896978321862 
		21 -9.2933896978321862;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 3;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 0.74701297283172607 0.83174258470535278 
		1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 -0.6648094654083252 -0.55516141653060913 
		0;
createNode animCurveTA -n "animCurveTA496";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.5899170637045899 4 1.5899170637045899 
		8 1.5899170637045899 10 1.5899170637045899 13 1.5899170637045899 16 10.879224287148109 
		21 10.879224287148109;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 3;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 0.77681875228881836 0.85446858406066895 
		1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0.62972420454025269 0.51950305700302124 
		0;
createNode animCurveTA -n "animCurveTA497";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -36.628454700917274 4 -36.628454700917274 
		8 -36.628454700917274 10 -36.628454700917274 13 -36.628454700917274 16 -36.628454700917274 
		17.995000000000001 0 18 0 19 0 20 0 21 0;
	setAttr -s 11 ".kit[6:10]"  1 1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  0.10372032225131989 1 1 1 1;
	setAttr -s 11 ".kiy[6:10]"  0.99460649490356445 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 0.25203841924667358 0.10372037440538406 
		1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0.96771723031997681 0.99460649490356445 
		0 0 0 0;
createNode animCurveTA -n "animCurveTA498";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 15.180891733866947 4 15.180891733866947 
		8 15.180891733866947 10 15.180891733866947 13 15.180891733866947 16 15.180891733866947 
		17.995000000000001 0 18 0 19 0 20 0 21 0;
	setAttr -s 11 ".kit[6:10]"  1 1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  0.24400800466537476 1 1 1 1;
	setAttr -s 11 ".kiy[6:10]"  -0.96977323293685913 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 0.53207045793533325 0.24400810897350311 
		1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 -0.84670007228851318 
		-0.96977317333221436 0 0 0 0;
createNode animCurveTA -n "animCurveTA499";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.072787087017036858 4 -0.072787087017036858 
		8 -0.072787087017036858 10 -0.072787087017036858 13 -0.072787087017036858 
		16 -0.072787087017036858 17.995000000000001 0 18 0 19 0 20 0 21 0;
	setAttr -s 11 ".kit[6:10]"  1 1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  0.99981850385665894 1 1 1 1;
	setAttr -s 11 ".kiy[6:10]"  0.019052164629101753 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 0.99997091293334961 0.99981850385665894 
		1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0.0076296539045870304 
		0.019052155315876007 0 0 0 0;
createNode animCurveTA -n "animCurveTA500";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 0 8 0 10 0 13 0 16 0 17.995000000000001 
		0 18 0 19 0 20 0 21 0;
	setAttr -s 11 ".kit[6:10]"  1 1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  1 1 1 1 1;
	setAttr -s 11 ".kiy[6:10]"  0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA501";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 0 8 0 10 0 13 0 16 0 17.995000000000001 
		0 18 0 19 0 20 0 21 0;
	setAttr -s 11 ".kit[6:10]"  1 1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  1 1 1 1 1;
	setAttr -s 11 ".kiy[6:10]"  0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA502";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -19.693819774835177 4 -19.693819774835177 
		8 -19.693819774835177 10 -19.693819774835177 13 -19.693819774835177 16 -19.693819774835177 
		17.995000000000001 -19.693819774835177 18 -19.69381977483518 19 -13.09639006863482 
		20 -6.597429706200356 21 -3.9601632996738055e-016;
	setAttr -s 11 ".kit[6:10]"  1 1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  1 1 0.27999582886695862 0.27999582886695862 
		0.27806839346885681;
	setAttr -s 11 ".kiy[6:10]"  0 0 0.96000123023986816 0.96000123023986816 
		0.96056127548217773;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.27935051918029785 
		0.27999582886695862 0.27999582886695862 0.27806839346885681;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0.96018922328948975 
		0.96000123023986816 0.96000123023986816 0.96056127548217773;
createNode animCurveTA -n "animCurveTA503";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA504";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA505";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  18 0 19 0 20 0 21 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "lsa_Thumb_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "lsa_Thumb_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "lsa_Thumb_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "lsa_Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "lsa_Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "lsa_Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA506";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 0 8 0 10 0 13 0 16 0 17.995000000000001 
		0 18 0 19 0 20 0 21 0;
	setAttr -s 11 ".kit[6:10]"  1 1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  1 1 1 1 1;
	setAttr -s 11 ".kiy[6:10]"  0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA507";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 0 8 0 10 0 13 0 16 0 17.995000000000001 
		0 18 0 19 0 20 0 21 0;
	setAttr -s 11 ".kit[6:10]"  1 1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  1 1 1 1 1;
	setAttr -s 11 ".kiy[6:10]"  0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA508";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -14.841309524368913 4 -14.841309524368913 
		8 -14.841309524368913 10 -14.841309524368913 13 -14.841309524368913 16 -14.841309524368913 
		17.995000000000001 -14.841309524368913 18 -14.841309524368915 19 -9.8694707721883344 
		20 -4.97183875218058 21 -1.0575965517952398e-015;
	setAttr -s 11 ".kit[6:10]"  1 1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  1 1 0.3609347939491272 0.3609347939491272 
		0.35858869552612305;
	setAttr -s 11 ".kiy[6:10]"  0 0 0.93259108066558838 0.93259108066558838 
		0.93349564075469971;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.36014962196350098 
		0.3609347939491272 0.3609347939491272 0.35858869552612305;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0.93289452791213989 
		0.93259108066558838 0.93259108066558838 0.93349564075469971;
createNode animCurveTA -n "animCurveTA509";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 3.1198943483277444 4 3.1198943483277444 
		8 3.1198943483277444 10 3.1198943483277444 13 3.1198943483277444 16 3.1198943483277444 
		17.995000000000001 3.1198943483277444 18 3.1198943483277448 19 2.638911186081371 
		20 2.0256922954059755 21 1.2945941069882385;
	setAttr -s 11 ".kit[6:10]"  1 1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  1 1 0.9613339900970459 0.94328594207763672 
		0.93391180038452148;
	setAttr -s 11 ".kiy[6:10]"  0 0 -0.27538511157035828 -0.33198139071464539 
		-0.35750347375869751;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.97000783681869507 
		0.9613339900970459 0.94328594207763672 0.93391180038452148;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 -0.24307353794574738 
		-0.27538511157035828 -0.33198139071464539 -0.35750347375869751;
createNode animCurveTA -n "animCurveTA510";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.7238169885910806 4 1.7238169885910806 
		8 1.7238169885910806 10 1.7238169885910806 13 1.7238169885910806 16 1.7238169885910806 
		17.995000000000001 1.7238169885910806 18 1.7238169885910808 19 2.3963633773498811 
		20 2.9330025589620106 21 3.320881116555316;
	setAttr -s 11 ".kit[6:10]"  1 1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  1 1 0.95337039232254028 0.9719359278678894 
		0.97999346256256104;
	setAttr -s 11 ".kiy[6:10]"  0 0 0.30180278420448303 0.23524560034275055 
		0.1990295797586441;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.94374281167984009 
		0.95337039232254028 0.9719359278678894 0.97999346256256104;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0.33068042993545532 
		0.30180278420448303 0.23524560034275055 0.1990295797586441;
createNode animCurveTA -n "animCurveTA511";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 12.268388134198538 4 12.268388134198538 
		8 12.268388134198538 10 12.268388134198538 13 12.268388134198538 16 12.268388134198538 
		17.995000000000001 12.268388134198538 18 12.268388134198538 19 -1.051262924438821 
		20 -14.183583051068407 21 -27.525824477859977;
	setAttr -s 11 ".kit[6:10]"  1 1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  1 1 0.14291965961456299 0.14280018210411072 
		0.14169941842556;
	setAttr -s 11 ".kiy[6:10]"  0 0 -0.98973429203033447 -0.98975151777267456 
		-0.98990970849990845;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.1426302045583725 
		0.14291965961456299 0.14280018210411072 0.14169941842556;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 -0.98977607488632202 
		-0.98973429203033447 -0.98975151777267456 -0.98990970849990845;
createNode animCurveTA -n "animCurveTA512";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 4.7918197052726175 8 4.5591828249418214 
		10 4.7833170665837326 13 4.7325518039215666 16 8.1349496097053766 17.995000000000001 
		-3.6592642718383939 18 -3.6592642718383943 19 -4.0476983905324735 20 -4.3678109221950425 
		21 -4.6297048981494928;
	setAttr -s 11 ".kit[6:10]"  1 1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  0.30810809135437012 1 0.98322707414627075 
		0.98859012126922607 0.99072861671447754;
	setAttr -s 11 ".kiy[6:10]"  -0.9513513445854187 0 -0.18238574266433716 
		-0.15063044428825378 -0.1358560174703598;
	setAttr -s 11 ".kox[0:10]"  0.84714138507843018 0.95824778079986572 
		0.99999970197677612 0.99983525276184082 0.95978856086730957 0.75083690881729126 
		0.30810821056365967 0.98013108968734741 0.98322707414627075 0.98859012126922607 
		0.99072861671447754;
	setAttr -s 11 ".koy[0:10]"  0.53136754035949707 0.28593903779983521 
		-0.00074199499795213342 0.018152166157960892 0.28072386980056763 -0.66048765182495117 
		-0.95135128498077393 -0.19835086166858673 -0.18238574266433716 -0.15063044428825378 
		-0.1358560174703598;
createNode animCurveTA -n "animCurveTA513";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 0 8 1.4764793631020883 10 
		0.28566343937078548 13 -0.75218135305261336 16 -2.7537431465968543 17.995000000000001 
		5.4307350478732745 18 5.4307350478732728 19 3.7435897561148375 20 2.0686580501519565 
		21 0.35757313242625988;
	setAttr -s 11 ".kit[6:10]"  1 1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  0.42291215062141418 1 0.75064289569854736 
		0.74831223487854004 0.74480247497558594;
	setAttr -s 11 ".kiy[6:10]"  0.90617066621780396 0 -0.66070812940597534 
		-0.66334664821624756 -0.66728502511978149;
	setAttr -s 11 ".kox[0:10]"  1 0.99536323547363281 0.99968940019607544 
		0.97383010387420654 0.96657782793045044 0.83916318416595459 0.42291232943534851 
		0.75108879804611206 0.75064289569854736 0.74831223487854004 0.74480247497558594;
	setAttr -s 11 ".koy[0:10]"  0 0.096187278628349304 0.024921094998717308 
		-0.22727714478969574 -0.25637340545654297 0.54387974739074707 0.90617060661315918 
		-0.66020119190216064 -0.66070812940597534 -0.66334664821624756 -0.66728502511978149;
createNode animCurveTA -n "animCurveTA514";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 4.310474063255155 4 -15.766809066738281 
		8 -33.673896057993041 10 -19.176559487437476 13 -6.7563469975207218 16 -20.471962311720766 
		17.995000000000001 -2.004851503256754 18 -2.0048515032567531 19 -4.1470664539879305 
		20 -6.2429296435125083 21 -8.3596211209238476;
	setAttr -s 11 ".kit[6:10]"  1 1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  0.2025514543056488 1 0.66949212551116943 
		0.67172127962112427 0.66990149021148682;
	setAttr -s 11 ".kiy[6:10]"  0.97927159070968628 0 -0.74281913042068481 
		-0.74080395698547363 -0.74244999885559082;
	setAttr -s 11 ".kox[0:10]"  0.35562732815742493 0.37318238615989685 
		0.95846837759017944 0.3343447744846344 0.9936710000038147 0.89511591196060181 
		0.20255155861377716 0.66731411218643188 0.66949212551116943 0.67172127962112427 
		0.66990149021148682;
	setAttr -s 11 ".koy[0:10]"  -0.93462783098220825 -0.92775797843933105 
		-0.28519883751869202 0.94245082139968872 -0.11232975870370865 0.44583353400230408 
		0.97927159070968628 -0.74477642774581909 -0.74281913042068481 -0.74080395698547363 
		-0.74244999885559082;
createNode animCurveTA -n "animCurveTA515";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 0 8 0 10 0 13 0 16 -3.0740171407418018 
		17.995000000000001 0 18 0 19 0.029980910418396671 20 0.043390109099854003 
		21 0.040577927395231195;
	setAttr -s 11 ".kit[6:10]"  1 1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  0.77905040979385376 1 0.99993550777435303 
		0.9999961256980896 0.99999892711639404;
	setAttr -s 11 ".kiy[6:10]"  0.62696123123168945 0 0.011358771473169327 
		0.0027742818929255009 -0.0014724535867571831;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 0.9658510684967041 1 0.77905058860778809 
		0.99987804889678955 0.99993550777435303 0.9999961256980896 0.99999892711639404;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 -0.25909784436225891 0 
		0.62696105241775513 0.015617962926626205 0.011358771473169327 0.0027742818929255009 
		-0.0014724535867571831;
createNode animCurveTA -n "animCurveTA516";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 0 8 0 10 0 13 0 16 2.3076901383638693 
		17.995000000000001 0 18 0 19 -0.25683851506160976 20 -0.51120961057510028 
		21 -0.76977674774379068;
	setAttr -s 11 ".kit[6:10]"  1 1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  0.85592103004455566 1 0.99116271734237671 
		0.9911036491394043 0.99095946550369263;
	setAttr -s 11 ".kiy[6:10]"  -0.51710653305053711 0 -0.13265162706375122 
		-0.1330922544002533 -0.13416150212287903;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 0.98031890392303467 1 0.85592114925384521 
		0.99116575717926025 0.99116271734237671 0.9911036491394043 0.99095946550369263;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0.19742050766944885 0 -0.51710635423660278 
		-0.1326291561126709 -0.13265162706375122 -0.1330922544002533 -0.13416150212287903;
createNode animCurveTA -n "animCurveTA517";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 0 8 0 10 0 13 0 16 15.588984396133544 
		17.995000000000001 0 18 0 19 3.6679170614716807 20 7.2810650950572873 21 
		10.949080790025388;
	setAttr -s 11 ".kit[6:10]"  1 1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  0.23798665404319763 1 0.4645630419254303 
		0.46455812454223633 0.46182680130004883;
	setAttr -s 11 ".kiy[6:10]"  -0.9712684154510498 0 0.88554006814956665 
		0.88554263114929199 0.8869701623916626;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 0.59227865934371948 1 0.23798675835132599 
		0.46365034580230713 0.4645630419254303 0.46455812454223633 0.46182680130004883;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0.80573320388793945 0 -0.9712684154510498 
		0.88601827621459961 0.88554006814956665 0.88554263114929199 0.8869701623916626;
createNode animCurveTA -n "animCurveTA518";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 4.2038555866233178 8 -1.241008731071926 
		10 -1.6954030068101675 13 2.6918182531793278 16 -2.9842254151555232 17.995000000000001 
		-17.12933093053519 18 -17.12933093053519 19 -19.484102958755525 20 -22.477943181334286 
		21 -27.138591323308027;
	setAttr -s 11 ".kit[6:10]"  1 1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  0.26070007681846619 1 0.58116579055786133 
		0.44650968909263611 0.37918215990066528;
	setAttr -s 11 ".kiy[6:10]"  -0.96541982889175415 0 -0.81378519535064697 
		-0.8947787880897522 -0.92532205581665039;
	setAttr -s 11 ".kox[0:10]"  0.87611103057861328 0.99671757221221924 
		0.88909906148910522 0.92465204000473022 0.99373453855514526 0.43367651104927063 
		0.26070019602775574 0.63181251287460327 0.58116579055786133 0.44650968909263611 
		0.37918215990066528;
	setAttr -s 11 ".koy[0:10]"  0.48210939764976501 -0.080957219004631042 
		-0.45771482586860657 0.38081303238868713 -0.11176629364490509 -0.90106862783432007 
		-0.96541982889175415 -0.77512127161026001 -0.81378519535064697 -0.8947787880897522 
		-0.92532205581665039;
createNode animCurveTA -n "animCurveTA519";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 4.4455366758817503 8 5.9887576532727795 
		10 5.8766830721428818 13 5.4932723516333724 16 2.984546415247757 17.995000000000001 
		-27.021343960488277 18 -27.021343960488277 19 -38.561541064261156 20 -49.895558026483229 
		21 -61.310693300052847;
	setAttr -s 11 ".kit[6:10]"  1 1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  0.12627981603145599 1 0.16470733284950256 
		0.16558803617954254 0.16501569747924805;
	setAttr -s 11 ".kiy[6:10]"  -0.99199467897415161 0 -0.98634248971939087 
		-0.98619502782821655 -0.98629093170166016;
	setAttr -s 11 ".kox[0:10]"  0.86431032419204712 0.93103444576263428 
		0.9922911524772644 0.99865657091140747 0.96959561109542847 0.28153136372566223 
		0.12627989053726196 0.16406983137130737 0.16470733284950256 0.16558803617954254 
		0.16501569747924805;
	setAttr -s 11 ".koy[0:10]"  0.50295895338058472 0.36493131518363953 
		0.12392832338809967 -0.051817391067743301 -0.24471287429332733 -0.95955204963684082 
		-0.99199467897415161 -0.98644870519638062 -0.98634248971939087 -0.98619502782821655 
		-0.98629093170166016;
createNode animCurveTA -n "animCurveTA520";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 9.348976144606322 4 34.478979385118755 
		8 -20.730427574963819 10 -25.1244986775014 13 17.15663421372809 16 -7.2368008974402107 
		17.995000000000001 11.048130498207994 18 11.048130498207994 19 11.620934253589757 
		20 13.021238529339941 21 16.177650372523711;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 1 
		1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  0.20448555052280426 1 0.88846510648727417 
		0.6424105167388916 0.51768350601196289;
	setAttr -s 11 ".kiy[6:10]"  0.97886955738067627 0 0.458944171667099 
		0.76636070013046265 0.85557222366333008;
	setAttr -s 11 ".kox[0:10]"  1 0.45287597179412842 0.18879891932010651 
		0.24440276622772217 0.53942197561264038 0.8421485424041748 0.20448565483093262 
		0.9582400918006897 0.88846510648727417 0.6424105167388916 0.51768350601196289;
	setAttr -s 11 ".koy[0:10]"  0 -0.89157354831695557 -0.98201578855514526 
		0.96967381238937378 0.84203559160232544 -0.53924566507339478 0.97886955738067627 
		0.28596493601799011 0.458944171667099 0.76636070013046265 0.85557222366333008;
createNode animCurveTA -n "animCurveTA521";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 7.2773573828671791 4 7.0846805378393807 
		8 6.8657886252995093 10 7.2893960008875354 13 7.1522494975013204 16 8.771993342931081 
		17.995000000000001 10.38432831491772 18 10.38432831491772 19 6.9186800039746821 
		20 3.4913801887945426 21 -5.8539557315110954e-016;
	setAttr -s 11 ".kit[6:10]"  1 1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  0.92128711938858032 1 0.48470237851142883 
		0.48332136869430542 0.47991108894348145;
	setAttr -s 11 ".kiy[6:10]"  0.38888314366340637 0 -0.87467914819717407 
		-0.8754429817199707 -0.87731713056564331;
	setAttr -s 11 ".kox[0:10]"  0.99968206882476807 0.99963736534118652 
		0.99984043836593628 0.99955034255981445 0.99173390865325928 0.94711822271347046 
		0.9212871789932251 0.48449453711509705 0.48470237851142883 0.48332136869430542 
		0.47991108894348145;
	setAttr -s 11 ".koy[0:10]"  -0.025213323533535004 -0.026927344501018524 
		0.017861945554614067 0.029984623193740845 0.12831155955791473 0.32088488340377808 
		0.38888296484947205 -0.87479430437088013 -0.87467914819717407 -0.8754429817199707 
		-0.87731713056564331;
createNode animCurveTA -n "animCurveTA522";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.49428440924719735 4 1.7394456252307366 
		8 2.4684154184154328 10 0.26077877128866195 13 -1.4349096479040127 16 -0.77916130381215765 
		17.995000000000001 -1.6168554841512643 18 -1.6168554841512646 19 -0.99009465149979248 
		20 -0.45577618670629449 21 6.8877215410623677e-017;
	setAttr -s 11 ".kit[6:10]"  1 1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  0.97678607702255249 1 0.95677453279495239 
		0.968009352684021 0.97268581390380859;
	setAttr -s 11 ".kiy[6:10]"  -0.21421694755554199 0 0.29083064198493958 
		0.25091400742530823 0.23212553560733795;
	setAttr -s 11 ".kox[0:10]"  0.9598119854927063 0.98171389102935791 
		0.99177712202072144 0.9256557822227478 0.99590730667114258 0.99981814622879028 
		0.97678613662719727 0.95060324668884277 0.95677453279495239 0.968009352684021 
		0.97268581390380859;
	setAttr -s 11 ".koy[0:10]"  0.28064385056495667 0.19036242365837097 
		-0.12797695398330688 -0.37836664915084839 -0.090380474925041199 -0.019068928435444832 
		-0.21421684324741364 0.31040856242179871 0.29083064198493958 0.25091400742530823 
		0.23212553560733795;
createNode animCurveTA -n "animCurveTA523";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 18.701652569624674 4 1.1121617043574759 
		8 -4.844718352926602 10 12.799119397152772 13 26.122606478441053 16 19.921611297754559 
		17.995000000000001 -5.6791832172113459 18 -5.6791832172113459 19 -7.0637242616400782 
		20 -8.4620151182337473 21 -9.9115268575895019;
	setAttr -s 11 ".kit[6:10]"  1 1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  0.14756953716278076 1 0.8082471489906311 
		0.80170804262161255 0.79656004905700684;
	setAttr -s 11 ".kiy[6:10]"  -0.9890516996383667 0 -0.58884340524673462 
		-0.59771579504013062 -0.60455936193466187;
	setAttr -s 11 ".kox[0:10]"  0.39836788177490234 0.54433035850524902 
		0.70011359453201294 0.29467463493347168 0.84931081533432007 0.28732606768608093 
		0.14756959676742554 0.81101971864700317 0.8082471489906311 0.80170804262161255 
		0.79656004905700684;
	setAttr -s 11 ".koy[0:10]"  -0.91722571849822998 -0.83887094259262085 
		0.71403145790100098 0.9555976390838623 0.52789312601089478 -0.95783281326293945 
		-0.9890516996383667 -0.5850188136100769 -0.58884340524673462 -0.59771579504013062 
		-0.60455936193466187;
createNode animCurveTA -n "animCurveTA524";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 0 8 0 10 0 13 0 16 0 17.995000000000001 
		0 18 0 19 0 20 0 21 0;
	setAttr -s 11 ".kit[6:10]"  1 1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  1 1 1 1 1;
	setAttr -s 11 ".kiy[6:10]"  0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA525";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 0 8 0 10 0 13 0 16 0 17.995000000000001 
		0 18 0 19 0 20 0 21 0;
	setAttr -s 11 ".kit[6:10]"  1 1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  1 1 1 1 1;
	setAttr -s 11 ".kiy[6:10]"  0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA526";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 16.736721183175977 4 16.736721183175977 
		8 16.736721183175977 10 16.736721183175977 13 16.736721183175977 16 16.736721183175977 
		17.995000000000001 16.736721183175977 18 16.736721183175977 19 11.12991951743858 
		20 5.6068016657373994 21 1.4846729860737935e-015;
	setAttr -s 11 ".kit[6:10]"  1 1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  1 1 0.3246091902256012 0.3246091902256012 
		0.32243937253952026;
	setAttr -s 11 ".kiy[6:10]"  0 0 -0.94584822654724121 -0.94584822654724121 
		-0.9465901255607605;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.32388287782669067 
		0.3246091902256012 0.3246091902256012 0.32243937253952026;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 -0.94609719514846802 
		-0.94584822654724121 -0.94584822654724121 -0.9465901255607605;
createNode animCurveTA -n "animCurveTA527";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -19.916813043140664 4 -19.916813043140664 
		8 -19.916813043140664 10 -19.916813043140664 13 -19.916813043140664 16 -19.916813043140664 
		17.995000000000001 -19.916813043140664 18 -19.916813043140671 19 -13.217899051206333 
		20 -6.6428418973718459 21 9.1612738626128094e-016;
	setAttr -s 11 ".kit[6:10]"  1 1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  1 1 0.27653825283050537 0.27762112021446228 
		0.27631303668022156;
	setAttr -s 11 ".kiy[6:10]"  0 0 0.9610028862953186 0.96069061756134033 
		0.96106767654418945;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.27544188499450684 
		0.27653825283050537 0.27762112021446228 0.27631303668022156;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0.96131771802902222 
		0.9610028862953186 0.96069061756134033 0.96106767654418945;
createNode animCurveTA -n "animCurveTA528";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 2.1381503000571307 4 2.1381503000571307 
		8 2.1381503000571307 10 2.1381503000571307 13 2.1381503000571307 16 2.1381503000571307 
		17.995000000000001 2.1381503000571307 18 2.1381503000571311 19 1.6693904686694991 
		20 0.96028028975820856 21 -1.4892965867434119e-016;
	setAttr -s 11 ".kit[6:10]"  1 1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  1 1 0.95559799671173096 0.91631025075912476 
		0.89342373609542847;
	setAttr -s 11 ".kiy[6:10]"  0 0 -0.29467359185218811 -0.40046915411949158 
		-0.44921493530273438;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.97144907712936401 
		0.95559799671173096 0.91631025075912476 0.89342373609542847;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 -0.23724822700023651 
		-0.29467359185218811 -0.40046915411949158 -0.44921493530273438;
createNode animCurveTA -n "animCurveTA529";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -6.3333534086058805 4 -6.3333534086058805 
		8 -6.3333534086058805 10 -6.3333534086058805 13 -6.3333534086058805 16 -6.3333534086058805 
		17.995000000000001 -6.3333534086058805 18 -6.3333534086058831 19 -4.1327646733785404 
		20 -2.0335199518396005 21 2.7318468439120254e-016;
	setAttr -s 11 ".kit[6:10]"  1 1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  1 1 0.66413497924804688 0.67874616384506226 
		0.68459600210189819;
	setAttr -s 11 ".kiy[6:10]"  0 0 0.74761265516281128 0.73437297344207764 
		0.72892272472381592;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.65731936693191528 
		0.66413497924804688 0.67874616384506226 0.68459600210189819;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0.75361210107803345 
		0.74761265516281128 0.73437297344207764 0.72892272472381592;
createNode animCurveTA -n "animCurveTA530";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 0 8 0 10 0 13 0 16 0 17.995000000000001 
		0 18 0 19 0 20 0 21 0;
	setAttr -s 11 ".kit[6:10]"  1 1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  1 1 1 1 1;
	setAttr -s 11 ".kiy[6:10]"  0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA531";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 0 8 0 10 0 13 0 16 0 17.995000000000001 
		0 18 0 19 0 20 0 21 0;
	setAttr -s 11 ".kit[6:10]"  1 1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  1 1 1 1 1;
	setAttr -s 11 ".kiy[6:10]"  0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA532";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 17.545620107018433 4 17.545620107018433 
		8 17.545620107018433 10 17.545620107018433 13 17.545620107018433 16 17.545620107018433 
		17.995000000000001 17.545620107018433 18 17.545620107018433 19 11.667837298440938 
		20 5.8777828085774928 21 -1.0653615778730345e-015;
	setAttr -s 11 ".kit[6:10]"  1 1 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[6:10]"  1 1 0.31112393736839294 0.31112393736839294 
		0.30902454257011414;
	setAttr -s 11 ".kiy[6:10]"  0 0 -0.95036935806274414 -0.95036935806274414 
		-0.95105403661727905;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.31042113900184631 
		0.31112393736839294 0.31112393736839294 0.30902454257011414;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 -0.95059913396835327 
		-0.95036935806274414 -0.95036935806274414 -0.95105403661727905;
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
	setAttr -s 21 ".lnk";
select -ne :time1;
	setAttr ".o" 21;
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
connectAttr "lsa_fall_landSource.st" "clipLibrary1.st[0]";
connectAttr "lsa_fall_landSource.du" "clipLibrary1.du[0]";
connectAttr "lsa_Extra_Attributes_translateX.a" "clipLibrary1.cel[0].cev[0].cevr"
		;
connectAttr "lsa_Extra_Attributes_translateY.a" "clipLibrary1.cel[0].cev[1].cevr"
		;
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU25.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU26.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU27.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU28.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU29.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU30.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU31.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU32.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA427.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA428.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA429.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "lsa_Hoop_Root_translateX.a" "clipLibrary1.cel[0].cev[17].cevr"
		;
connectAttr "lsa_Hoop_Root_translateY.a" "clipLibrary1.cel[0].cev[18].cevr"
		;
connectAttr "lsa_Hoop_Root_translateZ.a" "clipLibrary1.cel[0].cev[19].cevr"
		;
connectAttr "animCurveTL123.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL124.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL125.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA430.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA431.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA432.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL126.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL127.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL128.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA433.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA434.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA435.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA436.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA437.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA438.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA439.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA440.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA441.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA442.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA443.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA444.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA445.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA446.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA447.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL129.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL130.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL131.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL132.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL133.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL134.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL135.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL136.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL137.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA448.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA449.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA450.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA451.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA452.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA453.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA454.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA455.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA456.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA457.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA458.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA459.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA460.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA461.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA462.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA463.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA464.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA465.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA466.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA467.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA468.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA469.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA470.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA471.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA472.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA473.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA474.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA475.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA476.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL138.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL139.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL140.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA477.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA478.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA479.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL141.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL142.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL143.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA480.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA481.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA482.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL144.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL145.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL146.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL147.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL148.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL149.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA483.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA484.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA485.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA486.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA487.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA488.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA489.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA490.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA491.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA492.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA493.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA494.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA495.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA496.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA497.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA498.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA499.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA500.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA501.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA502.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA503.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA504.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA505.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "lsa_Thumb_R_rotateX.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "lsa_Thumb_R_rotateY.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "lsa_Thumb_R_rotateZ.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "lsa_Thumb_L_rotateX.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "lsa_Thumb_L_rotateY.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "lsa_Thumb_L_rotateZ.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA506.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA507.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA508.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA509.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA510.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA511.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA512.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA513.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA514.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA515.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA516.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA517.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA518.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA519.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA520.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA521.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA522.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA523.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA524.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA525.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA526.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA527.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA528.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA529.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA530.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA531.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA532.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of lsa_fall_land.ma
