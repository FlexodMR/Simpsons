//Maya ASCII 4.0 scene
//Name: opd_loco_run.ma
//Last modified: Wed, Aug 14, 2002 11:06:12 AM
requires maya "4.0";
requires "p3dSimpleShader" "18.0";
currentUnit -l meter -a degree -t film;
createNode animClip -n "opd_loco_runSource";
	setAttr ".ihi" 0;
	setAttr ".du" 26;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL206";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3.2000000000000002 0 3.2040000000000002 
		1 8.796 1 8.8000000000000007 0 12.800000000000001 0;
	setAttr -s 6 ".kit[5]"  9;
	setAttr -s 6 ".kot[5]"  9;
createNode animCurveTL -n "animCurveTL207";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1.6000000000000001 1 1.6040000000000001 
		0 10.4 0 10.404 1 12.800000000000001 1;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0.023177446907363879 1 0.010698957978864063 
		2 -0.0064490187093806627 3 -0.022159646674969103 4 -0.036979828881519038 
		5 -0.047566857874472339 6 -0.05069095835431834 7 -0.042563981232329226 8 
		-0.026490981064567421 9 -0.01222329869701505 10 0.00032990879531121767 11 
		0.010515357129039249 12 0.019450282096658202 13 0.022500832293458391 14 0.0068056983612135857 
		15 -0.0096282395004394644 16 -0.02509345254653186 17 -0.039734029655732313 
		18 -0.048783957509695039 19 -0.050197683606719376 20 -0.039434010546258093 
		21 -0.023657338979316017 22 -0.0094839569957569335 23 0.0025427141478214601 
		24 0.012282195477539589 25 0.020939820332916206 26 0.020648463508507429;
createNode animCurveTL -n "opd_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  18 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0.040805141774933808 1 0.16320587122212377 
		2 0.31874159289074816 3 0.51705876074088519 4 0.68703869228391679 5 0.84021755497084527 
		6 0.97807950273441846 7 1.1432996496947143 8 1.3239800223635394 9 1.4753085677548157 
		10 1.6203084450588208 11 1.7659596134677904 12 1.9368939900646212 13 2.1074852606617749 
		14 2.2308441572051119 15 2.3990601952241271 16 2.5950332890762637 17 2.7600365493001444 
		18 2.9098042347125306 19 3.0487779536387847 20 3.2219324615062477 21 3.3974971254799424 
		22 3.5455703377425971 23 3.6901519031111722 24 3.8391387900419303 25 4.0148078499459654 
		26 4.1732072118388945;
createNode animCurveTA -n "opd_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  18 0;
createNode animCurveTU -n "animCurveTU41";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU42";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU43";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU44";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU45";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU46";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU47";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU48";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
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
	setAttr -s 9 ".ktv[0:8]"  0 -0.19763288944005308 1.6000000000000001 
		-0.19763288944005308 3.2000000000000002 -0.19763288944005308 4.8 -0.19763288944005308 
		6.4000000000000004 -0.19763288944005308 8 -0.19763288944005308 9.6 -0.19763288944005308 
		11.2 -0.19763288944005308 12.800000000000001 -0.19763288944005308;
	setAttr ".pst" 3;
createNode animCurveTL -n "animCurveTL215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.36956228769602462 1.6000000000000001 
		0.28884186268296952 3.2000000000000002 0.18919812301601746 4.8 0.12263042416664063 
		6.4000000000000004 0.12263042416664063 8 0.12263042416664063 9.6 0.44473521445207587 
		11.2 0.52876720586341686 12.800000000000001 0.36956228769602462;
	setAttr -s 9 ".kit[3:8]"  3 3 3 1 9 9;
	setAttr -s 9 ".kot[3:8]"  3 3 3 1 9 9;
	setAttr -s 9 ".kix[6:8]"  0.0032826801761984825 0.017734091728925705 
		0.0041874367743730545;
	setAttr -s 9 ".kiy[6:8]"  0.99999463558197021 -0.99984276294708252 
		-0.99999123811721802;
	setAttr -s 9 ".kox[6:8]"  0.0032826552633196115 0.017734091728925705 
		0.0041874367743730545;
	setAttr -s 9 ".koy[6:8]"  0.99999463558197021 -0.99984276294708252 
		-0.99999123811721802;
	setAttr ".pst" 3;
createNode animCurveTL -n "animCurveTL216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.34271856858817051 1.6000000000000001 
		0.37931760405677162 3.2000000000000002 0.99077043779297014 4.8 1.2880268618449033 
		6.4000000000000004 1.2880268618449033 8 1.2880268618449033 9.6 1.4629783771771556 
		11.2 1.8015963961196431 12.800000000000001 2.3260298669170694;
	setAttr -s 9 ".kit[3:8]"  3 3 3 9 9 9;
	setAttr -s 9 ".kot[3:8]"  3 3 3 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA570";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 68.750149689121002 1.6000000000000001 
		54.899040703425321 3.2000000000000002 -31.548014841396505 4.8 -0.14896661373414463 
		6.4000000000000004 -0.14896661373414463 8 -0.14896661373414463 9.6 90.034847060019032 
		11.2 128.13735884566807 12.800000000000001 68.750149689121002;
	setAttr -s 9 ".kit[3:8]"  3 3 3 9 9 9;
	setAttr -s 9 ".kot[3:8]"  3 3 3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA571";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1.6000000000000001 0 3.2000000000000002 
		0 4.8 0 6.4000000000000004 0 8 0 9.6 0 11.2 0 12.800000000000001 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA572";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1.6000000000000001 0 3.2000000000000002 
		0 4.8 0 6.4000000000000004 0 8 0 9.6 0 11.2 0 12.800000000000001 0;
	setAttr ".pst" 3;
createNode animCurveTL -n "animCurveTL217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.19697756422115981 1.6000000000000001 
		0.19697756422115981 3.2000000000000002 0.19697756422115981 4.8 0.19697756422115981 
		6.4000000000000004 0.19697756422115981 8 0.19697756422115981 9.6 0.19697756422115981 
		11.2 0.19697756422115981 12.800000000000001 0.19697756422115981;
	setAttr ".pst" 3;
createNode animCurveTL -n "animCurveTL218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.11742628606129618 1.6000000000000001 
		0.11742628606129618 3.2000000000000002 0.49095526767731257 4.8 0.5915354640377134 
		6.4000000000000004 0.45706756536962601 8 0.27849434353650632 9.6 0.16571071551328526 
		11.2 0.11742628606129618 12.800000000000001 0.11742628606129618;
	setAttr -s 9 ".kit[1:8]"  3 9 9 9 9 1 3 
		3;
	setAttr -s 9 ".kot[1:8]"  3 9 9 9 9 1 3 
		3;
	setAttr -s 9 ".kix[6:8]"  0.0085520362481474876 1 1;
	setAttr -s 9 ".kiy[6:8]"  -0.99996340274810791 0 0;
	setAttr -s 9 ".kox[6:8]"  0.0085521051660180092 1 1;
	setAttr -s 9 ".koy[6:8]"  -0.99996340274810791 0 0;
	setAttr ".pst" 3;
createNode animCurveTL -n "animCurveTL219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.089378228552998554 1.6000000000000001 
		-0.089378228552998554 3.2000000000000002 0.092819338422239051 4.8 0.45628626194210675 
		6.4000000000000004 1.1551405394721215 8 1.8732841967608571 9.6 2.3622791508970296 
		11.2 2.5801297943456865 12.800000000000001 2.5801297943456865;
	setAttr -s 9 ".kit[1:8]"  3 9 9 9 9 1 3 
		3;
	setAttr -s 9 ".kot[1:8]"  3 9 9 9 9 1 3 
		3;
	setAttr -s 9 ".kix[6:8]"  0.0015894857933744788 1 1;
	setAttr -s 9 ".kiy[6:8]"  0.99999874830245972 0 0;
	setAttr -s 9 ".kox[6:8]"  0.0015895203687250614 1 1;
	setAttr -s 9 ".koy[6:8]"  0.99999874830245972 0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA573";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1.6000000000000001 0 3.2000000000000002 
		72.51831712904297 4.8 119.5141102620438 6.4000000000000004 98.915690893898827 
		8 26.776539741627776 9.6 -27.076362153617296 11.2 -13.120466155259251 12.800000000000001 
		0;
	setAttr -s 9 ".kit[1:8]"  3 9 9 9 9 9 1 
		9;
	setAttr -s 9 ".kot[1:8]"  3 9 9 9 9 9 1 
		9;
	setAttr -s 9 ".kix[7:8]"  0.17238633334636688 0.27952209115028381;
	setAttr -s 9 ".kiy[7:8]"  0.98502939939498901 0.96013927459716797;
	setAttr -s 9 ".kox[7:8]"  0.17238633334636688 0.27952209115028381;
	setAttr -s 9 ".koy[7:8]"  0.98502939939498901 0.96013927459716797;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA574";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1.6000000000000001 0 3.2000000000000002 
		0 4.8 0 6.4000000000000004 0 8 0 9.6 0 11.2 0 12.800000000000001 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA575";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1.6000000000000001 0 3.2000000000000002 
		0 4.8 0 6.4000000000000004 0 8 0 9.6 0 11.2 0 12.800000000000001 0;
	setAttr ".pst" 3;
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
createNode animCurveTA -n "animCurveTA582";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA583";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA584";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
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
createNode animCurveTL -n "animCurveTL220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 2.4 0 3.2000000000000002 0 
		4.8 0 6.4000000000000004 0 7.2000000000000002 0 8 0 9.6 0 11.2 0 12 0 12.800000000000001 
		0 14.4 0 16.8 0;
	setAttr ".pst" 3;
createNode animCurveTL -n "animCurveTL221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 2.4 0 3.2000000000000002 0 
		4.8 0 6.4000000000000004 0 7.2000000000000002 0 8 0 9.6 0 11.2 0 12 0 12.800000000000001 
		0 14.4 0 16.8 0;
	setAttr ".pst" 3;
createNode animCurveTL -n "animCurveTL222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 2.4 1 3.2000000000000002 1 
		4.8 1 6.4000000000000004 1 7.2000000000000002 1 8 1 9.6 1 11.2 1 12 1 12.800000000000001 
		1 14.4 1 16.8 1;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 2.4 0 3.2000000000000002 0 
		4.8 0 6.4000000000000004 0.17257136766448611 7.2000000000000002 0.096048447873454831 
		8 0 9.6 0 11.2 0 12 0 12.800000000000001 0 14.4 0 16.8 0;
	setAttr ".pst" 3;
createNode animCurveTL -n "animCurveTL224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 2.4 0 3.2000000000000002 0 
		4.8 0 6.4000000000000004 0 7.2000000000000002 0 8 0 9.6 0 11.2 0 12 0 12.800000000000001 
		0 14.4 0 16.8 0;
	setAttr ".pst" 3;
createNode animCurveTL -n "animCurveTL225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 2.4 1 3.2000000000000002 1 
		4.8 1 6.4000000000000004 1 7.2000000000000002 1 8 1 9.6 1 11.2 1 12 1 12.800000000000001 
		1 14.4 1 16.8 1;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.03051835782609956 1.6000000000000001 
		-0.00032744620447992194 3.2000000000000002 -0.033041213165890024 4.8 -0.060760986373170608 
		6.4000000000000004 -0.064815239811546521 8 -0.034881375956729473 9.6 -0.0057276634039738162 
		11.2 0.016172291882354136 12.800000000000001 0.03051835782609956;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "animCurveTL227";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.85186156742332064 1.6000000000000001 
		0.86976751873517522 3.2000000000000002 0.95302760060926983 4.8 0.91845713971515597 
		6.4000000000000004 0.83519705784106035 8 0.86683363893026644 9.6 0.93509514174289365 
		11.2 0.89318312338011308 12.800000000000001 0.85186156742332064;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 1 
		1 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 1 
		1 3;
	setAttr -s 9 ".kix[6:8]"  0.053338244557380676 0.011174989864230156 
		1;
	setAttr -s 9 ".kiy[6:8]"  0.99857652187347412 -0.99993753433227539 
		0;
	setAttr -s 9 ".kox[6:8]"  0.05333825945854187 0.011174453422427177 
		1;
	setAttr -s 9 ".koy[6:8]"  0.99857652187347412 -0.99993753433227539 
		0;
	setAttr ".pst" 3;
createNode animCurveTL -n "animCurveTL228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.053729210245175789 1.6000000000000001 
		0.32673819288997846 3.2000000000000002 0.72893957619979599 4.8 1.0675337834781298 
		6.4000000000000004 1.3672495549541861 8 1.7433195398350885 9.6 2.0572790745752805 
		11.2 2.3670862195139022 12.800000000000001 2.7417386536333597;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA588";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 20.950825280283908 1.6000000000000001 
		20.950825280283908 3.2000000000000002 20.950825280283908 4.8 20.950825280283908 
		6.4000000000000004 20.950825280283908 8 20.950825280283908 9.6 20.950825280283908 
		11.2 20.950825280283908 12.800000000000001 20.950825280283908;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA589";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1.6000000000000001 -4.6866710903011901 
		3.2000000000000002 -7.5734518508549122 4.8 -5.1932105618177555 6.4000000000000004 
		-1.1905185208978395 8 2.45128814155597 9.6 5.1343787061452408 11.2 5.6234041697971371 
		12.800000000000001 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA590";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1.6000000000000001 -0.72402281122173284 
		3.2000000000000002 0 4.8 0 6.4000000000000004 0 8 0 9.6 0 11.2 0 12.800000000000001 
		0;
	setAttr ".pst" 3;
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
	setAttr ".ktv[0]"  0 4.0984482521620249;
createNode animCurveTA -n "animCurveTA594";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 18.588300303494186;
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
	setAttr ".ktv[0]"  0 -22.686733334985114;
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
	setAttr ".ktv[0]"  0 1.0579251312417477e-005;
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
	setAttr ".ktv[0]"  0 4.0984482535121209;
createNode animCurveTA -n "animCurveTA604";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 18.588300300216801;
createNode animCurveTA -n "animCurveTA605";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA606";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA607";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -22.686733333057838;
createNode animCurveTA -n "animCurveTA608";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA609";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA610";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0579251312417477e-005;
createNode animCurveTA -n "animCurveTA611";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 7.2000000000000002 0 8 0 8.8000000000000007 
		0 11.2 0 12.800000000000001 0;
	setAttr -s 6 ".kit[1:5]"  3 3 9 9 9;
	setAttr -s 6 ".kot[1:5]"  3 3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA612";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 7.2000000000000002 0 8 0 8.8000000000000007 
		0 11.2 0 12.800000000000001 0;
	setAttr -s 6 ".kit[1:5]"  3 3 9 9 9;
	setAttr -s 6 ".kot[1:5]"  3 3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA613";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -53.481021487645641 2.4 2.4782236286598103 
		7.2000000000000002 2.4782236286598103 8 1.0692113677648558 8.8000000000000007 
		-38.155519431879036 11.2 -16.072382190806952 12.800000000000001 -53.481021487645641;
	setAttr -s 7 ".kit[4:6]"  9 9 3;
	setAttr -s 7 ".kot[4:6]"  9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA614";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12.800000000000001 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
createNode animCurveTA -n "animCurveTA615";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12.800000000000001 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
createNode animCurveTA -n "animCurveTA616";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.0579251312417477e-005 1.6000000000000001 
		-0.19861304010057174 3.2000000000000002 -39.488235982334174 5.6 6.3159195027017869 
		7.2000000000000002 -46.541845519259041 8.8000000000000007 4.2635767681788064 
		11.2 1.7809053040661718 12.800000000000001 1.0579251312417477e-005;
	setAttr -s 8 ".kit[2:7]"  9 9 9 3 3 9;
	setAttr -s 8 ".kot[2:7]"  9 9 9 3 3 9;
	setAttr ".pst" 3;
createNode animCurveTL -n "animCurveTL229";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.99214331096561381;
createNode animCurveTL -n "animCurveTL230";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.033841737269357866;
createNode animCurveTL -n "animCurveTL231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.027201153963313806;
createNode animCurveTA -n "animCurveTA617";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.1805546814635164e-015;
createNode animCurveTA -n "animCurveTA618";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.016273151455886e-014;
createNode animCurveTA -n "animCurveTA619";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5.3764496942944332e-016;
createNode animCurveTL -n "animCurveTL232";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99214413619678865;
createNode animCurveTL -n "animCurveTL233";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.033851474715545553;
createNode animCurveTL -n "animCurveTL234";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.0272011762672867;
createNode animCurveTA -n "animCurveTA620";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 6.3611093629270264e-015;
createNode animCurveTA -n "animCurveTA621";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.5281705937149269e-014;
createNode animCurveTA -n "animCurveTA622";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.5365128437888133e-014;
createNode animCurveTL -n "animCurveTL235";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.8091891372350974 12.800000000000001 
		-1.8091891372350974;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL236";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.8536629786602403 12.800000000000001 
		2.8536629786602403;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL237";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.15898405984075725 12.800000000000001 
		-0.15898405984075725;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA623";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA624";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA625";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL238";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.8091892394754774 12.800000000000001 
		1.8091892394754774;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL239";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.8536581165404047 12.800000000000001 
		2.8536581165404047;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL240";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.1589841173218719 12.800000000000001 
		-0.1589841173218719;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA626";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA627";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA628";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL241";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL242";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL243";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1;
createNode animCurveTL -n "animCurveTL244";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL245";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL246";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1;
createNode animCurveTA -n "animCurveTA629";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -10.587124207154311 3.2000000000000002 
		52.63721983934397 6.4000000000000004 15.886235737791942 9.6 -62.260510221512099 
		12.800000000000001 -10.587124207154311;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA630";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -60.592711499848917 3.2000000000000002 
		-24.480967171432489 6.4000000000000004 -56.41261817934766 9.6 -16.667453278765464 
		12.800000000000001 -60.592711499848917;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA631";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.15003680417244822 3.2000000000000002 
		-64.344364641857069 6.4000000000000004 -13.771905701213624 9.6 59.003404196651921 
		12.800000000000001 -0.15003680417244822;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA632";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 52.350458715167015 3.2000000000000002 
		-67.112553653651233 6.4000000000000004 13.448074510110578 9.6 36.153092751843296 
		12.800000000000001 52.350458715167015;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA633";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -49.562109142955322 3.2000000000000002 
		-24.617030314972098 6.4000000000000004 -58.389715313611788 9.6 -49.808794428896285 
		12.800000000000001 -49.562109142955322;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA634";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -64.608787988643826 3.2000000000000002 
		73.822439837243778 6.4000000000000004 -5.638634083958995 9.6 -42.097690970278627 
		12.800000000000001 -64.608787988643826;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA635";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 72.938873120018542 3.2000000000000002 
		59.468287502559065 6.4000000000000004 96.089558991115993 9.6 76.501698946427354 
		12.800000000000001 72.938873120018542;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA636";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 59.305463658789549 3.2000000000000002 
		59.305463658789549 6.4000000000000004 59.305463658789549 9.6 44.793203718970346 
		12.800000000000001 59.305463658789549;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA637";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -17.955810303398234 3.2000000000000002 
		18.476235154862632 6.4000000000000004 -11.178071753487012 9.6 -20.652533389258473 
		12.800000000000001 -17.955810303398234;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA638";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 10.082003051124259 3.2000000000000002 
		10.082003051124275 6.4000000000000004 10.082003051124284 9.6 10.082003051124259 
		12.800000000000001 10.082003051124259;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA639";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -4.7201893288928654 3.2000000000000002 
		-4.720189328892868 6.4000000000000004 -4.720189328892868 9.6 -4.7201893288928645 
		12.800000000000001 -4.7201893288928654;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA640";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 20.127263792592359 3.2000000000000002 
		-11.342548829337769 6.4000000000000004 -11.342548829337769 9.6 -11.342548829337769 
		12.800000000000001 20.127263792592359;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA641";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 11.615881410206432 3.2000000000000002 
		11.615881410206432 6.4000000000000004 11.615881410206432 9.6 11.615881410206432 
		12.800000000000001 11.615881410206432;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA642";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.32159281075535023 3.2000000000000002 
		0.32159281075535068 6.4000000000000004 0.32159281075535068 9.6 0.32159281075535068 
		12.800000000000001 0.32159281075535023;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA643";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 11.093319219895511 3.2000000000000002 
		11.093319219895511 6.4000000000000004 11.093319219895511 9.6 11.093319219895511 
		12.800000000000001 11.093319219895511;
createNode animCurveTA -n "animCurveTA644";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 59.959644693642325 3.2000000000000002 
		59.959644693642325 6.4000000000000004 59.959644693642325 9.6 59.959644693642325 
		12.800000000000001 59.959644693642325;
createNode animCurveTA -n "animCurveTA645";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 48.106469618696913 3.2000000000000002 
		48.106469618696913 6.4000000000000004 48.106469618696913 9.6 48.106469618696913 
		12.800000000000001 48.106469618696913;
createNode animCurveTA -n "animCurveTA646";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3.2000000000000002 0 6.4000000000000004 
		0 9.6 0 12.800000000000001 0;
createNode animCurveTA -n "animCurveTA647";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3.2000000000000002 0 6.4000000000000004 
		0 9.6 0 12.800000000000001 0;
createNode animCurveTA -n "animCurveTA648";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 86.382238158606057 3.2000000000000002 
		101.15442879205187 6.4000000000000004 92.916230826158568 9.6 80.723122903058737 
		12.800000000000001 86.382238158606057;
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
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA652";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.705218915343313 3.2000000000000002 
		27.705218915343313 6.4000000000000004 27.705218915343313 9.6 27.705218915343313 
		12.800000000000001 27.705218915343313;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA653";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 43.35103828268312 3.2000000000000002 
		43.35103828268312 6.4000000000000004 43.35103828268312 9.6 43.35103828268312 
		12.800000000000001 43.35103828268312;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA654";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 54.23572299800319 3.2000000000000002 
		54.23572299800319 6.4000000000000004 54.23572299800319 9.6 54.23572299800319 
		12.800000000000001 54.23572299800319;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA655";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 39.038703285259977 3.2000000000000002 
		39.038703285259977 6.4000000000000004 39.038703285259977 9.6 39.038703285259977 
		12.800000000000001 39.038703285259977;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA656";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 72.755037061650995 3.2000000000000002 
		72.755037061650995 6.4000000000000004 72.755037061650995 9.6 72.755037061650995 
		12.800000000000001 72.755037061650995;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA657";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 38.926480273156798 3.2000000000000002 
		38.926480273156798 6.4000000000000004 38.926480273156798 9.6 38.926480273156798 
		12.800000000000001 38.926480273156798;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA658";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3.2000000000000002 0 6.4000000000000004 
		0 9.6 0 12.800000000000001 0;
createNode animCurveTA -n "animCurveTA659";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3.2000000000000002 0 6.4000000000000004 
		0 9.6 0 12.800000000000001 0;
createNode animCurveTA -n "animCurveTA660";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 95.284705327631698 3.2000000000000002 
		81.622987204614219 6.4000000000000004 67.961269739221621 9.6 54.299552523938722 
		12.800000000000001 95.284705327631698;
createNode animCurveTA -n "animCurveTA661";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.2945941069882381 3.2000000000000002 
		1.2945941069882381 6.4000000000000004 1.2945941069882381 9.6 1.2945941069882381 
		12.800000000000001 1.2945941069882381;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA662";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 3.3208811165553147 3.2000000000000002 
		3.3208811165553147 6.4000000000000004 3.3208811165553147 9.6 3.3208811165553147 
		12.800000000000001 3.3208811165553147;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA663";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -27.525824477859967 3.2000000000000002 
		-27.525824477859967 6.4000000000000004 -27.525824477859967 9.6 -27.525824477859967 
		12.800000000000001 -27.525824477859967;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA664";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3.2000000000000002 -8.7597363552835983 
		6.4000000000000004 0 9.6 8.5462765971892694 12.800000000000001 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA665";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3.2000000000000002 0 6.4000000000000004 
		0 9.6 0 12.800000000000001 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA666";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 7.1280947740371996 3.2000000000000002 
		-0.83175856160007333 6.4000000000000004 7.9938158925748803 9.6 -0.23311028797652356 
		12.800000000000001 7.1280947740371996;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA667";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3.2000000000000002 0 6.4000000000000004 
		0 9.6 0 12.800000000000001 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA668";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3.2000000000000002 0 6.4000000000000004 
		0 9.6 0 12.800000000000001 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA669";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3.2000000000000002 0 6.4000000000000004 
		0 9.6 0 12.800000000000001 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA670";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3.2000000000000002 0 6.4000000000000004 
		0 9.6 2.5341680974547326e-017 12.800000000000001 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA671";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3.2000000000000002 -9.2427148064678804 
		6.4000000000000004 0 9.6 11.326972852810387 12.800000000000001 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA672";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -8.5537919350489524 3.2000000000000002 
		0 6.4000000000000004 -9.0708756291353403 9.6 -2.1583760932030622 12.800000000000001 
		-8.5537919350489524;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA673";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3.2000000000000002 0 6.4000000000000004 
		0 9.6 0 12.800000000000001 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA674";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3.2000000000000002 0 6.4000000000000004 
		0 9.6 0 12.800000000000001 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA675";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3.2000000000000002 0 6.4000000000000004 
		0 9.6 0 12.800000000000001 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA676";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3.2000000000000002 0 6.4000000000000004 
		0 9.6 0 12.800000000000001 0;
createNode animCurveTA -n "animCurveTA677";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3.2000000000000002 0 6.4000000000000004 
		0 9.6 0 12.800000000000001 0;
createNode animCurveTA -n "animCurveTA678";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 85.281921116584812 3.2000000000000002 
		90.838361755940937 6.4000000000000004 84.366077179210023 9.6 75.82635508790618 
		12.800000000000001 85.281921116584812;
createNode animCurveTA -n "animCurveTA679";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 26.194612819039175 3.2000000000000002 
		26.194612819039175 6.4000000000000004 26.194612819039175 9.6 26.194612819039175 
		12.800000000000001 26.194612819039175;
createNode animCurveTA -n "animCurveTA680";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 42.116293762219605 3.2000000000000002 
		42.116293762219605 6.4000000000000004 42.116293762219605 9.6 42.116293762219605 
		12.800000000000001 42.116293762219605;
createNode animCurveTA -n "animCurveTA681";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 51.312599966148291 3.2000000000000002 
		51.312599966148291 6.4000000000000004 51.312599966148291 9.6 51.312599966148291 
		12.800000000000001 51.312599966148291;
createNode animCurveTA -n "animCurveTA682";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3.2000000000000002 0 6.4000000000000004 
		0 9.6 0 12.800000000000001 0;
createNode animCurveTA -n "animCurveTA683";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3.2000000000000002 0 6.4000000000000004 
		0 9.6 0 12.800000000000001 0;
createNode animCurveTA -n "animCurveTA684";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 77.470348806333021 3.2000000000000002 
		86.611733534295581 6.4000000000000004 78.483027566383768 9.6 67.386024933077138 
		12.800000000000001 77.470348806333021;
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
select -ne :time1;
	setAttr ".o" 18;
select -ne :renderPartition;
	setAttr -s 22 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 22 ".s";
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
select -ne :characterPartition;
	setAttr -s 2 ".st";
select -ne :hyperGraphLayout;
	setAttr ".cch" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".img" -type "string" "";
	setAttr ".ims" 1;
select -ne :ikSystem;
connectAttr "opd_loco_runSource.st" "clipLibrary1.st[0]";
connectAttr "opd_loco_runSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL206.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL207.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "opd_Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "opd_Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr"
		;
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
connectAttr "animCurveTA582.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA583.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA584.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA585.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA586.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA587.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL220.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL221.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL222.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL223.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL224.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL225.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL226.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL227.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL228.a" "clipLibrary1.cel[0].cev[52].cevr";
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
connectAttr "animCurveTA611.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA612.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA613.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA614.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA615.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA616.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL229.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL230.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL231.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA617.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA618.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA619.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL232.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL233.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL234.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA620.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA621.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA622.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL235.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL236.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL237.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA623.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA624.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA625.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL238.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL239.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL240.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA626.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA627.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA628.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL241.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL242.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL243.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL244.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL245.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL246.a" "clipLibrary1.cel[0].cev[111].cevr";
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
connectAttr "animCurveTA679.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA680.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA681.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA682.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA683.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA684.a" "clipLibrary1.cel[0].cev[167].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[3].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[3].olnk";
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
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of opd_loco_run.ma
