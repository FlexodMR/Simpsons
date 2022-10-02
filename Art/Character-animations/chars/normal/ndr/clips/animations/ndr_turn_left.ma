//Maya ASCII 4.0 scene
//Name: ndr_turn_left.ma
//Last modified: Tue, Jun 17, 2003 03:50:25 PM
requires maya "4.0";
requires "p3dmayaexp" "2.0.3.0";
requires "p3dSimpleShader" "2.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "ndr_turn_leftSource";
	setAttr ".ihi" 0;
	setAttr ".du" 20;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL206";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "animCurveTL207";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "animCurveTL208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.995 20 0.995;
createNode animCurveTL -n "animCurveTL209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.46000000000000002 20 0.46000000000000002;
createNode animCurveTL -n "animCurveTL210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.72 20 0.72;
createNode animCurveTA -n "animCurveTA566";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTU -n "animCurveTU41";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU42";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU43";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU44";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU45";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU46";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU47";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTU -n "animCurveTU48";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTA -n "animCurveTA567";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA568";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA569";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.1582036071592778 10 1.1582036071592778 
		20 1.1582036071592778;
createNode animCurveTL -n "animCurveTL215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.8024274637299138 10 0.8024274637299138 
		20 0.8024274637299138;
createNode animCurveTL -n "animCurveTL216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.6023458233856847 10 1.6023458233856847 
		20 1.6023458233856847;
createNode animCurveTA -n "animCurveTA570";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.7149195703006082 10 -2.7149195703006082 
		20 -2.7149195703006082;
createNode animCurveTA -n "animCurveTA571";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -9.448854147766081 10 -9.448854147766081 
		20 -9.448854147766081;
createNode animCurveTA -n "animCurveTA572";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.9042146334359309 10 2.9042146334359309 
		20 2.9042146334359309;
createNode animCurveTL -n "animCurveTL217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.635760016530293 10 1.635760016530293 
		20 1.635760016530293;
createNode animCurveTL -n "animCurveTL218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.79733745153385938 10 0.79733745153385938 
		20 0.79733745153385938;
createNode animCurveTL -n "animCurveTL219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.6031411449878863 10 1.6031411449878863 
		20 1.6031411449878863;
createNode animCurveTA -n "animCurveTA573";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA574";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 14.260733409455984 10 14.260733409455984 
		20 14.260733409455984;
createNode animCurveTA -n "animCurveTA575";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA576";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA577";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA578";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA579";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA580";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA581";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.011621961304049206 10 -0.011621961304049206 
		20 -0.011621961304049206;
createNode animCurveTL -n "animCurveTL221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.53592894662340362 10 0.53592894662340362 
		20 0.53592894662340362;
createNode animCurveTL -n "animCurveTL222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.1714982742260704 10 1.1714982742260704 
		20 1.1714982742260704;
createNode animCurveTL -n "animCurveTL223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.028577078352958335 10 -0.028577078352958335 
		20 -0.028577078352958335;
createNode animCurveTL -n "animCurveTL224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.6265256146554018 10 0.6265256146554018 
		20 0.6265256146554018;
createNode animCurveTL -n "animCurveTL225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.1827937027824305 10 1.1827937027824305 
		20 1.1827937027824305;
createNode animCurveTL -n "animCurveTL226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.4056785302309036 10 1.4056785302309036 
		20 1.4056785302309036;
createNode animCurveTL -n "animCurveTL227";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.96452787963755071 10 0.96452787963755071 
		20 0.96452787963755071;
createNode animCurveTL -n "animCurveTL228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.0057239815788857 10 1.0057239815788857 
		20 1.0057239815788857;
createNode animCurveTA -n "animCurveTA582";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -19.688418588621207 10 -16.208764986501116 
		20 -19.688418588621207;
createNode animCurveTA -n "animCurveTA583";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.6085540494966313 10 2.0023067845085443 
		20 -1.6085540494966313;
createNode animCurveTA -n "animCurveTA584";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.23076428718713959 10 10.303942573287165 
		20 0.23076428718713959;
createNode animCurveTA -n "animCurveTA585";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA586";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA587";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA588";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA589";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA590";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA591";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA592";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA593";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA594";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA595";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA596";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA597";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA598";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA599";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA600";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA601";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA602";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA603";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA604";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA605";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -5.6803276403432976 10 -5.6803276403432976 
		20 -5.6803276403432976;
createNode animCurveTA -n "animCurveTA606";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -6.1570151121354488 10 -6.1570151121354488 
		20 -6.1570151121354488;
createNode animCurveTA -n "animCurveTA607";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 5.3480278027016865 10 5.3480278027016865 
		20 5.3480278027016865;
createNode animCurveTA -n "animCurveTA608";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA609";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA610";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTL -n "Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 -0.0709143119679186 1 -0.070241320892023396 
		2 -0.0596070894293797 3 -0.036318299425207104 4 -0.00028646412485443305 5 
		0.045621339543421867 6 0.095971856258086061 7 0.14372980729118978 8 0.18141940048338653 
		9 0.20214792324438408 10 0.20117586870829712 11 0.17929520159997595 12 0.14207370592588972 
		13 0.096693773626701049 14 0.050471867256956675 15 0.0097525315529463797 
		16 -0.02116828937200637 17 -0.04072310068175284 18 -0.050087682972433642 
		19 -0.062012615658164238 20 -0.0709143119679186;
createNode animCurveTL -n "Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 -0.33081234113864422 1 -0.24599700150448858 
		2 -0.14777879975831582 3 -0.042880417863283997 4 0.06103015926031418 5 0.15656863923674039 
		6 0.23783088073172109 7 0.30100646322696861 8 0.34412798711704951 9 0.36601759404270651 
		10 0.36543772027639376 11 0.34249760382960603 12 0.29850316977582397 13 0.23497389942249924 
		14 0.15445255346649475 15 0.0612503652215068 16 -0.038628167642230975 17 
		-0.13828690773692992 18 -0.23106756512302007 19 -0.2830717348989123 20 -0.33081234113864422;
createNode animCurveTL -n "Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0.85066036297063297 1 0.85921264899658145 
		2 0.86417384005945508 3 0.86352511318029601 4 0.85652077188516818 5 0.84380364686130427 
		6 0.82711396542574422 7 0.80874224047427068 8 0.7909922981151104 9 0.77586540389444392 
		10 0.76541559328642483 11 0.76222560273025952 12 0.76577465955816115 13 0.7741611412300512 
		14 0.78497927710641935 15 0.79571745327205934 16 0.80433945182499933 17 0.80982879738133207 
		18 0.81246349030922038 19 0.83364385522853501 20 0.85066036297063297;
createNode animCurveTA -n "Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -29.385780402081803 10 13.009685951820492 
		20 -29.385780402081803;
createNode animCurveTA -n "Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 62.958174689347601 10 74.262059930538683 
		20 62.958174689347601;
createNode animCurveTA -n "Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 65.616366301272251 10 71.27092601988349 
		20 65.616366301272251;
createNode animCurveTL -n "Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0.09001344921713951 1 0.076770969011338938 
		2 0.053291922132718814 3 0.01993531293384649 4 -0.020435872382449247 5 -0.063155533919105555 
		6 -0.10295058167013224 7 -0.13507492624290876 8 -0.15588618343804173 9 -0.16267569567514784 
		10 -0.15392512500493127 11 -0.13157007298852647 12 -0.098232722385178592 
		13 -0.057173747341882408 14 -0.01274951102434045 15 0.029896440547474867 
		16 0.06580727719474623 17 0.091457449345485886 18 0.10569656138153505 19 
		0.097237913416783506 20 0.09001344921713951;
createNode animCurveTL -n "Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 -0.36699525505436442 1 -0.39614057649474554 
		2 -0.42681062519372676 3 -0.45423099013317286 4 -0.47439518915034001 5 -0.4852757742594862 
		6 -0.48736259394726716 7 -0.4833111247152263 8 -0.47690263398630395 9 -0.47170225453721104 
		10 -0.46968023483695037 11 -0.47015695613473113 12 -0.46990756514665577 13 
		-0.46507920919071594 14 -0.45265351102408291 15 -0.43155820381365573 16 -0.40329421263210591 
		17 -0.37175453545056036 18 -0.34222409454453956 19 -0.35477488051433098 20 
		-0.36699525505436442;
createNode animCurveTL -n "Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0.80893641101368152 1 0.77649754696755169 
		2 0.74397465983085664 3 0.71372841099368289 4 0.6868303036083846 5 0.66345939019394462 
		6 0.64356461968584455 7 0.62746301816692862 8 0.61611223648439695 9 0.6109899152294288 
		10 0.61333198504402275 11 0.62255794629188799 12 0.63716212849049469 13 0.65574669668242802 
		14 0.67746959999962586 15 0.70209035436810274 16 0.72960892117105047 17 0.75962394615154605 
		18 0.79071134136248122 19 0.80042920269857121 20 0.80893641101368152;
createNode animCurveTA -n "Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -35.087478750046365 10 -96.848370023943332 
		20 -35.087478750046365;
createNode animCurveTA -n "Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -66.472370131839611 10 -66.472370131839639 
		20 -66.472370131839611;
createNode animCurveTA -n "Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -83.863669147879818 10 -83.863669147880103 
		20 -83.863669147879818;
createNode animCurveTL -n "animCurveTL235";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.5799571818574061 10 1.5799571818574061 
		20 1.5799571818574061;
createNode animCurveTL -n "animCurveTL236";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.1296110275135671 10 2.1296110275135671 
		20 2.1296110275135671;
createNode animCurveTL -n "animCurveTL237";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.0696046407532309 10 2.0696046407532309 
		20 2.0696046407532309;
createNode animCurveTA -n "animCurveTA617";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 315.11092321192655 10 315.11092321192655 
		20 315.11092321192655;
createNode animCurveTA -n "animCurveTA618";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 71.289995585927571 10 71.289995585927571 
		20 71.289995585927571;
createNode animCurveTA -n "animCurveTA619";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 410.61971912325362 10 410.61971912325362 
		20 410.61971912325362;
createNode animCurveTL -n "animCurveTL238";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.5330905047330146 10 2.5330905047330146 
		20 2.5330905047330146;
createNode animCurveTL -n "animCurveTL239";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.0768417541934041 10 2.0768417541934041 
		20 2.0768417541934041;
createNode animCurveTL -n "animCurveTL240";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.0481292103665369 10 2.0481292103665369 
		20 2.0481292103665369;
createNode animCurveTA -n "animCurveTA620";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -36.332671187907607 10 -36.332671187907607 
		20 -36.332671187907607;
createNode animCurveTA -n "animCurveTA621";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -76.683613894212968 10 -76.683613894212968 
		20 -76.683613894212968;
createNode animCurveTA -n "animCurveTA622";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -83.339653964504663 10 -83.339653964504663 
		20 -83.339653964504663;
createNode animCurveTL -n "animCurveTL241";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.578730476483856 10 1.2031585260942281 
		20 0.56697357412933858;
createNode animCurveTL -n "animCurveTL242";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.3751169572549602 10 -1.4434839295035928 
		20 -1.3984112812495875;
createNode animCurveTL -n "animCurveTL243";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.21739896228115529 10 -0.20194480598359266 
		20 -0.21649598405116968;
createNode animCurveTL -n "animCurveTL244";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.48508072212835623 10 -0.4884582745323654 
		20 -0.49183582693637456;
createNode animCurveTL -n "animCurveTL245";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.3461376073222053 10 -1.3290360120698517 
		20 -1.3119344168174982;
createNode animCurveTL -n "animCurveTL246";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.22135527095932556 10 -0.23613916605170268 
		20 -0.25092306114407975;
createNode animCurveTA -n "animCurveTA623";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 12.253734489678925 10 12.253734489678925 
		20 12.253734489678925;
createNode animCurveTA -n "animCurveTA624";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -65.746751280844961 10 -65.746751280844961 
		20 -65.746751280844961;
createNode animCurveTA -n "animCurveTA625";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA626";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.061808866237337522 10 -0.061808866237337522 
		20 -0.061808866237337522;
createNode animCurveTA -n "animCurveTA627";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -59.058178941076754 10 -59.058178941076754 
		20 -59.058178941076754;
createNode animCurveTA -n "animCurveTA628";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 16.579147429757843 10 16.579147429757843 
		20 16.579147429757843;
createNode animCurveTA -n "animCurveTA629";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.5572674112203622 10 8.5572674112203622 
		20 8.5572674112203622;
createNode animCurveTA -n "animCurveTA630";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 15.711328223519057 10 15.711328223519057 
		20 15.711328223519057;
createNode animCurveTA -n "animCurveTA631";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA632";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA633";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA634";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA635";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA636";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA637";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -10.597736793341934 10 -10.597736793341934 
		20 -10.597736793341934;
createNode animCurveTA -n "animCurveTA638";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 64.03458729655091 10 64.03458729655091 
		20 64.03458729655091;
createNode animCurveTA -n "animCurveTA639";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -3.5980180414270846 10 -3.5980180414270846 
		20 -3.5980180414270846;
createNode animCurveTA -n "animCurveTA640";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA641";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA642";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 56.683882055276051 10 56.683882055276051 
		20 56.683882055276051;
createNode animCurveTA -n "animCurveTA643";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA644";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA645";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA646";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA647";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA648";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.994403295754109;
createNode animCurveTA -n "animCurveTA649";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA650";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA651";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.994403295754109;
createNode animCurveTA -n "animCurveTA652";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA653";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA654";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 44.839776244285055 10 44.839776244285055 
		20 44.839776244285055;
createNode animCurveTA -n "animCurveTA655";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA656";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA657";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA658";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.55766507474896432 10 1.8676251649360565 
		20 -0.55766507474896432;
createNode animCurveTA -n "animCurveTA659";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.0198239624003347 10 3.8572811083923773 
		20 -2.0198239624003347;
createNode animCurveTA -n "animCurveTA660";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.5513277031901911 10 13.984107732281821 
		20 7.5513277031901911;
createNode animCurveTA -n "animCurveTA661";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.95273800592490165 10 -2.5990946323998769 
		20 0.95273800592490165;
createNode animCurveTA -n "animCurveTA662";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.41955881507249082 10 -17.254371377172255 
		20 0.41955881507249082;
createNode animCurveTA -n "animCurveTA663";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.6634293801101616 10 -4.9437989298209049 
		20 1.6634293801101616;
createNode animCurveTA -n "animCurveTA664";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.0598705588951511 10 1.0598705588951511 
		20 1.0598705588951511;
createNode animCurveTA -n "animCurveTA665";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.26280824457411489 10 0.26280824457411489 
		20 0.26280824457411489;
createNode animCurveTA -n "animCurveTA666";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 6.5086084195154994 10 6.5086084195154994 
		20 6.5086084195154994;
createNode animCurveTA -n "animCurveTA667";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.47197901174667056 10 0.69462329870165163 
		20 0.47197901174667056;
createNode animCurveTA -n "animCurveTA668";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.6163460272109134 10 3.4741970225825582 
		20 1.6163460272109134;
createNode animCurveTA -n "animCurveTA669";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.9660530560192302 10 11.886310385535714 
		20 1.9660530560192302;
createNode animCurveTA -n "animCurveTA670";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA671";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA672";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 77.428435288625664 10 77.428435288625664 
		20 77.428435288625664;
createNode animCurveTA -n "animCurveTA673";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -12.533800869393716 10 -12.533800869393716 
		20 -12.533800869393716;
createNode animCurveTA -n "animCurveTA674";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 38.757782523984616 10 38.757782523984616 
		20 38.757782523984616;
createNode animCurveTA -n "animCurveTA675";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -17.577333162534277 10 -17.577333162534277 
		20 -17.577333162534277;
createNode animCurveTA -n "animCurveTA676";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA677";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA678";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 37.656527956664149 10 37.656527956664149 
		20 37.656527956664149;
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
	setAttr ".o" 20;
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
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -k on ".ra";
	setAttr -k on ".clip";
	setAttr -k on ".edm";
	setAttr -k on ".edl";
	setAttr -k on ".esr";
	setAttr -k on ".ors";
	setAttr -k on ".gama";
	setAttr -k on ".left";
	setAttr -k on ".bot";
	setAttr -k on ".urr";
	setAttr ".fs" 1;
	setAttr ".ef" 10;
	setAttr -k on ".bf";
	setAttr -k on ".bfs";
	setAttr -k on ".be";
	setAttr -k on ".fec";
	setAttr -k on ".sec";
	setAttr -k on ".ofc";
	setAttr -k on ".comp";
	setAttr -k on ".cth";
	setAttr -k on ".soll";
	setAttr -k on ".rd";
	setAttr -k on ".lp";
	setAttr -k on ".sp";
	setAttr -k on ".shs";
	setAttr -k on ".lpr";
	setAttr -k on ".mm";
	setAttr -k on ".npu";
	setAttr -k on ".shp";
	setAttr -k on ".uf";
	setAttr -k on ".oi";
	setAttr -k on ".rut";
	setAttr -k on ".mbf";
	setAttr -k on ".afp";
	setAttr -k on ".pfb";
	setAttr -k on ".bll";
	setAttr -k on ".bls";
	setAttr -k on ".smv";
	setAttr -k on ".ubc";
	setAttr -k on ".mbc";
	setAttr -k on ".udbx";
	setAttr -k on ".smc";
	setAttr -k on ".kmv";
	setAttr -k on ".rlen";
	setAttr -k on ".rlpn";
	setAttr -k on ".rgpn";
	setAttr -k on ".rlsd";
	setAttr -k on ".frts";
	setAttr -k on ".tlwd";
	setAttr -k on ".tlht";
select -ne :characterPartition;
select -ne :hyperGraphLayout;
	setAttr ".cch" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".img" -type "string" "";
	setAttr ".ims" 1;
select -ne :ikSystem;
connectAttr "ndr_turn_leftSource.st" "clipLibrary1.st[0]";
connectAttr "ndr_turn_leftSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL206.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL207.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL208.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL209.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL210.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA566.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU41.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU42.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU43.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU44.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU45.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU46.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU47.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU48.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA567.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA568.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA569.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL211.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL212.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL213.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL214.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL215.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL216.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA570.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA571.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA572.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL217.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL218.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL219.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA573.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA574.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA575.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA576.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA577.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA578.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA579.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA580.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA581.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTL220.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTL221.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTL222.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTL223.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTL224.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTL225.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL226.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL227.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL228.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTA582.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTA583.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTA584.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTA585.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTA586.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTA587.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA588.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA589.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA590.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA591.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA592.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA593.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA594.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA595.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA596.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA597.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA598.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA599.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA600.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA601.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA602.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA603.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA604.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA605.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA606.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA607.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA608.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA609.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA610.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "Right_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[76].cevr"
		;
connectAttr "Right_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[77].cevr"
		;
connectAttr "Right_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[78].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[79].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[80].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[81].cevr"
		;
connectAttr "Left_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[82].cevr"
		;
connectAttr "Left_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[83].cevr"
		;
connectAttr "Left_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[84].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[85].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[86].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[87].cevr"
		;
connectAttr "animCurveTL235.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL236.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL237.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA617.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA618.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA619.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL238.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL239.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL240.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA620.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA621.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA622.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL241.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL242.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL243.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTL244.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTL245.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTL246.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTA623.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTA624.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTA625.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTA626.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTA627.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTA628.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA629.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA630.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA631.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA632.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA633.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA634.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA635.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA636.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA637.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA638.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA639.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA640.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA641.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA642.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA643.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA644.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA645.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA646.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA647.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA648.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA649.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA650.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA651.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA652.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA653.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA654.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA655.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA656.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA657.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA658.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA659.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA660.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA661.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA662.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA663.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA664.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA665.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA666.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA667.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA668.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA669.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA670.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA671.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA672.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA673.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA674.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA675.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA676.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA677.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA678.a" "clipLibrary1.cel[0].cev[161].cevr";
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
// End of ndr_turn_left.ma
