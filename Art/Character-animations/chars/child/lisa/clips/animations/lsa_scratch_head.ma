//Maya ASCII 4.0 scene
//Name: lsa_scratch_head.ma
//Last modified: Tue, Feb 18, 2003 03:44:13 PM
requires maya "4.0";
requires "p3dmayaexp" "2.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "lsa_scratch_headSource";
	setAttr ".ihi" 0;
	setAttr ".du" 60;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 1 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.016664352267980576;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.99986112117767334;
	setAttr -s 5 ".kox[3:4]"  1 0.016664352267980576;
	setAttr -s 5 ".koy[3:4]"  0 -0.99986112117767334;
createNode animCurveTL -n "animCurveTL201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 -0.033135114381557439 1 -0.032417893388823546 
		2 -0.031587556469224586 3 -0.030698038994782684 4 -0.029793346463097659 5 
		-0.028917484371769341 6 -0.028114458218397542 7 -0.027428273500582075 8 -0.026902935715922772 
		9 -0.026582450362019446 10 -0.026510822936471921 11 -0.026565346535406646 
		12 -0.026594312054871092 13 -0.026598221791178437 14 -0.026577578040641824 
		15 -0.026532883099574422 16 -0.026464639264289387 17 -0.026373348831099874 
		18 -0.026259514096319051 19 -0.026123637356260058 20 -0.025966220907236076 
		21 -0.025787767045560257 22 -0.025588778067545746 23 -0.02536975626950572 
		24 -0.025131203947753332 25 -0.024873623398601736 26 -0.024597516918364096 
		27 -0.024303386803353574 28 -0.02399173534988332 29 -0.023663064854266499 
		30 -0.023317877612816271 31 -0.022956675921845787 32 -0.022579962077668211 
		33 -0.022188238376596704 34 -0.021782007114944425 35 -0.021361770589024526 
		36 -0.020928031095150172 37 -0.020481290929634525 38 -0.020022052388790734 
		39 -0.019550817768931965 40 -0.019068089366371374 41 -0.018695965717070849 
		42 -0.018544299531285387 43 -0.018595215879131956 44 -0.018830839830727506 
		45 -0.019233296456189004 46 -0.019784710825633413 47 -0.020467208009177677 
		48 -0.021262913076938769 49 -0.022153951099033651 50 -0.023122447145579268 
		51 -0.024150526286692592 52 -0.025220313592490575 53 -0.026313934133090178 
		54 -0.027413512978608369 55 -0.028501175199162093 56 -0.029559045864868322 
		57 -0.030569250045844012 58 -0.031513912812206113 59 -0.032375159234071596 
		60 -0.033135114381557439;
createNode animCurveTL -n "animCurveTL203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0 1 -1.3818883261104053e-005 
		2 -4.9884886309861656e-005 3 -9.8706258140144582e-005 4 -0.0001507876870039191 
		5 -0.00019663386115315149 6 -0.00022674946883980787 7 -0.00023163919831585471 
		8 -0.00020180773783325817 9 -0.00012775977564398437 10 0 11 0.00022321642960180488 
		12 0.00057111508605084936 13 0.0010344144258381833 14 0.0016038329054548564 
		15 0.0022700889813919187 16 0.0030239011101404205 17 0.0038559877481914107 
		18 0.0047570673520359397 19 0.0057178583781650576 20 0.0067290792830698148 
		21 0.0077814485232412583 22 0.0088656845551704413 23 0.0099725058353484133 
		24 0.011092630820266222 25 0.01221677796641492 26 0.013335665730285553 27 
		0.014440012568369178 28 0.015520536937156834 29 0.016567957293139583 30 0.017572992092808465 
		31 0.018526359792654538 32 0.019418778849168847 33 0.020240967718842443 34 
		0.020983644858166374 35 0.021637528723631696 36 0.022193337771729448 37 0.022641790458950685 
		38 0.02297360524178646 39 0.023179500576727824 40 0.023250194920265827 41 
		0.023136850220374608 42 0.022808441218088431 43 0.022282405559488534 44 0.021576180890656133 
		45 0.020707204857672464 46 0.01969291510661875 47 0.018550749283576227 48 
		0.017298145034626115 49 0.015952540005849641 50 0.014531371843328041 51 0.013052078193142533 
		52 0.011532096701374355 53 0.0099888650141047308 54 0.0084398207774148866 
		55 0.0069024016373860518 56 0.0053940452400994543 57 0.003932189231636323 
		58 0.0025342712580778831 59 0.0012177289655053698 60 0;
createNode animCurveTA -n "animCurveTA581";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  48 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  48 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  48 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  48 0;
createNode animCurveTU -n "animCurveTU27";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 1 40 1 60 0;
createNode animCurveTU -n "animCurveTU28";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 1 40 1 60 0;
createNode animCurveTU -n "animCurveTU29";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "animCurveTU30";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTA -n "animCurveTA582";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 60 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA583";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 60 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA584";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 60 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 60 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 60 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 60 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.26454016861507795 0.01 -0.26454016861507795 
		0.015 -0.26454016861507795 60 -0.26454016861507795;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.13806192026723146 0.01 0.13806192026723146 
		0.015 0.13806192026723146 60 0.13806192026723146;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.064904406754016042 0.01 -0.064904406754016042 
		0.015 -0.064904406754016042 60 -0.064904406754016042;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA585";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 60 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA586";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -13.717778871715202 0.01 -13.717778871715202 
		0.015 -13.717778871715204 60 -13.717778871715202;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA587";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 60 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.21594587158542247 0.01 0.21594587158542247 
		0.015 0.21594587158542247 60 0.21594587158542247;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.1380615615975922 0.01 0.1380615615975922 
		0.015 0.1380615615975922 60 0.1380615615975922;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.00078430246903575811 0.01 0.00078430246903575811 
		0.015 0.00078430246903575811 60 0.00078430246903575811;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA588";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 60 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA589";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 60 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA590";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 60 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA591";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA592";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA593";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA594";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA595";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA596";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA597";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 60 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA598";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 60 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA599";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 60 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA600";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 60 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA601";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 60 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA602";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 60 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 0.01 1 0.015 1 10 1 60 1;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 0.01 1 0.015 1 10 1 60 1;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL220";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.076472881617957691 0.01 -0.076472881617957691 
		0.015 -0.076472881617957691 10 -0.061184609193437878 40 -0.044007445515467002 
		60 -0.076472881617957691;
	setAttr -s 6 ".kit[0:5]"  9 1 1 1 1 9;
	setAttr -s 6 ".kot[0:5]"  9 9 9 1 1 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.90601718425750732 0.28363150358200073 
		0.20114943385124207;
	setAttr -s 6 ".kiy[1:5]"  0 0 -0.42324090003967285 0.95893335342407227 
		-0.97956055402755737;
	setAttr -s 6 ".kox[3:5]"  0.90601712465286255 0.28362998366355896 
		0.20114943385124207;
	setAttr -s 6 ".koy[3:5]"  -0.42324107885360718 0.95893377065658569 
		-0.97956055402755737;
createNode animCurveTL -n "animCurveTL221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.96147551361829786 0.01 0.96147551361829786 
		0.015 0.96147551361829786 60 0.96147551361829786;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.01 0 0.015 0 10 0 40 0.053659371241571635 
		60 0;
	setAttr -s 6 ".kit[1:5]"  1 1 1 9 9;
	setAttr -s 6 ".kot[3:5]"  1 9 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.6752123236656189 1 0.12329258024692535;
	setAttr -s 6 ".kiy[1:5]"  0 0 0.73762345314025879 0 -0.9923703670501709;
	setAttr -s 6 ".kox[3:5]"  0.67521071434020996 1 0.12329258024692535;
	setAttr -s 6 ".koy[3:5]"  0.7376248836517334 0 -0.9923703670501709;
createNode animCurveTA -n "animCurveTA603";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.62843630316474508 0.01 -0.62843630316474508 
		0.015 -0.62843630316474508 10 0 60 -0.62843630316474508;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.99997836351394653;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.0065808272920548916;
	setAttr -s 5 ".kox[3:4]"  1 0.99997836351394653;
	setAttr -s 5 ".koy[3:4]"  0 -0.0065808272920548916;
createNode animCurveTA -n "animCurveTA604";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -5.8284402688137158 0.01 -5.8284402688137158 
		0.015 -5.8284402688137167 10 0 60 -5.8284402688137158;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.9981425404548645;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.060921914875507355;
	setAttr -s 5 ".kox[3:4]"  1 0.9981425404548645;
	setAttr -s 5 ".koy[3:4]"  0 -0.060921914875507355;
createNode animCurveTA -n "animCurveTA605";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.2956360193097458 0.01 -1.2956360193097458 
		0.015 -1.295636019309746 10 0 60 -1.2956360193097458;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.9999079704284668;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.013566619716584682;
	setAttr -s 5 ".kox[3:4]"  1 0.9999079704284668;
	setAttr -s 5 ".koy[3:4]"  0 -0.013566619716584682;
createNode animCurveTA -n "animCurveTA606";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA607";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA608";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA609";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA610";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA611";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA612";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA613";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA614";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA615";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA616";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA617";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA618";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA619";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA620";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA621";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA622";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA623";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA624";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA625";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA626";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA627";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA628";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA629";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA630";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA631";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.43524234076486068 0.01 -0.43524234076486068 
		0.015 -0.43524234076486068 10 -0.22164053326398034 60 -0.43524234076486068;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.077790364623069763;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.99696975946426392;
	setAttr -s 5 ".kox[3:4]"  1 0.077790364623069763;
	setAttr -s 5 ".koy[3:4]"  0 -0.99696975946426392;
createNode animCurveTL -n "animCurveTL224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.82665738350180629 0.01 -0.82665738350180629 
		0.015 -0.82665738350180629 10 -0.9417076481617882 60 -0.82665738350180629;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.14336769282817841;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.98966950178146362;
	setAttr -s 5 ".kox[3:4]"  1 0.14336769282817841;
	setAttr -s 5 ".koy[3:4]"  0 0.98966950178146362;
createNode animCurveTL -n "animCurveTL225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.27773886459742925 0.01 0.27773886459742925 
		0.015 0.27773886459742925 10 0.038362195289875119 60 0.27773886459742925;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.069457121193408966;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.99758493900299072;
	setAttr -s 5 ".kox[3:4]"  1 0.069457121193408966;
	setAttr -s 5 ".koy[3:4]"  0 0.99758493900299072;
createNode animCurveTA -n "animCurveTA632";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.8121934161072303e-015 0.01 
		0 0.015 1.8121934161072299e-015 10 6.7230119492284173 60 -1.8121934161072303e-015;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.99753087759017944;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.070229381322860718;
	setAttr -s 5 ".kox[3:4]"  1 0.99753087759017944;
	setAttr -s 5 ".koy[3:4]"  0 -0.070229381322860718;
createNode animCurveTA -n "animCurveTA633";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 28.652637602052774 0.01 28.652637602052774 
		0.015 28.652637602052774 10 19.839511008631867 60 28.652637602052774;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.99576818943023682;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.091900289058685303;
	setAttr -s 5 ".kox[3:4]"  1 0.99576818943023682;
	setAttr -s 5 ".koy[3:4]"  0 0.091900289058685303;
createNode animCurveTA -n "animCurveTA634";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 64.676908227303443 0.01 64.676908227303443 
		0.015 64.676908227303443 10 76.90743997913691 60 64.676908227303443;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.9918975830078125;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.12704008817672729;
	setAttr -s 5 ".kox[3:4]"  1 0.9918975830078125;
	setAttr -s 5 ".koy[3:4]"  0 -0.12704008817672729;
createNode animCurveTL -n "animCurveTL226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.5198069948790518 0.01 0.5198069948790518 
		0.015 0.5198069948790518 10 0.20623790699604494 60 0.5198069948790518;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.053076576441526413;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.99859046936035156;
	setAttr -s 5 ".kox[3:4]"  1 0.053076576441526413;
	setAttr -s 5 ".koy[3:4]"  0 0.99859046936035156;
createNode animCurveTL -n "animCurveTL227";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.72394202659893114 0.01 -0.72394202659893114 
		0.015 -0.72394202659893114 10 -0.94615818397708606 60 -0.72394202659893114;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.074791982769966125;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.99719917774200439;
	setAttr -s 5 ".kox[3:4]"  1 0.074791982769966125;
	setAttr -s 5 ".koy[3:4]"  0 0.99719917774200439;
createNode animCurveTL -n "animCurveTL228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.36439499068905612 0.01 0.36439499068905612 
		0.015 0.36439499068905612 10 0.023808763748733922 60 0.36439499068905612;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.048876743763685226;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.99880480766296387;
	setAttr -s 5 ".kox[3:4]"  1 0.048876743763685226;
	setAttr -s 5 ".koy[3:4]"  0 0.99880480766296387;
createNode animCurveTA -n "animCurveTA635";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 7.7976222737965299 0.01 7.7976222737965299 
		0.015 7.7976222737965317 10 8.1910546202722809 60 7.7976222737965299;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.99999153614044189;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.0041199792176485062;
	setAttr -s 5 ".kox[3:4]"  1 0.99999153614044189;
	setAttr -s 5 ".koy[3:4]"  0 -0.0041199792176485062;
createNode animCurveTA -n "animCurveTA636";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -30.409274105849079 0.01 -30.409274105849079 
		0.015 -30.409274105849079 10 -16.680769289981995 60 -30.409274105849079;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.98982334136962891;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.1423015296459198;
	setAttr -s 5 ".kox[3:4]"  1 0.98982334136962891;
	setAttr -s 5 ".koy[3:4]"  0 -0.1423015296459198;
createNode animCurveTA -n "animCurveTA637";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -64.859940280210878 0.01 -64.859940280210878 
		0.015 -64.859940280210893 10 -64.609749241846473 60 -64.859940280210878;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.99999654293060303;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.0026199854910373688;
	setAttr -s 5 ".kox[3:4]"  1 0.99999654293060303;
	setAttr -s 5 ".koy[3:4]"  0 -0.0026199854910373688;
createNode animCurveTL -n "animCurveTL229";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.97384023505055983 0.01 -0.97384023505055983 
		0.015 -0.97384023505055983 10 -0.8448236677023373 60 -0.97384023505055983;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.12811776995658875;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.99175894260406494;
	setAttr -s 5 ".kox[3:4]"  1 0.12811776995658875;
	setAttr -s 5 ".koy[3:4]"  0 -0.99175894260406494;
createNode animCurveTL -n "animCurveTL230";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.2525748803373358 0.01 1.2525965505547216 
		0.015 1.2525965505547216 10 1.5117481219250299 60 1.2525748803373358;
	setAttr -s 5 ".kit[0:4]"  9 1 1 1 9;
	setAttr -s 5 ".kot[1:4]"  9 9 1 9;
	setAttr -s 5 ".kix[1:4]"  0.22482451796531677 1 1 0.06417449563741684;
	setAttr -s 5 ".kiy[1:4]"  0.97439926862716675 0 0 -0.99793869256973267;
	setAttr -s 5 ".kox[0:4]"  0.22482451796531677 0.22482451796531677 
		0.012848562560975552 1 0.06417449563741684;
	setAttr -s 5 ".koy[0:4]"  0.97439926862716675 0.97439926862716675 
		0.99991744756698608 0 -0.99793869256973267;
createNode animCurveTL -n "animCurveTL231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.097994651149805143 0.01 -0.097994651149805143 
		0.015 -0.097994651149805143 10 -0.097994651149805143 60 -0.097994651149805143;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA638";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -12.222987645962959 0.01 -12.222987645962959 
		0.015 -12.222987645962959 10 5.4739599453216474 60 -12.222987645962959;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.98325788974761963;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.18221934139728546;
	setAttr -s 5 ".kox[3:4]"  1 0.98325788974761963;
	setAttr -s 5 ".koy[3:4]"  0 -0.18221934139728546;
createNode animCurveTA -n "animCurveTA639";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -19.681044208515029 0.01 -19.681044208515029 
		0.015 -19.681044208515029 10 8.5874521608419823 60 -19.681044208515029;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.95886844396591187;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.28385093808174133;
	setAttr -s 5 ".kox[3:4]"  1 0.95886844396591187;
	setAttr -s 5 ".koy[3:4]"  0 -0.28385093808174133;
createNode animCurveTA -n "animCurveTA640";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 65.119655550709041 0.01 65.119655550709041 
		0.015 65.119655550709027 10 74.754744621954103 60 65.119655550709041;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.99494826793670654;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.10038871318101883;
	setAttr -s 5 ".kox[3:4]"  1 0.99494826793670654;
	setAttr -s 5 ".koy[3:4]"  0 -0.10038871318101883;
createNode animCurveTL -n "animCurveTL232";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.75854111686822778 0.01 0.75854111686822778 
		0.015 0.75854111686822778 10 0.61083301393139333 60 0.75854111686822778;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.11212364584207535;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.9936942458152771;
	setAttr -s 5 ".kox[3:4]"  1 0.11212364584207535;
	setAttr -s 5 ".koy[3:4]"  0 0.9936942458152771;
createNode animCurveTL -n "animCurveTL233";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.1932952672205326 0.01 1.1932952672205326 
		0.015 1.1932952672205326 10 1.4644416293758407 60 1.1932952672205326;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.061351627111434937;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.99811619520187378;
	setAttr -s 5 ".kox[3:4]"  1 0.061351627111434937;
	setAttr -s 5 ".koy[3:4]"  0 -0.99811619520187378;
createNode animCurveTL -n "animCurveTL234";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.14314299916678522 0.01 0.14314299916678522 
		0.015 0.14314299916678522 10 0.14314299916678522 60 0.14314299916678522;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA641";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -5.7993291745893352 0.01 -5.7993291745893352 
		0.015 -5.7993291745893352 10 16.226511010665405 60 -5.7993291745893352;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.97441577911376953;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.22475296258926392;
	setAttr -s 5 ".kox[3:4]"  1 0.97441577911376953;
	setAttr -s 5 ".koy[3:4]"  0 -0.22475296258926392;
createNode animCurveTA -n "animCurveTA642";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.228264010471275 0.01 -1.228264010471275 
		0.015 -1.228264010471275 10 -8.513966085499284 60 -1.228264010471275;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.99710214138031006;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.076074600219726563;
	setAttr -s 5 ".kox[3:4]"  1 0.99710214138031006;
	setAttr -s 5 ".koy[3:4]"  0 0.076074600219726563;
createNode animCurveTA -n "animCurveTA643";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -60.456694896838378 0.01 -60.456694896838378 
		0.015 -60.456694896838378 10 -68.213989601412422 60 -60.456694896838378;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.99671673774719238;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.080967485904693604;
	setAttr -s 5 ".kox[3:4]"  1 0.99671673774719238;
	setAttr -s 5 ".koy[3:4]"  0 0.080967485904693604;
createNode animCurveTL -n "animCurveTL235";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL236";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL237";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1 0.01 -1 0.015 -1 10 -1 60 
		-1;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL238";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.10167917362943303 0.01 -0.10167917362943303 
		0.015 -0.10167917362943303 10 -0.10167917362943303 60 -0.10167917362943303;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL239";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.40762644910266188 0.01 -0.40762644910266188 
		0.015 -0.40762644910266188 10 -0.40762644910266188 60 -0.40762644910266188;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL240";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.93129112588482243 0.01 -0.93129112588482243 
		0.015 -0.93129112588482243 10 -0.93129112588482243 60 -0.93129112588482243;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA644";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 12.253734489678925 0.01 12.253734489678925 
		0.015 12.253734489678925 10 -94.403399312650208 13 -95.094181384534224 16 
		-94.373255767657199 19 -94.943463659569133 22 -94.433542857643232 25 -94.943463659569133 
		28 -94.403399312650208 40 -95.111359979063849 60 12.253734489678925;
	setAttr -s 12 ".kit[1:11]"  1 1 1 9 9 9 9 
		9 9 1 9;
	setAttr -s 12 ".kot[3:11]"  1 9 9 9 9 9 9 
		1 9;
	setAttr -s 12 ".kix[1:11]"  1 1 0.99081951379776001 0.99999654293060303 
		0.99991351366043091 0.99998617172241211 1 0.99999654293060303 0.99998283386230469 
		0.98795384168624878 0.33518829941749573;
	setAttr -s 12 ".kiy[1:11]"  0 0 -0.13519145548343658 0.0026305115316063166 
		0.01315146591514349 -0.0052609685808420181 0 0.0026305115316063166 -0.0058605866506695747 
		0.15474875271320343 0.94215112924575806;
	setAttr -s 12 ".kox[3:11]"  0.99081951379776001 0.99999654293060303 
		0.99991351366043091 0.99998617172241211 1 0.99999654293060303 0.99998283386230469 
		0.98795384168624878 0.33518829941749573;
	setAttr -s 12 ".koy[3:11]"  -0.13519129157066345 0.0026305115316063166 
		0.01315146591514349 -0.0052609685808420181 0 0.0026305115316063166 -0.0058605866506695747 
		0.15474873781204224 0.94215112924575806;
createNode animCurveTA -n "animCurveTA645";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -65.746751280844961 0.01 -65.746751280844961 
		0.015 -65.746751280844975 10 -30.985859030710614 13 -44.936909732868592 16 
		-28.901922487952056 19 -43.922005572434223 22 -29.578525261574974 25 -46.801538660060281 
		28 -29.578525261574974 40 -31.11812560849387 60 -65.746751280844961;
	setAttr -s 12 ".kit[1:11]"  1 1 1 9 9 9 9 
		9 1 1 9;
	setAttr -s 12 ".kot[3:11]"  1 9 9 9 9 9 1 
		1 9;
	setAttr -s 12 ".kix[1:11]"  1 1 0.99841839075088501 0.98386305570602417 
		0.99610084295272827 0.99826139211654663 0.9698481559753418 1 0.94822233915328979 
		0.98401689529418945 0.740867018699646;
	setAttr -s 12 ".kiy[1:11]"  0 0 0.056220583617687225 0.17892314493656158 
		0.08822176605463028 -0.058942075818777084 -0.24370990693569183 0 0.31760722398757935 
		-0.17807523906230927 -0.67165172100067139;
	setAttr -s 12 ".kox[3:11]"  0.99841839075088501 0.98386305570602417 
		0.99610084295272827 0.99826139211654663 0.9698481559753418 1 0.94822233915328979 
		0.98401683568954468 0.740867018699646;
	setAttr -s 12 ".koy[3:11]"  0.056220568716526031 0.17892314493656158 
		0.08822176605463028 -0.058942075818777084 -0.24370990693569183 0 0.31760725378990173 
		-0.17807529866695404 -0.67165172100067139;
createNode animCurveTA -n "animCurveTA646";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 3.871449260799477e-015 0.01 0 
		0.015 0 10 58.383869577657087 13 60.222019837741108 16 58.049206477303521 
		19 59.971022512475933 22 58.300203802568689 25 60.222019837741108 28 58.383869577657087 
		40 40.029831339824185 60 3.871449260799477e-015;
	setAttr -s 12 ".kit[1:11]"  1 1 1 9 9 9 9 
		9 9 9 9;
	setAttr -s 12 ".kot[3:11]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 12 ".kix[1:11]"  1 1 0.90805763006210327 0.99957382678985596 
		0.9997602105140686 0.9997602105140686 0.9997602105140686 0.9999733567237854 
		0.81736892461776733 0.72308158874511719 0.69035178422927856;
	setAttr -s 12 ".kiy[1:11]"  0 0 0.41884529590606689 -0.029192419722676277 
		-0.02189839631319046 0.02189839631319046 0.02189839631319046 0.007301021832972765 
		-0.57611459493637085 -0.69076263904571533 -0.72347384691238403;
	setAttr -s 12 ".kox[3:11]"  0.90805763006210327 0.99957382678985596 
		0.9997602105140686 0.9997602105140686 0.9997602105140686 0.9999733567237854 
		0.81736892461776733 0.72308158874511719 0.69035178422927856;
	setAttr -s 12 ".koy[3:11]"  0.41884520649909973 -0.029192419722676277 
		-0.02189839631319046 0.02189839631319046 0.02189839631319046 0.007301021832972765 
		-0.57611459493637085 -0.69076263904571533 -0.72347384691238403;
createNode animCurveTA -n "animCurveTA647";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.061808866237337522 0.01 -0.061808866237337522 
		0.015 -0.061808866237340665 10 -0.061808866237337522 60 -0.061808866237337522;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA648";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -59.058178941076754 0.01 -59.058178941076754 
		0.015 -59.058178941076754 10 -59.058178941076754 60 -59.058178941076754;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA649";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 16.579147429757843 0.01 16.579147429757843 
		0.015 16.57914742975785 10 16.579147429757843 60 16.579147429757843;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA650";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 8.5572674112203622 0.01 8.5572674112203622 
		0.015 8.5572674112203639 10 92.890572288783758 13 106.8866366107541 16 92.890572288783758 
		19 106.8866366107541 22 92.890572288783758 25 106.8866366107541 28 92.890572288783758 
		40 72.986421276382544 60 8.5572674112203622;
	setAttr -s 12 ".kit[1:11]"  1 1 1 9 9 9 9 
		9 9 9 9;
	setAttr -s 12 ".kot[3:11]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 12 ".kix[1:11]"  1 1 0.99762004613876343 1 1 1 1 
		1 0.64545750617980957 0.58680301904678345 0.50996983051300049;
	setAttr -s 12 ".kiy[1:11]"  0 0 0.068951278924942017 0 0 0 
		0 0 -0.76379621028900146 -0.80972975492477417 -0.86019229888916016;
	setAttr -s 12 ".kox[3:11]"  0.99762004613876343 1 1 1 1 1 0.64545750617980957 
		0.58680301904678345 0.50996983051300049;
	setAttr -s 12 ".koy[3:11]"  0.068951211869716644 0 0 0 0 0 
		-0.76379621028900146 -0.80972975492477417 -0.86019229888916016;
createNode animCurveTA -n "animCurveTA651";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 15.711328223519057 0.01 15.711328223519057 
		0.015 15.711328223519061 10 15.711328223519057 60 15.711328223519057;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA652";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 0.01 0 0.015 0 10 -71.074316929169115 
		13 -64.657202370766782 16 -70.809925157115245 19 -64.657202370766782 22 -70.809925157115245 
		25 -64.657202370766782 28 -70.809925157115245 40 -71.752603246153399 60 0;
	setAttr -s 12 ".kit[1:11]"  1 1 9 9 9 9 9 
		9 1 1 9;
	setAttr -s 12 ".kot[9:11]"  1 1 9;
	setAttr -s 12 ".kix[1:11]"  1 1 0.35811558365821838 0.99973392486572266 
		1 1 1 1 0.99717891216278076 0.99996566772460938 0.46990934014320374;
	setAttr -s 12 ".kiy[1:11]"  0 0 -0.93367725610733032 0.02306639589369297 
		0 0 0 0 -0.075061134994029999 0.0082863252609968185 0.88271468877792358;
	setAttr -s 12 ".kox[9:11]"  0.99717891216278076 0.99996566772460938 
		0.46990934014320374;
	setAttr -s 12 ".koy[9:11]"  -0.075061090290546417 0.0082863373681902885 
		0.88271468877792358;
createNode animCurveTA -n "animCurveTA653";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 0.01 0 0.015 0 10 17.025625321051574 
		13 12.380428053376002 16 17.025625321051574 19 12.380428053376002 22 17.025625321051574 
		25 12.380428053376002 28 17.025625321051574 40 26.023083754396467 60 0;
	setAttr -s 12 ".kit[1:11]"  1 1 9 9 9 9 9 
		9 1 9 9;
	setAttr -s 12 ".kot[9:11]"  1 9 9;
	setAttr -s 12 ".kix[1:11]"  1 1 0.89470601081848145 1 1 1 1 
		1 0.99978715181350708 0.96331804990768433 0.82643324136734009;
	setAttr -s 12 ".kiy[1:11]"  0 0 0.4466555118560791 0 0 0 0 
		0 0.020632531493902206 -0.26836225390434265 -0.56303471326828003;
	setAttr -s 12 ".kox[9:11]"  0.99978715181350708 0.96331804990768433 
		0.82643324136734009;
	setAttr -s 12 ".koy[9:11]"  0.020632538944482803 -0.26836225390434265 
		-0.56303471326828003;
createNode animCurveTA -n "animCurveTA654";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 0.01 0 0.015 0 10 -19.041318463876852 
		13 -8.4579966239639717 16 -24.609096988299559 19 -8.4579966239639717 22 -27.120055930686267 
		25 -8.4579966239639717 28 -27.120055930686267 40 -29.681099765133286 60 0;
	setAttr -s 12 ".kit[1:11]"  1 1 9 9 9 9 9 
		9 1 9 9;
	setAttr -s 12 ".kot[9:11]"  1 9 9;
	setAttr -s 12 ".kix[1:11]"  1 1 0.9464680552482605 0.89944946765899658 
		1 0.97682398557662964 1 1 0.9984620213508606 0.91404664516448975 0.78963088989257813;
	setAttr -s 12 ".kiy[1:11]"  0 0 -0.32279747724533081 -0.4370248019695282 
		0 -0.21404412388801575 0 0 -0.055439487099647522 0.40560901165008545 0.61358213424682617;
	setAttr -s 12 ".kox[9:11]"  0.9984620213508606 0.91404664516448975 
		0.78963088989257813;
	setAttr -s 12 ".koy[9:11]"  -0.055439509451389313 0.40560901165008545 
		0.61358213424682617;
createNode animCurveTA -n "animCurveTA655";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA656";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA657";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA658";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 10.423754966968488 0.01 10.423754966968488 
		0.015 10.423754966968488 10 10.423754966968488 60 10.423754966968488;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA659";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.722848255843903 0.01 27.722848255843903 
		0.015 27.7228482558439 10 27.722848255843903 60 27.722848255843903;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA660";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 21.576484776388227 0.01 21.576484776388227 
		0.015 21.576484776388224 10 21.576484776388227 60 21.576484776388227;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA661";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA662";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA663";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.080064458283051 0.01 27.080064458283051 
		0.015 27.080064458283051 10 27.080064458283051 60 27.080064458283051;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA664";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA665";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA666";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA667";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA668";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA669";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 13.994403295754109 0.01 13.994403295754109 
		0.015 13.994403295754109 10 13.994403295754109 60 13.994403295754109;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA670";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA671";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA672";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 13.994403295754109 0.01 13.994403295754109 
		0.015 13.994403295754109 10 13.994403295754109 60 13.994403295754109;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA673";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 0.01 0 0.015 0 10 0 13 -1.0566759136474175 
		16 0 19 -1.0566759136474175 22 0 25 -1.0566759136474175 28 0 31 0 40 0 60 
		0;
	setAttr -s 13 ".kit[1:12]"  1 1 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 13 ".kot[3:12]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 13 ".kix[1:12]"  1 1 0.99909347295761108 1 1 1 1 
		1 0.99577534198760986 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 -0.042570095509290695 0 0 0 
		0 0 0.091822810471057892 0 0 0;
	setAttr -s 13 ".kox[3:12]"  0.98341566324234009 1 1 1 1 1 0.99577534198760986 
		1 1 1;
	setAttr -s 13 ".koy[3:12]"  -0.18136616051197052 0 0 0 0 0 
		0.091822810471057892 0 0 0;
createNode animCurveTA -n "animCurveTA674";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 0.01 0 0.015 0 10 0 13 0.064341866925491167 
		16 0 19 0.064341866925491167 22 0 25 0.064341866925491167 28 0 31 0 40 0 
		60 0;
	setAttr -s 13 ".kit[1:12]"  1 1 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 13 ".kot[3:12]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 13 ".kix[1:12]"  1 1 0.99999666213989258 1 1 1 1 
		1 0.9999842643737793 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0.0025944712106138468 0 0 0 
		0 0 -0.00561479851603508 0 0 0;
	setAttr -s 13 ".kox[3:12]"  0.99993693828582764 1 1 1 1 1 0.9999842643737793 
		1 1 1;
	setAttr -s 13 ".koy[3:12]"  0.011229065246880054 0 0 0 0 0 
		-0.00561479851603508 0 0 0;
createNode animCurveTA -n "animCurveTA675";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 27.911632519594587 0.01 27.911632519594587 
		0.015 27.911632519594587 10 27.911632519594587 13 38.512817069298855 16 27.911632519594587 
		19 38.512817069298855 22 27.911632519594587 25 38.512817069298855 28 27.911632519594587 
		31 27.911632519594587 40 27.911632519594587 60 27.911632519594587;
	setAttr -s 13 ".kit[1:12]"  1 1 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 13 ".kix[1:12]"  1 1 0.91950953006744385 1 1 1 1 
		1 0.73405265808105469 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0.39306765794754028 0 0 0 0 
		0 -0.67909258604049683 0 0 0;
createNode animCurveTA -n "animCurveTA676";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA677";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA678";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA679";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.65073001024951671 0.01 -0.65073001024951671 
		0.015 -0.65073001024951671 10 0 60 -0.65073001024951671;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.9999767541885376;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.0068142707459628582;
	setAttr -s 5 ".kox[3:4]"  1 0.9999767541885376;
	setAttr -s 5 ".koy[3:4]"  0 -0.0068142707459628582;
createNode animCurveTA -n "animCurveTA680";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -4.2368721935960929 0.01 -4.2368721935960929 
		0.015 -4.2368721935960938 10 0 60 -4.2368721935960929;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.99901717901229858;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.044324815273284912;
	setAttr -s 5 ".kox[3:4]"  1 0.99901717901229858;
	setAttr -s 5 ".koy[3:4]"  0 -0.044324815273284912;
createNode animCurveTA -n "animCurveTA681";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.6995264082587447 0.01 2.6995264082587447 
		0.015 2.6995264082587447 10 0 60 2.6995264082587447;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.99960064888000488;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.028258085250854492;
	setAttr -s 5 ".kox[3:4]"  1 0.99960064888000488;
	setAttr -s 5 ".koy[3:4]"  0 0.028258085250854492;
createNode animCurveTA -n "animCurveTA682";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.01 0 0.015 0 10 19.874478172618979 
		40 19.874478172618979 60 0;
	setAttr -s 6 ".kit[0:5]"  9 1 1 1 1 9;
	setAttr -s 6 ".kot[0:5]"  9 9 9 1 1 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.9992707371711731 0.99939239025115967 
		0.88710325956344604;
	setAttr -s 6 ".kiy[1:5]"  0 0 0.038183487951755524 -0.034855306148529053 
		-0.46157100796699524;
	setAttr -s 6 ".kox[3:5]"  0.9992707371711731 0.99939239025115967 
		0.88710325956344604;
	setAttr -s 6 ".koy[3:5]"  0.03818347305059433 -0.03485531359910965 
		-0.46157100796699524;
createNode animCurveTA -n "animCurveTA683";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 0.01 0 0.015 0 10 22.7519159243489 
		13 22.586489628460725 16 24.389727836871362 19 22.586489628460725 22 24.389727836871362 
		25 22.586489628460725 28 24.389727836871362 40 22.7519159243489 60 0;
	setAttr -s 12 ".kit[1:11]"  1 1 1 1 9 9 9 
		9 9 1 9;
	setAttr -s 12 ".kot[3:11]"  1 1 9 9 9 9 9 
		1 9;
	setAttr -s 12 ".kix[1:11]"  1 1 0.99815309047698975 0.99875915050506592 
		1 1 1 1 0.99998331069946289 0.99986302852630615 0.85913968086242676;
	setAttr -s 12 ".kiy[1:11]"  0 0 0.060748275369405746 0.049800615757703781 
		0 0 0 0 0.0057743708603084087 -0.016551172360777855 -0.51174116134643555;
	setAttr -s 12 ".kox[3:11]"  0.99815309047698975 0.99875915050506592 
		1 1 1 1 0.99998331069946289 0.99986302852630615 0.85913968086242676;
	setAttr -s 12 ".koy[3:11]"  0.060748260468244553 0.049800600856542587 
		0 0 0 0 0.0057743708603084087 -0.016551163047552109 -0.51174116134643555;
createNode animCurveTA -n "animCurveTA684";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.01 0 0.015 0 10 26.895392240767496 
		40 26.895392240767496 60 0;
	setAttr -s 6 ".kit[0:5]"  9 1 1 1 1 9;
	setAttr -s 6 ".kot[0:5]"  9 9 9 1 1 9;
	setAttr -s 6 ".kix[1:5]"  1 1 0.99728846549987793 0.98903733491897583 
		0.817646324634552;
	setAttr -s 6 ".kiy[1:5]"  0 0 0.073591403663158417 -0.14766550064086914 
		-0.57572090625762939;
	setAttr -s 6 ".kox[3:5]"  0.99728846549987793 0.98903733491897583 
		0.817646324634552;
	setAttr -s 6 ".koy[3:5]"  0.073591411113739014 -0.14766548573970795 
		-0.57572090625762939;
createNode animCurveTA -n "animCurveTA685";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -4.0198472869727979 0.01 -4.0198472869727979 
		0.015 -4.0198472869727979 10 -4.9367554394300077 60 -4.0198472869727979;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.99995392560958862;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.0096013974398374557;
	setAttr -s 5 ".kox[3:4]"  1 0.99995392560958862;
	setAttr -s 5 ".koy[3:4]"  0 0.0096013974398374557;
createNode animCurveTA -n "animCurveTA686";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -9.1335573833666519 0.01 -9.1335573833666519 
		0.015 -9.1335573833666519 10 -8.6986303327609935 60 -9.1335573833666519;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.99998962879180908;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.0045544984750449657;
	setAttr -s 5 ".kox[3:4]"  1 0.99998962879180908;
	setAttr -s 5 ".koy[3:4]"  0 -0.0045544984750449657;
createNode animCurveTA -n "animCurveTA687";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.2752136084709536 0.01 -2.2752136084709536 
		0.015 -2.2752136084709536 10 17.455917002855632 60 -2.2752136084709536;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.97931337356567383;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.20234957337379456;
	setAttr -s 5 ".kox[3:4]"  1 0.97931337356567383;
	setAttr -s 5 ".koy[3:4]"  0 -0.20234957337379456;
createNode animCurveTA -n "animCurveTA688";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.8903601258661931 0.01 -1.8903601258661931 
		0.015 -1.8903601258661931 10 0 60 -1.8903601258661931;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.99980413913726807;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.019791927188634872;
	setAttr -s 5 ".kox[3:4]"  1 0.99980413913726807;
	setAttr -s 5 ".koy[3:4]"  0 -0.019791927188634872;
createNode animCurveTA -n "animCurveTA689";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.5597289571479034 0.01 2.5597289571479034 
		0.015 2.5597289571479034 10 0 60 2.5597289571479034;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.99964094161987305;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.026795793324708939;
	setAttr -s 5 ".kox[3:4]"  1 0.99964094161987305;
	setAttr -s 5 ".koy[3:4]"  0 0.026795793324708939;
createNode animCurveTA -n "animCurveTA690";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.016811087403604 0.01 2.016811087403604 
		0.015 2.0168110874036045 10 0 60 2.016811087403604;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.99977701902389526;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.021115286275744438;
	setAttr -s 5 ".kox[3:4]"  1 0.99977701902389526;
	setAttr -s 5 ".koy[3:4]"  0 0.021115286275744438;
createNode animCurveTA -n "animCurveTA691";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA692";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA693";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 33.429092416277157 0.01 33.429092416277157 
		0.015 33.429092416277157 10 33.429092416277157 13 36.033014869531556 16 33.429092416277157 
		19 36.033014869531556 22 33.429092416277157 25 36.033014869531556 28 33.429092416277157 
		31 33.429092416277157 40 33.429092416277157 60 33.429092416277157;
	setAttr -s 13 ".kit[1:12]"  1 1 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 13 ".kix[1:12]"  1 1 0.99453276395797729 1 1 1 1 
		1 0.97514081001281738 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0.10442484170198441 0 0 0 0 
		0 -0.22158622741699219 0 0 0;
createNode animCurveTA -n "animCurveTA694";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.2533422302317216 0.01 8.2533422302317216 
		0.015 8.2533422302317216 10 8.2533422302317216 60 8.2533422302317216;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA695";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 23.263402056531085 0.01 23.263402056531085 
		0.015 23.263402056531085 10 23.263402056531085 60 23.263402056531085;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA696";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 20.166277752815617 0.01 20.166277752815617 
		0.015 20.166277752815617 10 20.166277752815617 60 20.166277752815617;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA697";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA698";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 10 0 60 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA699";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 17.254116939558369 0.01 17.254116939558369 
		0.015 17.254116939558369 10 17.254116939558369 60 17.254116939558369;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode clipLibrary -n "clipLibrary3";
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
	setAttr ".o" 48;
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
connectAttr "lsa_scratch_headSource.st" "clipLibrary3.st[0]";
connectAttr "lsa_scratch_headSource.du" "clipLibrary3.du[0]";
connectAttr "animCurveTL200.a" "clipLibrary3.cel[0].cev[0].cevr";
connectAttr "animCurveTL201.a" "clipLibrary3.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary3.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL203.a" "clipLibrary3.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary3.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA581.a" "clipLibrary3.cel[0].cev[5].cevr";
connectAttr "lsa_Hoop_Root_IK_FK_RFoot.a" "clipLibrary3.cel[0].cev[6].cevr"
		;
connectAttr "lsa_Hoop_Root_IK_FK_LFoot.a" "clipLibrary3.cel[0].cev[7].cevr"
		;
connectAttr "lsa_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary3.cel[0].cev[8].cevr"
		;
connectAttr "lsa_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary3.cel[0].cev[9].cevr"
		;
connectAttr "animCurveTU27.a" "clipLibrary3.cel[0].cev[10].cevr";
connectAttr "animCurveTU28.a" "clipLibrary3.cel[0].cev[11].cevr";
connectAttr "animCurveTU29.a" "clipLibrary3.cel[0].cev[12].cevr";
connectAttr "animCurveTU30.a" "clipLibrary3.cel[0].cev[13].cevr";
connectAttr "animCurveTA582.a" "clipLibrary3.cel[0].cev[14].cevr";
connectAttr "animCurveTA583.a" "clipLibrary3.cel[0].cev[15].cevr";
connectAttr "animCurveTA584.a" "clipLibrary3.cel[0].cev[16].cevr";
connectAttr "animCurveTL205.a" "clipLibrary3.cel[0].cev[17].cevr";
connectAttr "animCurveTL206.a" "clipLibrary3.cel[0].cev[18].cevr";
connectAttr "animCurveTL207.a" "clipLibrary3.cel[0].cev[19].cevr";
connectAttr "animCurveTL208.a" "clipLibrary3.cel[0].cev[20].cevr";
connectAttr "animCurveTL209.a" "clipLibrary3.cel[0].cev[21].cevr";
connectAttr "animCurveTL210.a" "clipLibrary3.cel[0].cev[22].cevr";
connectAttr "animCurveTA585.a" "clipLibrary3.cel[0].cev[23].cevr";
connectAttr "animCurveTA586.a" "clipLibrary3.cel[0].cev[24].cevr";
connectAttr "animCurveTA587.a" "clipLibrary3.cel[0].cev[25].cevr";
connectAttr "animCurveTL211.a" "clipLibrary3.cel[0].cev[26].cevr";
connectAttr "animCurveTL212.a" "clipLibrary3.cel[0].cev[27].cevr";
connectAttr "animCurveTL213.a" "clipLibrary3.cel[0].cev[28].cevr";
connectAttr "animCurveTA588.a" "clipLibrary3.cel[0].cev[29].cevr";
connectAttr "animCurveTA589.a" "clipLibrary3.cel[0].cev[30].cevr";
connectAttr "animCurveTA590.a" "clipLibrary3.cel[0].cev[31].cevr";
connectAttr "animCurveTA591.a" "clipLibrary3.cel[0].cev[32].cevr";
connectAttr "animCurveTA592.a" "clipLibrary3.cel[0].cev[33].cevr";
connectAttr "animCurveTA593.a" "clipLibrary3.cel[0].cev[34].cevr";
connectAttr "animCurveTA594.a" "clipLibrary3.cel[0].cev[35].cevr";
connectAttr "animCurveTA595.a" "clipLibrary3.cel[0].cev[36].cevr";
connectAttr "animCurveTA596.a" "clipLibrary3.cel[0].cev[37].cevr";
connectAttr "animCurveTA597.a" "clipLibrary3.cel[0].cev[38].cevr";
connectAttr "animCurveTA598.a" "clipLibrary3.cel[0].cev[39].cevr";
connectAttr "animCurveTA599.a" "clipLibrary3.cel[0].cev[40].cevr";
connectAttr "animCurveTA600.a" "clipLibrary3.cel[0].cev[41].cevr";
connectAttr "animCurveTA601.a" "clipLibrary3.cel[0].cev[42].cevr";
connectAttr "animCurveTA602.a" "clipLibrary3.cel[0].cev[43].cevr";
connectAttr "animCurveTL214.a" "clipLibrary3.cel[0].cev[44].cevr";
connectAttr "animCurveTL215.a" "clipLibrary3.cel[0].cev[45].cevr";
connectAttr "animCurveTL216.a" "clipLibrary3.cel[0].cev[46].cevr";
connectAttr "animCurveTL217.a" "clipLibrary3.cel[0].cev[47].cevr";
connectAttr "animCurveTL218.a" "clipLibrary3.cel[0].cev[48].cevr";
connectAttr "animCurveTL219.a" "clipLibrary3.cel[0].cev[49].cevr";
connectAttr "animCurveTL220.a" "clipLibrary3.cel[0].cev[50].cevr";
connectAttr "animCurveTL221.a" "clipLibrary3.cel[0].cev[51].cevr";
connectAttr "animCurveTL222.a" "clipLibrary3.cel[0].cev[52].cevr";
connectAttr "animCurveTA603.a" "clipLibrary3.cel[0].cev[53].cevr";
connectAttr "animCurveTA604.a" "clipLibrary3.cel[0].cev[54].cevr";
connectAttr "animCurveTA605.a" "clipLibrary3.cel[0].cev[55].cevr";
connectAttr "animCurveTA606.a" "clipLibrary3.cel[0].cev[56].cevr";
connectAttr "animCurveTA607.a" "clipLibrary3.cel[0].cev[57].cevr";
connectAttr "animCurveTA608.a" "clipLibrary3.cel[0].cev[58].cevr";
connectAttr "animCurveTA609.a" "clipLibrary3.cel[0].cev[59].cevr";
connectAttr "animCurveTA610.a" "clipLibrary3.cel[0].cev[60].cevr";
connectAttr "animCurveTA611.a" "clipLibrary3.cel[0].cev[61].cevr";
connectAttr "animCurveTA612.a" "clipLibrary3.cel[0].cev[62].cevr";
connectAttr "animCurveTA613.a" "clipLibrary3.cel[0].cev[63].cevr";
connectAttr "animCurveTA614.a" "clipLibrary3.cel[0].cev[64].cevr";
connectAttr "animCurveTA615.a" "clipLibrary3.cel[0].cev[65].cevr";
connectAttr "animCurveTA616.a" "clipLibrary3.cel[0].cev[66].cevr";
connectAttr "animCurveTA617.a" "clipLibrary3.cel[0].cev[67].cevr";
connectAttr "animCurveTA618.a" "clipLibrary3.cel[0].cev[68].cevr";
connectAttr "animCurveTA619.a" "clipLibrary3.cel[0].cev[69].cevr";
connectAttr "animCurveTA620.a" "clipLibrary3.cel[0].cev[70].cevr";
connectAttr "animCurveTA621.a" "clipLibrary3.cel[0].cev[71].cevr";
connectAttr "animCurveTA622.a" "clipLibrary3.cel[0].cev[72].cevr";
connectAttr "animCurveTA623.a" "clipLibrary3.cel[0].cev[73].cevr";
connectAttr "animCurveTA624.a" "clipLibrary3.cel[0].cev[74].cevr";
connectAttr "animCurveTA625.a" "clipLibrary3.cel[0].cev[75].cevr";
connectAttr "animCurveTA626.a" "clipLibrary3.cel[0].cev[76].cevr";
connectAttr "animCurveTA627.a" "clipLibrary3.cel[0].cev[77].cevr";
connectAttr "animCurveTA628.a" "clipLibrary3.cel[0].cev[78].cevr";
connectAttr "animCurveTA629.a" "clipLibrary3.cel[0].cev[79].cevr";
connectAttr "animCurveTA630.a" "clipLibrary3.cel[0].cev[80].cevr";
connectAttr "animCurveTA631.a" "clipLibrary3.cel[0].cev[81].cevr";
connectAttr "animCurveTL223.a" "clipLibrary3.cel[0].cev[82].cevr";
connectAttr "animCurveTL224.a" "clipLibrary3.cel[0].cev[83].cevr";
connectAttr "animCurveTL225.a" "clipLibrary3.cel[0].cev[84].cevr";
connectAttr "animCurveTA632.a" "clipLibrary3.cel[0].cev[85].cevr";
connectAttr "animCurveTA633.a" "clipLibrary3.cel[0].cev[86].cevr";
connectAttr "animCurveTA634.a" "clipLibrary3.cel[0].cev[87].cevr";
connectAttr "animCurveTL226.a" "clipLibrary3.cel[0].cev[88].cevr";
connectAttr "animCurveTL227.a" "clipLibrary3.cel[0].cev[89].cevr";
connectAttr "animCurveTL228.a" "clipLibrary3.cel[0].cev[90].cevr";
connectAttr "animCurveTA635.a" "clipLibrary3.cel[0].cev[91].cevr";
connectAttr "animCurveTA636.a" "clipLibrary3.cel[0].cev[92].cevr";
connectAttr "animCurveTA637.a" "clipLibrary3.cel[0].cev[93].cevr";
connectAttr "animCurveTL229.a" "clipLibrary3.cel[0].cev[94].cevr";
connectAttr "animCurveTL230.a" "clipLibrary3.cel[0].cev[95].cevr";
connectAttr "animCurveTL231.a" "clipLibrary3.cel[0].cev[96].cevr";
connectAttr "animCurveTA638.a" "clipLibrary3.cel[0].cev[97].cevr";
connectAttr "animCurveTA639.a" "clipLibrary3.cel[0].cev[98].cevr";
connectAttr "animCurveTA640.a" "clipLibrary3.cel[0].cev[99].cevr";
connectAttr "animCurveTL232.a" "clipLibrary3.cel[0].cev[100].cevr";
connectAttr "animCurveTL233.a" "clipLibrary3.cel[0].cev[101].cevr";
connectAttr "animCurveTL234.a" "clipLibrary3.cel[0].cev[102].cevr";
connectAttr "animCurveTA641.a" "clipLibrary3.cel[0].cev[103].cevr";
connectAttr "animCurveTA642.a" "clipLibrary3.cel[0].cev[104].cevr";
connectAttr "animCurveTA643.a" "clipLibrary3.cel[0].cev[105].cevr";
connectAttr "animCurveTL235.a" "clipLibrary3.cel[0].cev[106].cevr";
connectAttr "animCurveTL236.a" "clipLibrary3.cel[0].cev[107].cevr";
connectAttr "animCurveTL237.a" "clipLibrary3.cel[0].cev[108].cevr";
connectAttr "animCurveTL238.a" "clipLibrary3.cel[0].cev[109].cevr";
connectAttr "animCurveTL239.a" "clipLibrary3.cel[0].cev[110].cevr";
connectAttr "animCurveTL240.a" "clipLibrary3.cel[0].cev[111].cevr";
connectAttr "animCurveTA644.a" "clipLibrary3.cel[0].cev[112].cevr";
connectAttr "animCurveTA645.a" "clipLibrary3.cel[0].cev[113].cevr";
connectAttr "animCurveTA646.a" "clipLibrary3.cel[0].cev[114].cevr";
connectAttr "animCurveTA647.a" "clipLibrary3.cel[0].cev[115].cevr";
connectAttr "animCurveTA648.a" "clipLibrary3.cel[0].cev[116].cevr";
connectAttr "animCurveTA649.a" "clipLibrary3.cel[0].cev[117].cevr";
connectAttr "animCurveTA650.a" "clipLibrary3.cel[0].cev[118].cevr";
connectAttr "animCurveTA651.a" "clipLibrary3.cel[0].cev[119].cevr";
connectAttr "animCurveTA652.a" "clipLibrary3.cel[0].cev[120].cevr";
connectAttr "animCurveTA653.a" "clipLibrary3.cel[0].cev[121].cevr";
connectAttr "animCurveTA654.a" "clipLibrary3.cel[0].cev[122].cevr";
connectAttr "animCurveTA655.a" "clipLibrary3.cel[0].cev[123].cevr";
connectAttr "animCurveTA656.a" "clipLibrary3.cel[0].cev[124].cevr";
connectAttr "animCurveTA657.a" "clipLibrary3.cel[0].cev[125].cevr";
connectAttr "animCurveTA658.a" "clipLibrary3.cel[0].cev[126].cevr";
connectAttr "animCurveTA659.a" "clipLibrary3.cel[0].cev[127].cevr";
connectAttr "animCurveTA660.a" "clipLibrary3.cel[0].cev[128].cevr";
connectAttr "animCurveTA661.a" "clipLibrary3.cel[0].cev[129].cevr";
connectAttr "animCurveTA662.a" "clipLibrary3.cel[0].cev[130].cevr";
connectAttr "animCurveTA663.a" "clipLibrary3.cel[0].cev[131].cevr";
connectAttr "animCurveTA664.a" "clipLibrary3.cel[0].cev[132].cevr";
connectAttr "animCurveTA665.a" "clipLibrary3.cel[0].cev[133].cevr";
connectAttr "animCurveTA666.a" "clipLibrary3.cel[0].cev[134].cevr";
connectAttr "animCurveTA667.a" "clipLibrary3.cel[0].cev[135].cevr";
connectAttr "animCurveTA668.a" "clipLibrary3.cel[0].cev[136].cevr";
connectAttr "animCurveTA669.a" "clipLibrary3.cel[0].cev[137].cevr";
connectAttr "animCurveTA670.a" "clipLibrary3.cel[0].cev[138].cevr";
connectAttr "animCurveTA671.a" "clipLibrary3.cel[0].cev[139].cevr";
connectAttr "animCurveTA672.a" "clipLibrary3.cel[0].cev[140].cevr";
connectAttr "animCurveTA673.a" "clipLibrary3.cel[0].cev[141].cevr";
connectAttr "animCurveTA674.a" "clipLibrary3.cel[0].cev[142].cevr";
connectAttr "animCurveTA675.a" "clipLibrary3.cel[0].cev[143].cevr";
connectAttr "animCurveTA676.a" "clipLibrary3.cel[0].cev[144].cevr";
connectAttr "animCurveTA677.a" "clipLibrary3.cel[0].cev[145].cevr";
connectAttr "animCurveTA678.a" "clipLibrary3.cel[0].cev[146].cevr";
connectAttr "animCurveTA679.a" "clipLibrary3.cel[0].cev[147].cevr";
connectAttr "animCurveTA680.a" "clipLibrary3.cel[0].cev[148].cevr";
connectAttr "animCurveTA681.a" "clipLibrary3.cel[0].cev[149].cevr";
connectAttr "animCurveTA682.a" "clipLibrary3.cel[0].cev[150].cevr";
connectAttr "animCurveTA683.a" "clipLibrary3.cel[0].cev[151].cevr";
connectAttr "animCurveTA684.a" "clipLibrary3.cel[0].cev[152].cevr";
connectAttr "animCurveTA685.a" "clipLibrary3.cel[0].cev[153].cevr";
connectAttr "animCurveTA686.a" "clipLibrary3.cel[0].cev[154].cevr";
connectAttr "animCurveTA687.a" "clipLibrary3.cel[0].cev[155].cevr";
connectAttr "animCurveTA688.a" "clipLibrary3.cel[0].cev[156].cevr";
connectAttr "animCurveTA689.a" "clipLibrary3.cel[0].cev[157].cevr";
connectAttr "animCurveTA690.a" "clipLibrary3.cel[0].cev[158].cevr";
connectAttr "animCurveTA691.a" "clipLibrary3.cel[0].cev[159].cevr";
connectAttr "animCurveTA692.a" "clipLibrary3.cel[0].cev[160].cevr";
connectAttr "animCurveTA693.a" "clipLibrary3.cel[0].cev[161].cevr";
connectAttr "animCurveTA694.a" "clipLibrary3.cel[0].cev[162].cevr";
connectAttr "animCurveTA695.a" "clipLibrary3.cel[0].cev[163].cevr";
connectAttr "animCurveTA696.a" "clipLibrary3.cel[0].cev[164].cevr";
connectAttr "animCurveTA697.a" "clipLibrary3.cel[0].cev[165].cevr";
connectAttr "animCurveTA698.a" "clipLibrary3.cel[0].cev[166].cevr";
connectAttr "animCurveTA699.a" "clipLibrary3.cel[0].cev[167].cevr";
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
// End of lsa_scratch_head.ma
