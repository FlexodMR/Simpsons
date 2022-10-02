//Maya ASCII 4.0 scene
//Name: mrg_jump_run_land.ma
//Last modified: Tue, Oct 01, 2002 05:21:45 PM
requires maya "4.0";
requires "p3dmayaexp" "18.5";
requires "p3dSimpleShader" "18.5";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mrg_jump_run_landSource";
	setAttr ".ihi" 0;
	setAttr ".st" 20;
	setAttr ".du" 15;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL359";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2 0 18 0 27 0 35 0;
	setAttr -s 5 ".kot[0:4]"  9 1 1 9 5;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  0 1 1 0;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL360";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2 1 18 1 27 1 35 0;
	setAttr -s 5 ".kot[0:4]"  9 1 1 9 5;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 0.0043332930654287338;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 -0.99999058246612549;
	setAttr -s 5 ".kox[1:4]"  0 1 0.0056665753945708275 0;
	setAttr -s 5 ".koy[1:4]"  0 0 -0.99998396635055542 0;
createNode animCurveTL -n "Motion_Root_translateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 -0.030562682186433352 1 -0.03326859497061737 
		2 -0.034241662190991916 3 -0.029061462611579939 4 -0.024057877026867944 5 
		-0.023173867874043776 6 -0.02292634531125301 7 -0.023103147141817843 8 -0.02349211116906048 
		9 -0.023881075196303111 10 -0.024057877026867944 11 -0.024057877026867944 
		12 -0.024057877026867944 13 -0.024057877026867944 14 -0.024057877026867944 
		15 -0.024057877026867944 16 -0.024057877026867944 17 -0.025396482177913928 
		18 -0.027627490762990564 19 -0.028073692480005893 20 -0.024057877026867944 
		21 -0.011586622940602269 22 0.0073589341091327897 23 0.026494168725480011 
		24 0.039534455511582162 25 0.040195169070582022 26 0.010976083449288767 27 
		-0.040992511130533156 28 -0.08504946580330805 29 -0.11511016968646123 30 
		-0.14232397688274337 31 -0.16188068600456668 32 -0.16897009566434332 33 -0.14552378153814707 
		34 -0.10276386919630977 35 -0.079815982092630827;
createNode animCurveTL -n "animCurveTL362";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0;
createNode animCurveTL -n "Motion_Root_translateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0.67425940108962923 1 0.86333165000548806 
		2 1.0666766855347911 3 1.3031942219806609 4 1.5732763302040096 5 1.8662945336924699 
		6 2.1623893476575806 7 2.4627712231211576 8 2.7686506111050155 9 3.0812379626309712 
		10 3.401743728720839 11 3.747156727889331 12 4.1199063631026442 13 4.4993639620598245 
		14 4.8649008524599173 15 5.1958883620019671 16 5.4716978183850209 17 5.6422093371807964 
		18 5.7136750024639644 19 5.7500240946880039 20 5.8151858943063939 21 5.9219236197257228 
		22 6.0369221026310873 23 6.1549930433937323 24 6.2709481423849063 25 6.3795990999758496 
		26 6.4806286035920424 27 6.5709767810316171 28 6.6413414932248003 29 6.6902533173998666 
		30 6.7260977133197732 31 6.7543548657167776 32 6.7805049593231352 33 6.8052522367565427 
		34 6.8230061122751264 35 6.8298045280717865;
createNode animCurveTA -n "animCurveTA1093";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU55";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[0:1]"  1 3;
	setAttr -s 2 ".kot[0:1]"  9 3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU56";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[0:1]"  1 3;
	setAttr -s 2 ".kot[0:1]"  9 3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU57";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[0:1]"  1 3;
	setAttr -s 2 ".kot[0:1]"  9 3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU58";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[0:1]"  1 3;
	setAttr -s 2 ".kot[0:1]"  9 3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU59";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 32 1 35 0;
createNode animCurveTU -n "animCurveTU60";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 32 1 35 0;
createNode animCurveTU -n "animCurveTU61";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 35 1;
	setAttr -s 2 ".kit[0:1]"  1 3;
	setAttr -s 2 ".kot[0:1]"  9 3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU62";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 35 1;
	setAttr -s 2 ".kit[0:1]"  1 3;
	setAttr -s 2 ".kot[0:1]"  9 3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "mrg_Hoop_Root_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "mrg_Hoop_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "mrg_Hoop_Root_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "mrg_Hoop_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "mrg_Hoop_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "mrg_Hoop_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL367";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.090256021184643917 2 -0.13256050696689195 
		4 -0.13256050696689195 10 -0.13256050696689195 16 -0.13256050696689195 20 
		-0.13256050696689195 25 -0.14041871262535602 28 -0.17655026201706334 32 -0.17655026201706334 
		35 -0.17655026201706334;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		3 3 3;
	setAttr -s 10 ".kot[7:9]"  3 3 3;
	setAttr -s 10 ".kix[0:9]"  0 0.031501896679401398 1 1 1 0.35665944218635559 
		0.060509096831083298 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 -0.99950367212295532 0 0 0 -0.93423444032669067 
		-0.99816763401031494 0 0 0;
createNode animCurveTL -n "animCurveTL368";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.24952136641389419 2 0.10299588928459284 
		4 0.22370293957538895 10 2.2664294562046825 16 0.34691719987391362 20 0.4067940807582639 
		25 0.11585126696416798 28 0.10676264329452093 32 0.10676264329452093 35 0.10676264329452093;
	setAttr -s 10 ".kit[0:9]"  1 9 1 9 9 9 9 
		3 3 3;
	setAttr -s 10 ".kot[1:9]"  1 9 9 9 9 9 3 
		3 3;
	setAttr -s 10 ".ktl[1:10]" no no yes yes yes yes yes yes yes 
		yes;
	setAttr -s 10 ".kix[0:9]"  0 0.051573973149061203 0.0060826307162642479 
		0.032446682453155518 0.0017924631247296929 0.01298221293836832 0.0088876066729426384 
		1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 -0.99866914749145508 0.99998152256011963 
		0.9994734525680542 -0.99999839067459106 -0.9999157190322876 -0.99996048212051392 
		0 0 0;
	setAttr -s 10 ".kox[1:9]"  0.004895839374512434 0.0012326075229793787 
		0.032446682453155518 0.0017924631247296929 0.01298221293836832 0.0088876066729426384 
		1 1 1;
	setAttr -s 10 ".koy[1:9]"  0.99998801946640015 0.99999922513961792 
		0.9994734525680542 -0.99999839067459106 -0.9999157190322876 -0.99996048212051392 
		0 0 0;
createNode animCurveTL -n "animCurveTL369";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1.1721433317792438 2 1.3230996791272875 
		4 1.4059570164282631 10 3.6443567198633393 16 6.3074028315176278 20 6.785893667507926 
		25 8.060805606482953 28 8.2482585070944463 32 8.2482585070944463 35 8.2482585070944463;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		3 3 3;
	setAttr -s 10 ".kot[7:9]"  3 3 3;
	setAttr -s 10 ".kix[0:9]"  0 0.0057024536654353142 0.0011488021118566394 
		0.00081608549226075411 0.0010610511526465416 0.0017109563341364264 0.0018235272727906704 
		1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0.99998372793197632 0.99999934434890747 
		0.99999964237213135 0.99999946355819702 0.99999850988388062 0.99999833106994629 
		0 0 0;
createNode animCurveTA -n "animCurveTA1097";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -31.548014841396498 2 -1.1621463337309532 
		4 47.906384388906076 10 110.35395091939611 16 97.33243096356172 20 127.249608946479 
		25 -20.815076916013663 28 0 32 0 35 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		3 3 3;
	setAttr -s 10 ".kot[7:9]"  3 3 3;
	setAttr -s 10 ".kix[0:9]"  0 0.095707334578037262 0.13574233651161194 
		0.42066586017608643 0.7489820122718811 0.14396971464157104 0.11921384185552597 
		1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0.99540948867797852 0.99074417352676392 
		0.9072156548500061 0.66259032487869263 -0.9895821213722229 -0.99286860227584839 
		0 0 0;
createNode animCurveTA -n "animCurveTA1098";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 -25.948901905116401 32 -25.948901905116401 35 -25.948901905116401;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		3 3 3;
	setAttr -s 10 ".kot[7:9]"  3 3 3;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 0.50738561153411865 
		1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 -0.86171913146972656 
		0 0 0;
createNode animCurveTA -n "animCurveTA1099";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 0 35 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		3 3 3;
	setAttr -s 10 ".kot[7:9]"  3 3 3;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL370";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.12458561027363559 2 0.13019208663249487 
		4 0.13019208663249487 10 0.13019208663249487 16 0.13 20 0.13 25 0.13 28 0.13 
		32 -0.035123989252573359 35 0.072059567379697251;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		3 9 3;
	setAttr -s 10 ".kot[7:9]"  3 9 3;
	setAttr -s 10 ".kix[0:9]"  0 0.23136729001998901 1 0.99884897470474243 
		0.99834376573562622 1 1 1 0.040238630026578903 1;
	setAttr -s 10 ".kiy[0:9]"  0 0.9728664755821228 0 -0.047966383397579193 
		-0.057530548423528671 0 0 0 -0.99919009208679199 0;
createNode animCurveTL -n "animCurveTL371";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.49776150013250359 2 0.33795403425919801 
		4 0.24681005309637552 10 2.2932898640707911 16 0.11814945291599407 20 0.10574006977134477 
		25 0.19027652530662348 28 0.37606279822030764 32 0.48436591491442932 35 0.10860528941614173;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 1 1 
		9 9 3;
	setAttr -s 10 ".kot[4:9]"  1 9 9 9 9 3;
	setAttr -s 10 ".ktl[4:9]" no no no no yes yes;
	setAttr -s 10 ".kix[0:9]"  0 0.0053130374290049076 0.0013637883821502328 
		0.031074535101652145 0.0015237730694934726 0.10637901723384857 0.018946405500173569 
		0.0079338457435369492 0.0087237954139709473 1;
	setAttr -s 10 ".kiy[0:9]"  0 -0.99998587369918823 0.99999904632568359 
		-0.99951708316802979 -0.99999886751174927 -0.99432563781738281 0.9998205304145813 
		0.99996852874755859 -0.9999619722366333 0;
	setAttr -s 10 ".kox[4:9]"  0.089412815868854523 0.041557326912879944 
		0.0098642716184258461 0.0079338457435369492 0.0087237954139709473 1;
	setAttr -s 10 ".koy[4:9]"  -0.99599462747573853 0.99913614988327026 
		0.99995136260986328 0.99996852874755859 -0.9999619722366333 0;
createNode animCurveTL -n "animCurveTL372";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.19903401763864267 2 1.114372624547729 
		4 1.8884845816951725 10 4.670371695755696 16 7.157341708477154 20 7.1973335163313834 
		25 7.2621927711158856 28 7.4841224252197343 32 8.0698454146757133 35 8.3222896806973949;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		1 9 3;
	setAttr -s 10 ".kot[4:9]"  1 9 9 9 9 3;
	setAttr -s 10 ".ktl[4:9]" no no yes no yes yes;
	setAttr -s 10 ".kix[0:9]"  0 0.00078921101521700621 0.00074990623397752643 
		0.00075917766662314534 0.0013191059697419405 0.028600307181477547 0.0092979585751891136 
		0.011326989158987999 0.0027838409878313541 1;
	setAttr -s 10 ".kiy[0:9]"  0 0.99999970197677612 0.99999970197677612 
		0.99999970197677612 0.99999910593032837 0.99959093332290649 0.99995678663253784 
		0.99993586540222168 0.9999961256980896 0;
	setAttr -s 10 ".kox[4:9]"  0.028943754732608795 0.028600307181477547 
		0.0092979585751891136 0.0028890187386423349 0.0027838409878313541 1;
	setAttr -s 10 ".koy[4:9]"  0.99958103895187378 0.99959093332290649 
		0.99995678663253784 0.99999582767486572 0.9999961256980896 0;
createNode animCurveTA -n "animCurveTA1100";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 87.050470652892514 2 115.88379589566645 
		4 22.640875690296291 10 -39.692339255551722 16 -22.499780072037716 20 -0.72020223382365811 
		25 31.673430537630743 28 68.672656531059985 32 60.42191170259148 35 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.11778157204389572 0.09773813933134079 
		0.45270410180091858 0.44005694985389709 0.30243349075317383 0.21502885222434998 
		0.42166927456855774 0.19109000265598297 1;
	setAttr -s 10 ".kiy[0:9]"  0 -0.99303954839706421 -0.9952121376991272 
		-0.89166080951690674 0.89796984195709229 0.95317047834396362 0.97660768032073975 
		0.90674972534179688 -0.98157250881195068 0;
createNode animCurveTA -n "animCurveTA1101";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 8.2164004644982427 35 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 0.85196208953857422 
		1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0.52360343933105469 
		0 0;
createNode animCurveTA -n "animCurveTA1102";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 14.133009825744161 35 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 0.68719851970672607 
		1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0.72646963596343994 
		0 0;
createNode animCurveTA -n "animCurveTA1103";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2 0 22 0 27 0 35 0;
	setAttr -s 5 ".kit[2:4]"  3 1 1;
	setAttr -s 5 ".kot[0:4]"  9 1 3 9 5;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  0 1 1 0;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1104";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2 0 22 0 27 0 35 0;
	setAttr -s 5 ".kit[2:4]"  3 1 1;
	setAttr -s 5 ".kot[0:4]"  9 1 3 9 5;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  0 1 1 0;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1105";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2 0 22 0 27 0 35 0;
	setAttr -s 5 ".kit[2:4]"  3 1 1;
	setAttr -s 5 ".kot[0:4]"  9 1 3 9 5;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  0 1 1 0;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1106";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2 0 22 0 27 0 35 0;
	setAttr -s 5 ".kit[2:4]"  3 1 1;
	setAttr -s 5 ".kot[0:4]"  9 1 3 9 5;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  0 1 1 0;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1107";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2 0 22 0 27 0 35 0;
	setAttr -s 5 ".kit[2:4]"  3 1 1;
	setAttr -s 5 ".kot[0:4]"  9 1 3 9 5;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  0 1 1 0;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1108";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2 0 22 0 27 0 35 0;
	setAttr -s 5 ".kit[2:4]"  3 1 1;
	setAttr -s 5 ".kot[0:4]"  9 1 3 9 5;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  0 1 1 0;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1109";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 2 0 35 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  0 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1110";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 2 0 35 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  0 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1111";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 2 0 35 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  0 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1112";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 2 0 35 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  0 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1113";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 2 0 35 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  0 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1114";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 2 0 35 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  0 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL373";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 0 35 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL374";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0.24354617521346231 4 0.24354617521346231 
		10 0.24354617521346231 16 0.24354617521346231 20 1.0548583126703357 25 0.553043889371862 
		28 0.24354617521346228 32 0.10182078333305083 35 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.0054745813831686974 1 1 0.0041085360571742058 
		0.0096926689147949219 0.0032868387643247843 0.0051710610277950764 0.009580221027135849 
		1;
	setAttr -s 10 ".kiy[0:9]"  0 0.99998503923416138 0 0 0.99999153614044189 
		0.99995303153991699 -0.99999457597732544 -0.99998664855957031 -0.99995410442352295 
		0;
createNode animCurveTL -n "animCurveTL375";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1.1269999742507935 2 0.73266363114951272 
		4 0.73266363114951272 10 0.73266363114951272 16 0.73266363114951272 20 0.39899130532265409 
		25 0.69408096471579128 28 0.73266363114951272 32 0.88823311159343721 35 1.1269999742507935;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.0033811889588832855 1 1 0.0099893417209386826 
		0.077521137893199921 0.0079916175454854965 0.012017198838293552 0.0059170108288526535 
		1;
	setAttr -s 10 ".kiy[0:9]"  0 -0.99999427795410156 0 0 -0.999950110912323 
		-0.99699068069458008 0.99996805191040039 0.999927818775177 0.99998247623443604 
		0;
createNode animCurveTL -n "animCurveTL376";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 0 35 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL377";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0.72172207365063845 4 0.72172207365063845 
		10 0.29274744712299317 16 0.72172207365063845 20 0.72172207365063845 25 0.59646486935962717 
		28 0.59646486935962717 32 0.24936757314139968 35 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.0018474300159141421 0.0062162536196410656 
		1 0.0077702333219349384 0.02394385077059269 0.021284705027937889 0.006722266785800457 
		0.0039119073189795017 1;
	setAttr -s 10 ".kiy[0:9]"  0 0.99999827146530151 -0.99998068809509277 
		0 0.99996984004974365 -0.99971330165863037 -0.99977344274520874 -0.99997740983963013 
		-0.99999237060546875 0;
createNode animCurveTL -n "animCurveTL378";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1.1269999742507935 2 0.39818034372871203 
		4 0.39818034372871203 10 0.47155537615110676 16 0.39818034372871203 20 0.39818034372871203 
		25 0.47962079313410755 28 0.47962079313410755 32 0.78244200490513338 35 1.1269999742507935;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.001829438959248364 0.036318991333246231 
		1 0.045381907373666763 0.036811765283346176 0.032726220786571503 0.0077050882391631603 
		0.0036042528226971626 1;
	setAttr -s 10 ".kiy[0:9]"  0 -0.99999833106994629 0.9993402361869812 
		0 -0.99896973371505737 0.99932223558425903 0.99946433305740356 0.99997031688690186 
		0.99999350309371948 0;
createNode animCurveTL -n "animCurveTL379";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.037237446387173037 2 -0.041719900506989892 
		4 -0.0293120185104324 10 -0.0293120185104324 16 -0.0293120185104324 20 -0.0293120185104324 
		25 0.048973628824814402 28 -0.10362391964780562 32 -0.20587247022218108 35 
		-0.097247464600251146;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.1659034788608551 0.21011927723884583 
		1 1 0.03829309344291687 0.035861704498529434 0.0091554690152406693 0.34364438056945801 
		1;
	setAttr -s 10 ".kiy[0:9]"  0 0.98614197969436646 0.97767573595046997 
		0 0 0.99926656484603882 -0.99935674667358398 -0.9999580979347229 0.93909984827041626 
		0;
createNode animCurveTL -n "animCurveTL380";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1.0309303341739742 2 0.75870916695349666 
		4 0.95215503586239747 10 3.0016927290179694 16 0.84317944371378062 20 0.67200006364763409 
		25 0.90703906071592411 28 0.94157756240513579 32 0.98727955406154044 35 0.9825577053607899;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.016923354938626289 0.0011888918234035373 
		0.036680765450000763 0.0014308023964986205 0.046926293522119522 0.0098915388807654381 
		0.029066963121294975 0.056846074759960175 1;
	setAttr -s 10 ".kiy[0:9]"  0 -0.99985677003860474 0.9999992847442627 
		-0.99932706356048584 -0.99999898672103882 0.99889832735061646 0.9999510645866394 
		0.99957746267318726 0.99838292598724365 0;
createNode animCurveTL -n "animCurveTL381";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.82151488360755442 2 1.299634490446683 
		4 1.9168734157823917 10 4.1446705805609447 16 6.6666941375115503 20 7.0851985977461638 
		25 7.7728773282359356 28 8.091783184613444 32 8.261339379854391 35 8.3214057718349856;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.0012172565329819918 0.00093730463413521647 
		0.00084213673835620284 0.0011335825547575951 0.0027120183221995831 0.0026492131873965263 
		0.0047768433578312397 0.010161076672375202 1;
	setAttr -s 10 ".kiy[0:9]"  0 0.9999992847442627 0.99999958276748657 
		0.99999964237213135 0.99999934434890747 0.99999630451202393 0.99999648332595825 
		0.9999886155128479 0.99994838237762451 0;
createNode animCurveTA -n "animCurveTA1115";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 20.950825280283915 2 9.5558389861324784 
		4 9.7898231621973455 10 10.018035009191225 16 -26.094273123040036 20 9.8741266992842451 
		25 3.8911195414129454 28 7.4977115816647597 32 2.8014070785838707 35 -0.62843630316474508;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.56483304500579834 0.99954277276992798 
		0.53826189041137695 0.99997162818908691 0.49732115864753723 0.98811942338943481 
		0.99669450521469116 0.85452520847320557 1;
	setAttr -s 10 ".kiy[0:9]"  0 -0.82520520687103271 0.030236827209591866 
		-0.84277760982513428 -0.0075348080135881901 0.86756652593612671 -0.15368814766407013 
		-0.08124087005853653 -0.5194098949432373 0;
createNode animCurveTA -n "animCurveTA1116";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -7.5734518508549122 2 1.39572016906921 
		4 -6.4372567447185309 10 -13.764454507855373 16 -6.4780807527300226 20 -6.4341061478791133 
		25 6.750125941495658 28 4.6794291231721026 32 -1.3600337167745848 35 -5.8284402688137167;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.9891202449798584 0.70985883474349976 
		0.99999839067459106 0.93359535932540894 0.7924879789352417 0.80869513750076294 
		0.85497874021530151 0.78621423244476318 1;
	setAttr -s 10 ".kiy[0:9]"  0 0.14710947871208191 -0.70434403419494629 
		-0.0017812806181609631 0.35832899808883667 0.60988754034042358 0.58822798728942871 
		-0.51866304874420166 -0.61795401573181152 0;
createNode animCurveTA -n "animCurveTA1117";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 -2.4459842727351595 4 -2.1491002537462691 
		10 -3.4476187577499249 16 2.0222181312431808 20 -2.1585496524417085 25 2.0640152144203316 
		28 2.1860410933050174 32 0.072949285583424242 35 -1.295636019309746;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.96263420581817627 0.99785804748535156 
		0.98383700847625732 0.99772995710372925 0.99999701976776123 0.96186912059783936 
		0.98909085988998413 0.96772134304046631 1;
	setAttr -s 10 ".kiy[0:9]"  0 -0.27080497145652771 -0.065416403114795685 
		0.17906630039215088 0.067342281341552734 0.00243164855055511 0.27351018786430359 
		-0.1473066657781601 -0.25202256441116333 0;
createNode animCurveTA -n "animCurveTA1118";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2 0 22 0 27 0 35 0;
	setAttr -s 5 ".kit[2:4]"  3 1 1;
	setAttr -s 5 ".kot[0:4]"  9 1 3 9 5;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  0 1 1 0;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1119";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2 0 22 0 27 0 35 0;
	setAttr -s 5 ".kit[2:4]"  3 1 1;
	setAttr -s 5 ".kot[0:4]"  9 1 3 9 5;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  0 1 1 0;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1120";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 4.0984482521620249 2 0 22 0 27 
		0 35 0;
	setAttr -s 5 ".kit[2:4]"  3 1 1;
	setAttr -s 5 ".kot[0:4]"  9 1 3 9 5;
	setAttr -s 5 ".kix[0:4]"  0 0.88119685649871826 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 -0.4727495014667511 0 0 0;
	setAttr -s 5 ".kox[1:4]"  0 1 1 0;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1121";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 18.588300303494186 2 0 22 0 27 
		0 35 0;
	setAttr -s 5 ".kit[2:4]"  3 1 1;
	setAttr -s 5 ".kot[0:4]"  9 1 3 9 5;
	setAttr -s 5 ".kix[0:4]"  0 0.38012984395027161 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 -0.92493313550949097 0 0 0;
	setAttr -s 5 ".kox[1:4]"  0 1 1 0;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1122";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2 0 22 0 27 0 35 0;
	setAttr -s 5 ".kit[2:4]"  3 1 1;
	setAttr -s 5 ".kot[0:4]"  9 1 3 9 5;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  0 1 1 0;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1123";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2 0 22 0 27 0 35 0;
	setAttr -s 5 ".kit[2:4]"  3 1 1;
	setAttr -s 5 ".kot[0:4]"  9 1 3 9 5;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  0 1 1 0;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1124";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -22.686733334985114 2 0 22 0 
		27 0 35 0;
	setAttr -s 5 ".kit[2:4]"  3 1 1;
	setAttr -s 5 ".kot[0:4]"  9 1 3 9 5;
	setAttr -s 5 ".kix[0:4]"  0 0.31912839412689209 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0.94771146774291992 0 0 0;
	setAttr -s 5 ".kox[1:4]"  0 1 1 0;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1125";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2 0 22 0 27 0 35 0;
	setAttr -s 5 ".kit[2:4]"  3 1 1;
	setAttr -s 5 ".kot[0:4]"  9 1 3 9 5;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  0 1 1 0;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1126";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2 0 22 0 27 0 35 0;
	setAttr -s 5 ".kit[2:4]"  3 1 1;
	setAttr -s 5 ".kot[0:4]"  9 1 3 9 5;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  0 1 1 0;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1127";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.0579251312417479e-005 2 0 22 
		0 27 0 35 0;
	setAttr -s 5 ".kit[2:4]"  3 1 1;
	setAttr -s 5 ".kot[0:4]"  9 1 3 9 5;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  0 1 1 0;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1128";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2 0 22 0 27 0 35 0;
	setAttr -s 5 ".kit[2:4]"  3 1 1;
	setAttr -s 5 ".kot[0:4]"  9 1 3 9 5;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  0 1 1 0;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1129";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2 0 22 0 27 0 35 0;
	setAttr -s 5 ".kit[2:4]"  3 1 1;
	setAttr -s 5 ".kot[0:4]"  9 1 3 9 5;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  0 1 1 0;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1130";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 4.0984482535121209 2 0 22 0 27 
		0 35 0;
	setAttr -s 5 ".kit[2:4]"  3 1 1;
	setAttr -s 5 ".kot[0:4]"  9 1 3 9 5;
	setAttr -s 5 ".kix[0:4]"  0 0.88119685649871826 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 -0.4727495014667511 0 0 0;
	setAttr -s 5 ".kox[1:4]"  0 1 1 0;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1131";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 18.588300300216805 2 0 22 0 27 
		0 35 0;
	setAttr -s 5 ".kit[2:4]"  3 1 1;
	setAttr -s 5 ".kot[0:4]"  9 1 3 9 5;
	setAttr -s 5 ".kix[0:4]"  0 0.38012984395027161 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 -0.92493313550949097 0 0 0;
	setAttr -s 5 ".kox[1:4]"  0 1 1 0;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1132";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2 0 22 0 27 0 35 0;
	setAttr -s 5 ".kit[2:4]"  3 1 1;
	setAttr -s 5 ".kot[0:4]"  9 1 3 9 5;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  0 1 1 0;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1133";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2 0 22 0 27 0 35 0;
	setAttr -s 5 ".kit[2:4]"  3 1 1;
	setAttr -s 5 ".kot[0:4]"  9 1 3 9 5;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  0 1 1 0;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1134";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -22.686733333057838 2 0 22 0 
		27 0 35 0;
	setAttr -s 5 ".kit[2:4]"  3 1 1;
	setAttr -s 5 ".kot[0:4]"  9 1 3 9 5;
	setAttr -s 5 ".kix[0:4]"  0 0.31912839412689209 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0.94771146774291992 0 0 0;
	setAttr -s 5 ".kox[1:4]"  0 1 1 0;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1135";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2 0 22 0 27 0 35 0;
	setAttr -s 5 ".kit[2:4]"  3 1 1;
	setAttr -s 5 ".kot[0:4]"  9 1 3 9 5;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  0 1 1 0;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1136";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2 0 22 0 27 0 35 0;
	setAttr -s 5 ".kit[2:4]"  3 1 1;
	setAttr -s 5 ".kot[0:4]"  9 1 3 9 5;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  0 1 1 0;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1137";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.0579251312417479e-005 2 0 22 
		0 27 0 35 0;
	setAttr -s 5 ".kit[2:4]"  3 1 1;
	setAttr -s 5 ".kot[0:4]"  9 1 3 9 5;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  0 1 1 0;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 0 35 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		3 3 3;
	setAttr -s 10 ".kot[7:9]"  3 3 3;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 0 35 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		3 3 3;
	setAttr -s 10 ".kot[7:9]"  3 3 3;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 2.4782236286598098 2 0.0034456079181433771 
		4 -33.009413111161273 10 0.21626955525768568 16 0.21626955525768568 20 0.21626955525768574 
		25 0.0034456079181433771 28 0 32 0 35 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		3 3 3;
	setAttr -s 10 ".kot[7:9]"  3 3 3;
	setAttr -s 10 ".kix[0:9]"  0 0.21044935286045074 0.99990302324295044 
		0.56780093908309937 1 0.99992334842681885 0.99989986419677734 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 -0.97760474681854248 0.013927944004535675 
		0.8231658935546875 0 -0.012380646541714668 -0.014153392054140568 0 0 0;
createNode animCurveTA -n "animCurveTA1141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0.15553530681976535 4 0.15553530681976535 
		10 0.15553530681976535 16 0.15553530681976535 20 0.15553530681976543 25 -1.1105665325859091 
		28 -3.1260299677896586 32 -1.1905997452840109 35 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.99979281425476074 1 1 1 0.99729818105697632 
		0.97770369052886963 0.99998205900192261 0.97373485565185547 1;
	setAttr -s 10 ".kiy[0:9]"  0 0.020355304703116417 0 0 0 -0.073459804058074951 
		-0.20998919010162354 -0.005986363161355257 0.22768501937389374 0;
createNode animCurveTA -n "animCurveTA1142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 -0.36354176124207516 4 -0.36354176124207516 
		10 -0.36354176124207516 16 -0.36354176124207516 20 -0.36354176124207521 25 
		1.4190873594799764 28 2.3421700339195279 32 1.0987316838425041 35 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.99886965751647949 1 1 1 0.99466520547866821 
		0.98467928171157837 0.99971300363540649 0.98499804735183716 1;
	setAttr -s 10 ".kiy[0:9]"  0 -0.047533717006444931 0 0 0 0.10315589606761932 
		0.17437529563903809 -0.023955671116709709 -0.17256565392017365 0;
createNode animCurveTA -n "animCurveTA1143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -39.488235982334174 2 5.3250602596476986 
		4 5.3250602596476986 10 5.3250602596476986 16 5.3250602596476986 20 5.3250602596476995 
		25 -24.441142818040227 28 -54.670739303955031 32 -22.848732958815372 35 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.16804823279380798 1 1 1 0.50007003545761108 
		0.24678875505924225 0.99298077821731567 0.23753787577152252 1;
	setAttr -s 10 ".kiy[0:9]"  0 0.98577874898910522 0 0 0 -0.86598497629165649 
		-0.96906930208206177 0.11827590316534042 0.97137826681137085 0;
createNode animCurveTL -n "animCurveTL382";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.99214331096561381 2 -0.98872819052200589 
		4 -0.98872819052200589 10 -0.98872819052200589 16 -0.98872819052200589 20 
		-0.98872819052200589 25 -0.98872819052200589 28 -0.98872819052200589 32 -0.66664142751114186 
		35 -0.43524234076486068;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.36368530988693237 1 1 1 1 1 
		0.0072442344389855862 0.0042156679555773735 1;
	setAttr -s 10 ".kiy[0:9]"  0 0.93152189254760742 0 0 0 0 0 
		0.99997377395629883 0.99999111890792847 0;
createNode animCurveTL -n "animCurveTL383";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.033841737269357866 2 -0.019519870042852914 
		4 -0.019519870042852914 10 -0.019519870042852914 16 -0.019519870042852914 
		20 -0.019519870042852914 25 -0.019519870042852914 28 -0.019519870042852914 
		32 -0.48921264898192618 35 -0.82665738350180629;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.092696882784366608 1 1 1 1 
		1 0.0049677249044179916 0.0028908625245094299 1;
	setAttr -s 10 ".kiy[0:9]"  0 0.99569439888000488 0 0 0 0 0 
		-0.99998766183853149 -0.99999582767486572 0;
createNode animCurveTL -n "animCurveTL384";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.027201153963313806 2 -0.020013375596438072 
		4 -0.020013375596438072 10 -0.020013375596438072 16 -0.020013375596438072 
		20 -0.020013375596438072 25 -0.020013375596438072 28 -0.020013375596438072 
		32 0.15325583332324211 35 0.27773886459742925;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.18238857388496399 1 1 1 1 1 
		0.013465299271047115 0.0078362524509429932 1;
	setAttr -s 10 ".kiy[0:9]"  0 0.98322653770446777 0 0 0 0 0 
		0.99990934133529663 0.99996930360794067 0;
createNode animCurveTA -n "animCurveTA1144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 -1.603482296148955 35 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 0.99288386106491089 
		1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 -0.11908669024705887 
		0 0;
createNode animCurveTA -n "animCurveTA1145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 16.888744504888411 35 28.652637602052774;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 0.62066751718521118 
		0.42282792925834656 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0.78407388925552368 
		0.90621000528335571 0;
createNode animCurveTA -n "animCurveTA1146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 37.037593134260845 35 64.676908227303443;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 0.33951705694198608 
		0.20242534577846527 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0.94059991836547852 
		0.9792976975440979 0;
createNode animCurveTL -n "animCurveTL385";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.99214413619678865 2 0.98872754407817198 
		4 0.98872754407817198 10 0.98872754407817198 16 0.98872754407817198 20 0.98872754407817198 
		25 0.98872754407817198 28 0.98872754407817198 32 0.71585136835148899 35 0.5198069948790518;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.36354935169219971 1 1 1 1 1 
		0.008550575003027916 0.004975905641913414 1;
	setAttr -s 10 ".kiy[0:9]"  0 -0.93157494068145752 0 0 0 0 
		0 -0.99996346235275269 -0.99998760223388672 0;
createNode animCurveTL -n "animCurveTL386";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.033851474715545553 2 -0.019514335421655121 
		4 -0.019514335421655121 10 -0.019514335421655121 16 -0.019514335421655121 
		20 -0.019514335421655121 25 -0.019514335421655121 28 -0.019514335421655121 
		32 -0.42943779331000903 35 -0.72394202659893114;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.092598989605903625 1 1 1 1 
		1 0.0056920270435512066 0.0033123635221272707 1;
	setAttr -s 10 ".kiy[0:9]"  0 0.99570345878601074 0 0 0 0 0 
		-0.99998378753662109 -0.99999451637268066 0;
createNode animCurveTL -n "animCurveTL387";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.0272011762672867 2 -0.020013361448308328 
		4 -0.020013361448308328 10 -0.020013361448308328 16 -0.020013361448308328 
		20 -0.020013361448308328 25 -0.020013361448308328 28 -0.020013361448308328 
		32 0.20368312827664842 35 0.36439499068905612;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.18238769471645355 1 1 1 1 1 
		0.010430232621729374 0.0060698217712342739 1;
	setAttr -s 10 ".kiy[0:9]"  0 0.9832267165184021 0 0 0 0 0 
		0.99994558095932007 0.9999815821647644 0;
createNode animCurveTA -n "animCurveTA1147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 2.7940159405693725 35 7.7976222737965317;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 0.97885149717330933 
		0.86380618810653687 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0.20457203686237335 
		0.50382423400878906 0;
createNode animCurveTA -n "animCurveTA1148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 -18.312765020532961 35 -30.409274105849079;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 0.58963155746459961 
		0.40245950222015381 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 -0.80767238140106201 
		-0.91543775796890259 0;
createNode animCurveTA -n "animCurveTA1149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 -36.88585168652606 35 -64.859940280210893;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 0.34075185656547546 
		0.2018774151802063 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 -0.94015324115753174 
		-0.97941076755523682 0;
createNode animCurveTL -n "animCurveTL388";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.3705977767760478 10 -1.1237673489452127 
		16 -0.98440840372563421 20 -0.89960616012865469 35 -0.65311611999272123;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kot[4]"  3;
	setAttr -s 5 ".kix[0:4]"  0 0.013808833435177803 0.014868607744574547 
		0.019113564863801003 1;
	setAttr -s 5 ".kiy[0:4]"  0 0.99990463256835938 0.99988943338394165 
		0.99981731176376343 0;
createNode animCurveTL -n "animCurveTL389";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.1618658070195953 10 2.1826442232762582 
		16 2.194375589828875 20 2.201514321760067 35 2.222264083594911;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kot[4]"  3;
	setAttr -s 5 ".kix[0:4]"  0 0.16188915073871613 0.17395314574241638 
		0.22145617008209229 1;
	setAttr -s 5 ".kiy[0:4]"  0 0.98680895566940308 0.98475390672683716 
		0.9751703143119812 0;
createNode animCurveTL -n "animCurveTL390";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.12044246479037771 10 5.9875758399145678 
		16 9.4361255487227638 20 11.53462566244866 35 17.634220813728056;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kot[4]"  3;
	setAttr -s 5 ".kix[0:4]"  0 0.00055808026809245348 0.00060091988416388631 
		0.00077253690687939525 1;
	setAttr -s 5 ".kiy[0:4]"  0 0.99999982118606567 0.99999982118606567 
		0.99999970197677612 0;
createNode animCurveTA -n "animCurveTA1150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 1.8831699535595781 16 2.9463961675075163 
		20 3.5933870489318029 35 5.4739599453216465;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kot[4]"  3;
	setAttr -s 5 ".kix[0:4]"  0 0.99538367986679077 0.99601465463638306 
		0.99758291244506836 1;
	setAttr -s 5 ".kiy[0:4]"  0 0.095975488424301147 0.089189879596233368 
		0.06948581337928772 0;
createNode animCurveTA -n "animCurveTA1151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 2.9542838343827054 16 4.6222544611175156 
		20 5.6372423649101515 35 8.5874521608419823;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kot[4]"  3;
	setAttr -s 5 ".kix[0:4]"  0 0.98875242471694946 0.99027645587921143 
		0.9940827488899231 1;
	setAttr -s 5 ".kiy[0:4]"  0 0.14956158399581909 0.13911342620849609 
		0.10862565785646439 0;
createNode animCurveTA -n "animCurveTA1152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 25.717376727061382 16 40.23724942254443 
		20 49.072833977379005 35 74.754744621954103;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kot[4]"  3;
	setAttr -s 5 ".kix[0:4]"  0 0.60480022430419922 0.63303089141845703 
		0.72455525398254395 1;
	setAttr -s 5 ".kiy[0:4]"  0 0.79637724161148071 0.77412652969360352 
		0.6892167329788208 0;
createNode animCurveTL -n "animCurveTL391";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.3705978542308779 10 0.98635335722989459 
		16 0.76941126883256095 20 0.63739839176877799 35 0.25368378509166484;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kot[4]"  3;
	setAttr -s 5 ".kix[0:4]"  0 0.0088709956035017967 0.0095518948510289192 
		0.01227946113795042 1;
	setAttr -s 5 ".kiy[0:4]"  0 -0.99996066093444824 -0.99995440244674683 
		-0.99992460012435913 0;
createNode animCurveTL -n "animCurveTL392";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.1618621235956237 10 2.1758913870619532 
		16 2.1838122236108459 20 2.1886321846800305 35 2.2026421011163611;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kot[4]"  3;
	setAttr -s 5 ".kix[0:4]"  0 0.2361057847738266 0.25310766696929932 
		0.3187955915927887 1;
	setAttr -s 5 ".kiy[0:4]"  0 0.97172737121582031 0.96743810176849365 
		0.94782346487045288 0;
createNode animCurveTL -n "animCurveTL393";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.12044250833667494 10 6.0242225234692137 
		16 9.4934629099504946 20 11.604553480073124 35 17.740745058239831;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kot[4]"  3;
	setAttr -s 5 ".kix[0:4]"  0 0.0005547518958337605 0.00059733598027378321 
		0.00076792947947978973 1;
	setAttr -s 5 ".kiy[0:4]"  0 0.99999982118606567 0.99999982118606567 
		0.99999970197677612 0;
createNode animCurveTA -n "animCurveTA1153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 5.5822982504846896 16 8.7340296796767891 
		20 10.651910839749965 35 16.226511010665412;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kot[4]"  3;
	setAttr -s 5 ".kix[0:4]"  0 0.96149694919586182 0.96652841567993164 
		0.97934192419052124 1;
	setAttr -s 5 ".kiy[0:4]"  0 0.27481549978256226 0.25655946135520935 
		0.20221112668514252 0;
createNode animCurveTA -n "animCurveTA1154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 -2.929002895100608 16 -4.5827000582429447 
		20 -5.5890023612376272 35 -8.5139660854992858;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kot[4]"  3;
	setAttr -s 5 ".kix[0:4]"  0 0.98894089460372925 0.990439772605896 
		0.99418270587921143 1;
	setAttr -s 5 ".kiy[0:4]"  0 -0.14830999076366425 -0.13794572651386261 
		-0.10770693421363831 0;
createNode animCurveTA -n "animCurveTA1155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 -23.46720315439411 16 -36.716643448949327 
		20 -44.779148342031931 35 -68.213989601412422;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kot[4]"  3;
	setAttr -s 5 ".kix[0:4]"  0 0.63969683647155762 0.6673770546913147 
		0.75519108772277832 1;
	setAttr -s 5 ".kiy[0:4]"  0 -0.7686273455619812 -0.7447199821472168 
		-0.65550476312637329 0;
createNode animCurveTL -n "animCurveTL394";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 0 35 -0.245189189189189;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 0.0095160296186804771 
		1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 -0.9999547004699707 
		0;
createNode animCurveTL -n "animCurveTL395";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 0 35 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL396";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1 2 -1 4 -1 10 -1 16 -1 20 -1 
		25 -1 28 -1 32 -1 35 -1;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL397";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 -0.059169562564273373 35 0.062337280601809833;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 0.039404060691595078 
		0.037404589354991913 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 -0.99922335147857666 
		0.99930018186569214 0;
createNode animCurveTL -n "animCurveTL398";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 -0.23720765831303617 35 -0.40762644910266188;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 0.0098361941054463387 
		0.0057241013273596764 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 -0.99995160102844238 
		-0.99998360872268677 0;
createNode animCurveTL -n "animCurveTL399";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1 2 -1 4 -1 10 -1 16 -1 20 -1 
		25 -1 28 -1 32 -0.96001664919811802 35 -0.93129112588482243;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 0.058258507400751114 
		0.033940143883228302 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0.99830150604248047 
		0.99942386150360107 0;
createNode animCurveTA -n "animCurveTA1156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 34.482869818558932 2 -30.115631848934086 
		4 -92.711726503210997 10 -33.882665482010282 16 -79.021064367324172 20 -28.145362689216814 
		25 15.238159962327705 28 18.552635526454161 32 14.513629887548426 35 12.253734489678925;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.059952981770038605 0.97092515230178833 
		0.85848826169967651 0.95771962404251099 0.17939756810665131 0.31096354126930237 
		0.9985346794128418 0.9046204686164856 1;
	setAttr -s 10 ".kiy[0:9]"  0 -0.99820119142532349 -0.23938332498073578 
		0.51283323764801025 0.28770327568054199 0.98377668857574463 0.95042181015014648 
		-0.054115310311317444 -0.42621800303459167 0;
createNode animCurveTA -n "animCurveTA1157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -41.125361486605229 2 -53.42773549204999 
		4 21.232756283498528 10 -18.032150000954143 16 32.903031405871062 20 3.2051021576428234 
		25 -40.046745316398898 28 -52.355227701232181 32 -62.364198717563632 35 -65.746751280844975;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.12159998714923859 0.39631396532058716 
		0.89111953973770142 0.66867578029632568 0.22934375703334808 0.26515299081802368 
		0.5138891339302063 0.70651179552078247 1;
	setAttr -s 10 ".kiy[0:9]"  0 0.99257916212081909 0.91811501979827881 
		0.45376861095428467 0.74355411529541016 -0.97334551811218262 -0.96420633792877197 
		-0.85785657167434692 -0.70770126581192017 0;
createNode animCurveTA -n "animCurveTA1158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -69.229101835258078 2 6.7230436323704241 
		4 59.591911681952659 10 -2.7741238841332336 16 37.573816594027363 20 54.080677688622899 
		25 -24.141089779821431 28 -24.22652116540748 32 -7.7615886617957486 35 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.059198722243309021 0.84929805994033813 
		0.72112762928009033 0.31843262910842896 0.26830610632896423 0.1915033757686615 
		0.63231956958770752 0.48315101861953735 1;
	setAttr -s 10 ".kiy[0:9]"  0 0.99824619293212891 -0.52791363000869751 
		-0.69280225038528442 0.94794547557830811 -0.96333372592926025 -0.98149198293685913 
		0.77470767498016357 0.87553703784942627 0;
createNode animCurveTA -n "animCurveTA1159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -20.603593077461799 2 -26.364927098426016 
		4 36.637721374893978 10 -36.944208114747184 13 -36.843180742100451 16 -35.614005946049787 
		20 -26.444945731443525 25 -15.734941790180981 28 -9.7639977164373839 32 -2.7289591915182991 
		35 -0.061808866237340665;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[10]"  3;
	setAttr -s 11 ".kix[0:10]"  0 0.13228726387023926 0.82215195894241333 
		0.22777234017848969 0.99332982301712036 0.7893490195274353 0.65406548976898193 
		0.67543643712997437 0.71677166223526001 0.80933266878128052 1;
	setAttr -s 11 ".kiy[0:10]"  0 0.9912114143371582 -0.56926810741424561 
		-0.97371441125869751 0.1153077557682991 0.61394476890563965 0.75643789768218994 
		0.73741823434829712 0.69730794429779053 0.58735054731369019 0;
createNode animCurveTA -n "animCurveTA1160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -38.206802500660217 2 -18.986855179925566 
		4 -10.591257606623879 10 1.377175224311922 13 38.630420698782153 16 24.775726493669264 
		20 -6.258071174042894 25 -41.82535372559262 28 -50.722054567967007 32 -57.043282186059287 
		35 -59.058178941076754;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[10]"  3;
	setAttr -s 11 ".kix[0:10]"  0 0.26662155985832214 0.6001470685005188 
		0.32968643307685852 0.4398253858089447 0.28543686866760254 0.24989652633666992 
		0.32497286796569824 0.65999436378479004 0.84855437278747559 1;
	setAttr -s 11 ".kiy[0:10]"  0 0.96380132436752319 0.79988968372344971 
		0.94409048557281494 0.89808332920074463 -0.9583975076675415 -0.96827256679534912 
		-0.94572335481643677 -0.75127053260803223 -0.52910816669464111 0;
createNode animCurveTA -n "animCurveTA1161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 43.739971360053964 2 34.296298577658391 
		4 -19.644712726580536 10 15.783054402847586 13 64.641867881575479 16 60.859651683698104 
		20 41.014286789263103 25 24.054087331385347 28 20.044856523101803 32 17.394022724164657 
		35 16.57914742975785;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[10]"  3;
	setAttr -s 11 ".kix[0:10]"  0 0.11965899914503098 0.63651800155639648 
		0.19981929659843445 0.24637866020202637 0.49245628714561462 0.42314428091049194 
		0.58888685703277588 0.8950808048248291 0.96800273656845093 1;
	setAttr -s 11 ".kiy[0:10]"  0 -0.99281507730484009 -0.77126187086105347 
		0.97983276844024658 0.96917366981506348 -0.87033718824386597 -0.90606230497360229 
		-0.80821549892425537 -0.44590392708778381 -0.25093963742256165 0;
createNode animCurveTA -n "animCurveTA1162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 59.468287502559065 2 40.721971615342838 
		4 70.290326204036958 10 49.215918270578356 13 35.304514059288955 16 27.317937068346019 
		20 17.939829779721567 25 26.470453106824788 28 26.470453106824788 32 16.046338371571199 
		35 8.5572674112203639;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[10]"  3;
	setAttr -s 11 ".kix[0:10]"  0 0.57670086622238159 0.87401920557022095 
		0.4409601092338562 0.46365088224411011 0.6100422739982605 0.99878674745559692 
		0.87312769889831543 0.7886086106300354 0.59811216592788696 1;
	setAttr -s 11 ".kiy[0:10]"  0 0.81695538759231567 0.48589134216308594 
		-0.89752668142318726 -0.88601797819137573 -0.79236888885498047 -0.049244798719882965 
		0.48749160766601563 -0.61489546298980713 -0.80141240358352661 0;
createNode animCurveTA -n "animCurveTA1163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 59.305463658789549 2 81.782622567879827 
		4 63.750856238478235 10 36.763165419411216 13 19.535609352491242 16 29.702611968578474 
		20 25.940164818531304 25 27.316789452391596 28 27.316789452391596 32 20.563291629567331 
		35 15.711328223519061;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[10]"  3;
	setAttr -s 11 ".kix[0:10]"  0 0.86431741714477539 0.32137963175773621 
		0.36233484745025635 0.8513675332069397 0.90185362100601196 0.99050408601760864 
		0.99596554040908813 0.89257717132568359 0.7551581859588623 1;
	setAttr -s 11 ".kiy[0:10]"  0 0.50294673442840576 -0.94695043563842773 
		-0.93204796314239502 -0.52456969022750854 0.43204167485237122 -0.13748347759246826 
		0.089736364781856537 -0.45089468359947205 -0.65554261207580566 0;
createNode animCurveTA -n "animCurveTA1164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 18.476235154862632 2 14.849434068729675 
		4 14.849434068729675 10 14.849434068729675 13 9.3094218959265369 16 42.02424233980868 
		20 27.194127436061471 25 14.849434068729675 28 14.849434068729675 32 6.2080290429142293 
		35 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[10]"  3;
	setAttr -s 11 ".kix[0:10]"  0 0.90336602926254272 1 0.95178526639938354 
		0.38855034112930298 0.59872335195541382 0.53456413745880127 0.7778400182723999 
		0.83983176946640015 0.66908985376358032 1;
	setAttr -s 11 ".kiy[0:10]"  0 -0.42887043952941895 0 -0.30676501989364624 
		0.92142748832702637 0.80095589160919189 -0.84512788057327271 -0.62846231460571289 
		-0.54284673929214478 -0.74318152666091919 0;
createNode animCurveTA -n "animCurveTA1165";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 10.082003051124275 2 0.051608316401883209 
		4 0.051608316401883209 10 0.051608316401883209 13 -0.81896850883231842 16 
		2.9474252326737909 20 24.403244420795332 25 0.051608316401883257 28 0.051608316401883257 
		32 0.042388197317722281 35 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[10]"  3;
	setAttr -s 11 ".kix[0:10]"  0 0.60590428113937378 1 0.99871987104415894 
		0.96952164173126221 0.46832761168479919 0.98610377311706543 0.53147649765014648 
		0.9999997615814209 0.99999254941940308 1;
	setAttr -s 11 ".kiy[0:10]"  0 -0.79553753137588501 0 -0.050583269447088242 
		0.24500557780265808 0.88355487585067749 -0.1661306768655777 -0.8470730185508728 
		-0.00068966310936957598 -0.0038602643180638552 0;
createNode animCurveTA -n "animCurveTA1166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -4.720189328892868 2 1.8225462689462448 
		4 1.8225462689462448 10 1.8225462689462448 13 -7.4909793327028025 16 4.4292131235673571 
		20 13.783753201738831 25 1.8225462689462448 28 1.8225462689462448 32 0.76065208744781909 
		35 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[10]"  3;
	setAttr -s 11 ".kix[0:10]"  0 0.75951951742172241 1 0.87922853231430054 
		0.97509032487869263 0.53206676244735718 0.98869580030441284 0.78740930557250977 
		0.9968603253364563 0.99083513021469116 1;
	setAttr -s 11 ".kiy[0:10]"  0 0.65048450231552124 0 -0.47640025615692139 
		0.22180826961994171 0.84670239686965942 -0.14993545413017273 -0.61643058061599731 
		-0.079180113971233368 -0.13507674634456635 0;
createNode animCurveTA -n "animCurveTA1167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -11.342548829337773 2 14.859570486861982 
		4 14.859570486861982 10 14.859570486861982 13 12.11254107479953 16 14.859570486861982 
		20 51.48662851685723 25 14.859570486861996 28 14.859570486861996 32 6.2122659784994365 
		35 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[10]"  3;
	setAttr -s 11 ".kix[0:10]"  0 0.27990385890007019 1 0.98746901750564575 
		1 0.321510910987854 1 0.38499322533607483 0.83966279029846191 0.66883766651153564 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0.96002805233001709 0 -0.15781304240226746 
		0 0.94690585136413574 0 -0.92291939258575439 -0.54310804605484009 -0.74340850114822388 
		0;
createNode animCurveTA -n "animCurveTA1168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 11.615881410206434 2 0.052172032759606073 
		4 0.052172032759606073 10 0.052172032759606073 13 -2.0804627459977181 16 
		0.052172032759606073 20 28.487302251650821 25 0.052172032759606073 28 0.052172032759606073 
		32 0.042637964369723051 35 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[10]"  3;
	setAttr -s 11 ".kix[0:10]"  0 0.55121350288391113 1 0.99239087104797363 
		1 0.40070858597755432 1 0.47332274913787842 0.9999997615814209 0.99999237060546875 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 -0.83436423540115356 0 -0.12312758713960648 
		0 0.91620558500289917 0 -0.88088905811309814 -0.00071314646629616618 -0.00390242924913764 
		0;
createNode animCurveTA -n "animCurveTA1169";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.32159281075535046 2 1.8225558374727127 
		4 1.8225558374727127 10 1.8225558374727127 13 -0.31060650841500204 16 1.8225558374727127 
		20 30.264719709317479 25 1.8225558374727127 28 1.8225558374727127 32 0.76064826393873208 
		35 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[10]"  3;
	setAttr -s 11 ".kix[0:10]"  0 0.98124009370803833 1 0.99238711595535278 
		1 0.40062540769577026 1 0.47323191165924072 0.99686026573181152 0.99083507061004639 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0.19278974831104279 0 -0.12315757572650909 
		0 0.91624194383621216 0 -0.88093787431716919 -0.079181104898452759 -0.13507743179798126 
		0;
createNode animCurveTA -n "animCurveTA1170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -33.352561559544277 2 -60.679962459776895 
		4 -60.679962459776895 10 -60.679962459776895 16 -60.679962459776895 20 -60.679962459776895 
		25 -60.679962459776895 28 -60.679962459776895 32 -19.758170590970661 35 10.423754966968488;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.26923006772994995 1 1 1 1 1 
		0.3105444610118866 0.1847834587097168 1;
	setAttr -s 10 ".kiy[0:9]"  0 -0.96307587623596191 0 0 0 0 
		0 0.95055884122848511 0.98277926445007324 0;
createNode animCurveTA -n "animCurveTA1171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 39.646570824829801 2 12.355514613247321 
		4 12.355514613247321 10 12.355514613247321 16 12.355514613247321 20 12.355514613247319 
		25 12.355514613247319 28 12.355514613247319 32 21.884938956618043 35 27.7228482558439;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.26956257224082947 1 1 1 1 1 
		0.81430554389953613 0.65634965896606445 1;
	setAttr -s 10 ".kiy[0:9]"  0 -0.9629828929901123 0 0 0 0 0 
		0.58043646812438965 0.75445681810379028 0;
createNode animCurveTA -n "animCurveTA1172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 11.057385060550727 2 13.110465504305042 
		4 13.110465504305042 10 13.110465504305042 16 13.110465504305042 20 13.110465504305045 
		25 13.110465504305044 28 13.110465504305044 32 17.130334722562051 35 21.576484776388224;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.96573281288146973 1 1 1 1 1 
		0.95764541625976563 0.84484827518463135 1;
	setAttr -s 10 ".kiy[0:9]"  0 0.25953838229179382 0 0 0 0 0 
		0.28795009851455688 0.53500592708587646 0;
createNode animCurveTA -n "animCurveTA1173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 -20.551139383726671 4 -20.551139383726671 
		10 -19.797282837650698 16 -19.797282837650698 20 -19.797282837650695 25 -20.551139383726671 
		28 -20.551139383726671 32 -8.5722400848874418 35 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.34843328595161438 0.99878501892089844 
		0.99945944547653198 1 0.99903964996337891 0.99878501892089844 0.74476641416549683 
		0.54529726505279541 1;
	setAttr -s 10 ".kiy[0:9]"  0 -0.93733358383178711 0.049279849976301193 
		0.032875414937734604 0 -0.043815478682518005 -0.049279849976301193 0.66732525825500488 
		0.83824276924133301 0;
createNode animCurveTA -n "animCurveTA1174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 3.0722483700821352 4 3.0722483700821352 
		10 4.1507292555609006 16 4.1507292555609006 20 4.1507292555608979 25 3.0722483700821352 
		28 3.0722483700821352 32 1.3960624684407055 35 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.92778521776199341 0.99751806259155273 
		0.99889463186264038 1 0.99803739786148071 0.99751806259155273 0.99223160743713379 
		0.97459697723388672 1;
	setAttr -s 10 ".kiy[0:9]"  0 0.37311473488807678 0.070411220192909241 
		0.047005590051412582 0 -0.062620341777801514 -0.070411220192909241 -0.1244044229388237 
		-0.22396592795848846 0;
createNode animCurveTA -n "animCurveTA1175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 72.57093380156806 2 103.72764843228343 
		4 103.72764843228343 10 103.72764843228343 16 103.72764843228343 20 103.72764843228343 
		25 19.857676546395723 28 19.857676546395723 32 24.114901280758279 35 27.080064458283051;
	setAttr -s 10 ".kit[0:9]"  1 3 3 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[1:9]"  3 3 9 9 9 9 9 
		9 3;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 0.20077192783355713 0.1792236715555191 
		0.95285475254058838 0.87981951236724854 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 -0.97963798046112061 
		-0.98380833864212036 0.30342674255371094 0.4753078818321228 0;
createNode animCurveTA -n "animCurveTA1176";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2 0 22 0 27 0 35 0;
	setAttr -s 5 ".kit[2:4]"  3 1 1;
	setAttr -s 5 ".kot[0:4]"  9 1 3 9 5;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  0 1 1 0;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1177";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2 0 22 0 27 0 35 0;
	setAttr -s 5 ".kit[2:4]"  3 1 1;
	setAttr -s 5 ".kot[0:4]"  9 1 3 9 5;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  0 1 1 0;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1178";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2 0 22 0 27 0 35 0;
	setAttr -s 5 ".kit[2:4]"  3 1 1;
	setAttr -s 5 ".kot[0:4]"  9 1 3 9 5;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  0 1 1 0;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1179";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2 0 22 0 27 0 35 0;
	setAttr -s 5 ".kit[2:4]"  3 1 1;
	setAttr -s 5 ".kot[0:4]"  9 1 3 9 5;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  0 1 1 0;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1180";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2 0 22 0 27 0 35 0;
	setAttr -s 5 ".kit[2:4]"  3 1 1;
	setAttr -s 5 ".kot[0:4]"  9 1 3 9 5;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  0 1 1 0;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2 0 22 0 27 0 35 13.994403295754109;
createNode animCurveTA -n "animCurveTA1182";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2 0 22 0 27 0 35 0;
	setAttr -s 5 ".kit[2:4]"  3 1 1;
	setAttr -s 5 ".kot[0:4]"  9 1 3 9 5;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  0 1 1 0;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1183";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2 0 22 0 27 0 35 0;
	setAttr -s 5 ".kit[2:4]"  3 1 1;
	setAttr -s 5 ".kot[0:4]"  9 1 3 9 5;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  0 1 1 0;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2 0 22 0 27 0 35 13.994403295754109;
createNode animCurveTA -n "animCurveTA1185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 0 35 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1186";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 0 35 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1187";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 72.677699265164733 2 47.648825228930555 
		4 47.648825228930555 10 47.648825228930555 16 47.648825228930555 20 47.648825228930555 
		25 -0.43065494947832089 28 -0.43065494947832089 32 16.062405672521756 35 
		27.911632519594587;
	setAttr -s 10 ".kit[0:9]"  1 3 3 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[1:9]"  3 3 9 9 9 9 9 
		9 3;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 0.33664017915725708 0.3028590977191925 
		0.62969577312469482 0.42661896347999573 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 -0.94163334369659424 
		-0.95303535461425781 0.77684187889099121 0.90443146228790283 0;
createNode animCurveTA -n "animCurveTA1188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1.2945941069882385 2 0 4 0 10 
		0 16 0 20 0 25 0 28 0 32 0 35 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.98594337701797485 1 1 1 1 1 
		1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 -0.16707991063594818 0 0 0 0 
		0 0 0 0;
createNode animCurveTA -n "animCurveTA1189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 3.3208811165553156 2 0 4 0 10 
		0 16 0 20 0 25 0 28 0 32 0 35 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.91709697246551514 1 1 1 1 1 
		1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 -0.3986642062664032 0 0 0 0 0 
		0 0 0;
createNode animCurveTA -n "animCurveTA1190";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -27.52582447785997 2 0 4 0 10 
		0 16 0 20 0 25 0 28 0 32 0 35 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.26742854714393616 1 1 1 1 1 
		1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0.96357768774032593 0 0 0 0 0 
		0 0 0;
createNode animCurveTA -n "animCurveTA1191";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -8.7597363552835983 2 -8.6680044972852368 
		4 6.7545237204615898 10 6.6077201434352224 16 18.649488391021936 20 -21.229642358462794 
		25 -15.754629313228021 28 -15.754629313228021 32 -3.7266909208098564 35 0.71009266045615993;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.44176068902015686 0.70717966556549072 
		0.88757413625717163 0.56573218107223511 0.44693639874458313 0.94138479232788086 
		0.74340957403182983 0.63034915924072266 1;
	setAttr -s 10 ".kiy[0:9]"  0 0.89713293313980103 0.70703387260437012 
		0.46066492795944214 -0.8245890736579895 -0.89456576108932495 0.33733466267585754 
		0.66883647441864014 0.77631175518035889 0;
createNode animCurveTA -n "animCurveTA1192";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 12.116477779410241 4 6.5670078369224489 
		10 0.13121377600178125 16 0.13121377600177966 20 1.4351763265748141 25 5.3059628786068886 
		28 5.3059628786068886 32 6.1362665984482376 35 0.39065484564574882;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.7583279013633728 0.7868075966835022 
		0.96276015043258667 0.99767738580703735 0.95754784345626831 0.9693753719329834 
		0.99807697534561157 0.93857336044311523 1;
	setAttr -s 10 ".kiy[0:9]"  0 0.65187329053878784 -0.6171984076499939 
		-0.27035701274871826 0.068116739392280579 0.28827428817749023 0.24558386206626892 
		0.061987139284610748 -0.34507980942726135 0;
createNode animCurveTA -n "animCurveTA1193";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -5.1279019409024809 2 -2.8013812555909356 
		4 -9.0622639886059559 10 -16.693641214022282 16 -16.693641214022282 20 -8.3283086345370503 
		25 -4.2129440437082879 28 -4.2129440437082879 32 3.6567352520887639 35 8.1445984161934586;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.889026939868927 0.73988282680511475 
		0.94878333806991577 0.91598641872406006 0.80918818712234497 0.96558684110641479 
		0.86177772283554077 0.73434025049209595 1;
	setAttr -s 10 ".kiy[0:9]"  0 -0.45785489678382874 -0.67273575067520142 
		-0.31592744588851929 0.40120920538902283 0.58754956722259521 0.26008081436157227 
		0.50728601217269897 0.67878156900405884 0;
createNode animCurveTA -n "animCurveTA1194";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 9.0436681845344769 4 -10.000133010584454 
		10 -10.112865394910207 16 -38.281486421515432 20 19.642726086956586 25 4.3548008102372249 
		28 4.3548008102372249 32 8.6267456645918035 35 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.60706275701522827 0.62354093790054321 
		0.62959450483322144 0.54015707969665527 0.37390625476837158 0.70689737796783447 
		0.95255106687545776 0.95082747936248779 1;
	setAttr -s 10 ".kiy[0:9]"  0 -0.79465389251708984 -0.78179073333740234 
		-0.77692395448684692 0.84156423807144165 0.92746651172637939 -0.70731610059738159 
		0.30437886714935303 -0.3097209632396698 0;
createNode animCurveTA -n "animCurveTA1195";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 -10.528116315071506 4 -10.372054679897831 
		10 1.9642148446480132 16 -1.9361895987598934 20 3.7752235751933267 25 -4.5172135235397723 
		28 -4.5172135235397723 32 -1.8309762646617314 35 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.59304159879684448 0.77416998147964478 
		0.93844568729400635 0.99553430080413818 0.98891341686248779 0.87889707088470459 
		0.98040491342544556 0.94738119840621948 1;
	setAttr -s 10 ".kiy[0:9]"  0 -0.80517184734344482 0.63297778367996216 
		0.34542688727378845 0.094400733709335327 -0.14849315583705902 -0.47701147198677063 
		0.19699282944202423 0.32010757923126221 0;
createNode animCurveTA -n "animCurveTA1196";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0.36971713469595846 4 1.8797089594838792 
		10 17.728065211765927 16 8.6930603147360248 20 15.538037168792513 25 1.0312079795694953 
		28 1.0312079795694953 32 -8.5477655111110096 35 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.97103750705718994 0.66071385145187378 
		0.95853865146636963 0.99348956346511841 0.91336894035339355 0.72519141435623169 
		0.81287914514541626 0.99703836441040039 1;
	setAttr -s 10 ".kiy[0:9]"  0 0.23892700672149658 0.75063782930374146 
		0.28496256470680237 -0.11392305046319962 -0.4071328341960907 -0.68854731321334839 
		-0.58243238925933838 -0.076905734837055206 0;
createNode animCurveTA -n "animCurveTA1197";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 2.7587192193638197 35 -2.0270270270270276;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 0.97936612367630005 
		0.98869997262954712 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0.20209388434886932 
		-0.14990794658660889 0;
createNode animCurveTA -n "animCurveTA1198";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -9.2427148064678804 2 0 4 0 10 
		0 16 0 20 0 25 0 28 0 32 6.8870653207395005 35 -2.4108692476260059;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.63708716630935669 1 1 1 1 1 
		0.88897466659545898 0.98412621021270752 1;
	setAttr -s 10 ".kiy[0:9]"  0 0.77079176902770996 0 0 0 0 0 
		0.45795640349388123 -0.17747004330158234 0;
createNode animCurveTA -n "animCurveTA1199";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 4.3336143193046563 35 13.0432985235726;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 0.9512704610824585 
		0.71577239036560059 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0.30835774540901184 
		0.69833368062973022 0;
createNode animCurveTA -n "animCurveTA1200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 3.1616736393304521 4 8.9151128820192067 
		10 15.679175793550311 16 15.679175793550311 20 16.558763545144338 25 3.0587631021909476 
		28 3.0587631021909476 32 0.10540736264931472 35 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.65068882703781128 0.77354514598846436 
		0.95910018682479858 0.99894112348556519 0.80606180429458618 0.74938410520553589 
		0.97645753622055054 0.9748111367225647 1;
	setAttr -s 10 ".kiy[0:9]"  0 0.75934445858001709 0.63374119997024536 
		0.28306683897972107 0.046006344258785248 -0.59183138608932495 -0.6621355414390564 
		-0.21570971608161926 -0.22303186357021332 0;
createNode animCurveTA -n "animCurveTA1201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 2.0116712903037448 4 3.4866995141885124 
		10 4.9188226327670472 16 4.9188226327670472 20 1.522880477458546 25 -1.2379765659350273 
		28 -1.2379765659350273 32 3.568358646593198 35 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.90972709655761719 0.98237532377243042 
		0.99805331230163574 0.98455685377120972 0.94142985343933105 0.98406338691711426 
		0.94103336334228516 0.99573993682861328 1;
	setAttr -s 10 ".kiy[0:9]"  0 0.41520664095878601 0.18691912293434143 
		0.062366515398025513 -0.17506515979766846 -0.33720892667770386 -0.17781797051429749 
		0.3383137583732605 0.0922059565782547 0;
createNode animCurveTA -n "animCurveTA1202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -8.6139304882271457 2 3.1531708650357313 
		4 -1.512465273678401 10 -6.9852717024903921 16 -6.9852717024903921 20 21.383757547838922 
		25 3.1820772702664293 28 3.1820772702664293 32 2.5448556589991891 35 -10.382821061592265;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.73242521286010742 0.83324331045150757 
		0.9726523756980896 0.55845797061920166 0.86069899797439575 0.64293211698532104 
		0.99886602163314819 0.70194560289382935 1;
	setAttr -s 10 ".kiy[0:9]"  0 0.68084752559661865 -0.55290651321411133 
		-0.23226572573184967 0.82953280210494995 0.50911414623260498 -0.76592320203781128 
		-0.047610014677047729 -0.71223056316375732 0;
createNode animCurveTA -n "animCurveTA1203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 -20.551139383726671 4 -20.551139383726671 
		10 -20.270949572209677 16 -20.270949572209677 20 -20.270949572209677 25 -20.551139383726674 
		28 -20.551139383726674 32 -8.5522515108171255 35 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.34843328595161438 0.9998319149017334 
		0.99992525577545166 1 0.99986714124679565 0.9998319149017334 0.74421310424804688 
		0.54529726505279541 1;
	setAttr -s 10 ".kiy[0:9]"  0 -0.93733358383178711 0.018335297703742981 
		0.012224673293530941 0 -0.016298618167638779 -0.018335297703742981 0.66794222593307495 
		0.83824276924133301 0;
createNode animCurveTA -n "animCurveTA1204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 3.0722483700821352 4 3.0722483700821352 
		10 1.9859449933379982 16 1.9859449933379982 20 1.9859449933379982 25 3.0722483700821361 
		28 3.0722483700821361 32 1.4958091637899582 35 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.92778521776199341 0.9974820613861084 
		0.99887853860855103 1 0.99800890684127808 0.9974820613861084 0.99311941862106323 
		0.97459697723388672 1;
	setAttr -s 10 ".kiy[0:9]"  0 0.37311473488807678 -0.07091936469078064 
		-0.047345772385597229 0 0.063072733581066132 0.07091936469078064 -0.11710604280233383 
		-0.22396592795848846 0;
createNode animCurveTA -n "animCurveTA1205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 72.677699265164733 2 59.211772263414638 
		4 59.211772263414638 10 59.211772263414638 16 59.211772263414638 20 59.211772263414638 
		25 19.85767654639573 28 19.85767654639573 32 27.814651811716271 35 33.429092416277157;
	setAttr -s 10 ".kit[0:9]"  1 3 3 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[1:9]"  3 3 9 9 9 9 9 
		9 3;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 0.40025812387466431 0.36192157864570618 
		0.8593146800994873 0.70177453756332397 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 -0.91640245914459229 
		-0.93220853805541992 0.5114472508430481 0.71239912509918213 0;
createNode animCurveTA -n "animCurveTA1206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.043585476863095891 2 -60.679962459776895 
		4 -60.679962459776895 10 -60.679962459776895 16 -60.679962459776895 20 -60.679962459776895 
		25 -60.679962459776895 28 -60.679962459776895 32 -20.824080577337064 35 8.2533422302317216;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.12499954551458359 1 1 1 1 1 
		0.3180195689201355 0.19039370119571686 1;
	setAttr -s 10 ".kiy[0:9]"  0 -0.99215680360794067 0 0 0 0 
		0 0.94808411598205566 0.98170781135559082 0;
createNode animCurveTA -n "animCurveTA1207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 28.449471067828945 2 12.355514613247321 
		4 12.355514613247321 10 12.355514613247321 16 12.355514613247321 20 12.355514613247319 
		25 12.355514613247319 28 12.355514613247319 32 19.160582540948941 35 23.263402056531085;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.42881900072097778 1 1 1 1 1 
		0.89118939638137817 0.77482002973556519 1;
	setAttr -s 10 ".kiy[0:9]"  0 -0.90339040756225586 0 0 0 0 
		0 0.45363137125968933 0.63218188285827637 0;
createNode animCurveTA -n "animCurveTA1208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 15.739680343212559 2 13.110465504305042 
		4 13.110465504305042 10 13.110465504305042 16 13.110465504305042 20 13.110465504305045 
		25 13.110465504305045 28 13.110465504305045 32 16.628274811953656 35 20.166277752815617;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 0.94556635618209839 1 1 1 1 1 
		0.96708083152770996 0.88438630104064941 1;
	setAttr -s 10 ".kiy[0:9]"  0 -0.32542935013771057 0 0 0 0 
		0 0.25446945428848267 0.46675565838813782 0;
createNode animCurveTA -n "animCurveTA1209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 0 35 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 0 35 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 72.57093380156806 2 0.18477034797548983 
		4 0.18477034797548983 10 0.18477034797548983 16 0.18477034797548983 20 0.18477034797548983 
		25 -0.43065494947832406 28 -0.43065494947832406 32 9.8605402718606872 35 
		17.254116939558369;
	setAttr -s 10 ".kit[0:9]"  1 3 3 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[1:9]"  3 3 9 9 9 9 9 
		9 3;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 0.99935966730117798 0.99918979406356812 
		0.79241377115249634 0.6030394434928894 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 -0.035781066864728928 
		-0.040246855467557907 0.60998398065567017 0.79771137237548828 0;
createNode animCurveTA -n "mrg_hair_1_rotateX3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 -0.047474402824412232 
		6 1.8133455959649523 10 1.3166214749467886 16 0 19 3.6621844037121019 23 
		6.6401263879329679 28 0 35 0;
createNode animCurveTA -n "mrg_hair_1_rotateY3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 -0.52727671706470125 
		6 -4.4225650086933683 10 -3.1538414238218673 16 0 19 3.9512814973233601 23 
		6.8455605144798062 28 0 35 0;
createNode animCurveTA -n "mrg_hair_1_rotateZ3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 28.899767468611902 2 0 4 13.727990308231879 
		6 65.003928226568448 10 45.15919956110784 16 0 19 26.107747257497465 23 -31.950525788079233 
		28 0 35 0;
createNode animCurveTA -n "mrg_hair_2_rotateX3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 -0.52241944061341783 
		6 -0.030318012674739412 10 0.15287390122543032 16 0 19 6.6469454997803288 
		23 14.062247128972114 28 0 35 0;
createNode animCurveTA -n "mrg_hair_2_rotateY3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 -1.2163983585225613 6 
		-3.6988965734164512 10 -3.0320452152220265 16 0 19 3.7157643127509505 23 
		-2.0342296928783554 28 0 35 0;
createNode animCurveTA -n "mrg_hair_2_rotateZ3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 28.899767468611902 2 0 4 17.460648614115453 
		6 44.407983884086299 10 34.714930806930447 16 0 19 42.099002410825186 23 
		-46.700551860112178 28 0 35 0;
createNode animCurveTA -n "mrg_hair_3_rotateX3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 -0.67902717938000379 
		6 -0.97776788290604244 10 -0.25731724701893355 16 0 19 2.6763197671050709 
		23 5.1872608964655633 28 0 35 0;
createNode animCurveTA -n "mrg_hair_3_rotateY3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 -1.1118481829922324 6 
		0.46252578829934066 10 -0.46090936182566766 16 0 19 1.7447792784964771 23 
		-9.5397952995795823 28 0 35 0;
createNode animCurveTA -n "mrg_hair_3_rotateZ3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 28.899767468611902 2 0 4 17.158302820059308 
		6 2.0430040685771034 10 7.5559704826450194 16 0 19 18.342232179543981 23 
		-27.020149174682 28 0 35 0;
createNode clipLibrary -n "clipLibrary1";
	setAttr -s 177 ".cel[0].cev";
	setAttr ".cd[0].cm" -type "characterMapping" 177 "Extra_Attributes.translateX" 
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
		2 118 "Middle_L.rotateZ" 2 119 "hair_1.rotateX" 2 120 "hair_1.rotateY" 
		2 121 "hair_1.rotateZ" 2 122 "hair_2.rotateX" 2 123 "hair_2.rotateY" 
		2 124 "hair_2.rotateZ" 2 125 "hair_3.rotateX" 2 126 "hair_3.rotateY" 
		2 127 "hair_3.rotateZ" 2 128  ;
	setAttr ".cd[0].cim" -type "Int32Array" 177 0 1 2 3
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
		 158 159 160 161 162 163 164 165 166 167 168
		 169 170 171 172 173 174 175 176 ;
createNode lightLinker -n "lightLinker1";
	setAttr ".ihi" 0;
	setAttr -s 21 ".lnk";
select -ne :time1;
	setAttr ".o" 35;
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
	setAttr ".outf" 23;
	setAttr ".an" yes;
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
connectAttr "mrg_jump_run_landSource.st" "clipLibrary1.st[0]";
connectAttr "mrg_jump_run_landSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL359.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL360.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX1.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL362.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ1.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA1093.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU55.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU56.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU57.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU58.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU59.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU60.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU61.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU62.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "mrg_Hoop_Root_rotateX.a" "clipLibrary1.cel[0].cev[14].cevr"
		;
connectAttr "mrg_Hoop_Root_rotateY.a" "clipLibrary1.cel[0].cev[15].cevr"
		;
connectAttr "mrg_Hoop_Root_rotateZ.a" "clipLibrary1.cel[0].cev[16].cevr"
		;
connectAttr "mrg_Hoop_Root_translateX.a" "clipLibrary1.cel[0].cev[17].cevr"
		;
connectAttr "mrg_Hoop_Root_translateY.a" "clipLibrary1.cel[0].cev[18].cevr"
		;
connectAttr "mrg_Hoop_Root_translateZ.a" "clipLibrary1.cel[0].cev[19].cevr"
		;
connectAttr "animCurveTL367.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL368.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL369.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA1097.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA1098.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA1099.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL370.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL371.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL372.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA1100.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA1101.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA1102.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA1103.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA1104.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA1105.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA1106.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA1107.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA1108.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA1109.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA1110.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA1111.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA1112.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA1113.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA1114.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL373.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL374.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL375.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL376.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL377.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL378.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL379.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL380.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL381.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA1115.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA1116.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA1117.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA1118.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA1119.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA1120.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA1121.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA1122.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA1123.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA1124.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA1125.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA1126.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA1127.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA1128.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA1129.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA1130.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA1131.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA1132.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA1133.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA1134.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA1135.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA1136.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA1137.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA1138.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA1139.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA1140.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA1141.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA1142.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA1143.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL382.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL383.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL384.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA1144.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA1145.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA1146.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL385.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL386.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL387.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA1147.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA1148.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA1149.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL388.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL389.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL390.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA1150.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA1151.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA1152.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL391.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL392.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL393.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA1153.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA1154.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA1155.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL394.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL395.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL396.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL397.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL398.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL399.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA1156.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA1157.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA1158.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA1159.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA1160.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA1161.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA1162.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA1163.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA1164.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA1165.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA1166.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1167.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1168.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1169.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA1170.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1171.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1172.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1173.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1174.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1175.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1176.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1177.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1178.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA1179.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA1180.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA1181.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA1182.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA1183.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA1184.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1185.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1186.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1187.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1188.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1189.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1190.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1191.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1192.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1193.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1194.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1195.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1196.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1197.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1198.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1199.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1200.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1201.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1202.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1203.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1204.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1205.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA1206.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA1207.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA1208.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA1209.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA1210.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA1211.a" "clipLibrary1.cel[0].cev[167].cevr";
connectAttr "mrg_hair_1_rotateX3.a" "clipLibrary1.cel[0].cev[168].cevr";
connectAttr "mrg_hair_1_rotateY3.a" "clipLibrary1.cel[0].cev[169].cevr";
connectAttr "mrg_hair_1_rotateZ3.a" "clipLibrary1.cel[0].cev[170].cevr";
connectAttr "mrg_hair_2_rotateX3.a" "clipLibrary1.cel[0].cev[171].cevr";
connectAttr "mrg_hair_2_rotateY3.a" "clipLibrary1.cel[0].cev[172].cevr";
connectAttr "mrg_hair_2_rotateZ3.a" "clipLibrary1.cel[0].cev[173].cevr";
connectAttr "mrg_hair_3_rotateX3.a" "clipLibrary1.cel[0].cev[174].cevr";
connectAttr "mrg_hair_3_rotateY3.a" "clipLibrary1.cel[0].cev[175].cevr";
connectAttr "mrg_hair_3_rotateZ3.a" "clipLibrary1.cel[0].cev[176].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[1].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[8].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[13].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[21].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[22].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[23].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[24].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[25].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[26].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[27].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[28].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[29].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[30].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[31].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[32].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[33].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[34].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[35].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[36].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[37].llnk";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of mrg_jump_run_land.ma
