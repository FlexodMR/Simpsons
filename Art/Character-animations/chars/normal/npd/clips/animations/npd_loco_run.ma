//Maya ASCII 4.0 scene
//Name: npd_loco_run.ma
//Last modified: Wed, Oct 09, 2002 11:02:17 AM
requires maya "4.0";
requires "p3dmayaexp" "18.5";
requires "p3dSimpleShader" "18.5";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "npd_loco_runSource";
	setAttr ".ihi" 0;
	setAttr ".du" 16;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL165";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 4.005 1 10.995 1 11 0 16 
		0;
	setAttr -s 6 ".kit[5]"  9;
	setAttr -s 6 ".kot[5]"  9;
createNode animCurveTL -n "animCurveTL166";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 2 1 2.005 0 13 0 13.005000000000001 
		1 16 1;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.021580113722050723 1 0.017738321678390356 
		2 0.008576231758497815 3 -0.0031910305373461425 4 -0.015233818866703138 5 
		-0.02659743033110119 6 -0.036190042293728006 7 -0.043156789313897312 8 -0.045832094047307023 
		9 -0.041141374842570175 10 -0.032456780643562264 11 -0.021987089297780437 
		12 -0.010147830731453193 13 0.0015759814191859923 14 0.011435736482155416 
		15 0.018490921532521569 16 0.021580113722050723;
createNode animCurveTL -n "Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.03799295079682391 1 0.10467699958266127 
		2 0.23104281691962353 3 0.37034642313000582 4 0.51544709713843495 5 0.63968965909810105 
		6 0.75487352828294219 7 0.85918466062307886 8 0.96680827489024679 9 1.0991419056033089 
		10 1.2327345441680522 11 1.3466664180862942 12 1.4547413278365102 13 1.5615942869265496 
		14 1.6738118773652815 15 1.8365234736616682 16 1.9387357694243295;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0;
createNode animCurveTU -n "animCurveTU33";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU34";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU35";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU36";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU37";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU38";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU39";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU40";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA454";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA455";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA456";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.19763288944005308 2 -0.19763288944005308 
		4 -0.19763288944005308 6 -0.19763288944005308 8 -0.19763288944005308 10 -0.19763288944005308 
		12 -0.19763288944005308 14 -0.19763288944005308 16 -0.19763288944005308;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "animCurveTL174";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.36956228769602462 2 0.28884186268296952 
		4 0.18919812301601746 6 0.12263042416664063 8 0.12263042416664063 10 0.12263042416664063 
		12 0.44473521445207587 14 0.52876720586341686 16 0.36956228769602462;
	setAttr -s 9 ".kit[1:8]"  9 9 3 3 3 1 9 
		3;
	setAttr -s 9 ".kot[1:8]"  9 9 3 3 3 1 9 
		3;
	setAttr -s 9 ".kix[6:8]"  0.0032826801761984825 0.017734091728925705 
		1;
	setAttr -s 9 ".kiy[6:8]"  0.99999463558197021 -0.99984276294708252 
		0;
	setAttr -s 9 ".kox[6:8]"  0.0032826552633196115 0.017734091728925705 
		1;
	setAttr -s 9 ".koy[6:8]"  0.99999463558197021 -0.99984276294708252 
		0;
	setAttr ".pst" 3;
createNode animCurveTL -n "animCurveTL175";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.34271856858817051 2 0.37931760405677162 
		4 0.99077043779297014 6 1.2880268618449033 8 1.2880268618449033 10 1.2880268618449033 
		12 1.4629783771771556 14 1.8015963961196431 16 2.3260298669170694;
	setAttr -s 9 ".kit[1:8]"  9 9 3 3 3 9 9 
		3;
	setAttr -s 9 ".kot[1:8]"  9 9 3 3 3 9 9 
		3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA457";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 68.750149689121002 2 54.899040703425321 
		4 -31.548014841396505 6 -0.14896661373414463 8 -0.14896661373414463 10 -0.14896661373414463 
		12 90.034847060019032 14 128.13735884566807 16 68.750149689121002;
	setAttr -s 9 ".kit[1:8]"  9 9 3 3 3 9 9 
		3;
	setAttr -s 9 ".kot[1:8]"  9 9 3 3 3 9 9 
		3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA458";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 4 0 6 0 8 0 10 0 12 0 14 
		0 16 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA459";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 4 0 6 0 8 0 10 0 12 0 14 
		0 16 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "animCurveTL176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.19697756422115981 2 0.19697756422115981 
		4 0.19697756422115981 6 0.19697756422115981 8 0.19697756422115981 10 0.19697756422115981 
		12 0.19697756422115981 14 0.19697756422115981 16 0.19697756422115981;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "animCurveTL177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.11742628606129618 2 0.11742628606129618 
		4 0.49095526767731257 6 0.5915354640377134 8 0.45706756536962601 10 0.27849434353650632 
		12 0.16571071551328526 14 0.11742628606129618 16 0.11742628606129618;
	setAttr -s 9 ".kit[0:8]"  3 3 9 9 9 9 1 
		3 3;
	setAttr -s 9 ".kot[0:8]"  3 3 9 9 9 9 1 
		3 3;
	setAttr -s 9 ".kix[6:8]"  0.0085520362481474876 1 1;
	setAttr -s 9 ".kiy[6:8]"  -0.99996340274810791 0 0;
	setAttr -s 9 ".kox[6:8]"  0.0085521051660180092 1 1;
	setAttr -s 9 ".koy[6:8]"  -0.99996340274810791 0 0;
	setAttr ".pst" 3;
createNode animCurveTL -n "animCurveTL178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.089378228552998554 2 -0.089378228552998554 
		4 0.092819338422239051 6 0.45628626194210675 8 1.1551405394721215 10 1.8732841967608571 
		12 2.3622791508970296 14 2.5801297943456865 16 2.5801297943456865;
	setAttr -s 9 ".kit[0:8]"  3 3 9 9 9 9 1 
		3 3;
	setAttr -s 9 ".kot[0:8]"  3 3 9 9 9 9 1 
		3 3;
	setAttr -s 9 ".kix[6:8]"  0.0015894857933744788 1 1;
	setAttr -s 9 ".kiy[6:8]"  0.99999874830245972 0 0;
	setAttr -s 9 ".kox[6:8]"  0.0015895203687250614 1 1;
	setAttr -s 9 ".koy[6:8]"  0.99999874830245972 0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA460";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 4 72.51831712904297 6 119.5141102620438 
		8 98.915690893898827 10 26.776539741627776 12 -27.076362153617296 14 -13.120466155259251 
		16 0;
	setAttr -s 9 ".kit[0:8]"  3 3 9 9 9 9 9 
		1 3;
	setAttr -s 9 ".kot[0:8]"  3 3 9 9 9 9 9 
		1 3;
	setAttr -s 9 ".kix[7:8]"  0.17238633334636688 1;
	setAttr -s 9 ".kiy[7:8]"  0.98502939939498901 0;
	setAttr -s 9 ".kox[7:8]"  0.17238633334636688 1;
	setAttr -s 9 ".koy[7:8]"  0.98502939939498901 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA461";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 4 0 6 0 8 0 10 0 12 0 14 
		0 16 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA462";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 4 0 6 0 8 0 10 0 12 0 14 
		0 16 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA463";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA464";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA465";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA466";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA467";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA468";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 4 0 6 0 8 0 10 0 12 0 14 
		0 16 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "animCurveTL180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 4 0 6 0 8 0 10 0 12 0 14 
		0 16 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "animCurveTL181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 2 1 4 1 6 1 8 1 10 1 12 1 14 
		1 16 1;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 4 0 6 0 8 0.17257136766448611 
		10 0 12 0 14 0 16 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "animCurveTL183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 4 0 6 0 8 0 10 0 12 0 14 
		0 16 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "animCurveTL184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 2 1 4 1 6 1 8 1 10 1 12 1 14 
		1 16 1;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.03051835782609956 2 0.012128411971154494 
		4 -0.021543497926842858 6 -0.051179557007297975 8 -0.064815239811546521 10 
		-0.045900019727483005 12 -0.014350949833259191 14 0.016172291882354136 16 
		0.03051835782609956;
	setAttr -s 9 ".kit[0:8]"  3 1 9 9 9 9 1 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 1 9 9 9 9 1 
		9 3;
	setAttr -s 9 ".kix[1:8]"  0.022146180272102356 0.021056396886706352 
		0.030798407271504402 0.2448594868183136 0.026412107050418854 0.020210478454828262 
		0.029702821746468544 1;
	setAttr -s 9 ".kiy[1:8]"  -0.99975472688674927 -0.99977827072143555 
		-0.99952560663223267 0.96955859661102295 0.99965113401412964 0.99979573488235474 
		0.99955874681472778 0;
	setAttr -s 9 ".kox[1:8]"  0.022146346047520638 0.021056396886706352 
		0.030798407271504402 0.2448594868183136 0.026412107050418854 0.020210651680827141 
		0.029702821746468544 1;
	setAttr -s 9 ".koy[1:8]"  -0.99975472688674927 -0.99977827072143555 
		-0.99952560663223267 0.96955859661102295 0.99965113401412964 0.99979573488235474 
		0.99955874681472778 0;
	setAttr ".pst" 3;
createNode animCurveTL -n "animCurveTL186";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.88882897454356935 2 0.90673492585542392 
		4 0.98999500772951876 6 0.9554245468354049 8 0.87216446496130917 10 0.90380104605051514 
		12 0.97206254886314247 14 0.93015053050036189 16 0.88882897454356935;
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
createNode animCurveTL -n "animCurveTL187";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.053729210245175789 2 0.32673819288997846 
		4 0.72893957619979599 6 1.0675337834781298 8 1.3672495549541861 10 1.7433195398350885 
		12 2.0572790745752805 14 2.3670862195139022 16 2.7417386536333597;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA469";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 24.820510117902884 2 24.820510117902884 
		4 24.820510117902884 6 24.820510117902884 8 24.820510117902884 10 24.820510117902884 
		12 24.820510117902884 14 24.820510117902884 16 24.820510117902884;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA470";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 -4.6866710903011901 4 -7.5734518508549122 
		6 -5.1932105618177555 8 -1.1905185208978395 10 2.45128814155597 12 5.1343787061452408 
		14 5.6234041697971371 16 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA471";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 -0.72402281122173284 4 0 
		6 0 8 0 10 0 12 0 14 0 16 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA472";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA473";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA474";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.0984482521620249;
createNode animCurveTA -n "animCurveTA475";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 18.588300303494186;
createNode animCurveTA -n "animCurveTA476";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA477";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA478";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -22.686733334985114;
createNode animCurveTA -n "animCurveTA479";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA480";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA481";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0579251312417477e-005;
createNode animCurveTA -n "animCurveTA482";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA483";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA484";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.0984482535121209;
createNode animCurveTA -n "animCurveTA485";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 18.588300300216801;
createNode animCurveTA -n "animCurveTA486";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA487";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA488";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -22.686733333057838;
createNode animCurveTA -n "animCurveTA489";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA490";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA491";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0579251312417477e-005;
createNode animCurveTA -n "animCurveTA492";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 10 0 11 0 14 0 16 0;
	setAttr -s 6 ".kit[1:5]"  3 3 9 9 9;
	setAttr -s 6 ".kot[1:5]"  3 3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA493";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 10 0 11 0 14 0 16 0;
	setAttr -s 6 ".kit[1:5]"  3 3 9 9 9;
	setAttr -s 6 ".kot[1:5]"  3 3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA494";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -53.481021487645641 3 2.4782236286598103 
		9 2.4782236286598103 10 1.0692113677648558 11 -38.155519431879036 14 -16.072382190806952 
		16 -53.481021487645641;
	setAttr -s 7 ".kit[4:6]"  9 9 3;
	setAttr -s 7 ".kot[4:6]"  9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA495";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
createNode animCurveTA -n "animCurveTA496";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
createNode animCurveTA -n "animCurveTA497";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.0579251312417477e-005 2 -0.19861304010057174 
		4 -39.488235982334174 7 6.3159195027017869 9 -46.541845519259041 11 4.2635767681788064 
		14 1.7809053040661718 16 1.0579251312417477e-005;
	setAttr -s 8 ".kit[2:7]"  9 9 9 3 3 9;
	setAttr -s 8 ".kot[2:7]"  9 9 9 3 3 9;
	setAttr ".pst" 3;
createNode animCurveTL -n "animCurveTL188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.99214331096561381;
createNode animCurveTL -n "animCurveTL189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.033841737269357866;
createNode animCurveTL -n "animCurveTL190";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.027201153963313806;
createNode animCurveTA -n "animCurveTA498";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.1805546814635164e-015;
createNode animCurveTA -n "animCurveTA499";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.016273151455886e-014;
createNode animCurveTA -n "animCurveTA500";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5.3764496942944332e-016;
createNode animCurveTL -n "animCurveTL191";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99214413619678865;
createNode animCurveTL -n "animCurveTL192";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.033851474715545553;
createNode animCurveTL -n "animCurveTL193";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.0272011762672867;
createNode animCurveTA -n "animCurveTA501";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 6.3611093629270264e-015;
createNode animCurveTA -n "animCurveTA502";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.5281705937149269e-014;
createNode animCurveTA -n "animCurveTA503";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.5365128437888133e-014;
createNode animCurveTL -n "animCurveTL194";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.8091891372350974 16 -1.8091891372350974;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL195";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.8536629786602403 16 2.8536629786602403;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL196";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.15898405984075725 16 -0.15898405984075725;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA504";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA505";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA506";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL197";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.8091892394754774 16 1.8091892394754774;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL198";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.8536581165404047 16 2.8536581165404047;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL199";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.1589841173218719 16 -0.1589841173218719;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA507";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA508";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA509";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1;
createNode animCurveTL -n "animCurveTL203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1;
createNode animCurveTA -n "animCurveTA510";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -10.587124207154311 4 43.632540770862576 
		6 41.958939746415112 8 -9.3437432381897008 11 -50.23654085839263 13 -49.905572234581868 
		16 -10.587124207154311;
	setAttr -s 7 ".kit[3:6]"  1 9 9 9;
	setAttr -s 7 ".kot[3:6]"  1 9 9 9;
	setAttr -s 7 ".kix[3:6]"  0.113714300096035 0.22916068136692047 
		0.23414808511734009 0.14419934153556824;
	setAttr -s 7 ".kiy[3:6]"  -0.99351346492767334 -0.97338861227035522 
		0.97220093011856079 0.98954868316650391;
	setAttr -s 7 ".kox[3:6]"  0.113714300096035 0.22916068136692047 
		0.23414808511734009 0.14419934153556824;
	setAttr -s 7 ".koy[3:6]"  -0.99351346492767334 -0.97338861227035522 
		0.97220093011856079 0.98954868316650391;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA511";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -60.592711499848917 4 -33.619538760068238 
		6 -29.53866459541187 8 -51.777089132077499 11 -31.026611249002165 13 -23.569445154777949 
		16 -60.592711499848917;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA512";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.15003680417244822 4 -51.301905419755514 
		6 -54.034149318697935 8 9.8895475419194945 11 46.433097137706149 13 50.766287009570348 
		16 -0.15003680417244822;
	setAttr -s 7 ".kit[3:6]"  1 1 9 9;
	setAttr -s 7 ".kot[3:6]"  1 1 9 9;
	setAttr -s 7 ".kix[3:6]"  0.095624566078186035 0.55866897106170654 
		0.20081865787506104 0.11182348430156708;
	setAttr -s 7 ".kiy[3:6]"  0.99541747570037842 -0.82939070463180542 
		-0.97962844371795654 -0.99372810125350952;
	setAttr -s 7 ".kox[3:6]"  0.095624573528766632 0.55866897106170654 
		0.20081865787506104 0.11182348430156708;
	setAttr -s 7 ".koy[3:6]"  0.99541747570037842 -0.82939070463180542 
		-0.97962844371795654 -0.99372810125350952;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA513";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 7.4778628670468192 4 -53.350899459502017 
		6 -54.267151619079911 8 -19.233970431461987 11 38.505479995480741 13 49.761504341689424 
		16 7.4778628670468192;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA514";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -60.386531024932466 4 -28.342285875578128 
		6 -25.555865214302095 8 -55.677304203944253 11 -29.747188946961909 13 -31.366951250229757 
		16 -60.386531024932466;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA515";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.72287313043467216 4 74.643467415160544 
		6 78.55627334374563 8 29.327123627306474 11 -45.393825992101185 13 -45.921817875781088 
		16 0.72287313043467216;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA516";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 54.084420586417494 4 40.884360050291242 
		6 67.54780972866989 8 70.837811235940066 11 48.974697023129231 13 88.446140080085286 
		16 54.084420586417494;
	setAttr -s 7 ".kit[0:6]"  3 1 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 1 9 9 9 9 3;
	setAttr -s 7 ".kix[1:6]"  0.46104970574378967 0.24713259935379028 
		0.45724993944168091 0.47672510147094727 0.88170933723449707 1;
	setAttr -s 7 ".kiy[1:6]"  -0.88737434148788452 0.96898168325424194 
		-0.88933825492858887 0.87905246019363403 0.47179299592971802 0;
	setAttr -s 7 ".kox[1:6]"  0.46104958653450012 0.24713259935379028 
		0.45724993944168091 0.47672510147094727 0.88170933723449707 1;
	setAttr -s 7 ".koy[1:6]"  -0.88737434148788452 0.96898168325424194 
		-0.88933825492858887 0.87905246019363403 0.47179299592971802 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA517";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 59.305463658789549 4 59.305463658789549 
		6 79.700828571919175 8 59.305463658789549 11 53.04883900401726 13 78.567146981800732 
		16 59.305463658789549;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA518";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -17.955810303398234 4 -9.9653036745668615 
		6 -11.568598104875477 8 -16.09258949947607 11 -17.548787988467556 13 -17.82067556448213 
		16 -17.955810303398234;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA519";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 10.082003051124259 4 18.019340345778215 
		6 16.536051437303001 8 12.203767314603303 11 10.630871801219605 13 10.29940262753191 
		16 10.082003051124259;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA520";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -4.7201893288928654 4 27.306002902147931 
		6 20.987295093925486 8 3.0136603448327026 11 -2.9469109931891184 13 -4.0969166796839005 
		16 -4.7201893288928654;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA521";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 20.127263792592359 4 9.9222029728318262 
		6 10.30493267840655 8 13.621933865314142 11 17.406249556887555 13 18.688308876290083 
		16 20.127263792592359;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA522";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 11.615881410206432 4 -4.3255893509461751 
		6 -4.2294933468364979 8 0.21040434308238024 11 6.7019535240292578 13 8.9864118751959499 
		16 11.615881410206432;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA523";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.32159281075535023 4 11.007672674127791 
		6 15.960953331939997 8 20.40108986739763 11 10.249461151578872 13 5.9007722156963816 
		16 0.32159281075535023;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA524";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 11.093319219895511 4 11.093319219895511 
		6 11.093319219895511 8 11.093319219895511 11 11.093319219895511 13 11.093319219895511 
		16 11.093319219895511;
createNode animCurveTA -n "animCurveTA525";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 59.959644693642325 4 59.959644693642325 
		6 59.959644693642325 8 59.959644693642325 11 59.959644693642325 13 59.959644693642325 
		16 59.959644693642325;
createNode animCurveTA -n "animCurveTA526";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 48.106469618696913 4 48.106469618696913 
		6 48.106469618696913 8 48.106469618696913 11 48.106469618696913 13 48.106469618696913 
		16 48.106469618696913;
createNode animCurveTA -n "animCurveTA527";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 11 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA528";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 11 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA529";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 86.382238158606057 4 86.382238158606057 
		6 86.382238158606057 8 86.382238158606057 11 86.382238158606057 13 86.382238158606057 
		16 86.382238158606057;
createNode animCurveTA -n "animCurveTA530";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA531";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA532";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA533";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.705218915343313 4 27.705218915343313 
		8 27.705218915343313 12 27.705218915343313 16 27.705218915343313;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA534";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 43.35103828268312 4 43.35103828268312 
		8 43.35103828268312 12 43.35103828268312 16 43.35103828268312;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA535";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 54.23572299800319 4 54.23572299800319 
		8 54.23572299800319 12 54.23572299800319 16 54.23572299800319;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA536";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 39.038703285259977 4 39.038703285259977 
		8 39.038703285259977 12 39.038703285259977 16 39.038703285259977;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA537";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 72.755037061650995 4 72.755037061650995 
		8 72.755037061650995 12 72.755037061650995 16 72.755037061650995;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA538";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 38.926480273156798 4 38.926480273156798 
		8 38.926480273156798 12 38.926480273156798 16 38.926480273156798;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA539";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 11 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA540";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 11 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA541";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 95.284705327631698 4 95.284705327631698 
		6 95.284705327631698 8 95.284705327631698 11 95.284705327631698 13 95.284705327631698 
		16 95.284705327631698;
createNode animCurveTA -n "animCurveTA542";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.2945941069882381 4 1.2945941069882381 
		6 1.2945941069882381 8 1.2945941069882381 11 1.2945941069882381 13 1.2945941069882381 
		16 1.2945941069882381;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA543";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 3.3208811165553147 4 3.3208811165553147 
		6 3.3208811165553147 8 3.3208811165553147 11 3.3208811165553147 13 3.3208811165553147 
		16 3.3208811165553147;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA544";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -27.525824477859967 4 -27.525824477859967 
		6 -27.525824477859967 8 -27.525824477859967 11 -27.525824477859967 13 -27.525824477859967 
		16 -27.525824477859967;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA545";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 -5.5355951749151409 6 -2.8327943033276739 
		11 9.8677043657752943 13 7.5455333406469531 16 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA546";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 2.2814812756941927 6 1.5188940897164371 
		11 -2.4645002551537845 13 -1.9429486033835557 16 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA547";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.873936778317866 4 1.6528840377003557 
		6 1.6680748318136038 11 1.8450298820537572 13 1.8700271709093028 16 1.873936778317866;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA548";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 11 0 13 0 16 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA549";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 11 0 13 0 16 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA550";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 11 0 13 0 16 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "Head_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -1.8507208995173645e-012 1 -1.5983647180961489 
		2 -3.6904846262428084 3 -5.4403574481858579 4 -6.5940466322011355 5 -6.1751267821880784 
		6 -4.8039320710347466 7 -2.9491335585513339 8 -0.69299126845843873 9 1.3962247154948231 
		10 3.0217213702402392 11 4.1568461083800887 12 4.7089244990273311 13 5.0509195662413493 
		14 4.7791195168885974 15 2.3107135281996811 16 -1.8507208995173645e-012;
createNode animCurveTA -n "Head_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1.5631914779955287e-012 1 -3.189708672965248 
		2 -7.2923187042227822 3 -10.12317350390575 4 -11.617223281027982 5 -10.230018638461916 
		6 -6.8232844433851794 7 -2.7699252779656787 8 1.6406742804965713 9 5.9348026000216239 
		10 9.9001319911917403 11 13.147363590507654 12 13.805483154092247 13 12.27092649805958 
		14 9.5997957581724673 15 4.4885926531866351 16 1.5631914779955287e-012;
createNode animCurveTA -n "Head_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -1.8304101267147239 1 -2.4934747135721089 
		2 -3.8718592734805592 3 -5.2631695139462238 4 -5.8732536055564104 5 -5.2238081212239873 
		6 -3.8101850408053419 7 -2.4089767974376963 8 -1.8480617391754457 9 -2.7211605466427939 
		10 -4.4657898896738191 11 -6.1770218183659606 12 -6.9073908423165298 13 -6.0135775837839027 
		14 -4.2290531159837936 15 -2.5987660821337242 16 -1.8304101267147239;
createNode animCurveTA -n "animCurveTA554";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 11 0 13 0 16 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA555";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 11 0 13 0 16 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA556";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 11 0 13 0 16 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA557";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 11 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA558";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 11 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA559";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 85.281921116584812 4 85.281921116584812 
		6 85.281921116584812 8 85.281921116584812 11 85.281921116584812 13 85.281921116584812 
		16 85.281921116584812;
createNode animCurveTA -n "animCurveTA560";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 26.194612819039175 4 26.194612819039175 
		6 26.194612819039175 8 26.194612819039175 11 26.194612819039175 13 26.194612819039175 
		16 26.194612819039175;
createNode animCurveTA -n "animCurveTA561";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 42.116293762219605 4 42.116293762219605 
		6 42.116293762219605 8 42.116293762219605 11 42.116293762219605 13 42.116293762219605 
		16 42.116293762219605;
createNode animCurveTA -n "animCurveTA562";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 51.312599966148291 4 51.312599966148291 
		6 51.312599966148291 8 51.312599966148291 11 51.312599966148291 13 51.312599966148291 
		16 51.312599966148291;
createNode animCurveTA -n "animCurveTA563";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 11 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA564";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 11 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA565";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 77.470348806333021 4 77.470348806333021 
		6 77.470348806333021 8 77.470348806333021 11 77.470348806333021 13 77.470348806333021 
		16 77.470348806333021;
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
	setAttr ".o" 7;
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
connectAttr "npd_loco_runSource.st" "clipLibrary1.st[0]";
connectAttr "npd_loco_runSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL165.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL166.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU33.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU34.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU35.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU36.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU37.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU38.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU39.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU40.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA454.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA455.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA456.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL170.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL171.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL172.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL173.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL174.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL175.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA457.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA458.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA459.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL176.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL177.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL178.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA460.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA461.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA462.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA463.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA464.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA465.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA466.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA467.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA468.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTL179.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTL180.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTL181.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTL182.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTL183.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTL184.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL185.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL186.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL187.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTA469.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTA470.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTA471.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTA472.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTA473.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTA474.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA475.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA476.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA477.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA478.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA479.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA480.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA481.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA482.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA483.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA484.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA485.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA486.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA487.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA488.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA489.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA490.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA491.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA492.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA493.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA494.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA495.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA496.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA497.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTL188.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTL189.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTL190.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA498.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA499.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA500.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL191.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL192.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL193.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA501.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA502.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA503.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL194.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL195.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL196.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA504.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA505.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA506.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL197.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL198.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL199.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA507.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA508.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA509.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL200.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL201.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL202.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTL203.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTL204.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTL205.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTA510.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTA511.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTA512.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTA513.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTA514.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTA515.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA516.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA517.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA518.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA519.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA520.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA521.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA522.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA523.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA524.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA525.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA526.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA527.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA528.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA529.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA530.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA531.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA532.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA533.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA534.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA535.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA536.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA537.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA538.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA539.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA540.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA541.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA542.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA543.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA544.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA545.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA546.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA547.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA548.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA549.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA550.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "Head_rotateX.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "Head_rotateY.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "Head_rotateZ.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA554.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA555.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA556.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA557.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA558.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA559.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA560.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA561.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA562.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA563.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA564.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA565.a" "clipLibrary1.cel[0].cev[161].cevr";
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
// End of npd_loco_run.ma
