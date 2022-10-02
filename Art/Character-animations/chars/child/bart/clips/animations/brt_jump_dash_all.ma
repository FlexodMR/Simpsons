//Maya ASCII 4.0 scene
//Name: brt_jump_dash_all.ma
//Last modified: Tue, May 27, 2003 01:49:59 PM
requires maya "4.0";
requires "p3dDeformer" "2.0";
requires "p3dmayaexp" "2.0.3.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "brt_jump_dash_allSource";
	setAttr ".ihi" 0;
	setAttr ".du" 36;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL639";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTL -n "animCurveTL640";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  0 0.013520649960726747 1 0.013520649960726747 
		2 0.013520649960726747 3 0.013520649960726747 4 0.013520649960726747 5 0.013520649960726747 
		6 0.013520649960726747 7 0.013520649960726747 8 0.013520649960726747 9 0.013520649960726747 
		10 0.013520649960726747 11 0.013520649960726747 12 0.013520649960726747 13 
		0.013520649960726747 14 0.013520649960726747 15 0.013524541966608723 16 0.013531028643078683 
		17 0.013532325978372674 18 0.013520649960726747 19 0.013125890863065977 20 
		0.013396105779132972 21 0.015741872522671143 22 0.018697178183514455 23 0.020066602895261108 
		24 0.019381097422153385 25 0.017879950289648169 26 0.015930248273165529 27 
		0.013899078148125542 28 0.012153526689948265 29 0.011554358734331447 30 0.01158526352328253 
		31 0.01054771444168613 32 0.0067431848744268523 33 -0.0028409282811333088 
		34 -0.016445523270364411 35 -0.028611569422479888 36 -0.033880036066693167;
createNode animCurveTL -n "brt_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  36 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  0 5.0859004918073536 1 5.0888246333898026 
		2 5.106066461711718 3 5.1503300821349498 4 5.2195977715489201 5 5.3158872585029453 
		6 5.4579558258487122 7 5.6504481751442315 8 5.8742955536332735 9 6.1126850626961788 
		10 6.3488038037132846 11 6.5812687637497884 12 6.8180133351918508 13 7.0561992274012493 
		14 7.2929881497397666 15 7.5378992972897629 16 7.7890210705402785 17 8.0263689869630959 
		18 8.229958564030003 19 8.3237572716965254 20 8.3732817002071602 21 8.484655719735203 
		22 8.6048469768377345 23 8.6874603339956806 24 8.7243351778489302 25 8.7429614820799806 
		26 8.7504199897336559 27 8.7537914438547872 28 8.7601565874882006 29 8.7697681741549705 
		30 8.7771739046959887 31 8.7808969431358239 32 8.7794604534990395 33 8.7708680794614384 
		34 8.7564416448083495 35 8.7396815837286201 36 8.7240883304111012;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0;
createNode animCurveTU -n "animCurveTU129";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTU -n "animCurveTU130";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTU -n "animCurveTU131";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTU -n "animCurveTU132";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTU -n "animCurveTU133";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 3 0 36 0;
createNode animCurveTU -n "animCurveTU134";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 3 0 36 0;
createNode animCurveTU -n "animCurveTU135";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 1 36 1;
createNode animCurveTU -n "animCurveTU136";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 1 36 1;
createNode animCurveTA -n "animCurveTA1804";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTA -n "animCurveTA1805";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTA -n "animCurveTA1806";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTL -n "animCurveTL644";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTL -n "animCurveTL645";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTL -n "animCurveTL646";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTL -n "animCurveTL647";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.19763288944005308 3 -0.22809301424382589 
		6 -0.33865885403713575 10 -0.26454016861507795 14 -0.25969139230504479 18 
		-0.26873458644954384 20 -0.265 21 -0.265 28 -0.265 32 -0.265 36 -0.265;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		3 3 3 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		3 3 3 3;
createNode animCurveTL -n "animCurveTL648";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.36956228769602462 3 0.2034451973527025 
		6 0.552082761226801 10 1.6605583903941317 14 1.8317210562390014 18 1.1056048757644044 
		20 0.219 21 0.219 28 0.219 32 0.219 36 0.219;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		3 3 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		3 3 9 3;
createNode animCurveTL -n "animCurveTL649";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 11.083276311928465 3 11.391786216253763 
		6 12.484762641388615 10 15.076298324400289 14 16.310590067850846 18 19.341778018186016 
		20 19.630384113416781 21 19.630384113416781 28 19.630384113416781 32 19.641994896547875 
		36 19.626815306968577;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		3 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		3 9 9 9;
createNode animCurveTA -n "animCurveTA1807";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 68.750149689121002 3 66.753537441737635 
		6 58.970413831872982 10 -64.968042833897812 14 42.28251743113433 18 -111.75824609058775 
		20 -80.425934965771887 21 0.75691661221243089 28 0.75691661221243089 32 0.24638645285560337 
		36 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		3 3 3 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		3 3 3 3;
createNode animCurveTA -n "animCurveTA1808";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 -3.5256945963156894 6 0 10 
		0 14 0 18 0 20 -1.9756272542292108 21 -1.9756272542292108 28 -10.289026325370916 
		32 -23.696597912751002 36 -25.948901905116401;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 1 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 1 3;
	setAttr -s 11 ".kix[9:10]"  0.91839778423309326 1;
	setAttr -s 11 ".kiy[9:10]"  -0.39565828442573547 0;
	setAttr -s 11 ".kox[9:10]"  0.91839778423309326 1;
	setAttr -s 11 ".koy[9:10]"  -0.39565831422805786 0;
createNode animCurveTA -n "animCurveTA1809";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 4.8238895241523405 6 0 10 
		0 14 0 18 0 20 -1.5855234045840427 21 -1.5855234045840427 28 -1.5855234045840427 
		32 -0.38890264689396609 36 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL650";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.19697756422115981 3 0.21272156446259907 
		6 0.22583374676208098 10 0.24166078245449471 14 0.24432703860408134 16 0.16396712171321418 
		18 0.087838875712715703 21 0.071900878314782188 22 0.21594587158542247 23 
		0.21594587158542247 36 0.21594587158542247;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL651";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.11742628606129618 3 0.1380615615975922 
		6 0.46102228363598591 10 1.3716363079531544 14 2.5878883001008224 16 1.2567373549510863 
		18 0.99575685967293381 21 0.34649987715480857 22 0.21854505205085809 23 0.21854505205085809 
		36 0.21854505205085809;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL652";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 11.336616651963634 3 11.318238259942266 
		6 11.683779731012811 10 14.024757468167854 14 17.239873369562826 16 17.659769430409291 
		18 18.024844458870998 21 19.311751465418492 22 19.524708229903965 23 19.692504016191631 
		36 19.692504016191631;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA1810";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 6 86.108267527194343 10 
		97.269140401248976 14 -93.081044072370545 18 113.83983671342851 21 -18.82190893206327 
		22 -44.334656365936475 23 0 36 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1811";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 10 0 14 0 18 0 22 0 
		23 0 36 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1812";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 10 0 14 0 18 0 22 0 
		23 0 36 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1813";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTA -n "animCurveTA1814";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTA -n "animCurveTA1815";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTA -n "animCurveTA1816";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTA -n "animCurveTA1817";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTA -n "animCurveTA1818";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTA -n "animCurveTA1819";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  36 0;
createNode animCurveTA -n "animCurveTA1820";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  36 0;
createNode animCurveTA -n "animCurveTA1821";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  36 0;
createNode animCurveTA -n "animCurveTA1822";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  36 0;
createNode animCurveTA -n "animCurveTA1823";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  36 0;
createNode animCurveTA -n "animCurveTA1824";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  36 0;
createNode animCurveTL -n "animCurveTL653";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 6 0 10 0 14 0 20 -0.015626596145230928 
		22 0 25 0 32 0 36 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 1 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[1:9]"  1 1 1 0.20861808955669403 1 0.10605426877737045 
		1 1 1;
	setAttr -s 10 ".koy[1:9]"  0 0 0 -0.97799718379974365 0 0.99436032772064209 
		0 0 0;
createNode animCurveTL -n "animCurveTL654";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 6 0 10 0 14 0 20 0.35528238409002089 
		22 0 25 0 32 0 36 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 1 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[1:9]"  1 1 1 0.0093817953020334244 1 0.0046910522505640984 
		1 1 1;
	setAttr -s 10 ".koy[1:9]"  0 0 0 0.99995601177215576 0 -0.99998897314071655 
		0 0 0;
createNode animCurveTL -n "animCurveTL655";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 3 1 6 1 10 1 14 1 20 0.95033733164568379 
		22 1 25 1 32 1 36 1;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 1 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[1:9]"  1 1 1 0.066968813538551331 1 0.033540863543748856 
		1 1 1;
	setAttr -s 10 ".koy[1:9]"  0 0 0 -0.99775505065917969 0 0.99943733215332031 
		0 0 0;
createNode animCurveTL -n "animCurveTL656";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 32 0 36 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 1 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[1:9]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".koy[1:9]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL657";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 32 0 36 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 1 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[1:9]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".koy[1:9]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL658";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 3 1 6 1 10 1 14 1 18 1 20 1 
		23 1 32 1 36 1;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 1 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[1:9]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".koy[1:9]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL659";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.03051835782609956 3 0.03051835782609956 
		6 0.03051835782609956 10 0.03051835782609956 14 0.03051835782609956 18 0.03051835782609956 
		20 0.030237240874615875 23 0.045293663343896437 28 0.027432533010636119 32 
		0.015220490840533488 36 -0.076472881617957691;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL660";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.76074829734573723 3 0.59726134361187688 
		6 0.92714697341349084 10 1.9363996268275161 14 2.3760537679344607 18 1.1147476669222607 
		20 0.79050576642503834 23 0.76604783552759326 28 0.73738126651052338 32 0.90512685595480935 
		36 0.95473100313980441;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL661";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 11.479724090761808 3 11.625152402116516 
		6 12.319514918004916 10 14.330307108920188 14 16.461488362006126 18 18.576386570216318 
		20 18.899890748441354 23 19.6090442281279 28 19.773131774447485 32 19.816703813665793 
		36 19.691719713722595;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA1825";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 40.92583813237421 3 31.660816129923894 
		6 15.777772212346544 20 -25.618528843527304 23 42.833149971977917 28 16.134307530096347 
		32 10.307216569984554 36 -0.62843630316474508;
	setAttr -s 8 ".kit[0:7]"  3 9 9 1 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 1 9 9 9 
		3;
	setAttr -s 8 ".kix[3:7]"  0.99660462141036987 0.34364989399909973 
		0.46723198890686035 0.67363822460174561 1;
	setAttr -s 8 ".kiy[3:7]"  0.082336336374282837 0.9390978217124939 
		-0.88413476943969727 -0.73906129598617554 0;
	setAttr -s 8 ".kox[3:7]"  0.99660462141036987 0.34364989399909973 
		0.46723198890686035 0.67363822460174561 1;
	setAttr -s 8 ".koy[3:7]"  0.082335807383060455 0.9390978217124939 
		-0.88413476943969727 -0.73906129598617554 0;
createNode animCurveTA -n "animCurveTA1826";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 10 10.175814765674252 
		20 -6.9340771104762791 23 0 28 0 32 0 36 -5.8284402688137167;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1827";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 10 -13.861899535096855 
		20 11.330280842008813 23 0 28 0 32 0 36 -1.295636019309746;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1828";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTA -n "animCurveTA1829";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTA -n "animCurveTA1830";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.0984482521620249 36 0;
createNode animCurveTA -n "animCurveTA1831";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 18.588300303494186 36 0;
createNode animCurveTA -n "animCurveTA1832";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTA -n "animCurveTA1833";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTA -n "animCurveTA1834";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -22.686733334985114 36 0;
createNode animCurveTA -n "animCurveTA1835";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTA -n "animCurveTA1836";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTA -n "animCurveTA1837";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0579251312417479e-005 36 0;
createNode animCurveTA -n "animCurveTA1838";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTA -n "animCurveTA1839";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTA -n "animCurveTA1840";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.0984482535121209 36 0;
createNode animCurveTA -n "animCurveTA1841";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 18.588300300216805 36 0;
createNode animCurveTA -n "animCurveTA1842";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTA -n "animCurveTA1843";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTA -n "animCurveTA1844";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -22.686733333057838 36 0;
createNode animCurveTA -n "animCurveTA1845";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTA -n "animCurveTA1846";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTA -n "animCurveTA1847";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0579251312417479e-005 36 0;
createNode animCurveTA -n "animCurveTA1848";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTA -n "animCurveTA1849";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTA -n "animCurveTA1850";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTA -n "animCurveTA1851";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTA -n "animCurveTA1852";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTA -n "animCurveTA1853";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTL -n "animCurveTL668";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.82210850521844403 3 -0.82210850521844403 
		6 -1.0809274673815583 10 -1.1718044234402016 14 -1.1400525673786615 20 -1.2055120515218554 
		22 -0.81366721158659117 25 -0.8464929109144198 32 -0.9261200305478654 36 
		-0.8448236677023373;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTL -n "animCurveTL669";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1.1590792946011756 3 1.1590792946011756 
		6 1.9375146490462802 10 2.7841520804486444 14 3.0396033929505286 20 2.0413581373234915 
		22 1.0971194769927561 25 0.40583585351049922 32 1.1201931780648355 36 1.0304014029588007;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTL -n "animCurveTL670";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 14.916013395362574 3 14.916013395362574 
		6 16.254681368998476 10 17.939878594614452 14 20.277856715913689 20 23.642164076092659 
		22 24.945983686196314 25 26.194849074438203 32 25.90122173494148 36 25.370214488125772;
createNode animCurveTA -n "animCurveTA1860";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 7.3566619347615223 3 7.3566619347615223 
		6 -9.115993314220681 10 -53.526448559502647 14 -47.059647053956937 20 -136.88819419054479 
		22 50.79177939302059 25 -6.5497694085259983 32 -15.275628486635982 36 5.4739599453216465;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA1861";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 18.103084532249603 3 18.103084532249603 
		6 26.324117884677346 10 0.68575199927652142 14 -14.301886806446765 20 -3.1057718541972772 
		22 55.228058117531276 25 24.767806780562221 32 10.573544209344728 36 8.5874521608419823;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA1862";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 27.384539512019494 3 27.384539512019494 
		6 34.555108709452107 10 -11.770728249697619 14 14.362827790077391 20 -18.485678530591535 
		22 82.33092823712218 25 45.231945695514959 32 46.811115809066436 36 74.754744621954103;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTL -n "animCurveTL671";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.82023325218162457 3 0.82023325218162457 
		6 0.92343519692143572 10 0.99585238270003718 14 1.0436758100744674 20 1.045880260217626 
		22 0.98753484054318963 25 0.90197479719935769 32 0.91921307150652076 36 0.61083301393139333;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTL -n "animCurveTL672";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.99498110733416445 3 0.99498110733416445 
		6 1.9949033942153824 10 3.6242937667915345 14 4.060816863914301 20 2.1798756483840735 
		22 1.2673530611379271 25 0.38693164250820722 32 1.1138905446432497 36 1.0211562878106184;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTL -n "animCurveTL673";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 14.921596563371637 3 14.921596563371637 
		6 16.835748093433626 10 17.765387950062401 14 21.303954374734658 20 23.661180800455465 
		22 25.207409041071127 25 26.151985503860633 32 26.050502547858525 36 25.611352138442363;
createNode animCurveTA -n "animCurveTA1863";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 8.9282143981625879 3 8.9282143981625879 
		6 -9.0703748831085189 10 -90.107119238195125 14 -111.29859300439365 20 -42.111366262800331 
		22 -8.6956122072064996 25 41.99478438900978 32 5.2157101296799437 36 16.226511010665412;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA1864";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 23.419278912510141 3 23.419278912510141 
		6 -40.501771671985914 10 -8.2000151923474469 14 -20.34541942815466 20 -60.001824694137696 
		22 -62.182869075925943 25 -35.152233517104122 32 -36.60764546449181 36 -8.5139660854992858;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA1865";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -3.9073136135656541 3 -3.9073136135656541 
		6 -16.843539022083927 10 61.376263996514069 14 61.038367355983226 20 4.7498895095808065 
		22 -60.86370447129287 25 -65.276690851317866 32 -35.601526191623421 36 -68.213989601412422;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTL -n "animCurveTL674";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 -0.075007643271199492 6 -0.075007643271199492 
		10 -0.075007643271199492 14 -0.075007643271199492 18 0.42754810371064994 
		20 0.48608220680805114 23 0.48608220680805114 32 0.48865623708605266 36 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTL -n "animCurveTL675";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 -0.0015683274246280649 6 
		-0.0015683274246280649 10 -0.0015683274246280649 14 -0.0015683274246280649 
		18 -0.90633634765029925 20 -1.2341020444288966 23 -1.2341020444288966 32 
		-1.3362930736062528 36 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTL -n "animCurveTL676";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1 3 -0.99523236489475697 6 -0.99523236489475697 
		10 -0.99523236489475697 14 -0.99523236489475697 18 -1.1683884895498287 20 
		-0.9993623657977142 23 -0.9993623657977142 32 -0.91725258962026146 36 -1;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTL -n "animCurveTL677";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.10167917362943303 3 -0.046699535373194809 
		6 -0.046699535373194809 10 -0.046699535373194809 14 -0.046699535373194809 
		18 -0.52663227176926597 20 -0.57597564774320764 23 -0.57597564774320764 32 
		-0.57555789187053286 36 -0.10167917362943303;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTL -n "animCurveTL678";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.40762644910266188 3 5.9724781342803249e-005 
		6 5.9724781342803249e-005 10 5.9724781342803249e-005 14 5.9724781342803249e-005 
		18 -0.54533960262259329 20 -0.75601350916139098 23 -0.75601350916139098 32 
		-0.82335937465046505 36 -0.40762644910266188;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTL -n "animCurveTL679";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.93129112588482243 3 -1.0033873591439757 
		6 -1.0033873591439757 10 -1.0033873591439757 14 -1.0033873591439757 18 -0.69781241262917137 
		20 -0.54077942611803975 23 -0.54077942611803975 32 -0.48593958088934258 36 
		-0.93129112588482243;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1866";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -10.587124207154311 3 46.171822403643489 
		6 -22.78039507191296 10 -22.78039507191296 14 -22.78039507191296 18 -22.78039507191296 
		20 -22.78039507191296 23 -22.78039507191296 32 -22.78039507191296 36 12.253734489678925;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1867";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -60.592711499848903 3 -21.447120207264081 
		6 -59.78589307060367 10 -59.78589307060367 14 -59.78589307060367 18 -59.78589307060367 
		20 -59.78589307060367 23 -59.78589307060367 32 -59.78589307060367 36 -65.746751280844975;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1868";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.15003680417244974 3 -62.992152333300986 
		6 34.574435665981952 10 34.574435665981952 14 34.574435665981952 18 34.574435665981952 
		20 34.574435665981952 23 34.574435665981952 32 34.574435665981952 36 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1869";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 52.350458715167015 3 47.461809804954534 
		6 -4.3077020824181265 10 -4.3077020824181265 14 -4.3077020824181265 18 -4.3077020824181265 
		20 -4.3077020824181265 23 -4.3077020824181265 32 -4.3077020824181265 36 -0.061808866237340665;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1870";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -49.562109142955329 3 -32.227511792878673 
		6 -49.658336589859132 10 -49.658336589859132 14 -49.658336589859132 18 -49.658336589859132 
		20 -49.658336589859132 23 -49.658336589859132 32 -49.658336589859132 36 -59.058178941076754;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1871";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -64.60878798864384 3 -63.299510281091955 
		6 45.957278122761899 10 45.957278122761899 14 45.957278122761899 18 45.957278122761899 
		20 45.957278122761899 23 45.957278122761899 32 45.957278122761899 36 16.57914742975785;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1872";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 72.938873120018542 3 73.532946642668335 
		6 64.255341242982553 10 64.255341242982553 14 64.255341242982553 18 64.255341242982553 
		20 64.255341242982553 23 64.255341242982553 32 64.255341242982553 36 8.5572674112203639;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1873";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 59.305463658789549 3 78.398801718513837 
		6 72.208811687058059 10 72.208811687058059 14 72.208811687058059 18 72.208811687058059 
		20 72.208811687058059 23 72.208811687058059 32 72.208811687058059 36 15.711328223519061;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1874";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -17.955810303398234 3 -5.0283522467414592 
		6 72.79493678537078 10 72.79493678537078 14 72.79493678537078 18 72.79493678537078 
		20 72.79493678537078 23 72.79493678537078 32 72.79493678537078 36 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1875";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 10.082003051124259 3 33.009681214774616 
		6 35.224795679311441 10 35.224795679311441 14 35.224795679311441 18 35.224795679311441 
		20 35.224795679311441 23 35.224795679311441 32 35.224795679311441 36 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1876";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -4.7201893288928654 3 40.275991096737052 
		6 56.771965155298119 10 56.771965155298119 14 56.771965155298119 18 56.771965155298119 
		20 56.771965155298119 23 56.771965155298119 32 56.771965155298119 36 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1877";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 20.127263792592359 3 -33.636490799689732 
		6 59.556508727470074 10 59.556508727470074 14 59.556508727470074 18 59.556508727470074 
		20 59.556508727470074 23 59.556508727470074 32 59.556508727470074 36 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1878";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 11.615881410206432 3 29.328994901054315 
		6 36.028288837490415 10 36.028288837490415 14 36.028288837490415 18 36.028288837490415 
		20 36.028288837490415 23 36.028288837490415 32 36.028288837490415 36 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1879";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.3215928107553504 3 -22.622358173865795 
		6 13.094680882304901 10 13.094680882304901 14 13.094680882304901 18 13.094680882304901 
		20 13.094680882304901 23 13.094680882304901 32 13.094680882304901 36 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1880";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 143.15000228576875 3 143.15000228576875 
		6 143.15000228576875 10 143.15000228576875 14 143.15000228576875 18 143.15000228576875 
		20 143.15000228576875 23 143.15000228576875 32 143.15000228576875 36 143.71460997127255;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1881";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 53.910048648242871 3 53.910048648242878 
		6 53.910048648242878 10 53.910048648242878 14 53.910048648242878 18 53.910048648242878 
		20 53.910048648242878 23 53.910048648242878 32 53.910048648242878 36 27.804554996454375;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1882";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 43.127820754253491 3 43.127820754253513 
		6 43.127820754253513 10 43.127820754253513 14 43.127820754253513 18 43.127820754253513 
		20 43.127820754253513 23 43.127820754253513 32 43.127820754253513 36 29.452980944098755;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1883";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 32 0 36 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1884";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 32 0 36 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1885";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 86.382238158606057 3 59.219502482153104 
		6 59.219502482153104 10 59.219502482153104 14 59.219502482153104 18 59.219502482153104 
		20 59.219502482153104 23 59.219502482153104 32 59.219502482153104 36 27.080064458283051;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1886";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTA -n "animCurveTA1887";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTA -n "animCurveTA1888";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTA -n "animCurveTA1889";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 26.541511232508352 36 0;
createNode animCurveTA -n "animCurveTA1890";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 41.530156331423342 36 0;
createNode animCurveTA -n "animCurveTA1891";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 52.545459146006969 36 0;
createNode animCurveTA -n "animCurveTA1892";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 37.39895318822164 36 0;
createNode animCurveTA -n "animCurveTA1893";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 69.699093005590768 36 0;
createNode animCurveTA -n "animCurveTA1894";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 37.87925340126155 36 13.994403295754109;
createNode animCurveTA -n "animCurveTA1895";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 32 0 36 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1896";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 32 0 36 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1897";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 95.284705327631698 3 66.672206829852314 
		6 66.672206829852314 10 66.672206829852314 14 66.672206829852314 18 66.672206829852314 
		20 66.672206829852314 23 66.672206829852314 32 66.672206829852314 36 27.911632519594587;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1898";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 32 0 36 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1899";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 32 0 36 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1900";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 32 0 36 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1901";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 -1.3600558986621039 6 -0.16135188088572175 
		10 0.17531458053368568 20 -0.76523683606661608 23 -1.7222213883462014 32 
		-0.95790877084412285 36 -0.65073001024951671;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1902";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 -1.7348136322083922 6 -2.1983501567531918 
		10 -2.1972812590348823 20 -2.1051802249727634 23 -1.4323683570519787 32 -2.0457585592028154 
		36 -4.2368721935960938;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1903";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 7.1280947740371978 3 18.025996084384893 
		6 -15.880312516295612 10 -24.642075184185245 20 -2.6124919461750227 23 15.671338868114935 
		32 3.2734145594016328 36 2.6995264082587442;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1904";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 14 0 18 0 21 0 
		36 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1905";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 14 0 18 0 21 0 
		36 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1906";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 14.508952910281577 6 14.508952910281577 
		10 14.508952910281577 14 14.508952910281577 18 14.508952910281577 21 14.508952910281577 
		28 31.723814180124549 36 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 3 3 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 3 3 
		9 3;
createNode animCurveTA -n "animCurveTA1907";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0.6205628187730865 6 3.5615739804694475 
		10 1.2859540278637445 14 0.56168829250648056 18 3.6375267832064915 20 2.2239744454617516 
		23 2.2239744454617516 32 4.747822869067849 36 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1908";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 6.1534707642816313 6 5.0593482146838156 
		10 6.0499001423546632 14 6.1591023145083348 18 5.005087459058303 20 5.8970685922674964 
		23 5.8970685922674964 32 4.1882713219045904 36 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1909";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -18.722937869975638 3 -32.810404800085166 
		6 -3.3664805278333754 10 -26.556600069591706 14 -33.359394152338098 18 -2.5006014476938456 
		20 -17.691452850314786 23 -17.691452850314786 32 10.187734121095215 36 6.6786334979782902;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1910";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 -0.70293507907658626 6 -0.70293507907658626 
		10 -0.83690971216531951 20 -1.1072408194864003 23 -0.26862115475572979 32 
		1.310860797980173 36 -1.8903601258661935;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1911";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 1.2717523854678625 6 1.2717523854678625 
		10 1.187886020951028 20 0.98804510081139363 23 1.4594355426723329 32 -0.53947180896068248 
		36 2.5597289571479038;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1912";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 10.789123571196804 6 10.789123571196804 
		10 4.553091335708821 20 -8.9021177919342893 23 16.932708327043077 32 15.545402937214334 
		36 2.0168110874036049;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1913";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 32 0 36 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1914";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 32 0 36 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1915";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 85.281921116584812 3 61.824373247854581 
		6 61.824373247854581 10 61.824373247854581 14 61.824373247854581 18 61.824373247854581 
		20 61.824373247854581 23 61.824373247854581 32 61.824373247854581 36 33.429092416277157;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1916";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -122.90211145181451 3 -122.90211145181451 
		6 -122.90211145181451 10 -122.90211145181451 14 -122.90211145181451 18 -122.90211145181451 
		20 -122.90211145181451 23 -122.90211145181451 32 -122.90211145181451 36 -121.24398976748977;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 0.99777740240097046 
		1;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0.066635444760322571 
		0;
createNode animCurveTA -n "animCurveTA1917";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 38.578337509358107 3 38.578337509358107 
		6 38.578337509358107 10 38.578337509358107 14 38.578337509358107 18 38.578337509358107 
		20 38.578337509358107 23 38.578337509358107 32 38.578337509358107 36 28.612774017129329;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1918";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 45.467643381850571 3 45.467643381850564 
		6 45.467643381850564 10 45.467643381850564 14 45.467643381850564 18 45.467643381850564 
		20 45.467643381850564 23 45.467643381850564 32 45.467643381850564 36 17.632837226638049;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1919";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 32 0 36 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1920";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 32 0 36 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1921";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 77.470348806333035 3 50.17101925731437 
		6 50.17101925731437 10 50.17101925731437 14 50.17101925731437 18 50.17101925731437 
		20 50.17101925731437 23 50.17101925731437 32 50.17101925731437 36 17.254116939558369;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
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
	setAttr ".o" 36;
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
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -k on ".ra";
	setAttr -k on ".clip";
	setAttr -k on ".edm";
	setAttr -k on ".edl";
	setAttr -k on ".esr";
	setAttr -k on ".ors";
	setAttr -k on ".outf";
	setAttr -k on ".gama";
	setAttr ".top" 478;
	setAttr -k on ".left";
	setAttr -k on ".bot";
	setAttr ".rght" 638;
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
	setAttr -k on ".rgpn";
	setAttr -k on ".rlsd";
	setAttr -k on ".frts";
	setAttr -k on ".tlwd";
	setAttr -k on ".tlht";
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
connectAttr "brt_jump_dash_allSource.st" "clipLibrary1.st[0]";
connectAttr "brt_jump_dash_allSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL639.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL640.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "brt_Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU129.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU130.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU131.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU132.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU133.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU134.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU135.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU136.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA1804.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA1805.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA1806.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL644.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL645.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL646.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL647.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL648.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL649.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA1807.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA1808.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA1809.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL650.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL651.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL652.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA1810.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA1811.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA1812.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA1813.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA1814.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA1815.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA1816.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA1817.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA1818.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA1819.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA1820.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA1821.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA1822.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA1823.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA1824.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL653.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL654.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL655.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL656.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL657.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL658.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL659.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL660.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL661.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA1825.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA1826.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA1827.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA1828.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA1829.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA1830.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA1831.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA1832.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA1833.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA1834.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA1835.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA1836.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA1837.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA1838.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA1839.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA1840.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA1841.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA1842.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA1843.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA1844.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA1845.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA1846.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA1847.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA1848.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA1849.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA1850.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA1851.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA1852.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA1853.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL668.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL669.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL670.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA1860.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA1861.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA1862.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL671.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL672.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL673.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA1863.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA1864.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA1865.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL674.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL675.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL676.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL677.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL678.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL679.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA1866.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA1867.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA1868.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA1869.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA1870.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA1871.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA1872.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA1873.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA1874.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA1875.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA1876.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1877.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1878.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1879.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA1880.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1881.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1882.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1883.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1884.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1885.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1886.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1887.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1888.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA1889.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA1890.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA1891.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA1892.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA1893.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA1894.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1895.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1896.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1897.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1898.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1899.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1900.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1901.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1902.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1903.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1904.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1905.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1906.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1907.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1908.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1909.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1910.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1911.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1912.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1913.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1914.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1915.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA1916.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA1917.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA1918.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA1919.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA1920.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA1921.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of brt_jump_dash_all.ma
