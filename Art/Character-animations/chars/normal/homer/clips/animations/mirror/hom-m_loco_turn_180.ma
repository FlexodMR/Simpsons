//Maya ASCII 4.0 scene
//Name: hom-m_loco_turn_180.ma
//Last modified: Fri, May 24, 2002 10:32:32 AM
requires maya "4.0";
requires "p3dSimpleShader" "16.4";
requires "p3dmayaexp" "16.15";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "hom_loco_turn_180";
	setAttr ".ihi" 0;
	setAttr ".du" 25;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL98";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTL -n "animCurveTL99";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTL -n "animCurveTL100";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0.025921419564621347 1 0.010797677390988665 
		2 0.00025688737300751634 3 -0.0027328924379070385 4 -0.004312818114038385 
		5 -0.0043978538847124545 6 -0.0029029639792551758 7 0.00025688737300751634 
		8 0.0064796022854309585 9 0.015845624388315299 10 0.026463801727751833 11 
		0.036442982349831857 12 0.045589709877526946 13 0.054851110786938703 14 0.064046907403853423 
		15 0.072996822054057428 16 0.081520577063337027 17 0.089354370176222289 18 
		0.096338235212365217 19 0.10244764861023484 20 0.1057971002224745 21 0.10477111267497817 
		22 0.099750166273881724 23 0.07821498354739842 24 0.03910749341764741 25 
		0;
createNode animCurveTL -n "animCurveTL101";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0;
createNode animCurveTL -n "animCurveTL102";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0.57186606608738333 1 0.74068806704892043 
		2 0.93351679918652197 3 1.1723234605703376 4 1.4249390368310184 5 1.6821733800948924 
		6 1.9348363424882868 7 2.1737377761375298 8 2.4027045338338953 9 2.6237247293659545 
		10 2.8248501063559819 11 2.9941324084262537 12 3.1309084786354253 13 3.2461673068664392 
		14 3.3454388569779936 15 3.4342530928287891 16 3.5181399782775267 17 3.5943741196762664 
		18 3.6466805019198678 19 3.6602646566812282 20 3.6483563019827097 21 3.5977257195096275 
		22 3.4538892864293076 23 3.1663638790391224 24 2.7856326154446966 25 2.4086612355257393;
createNode animCurveTA -n "animCurveTA274";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 -15.869244087473033 12 -31.738488579791657 13 -49.330334044089916 
		14 -70.447436510751999 15 -93.287139139084189 16 -114.16407318960347 17 -131.86511819973686 
		18 -148.18609360237375 19 -163.9550405012246 20 -180 21 -181.71146235379425 
		22 -181.92539514801857 23 -181.28359676534566 24 -180.42786558844861 25 -180;
	setAttr -s 26 ".kit[11:25]"  9 9 9 9 9 9 9 
		9 9 3 3 3 3 3 3;
	setAttr -s 26 ".kot[11:25]"  9 9 9 9 9 9 9 
		9 9 3 3 3 3 3 3;
createNode animCurveTU -n "animCurveTU17";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTU -n "animCurveTU18";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTU -n "animCurveTU19";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTU -n "animCurveTU20";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTU -n "animCurveTU21";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 25 1;
createNode animCurveTU -n "animCurveTU22";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 25 1;
createNode animCurveTU -n "animCurveTU23";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTU -n "animCurveTU24";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA275";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA276";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA277";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL103";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTL -n "animCurveTL104";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTL -n "animCurveTL105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTL -n "animCurveTL106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.19697756422115981 2 -0.19697756422115981 
		7 -0.19697756422115981 11 -0.19697756422115981 16 -0.19697756422115981 19 
		0.16300213527092633 22 0.16300213527092633 25 0.21226896503585566;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 3 3 3 
		9;
	setAttr -s 8 ".kot[4:7]"  3 3 3 9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 0.020293449983000755;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0.99979406595230103;
createNode animCurveTL -n "animCurveTL107";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.49095526767731257 2 0.37570908165980349 
		7 0.39741176965949637 11 0.71725571763345886 16 0.25578864767101434 19 0.25219410190843033 
		22 0.20198969000434744 25 0.49095526767731257;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 3 3 9 
		9;
	setAttr -s 8 ".kot[4:7]"  3 3 9 9;
	setAttr -s 8 ".kix[0:7]"  0 0.024936074391007423 0.008783235214650631 
		0.0211782306432724 1 1 0.0083762779831886292 0.0034605986438691616;
	setAttr -s 8 ".kiy[0:7]"  0 -0.99968904256820679 0.99996143579483032 
		-0.99977570772171021 0 0 0.99996489286422729 0.99999403953552246;
createNode animCurveTL -n "animCurveTL108";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.092819338422239051 2 0.85945701062566926 
		7 3.1413678084355472 11 4.3696529157881612 16 4.7991432611627118 19 4.5375355910325492 
		22 4.5375355910325492 25 3.7341318790773776;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 3 3 
		9;
	setAttr -s 8 ".kot[5:7]"  3 3 9;
	setAttr -s 8 ".kix[0:7]"  0 0.0007653913926333189 0.00085465284064412117 
		0.0018096511485055089 0.015882104635238647 1 1 0.0012447030749171972;
	setAttr -s 8 ".kiy[0:7]"  0 0.99999970197677612 0.99999964237213135 
		0.99999839067459106 0.99987387657165527 0 0 -0.99999922513961792;
createNode animCurveTA -n "animCurveTA278";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 72.51831712904297 2 104.89687260159002 
		7 21.348009237950574 11 -57.35953107671714 16 -14.750854632488787 19 -107.90033007782451 
		22 -161.79321408044018 25 -118.97280212157756;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 0.25278016924858093 0.10534615814685822 
		0.42990908026695251 0.28937384486198425 0.077695414423942566 0.71913611888885498 
		0.1326228529214859;
	setAttr -s 8 ".kiy[0:7]"  0 -0.96752375364303589 -0.99443560838699341 
		-0.90287220478057861 -0.95721614360809326 -0.99697715044021606 -0.69486922025680542 
		0.99116659164428711;
createNode animCurveTA -n "animCurveTA279";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 7 0 11 7.399680259018492 
		16 -25.848388769521691 19 -80.177556936340636 22 -27.834729091699458 25 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 0.91850382089614868 0.55372905731201172 
		0.17186577618122101 0.98530673980712891 0.14148449897766113 0.20161570608615875;
	setAttr -s 8 ".kiy[0:7]"  0 0 0.3954121470451355 -0.83269691467285156 
		-0.98512035608291626 -0.17079396545886993 0.98994046449661255 0.97946470975875854;
createNode animCurveTA -n "animCurveTA280";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 7 0 11 -4.6537203922963331 
		16 9.5117551664676441 19 127.09333824607623 22 174.91350757208701 25 180;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 0.96524852514266968 0.87496733665466309 
		0.11519918590784073 0.06911507248878479 0.21168357133865356 0.74782818555831909;
	setAttr -s 8 ".kiy[0:7]"  0 0 -0.26133376359939575 0.4841819703578949 
		0.99334239959716797 0.9976087212562561 0.97733825445175171 0.66389232873916626;
createNode animCurveTL -n "animCurveTL109";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.19763288944005308 2 0.19763288944005308 
		7 0.19763288944005308 11 0.19763288944005308 16 0.19763288944005308 19 0.19763288944005308 
		22 0.1300056736223705 25 -0.21143778728655352;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 3 9 
		9;
	setAttr -s 8 ".kot[5:7]"  3 9 9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 0.0048890723846852779 
		0.0029287298675626516;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 -0.99998801946640015 
		-0.99999570846557617;
createNode animCurveTL -n "animCurveTL110";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.18919812301601746 2 0.24558771956145944 
		7 0.13021612799815885 11 0.12329383237279698 16 0.13021612799815885 19 0.14488476085817797 
		22 0.24060890889902695 25 0.18919812301601746;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.039529174566268921 0.024523692205548286 
		1 0.12257727235555649 0.018114153295755386 0.045087214559316635 0.019447490572929382;
	setAttr -s 8 ".kiy[0:7]"  0 -0.9992184042930603 -0.99969923496246338 
		0 0.9924589991569519 0.99983590841293335 0.99898302555084229 -0.99981087446212769;
createNode animCurveTL -n "animCurveTL111";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.99077043779297014 2 1.4609313902652656 
		7 2.8844791045706439 11 4.0234507623412314 16 4.7375317077407564 19 5.2088782379354237 
		22 4.9592537797056799 25 2.7853812631684196;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.0012321491958573461 0.0011707219528034329 
		0.0016189481830224395 0.0022495344746857882 0.0090199345722794533 0.00082525343168526888 
		0.00046000845031812787;
	setAttr -s 8 ".kiy[0:7]"  0 0.99999922513961792 0.99999934434890747 
		0.99999868869781494 0.99999749660491943 0.99995929002761841 -0.99999964237213135 
		-0.99999988079071045;
createNode animCurveTA -n "animCurveTA281";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -31.548014841396498 2 29.416470322688742 
		7 0 11 -1.7649881513221799 16 0 19 0 22 20.094558379341294 25 -16.409933673456155;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 0.39017903804779053 0.48275798559188843 
		1 0.99339383840560913 0.49537459015846252 0.57252985239028931 0.15505710244178772;
	setAttr -s 8 ".kiy[0:7]"  0 0.92073899507522583 -0.87575381994247437 
		0 0.11475507169961929 0.8686794638633728 -0.81988388299942017 -0.98790550231933594;
createNode animCurveTA -n "animCurveTA282";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 7 0 11 5.1736588428287726 
		16 0 19 -50.299460106029564 22 -101.72597455526866 25 -178.10894935000641;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 0.95756465196609497 1 0.2655404806137085 
		0.11193931102752686 0.089299894869327545 0.074801035225391388;
	setAttr -s 8 ".kiy[0:7]"  0 0 0.28821858763694763 0 -0.9640997052192688 
		-0.99371504783630371 -0.99600476026535034 -0.99719846248626709;
createNode animCurveTA -n "animCurveTA283";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 7 0 11 0 16 0 19 0 22 -0.70469132314321725 
		25 -0.23234467136892914;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 0.99811446666717529 0.99979448318481445 
		0.99661904573440552;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 -0.061379965394735336 
		-0.020271731540560722 0.082161322236061096;
createNode animCurveTA -n "animCurveTA284";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA285";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA286";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA287";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA288";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA289";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL112";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 7 0 11 0 16 0 19 0 22 0 
		25 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL113";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 7 0 11 0 16 0 19 0 22 0 
		25 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL114";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 2 1 7 1 11 1 16 1 19 1 22 1 
		25 1;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL115";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 7 0 11 0 16 0 19 0 22 0 
		25 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL116";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 7 0 11 0 16 0 19 0 22 0 
		25 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL117";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 2 1 7 1 11 1 16 1 19 1 22 1 
		25 1;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.033041213165890024 2 0.00032744620447992194 
		7 0.00032744620447992194 11 0.046452716265007209 16 0.10391169964442609 19 
		0.13058677545171757 22 0.12714838008666154 25 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 1 1 
		1;
	setAttr -s 8 ".kot[5:7]"  1 1 5;
	setAttr -s 8 ".kix[0:7]"  0 0.071144990622997284 0.064903132617473602 
		0.028949793428182602 0.031679540872573853 0.046120598912239075 0.037918318063020706 
		0.0078645823523402214;
	setAttr -s 8 ".kiy[0:7]"  0 -0.99746596813201904 0.99789154529571533 
		0.99958086013793945 0.99949806928634644 0.99893587827682495 -0.99928086996078491 
		-0.99996906518936157;
	setAttr -s 8 ".kox[5:7]"  0.046120721846818924 0.037918344140052795 
		0;
	setAttr -s 8 ".koy[5:7]"  0.99893587827682495 -0.99928086996078491 
		0;
createNode animCurveTL -n "animCurveTL119";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.86191433053168653 2 0.9184128444166979 
		7 0.81212319385827825 11 0.78988178247035978 16 0.74460402689220972 19 0.70460952730023663 
		22 0.71255254951545555 25 0.86191433053168653;
	setAttr -s 8 ".kit[1:7]"  9 1 1 1 1 1 9;
	setAttr -s 8 ".kot[0:7]"  9 9 1 1 1 1 1 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.046811051666736603 0.020416617393493652 
		0.11320047080516815 0.021397465839982033 0.036010801792144775 0.017102334648370743 
		0.0066950023174285889;
	setAttr -s 8 ".kiy[0:7]"  0 -0.99890375137329102 -0.99979156255722046 
		-0.9935721755027771 -0.99977105855941772 -0.9993513822555542 0.99985373020172119 
		0.99997758865356445;
	setAttr -s 8 ".kox[2:7]"  0.02041645348072052 0.11320044845342636 
		0.021397504955530167 0.036010734736919403 0.017102416604757309 0.0066950023174285889;
	setAttr -s 8 ".koy[2:7]"  -0.99979156255722046 -0.9935721755027771 
		-0.99977105855941772 -0.9993513822555542 0.99985373020172119 0.99997758865356445;
createNode animCurveTL -n "animCurveTL120";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.72893957619979599 2 1.1899243202698337 
		7 2.7707947494563472 11 3.816525823637186 16 4.4844616892958165 19 4.6656235189388013 
		22 4.4025633657830729 25 3.0702442483529375;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 0.0011427508434280753 0.0011421595700085163 
		0.0017506292788311839 0.0031405731569975615 0.024413246661424637 0.001253619440831244 
		0.00076292036101222038;
	setAttr -s 8 ".kiy[0:7]"  0 0.99999934434890747 0.99999934434890747 
		0.99999845027923584 0.99999505281448364 -0.99970197677612305 -0.99999922513961792 
		-0.99999970197677612;
createNode animCurveTA -n "animCurveTA290";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 20.950825280283915 2 -25.641539176446784 
		7 -50.517013754206133 11 -47.603151465727038 16 -10.153956908738595 19 -71.400999464014077 
		22 -148.31254217498977 25 -153.01277991487112;
	setAttr -s 8 ".kit[2:7]"  9 9 1 1 1 1;
	setAttr -s 8 ".kot[0:7]"  9 1 9 9 1 1 1 
		5;
	setAttr -s 8 ".kix[0:7]"  0 0.082845188677310944 0.61633908748626709 
		0.39180535078048706 0.36252912878990173 0.051755227148532867 0.28542163968086243 
		1;
	setAttr -s 8 ".kiy[0:7]"  0 -0.9965624213218689 -0.78748089075088501 
		0.92004811763763428 -0.9319724440574646 -0.99865978956222534 -0.95840203762054443 
		0;
	setAttr -s 8 ".kox[1:7]"  0.082845181226730347 0.61633908748626709 
		0.39180535078048706 0.36252915859222412 0.051755227148532867 0.2854216992855072 
		0;
	setAttr -s 8 ".koy[1:7]"  -0.9965624213218689 -0.78748089075088501 
		0.92004811763763428 -0.9319724440574646 -0.99865978956222534 -0.95840203762054443 
		0;
createNode animCurveTA -n "animCurveTA291";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 7.5734518508549122 2 -22.03618730797302 
		7 -22.03618730797303 11 -25.184457139598159 16 -50.034118716614927 19 -68.908838348791747 
		22 -35.303016744242967 25 -0.68960081100008896;
	setAttr -s 8 ".kit[1:7]"  9 9 9 1 1 1 1;
	setAttr -s 8 ".kot[0:7]"  9 9 9 9 1 1 1 
		5;
	setAttr -s 8 ".kix[0:7]"  0 0.4115079939365387 0.98363697528839111 
		0.52319717407226563 0.19592182338237762 0.97023749351501465 0.11527049541473389 
		1;
	setAttr -s 8 ".kiy[0:7]"  0 -0.91140615940093994 -0.18016187846660614 
		-0.85221165418624878 -0.98061949014663696 0.24215526878833771 0.99333411455154419 
		0;
	setAttr -s 8 ".kox[4:7]"  0.19592186808586121 0.97023755311965942 
		0.11527038365602493 0;
	setAttr -s 8 ".koy[4:7]"  -0.98061949014663696 0.24215516448020935 
		0.99333417415618896 0;
createNode animCurveTA -n "animCurveTA292";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 6.3542905572896933 7 10.209329889169556 
		11 13.267593173499963 16 27.750391210233172 19 80.879103195854668 22 167.10477819299015 
		25 180;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 1 1 9 
		1;
	setAttr -s 8 ".kot[4:7]"  1 1 9 5;
	setAttr -s 8 ".kix[0:7]"  0 0.79476022720336914 0.92777132987976074 
		0.69989728927612305 0.25840628147125244 0.063712850213050842 0.1148429736495018 
		1;
	setAttr -s 8 ".kiy[0:7]"  0 0.60692352056503296 0.37314930558204651 
		0.71424347162246704 0.96603631973266602 0.99796825647354126 0.99338364601135254 
		0;
	setAttr -s 8 ".kox[4:7]"  0.25840625166893005 0.063712842762470245 
		0.1148429736495018 0;
	setAttr -s 8 ".koy[4:7]"  0.96603631973266602 0.99796825647354126 
		0.99338364601135254 0;
createNode animCurveTA -n "animCurveTA293";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA294";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA295";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 4.0984482535121209;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA296";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 18.588300300216801;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA297";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA298";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA299";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 -22.686733333057838;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA300";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA301";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA302";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 1.0579251312417477e-005;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA303";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA304";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA305";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 4.0984482521620249;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA306";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 18.588300303494186;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA307";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA308";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA309";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 -22.686733334985114;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA310";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA311";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA312";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 1.0579251312417477e-005;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA313";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 20 0 25 0;
	setAttr -s 4 ".kit[0:3]"  1 9 1 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA314";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 20 0 25 0;
	setAttr -s 4 ".kit[0:3]"  1 9 1 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA315";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 20 -15.183918650212593 
		25 -15.183918650212593;
	setAttr -s 4 ".kit[0:3]"  1 9 1 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 0.9292711615562439 0.91474688053131104 
		1;
	setAttr -s 4 ".kiy[0:3]"  0 -0.36939835548400879 -0.40402746200561523 
		0;
createNode animCurveTA -n "animCurveTA316";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 7 0 25 0;
	setAttr -s 4 ".kit[0:3]"  1 9 1 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA317";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 7 0 25 0;
	setAttr -s 4 ".kit[0:3]"  1 9 1 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA318";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 -30.982661566864213 7 0 25 
		0;
	setAttr -s 4 ".kit[0:3]"  1 9 1 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[0:3]"  0 1 0.29454144835472107 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0.95563876628875732 0;
createNode animCurveTL -n "animCurveTL121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.99214413619678865 25 -0.99214413619678865;
createNode animCurveTL -n "animCurveTL122";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.033851474715545553 25 -0.033851474715545553;
createNode animCurveTL -n "animCurveTL123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.0272011762672867 25 -0.0272011762672867;
createNode animCurveTA -n "animCurveTA319";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA320";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA321";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.99214331096561381 25 0.99214331096561381;
createNode animCurveTL -n "animCurveTL125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.033841737269357866 25 -0.033841737269357866;
createNode animCurveTL -n "animCurveTL126";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.027201153963313806 25 -0.027201153963313806;
createNode animCurveTA -n "animCurveTA322";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA323";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA324";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.3705978542308779 25 -1.3705978542308779;
createNode animCurveTL -n "animCurveTL128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.1618621235956237 25 2.1618621235956237;
createNode animCurveTL -n "animCurveTL129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.12044250833667494 25 -0.12044250833667494;
createNode animCurveTA -n "animCurveTA325";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA326";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA327";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.3705977767760478 25 1.3705977767760478;
createNode animCurveTL -n "animCurveTL131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.1618658070195953 25 2.1618658070195953;
createNode animCurveTL -n "animCurveTL132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.12044246479037771 25 -0.12044246479037771;
createNode animCurveTA -n "animCurveTA328";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA329";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA330";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTL -n "animCurveTL134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTL -n "animCurveTL135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1 25 -1;
createNode animCurveTL -n "animCurveTL136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTL -n "animCurveTL137";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTL -n "animCurveTL138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1 25 -1;
createNode animCurveTA -n "animCurveTA331";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -67.112553653651219 2 -31.68712644330293 
		7 29.997821184263053 11 20.788318708066804 16 14.551265099052886 19 25.114610441813216 
		22 46.282318449645608 25 -67.112553653651219;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.13638192415237427 0.31128361821174622 
		0.74379539489746094 0.96217167377471924 0.33966332674026489 0.12330113351345062 
		0.050463281571865082;
	setAttr -s 8 ".kiy[0:7]"  0 0.99065631628036499 0.95031708478927612 
		-0.6684073805809021 0.27244386076927185 0.94054710865020752 -0.99236929416656494 
		-0.99872589111328125;
createNode animCurveTA -n "animCurveTA332";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -24.617030314972098 2 -12.697235218512819 
		7 6.1419718977440239 11 -39.309662683628417 16 -38.660496642899446 19 -72.313162525579344 
		22 -66.382394229485257 25 -24.617030314972098;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.39861416816711426 0.54255974292755127 
		0.3581986129283905 0.42011171579360962 0.38201093673706055 0.23360586166381836 
		0.13591195642948151;
	setAttr -s 8 ".kiy[0:7]"  0 0.91711872816085815 -0.84001719951629639 
		-0.93364542722702026 -0.90747237205505371 -0.92415779829025269 0.97233134508132935 
		0.99072092771530151;
createNode animCurveTA -n "animCurveTA333";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 73.822439837243778 2 80.307990428498826 
		7 -7.3382295390882266 11 -24.761904684105822 16 -14.500402571892446 19 -56.952164160626687 
		22 -65.478471163798048 25 73.822439837243778;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.16253253817558289 0.16144721210002899 
		0.92307311296463013 0.42879348993301392 0.21931345760822296 0.087290763854980469 
		0.041096188127994537;
	setAttr -s 8 ".kiy[0:7]"  0 -0.98670315742492676 -0.98688137531280518 
		-0.38462457060813904 -0.90340250730514526 -0.97565442323684692 0.99618285894393921 
		0.99915522336959839;
createNode animCurveTA -n "animCurveTA334";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 52.637219839343977 2 42.979444781996285 
		7 12.135132641565171 11 -46.696409966455221 16 -28.076675297731292 19 -22.311820440033099 
		22 -44.099319545288843 25 52.637219839343977;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 1 9 1 
		9;
	setAttr -s 8 ".kot[4:7]"  1 9 1 9;
	setAttr -s 8 ".kix[0:7]"  0 0.31344777345657349 0.18824934959411621 
		0.39305174350738525 0.3246784508228302 0.58172249794006348 0.28353440761566162 
		0.059125062078237534;
	setAttr -s 8 ".kiy[0:7]"  0 -0.94960546493530273 -0.98212128877639771 
		-0.91951632499694824 0.94582444429397583 -0.81338733434677124 0.958962082862854 
		0.99825060367584229;
	setAttr -s 8 ".kox[4:7]"  0.32467851042747498 0.58172249794006348 
		0.28353452682495117 0.059125062078237534;
	setAttr -s 8 ".koy[4:7]"  0.94582444429397583 -0.81338733434677124 
		0.95896202325820923 0.99825060367584229;
createNode animCurveTA -n "animCurveTA335";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -24.480967171432493 2 -41.442236312739524 
		7 8.9170842480104149 11 -42.209345275150341 16 -25.618266154112327 19 -23.624627759311842 
		22 -25.983596505623137 25 -24.480967171432493;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.37162536382675171 0.99900561571121216 
		0.44557574391365051 0.63505846261978149 0.99949216842651367 0.99721938371658325 
		0.96728837490081787;
	setAttr -s 8 ".kiy[0:7]"  0 0.9283827543258667 -0.044584214687347412 
		-0.89524424076080322 0.7724640965461731 -0.031864896416664124 -0.074521914124488831 
		0.25367942452430725;
createNode animCurveTA -n "animCurveTA336";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -64.344364641857084 2 -50.919665682435102 
		7 18.481619074564257 11 53.512887809988278 16 58.757331611486499 19 45.182514645397184 
		22 12.400725063866616 25 -64.344364641857084;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 1 
		9;
	setAttr -s 8 ".kot[6:7]"  1 9;
	setAttr -s 8 ".kix[0:7]"  0 0.15934844315052032 0.16240659356117249 
		0.39252424240112305 0.87798154354095459 0.23997259140014648 0.10203619301319122 
		0.0744500532746315;
	setAttr -s 8 ".kiy[0:7]"  0 0.98722243309020996 0.98672389984130859 
		0.91974163055419922 -0.47869452834129333 -0.9707796573638916 -0.99478065967559814 
		-0.99722474813461304;
	setAttr -s 8 ".kox[6:7]"  0.10203617811203003 0.0744500532746315;
	setAttr -s 8 ".koy[6:7]"  -0.99478065967559814 -0.99722474813461304;
createNode animCurveTA -n "animCurveTA337";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 59.305463658789549 2 16.629436519452952 
		7 30.701171837940969 11 -1.2276961614464734 16 43.70778371469806 19 53.322149692456946 
		22 21.725581716308753 25 59.305463658789549;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.42341452836990356 0.69349467754364014 
		0.79743045568466187 0.26971042156219482 0.46225464344024658 0.88643813133239746 
		0.15072222054004669;
	setAttr -s 8 ".kiy[0:7]"  0 -0.90593606233596802 -0.72046178579330444 
		0.60341084003448486 0.96294146776199341 -0.88674724102020264 0.46284714341163635 
		0.98857617378234863;
createNode animCurveTA -n "animCurveTA338";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 59.468287502559065 2 27.419708707584263 
		7 32.954210091354689 11 63.109249309640269 16 74.261408672651754 19 73.050664441178782 
		22 96.826861639674775 25 59.468287502559065;
	setAttr -s 8 ".kit[0:7]"  1 9 9 1 1 9 9 
		9;
	setAttr -s 8 ".kot[3:7]"  1 1 9 9 9;
	setAttr -s 8 ".kix[0:7]"  0 0.45022788643836975 0.4339156448841095 
		0.31700259447097778 0.78938621282577515 0.45278185606002808 0.64483886957168579 
		0.1515946239233017;
	setAttr -s 8 ".kiy[0:7]"  0 -0.89291369915008545 0.90095347166061401 
		0.94842469692230225 -0.61389690637588501 0.89162135124206543 -0.76431852579116821 
		-0.98844277858734131;
	setAttr -s 8 ".kox[3:7]"  0.31700271368026733 0.78938573598861694 
		0.45278185606002808 0.64483886957168579 0.1515946239233017;
	setAttr -s 8 ".koy[3:7]"  0.94842463731765747 -0.61389750242233276 
		0.89162135124206543 -0.76431852579116821 -0.98844277858734131;
createNode animCurveTA -n "animCurveTA339";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -11.342548829337773 2 -11.342548829337769 
		7 1.8207300767299384 11 10.80894823648077 16 8.3861282503638837 19 2.2713922249178085 
		22 -4.4778918049113337 25 -11.342548829337773;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.71256840229034424 0.61304670572280884 
		0.93417441844940186 0.87295901775360107 0.66515696048736572 0.64396423101425171 
		0.64078021049499512;
	setAttr -s 8 ".kiy[0:7]"  0 0.70160263776779175 0.79004669189453125 
		0.35681667923927307 -0.48779356479644775 -0.74670356512069702 -0.76505559682846069 
		-0.76772439479827881;
createNode animCurveTA -n "animCurveTA340";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 11.615881410206434 2 11.615881410206432 
		7 11.615881410206432 11 11.615881410206432 16 11.615881410206432 19 11.615881410206432 
		22 11.615881410206432 25 11.615881410206434;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA341";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.32159281075535046 2 0.32159281075535068 
		7 0.32159281075535051 11 0.3215928107553504 16 0.3215928107553504 19 0.32159281075535046 
		22 0.32159281075535057 25 0.32159281075535046;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA342";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 18.476235154862632 2 18.476235154862632 
		7 18.476235154862632 11 18.476235154862632 16 18.476235154862632 19 18.476235154862632 
		22 18.476235154862632 25 18.476235154862632;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA343";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 10.082003051124275 2 10.082003051124275 
		7 10.082003051124275 11 10.082003051124275 16 10.082003051124275 19 10.082003051124275 
		22 10.082003051124275 25 10.082003051124275;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA344";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -4.720189328892868 2 -4.720189328892868 
		7 -4.720189328892868 11 -4.720189328892868 16 -4.720189328892868 19 -4.720189328892868 
		22 -4.720189328892868 25 -4.720189328892868;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA345";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 26.194612819039182 2 40.103137418787625 
		7 40.103137418787625 11 40.103137418787625 19 32.479806203429959 25 26.194612819039182;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.69298571348190308 1 0.94888317584991455 
		0.88715231418609619 0.87677562236785889;
	setAttr -s 6 ".kiy[0:5]"  0 0.72095131874084473 0 -0.31562754511833191 
		-0.46147674322128296 -0.48089969158172607;
createNode animCurveTA -n "animCurveTA346";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 42.116293762219598 2 57.55322303127268 
		7 57.55322303127268 11 57.55322303127268 19 49.092165750063245 25 42.116293762219598;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.65466046333312988 1 0.93811094760894775 
		0.86602932214736938 0.85417425632476807;
	setAttr -s 6 ".kiy[0:5]"  0 0.75592309236526489 0 -0.34633487462997437 
		-0.49999320507049561 -0.51998686790466309;
createNode animCurveTA -n "animCurveTA347";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 51.312599966148298 2 43.549780387740675 
		7 43.549780387740675 11 43.549780387740675 19 47.80462013334121 25 51.312599966148298;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.86478430032730103 1 0.98319965600967407 
		0.96034461259841919 0.95619821548461914;
	setAttr -s 6 ".kiy[0:5]"  0 -0.5021435022354126 0 0.1825333833694458 
		0.27881568670272827 0.29272001981735229;
createNode animCurveTA -n "animCurveTA348";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 7 0 11 0 19 0 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA349";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 7 0 11 0 19 0 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA350";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 90.838361755940937 2 87.3245478604981 
		7 87.3245478604981 11 87.3245478604981 19 89.250486664370811 25 90.838361755940937;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.96715188026428223 1 0.99648767709732056 
		0.99147516489028931 0.99053549766540527;
	setAttr -s 6 ".kiy[0:5]"  0 -0.25419911742210388 0 0.083739772439002991 
		0.13029603660106659 0.13725677132606506;
createNode animCurveTA -n "animCurveTA351";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA352";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA353";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA354";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 15.463751312674599 10 22.268183410249442 
		12 25.996874863238368 14 30.275419216106652 17 34.648469658307974 20 39.038703285259977 
		25 39.038703285259977;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 1 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 0.65101885795593262 0.87565582990646362 
		0.69029450416564941 0.74108171463012695 0.79434442520141602 0.79376983642578125 
		1;
	setAttr -s 8 ".kiy[0:7]"  0 0.75906157493591309 0.48293563723564148 
		0.72352850437164307 0.67141479253768921 0.6074676513671875 0.60821825265884399 
		0;
createNode animCurveTA -n "animCurveTA355";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 -9.5336165711034315 10 14.217335355725417 
		12 27.232378200698562 14 42.166688668612643 17 57.430873324946276 20 72.755037061650995 
		25 72.755037061650995;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 1 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 0.80214411020278931 0.4609779417514801 
		0.26365980505943298 0.30150255560874939 0.35081544518470764 0.35021325945854187 
		1;
	setAttr -s 8 ".kiy[0:7]"  0 0.59713047742843628 0.88741159439086914 
		0.96461570262908936 0.95346534252166748 0.93644464015960693 0.93666994571685791 
		0;
createNode animCurveTA -n "animCurveTA356";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 -22.376510935723548 10 -4.6826447181194597 
		12 5.0132364775067328 14 16.138924994881666 17 27.510361462378299 20 38.926480273156798 
		25 38.926480273156798;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 1 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 0.97123336791992188 0.57196938991546631 
		0.34444788098335266 0.39072537422180176 0.44926297664642334 0.44856089353561401 
		1;
	setAttr -s 8 ".kiy[0:7]"  0 -0.2381296306848526 0.8202749490737915 
		0.93880546092987061 0.92050731182098389 0.89339959621429443 0.89375227689743042 
		0;
createNode animCurveTA -n "animCurveTA357";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 27.705218915343313 10 27.705218915343313 
		12 27.705218915343313 14 27.705218915343313 17 27.705218915343313 20 27.705218915343313 
		25 27.705218915343313;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 1 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 0.56756269931793213 1 1 1 1 1 
		1;
	setAttr -s 8 ".kiy[0:7]"  0 0.82333016395568848 0 0 0 0 0 
		0;
createNode animCurveTA -n "animCurveTA358";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 43.35103828268312 10 43.35103828268312 
		12 43.35103828268312 14 43.35103828268312 17 43.35103828268312 20 43.35103828268312 
		25 43.35103828268312;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 1 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 0.40316542983055115 1 1 1 1 1 
		1;
	setAttr -s 8 ".kiy[0:7]"  0 0.91512709856033325 0 0 0 0 0 
		0;
createNode animCurveTA -n "animCurveTA359";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 54.23572299800319 10 54.23572299800319 
		12 54.23572299800319 14 54.23572299800319 17 54.23572299800319 20 54.23572299800319 
		25 54.23572299800319;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 1 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 0.33214846253395081 1 1 1 1 1 
		1;
	setAttr -s 8 ".kiy[0:7]"  0 0.94322711229324341 0 0 0 0 0 
		0;
createNode animCurveTA -n "animCurveTA360";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 7 0 11 0 19 0 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA361";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 7 0 11 0 19 0 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA362";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 86.611733534295581 2 92.856311121092375 
		7 92.856311121092375 11 92.856311121092375 19 89.433627230605424 25 86.611733534295581;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.90603494644165039 1 0.98903149366378784 
		0.97379523515701294 0.97099167108535767;
	setAttr -s 6 ".kiy[0:5]"  0 0.42320287227630615 0 -0.14770469069480896 
		-0.22742661833763123 -0.2391132116317749;
createNode animCurveTA -n "animCurveTA363";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.2945941069882385 2 -1.2945941069882381 
		7 -2.450949422502684 11 -3.0133732239400612 16 -1.2945941069882381 19 -1.2945941069882381 
		22 -1.2945941069882381 25 -1.2945941069882385;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.99628013372421265 0.9950377345085144 
		0.99774473905563354 0.99373197555541992 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 -0.08617343008518219 -0.099498316645622253 
		0.067122310400009155 0.11178871989250183 0 0 0;
createNode animCurveTA -n "animCurveTA364";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -3.3208811165553156 2 -3.3208811165553147 
		7 -2.3676459946882935 11 -1.9040150461981136 16 -3.3208811165553147 19 -3.3208811165553147 
		22 -3.3208811165553147 25 -3.3208811165553156;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.99746769666671753 0.99661988019943237 
		0.99846577644348145 0.9957277774810791 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0.071121260523796082 0.082151308655738831 
		-0.055371891707181931 -0.092337489128112793 0 0 0;
createNode animCurveTA -n "animCurveTA365";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -27.52582447785997 2 -27.525824477859967 
		7 -3.0165792237419522 11 8.90413601656644 16 -27.525824477859967 19 -27.525824477859967 
		22 -27.525824477859967 25 -27.52582447785997;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.47886142134666443 0.42671594023704529 
		0.57418543100357056 0.38676530122756958 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0.87789052724838257 0.90438568592071533 
		-0.81872528791427612 -0.92217814922332764 0 0 0;
createNode animCurveTA -n "animCurveTA366";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 8.7597363552835965 2 -6.6256320096941419 
		7 -2.7642461781993148 11 2.3005741382996154 16 -17.960235759194269 19 -23.008507200949115 
		22 -11.983390722633795 25 8.7597363552835965;
	setAttr -s 8 ".kit[0:7]"  1 9 1 9 1 9 9 
		9;
	setAttr -s 8 ".kot[2:7]"  1 9 1 9 9 9;
	setAttr -s 8 ".kix[0:7]"  0 0.75743883848190308 0.64309549331665039 
		0.74920046329498291 0.44809669256210327 0.88664340972900391 0.33931151032447815 
		0.26624572277069092;
	setAttr -s 8 ".kiy[0:7]"  0 -0.65290611982345581 0.76578599214553833 
		-0.66234326362609863 -0.8939850926399231 0.46245381236076355 0.9406740665435791 
		0.9639052152633667;
	setAttr -s 8 ".kox[2:7]"  0.64309549331665039 0.74920046329498291 
		0.44809660315513611 0.88664340972900391 0.33931151032447815 0.26624572277069092;
	setAttr -s 8 ".koy[2:7]"  0.76578599214553833 -0.66234326362609863 
		-0.89398515224456787 0.46245381236076355 0.9406740665435791 0.9639052152633667;
createNode animCurveTA -n "animCurveTA367";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 -15.409577186805379 7 -24.534663029055007 
		11 -29.740453677480421 16 -19.853159119150614 19 -10.779968580413758 22 -2.4292948636066605 
		25 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 1 9 9 
		9;
	setAttr -s 8 ".kot[4:7]"  1 9 9 9;
	setAttr -s 8 ".kix[0:7]"  0 0.47847893834114075 0.76806890964508057 
		0.96485400199890137 0.54513818025588989 0.54948556423187256 0.72836238145828247 
		0.92066466808319092;
	setAttr -s 8 ".kiy[0:7]"  0 -0.87809902429580688 -0.64036715030670166 
		0.26278653740882874 0.83834618330001831 0.8355032205581665 0.68519210815429688 
		0.3903544545173645;
	setAttr -s 8 ".kox[4:7]"  0.54513823986053467 0.54948556423187256 
		0.72836238145828247 0.92066466808319092;
	setAttr -s 8 ".koy[4:7]"  0.83834618330001831 0.8355032205581665 
		0.68519210815429688 0.3903544545173645;
createNode animCurveTA -n "animCurveTA368";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.83175856160007333 2 29.448631111573597 
		7 -8.370713625395565 11 -31.709923704837831 16 13.147663143667165 19 15.423262227133042 
		22 4.8778991855261209 25 -0.83175856160007333;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 1 1 9 
		9;
	setAttr -s 8 ".kot[4:7]"  1 1 9 9;
	setAttr -s 8 ".kix[0:7]"  0 0.87104928493499756 0.27056890726089478 
		0.62411993741989136 0.30874046683311462 0.5734667181968689 0.57618045806884766 
		0.70833700895309448;
	setAttr -s 8 ".kiy[0:7]"  0 -0.49119558930397034 -0.96270060539245605 
		0.78132855892181396 0.95114630460739136 -0.81922882795333862 -0.8173224925994873 
		-0.70587438344955444;
	setAttr -s 8 ".kox[4:7]"  0.30874049663543701 0.57346677780151367 
		0.57618045806884766 0.70833700895309448;
	setAttr -s 8 ".koy[4:7]"  0.95114630460739136 -0.81922882795333862 
		-0.8173224925994873 -0.70587438344955444;
createNode animCurveTA -n "animCurveTA369";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 7 0 11 0 16 0 19 0 22 0 
		25 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA370";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 7 0 11 0 16 0 19 0 22 0 
		25 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA371";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 7 0 11 0 16 0 19 0 22 0 
		25 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA372";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 -10.972958162468931 7 -1.1048876285264739 
		11 12.190298742928256 16 23.789854670222191 19 15.352625182994878 22 6.0986818734515209 
		25 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 1 9 1 
		3;
	setAttr -s 8 ".kot[4:7]"  1 9 1 3;
	setAttr -s 8 ".kix[0:7]"  0 0.99660223722457886 0.5959160327911377 
		0.5681796669960022 0.53028100728988647 0.54365003108978271 0.50624245405197144 
		1;
	setAttr -s 8 ".kiy[0:7]"  0 -0.082364596426486969 0.80304676294326782 
		0.82290452718734741 -0.84782195091247559 -0.83931201696395874 -0.86239123344421387 
		0;
	setAttr -s 8 ".kox[4:7]"  0.53028112649917603 0.54365003108978271 
		0.50624263286590576 1;
	setAttr -s 8 ".koy[4:7]"  -0.84782189130783081 -0.83931201696395874 
		-0.86239111423492432 0;
createNode animCurveTA -n "animCurveTA373";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 9.2427148064678804 2 -19.629209031535321 
		7 -32.087525875733597 11 -33.115302662254031 16 26.173108929839668 19 29.001052321746428 
		22 16.638422823802415 25 9.2427148064678804;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 1 9 1 
		3;
	setAttr -s 8 ".kot[4:7]"  1 9 1 3;
	setAttr -s 8 ".kix[0:7]"  0 0.30776748061180115 0.78674817085266113 
		0.28297311067581177 0.35109463334083557 0.76870310306549072 0.42579588294029236 
		1;
	setAttr -s 8 ".kiy[0:7]"  0 -0.95146161317825317 -0.61727404594421387 
		0.95912784337997437 0.93633997440338135 -0.63960576057434082 -0.90481925010681152 
		0;
	setAttr -s 8 ".kox[4:7]"  0.35109466314315796 0.76870310306549072 
		0.42579591274261475 1;
	setAttr -s 8 ".koy[4:7]"  0.93633997440338135 -0.63960576057434082 
		-0.90481925010681152 0;
createNode animCurveTA -n "animCurveTA374";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 45.980058471715132 7 0.4063765417594648 
		11 -16.679792499518086 16 4.7536430515975132 19 -3.1279207222941179 22 -11.609094456568025 
		25 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 1 1 9 
		3;
	setAttr -s 8 ".kot[4:7]"  1 1 9 3;
	setAttr -s 8 ".kix[0:7]"  0 0.9995383620262146 0.26454508304595947 
		0.969474196434021 0.36946851015090942 0.35179421305656433 0.9647061824798584 
		1;
	setAttr -s 8 ".kiy[0:7]"  0 0.030382862314581871 -0.96437329053878784 
		0.24519331753253937 0.92924326658248901 -0.93607735633850098 0.2633286714553833 
		0;
	setAttr -s 8 ".kox[4:7]"  0.36946851015090942 0.35179418325424194 
		0.9647061824798584 1;
	setAttr -s 8 ".koy[4:7]"  0.92924326658248901 -0.93607735633850098 
		0.2633286714553833 0;
createNode animCurveTA -n "animCurveTA375";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 -11.050593603796928 7 -15.378940319522103 
		11 -15.575892852586 16 -22.355478705278934 19 -19.255152398649781 22 -10.171514217885525 
		25 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 1 9 
		9;
	setAttr -s 8 ".kot[5:7]"  1 9 9;
	setAttr -s 8 ".kix[0:7]"  0 0.65606755018234253 0.96704757213592529 
		0.9265865683555603 0.97220897674560547 0.59824961423873901 0.51140987873077393 
		0.49078825116157532;
	setAttr -s 8 ".kiy[0:7]"  0 -0.75470215082168579 -0.25459581613540649 
		-0.37608158588409424 -0.23411470651626587 0.80130982398986816 0.85933691263198853 
		0.87127888202667236;
	setAttr -s 8 ".kox[5:7]"  0.59824961423873901 0.51140987873077393 
		0.49078825116157532;
	setAttr -s 8 ".koy[5:7]"  0.80130982398986816 0.85933691263198853 
		0.87127888202667236;
createNode animCurveTA -n "animCurveTA376";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 2.8283380093478772 7 1.7644565748015864 
		11 8.3043833124730195 16 11.544400348002803 19 1.8494438749439632 22 0.19386903529261962 
		25 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.99140268564224243 0.95281517505645752 
		0.86916065216064453 0.92116618156433105 0.71046614646911621 0.98722493648529053 
		0.99942803382873535;
	setAttr -s 8 ".kiy[0:7]"  0 0.13084635138511658 0.30355110764503479 
		0.49452987313270569 -0.38916948437690735 -0.70373141765594482 -0.15933261811733246 
		-0.033817179501056671;
createNode animCurveTA -n "animCurveTA377";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 -17.225317658176667 7 -15.871312813836095 
		11 8.779686725513276 16 -12.187385212900336 19 6.8627718757410419 22 7.7678307097596866 
		25 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 1 1 
		9;
	setAttr -s 8 ".kot[5:7]"  1 1 9;
	setAttr -s 8 ".kix[0:7]"  0 0.64424002170562744 0.55141031742095947 
		0.97779512405395508 0.99222135543823242 0.42127376794815063 0.66195613145828247 
		0.59359598159790039;
	setAttr -s 8 ".kiy[0:7]"  0 -0.76482337713241577 0.83423417806625366 
		0.20956322550773621 -0.12448586523532867 0.90693354606628418 -0.74954253435134888 
		-0.80476319789886475;
	setAttr -s 8 ".kox[5:7]"  0.42127373814582825 0.66195619106292725 
		0.59359598159790039;
	setAttr -s 8 ".koy[5:7]"  0.90693354606628418 -0.74954253435134888 
		-0.80476319789886475;
createNode animCurveTA -n "animCurveTA378";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 7 0 11 0 19 0 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA379";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 7 0 11 0 19 0 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA380";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 101.15442879205187 2 81.77126988193308 
		7 81.77126988193308 11 81.77126988193308 19 92.395275203243287 25 101.15442879205187;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.56777095794677734 1 0.90726041793823242 
		0.80963796377182007 0.79448258876800537;
	setAttr -s 6 ".kiy[0:5]"  0 -0.82318657636642456 0 0.42056933045387268 
		0.58692961931228638 0.60728693008422852;
createNode animCurveTA -n "animCurveTA381";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 11.09331921989552 2 -20.302281049373267 
		7 -20.302281049373267 11 -20.302281049373267 19 -3.0941969218874892 25 11.09331921989552;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.39178305864334106 1 0.79967582225799561 
		0.6483769416809082 0.62833738327026367;
	setAttr -s 6 ".kiy[0:5]"  0 -0.92005759477615356 0 0.60043203830718994 
		0.76131945848464966 0.77794098854064941;
createNode animCurveTA -n "animCurveTA382";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 59.959644693642339 2 79.827796533103765 
		7 79.827796533103765 11 79.827796533103765 19 68.937964038122544 25 59.959644693642339;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.55826777219772339 1 0.90322196483612061 
		0.80266314744949341 0.78716200590133667;
	setAttr -s 6 ".kiy[0:5]"  0 0.82966083288192749 0 -0.42917367815971375 
		-0.59643262624740601 -0.61674630641937256;
createNode animCurveTA -n "animCurveTA383";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 48.106469618696913 2 -0.854892625876847 
		7 -0.854892625876847 11 -0.854892625876847 19 25.981072439190168 25 48.106469618696913;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.26340928673744202 1 0.64941906929016113 
		0.47929185628890991 0.45989727973937988;
	setAttr -s 6 ".kiy[0:5]"  0 -0.96468418836593628 0 0.76043069362640381 
		0.87765556573867798 0.88797211647033691;
createNode animCurveTA -n "animCurveTA384";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 7 0 11 0 19 0 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA385";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 7 0 11 0 19 0 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA386";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 81.622987204614233 2 71.092866528981205 
		7 71.092866528981205 11 71.092866528981205 19 76.864477837399093 25 81.622987204614233;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.78557860851287842 1 0.96972256898880005 
		0.93044447898864746 0.92353802919387817;
	setAttr -s 6 ".kiy[0:5]"  0 -0.61876189708709717 0 0.24420918524265289 
		0.36643284559249878 0.38350686430931091;
createNode clipLibrary -n "clipLibrary3";
	setAttr -s 162 ".cel[0].cev";
createNode clipLibrary -n "clipLibrary4";
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
	setAttr -s 3 ".sol";
connectAttr "hom_loco_turn_180.st" "clipLibrary3.st[0]";
connectAttr "hom_loco_turn_180.du" "clipLibrary3.du[0]";
connectAttr "animCurveTL98.a" "clipLibrary3.cel[0].cev[0].cevr";
connectAttr "animCurveTL99.a" "clipLibrary3.cel[0].cev[1].cevr";
connectAttr "animCurveTL100.a" "clipLibrary3.cel[0].cev[2].cevr";
connectAttr "animCurveTL101.a" "clipLibrary3.cel[0].cev[3].cevr";
connectAttr "animCurveTL102.a" "clipLibrary3.cel[0].cev[4].cevr";
connectAttr "animCurveTA274.a" "clipLibrary3.cel[0].cev[5].cevr";
connectAttr "animCurveTU17.a" "clipLibrary3.cel[0].cev[6].cevr";
connectAttr "animCurveTU18.a" "clipLibrary3.cel[0].cev[7].cevr";
connectAttr "animCurveTU19.a" "clipLibrary3.cel[0].cev[8].cevr";
connectAttr "animCurveTU20.a" "clipLibrary3.cel[0].cev[9].cevr";
connectAttr "animCurveTU21.a" "clipLibrary3.cel[0].cev[10].cevr";
connectAttr "animCurveTU22.a" "clipLibrary3.cel[0].cev[11].cevr";
connectAttr "animCurveTU23.a" "clipLibrary3.cel[0].cev[12].cevr";
connectAttr "animCurveTU24.a" "clipLibrary3.cel[0].cev[13].cevr";
connectAttr "animCurveTA275.a" "clipLibrary3.cel[0].cev[14].cevr";
connectAttr "animCurveTA276.a" "clipLibrary3.cel[0].cev[15].cevr";
connectAttr "animCurveTA277.a" "clipLibrary3.cel[0].cev[16].cevr";
connectAttr "animCurveTL103.a" "clipLibrary3.cel[0].cev[17].cevr";
connectAttr "animCurveTL104.a" "clipLibrary3.cel[0].cev[18].cevr";
connectAttr "animCurveTL105.a" "clipLibrary3.cel[0].cev[19].cevr";
connectAttr "animCurveTL106.a" "clipLibrary3.cel[0].cev[20].cevr";
connectAttr "animCurveTL107.a" "clipLibrary3.cel[0].cev[21].cevr";
connectAttr "animCurveTL108.a" "clipLibrary3.cel[0].cev[22].cevr";
connectAttr "animCurveTA278.a" "clipLibrary3.cel[0].cev[23].cevr";
connectAttr "animCurveTA279.a" "clipLibrary3.cel[0].cev[24].cevr";
connectAttr "animCurveTA280.a" "clipLibrary3.cel[0].cev[25].cevr";
connectAttr "animCurveTL109.a" "clipLibrary3.cel[0].cev[26].cevr";
connectAttr "animCurveTL110.a" "clipLibrary3.cel[0].cev[27].cevr";
connectAttr "animCurveTL111.a" "clipLibrary3.cel[0].cev[28].cevr";
connectAttr "animCurveTA281.a" "clipLibrary3.cel[0].cev[29].cevr";
connectAttr "animCurveTA282.a" "clipLibrary3.cel[0].cev[30].cevr";
connectAttr "animCurveTA283.a" "clipLibrary3.cel[0].cev[31].cevr";
connectAttr "animCurveTA284.a" "clipLibrary3.cel[0].cev[32].cevr";
connectAttr "animCurveTA285.a" "clipLibrary3.cel[0].cev[33].cevr";
connectAttr "animCurveTA286.a" "clipLibrary3.cel[0].cev[34].cevr";
connectAttr "animCurveTA287.a" "clipLibrary3.cel[0].cev[35].cevr";
connectAttr "animCurveTA288.a" "clipLibrary3.cel[0].cev[36].cevr";
connectAttr "animCurveTA289.a" "clipLibrary3.cel[0].cev[37].cevr";
connectAttr "animCurveTL112.a" "clipLibrary3.cel[0].cev[38].cevr";
connectAttr "animCurveTL113.a" "clipLibrary3.cel[0].cev[39].cevr";
connectAttr "animCurveTL114.a" "clipLibrary3.cel[0].cev[40].cevr";
connectAttr "animCurveTL115.a" "clipLibrary3.cel[0].cev[41].cevr";
connectAttr "animCurveTL116.a" "clipLibrary3.cel[0].cev[42].cevr";
connectAttr "animCurveTL117.a" "clipLibrary3.cel[0].cev[43].cevr";
connectAttr "animCurveTL118.a" "clipLibrary3.cel[0].cev[44].cevr";
connectAttr "animCurveTL119.a" "clipLibrary3.cel[0].cev[45].cevr";
connectAttr "animCurveTL120.a" "clipLibrary3.cel[0].cev[46].cevr";
connectAttr "animCurveTA290.a" "clipLibrary3.cel[0].cev[47].cevr";
connectAttr "animCurveTA291.a" "clipLibrary3.cel[0].cev[48].cevr";
connectAttr "animCurveTA292.a" "clipLibrary3.cel[0].cev[49].cevr";
connectAttr "animCurveTA293.a" "clipLibrary3.cel[0].cev[50].cevr";
connectAttr "animCurveTA294.a" "clipLibrary3.cel[0].cev[51].cevr";
connectAttr "animCurveTA295.a" "clipLibrary3.cel[0].cev[52].cevr";
connectAttr "animCurveTA296.a" "clipLibrary3.cel[0].cev[53].cevr";
connectAttr "animCurveTA297.a" "clipLibrary3.cel[0].cev[54].cevr";
connectAttr "animCurveTA298.a" "clipLibrary3.cel[0].cev[55].cevr";
connectAttr "animCurveTA299.a" "clipLibrary3.cel[0].cev[56].cevr";
connectAttr "animCurveTA300.a" "clipLibrary3.cel[0].cev[57].cevr";
connectAttr "animCurveTA301.a" "clipLibrary3.cel[0].cev[58].cevr";
connectAttr "animCurveTA302.a" "clipLibrary3.cel[0].cev[59].cevr";
connectAttr "animCurveTA303.a" "clipLibrary3.cel[0].cev[60].cevr";
connectAttr "animCurveTA304.a" "clipLibrary3.cel[0].cev[61].cevr";
connectAttr "animCurveTA305.a" "clipLibrary3.cel[0].cev[62].cevr";
connectAttr "animCurveTA306.a" "clipLibrary3.cel[0].cev[63].cevr";
connectAttr "animCurveTA307.a" "clipLibrary3.cel[0].cev[64].cevr";
connectAttr "animCurveTA308.a" "clipLibrary3.cel[0].cev[65].cevr";
connectAttr "animCurveTA309.a" "clipLibrary3.cel[0].cev[66].cevr";
connectAttr "animCurveTA310.a" "clipLibrary3.cel[0].cev[67].cevr";
connectAttr "animCurveTA311.a" "clipLibrary3.cel[0].cev[68].cevr";
connectAttr "animCurveTA312.a" "clipLibrary3.cel[0].cev[69].cevr";
connectAttr "animCurveTA313.a" "clipLibrary3.cel[0].cev[70].cevr";
connectAttr "animCurveTA314.a" "clipLibrary3.cel[0].cev[71].cevr";
connectAttr "animCurveTA315.a" "clipLibrary3.cel[0].cev[72].cevr";
connectAttr "animCurveTA316.a" "clipLibrary3.cel[0].cev[73].cevr";
connectAttr "animCurveTA317.a" "clipLibrary3.cel[0].cev[74].cevr";
connectAttr "animCurveTA318.a" "clipLibrary3.cel[0].cev[75].cevr";
connectAttr "animCurveTL121.a" "clipLibrary3.cel[0].cev[76].cevr";
connectAttr "animCurveTL122.a" "clipLibrary3.cel[0].cev[77].cevr";
connectAttr "animCurveTL123.a" "clipLibrary3.cel[0].cev[78].cevr";
connectAttr "animCurveTA319.a" "clipLibrary3.cel[0].cev[79].cevr";
connectAttr "animCurveTA320.a" "clipLibrary3.cel[0].cev[80].cevr";
connectAttr "animCurveTA321.a" "clipLibrary3.cel[0].cev[81].cevr";
connectAttr "animCurveTL124.a" "clipLibrary3.cel[0].cev[82].cevr";
connectAttr "animCurveTL125.a" "clipLibrary3.cel[0].cev[83].cevr";
connectAttr "animCurveTL126.a" "clipLibrary3.cel[0].cev[84].cevr";
connectAttr "animCurveTA322.a" "clipLibrary3.cel[0].cev[85].cevr";
connectAttr "animCurveTA323.a" "clipLibrary3.cel[0].cev[86].cevr";
connectAttr "animCurveTA324.a" "clipLibrary3.cel[0].cev[87].cevr";
connectAttr "animCurveTL127.a" "clipLibrary3.cel[0].cev[88].cevr";
connectAttr "animCurveTL128.a" "clipLibrary3.cel[0].cev[89].cevr";
connectAttr "animCurveTL129.a" "clipLibrary3.cel[0].cev[90].cevr";
connectAttr "animCurveTA325.a" "clipLibrary3.cel[0].cev[91].cevr";
connectAttr "animCurveTA326.a" "clipLibrary3.cel[0].cev[92].cevr";
connectAttr "animCurveTA327.a" "clipLibrary3.cel[0].cev[93].cevr";
connectAttr "animCurveTL130.a" "clipLibrary3.cel[0].cev[94].cevr";
connectAttr "animCurveTL131.a" "clipLibrary3.cel[0].cev[95].cevr";
connectAttr "animCurveTL132.a" "clipLibrary3.cel[0].cev[96].cevr";
connectAttr "animCurveTA328.a" "clipLibrary3.cel[0].cev[97].cevr";
connectAttr "animCurveTA329.a" "clipLibrary3.cel[0].cev[98].cevr";
connectAttr "animCurveTA330.a" "clipLibrary3.cel[0].cev[99].cevr";
connectAttr "animCurveTL133.a" "clipLibrary3.cel[0].cev[100].cevr";
connectAttr "animCurveTL134.a" "clipLibrary3.cel[0].cev[101].cevr";
connectAttr "animCurveTL135.a" "clipLibrary3.cel[0].cev[102].cevr";
connectAttr "animCurveTL136.a" "clipLibrary3.cel[0].cev[103].cevr";
connectAttr "animCurveTL137.a" "clipLibrary3.cel[0].cev[104].cevr";
connectAttr "animCurveTL138.a" "clipLibrary3.cel[0].cev[105].cevr";
connectAttr "animCurveTA331.a" "clipLibrary3.cel[0].cev[106].cevr";
connectAttr "animCurveTA332.a" "clipLibrary3.cel[0].cev[107].cevr";
connectAttr "animCurveTA333.a" "clipLibrary3.cel[0].cev[108].cevr";
connectAttr "animCurveTA334.a" "clipLibrary3.cel[0].cev[109].cevr";
connectAttr "animCurveTA335.a" "clipLibrary3.cel[0].cev[110].cevr";
connectAttr "animCurveTA336.a" "clipLibrary3.cel[0].cev[111].cevr";
connectAttr "animCurveTA337.a" "clipLibrary3.cel[0].cev[112].cevr";
connectAttr "animCurveTA338.a" "clipLibrary3.cel[0].cev[113].cevr";
connectAttr "animCurveTA339.a" "clipLibrary3.cel[0].cev[114].cevr";
connectAttr "animCurveTA340.a" "clipLibrary3.cel[0].cev[115].cevr";
connectAttr "animCurveTA341.a" "clipLibrary3.cel[0].cev[116].cevr";
connectAttr "animCurveTA342.a" "clipLibrary3.cel[0].cev[117].cevr";
connectAttr "animCurveTA343.a" "clipLibrary3.cel[0].cev[118].cevr";
connectAttr "animCurveTA344.a" "clipLibrary3.cel[0].cev[119].cevr";
connectAttr "animCurveTA345.a" "clipLibrary3.cel[0].cev[120].cevr";
connectAttr "animCurveTA346.a" "clipLibrary3.cel[0].cev[121].cevr";
connectAttr "animCurveTA347.a" "clipLibrary3.cel[0].cev[122].cevr";
connectAttr "animCurveTA348.a" "clipLibrary3.cel[0].cev[123].cevr";
connectAttr "animCurveTA349.a" "clipLibrary3.cel[0].cev[124].cevr";
connectAttr "animCurveTA350.a" "clipLibrary3.cel[0].cev[125].cevr";
connectAttr "animCurveTA351.a" "clipLibrary3.cel[0].cev[126].cevr";
connectAttr "animCurveTA352.a" "clipLibrary3.cel[0].cev[127].cevr";
connectAttr "animCurveTA353.a" "clipLibrary3.cel[0].cev[128].cevr";
connectAttr "animCurveTA354.a" "clipLibrary3.cel[0].cev[129].cevr";
connectAttr "animCurveTA355.a" "clipLibrary3.cel[0].cev[130].cevr";
connectAttr "animCurveTA356.a" "clipLibrary3.cel[0].cev[131].cevr";
connectAttr "animCurveTA357.a" "clipLibrary3.cel[0].cev[132].cevr";
connectAttr "animCurveTA358.a" "clipLibrary3.cel[0].cev[133].cevr";
connectAttr "animCurveTA359.a" "clipLibrary3.cel[0].cev[134].cevr";
connectAttr "animCurveTA360.a" "clipLibrary3.cel[0].cev[135].cevr";
connectAttr "animCurveTA361.a" "clipLibrary3.cel[0].cev[136].cevr";
connectAttr "animCurveTA362.a" "clipLibrary3.cel[0].cev[137].cevr";
connectAttr "animCurveTA363.a" "clipLibrary3.cel[0].cev[138].cevr";
connectAttr "animCurveTA364.a" "clipLibrary3.cel[0].cev[139].cevr";
connectAttr "animCurveTA365.a" "clipLibrary3.cel[0].cev[140].cevr";
connectAttr "animCurveTA366.a" "clipLibrary3.cel[0].cev[141].cevr";
connectAttr "animCurveTA367.a" "clipLibrary3.cel[0].cev[142].cevr";
connectAttr "animCurveTA368.a" "clipLibrary3.cel[0].cev[143].cevr";
connectAttr "animCurveTA369.a" "clipLibrary3.cel[0].cev[144].cevr";
connectAttr "animCurveTA370.a" "clipLibrary3.cel[0].cev[145].cevr";
connectAttr "animCurveTA371.a" "clipLibrary3.cel[0].cev[146].cevr";
connectAttr "animCurveTA372.a" "clipLibrary3.cel[0].cev[147].cevr";
connectAttr "animCurveTA373.a" "clipLibrary3.cel[0].cev[148].cevr";
connectAttr "animCurveTA374.a" "clipLibrary3.cel[0].cev[149].cevr";
connectAttr "animCurveTA375.a" "clipLibrary3.cel[0].cev[150].cevr";
connectAttr "animCurveTA376.a" "clipLibrary3.cel[0].cev[151].cevr";
connectAttr "animCurveTA377.a" "clipLibrary3.cel[0].cev[152].cevr";
connectAttr "animCurveTA378.a" "clipLibrary3.cel[0].cev[153].cevr";
connectAttr "animCurveTA379.a" "clipLibrary3.cel[0].cev[154].cevr";
connectAttr "animCurveTA380.a" "clipLibrary3.cel[0].cev[155].cevr";
connectAttr "animCurveTA381.a" "clipLibrary3.cel[0].cev[156].cevr";
connectAttr "animCurveTA382.a" "clipLibrary3.cel[0].cev[157].cevr";
connectAttr "animCurveTA383.a" "clipLibrary3.cel[0].cev[158].cevr";
connectAttr "animCurveTA384.a" "clipLibrary3.cel[0].cev[159].cevr";
connectAttr "animCurveTA385.a" "clipLibrary3.cel[0].cev[160].cevr";
connectAttr "animCurveTA386.a" "clipLibrary3.cel[0].cev[161].cevr";
connectAttr "hom_loco_turn_180.st" "clipLibrary4.st[0]";
connectAttr "hom_loco_turn_180.du" "clipLibrary4.du[0]";
connectAttr "animCurveTL98.a" "clipLibrary4.cel[0].cev[0].cevr";
connectAttr "animCurveTL99.a" "clipLibrary4.cel[0].cev[1].cevr";
connectAttr "animCurveTL100.a" "clipLibrary4.cel[0].cev[2].cevr";
connectAttr "animCurveTL101.a" "clipLibrary4.cel[0].cev[3].cevr";
connectAttr "animCurveTL102.a" "clipLibrary4.cel[0].cev[4].cevr";
connectAttr "animCurveTA274.a" "clipLibrary4.cel[0].cev[5].cevr";
connectAttr "animCurveTU17.a" "clipLibrary4.cel[0].cev[6].cevr";
connectAttr "animCurveTU18.a" "clipLibrary4.cel[0].cev[7].cevr";
connectAttr "animCurveTU19.a" "clipLibrary4.cel[0].cev[8].cevr";
connectAttr "animCurveTU20.a" "clipLibrary4.cel[0].cev[9].cevr";
connectAttr "animCurveTU21.a" "clipLibrary4.cel[0].cev[10].cevr";
connectAttr "animCurveTU22.a" "clipLibrary4.cel[0].cev[11].cevr";
connectAttr "animCurveTU23.a" "clipLibrary4.cel[0].cev[12].cevr";
connectAttr "animCurveTU24.a" "clipLibrary4.cel[0].cev[13].cevr";
connectAttr "animCurveTA275.a" "clipLibrary4.cel[0].cev[14].cevr";
connectAttr "animCurveTA276.a" "clipLibrary4.cel[0].cev[15].cevr";
connectAttr "animCurveTA277.a" "clipLibrary4.cel[0].cev[16].cevr";
connectAttr "animCurveTL103.a" "clipLibrary4.cel[0].cev[17].cevr";
connectAttr "animCurveTL104.a" "clipLibrary4.cel[0].cev[18].cevr";
connectAttr "animCurveTL105.a" "clipLibrary4.cel[0].cev[19].cevr";
connectAttr "animCurveTL106.a" "clipLibrary4.cel[0].cev[20].cevr";
connectAttr "animCurveTL107.a" "clipLibrary4.cel[0].cev[21].cevr";
connectAttr "animCurveTL108.a" "clipLibrary4.cel[0].cev[22].cevr";
connectAttr "animCurveTA278.a" "clipLibrary4.cel[0].cev[23].cevr";
connectAttr "animCurveTA279.a" "clipLibrary4.cel[0].cev[24].cevr";
connectAttr "animCurveTA280.a" "clipLibrary4.cel[0].cev[25].cevr";
connectAttr "animCurveTL109.a" "clipLibrary4.cel[0].cev[26].cevr";
connectAttr "animCurveTL110.a" "clipLibrary4.cel[0].cev[27].cevr";
connectAttr "animCurveTL111.a" "clipLibrary4.cel[0].cev[28].cevr";
connectAttr "animCurveTA281.a" "clipLibrary4.cel[0].cev[29].cevr";
connectAttr "animCurveTA282.a" "clipLibrary4.cel[0].cev[30].cevr";
connectAttr "animCurveTA283.a" "clipLibrary4.cel[0].cev[31].cevr";
connectAttr "animCurveTA284.a" "clipLibrary4.cel[0].cev[32].cevr";
connectAttr "animCurveTA285.a" "clipLibrary4.cel[0].cev[33].cevr";
connectAttr "animCurveTA286.a" "clipLibrary4.cel[0].cev[34].cevr";
connectAttr "animCurveTA287.a" "clipLibrary4.cel[0].cev[35].cevr";
connectAttr "animCurveTA288.a" "clipLibrary4.cel[0].cev[36].cevr";
connectAttr "animCurveTA289.a" "clipLibrary4.cel[0].cev[37].cevr";
connectAttr "animCurveTL112.a" "clipLibrary4.cel[0].cev[38].cevr";
connectAttr "animCurveTL113.a" "clipLibrary4.cel[0].cev[39].cevr";
connectAttr "animCurveTL114.a" "clipLibrary4.cel[0].cev[40].cevr";
connectAttr "animCurveTL115.a" "clipLibrary4.cel[0].cev[41].cevr";
connectAttr "animCurveTL116.a" "clipLibrary4.cel[0].cev[42].cevr";
connectAttr "animCurveTL117.a" "clipLibrary4.cel[0].cev[43].cevr";
connectAttr "animCurveTL118.a" "clipLibrary4.cel[0].cev[44].cevr";
connectAttr "animCurveTL119.a" "clipLibrary4.cel[0].cev[45].cevr";
connectAttr "animCurveTL120.a" "clipLibrary4.cel[0].cev[46].cevr";
connectAttr "animCurveTA290.a" "clipLibrary4.cel[0].cev[47].cevr";
connectAttr "animCurveTA291.a" "clipLibrary4.cel[0].cev[48].cevr";
connectAttr "animCurveTA292.a" "clipLibrary4.cel[0].cev[49].cevr";
connectAttr "animCurveTA293.a" "clipLibrary4.cel[0].cev[50].cevr";
connectAttr "animCurveTA294.a" "clipLibrary4.cel[0].cev[51].cevr";
connectAttr "animCurveTA295.a" "clipLibrary4.cel[0].cev[52].cevr";
connectAttr "animCurveTA296.a" "clipLibrary4.cel[0].cev[53].cevr";
connectAttr "animCurveTA297.a" "clipLibrary4.cel[0].cev[54].cevr";
connectAttr "animCurveTA298.a" "clipLibrary4.cel[0].cev[55].cevr";
connectAttr "animCurveTA299.a" "clipLibrary4.cel[0].cev[56].cevr";
connectAttr "animCurveTA300.a" "clipLibrary4.cel[0].cev[57].cevr";
connectAttr "animCurveTA301.a" "clipLibrary4.cel[0].cev[58].cevr";
connectAttr "animCurveTA302.a" "clipLibrary4.cel[0].cev[59].cevr";
connectAttr "animCurveTA303.a" "clipLibrary4.cel[0].cev[60].cevr";
connectAttr "animCurveTA304.a" "clipLibrary4.cel[0].cev[61].cevr";
connectAttr "animCurveTA305.a" "clipLibrary4.cel[0].cev[62].cevr";
connectAttr "animCurveTA306.a" "clipLibrary4.cel[0].cev[63].cevr";
connectAttr "animCurveTA307.a" "clipLibrary4.cel[0].cev[64].cevr";
connectAttr "animCurveTA308.a" "clipLibrary4.cel[0].cev[65].cevr";
connectAttr "animCurveTA309.a" "clipLibrary4.cel[0].cev[66].cevr";
connectAttr "animCurveTA310.a" "clipLibrary4.cel[0].cev[67].cevr";
connectAttr "animCurveTA311.a" "clipLibrary4.cel[0].cev[68].cevr";
connectAttr "animCurveTA312.a" "clipLibrary4.cel[0].cev[69].cevr";
connectAttr "animCurveTA313.a" "clipLibrary4.cel[0].cev[70].cevr";
connectAttr "animCurveTA314.a" "clipLibrary4.cel[0].cev[71].cevr";
connectAttr "animCurveTA315.a" "clipLibrary4.cel[0].cev[72].cevr";
connectAttr "animCurveTA316.a" "clipLibrary4.cel[0].cev[73].cevr";
connectAttr "animCurveTA317.a" "clipLibrary4.cel[0].cev[74].cevr";
connectAttr "animCurveTA318.a" "clipLibrary4.cel[0].cev[75].cevr";
connectAttr "animCurveTL121.a" "clipLibrary4.cel[0].cev[76].cevr";
connectAttr "animCurveTL122.a" "clipLibrary4.cel[0].cev[77].cevr";
connectAttr "animCurveTL123.a" "clipLibrary4.cel[0].cev[78].cevr";
connectAttr "animCurveTA319.a" "clipLibrary4.cel[0].cev[79].cevr";
connectAttr "animCurveTA320.a" "clipLibrary4.cel[0].cev[80].cevr";
connectAttr "animCurveTA321.a" "clipLibrary4.cel[0].cev[81].cevr";
connectAttr "animCurveTL124.a" "clipLibrary4.cel[0].cev[82].cevr";
connectAttr "animCurveTL125.a" "clipLibrary4.cel[0].cev[83].cevr";
connectAttr "animCurveTL126.a" "clipLibrary4.cel[0].cev[84].cevr";
connectAttr "animCurveTA322.a" "clipLibrary4.cel[0].cev[85].cevr";
connectAttr "animCurveTA323.a" "clipLibrary4.cel[0].cev[86].cevr";
connectAttr "animCurveTA324.a" "clipLibrary4.cel[0].cev[87].cevr";
connectAttr "animCurveTL127.a" "clipLibrary4.cel[0].cev[88].cevr";
connectAttr "animCurveTL128.a" "clipLibrary4.cel[0].cev[89].cevr";
connectAttr "animCurveTL129.a" "clipLibrary4.cel[0].cev[90].cevr";
connectAttr "animCurveTA325.a" "clipLibrary4.cel[0].cev[91].cevr";
connectAttr "animCurveTA326.a" "clipLibrary4.cel[0].cev[92].cevr";
connectAttr "animCurveTA327.a" "clipLibrary4.cel[0].cev[93].cevr";
connectAttr "animCurveTL130.a" "clipLibrary4.cel[0].cev[94].cevr";
connectAttr "animCurveTL131.a" "clipLibrary4.cel[0].cev[95].cevr";
connectAttr "animCurveTL132.a" "clipLibrary4.cel[0].cev[96].cevr";
connectAttr "animCurveTA328.a" "clipLibrary4.cel[0].cev[97].cevr";
connectAttr "animCurveTA329.a" "clipLibrary4.cel[0].cev[98].cevr";
connectAttr "animCurveTA330.a" "clipLibrary4.cel[0].cev[99].cevr";
connectAttr "animCurveTL133.a" "clipLibrary4.cel[0].cev[100].cevr";
connectAttr "animCurveTL134.a" "clipLibrary4.cel[0].cev[101].cevr";
connectAttr "animCurveTL135.a" "clipLibrary4.cel[0].cev[102].cevr";
connectAttr "animCurveTL136.a" "clipLibrary4.cel[0].cev[103].cevr";
connectAttr "animCurveTL137.a" "clipLibrary4.cel[0].cev[104].cevr";
connectAttr "animCurveTL138.a" "clipLibrary4.cel[0].cev[105].cevr";
connectAttr "animCurveTA331.a" "clipLibrary4.cel[0].cev[106].cevr";
connectAttr "animCurveTA332.a" "clipLibrary4.cel[0].cev[107].cevr";
connectAttr "animCurveTA333.a" "clipLibrary4.cel[0].cev[108].cevr";
connectAttr "animCurveTA334.a" "clipLibrary4.cel[0].cev[109].cevr";
connectAttr "animCurveTA335.a" "clipLibrary4.cel[0].cev[110].cevr";
connectAttr "animCurveTA336.a" "clipLibrary4.cel[0].cev[111].cevr";
connectAttr "animCurveTA337.a" "clipLibrary4.cel[0].cev[112].cevr";
connectAttr "animCurveTA338.a" "clipLibrary4.cel[0].cev[113].cevr";
connectAttr "animCurveTA339.a" "clipLibrary4.cel[0].cev[114].cevr";
connectAttr "animCurveTA340.a" "clipLibrary4.cel[0].cev[115].cevr";
connectAttr "animCurveTA341.a" "clipLibrary4.cel[0].cev[116].cevr";
connectAttr "animCurveTA342.a" "clipLibrary4.cel[0].cev[117].cevr";
connectAttr "animCurveTA343.a" "clipLibrary4.cel[0].cev[118].cevr";
connectAttr "animCurveTA344.a" "clipLibrary4.cel[0].cev[119].cevr";
connectAttr "animCurveTA345.a" "clipLibrary4.cel[0].cev[120].cevr";
connectAttr "animCurveTA346.a" "clipLibrary4.cel[0].cev[121].cevr";
connectAttr "animCurveTA347.a" "clipLibrary4.cel[0].cev[122].cevr";
connectAttr "animCurveTA348.a" "clipLibrary4.cel[0].cev[123].cevr";
connectAttr "animCurveTA349.a" "clipLibrary4.cel[0].cev[124].cevr";
connectAttr "animCurveTA350.a" "clipLibrary4.cel[0].cev[125].cevr";
connectAttr "animCurveTA351.a" "clipLibrary4.cel[0].cev[126].cevr";
connectAttr "animCurveTA352.a" "clipLibrary4.cel[0].cev[127].cevr";
connectAttr "animCurveTA353.a" "clipLibrary4.cel[0].cev[128].cevr";
connectAttr "animCurveTA354.a" "clipLibrary4.cel[0].cev[129].cevr";
connectAttr "animCurveTA355.a" "clipLibrary4.cel[0].cev[130].cevr";
connectAttr "animCurveTA356.a" "clipLibrary4.cel[0].cev[131].cevr";
connectAttr "animCurveTA357.a" "clipLibrary4.cel[0].cev[132].cevr";
connectAttr "animCurveTA358.a" "clipLibrary4.cel[0].cev[133].cevr";
connectAttr "animCurveTA359.a" "clipLibrary4.cel[0].cev[134].cevr";
connectAttr "animCurveTA360.a" "clipLibrary4.cel[0].cev[135].cevr";
connectAttr "animCurveTA361.a" "clipLibrary4.cel[0].cev[136].cevr";
connectAttr "animCurveTA362.a" "clipLibrary4.cel[0].cev[137].cevr";
connectAttr "animCurveTA363.a" "clipLibrary4.cel[0].cev[138].cevr";
connectAttr "animCurveTA364.a" "clipLibrary4.cel[0].cev[139].cevr";
connectAttr "animCurveTA365.a" "clipLibrary4.cel[0].cev[140].cevr";
connectAttr "animCurveTA366.a" "clipLibrary4.cel[0].cev[141].cevr";
connectAttr "animCurveTA367.a" "clipLibrary4.cel[0].cev[142].cevr";
connectAttr "animCurveTA368.a" "clipLibrary4.cel[0].cev[143].cevr";
connectAttr "animCurveTA369.a" "clipLibrary4.cel[0].cev[144].cevr";
connectAttr "animCurveTA370.a" "clipLibrary4.cel[0].cev[145].cevr";
connectAttr "animCurveTA371.a" "clipLibrary4.cel[0].cev[146].cevr";
connectAttr "animCurveTA372.a" "clipLibrary4.cel[0].cev[147].cevr";
connectAttr "animCurveTA373.a" "clipLibrary4.cel[0].cev[148].cevr";
connectAttr "animCurveTA374.a" "clipLibrary4.cel[0].cev[149].cevr";
connectAttr "animCurveTA375.a" "clipLibrary4.cel[0].cev[150].cevr";
connectAttr "animCurveTA376.a" "clipLibrary4.cel[0].cev[151].cevr";
connectAttr "animCurveTA377.a" "clipLibrary4.cel[0].cev[152].cevr";
connectAttr "animCurveTA378.a" "clipLibrary4.cel[0].cev[153].cevr";
connectAttr "animCurveTA379.a" "clipLibrary4.cel[0].cev[154].cevr";
connectAttr "animCurveTA380.a" "clipLibrary4.cel[0].cev[155].cevr";
connectAttr "animCurveTA381.a" "clipLibrary4.cel[0].cev[156].cevr";
connectAttr "animCurveTA382.a" "clipLibrary4.cel[0].cev[157].cevr";
connectAttr "animCurveTA383.a" "clipLibrary4.cel[0].cev[158].cevr";
connectAttr "animCurveTA384.a" "clipLibrary4.cel[0].cev[159].cevr";
connectAttr "animCurveTA385.a" "clipLibrary4.cel[0].cev[160].cevr";
connectAttr "animCurveTA386.a" "clipLibrary4.cel[0].cev[161].cevr";
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
// End of hom-m_loco_turn_180.ma
