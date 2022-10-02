//Maya ASCII 4.0 scene
//Name: npd_loco_walk.ma
//Last modified: Thu, Oct 10, 2002 11:03:56 AM
requires maya "4.0";
requires "p3dmayaexp" "18.6";
requires "p3dSimpleShader" "18.6";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "npd_loco_walkSource";
	setAttr ".ihi" 0;
	setAttr ".du" 30;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL165";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 4 1 4.005 0 13.995 0 14 1 30 
		1;
createNode animCurveTL -n "animCurveTL166";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.995 0 1 1 17 1 17.005 0 30 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 3;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 3;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -0.0036648695686417754 1 -0.0036648695686417754 
		2 -0.0036648695686417754 3 -0.0036648695686417754 4 -0.0036648695686417754 
		5 -0.0036648695686417754 6 -0.0036648695686417754 7 -0.0036648695686417754 
		8 -0.0036648695686417754 9 -0.0036648695686417754 10 -0.0036648695686417754 
		11 -0.0036648695686417754 12 -0.0036648695686417754 13 -0.0036648695686417754 
		14 -0.0036648695686417754 15 -0.0036648695686417754 16 -0.0036648695686417754 
		17 -0.0036648695686417754 18 -0.0036648695686417754 19 -0.0036648695686417754 
		20 -0.0036648695686417754 21 -0.0036648695686417754 22 -0.0036648695686417754 
		23 -0.0036648695686417754 24 -0.0036648695686417754 25 -0.0036648695686417754 
		26 -0.0036648695686417754 27 -0.0036648695686417754 28 -0.0036648695686417754 
		29 -0.0036648695686417754 30 -0.0036648695686417754;
createNode animCurveTL -n "Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0.03446334297362659 1 0.064900503327306361 
		2 0.095337663900171399 3 0.12577482467656562 4 0.15621198564083291 5 0.1866491467773172 
		6 0.21708630807036236 7 0.24752346950431242 8 0.27796063106351115 9 0.3083977927323025 
		10 0.33883495449503032 11 0.36927211633603868 12 0.39970927823967134 13 0.43014644019027226 
		14 0.46058360217218541 15 0.49102076416975465 16 0.52145792616732378 17 0.55189508814923682 
		18 0.58233225009983769 19 0.61276941200347024 20 0.64320657384447844 21 0.67364373560720614 
		22 0.70408089727599721 23 0.73451805883519572 24 0.76495522026914564 25 0.79539238156219039 
		26 0.82582954269867426 27 0.85626670366294133 28 0.88670386443933513 29 0.91714102501219974 
		30 0.94757818536587923;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0;
createNode animCurveTU -n "animCurveTU33";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU34";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU35";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU36";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU37";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU38";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
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
	setAttr -s 7 ".ktv[0:6]"  0 -0.16852016461729388 5 -0.16852016461729388 
		10 -0.16852016461729388 15 -0.16852016461729388 20 -0.16852016461729388 25 
		-0.16852016461729388 30 -0.16852016461729388;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL174";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.11742609903756819 5 0.30206689858629404 
		10 0.23386050334284117 15 0.11700000000000001 20 0.11700000000000001 25 0.11700000000000001 
		30 0.11700000000000001;
	setAttr -s 7 ".kit[1:6]"  1 1 3 3 9 3;
	setAttr -s 7 ".kot[1:6]"  1 1 3 3 9 3;
	setAttr -s 7 ".kix[1:6]"  0.020509175956249237 0.010167140513658524 
		1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0.99978965520858765 -0.99994832277297974 
		0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  0.020509520545601845 0.010167479515075684 
		1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0.99978965520858765 -0.99994832277297974 
		0 0 0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL175";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.2791985960448875 5 -0.10297451805665084 
		10 0.59308056567220002 15 0.95665712093509625 20 1.0347111662180428 25 1.0347111662180428 
		30 1.0347111662180428;
	setAttr -s 7 ".kit[0:6]"  3 1 1 1 3 9 3;
	setAttr -s 7 ".kot[0:6]"  3 1 1 1 3 9 3;
	setAttr -s 7 ".kix[1:6]"  0.0057956036180257797 0.0026969679165631533 
		0.009320099838078022 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0.99998319149017334 0.9999963641166687 
		0.99995654821395874 0 0 0;
	setAttr -s 7 ".kox[1:6]"  0.0057955901138484478 0.0026969905011355877 
		0.0093201370909810066 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0.99998319149017334 0.9999963641166687 
		0.99995654821395874 0 0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA457";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 45.952631183994399 10 31.067880737028037 
		15 -20.316792104559379 20 -1.1023793759034133 25 -1.1023793759034133 30 0;
	setAttr -s 7 ".kit[0:6]"  3 1 1 1 3 3 9;
	setAttr -s 7 ".kot[0:6]"  3 1 1 1 3 3 9;
	setAttr -s 7 ".kix[1:6]"  0.20858076214790344 0.15092316269874573 
		0.96985322237014771 1 1 0.99340254068374634;
	setAttr -s 7 ".kiy[1:6]"  0.97800517082214355 -0.98854547739028931 
		0.24368971586227417 0 0 0.11467928439378738;
	setAttr -s 7 ".kox[1:6]"  0.20858082175254822 0.15092316269874573 
		0.9698527455329895 1 1 0.99340254068374634;
	setAttr -s 7 ".koy[1:6]"  0.97800511121749878 -0.98854547739028931 
		0.24369169771671295 0 0 0.11467928439378738;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA458";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -6.6601936810973017 5 -6.6601936810973141 
		10 -6.6601936810973141 15 -6.6601936810973141 20 -6.6601936810973159 25 -6.6601936810973159 
		30 -6.6601936810973017;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA459";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 10 0 15 0 20 0 25 0 30 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.13739899118519483 5 0.13739899118519483 
		10 0.13739899118519483 15 0.13739899118519483 20 0.13739899118519483 25 0.13739899118519483 
		30 0.13739899118519483;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL177";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.121 5 0.121 10 0.121 15 0.13271997902742214 
		20 0.30778726938082024 25 0.260830461535492 30 0.121;
	setAttr -s 7 ".kit[3:6]"  1 1 1 3;
	setAttr -s 7 ".kot[3:6]"  1 1 1 3;
	setAttr -s 7 ".kix[3:6]"  0.034387394785881042 0.01594969630241394 
		0.0094337491318583488 1;
	setAttr -s 7 ".kiy[3:6]"  0.99940860271453857 0.99987280368804932 
		-0.99995547533035278 0;
	setAttr -s 7 ".kox[3:6]"  0.034387446939945221 0.015949888154864311 
		0.009433794766664505 1;
	setAttr -s 7 ".koy[3:6]"  0.99940860271453857 0.99987280368804932 
		-0.99995547533035278 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL178";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.39700000000000002 5 0.39700000000000002 
		10 0.39700000000000002 15 0.39700000000000002 20 0.49775932129525297 25 0.95566118832005575 
		30 1.7068711768382889;
	setAttr -s 7 ".kit[4:6]"  1 1 3;
	setAttr -s 7 ".kot[4:6]"  1 1 3;
	setAttr -s 7 ".kix[4:6]"  0.0076118898577988148 0.0022660556714981794 
		1;
	setAttr -s 7 ".kiy[4:6]"  0.99997103214263916 0.99999743700027466 
		0;
	setAttr -s 7 ".kox[4:6]"  0.0076118884608149529 0.0022660433314740658 
		1;
	setAttr -s 7 ".koy[4:6]"  0.99997103214263916 0.99999743700027466 
		0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA460";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -21.346586890289334 5 0.16770457905359093 
		10 0.16770457905359093 15 7.5904744991429327 20 35.658171308918838 25 31.580693365564557 
		30 -21.346586890289334;
	setAttr -s 7 ".kit[3:6]"  1 1 1 3;
	setAttr -s 7 ".kot[3:6]"  1 1 1 3;
	setAttr -s 7 ".kix[3:6]"  0.47627463936805725 0.45395228266716003 
		0.16195124387741089 1;
	setAttr -s 7 ".kiy[3:6]"  0.87929654121398926 0.89102596044540405 
		-0.98679876327514648 0;
	setAttr -s 7 ".kox[3:6]"  0.4762747585773468 0.45395222306251526 
		0.16195119917392731 1;
	setAttr -s 7 ".koy[3:6]"  0.87929654121398926 0.89102602005004883 
		-0.98679876327514648 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA461";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 12.864087651322865 5 12.864087651322849 
		10 12.864087651322849 15 12.864087651322849 20 12.864087651322846 25 12.864087651322846 
		30 12.864087651322865;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 3 3 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 3 3 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA462";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.6437643349617042 5 1.6437643349617119 
		10 1.6437643349617119 15 1.6437643349617119 20 1.6437643349617161 25 1.6437643349617257 
		30 1.6437643349617042;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 3 3 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 3 3 9;
	setAttr ".pst" 4;
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
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 10 0.010540885969283001 
		15 0 17 0 22 0 25 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 5 1 10 1.0075568577481531 15 
		1 17 1 22 1 25 1;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.0034852718120216707 30 -0.0034852718120216707;
createNode animCurveTL -n "animCurveTL183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 30 1;
createNode animCurveTL -n "animCurveTL185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.0051828179555656355 5 -0.0051828179555656355 
		10 -0.0051828179555656355 15 -0.0051828179555656355 20 -0.0051828179555656355 
		25 -0.0051828179555656355 30 -0.0051828179555656355;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL186";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.9002693270464347 5 0.96064828938065439 
		10 0.98954400991151614 15 0.92608797803498877 20 0.94657057852412918 25 0.96856643524025143 
		30 0.89977480554638378;
	setAttr -s 7 ".kit[0:6]"  3 1 1 1 1 9 3;
	setAttr -s 7 ".kot[0:6]"  3 1 1 1 1 9 3;
	setAttr -s 7 ".kix[1:6]"  0.026222869753837585 0.1120229959487915 
		0.4311644434928894 0.029093097895383835 0.071051478385925293 1;
	setAttr -s 7 ".kiy[1:6]"  0.99965614080429077 -0.9937056303024292 
		-0.90227335691452026 0.99957668781280518 -0.99747264385223389 0;
	setAttr -s 7 ".kox[1:6]"  0.026223015040159225 0.11202277988195419 
		0.43116381764411926 0.029094543308019638 0.071051478385925293 1;
	setAttr -s 7 ".koy[1:6]"  0.99965614080429077 -0.9937056303024292 
		-0.90227365493774414 0.99957668781280518 -0.99747264385223389 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL187";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.048737677951994719 30 1.3400545753219466;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA469";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -2.3515468982246754 5 -1.6140694552696837 
		10 -0.70915303330261481 15 -0.37215254457743391 20 -0.68131034883926744 25 
		-1.4911566919711714 30 -2.3515468982246754;
	setAttr -s 7 ".kit[0:6]"  3 1 9 1 9 1 3;
	setAttr -s 7 ".kot[0:6]"  3 1 9 1 9 1 3;
	setAttr -s 7 ".kix[1:6]"  0.99376332759857178 0.99789243936538696 
		0.99997234344482422 0.99828797578811646 0.99486231803894043 1;
	setAttr -s 7 ".kiy[1:6]"  0.11150985211133957 0.064889572560787201 
		0.0074410769157111645 -0.058490611612796783 -0.10123731940984726 0;
	setAttr -s 7 ".kox[1:6]"  0.99376332759857178 0.99789243936538696 
		0.99997234344482422 0.99828797578811646 0.99486231803894043 1;
	setAttr -s 7 ".koy[1:6]"  0.11150985211133957 0.064889572560787201 
		0.0074410941451787949 -0.058490611612796783 -0.10123737156391144 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA470";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.62803185506048198 5 -2.3164019226791592 
		10 -3.6387171052969998 15 -4.1883907499716546 20 -3.6387171052969998 25 -2.3164019226791592 
		30 -0.62803185506048198;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA471";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.5944511152083107 5 -1.1914061351135672 
		10 -0.67344746148252055 15 -0.39633673882566273 20 -0.67344746148252055 25 
		-1.1914061351135672 30 -1.5944511152083107;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
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
	setAttr -s 5 ".ktv[0:4]"  0 0 2 0 11 0 20 0 24 0;
	setAttr -s 5 ".kit[2:4]"  3 9 9;
	setAttr -s 5 ".kot[2:4]"  3 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA493";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2 0 11 0 20 0 24 0;
	setAttr -s 5 ".kit[2:4]"  3 9 9;
	setAttr -s 5 ".kot[2:4]"  3 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA494";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.0579251312417477e-005 2 -8.7344250225594706 
		4 -24.562661898122339 8 -29.86184391130433 11 -23.619988621910551 16 0 20 
		0 24 1.0579251312417477e-005 30 0;
	setAttr -s 9 ".kit[0:8]"  3 1 1 9 9 3 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 1 1 9 9 3 9 
		9 9;
	setAttr -s 9 ".kix[1:8]"  0.31565594673156738 0.33944827318191528 
		0.99752324819564819 0.45549285411834717 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  -0.94887369871139526 -0.94062471389770508 
		0.070337153971195221 0.890239417552948 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  0.31565597653388977 0.33944809436798096 
		0.99752324819564819 0.45549285411834717 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  -0.94887369871139526 -0.94062477350234985 
		0.070337153971195221 0.890239417552948 0 0 0 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA495";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 16 0 20 0 24 0 
		30 0;
	setAttr -s 8 ".kit[3:7]"  3 9 9 9 9;
	setAttr -s 8 ".kot[3:7]"  3 9 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA496";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 16 0 20 0 24 0 
		30 0;
	setAttr -s 8 ".kit[3:7]"  3 9 9 9 9;
	setAttr -s 8 ".kot[3:7]"  3 9 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA497";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.0579251312417477e-005 4 1.0579251312417477e-005 
		8 1.0579251312417477e-005 13 1.0579251312417477e-005 16 0 20 -23.367012926965039 
		24 1.0579251312417477e-005 30 1.0579251312417477e-005;
	setAttr -s 8 ".kit[3:7]"  3 3 9 3 9;
	setAttr -s 8 ".kot[3:7]"  3 3 9 3 9;
	setAttr ".pst" 3;
createNode animCurveTL -n "animCurveTL188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.12809875988665859 7 -0.19454727969024063 
		13 -0.24682128911448922 19 -0.24698424048835854 24 -0.18041250705882975 30 
		-0.12809875988665859;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.87752324228974576 7 -0.92345722074161574 
		13 -0.93121426496052995 19 -0.92654126114256641 24 -0.91406556432410213 30 
		-0.87752324228974576;
createNode animCurveTL -n "animCurveTL190";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.38705104168888699 7 0.080198705494766834 
		13 -0.19357135414215151 19 -0.00067151708627149814 24 0.25536944957073893 
		30 0.38705104168888699;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA498";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 3.3777107182329411 7 4.126070937433937 
		13 2.336763691512318 19 -14.203139549401691 24 -10.273203052724559 30 3.3777107182329411;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA499";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 32.640670713633249 7 12.72658605626485 
		13 -7.9987619556327791 19 9.9481837514785418 24 26.078526796026228 30 32.640670713633249;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA500";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 86.791010059746938 7 82.206445502279522 
		13 84.599830391224842 19 78.169370083202509 24 81.60133553490671 30 86.791010059746938;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 1 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 1 3;
	setAttr -s 6 ".kix[4:5]"  0.87973713874816895 1;
	setAttr -s 6 ".kiy[4:5]"  0.47546035051345825 0;
	setAttr -s 6 ".kox[4:5]"  0.87973713874816895 1;
	setAttr -s 6 ".koy[4:5]"  0.47546038031578064 0;
createNode animCurveTL -n "animCurveTL191";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.21234345447576591 7 0.16237788682301557 
		13 0.12139477683997253 19 0.14275098367280759 24 0.22243949520911632 30 0.21234345447576591;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL192";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.92931574491928459 7 -0.94966613382922671 
		13 -0.88324848530366429 19 -0.91889797102693582 24 -0.93688633878130523 30 
		-0.92931574491928459;
createNode animCurveTL -n "animCurveTL193";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.14641522428142531 7 0.19186657299492257 
		13 0.40174939109354257 19 0.23985621846842248 24 0.023967784282647446 30 
		-0.14641522428142531;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA501";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -13.218699121158641 7 1.1451874412376712 
		13 3.7711883796179686 19 3.5871362950256063 24 -4.1240595544913399 30 -13.218699121158641;
	setAttr -s 6 ".kit[0:5]"  3 1 9 9 1 3;
	setAttr -s 6 ".kot[0:5]"  3 1 9 9 1 3;
	setAttr -s 6 ".kix[1:5]"  0.89858543872833252 0.99437141418457031 
		0.93607878684997559 0.64740884304046631 1;
	setAttr -s 6 ".kiy[1:5]"  0.43879860639572144 0.10595039278268814 
		-0.35179048776626587 -0.76214289665222168 0;
	setAttr -s 6 ".kox[1:5]"  0.89858549833297729 0.99437141418457031 
		0.93607878684997559 0.64740884304046631 1;
	setAttr -s 6 ".koy[1:5]"  0.43879848718643188 0.10595039278268814 
		-0.35179048776626587 -0.76214289665222168 0;
createNode animCurveTA -n "animCurveTA502";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.34253556399555291 7 -23.592827160359693 
		13 -37.321950719803517 19 -31.041876117828899 24 -16.977667363055101 30 -0.34253556399555291;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 1 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 1 3;
	setAttr -s 6 ".kix[4:5]"  0.45578849315643311 1;
	setAttr -s 6 ".kiy[4:5]"  0.89008808135986328 0;
	setAttr -s 6 ".kox[4:5]"  0.45578852295875549 1;
	setAttr -s 6 ".koy[4:5]"  0.89008808135986328 0;
createNode animCurveTA -n "animCurveTA503";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -71.419033064851078 7 -84.960810489321702 
		13 -83.699810786644093 19 -86.425274228634436 24 -81.995413521348084 30 -71.419033064851078;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 1 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 1 3;
	setAttr -s 6 ".kix[4:5]"  0.71480768918991089 1;
	setAttr -s 6 ".kiy[4:5]"  0.69932109117507935 0;
	setAttr -s 6 ".kox[4:5]"  0.71480768918991089 1;
	setAttr -s 6 ".koy[4:5]"  0.69932103157043457 0;
createNode animCurveTL -n "animCurveTL194";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.8091891372350974 30 -1.8091891372350974;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL195";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.8536629786602403 30 2.8536629786602403;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL196";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.15898405984075725 30 -0.15898405984075725;
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
	setAttr -s 2 ".ktv[0:1]"  0 1.8091892394754774 30 1.8091892394754774;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL198";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.8536581165404047 30 2.8536581165404047;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL199";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.1589841173218719 30 -0.1589841173218719;
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
	setAttr -s 5 ".ktv[0:4]"  0 0 13 0.31938091504765564 19 0.27468620934211563 
		24 0.21420759711070886 30 0;
createNode animCurveTL -n "animCurveTL201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 13 -0.0052119729068525267 19 
		-0.0044826006158898901 24 -0.0034956509613461666 30 0;
createNode animCurveTL -n "animCurveTL202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1 13 -0.99362040902940363 19 
		-0.99451317976067743 24 -0.9957212319479517 30 -1;
createNode animCurveTL -n "animCurveTL203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 13 -0.16094833692358854 19 
		-0.13842495405902144 24 -0.10794745317741632 30 0;
createNode animCurveTL -n "animCurveTL204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 13 0.0026265137706284213 19 
		0.0022589549977274502 24 0.0017615930488344548 30 0;
createNode animCurveTL -n "animCurveTL205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1 13 -1.0032149214577113 19 
		-1.0027650198906455 24 -1.0021562358880507 30 -1;
createNode animCurveTA -n "animCurveTA510";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 -52.651179398772506;
createNode animCurveTA -n "animCurveTA511";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 -55.820198073255327;
createNode animCurveTA -n "animCurveTA512";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 58.120373119521346;
createNode animCurveTA -n "animCurveTA513";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 35.54451258669436;
createNode animCurveTA -n "animCurveTA514";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 -52.895218011495807;
createNode animCurveTA -n "animCurveTA515";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 -41.635609040376174;
createNode animCurveTA -n "animCurveTA516";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 17.713838053218517;
createNode animCurveTA -n "animCurveTA517";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 13.806304146770293;
createNode animCurveTA -n "animCurveTA518";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -3.5283751313905176 5 -3.6928418553387341 
		21 -3.6928418553387341 30 -3.5283751313905176;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA519";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.2625160042055776 5 0.63627196529319308 
		21 0.63627196529319308 30 1.2625160042055776;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA520";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 4.3879019571193743 5 -5.5132389444145549 
		21 -5.5132389444145549 30 4.3879019571193743;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA521";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 3.4893607003251463 5 3.4893607003251463 
		21 -11.833197256621254 30 3.4893607003251463;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA522";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.59877089259728322 5 -0.59877089259728322 
		21 -1.3257337769522137 30 -0.59877089259728322;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA523";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -5.0808191234713727 5 -5.0808191234713727 
		21 7.1602918811790701 30 -5.0808191234713727;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA524";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -29.008974896990431 30 -29.008974896990431;
createNode animCurveTA -n "animCurveTA525";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 19.121175982408229 30 19.121175982408229;
createNode animCurveTA -n "animCurveTA526";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 18.989800450806971 30 18.989800450806971;
createNode animCurveTA -n "animCurveTA527";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -7.6785820447977198 30 -7.6785820447977198;
createNode animCurveTA -n "animCurveTA528";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.7605391839518916 30 2.7605391839518916;
createNode animCurveTA -n "animCurveTA529";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 28.344788980746365 30 28.344788980746365;
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
	setAttr -s 4 ".ktv[0:3]"  0 3.7369773590038604 5 10.217596128632959 
		16 10.217596128632959 30 3.7369773590038604;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA534";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.659639826495585 5 26.093159977788364 
		16 26.093159977788364 30 27.659639826495585;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA535";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 7.2144708350701849 5 21.489643652879568 
		16 21.489643652879568 30 7.2144708350701849;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA536";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 10.940041621791822 5 14.242534406706035 
		16 14.242534406706035 30 10.940041621791822;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA537";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 25.143086799181098 5 23.511048863515079 
		16 23.511048863515079 30 25.143086799181098;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA538";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 23.668193569167805 5 31.673384476202461 
		16 31.673384476202461 30 23.668193569167805;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA539";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA540";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA541";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 26.049252495284946 30 26.049252495284946;
createNode animCurveTA -n "animCurveTA542";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 14 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA543";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 14 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA544";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -26.770100963031059 5 -26.770100963031059 
		14 -26.770100963031059 30 -26.770100963031059;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA545";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.70474241558254858 13.965 5.2721452989102389 
		30 0.70474241558254858;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTA -n "animCurveTA546";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -7.7611077633822836 14 2.220661107903136 
		30 -7.7611077633822836;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTA -n "animCurveTA547";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.1517035546050689 14 5.0565096402084215 
		30 7.1517035546050689;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTA -n "animCurveTA548";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA549";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA550";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA551";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 4.0874139394684663 1 3.9950932334548286 
		2 3.7546911889622128 3 3.420891759117981 4 3.0483073968743009 5 2.6916497487104722 
		6 2.3494408553254953 7 1.9950877588358575 8 1.6459408757476666 9 1.319507683241691 
		10 1.0333909393338545 11 0.78664990145614389 12 0.57680129441154959 13 0.41912078112315948 
		14 0.32882774145005417 15 0.31525028041970043 16 0.37935194910278147 17 0.51141778182784658 
		18 0.69732456578450364 19 0.92291693315037626 20 1.174027421657774 21 1.4548587502725852 
		22 1.7686176069010342 23 2.0996957090644983 24 2.4325760216721743 25 2.7518613925610906 
		26 3.0875471003565074 27 3.4433841979710018 28 3.7648877173467512 29 3.9976963591213277 
		30 4.0874139394684663;
createNode animCurveTA -n "animCurveTA552";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 3.0987566170060683 1 3.0056864993678718 
		2 2.7745506257037871 3 2.4772157401181474 4 2.1854881044722765 5 1.9713718893238183 
		6 1.8259367671100368 7 1.6932172701955612 8 1.5752032779312084 9 1.4742328594200893 
		10 1.3929347032679606 11 1.3252548100613839 12 1.264314007424779 13 1.2116417770263939 
		14 1.1686545259407393 15 1.1404292623647574 16 1.134136166978718 17 1.1488473902442149 
		18 1.1821091534598496 19 1.2314409696913367 20 1.2944060239695385 21 1.3769923056774407 
		22 1.484302467911176 23 1.6127758760289488 24 1.7590558334676838 25 1.9200068527106036 
		26 2.1497847178477576 27 2.4555838057842201 28 2.7642721051719858 29 3.0029580889590388 
		30 3.0987566170060683;
createNode animCurveTA -n "animCurveTA553";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 5.0324348042042848 1 4.9837104795231166 
		2 4.8535383809728208 3 4.6665888897054728 4 4.4471340474614971 5 4.2179717193786317 
		6 3.9970329958081443 7 3.7925131447178924 8 3.6103645459054983 9 3.4554327438702916 
		10 3.3315183973525744 11 3.2367645164870233 12 3.1645039905035817 13 3.1105524325896043 
		14 3.0710413451278078 15 3.0443164240139247 16 3.0407518457671809 17 3.0673750714107442 
		18 3.120226778939835 19 3.1953698979017631 20 3.288646428105594 21 3.4043475941925432 
		22 3.5476422654199582 23 3.7149227350168412 24 3.9019163647161563 25 4.1036992817658762 
		26 4.3323696429351317 27 4.5786681603529091 28 4.8040468658473561 29 4.9687106606482594 
		30 5.0324348042042848;
createNode animCurveTA -n "animCurveTA554";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 14 0.98672997639488791 30 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTA -n "animCurveTA555";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.2710204402575629 14 -1.3485860325613512 
		30 7.2710204402575629;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTA -n "animCurveTA556";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -4.7112509744539084 14 -5.2925321591292889 
		30 -4.7112509744539084;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTA -n "animCurveTA557";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -7.2356183565074765 30 -7.2356183565074765;
createNode animCurveTA -n "animCurveTA558";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 3.775875410252576 30 3.775875410252576;
createNode animCurveTA -n "animCurveTA559";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 36.102571754571038 30 36.102571754571038;
createNode animCurveTA -n "animCurveTA560";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -35.160370854790166 30 -35.160370854790166;
createNode animCurveTA -n "animCurveTA561";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 20.563693271869273 30 20.563693271869273;
createNode animCurveTA -n "animCurveTA562";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 22.57991983767285 30 22.57991983767285;
createNode animCurveTA -n "animCurveTA563";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA564";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA565";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 21.110481929355618 30 21.110481929355618;
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
	setAttr ".o" 19;
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
connectAttr "npd_loco_walkSource.st" "clipLibrary1.st[0]";
connectAttr "npd_loco_walkSource.du" "clipLibrary1.du[0]";
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
connectAttr "animCurveTA551.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA552.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA553.a" "clipLibrary1.cel[0].cev[149].cevr";
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
// End of npd_loco_walk.ma
