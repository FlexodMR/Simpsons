//Maya ASCII 4.0 scene
//Name: cpd_loco_run.ma
//Last modified: Thu, Aug 01, 2002 01:58:04 PM
requires maya "4.0";
requires "p3dDeformer" "17.1.1.0";
requires "p3dmayaexp" "17.9.1.0";
requires "p3dSimpleShader" "17.1";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "cpd_loco_runSource";
	setAttr ".ihi" 0;
	setAttr ".du" 16;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL124";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 4 1 10 1 11 0 12 0 16 0;
	setAttr -s 7 ".kit[6]"  9;
	setAttr -s 7 ".kot[0:6]"  5 5 5 5 5 5 9;
createNode animCurveTL -n "animCurveTL125";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 3 0 4 0 10 0 11 0 12 1 16 1;
	setAttr -s 7 ".kit[6]"  9;
	setAttr -s 7 ".kot[0:6]"  5 5 5 5 5 5 9;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.013520649960726747 1 0.0084477283104106744 
		2 -0.0001450695852302815 3 -0.0074782727725688294 4 -0.014638358985086029 
		5 -0.021572320882147555 6 -0.026919142658375601 7 -0.029413632601233843 8 
		-0.028715312095299709 9 -0.023003976895063626 10 -0.015453612450146868 11 
		-0.0087731237472230481 12 -0.0025375458410729352 13 0.002723676911823967 
		14 0.0071648644678060994 15 0.011346394489323687 16 0.013520649960726747;
createNode animCurveTL -n "animCurveTL127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.023803831403079151 1 0.080702588317116533 
		2 0.14475591249171835 3 0.23203419666095099 4 0.32294453418752544 5 0.40078657951298985 
		6 0.47295305631793155 7 0.53830740641743635 8 0.60573713522965211 9 0.68864850084841311 
		10 0.77234867623340797 11 0.84373073688697064 12 0.91144321714033893 13 0.97839010517494884 
		14 1.0486981109297075 15 1.1298943216381043 16 1.2146816296867793;
createNode animCurveTA -n "animCurveTA337";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0;
createNode animCurveTU -n "animCurveTU25";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU26";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU27";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU28";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU29";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU30";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU31";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU32";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA338";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA339";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA340";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.19763288944005308 2 -0.19763288944005308 
		4 -0.19763288944005308 6 -0.19763288944005308 8 -0.19763288944005308 10 -0.19763288944005308 
		12 -0.19763288944005308 14 -0.19763288944005308 16 -0.19763288944005308;
	setAttr ".pst" 3;
createNode animCurveTL -n "animCurveTL133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.46536466949062461 2 0.38464424447756956 
		4 0.28500050481061739 6 0.21843280596124054 8 0.21843280596124054 10 0.21843280596124054 
		12 0.54053759624667574 14 0.62456958765801684 16 0.46536466949062461;
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
createNode animCurveTL -n "animCurveTL134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.34271856858817051 2 0.37931760405677162 
		4 0.99077043779297014 6 1.2880268618449033 8 1.2880268618449033 10 1.2880268618449033 
		12 1.4629783771771556 14 1.8015963961196431 16 2.3260298669170694;
	setAttr -s 9 ".kit[3:8]"  3 3 3 9 9 9;
	setAttr -s 9 ".kot[3:8]"  3 3 3 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA341";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 68.750149689121002 2 54.899040703425321 
		4 -31.548014841396505 6 -0.14896661373414463 8 -0.14896661373414463 10 -0.14896661373414463 
		12 90.034847060019032 14 128.13735884566807 16 68.750149689121002;
	setAttr -s 9 ".kit[3:8]"  3 3 3 9 9 9;
	setAttr -s 9 ".kot[3:8]"  3 3 3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA342";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 4 0 6 0 8 0 10 0 12 0 14 
		0 16 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA343";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 4 0 6 0 8 0 10 0 12 0 14 
		0 16 0;
	setAttr ".pst" 3;
createNode animCurveTL -n "animCurveTL135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.19697756422115981 2 0.19697756422115981 
		4 0.19697756422115981 6 0.19697756422115981 8 0.19697756422115981 10 0.19697756422115981 
		12 0.19697756422115981 14 0.19697756422115981 16 0.19697756422115981;
	setAttr ".pst" 3;
createNode animCurveTL -n "animCurveTL136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.21322866785589611 2 0.21322866785589611 
		4 0.58675764947191256 6 0.68733784583231339 8 0.55286994716422588 10 0.37429672533110636 
		12 0.26151309730788519 14 0.21322866785589611 16 0.21322866785589611;
	setAttr -s 9 ".kit[1:8]"  3 9 9 9 9 1 3 
		3;
	setAttr -s 9 ".kot[1:8]"  3 9 9 9 9 1 3 
		3;
	setAttr -s 9 ".kix[6:8]"  0.0085520362481474876 1 1;
	setAttr -s 9 ".kiy[6:8]"  -0.99996340274810791 0 0;
	setAttr -s 9 ".kox[6:8]"  0.0085521051660180092 1 1;
	setAttr -s 9 ".koy[6:8]"  -0.99996340274810791 0 0;
	setAttr ".pst" 3;
createNode animCurveTL -n "animCurveTL137";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.089378228552998554 2 -0.089378228552998554 
		4 0.092819338422239051 6 0.45628626194210675 8 1.1551405394721215 10 1.8732841967608571 
		12 2.3622791508970296 14 2.5801297943456865 16 2.5801297943456865;
	setAttr -s 9 ".kit[1:8]"  3 9 9 9 9 1 3 
		3;
	setAttr -s 9 ".kot[1:8]"  3 9 9 9 9 1 3 
		3;
	setAttr -s 9 ".kix[6:8]"  0.0015894857933744788 1 1;
	setAttr -s 9 ".kiy[6:8]"  0.99999874830245972 0 0;
	setAttr -s 9 ".kox[6:8]"  0.0015895203687250614 1 1;
	setAttr -s 9 ".koy[6:8]"  0.99999874830245972 0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA344";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 4 72.51831712904297 6 119.5141102620438 
		8 98.915690893898827 10 26.776539741627776 12 -27.076362153617296 14 -13.120466155259251 
		16 0;
	setAttr -s 9 ".kit[1:8]"  3 9 9 9 9 9 1 
		9;
	setAttr -s 9 ".kot[1:8]"  3 9 9 9 9 9 1 
		9;
	setAttr -s 9 ".kix[7:8]"  0.17238633334636688 0.27952209115028381;
	setAttr -s 9 ".kiy[7:8]"  0.98502939939498901 0.96013927459716797;
	setAttr -s 9 ".kox[7:8]"  0.17238633334636688 0.27952209115028381;
	setAttr -s 9 ".koy[7:8]"  0.98502939939498901 0.96013927459716797;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA345";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 4 0 6 0 8 0 10 0 12 0 14 
		0 16 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA346";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 4 0 6 0 8 0 10 0 12 0 14 
		0 16 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA347";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA348";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA349";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA350";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA351";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA352";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA353";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA354";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA355";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA356";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA357";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA358";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 4 0 6 0 8 0 9 0 10 0 12 
		0 14 0 15 0 16 0;
	setAttr ".pst" 3;
createNode animCurveTL -n "animCurveTL139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 4 0 6 0 8 0 9 0 10 0 12 
		0 14 0 15 0 16 0;
	setAttr ".pst" 3;
createNode animCurveTL -n "animCurveTL140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 3 1 4 1 6 1 8 1 9 1 10 1 12 
		1 14 1 15 1 16 1;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 4 0 6 0 8 0.17257136766448611 
		9 0.096048447873454831 10 0 12 0 14 0 15 0 16 0;
	setAttr ".pst" 3;
createNode animCurveTL -n "animCurveTL142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 4 0 6 0 8 0 9 0 10 0 12 
		0 14 0 15 0 16 0;
	setAttr ".pst" 3;
createNode animCurveTL -n "animCurveTL143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 3 1 4 1 6 1 8 1 9 1 10 1 12 
		1 14 1 15 1 16 1;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.03051835782609956 2 -0.00032744620447992194 
		4 -0.033041213165890024 6 -0.060760986373170608 8 -0.064815239811546521 10 
		-0.034881375956729473 12 -0.0057276634039738162 14 0.016172291882354136 16 
		0.03051835782609956;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "animCurveTL145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.85655067914033722 2 0.8744566304521918 
		4 0.95771671232628652 6 0.92314625143217255 8 0.83988616955807704 10 0.87152275064728302 
		12 0.93978425345991046 14 0.89787223509712977 16 0.85655067914033722;
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
createNode animCurveTL -n "animCurveTL146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.053729210245175789 2 0.32673819288997846 
		4 0.72893957619979599 6 1.0675337834781298 8 1.3672495549541861 10 1.7433195398350885 
		12 2.0572790745752805 14 2.3670862195139022 16 2.7417386536333597;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA359";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 20.950825280283908 2 20.950825280283908 
		4 20.950825280283908 6 20.950825280283908 8 20.950825280283908 10 20.950825280283908 
		12 20.950825280283908 14 20.950825280283908 16 20.950825280283908;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA360";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 -4.6866710903011901 4 -7.5734518508549122 
		6 -5.1932105618177555 8 -1.1905185208978395 10 2.45128814155597 12 5.1343787061452408 
		14 5.6234041697971371 16 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA361";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 -0.72402281122173284 4 0 
		6 0 8 0 10 0 12 0 14 0 16 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA362";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA363";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA364";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.0984482521620249;
createNode animCurveTA -n "animCurveTA365";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 18.588300303494186;
createNode animCurveTA -n "animCurveTA366";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA367";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA368";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -22.686733334985114;
createNode animCurveTA -n "animCurveTA369";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA370";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA371";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0579251312417477e-005;
createNode animCurveTA -n "animCurveTA372";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA373";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA374";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.0984482535121209;
createNode animCurveTA -n "animCurveTA375";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 18.588300300216801;
createNode animCurveTA -n "animCurveTA376";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA377";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA378";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -22.686733333057838;
createNode animCurveTA -n "animCurveTA379";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA380";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA381";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0579251312417477e-005;
createNode animCurveTA -n "animCurveTA382";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 10 0 11 0 14 0 16 0;
	setAttr -s 6 ".kit[1:5]"  3 3 9 9 9;
	setAttr -s 6 ".kot[1:5]"  3 3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA383";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 10 0 11 0 14 0 16 0;
	setAttr -s 6 ".kit[1:5]"  3 3 9 9 9;
	setAttr -s 6 ".kot[1:5]"  3 3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA384";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -53.481021487645641 3 2.4782236286598103 
		9 2.4782236286598103 10 1.0692113677648558 11 -38.155519431879036 14 -16.072382190806952 
		16 -53.481021487645641;
	setAttr -s 7 ".kit[4:6]"  9 9 3;
	setAttr -s 7 ".kot[4:6]"  9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA385";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
createNode animCurveTA -n "animCurveTA386";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
createNode animCurveTA -n "animCurveTA387";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.0579251312417477e-005 2 -0.19861304010057174 
		4 -39.488235982334174 7 6.3159195027017869 9 -46.541845519259041 11 4.2635767681788064 
		14 1.7809053040661718 16 1.0579251312417477e-005;
	setAttr -s 8 ".kit[2:7]"  9 9 9 3 3 9;
	setAttr -s 8 ".kot[2:7]"  9 9 9 3 3 9;
	setAttr ".pst" 3;
createNode animCurveTL -n "animCurveTL147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.99214331096561381;
createNode animCurveTL -n "animCurveTL148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.033841737269357866;
createNode animCurveTL -n "animCurveTL149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.027201153963313806;
createNode animCurveTA -n "animCurveTA388";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.1805546814635164e-015;
createNode animCurveTA -n "animCurveTA389";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.016273151455886e-014;
createNode animCurveTA -n "animCurveTA390";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5.3764496942944332e-016;
createNode animCurveTL -n "animCurveTL150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99214413619678865;
createNode animCurveTL -n "animCurveTL151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.033851474715545553;
createNode animCurveTL -n "animCurveTL152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.0272011762672867;
createNode animCurveTA -n "animCurveTA391";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 6.3611093629270264e-015;
createNode animCurveTA -n "animCurveTA392";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.5281705937149269e-014;
createNode animCurveTA -n "animCurveTA393";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.5365128437888133e-014;
createNode animCurveTL -n "animCurveTL153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.3705977767760478;
createNode animCurveTL -n "animCurveTL154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.1618658070195953;
createNode animCurveTL -n "animCurveTL155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.12044246479037771;
createNode animCurveTA -n "animCurveTA394";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA395";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA396";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.3705978542308779;
createNode animCurveTL -n "animCurveTL157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.1618621235956237;
createNode animCurveTL -n "animCurveTL158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.12044250833667494;
createNode animCurveTA -n "animCurveTA397";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA398";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA399";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1;
createNode animCurveTL -n "animCurveTL162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1;
createNode animCurveTA -n "animCurveTA400";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -10.587124207154311 4 52.63721983934397 
		8 15.886235737791942 12 -62.260510221512099 16 -10.587124207154311;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA401";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -60.592711499848917 4 -24.480967171432489 
		8 -56.41261817934766 12 -16.667453278765464 16 -60.592711499848917;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA402";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.15003680417244822 4 -64.344364641857069 
		8 -13.771905701213624 12 59.003404196651921 16 -0.15003680417244822;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA403";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 15.193242356562449 4 -53.609443747430014 
		8 -22.921699214171511 12 52.693726392376583 16 15.193242356562449;
	setAttr -s 5 ".kit[2:4]"  1 9 9;
	setAttr -s 5 ".kot[2:4]"  1 9 9;
	setAttr -s 5 ".kix[2:4]"  0.084832921624183655 0.37208119034767151 
		0.1996157318353653;
	setAttr -s 5 ".kiy[2:4]"  0.99639517068862915 0.92820018529891968 
		-0.97987425327301025;
	setAttr -s 5 ".kox[2:4]"  0.084832936525344849 0.37208119034767151 
		0.1996157318353653;
	setAttr -s 5 ".koy[2:4]"  0.99639517068862915 0.92820018529891968 
		-0.97987425327301025;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -57.561344427126045 4 -25.279137940425237 
		8 -53.022542041234182 12 -40.839977736936547 16 -57.561344427126045;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA405";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -21.45100553352173 4 57.594080128123693 
		8 27.241184270589006 12 -45.98638378671253 16 -21.45100553352173;
	setAttr -s 5 ".kit[1:4]"  9 1 9 1;
	setAttr -s 5 ".kot[1:4]"  9 1 9 1;
	setAttr -s 5 ".kix[0:4]"  0.079021528363227844 0.29939168691635132 
		0.086174517869949341 0.29939168691635132 0.13764835894107819;
	setAttr -s 5 ".kiy[0:4]"  0.99687290191650391 0.95413029193878174 
		-0.99628007411956787 -0.95413029193878174 0.99048113822937012;
	setAttr -s 5 ".kox[0:4]"  0.079021535813808441 0.29939168691635132 
		0.086174502968788147 0.29939168691635132 0.13764834403991699;
	setAttr -s 5 ".koy[0:4]"  0.99687290191650391 0.95413029193878174 
		-0.99628007411956787 -0.95413029193878174 0.99048113822937012;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA406";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 72.938873120018542 4 59.468287502559065 
		8 96.089558991115993 12 76.501698946427354 16 72.938873120018542;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 59.305463658789549 4 59.305463658789549 
		8 59.305463658789549 12 44.793203718970346 16 59.305463658789549;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA408";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -17.955810303398234 4 18.476235154862632 
		8 -11.178071753487012 12 -20.652533389258473 16 -17.955810303398234;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 10.082003051124259 4 10.082003051124275 
		8 10.082003051124284 12 10.082003051124259 16 10.082003051124259;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA410";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -4.7201893288928654 4 -4.720189328892868 
		8 -4.720189328892868 12 -4.7201893288928645 16 -4.7201893288928654;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA411";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 20.127263792592359 4 -11.342548829337769 
		8 -11.342548829337769 12 -11.342548829337769 16 20.127263792592359;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA412";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 11.615881410206432 4 11.615881410206432 
		8 11.615881410206432 12 11.615881410206432 16 11.615881410206432;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA413";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.32159281075535023 4 0.32159281075535068 
		8 0.32159281075535068 12 0.32159281075535068 16 0.32159281075535023;
	setAttr ".pst" 3;
createNode animCurveTA -n "Thumb_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 116.13993493632321 16 116.13993493632321;
createNode animCurveTA -n "Thumb_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 43.625650306144166 16 43.625650306144166;
createNode animCurveTA -n "Thumb_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 20.581074581368942 16 20.581074581368942;
createNode animCurveTA -n "animCurveTA417";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 8 0 12 0 16 0;
createNode animCurveTA -n "animCurveTA418";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 8 0 12 0 16 0;
createNode animCurveTA -n "animCurveTA419";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 86.382238158606057 4 101.15442879205187 
		8 92.916230826158568 12 80.723122903058737 16 86.382238158606057;
createNode animCurveTA -n "animCurveTA420";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA421";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA422";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA423";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.705218915343313 4 27.705218915343313 
		8 27.705218915343313 12 27.705218915343313 16 27.705218915343313;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA424";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 43.35103828268312 4 43.35103828268312 
		8 43.35103828268312 12 43.35103828268312 16 43.35103828268312;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA425";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 54.23572299800319 4 54.23572299800319 
		8 54.23572299800319 12 54.23572299800319 16 54.23572299800319;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA426";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 39.038703285259977 4 39.038703285259977 
		8 39.038703285259977 12 39.038703285259977 16 39.038703285259977;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA427";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 72.755037061650995 4 72.755037061650995 
		8 72.755037061650995 12 72.755037061650995 16 72.755037061650995;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA428";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 38.926480273156798 4 38.926480273156798 
		8 38.926480273156798 12 38.926480273156798 16 38.926480273156798;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA429";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 8 0 12 0 16 0;
createNode animCurveTA -n "animCurveTA430";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 8 0 12 0 16 0;
createNode animCurveTA -n "animCurveTA431";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 95.284705327631698 4 81.622987204614219 
		8 67.961269739221621 12 54.299552523938722 16 95.284705327631698;
createNode animCurveTA -n "animCurveTA432";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.2945941069882381 4 1.2945941069882381 
		8 1.2945941069882381 12 1.2945941069882381 16 1.2945941069882381;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA433";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 3.3208811165553147 4 3.3208811165553147 
		8 3.3208811165553147 12 3.3208811165553147 16 3.3208811165553147;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA434";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -27.525824477859967 4 -27.525824477859967 
		8 -27.525824477859967 12 -27.525824477859967 16 -27.525824477859967;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA435";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 -8.7597363552835983 8 0 12 
		8.5462765971892694 16 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA436";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 8 0 12 0 16 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA437";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.97510462353592209 4 -8.9349579591731985 
		8 -0.10938350499824644 12 -8.336309685549649 16 -0.97510462353592209;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA438";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 8 0 12 0 16 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA439";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 8 0 12 0 16 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA440";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 8 0 12 0 16 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA441";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 8 0 12 2.5341680974547326e-017 
		16 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA442";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 -9.2427148064678804 8 0 12 
		11.326972852810387 16 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA443";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -18.616622641828219 4 -10.062830706779266 
		8 -19.133706335914599 12 -12.22120679998233 16 -18.616622641828219;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA444";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 8 0 12 0 16 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA445";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 8 0 12 0 16 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA446";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 5.671986885245901 4 5.671986885245901 
		8 5.671986885245901 12 5.671986885245901 16 5.671986885245901;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA447";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 8 0 12 0 16 0;
createNode animCurveTA -n "animCurveTA448";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 8 0 12 0 16 0;
createNode animCurveTA -n "animCurveTA449";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 85.281921116584812 4 90.838361755940937 
		8 84.366077179210023 12 75.82635508790618 16 85.281921116584812;
createNode animCurveTA -n "Thumb_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 32.937272875846034 16 32.937272875846034;
createNode animCurveTA -n "Thumb_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 112.52142196687893 16 112.52142196687893;
createNode animCurveTA -n "Thumb_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -145.41815583257301 16 -145.41815583257301;
createNode animCurveTA -n "animCurveTA453";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 8 0 12 0 16 0;
createNode animCurveTA -n "animCurveTA454";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 8 0 12 0 16 0;
createNode animCurveTA -n "animCurveTA455";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 77.470348806333021 4 86.611733534295581 
		8 78.483027566383768 12 67.386024933077138 16 77.470348806333021;
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
	setAttr -s 654 ".gn";
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
connectAttr "cpd_loco_runSource.st" "clipLibrary1.st[0]";
connectAttr "cpd_loco_runSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL124.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL125.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL127.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA337.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU25.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU26.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU27.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU28.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU29.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU30.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU31.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU32.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA338.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA339.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA340.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL129.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL130.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL131.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL132.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL133.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL134.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA341.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA342.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA343.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL135.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL136.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL137.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA344.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA345.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA346.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA347.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA348.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA349.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA350.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA351.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA352.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA353.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA354.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA355.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA356.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA357.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA358.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL138.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL139.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL140.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL141.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL142.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL143.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL144.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL145.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL146.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA359.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA360.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA361.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA362.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA363.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA364.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA365.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA366.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA367.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA368.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA369.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA370.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA371.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA372.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA373.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA374.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA375.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA376.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA377.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA378.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA379.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA380.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA381.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA382.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA383.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA384.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA385.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA386.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA387.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL147.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL148.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL149.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA388.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA389.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA390.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL150.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL151.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL152.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA391.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA392.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA393.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL153.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL154.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL155.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA394.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA395.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA396.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL156.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL157.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL158.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA397.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA398.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA399.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL159.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL160.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL161.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL162.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL163.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL164.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA400.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA401.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA402.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA403.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA404.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA405.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA406.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA407.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA408.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA409.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA410.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA411.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA412.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA413.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "Thumb_Base_L_rotateX.a" "clipLibrary1.cel[0].cev[126].cevr"
		;
connectAttr "Thumb_Base_L_rotateY.a" "clipLibrary1.cel[0].cev[127].cevr"
		;
connectAttr "Thumb_Base_L_rotateZ.a" "clipLibrary1.cel[0].cev[128].cevr"
		;
connectAttr "animCurveTA417.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA418.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA419.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA420.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA421.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA422.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA423.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA424.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA425.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA426.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA427.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA428.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA429.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA430.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA431.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA432.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA433.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA434.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA435.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA436.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA437.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA438.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA439.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA440.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA441.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA442.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA443.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA444.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA445.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA446.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA447.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA448.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA449.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "Thumb_Base_R_rotateX.a" "clipLibrary1.cel[0].cev[162].cevr"
		;
connectAttr "Thumb_Base_R_rotateY.a" "clipLibrary1.cel[0].cev[163].cevr"
		;
connectAttr "Thumb_Base_R_rotateZ.a" "clipLibrary1.cel[0].cev[164].cevr"
		;
connectAttr "animCurveTA453.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA454.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA455.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of cpd_loco_run.ma
