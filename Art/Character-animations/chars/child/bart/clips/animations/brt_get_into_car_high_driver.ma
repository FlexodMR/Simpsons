//Maya ASCII 4.0 scene
//Name: brt_get_into_car_high_driver.ma
//Last modified: Tue, May 27, 2003 01:42:12 PM
requires maya "4.0";
requires "p3dDeformer" "2.0";
requires "p3dmayaexp" "2.0.3.0";
requires "p3dSimpleShader" "2.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "brt_get_into_car_high_driverSource";
	setAttr ".ihi" 0;
	setAttr ".du" 35;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL821";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL822";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL823";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0.033880036066693167 1 0.0099349545515981501 
		2 0.013338816607573741 3 0.017109762238929512 4 0.018468370803666378 5 0.014635221659785258 
		6 -0.0024489220995347165 7 -0.028807539809652064 8 -0.049166415755372304 
		9 -0.054794623028399755 10 -0.054423088623623495 11 -0.058970377680626289 
		12 -0.080152543324156084 13 -0.10239752763096042 14 -0.10996182374038892 
		15 -0.11355202373191289 16 -0.12282967458329726 17 -0.13977992243941478 18 
		-0.16241762084293662 19 -0.19444887786832377 20 -0.23545124152949268 21 -0.2811834033322988 
		22 -0.32962318658911144 23 -0.37874841461229963 24 -0.42653691071423289 25 
		-0.47060796708114522 26 -0.51230970147430743 27 -0.55521317556864336 28 -0.60288945103907732 
		29 -0.65890958956053303 30 -0.73479523969510185 31 -0.82974119314067885 32 
		-0.92882822627589312 33 -1.0171371154793745 34 -1.079748637129752 35 -1.1017435676056555;
createNode animCurveTL -n "animCurveTL824";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0;
createNode animCurveTL -n "animCurveTL825";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 -0.31833847382171326 1 -0.33426225118239117 
		2 -0.33518924400259326 3 -0.33402689455728862 4 -0.32839466960963704 5 -0.3159120359227981 
		6 -0.28165387121435692 7 -0.23277518762905725 8 -0.20001565357079717 9 -0.20153657676974693 
		10 -0.21917664915602619 11 -0.22919161543345712 12 -0.21547476762885115 13 
		-0.19145396104896362 14 -0.16806480737019494 15 -0.14314168527871676 16 -0.11759033491292362 
		17 -0.093164140664047629 18 -0.068109717557339258 19 -0.038072651682216616 
		20 -0.00022493762010153073 21 0.042387507650713835 22 0.085308214445506569 
		23 0.12408071307955386 24 0.15424853386813256 25 0.17426748443668463 26 0.18710854542527389 
		27 0.19508800667111065 28 0.20052215801140594 29 0.20572728928337061 30 0.21103092174736165 
		31 0.21517109242735555 32 0.21807986480598995 33 0.21968930236590364 34 0.219931468589735 
		35 0.21873842696012216;
createNode animCurveTA -n "animCurveTA2357";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0;
createNode animCurveTU -n "animCurveTU161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU165";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 35 1;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 35 1;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2358";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2359";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2360";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL826";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL827";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL828";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL829";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.21594587158542247 5 -0.21594587158542247 
		8 -0.21594587158542247 16 -0.21594587158542247 19 -0.37773575924096564 24 
		-1.1650366835524333 29 -1.6613877290312453 35 -2.7067620222896518;
	setAttr -s 8 ".kit[2:7]"  3 3 9 9 9 9;
	setAttr -s 8 ".kot[2:7]"  3 3 9 9 9 9;
createNode animCurveTL -n "animCurveTL830";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.21854505205085809 5 0.219 8 
		0.219 16 0.219 19 0.89698164502465982 24 1.7055983104346861 29 1.7236745837384495 
		35 2.3397579865098717;
	setAttr -s 8 ".kit[2:7]"  3 1 9 9 9 9;
	setAttr -s 8 ".kot[2:7]"  3 1 9 9 9 9;
	setAttr -s 8 ".kix[3:7]"  0.025506738573312759 0.0017938015516847372 
		0.0040320968255400658 0.0057818330824375153 0.0032462961971759796;
	setAttr -s 8 ".kiy[3:7]"  0.99967467784881592 0.99999839067459106 
		0.99999189376831055 0.99998331069946289 0.99999475479125977;
	setAttr -s 8 ".kox[3:7]"  0.025506779551506042 0.0017938015516847372 
		0.0040320968255400658 0.0057818330824375153 0.0032462961971759796;
	setAttr -s 8 ".koy[3:7]"  0.99967467784881592 0.99999839067459106 
		0.99999189376831055 0.99998331069946289 0.99999475479125977;
createNode animCurveTL -n "animCurveTL831";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.00078430246903575811 5 0.00078430246903575811 
		8 0.00078430246903575811 16 0.00078430246903575811 19 0.31822463009632762 
		24 1.0890746669629563 29 1.6289704736610506 35 1.7463370961711713;
	setAttr -s 8 ".kit[2:7]"  3 3 9 9 9 9;
	setAttr -s 8 ".kot[2:7]"  3 3 9 9 9 9;
createNode animCurveTA -n "animCurveTA2361";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 8 0 16 25.500583501823861 
		19 46.108085431919399 24 3.4936163337581418 29 4.6237364519497488 35 -27.647037481197401;
	setAttr -s 8 ".kit[2:7]"  3 1 9 9 9 9;
	setAttr -s 8 ".kot[2:7]"  3 1 9 9 9 9;
	setAttr -s 8 ".kix[3:7]"  0.17611777782440186 0.5703015923500061 
		0.41819098591804504 0.55926269292831421 0.33462342619895935;
	setAttr -s 8 ".kiy[3:7]"  0.98436909914016724 -0.82143539190292358 
		-0.9083591103553772 -0.82899045944213867 -0.94235193729400635;
	setAttr -s 8 ".kox[3:7]"  0.17611780762672424 0.5703015923500061 
		0.41819098591804504 0.55926269292831421 0.33462342619895935;
	setAttr -s 8 ".koy[3:7]"  0.98436909914016724 -0.82143539190292358 
		-0.9083591103553772 -0.82899045944213867 -0.94235193729400635;
createNode animCurveTA -n "animCurveTA2362";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 8 -44.707337015817366 16 
		-44.707337015817366 19 -41.561752269563186 24 -31.114331072799949 29 -15.713598145141304 
		35 -1.6471102606573034;
	setAttr -s 8 ".kit[1:7]"  3 3 3 9 9 9 9;
	setAttr -s 8 ".kot[1:7]"  3 3 3 9 9 9 9;
createNode animCurveTA -n "animCurveTA2363";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 8 0 16 0 19 -3.0068693545511485 
		24 -7.8822915333391075 29 -0.30443393062337659 35 -7.7922141916432519;
	setAttr -s 8 ".kit[3:7]"  3 9 9 9 9;
	setAttr -s 8 ".kot[3:7]"  3 9 9 9 9;
createNode animCurveTL -n "animCurveTL832";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.26454016861507795 5 0.26454016861507795 
		8 0.16631258133769897 11 0.16631258133769897 13 0.14825007776311355 16 -0.40958314235447213 
		19 -0.80997322441092767 24 -0.89131982813009758 29 -1.1772046590126868 35 
		-2.2684514818250019;
	setAttr -s 10 ".kit[2:9]"  3 3 1 9 9 9 9 
		9;
	setAttr -s 10 ".kot[2:9]"  3 3 1 9 9 9 9 
		9;
	setAttr -s 10 ".kix[4:9]"  0.013354344293475151 0.0020871914457529783 
		0.0055354423820972443 0.0090765543282032013 0.0026625294703990221 0.001832762616686523;
	setAttr -s 10 ".kiy[4:9]"  -0.99991083145141602 -0.99999779462814331 
		-0.99998468160629272 -0.99995881319046021 -0.99999648332595825 -0.99999833106994629;
	setAttr -s 10 ".kox[4:9]"  0.01335437037050724 0.0020871914457529783 
		0.0055354423820972443 0.0090765543282032013 0.0026625294703990221 0.001832762616686523;
	setAttr -s 10 ".koy[4:9]"  -0.99991083145141602 -0.99999779462814331 
		-0.99998468160629272 -0.99995881319046021 -0.99999648332595825 -0.99999833106994629;
createNode animCurveTL -n "animCurveTL833";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.21854541072049752 5 0.30229407686980136 
		8 0.219 11 0.219 13 0.219 16 0.49091209114063178 19 1.1920966737244216 24 
		1.3072599153851976 29 1.6257567972290514 35 2.3563813522983428;
	setAttr -s 10 ".kit[2:9]"  3 3 3 9 9 9 9 
		9;
	setAttr -s 10 ".kot[2:9]"  3 3 3 9 9 9 9 
		9;
createNode animCurveTL -n "animCurveTL834";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.064904406754016042 5 -0.064904406754016042 
		8 0.37561660389459262 11 0.37561660389459262 13 0.4108138854281434 16 0.69976304988591365 
		19 1.0282866140391134 24 1.0969571644027023 29 1.299223898138901 35 1.7857730582679947;
	setAttr -s 10 ".kit[1:9]"  3 3 3 1 9 9 9 
		9 9;
	setAttr -s 10 ".kot[1:9]"  3 3 3 1 9 9 9 
		9 9;
	setAttr -s 10 ".kix[4:9]"  0.012363358400762081 0.0032389925327152014 
		0.0067136101424694061 0.012302038259804249 0.0053230691701173782 0.0041105463169515133;
	setAttr -s 10 ".kiy[4:9]"  0.99992358684539795 0.99999475479125977 
		0.9999774694442749 0.99992430210113525 0.99998581409454346 0.99999153614044189;
	setAttr -s 10 ".kox[4:9]"  0.012363358400762081 0.0032389925327152014 
		0.0067136101424694061 0.012302038259804249 0.0053230691701173782 0.0041105463169515133;
	setAttr -s 10 ".koy[4:9]"  0.99992358684539795 0.99999475479125977 
		0.9999774694442749 0.99992430210113525 0.99998581409454346 0.99999153614044189;
createNode animCurveTA -n "animCurveTA2364";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 15.829425701546842 8 1.248306076999107 
		11 1.248306076999107 13 6.1588631476282867 16 44.491483723139034 19 -6.4712729195228098 
		24 30.45300710738308 29 72.988016469921533 35 -28.33147073208438;
	setAttr -s 10 ".kit[2:9]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 10 ".kot[2:9]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA2365";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 25.948901905116401 5 25.948901905116429 
		8 -61.553423410474444 11 -61.553423410474444 13 -60.939293012521325 16 -60.901424625617686 
		19 -52.522527895889915 24 -66.370680344634792 29 -53.592662493032449 35 10.113681911874204;
	setAttr -s 10 ".kit[1:9]"  3 3 9 9 9 9 9 
		9 9;
	setAttr -s 10 ".kot[1:9]"  3 3 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA2366";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 -4.0653566202778446 11 
		-4.0653566202778446 13 -5.5582644250639097 16 -9.4502247766973682 19 -26.169168266718742 
		24 -11.726845019174959 29 -20.866841543492903 35 -3.6896128937020114;
	setAttr -s 10 ".kit[1:9]"  3 3 9 9 9 9 9 
		9 9;
	setAttr -s 10 ".kot[1:9]"  3 3 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA2367";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2368";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2369";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2370";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2371";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2372";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2373";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2374";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2375";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2376";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2377";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2378";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL835";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 0;
createNode animCurveTL -n "animCurveTL836";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 0;
createNode animCurveTL -n "animCurveTL837";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 5 1 8 1 11 1 13 1 16 1 19 1 
		24 1 29 1 35 1;
createNode animCurveTL -n "animCurveTL838";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 -0.034660776702225261 
		13 -0.039645834214116132 16 -0.037136546583753045 19 -0.034660776702225261 
		24 -0.034660776702225261 29 -0.034660776702225261 35 0;
createNode animCurveTL -n "animCurveTL839";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0.43236842264083392 
		13 0.49455345370157783 16 0.46325188044122045 19 0.43236842264083392 24 0.43236842264083392 
		29 0.43236842264083392 35 0;
createNode animCurveTL -n "animCurveTL840";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 5 1 8 1 11 1.022596790343715 
		13 1.0258467549941159 16 1.024210846778379 19 1.022596790343715 24 1.022596790343715 
		29 1.022596790343715 35 1;
createNode animCurveTL -n "animCurveTL841";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.076472881617957691 5 0.033034131700396582 
		8 -0.11097678539180074 11 -0.13310595958220145 13 -0.23112826660158545 16 
		-0.27724702373664167 19 -0.43890348843481664 24 -0.96276481567283712 29 -1.487268636320489 
		35 -2.4868186460309505;
createNode animCurveTL -n "animCurveTL842";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.95473100313980441 5 0.9224657007074174 
		8 0.89013364363267944 11 0.7219081613832331 13 0.66797672450417989 16 0.8448476521299747 
		19 1.508052198281272 24 2.0686664276101476 29 2.3677091613827397 35 2.700287576050838;
createNode animCurveTL -n "animCurveTL843";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0.0054768742817095494 8 0.26707430322503661 
		11 0.20121930020139275 13 0.2863994685637829 16 0.45312196927940257 19 0.63260661812291974 
		24 1.0667075507862014 29 1.1829036717395498 35 1.2122719755191118;
createNode animCurveTA -n "animCurveTA2379";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.62843630316474508 5 -4.0647210446877668 
		8 -1.8959560750666928 11 0.039907503397905005 13 1.6246534025556567 16 4.836747886637859 
		19 -6.2042270125640515 24 13.743731954749155 29 -7.8826714955125015 35 -26.004389268796523;
createNode animCurveTA -n "animCurveTA2380";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 5.8284402688137167 5 -6.129632983176454 
		8 -7.5987312358901162 11 -10.412976604800045 13 -22.545275206268631 16 -46.307982231864941 
		19 -13.448331038318274 24 -35.938490860670051 29 -14.052658823380797 35 0;
createNode animCurveTA -n "animCurveTA2381";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1.295636019309746 5 1.7490863204697844 
		8 0.01571029292273337 11 -2.4280299873568705 13 -4.0188984339622564 16 -5.4412261522521899 
		19 -5.5397258482733402 24 -7.309129177534067 29 1.3148835681179702 35 0;
createNode animCurveTA -n "animCurveTA2382";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2383";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2384";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2385";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2386";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2387";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2388";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2389";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2390";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2391";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2392";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2393";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2394";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2395";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2396";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2397";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2398";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2399";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2400";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2401";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2402";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 11 0 19 0 35 0;
	setAttr -s 5 ".kit[1:4]"  3 9 1 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA2403";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 11 0 19 0 35 0;
	setAttr -s 5 ".kit[1:4]"  3 9 1 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA2404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 11 -24.501661700242042 
		19 0 35 0;
	setAttr -s 5 ".kit[1:4]"  3 9 1 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[3:4]"  0.29765972495079041 1;
	setAttr -s 5 ".kiy[3:4]"  0.95467203855514526 0;
	setAttr -s 5 ".kox[1:4]"  1 1 0.88190943002700806 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0.4714188277721405 0;
createNode animCurveTA -n "animCurveTA2405";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2406";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL844";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.5198069948790518 12 -0.5198069948790518 
		35 -0.5198069948790518;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL845";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.72394202659893114 12 -0.72394202659893114 
		35 -0.72394202659893114;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL846";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.36439499068905612 12 0.36439499068905612 
		35 0.36439499068905612;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2408";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.7976222737965317 12 7.7976222737965317 
		35 7.7976222737965317;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 30.409274105849079 12 30.409274105849079 
		35 30.409274105849079;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2410";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 64.859940280210893 12 64.859940280210893 
		35 64.859940280210893;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL847";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.43524234076486068 12 0.43524234076486068 
		35 0.43524234076486068;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL848";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.82665738350180629 12 -0.82665738350180629 
		35 -0.82665738350180629;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL849";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.27773886459742925 12 0.27773886459742925 
		35 0.27773886459742925;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2411";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2412";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -28.652637602052774 12 -28.652637602052774 
		35 -28.652637602052774;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2413";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -64.676908227303443 12 -64.676908227303443 
		35 -64.676908227303443;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL850";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.61083301393139333 5 -0.71855072776607709 
		8 -1.2255779816172274 11 -1.2255779816172274 18 -1.2255779816172274 22 -1.6063322105982709 
		29 -3.1841829250049414 35 -3.931605807385496;
	setAttr -s 8 ".kit[2:7]"  3 9 3 9 9 9;
	setAttr -s 8 ".kot[2:7]"  3 9 3 9 9 9;
createNode animCurveTL -n "animCurveTL851";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.0211562878106184 5 1.599106442649618 
		8 2.2457022896772938 11 2.2457022896772938 18 2.2457022896772938 22 2.9261396535163482 
		29 3.7264405448428772 35 3.5323712155812759;
	setAttr -s 8 ".kit[2:7]"  3 9 3 9 9 9;
	setAttr -s 8 ".kot[2:7]"  3 9 3 9 9 9;
createNode animCurveTL -n "animCurveTL852";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.14314299916678522 5 0.51002739429578037 
		8 0.45278061540622061 11 0.45278061540622061 18 0.45278061540622061 22 0.79864032246517247 
		29 1.4686835442306267 35 1.8970414092731005;
	setAttr -s 8 ".kit[2:7]"  3 9 3 9 9 9;
	setAttr -s 8 ".kot[2:7]"  3 9 3 9 9 9;
createNode animCurveTA -n "animCurveTA2414";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 16.226511010665408 5 55.598837649680043 
		8 17.578216977008857 11 17.578216977008857 18 17.578216977008857 22 16.080200011728628 
		29 4.6613644930380378 35 -26.203413720634714;
	setAttr -s 8 ".kit[2:7]"  3 9 3 9 9 9;
	setAttr -s 8 ".kot[2:7]"  3 9 3 9 9 9;
createNode animCurveTA -n "animCurveTA2415";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 8.513966085499284 5 30.973734338623142 
		8 37.36166010901858 11 37.36166010901858 18 37.36166010901858 22 38.214040342966832 
		29 36.108857241373819 35 14.791961579779635;
	setAttr -s 8 ".kit[2:7]"  3 9 3 9 9 9;
	setAttr -s 8 ".kot[2:7]"  3 9 3 9 9 9;
createNode animCurveTA -n "animCurveTA2416";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 68.213989601412422 5 82.208920420259716 
		8 -48.871336699981519 11 -48.871336699981519 18 -48.871336699981519 22 -38.468597814997793 
		29 2.913287519114713 35 45.895436695401962;
	setAttr -s 8 ".kit[2:7]"  3 9 3 9 9 9;
	setAttr -s 8 ".kot[2:7]"  3 9 3 9 9 9;
createNode animCurveTL -n "animCurveTL853";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.8448236677023373 5 0.91837917750249576 
		8 0.55248830610092636 11 0.19914939983053262 19 0.4541042621832414 24 -0.85499367162938922 
		29 -0.97483610052649927 35 -2.4602374361275703;
createNode animCurveTL -n "animCurveTL854";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.0304014029588007 5 1.2710208262091869 
		8 1.3998379261856073 11 0.94238234127353337 19 2.1100425063184973 24 3.1672059404565376 
		29 3.4237832083828232 35 3.4231722557013233;
	setAttr -s 8 ".kit[0:7]"  1 1 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  1 1 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0.027554266154766083 0.0038020708598196507 
		0.0060856016352772713 0.0051627629436552525 0.0019477162277325988 0.0025372758973389864 
		0.014323331415653229 0.95637273788452148;
	setAttr -s 8 ".kiy[0:7]"  -0.99962025880813599 0.99999278783798218 
		-0.99998146295547485 0.99998664855957031 0.99999809265136719 0.99999678134918213 
		0.99989742040634155 -0.29214927554130554;
	setAttr -s 8 ".kox[0:7]"  0.027554243803024292 0.0038020547945052385 
		0.0060856016352772713 0.0051627629436552525 0.0019477162277325988 0.0025372758973389864 
		0.014323331415653229 0.95637273788452148;
	setAttr -s 8 ".koy[0:7]"  -0.99962025880813599 0.99999278783798218 
		-0.99998146295547485 0.99998664855957031 0.99999809265136719 0.99999678134918213 
		0.99989742040634155 -0.29214927554130554;
createNode animCurveTL -n "animCurveTL855";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.097994651149805143 5 0.25669475715425083 
		8 1.2299450602520627 11 1.0211962728127559 19 1.1621376358051472 24 2.4267708391848717 
		29 1.911133164589004 35 1.7944971222828583;
createNode animCurveTA -n "animCurveTA2417";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 5.4739599453216465 5 -6.8408848116811125 
		8 -178.71153037370181 11 -178.71153037370181 19 -86.806087288381434 24 -166.81562693844464 
		29 -67.608628801834271 35 -33.734888782993906;
createNode animCurveTA -n "animCurveTA2418";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -8.5874521608419823 5 -30.714124774991525 
		8 -65.402991895939863 11 -65.402991895939863 19 -83.115443895632339 24 -64.640282392072066 
		29 -56.181193940025288 35 -14.870586397896902;
createNode animCurveTA -n "animCurveTA2419";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -74.754744621954103 5 -52.637498007569562 
		8 97.890271845644079 11 97.890271845644079 19 61.012916349425659 24 165.05975398489667 
		29 38.016487377603077 35 -30.592169336881899;
createNode animCurveTL -n "animCurveTL856";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.10167917362943303 5 0.31054502397108613 
		8 0.31054502397108613 11 0.31054502397108613 13 0.57475497769065642 16 0.31054502397108613 
		19 0.31054502397108613 24 0.31054502397108613 29 0.31054502397108613 35 0.31054502397108613;
createNode animCurveTL -n "animCurveTL857";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.40762644910266188 5 -0.55640530640609931 
		8 -0.55640530640609931 11 -0.55640530640609931 13 -0.46368057267507495 16 
		-0.55640530640609931 19 -0.55640530640609931 24 -0.55640530640609931 29 -0.55640530640609931 
		35 -0.55640530640609931;
createNode animCurveTL -n "animCurveTL858";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.93129112588482243 5 -0.57914122395678103 
		8 -0.57914122395678103 11 -0.57914122395678103 13 -0.41090360985775853 16 
		-0.57914122395678103 19 -0.57914122395678103 24 -0.57914122395678103 29 -0.57914122395678103 
		35 -0.57914122395678103;
createNode animCurveTL -n "animCurveTL859";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 -0.17523930523423681 8 -0.0081422950894450806 
		11 -0.56986698548929338 13 -0.43094386535405876 16 -0.047646009069586132 
		19 -0.063331173333856433 24 -0.063331173333856433 29 -0.37736680843384973 
		35 -0.063331173333856433;
createNode animCurveTL -n "animCurveTL860";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 -0.00072435787012014696 8 
		-0.69388626071362391 11 -0.68144477726767505 13 -0.69172518239403591 16 -0.70977769184901862 
		19 -0.69960805773293522 24 -0.69960805773293522 29 -0.54343311259648019 35 
		-0.69960805773293522;
createNode animCurveTL -n "animCurveTL861";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1 5 -0.80201435285893019 8 -0.75622028871403923 
		11 -0.54511080870143536 13 -0.55693487641830486 16 -0.64237249774344829 19 
		-0.66762598980258558 24 -0.66762598980258558 29 -0.97043124551903082 35 -0.66762598980258558;
createNode animCurveTA -n "animCurveTA2420";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.061808866237340665 5 -0.061808866237337522 
		8 -0.061808866237337522 11 -0.061808866237337522 13 -0.061808866237337522 
		16 -0.061808866237337522 19 -0.061808866237337522 24 -0.061808866237337522 
		29 -0.061808866237337522 35 -0.061808866237340665;
createNode animCurveTA -n "animCurveTA2421";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -59.058178941076754 5 -59.058178941076754 
		8 -59.058178941076754 11 -59.058178941076754 13 -59.058178941076754 16 -59.058178941076754 
		19 -59.058178941076754 24 -59.058178941076754 29 -59.058178941076754 35 -59.058178941076754;
createNode animCurveTA -n "animCurveTA2422";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 16.57914742975785 5 16.579147429757843 
		8 16.579147429757843 11 16.579147429757843 13 16.579147429757843 16 16.579147429757843 
		19 16.579147429757843 24 16.579147429757843 29 16.579147429757843 35 16.57914742975785;
createNode animCurveTA -n "animCurveTA2423";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 12.253734489678925 5 12.253734489678925 
		8 12.253734489678925 11 12.253734489678925 13 12.253734489678925 16 12.253734489678925 
		19 12.253734489678925 24 12.253734489678925 29 12.253734489678925 35 12.253734489678925;
createNode animCurveTA -n "animCurveTA2424";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -65.746751280844975 5 -65.746751280844961 
		8 -65.746751280844961 11 -65.746751280844961 13 -65.746751280844961 16 -65.746751280844961 
		19 -65.746751280844961 24 -65.746751280844961 29 -65.746751280844961 35 -65.746751280844975;
createNode animCurveTA -n "animCurveTA2425";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 0;
createNode animCurveTA -n "animCurveTA2426";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 15.711328223519061 5 15.711328223519057 
		8 15.711328223519057 11 15.711328223519057 13 15.711328223519057 16 15.711328223519057 
		19 15.711328223519057 24 15.711328223519057 29 15.711328223519057 35 15.711328223519061;
createNode animCurveTA -n "animCurveTA2427";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 8.5572674112203657 5 8.5572674112203622 
		8 8.5572674112203622 11 8.5572674112203622 13 8.5572674112203622 16 8.5572674112203622 
		19 8.5572674112203622 24 8.5572674112203622 29 8.5572674112203622 35 8.5572674112203657;
createNode animCurveTA -n "animCurveTA2428";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 0;
createNode animCurveTA -n "animCurveTA2429";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 0;
createNode animCurveTA -n "animCurveTA2430";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 0;
createNode animCurveTA -n "animCurveTA2431";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 0;
createNode animCurveTA -n "animCurveTA2432";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 0;
createNode animCurveTA -n "animCurveTA2433";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 0;
createNode animCurveTA -n "animCurveTA2434";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -314.06902610532836 5 -184.57169410760673 
		8 -184.57169410760673 11 -184.57169410760673 13 -184.57169410760673 16 -184.57169410760673 
		19 -184.57169410760673 24 -184.57169410760673 29 -184.57169410760673 35 -364.07092315035499;
createNode animCurveTA -n "animCurveTA2435";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 28.612774017129329 5 23.263402056531085 
		8 23.263402056531085 11 23.263402056531085 13 23.263402056531085 16 23.263402056531085 
		19 23.263402056531085 24 23.263402056531085 29 23.263402056531085 35 23.263402056531095;
createNode animCurveTA -n "animCurveTA2436";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 17.632837226638049 5 20.166277752815617 
		8 20.166277752815617 11 20.166277752815617 13 20.166277752815617 16 20.166277752815617 
		19 20.166277752815617 24 20.166277752815617 29 20.166277752815617 35 20.166277752815628;
createNode animCurveTA -n "animCurveTA2437";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 0;
createNode animCurveTA -n "animCurveTA2438";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 0;
createNode animCurveTA -n "animCurveTA2439";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 33.429092416277157 5 33.429092416277157 
		8 33.429092416277157 11 33.429092416277157 13 33.429092416277157 16 33.429092416277157 
		19 33.429092416277157 24 33.429092416277157 29 33.429092416277157 35 33.429092416277157;
createNode animCurveTA -n "animCurveTA2440";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2441";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2442";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2443";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2444";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2445";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.994403295754109 12 13.994403295754109 
		35 13.994403295754109;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2446";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2447";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2448";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2449";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 0;
createNode animCurveTA -n "animCurveTA2450";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 0;
createNode animCurveTA -n "animCurveTA2451";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 17.254116939558369 5 17.254116939558369 
		8 17.254116939558369 11 17.254116939558369 13 17.254116939558369 16 17.254116939558369 
		19 17.254116939558369 24 17.254116939558369 29 17.254116939558369 35 17.254116939558369;
createNode animCurveTA -n "animCurveTA2452";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 0;
createNode animCurveTA -n "animCurveTA2453";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 0;
createNode animCurveTA -n "animCurveTA2454";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 0;
createNode animCurveTA -n "animCurveTA2455";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.65073001024951671 5 -7.8430056866173823 
		8 -7.8430056866173823 11 -7.8430056866173823 13 -3.1422186943800172 16 1.6600682412462473 
		19 3.2428821218103816 24 7.5359565583949033 29 25.890727135803381 35 1.373100660218926;
createNode animCurveTA -n "animCurveTA2456";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 4.2368721935960938 5 3.8867637360502716 
		8 2.4212113907903019 11 2.4212113907903019 13 3.277217456030439 16 5.6886338817782773 
		19 11.812075050518553 24 14.036813544292096 29 1.1313888543542436 35 -0.38374158911587308;
createNode animCurveTA -n "animCurveTA2457";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 2.6995264082587447 5 14.868855041301886 
		8 14.868855041301886 11 10.500432497048379 13 5.4073582592798379 16 5.1436031948885814 
		19 12.445502596270925 24 28.799747256025494 29 16.15457756926455 35 0.96901743689791298;
createNode animCurveTA -n "animCurveTA2458";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 -7.1097278539792699 8 -7.1097278539792699 
		11 -7.1097278539792699 13 -7.1097278539792699 16 -7.1097278539792699 19 -7.1097278539792699 
		24 -7.1097278539792699 29 -7.1097278539792699 35 2.2144674450583466;
createNode animCurveTA -n "animCurveTA2459";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 5.3642380392152509;
createNode animCurveTA -n "animCurveTA2460";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 -3.2584064202075544;
createNode animCurveTA -n "animCurveTA2461";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0.32948933226534777 11 4.936665607567444 
		19 -4.5694554420318401 24 -0.12411851461326476 29 23.846512789232317 35 -4.9690701715193732;
createNode animCurveTA -n "animCurveTA2462";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 18.393019233450623 11 9.7792069540852147 
		19 16.486420038233504 24 0.36620260693962053 29 42.637998316794274 35 2.9904681746768529;
createNode animCurveTA -n "animCurveTA2463";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 6.6786334979782902 5 -4.9128688560489149 
		11 -4.5159477481657264 19 3.8471327775177588 24 -15.63197985514657 29 17.099736619293381 
		35 14.780225156536881;
createNode animCurveTA -n "animCurveTA2464";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1.8903601258661935 5 1.8903601258661931 
		8 1.8903601258661931 11 1.8903601258661931 13 1.244781736270514 16 -1.4672032523553795 
		19 -4.5893511886976759 24 -1.0195281352591681 29 1.8903601258661931 35 -2.211833892135727;
createNode animCurveTA -n "animCurveTA2465";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -2.5597289571479038 5 -2.5597289571479034 
		8 -2.5597289571479034 11 -2.5597289571479034 13 -2.6724695929758124 16 -3.0842593602314001 
		19 -4.0062478491451934 24 -3.7253520751112297 29 -2.5597289571479034 35 -1.7086730360615547;
createNode animCurveTA -n "animCurveTA2466";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 2.0168110874036049 5 2.016811087403604 
		8 2.016811087403604 11 2.016811087403604 13 1.0722090263170199 16 -2.0736047826525068 
		19 -7.2946582505866582 24 0.14944732063885902 29 2.016811087403604 35 2.7082804953288213;
createNode animCurveTA -n "animCurveTA2467";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 0;
createNode animCurveTA -n "animCurveTA2468";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 0;
createNode animCurveTA -n "animCurveTA2469";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 27.080064458283051 5 27.080064458283051 
		8 27.080064458283051 11 27.080064458283051 13 27.080064458283051 16 27.080064458283051 
		19 27.080064458283051 24 27.080064458283051 29 27.080064458283051 35 27.080064458283051;
createNode animCurveTA -n "animCurveTA2470";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -49.11042636656596 5 -182.40128137086998 
		8 -182.40128137086998 11 -182.40128137086998 13 -182.40128137086998 16 -182.40128137086998 
		19 -182.40128137086998 24 -182.40128137086998 29 -182.40128137086998 35 -369.87334395712912;
createNode animCurveTA -n "animCurveTA2471";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 27.804554996454378 5 27.722848255843903 
		8 27.722848255843903 11 27.722848255843903 13 27.722848255843903 16 27.722848255843903 
		19 27.722848255843903 24 27.722848255843903 29 27.722848255843903 35 27.722848255843903;
createNode animCurveTA -n "animCurveTA2472";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 29.452980944098744 5 21.576484776388227 
		8 21.576484776388227 11 21.576484776388227 13 21.576484776388227 16 21.576484776388227 
		19 21.576484776388227 24 21.576484776388227 29 21.576484776388227 35 21.576484776388227;
createNode animCurveTA -n "animCurveTA2473";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 0;
createNode animCurveTA -n "animCurveTA2474";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 0;
createNode animCurveTA -n "animCurveTA2475";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 27.911632519594587 5 27.911632519594587 
		8 27.911632519594587 11 27.911632519594587 13 27.911632519594587 16 27.911632519594587 
		19 27.911632519594587 24 27.911632519594587 29 27.911632519594587 35 27.911632519594587;
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
connectAttr "brt_get_into_car_high_driverSource.st" "clipLibrary1.st[0]"
		;
connectAttr "brt_get_into_car_high_driverSource.du" "clipLibrary1.du[0]"
		;
connectAttr "animCurveTL821.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL822.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL823.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL824.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL825.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA2357.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU161.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU162.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU163.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU164.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU165.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU166.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU167.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU168.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA2358.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA2359.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA2360.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL826.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL827.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL828.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL829.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL830.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL831.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA2361.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA2362.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA2363.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL832.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL833.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL834.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA2364.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA2365.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA2366.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA2367.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA2368.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA2369.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA2370.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA2371.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA2372.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA2373.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA2374.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA2375.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA2376.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA2377.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA2378.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL835.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL836.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL837.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL838.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL839.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL840.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL841.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL842.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL843.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA2379.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA2380.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA2381.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA2382.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA2383.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA2384.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA2385.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA2386.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA2387.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA2388.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA2389.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA2390.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA2391.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA2392.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA2393.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA2394.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA2395.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA2396.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA2397.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA2398.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA2399.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA2400.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA2401.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA2402.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA2403.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA2404.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA2405.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA2406.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA2407.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL844.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL845.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL846.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA2408.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA2409.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA2410.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL847.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL848.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL849.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA2411.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA2412.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA2413.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL850.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL851.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL852.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA2414.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA2415.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA2416.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL853.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL854.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL855.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA2417.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA2418.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA2419.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL856.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL857.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL858.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL859.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL860.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL861.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA2420.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA2421.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA2422.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA2423.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA2424.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA2425.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA2426.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA2427.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA2428.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA2429.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA2430.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA2431.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA2432.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA2433.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA2434.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA2435.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA2436.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA2437.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA2438.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA2439.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA2440.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA2441.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA2442.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA2443.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA2444.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA2445.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA2446.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA2447.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA2448.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA2449.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA2450.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA2451.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA2452.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA2453.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA2454.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA2455.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA2456.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA2457.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA2458.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA2459.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA2460.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA2461.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA2462.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA2463.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA2464.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA2465.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA2466.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA2467.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA2468.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA2469.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA2470.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA2471.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA2472.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA2473.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA2474.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA2475.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of brt_get_into_car_high_driver.ma
