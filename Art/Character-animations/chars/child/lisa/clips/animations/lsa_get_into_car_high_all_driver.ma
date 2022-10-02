//Maya ASCII 4.0 scene
//Name: lsa_get_into_car_high_all_driver.ma
//Last modified: Fri, Oct 11, 2002 02:56:00 PM
requires maya "4.0";
requires "p3dmayaexp" "18.6";
requires "p3dSimpleShader" "18.6";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "lsa_get_into_car_high_all_driverSource";
	setAttr ".ihi" 0;
	setAttr ".du" 60;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL1067";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL1068";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL1069";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0.033135114381557439 1 0.034814082662384324 
		2 0.037612363130429143 3 0.038172019224038095 4 0.033135114381557439 5 0.012945127168954665 
		6 -0.015204413867208933 7 -0.029546370317696392 8 -0.02173354166445364 9 
		-0.0034126821166036428 10 0.017192414644324805 11 0.031857954936802921 12 
		0.036656194744748863 13 0.035768582764144671 14 0.033135114381557439 15 0.031398508548072794 
		16 0.029804107510137113 17 0.027195841597358578 18 0.022417641139345384 19 
		0.014313436465705733 20 -0.0037100942172296754 21 -0.028831655631260191 22 
		-0.048085391838972723 23 -0.053589851497391268 24 -0.053226486034181272 25 
		-0.057673793667891778 26 -0.078390226202550581 27 -0.1001461091647453 28 
		-0.1075440887981934 29 -0.11105535092133978 30 -0.12012901369866455 31 -0.13670657578869871 
		32 -0.1588465382273252 33 -0.19017352274505037 34 -0.23035126629377647 35 
		-0.27523171419598469 36 -0.3227218007380499 37 -0.37072846020634698 38 -0.41715862688725092 
		39 -0.45934477585107014 40 -0.49868228461514091 41 -0.53917244113638008 42 
		-0.58481653337170392 43 -0.63961584927802939 44 -0.71515143181193797 45 -0.81027902181701639 
		46 -0.90991195408068826 47 -0.99896356339037773 48 -1.0623471845335084 49 
		-1.0849761522975041 50 -1.0337040716247212 51 -0.91545620615882073 52 -0.77525337873918243 
		53 -0.65811641220518724 54 -0.60906612939621529 55 -0.6333022893477539 56 
		-0.69719761952783432 57 -0.7875323954246527 58 -0.89108689252640616 59 -0.99464138632129107 
		60 -1.0849761522975041;
createNode animCurveTL -n "animCurveTL1070";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 
		0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0;
createNode animCurveTL -n "animCurveTL1071";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 -6.5919098452128533e-005 13 -0.00013183819690425707 
		14 0 15 -0.0018777769822616018 16 -0.0058943705698892594 17 -0.0087347668950435147 
		18 -0.0070839520898849121 19 0.002373087713425997 20 0.035047359478415314 
		21 0.083266674190353246 22 0.1157212517496955 23 0.11423376914892265 24 0.096981549727794769 
		25 0.087186782907686555 26 0.10060203784027659 27 0.12409469800141226 28 
		0.14696959343860205 29 0.17134472986469665 30 0.19633428168533734 31 0.22022341624084388 
		32 0.24472696676158404 33 0.27410360648827575 34 0.31036483511206842 35 0.35053170635103476 
		36 0.39137722448627799 37 0.42967439379890066 38 0.46219621857000603 39 0.49021063039207619 
		40 0.51586895968480717 41 0.53726930897012259 42 0.55250978076994639 43 0.55968847760620233 
		44 0.55711874894025593 45 0.54656155491362168 46 0.53128641406844601 47 0.51456284494687543 
		48 0.49966036609105657 49 0.48984849604313591 50 0.48609257449611581 51 0.48606864244111014 
		52 0.48811227036743243 53 0.49055902876439589 54 0.49174448812131405 55 0.49164793296582432 
		56 0.49139337846645398 57 0.49103349107385158 58 0.49062093723866546 59 0.49020838341154405 
		60 0.48984849604313591;
createNode animCurveTA -n "animCurveTA3071";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 
		0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0;
createNode animCurveTU -n "animCurveTU209";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU210";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU211";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU212";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU213";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU214";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU215";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 26 1 60 1;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU216";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 26 1 60 1;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3072";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3073";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3074";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL1072";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL1073";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL1074";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL1075";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.21594587158542247 4 -0.21594587158542247 
		7 -0.21594587158542247 11 -0.21594587158542247 14 -0.21594587158542247 19 
		-0.21594587158542247 22 -0.21594587158542247 30 -0.21594587158542247 33 -0.37773575924096564 
		38 -1.1650366835524333 43 -1.6613877290312453 49 -2.7239713357678643 54 -2.0265987355345594 
		60 -2.7239713357678643;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 3 
		3 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 3 
		3 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL1076";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.1380615615975922 4 0.14137691863350235 
		7 0.14137691863350235 11 0.14137691863350235 14 0.1380615615975922 19 0.14183186658264427 
		22 0.14183186658264427 30 0.14183186658264427 33 0.89698164502465982 38 1.7055983104346861 
		43 1.7236745837384495 49 2.3644614825362704 54 2.3426796094004652 60 2.3644614825362704;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 3 
		3 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 3 
		3 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL1077";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.00078430246903575811 4 0.00078430246903575811 
		7 0.00078430246903575811 11 0.00078430246903575811 14 0.00078430246903575811 
		19 0.00078430246903575811 22 0.00078430246903575811 30 0.00078430246903575811 
		33 0.31822463009632762 38 1.0890746669629563 43 1.6289704736610506 49 1.7939370303188074 
		54 1.4333447243398911 60 1.7939370303188074;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 3 
		3 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 3 
		3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA3075";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 4 0 7 0 11 0 14 0 19 0 22 0 
		30 25.500583501823861 33 46.108085431919399 38 3.4936163337581418 43 4.6237364519497488 
		49 -27.647037481197401 54 30.7227137734269 60 -27.647037481197401;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 3 
		1 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 3 
		1 9 9 9 9 9 9;
	setAttr -s 14 ".kix[7:13]"  0.17611777782440186 0.5703015923500061 
		0.41819098591804504 0.55926269292831421 0.6270449161529541 1 0.19264283776283264;
	setAttr -s 14 ".kiy[7:13]"  0.98436909914016724 -0.82143539190292358 
		-0.9083591103553772 -0.82899045944213867 0.77898311614990234 0 -0.98126894235610962;
	setAttr -s 14 ".kox[7:13]"  0.17611780762672424 0.5703015923500061 
		0.41819098591804504 0.55926269292831421 0.6270449161529541 1 0.19264283776283264;
	setAttr -s 14 ".koy[7:13]"  0.98436909914016724 -0.82143539190292358 
		-0.9083591103553772 -0.82899045944213867 0.77898311614990234 0 -0.98126894235610962;
createNode animCurveTA -n "animCurveTA3076";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 4 0 7 0 11 0 14 0 19 0 22 -44.707337015817366 
		30 -44.707337015817366 33 -41.561752269563186 38 -31.114331072799949 43 -15.713598145141304 
		49 -1.6471102606573034 54 -23.559044833361053 60 -1.6471102606573034;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 3 3 
		3 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 3 3 
		3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA3077";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 4 0 7 0 11 0 14 0 19 0 22 0 
		30 0 33 -3.0068693545511485 38 -7.8822915333391075 43 -0.30443393062337659 
		49 -7.7922141916432519 54 -15.013213858909364 60 -7.7922141916432519;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		3 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		3 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL1078";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0.26454016861507795 4 0.26454016861507795 
		7 0.26454016861507795 11 0.26454016861507795 14 0.26454016861507795 19 0.26454016861507795 
		22 0.16631258133769897 25 0.16631258133769897 27 0.14825007776311355 30 -0.40958314235447213 
		33 -0.80997322441092767 38 -0.89131982813009758 43 -1.1772046590126868 49 
		-2.2856607953032229 54 -1.5394582886391421 60 -2.2856607953032229;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 3 
		3 1 9 9 9 9 9 9 9;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 3 
		3 1 9 9 9 9 9 9 9;
	setAttr -s 16 ".kix[8:15]"  0.013354344293475151 0.0020871914457529783 
		0.0055354423820972443 0.0090765543282032013 0.0026296682190150023 0.010121302679181099 
		1 0.0026802283246070147;
	setAttr -s 16 ".kiy[8:15]"  -0.99991083145141602 -0.99999779462814331 
		-0.99998468160629272 -0.99995881319046021 -0.99999654293060303 -0.99994879961013794 
		0 -0.99999642372131348;
	setAttr -s 16 ".kox[8:15]"  0.01335437037050724 0.0020871914457529783 
		0.0055354423820972443 0.0090765543282032013 0.0026296682190150023 0.010121302679181099 
		1 0.0026802283246070147;
	setAttr -s 16 ".koy[8:15]"  -0.99991083145141602 -0.99999779462814331 
		-0.99998468160629272 -0.99995881319046021 -0.99999654293060303 -0.99994879961013794 
		0 -0.99999642372131348;
createNode animCurveTL -n "animCurveTL1079";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0.13806192026723146 4 0.1409760382998537 
		7 0.1409760382998537 11 0.1409760382998537 14 0.13806192026723146 19 0.22472470444915757 
		22 0.14143062757935621 25 0.14143062757935621 27 0.14143062757935621 30 0.49091209114063178 
		33 1.1920966737244216 38 1.3072599153851976 43 1.7022919425840974 49 2.381084848324742 
		54 2.2146718429531851 60 2.381084848324742;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 3 
		3 3 9 9 9 9 9 9 9;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 3 
		3 3 9 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL1080";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -0.064904406754016042 4 -0.064904406754016042 
		7 -0.064904406754016042 11 -0.064904406754016042 14 -0.064904406754016042 
		19 -0.064904406754016042 22 0.37561660389459262 25 0.37561660389459262 27 
		0.4108138854281434 30 0.69976304988591365 33 1.0282866140391134 38 1.0969571644027023 
		43 1.299223898138901 49 1.801244371336878 54 1.5753762720477491 60 1.801244371336878;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 3 3 
		3 1 9 9 9 9 9 9 9;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 3 3 
		3 1 9 9 9 9 9 9 9;
	setAttr -s 16 ".kix[8:15]"  0.012363358400762081 0.0032389925327152014 
		0.0067136101424694061 0.012302038259804249 0.0052061383612453938 0.013276522979140282 
		1 0.0088543789461255074;
	setAttr -s 16 ".kiy[8:15]"  0.99992358684539795 0.99999475479125977 
		0.9999774694442749 0.99992430210113525 0.99998646974563599 0.9999118447303772 
		0 0.99996078014373779;
	setAttr -s 16 ".kox[8:15]"  0.012363358400762081 0.0032389925327152014 
		0.0067136101424694061 0.012302038259804249 0.0052061383612453938 0.013276522979140282 
		1 0.0088543789461255074;
	setAttr -s 16 ".koy[8:15]"  0.99992358684539795 0.99999475479125977 
		0.9999774694442749 0.99992430210113525 0.99998646974563599 0.9999118447303772 
		0 0.99996078014373779;
createNode animCurveTA -n "animCurveTA3078";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 4 0 7 0 11 0 14 0 19 15.829425701546842 
		22 1.248306076999107 25 1.248306076999107 27 6.1588631476282867 30 44.491483723139034 
		33 -6.4712729195228098 38 30.45300710738308 43 45.79787902780042 49 -28.33147073208438 
		54 30.693473148004159 60 -28.33147073208438;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 3 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 3 
		9 9 9 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA3079";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 13.717778871715204 4 25.948901905116401 
		7 25.948901905116401 11 25.948901905116401 14 13.717778871715204 19 25.948901905116429 
		22 -61.553423410474444 25 -61.553423410474444 27 -60.939293012521325 30 -60.901424625617686 
		33 -52.522527895889915 38 -66.370680344634792 43 -23.584523887399754 49 10.113681911874204 
		54 -19.287234896979506 60 10.113681911874204;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 3 3 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 3 3 
		9 9 9 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA3080";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 4 0 7 0 11 0 14 0 19 0 22 -4.0653566202778446 
		25 -4.0653566202778446 27 -5.5582644250639097 30 -9.4502247766973682 33 -26.169168266718742 
		38 -11.726845019174959 43 -2.5503691939321347 49 -3.6896128937020114 54 -34.331821279448754 
		60 -3.6896128937020114;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 3 3 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 3 3 
		9 9 9 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA3081";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3082";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3083";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3084";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3085";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3086";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3087";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3088";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3089";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3090";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3091";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3092";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL1081";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 4 0 7 0 11 0 14 0 19 0 22 0 
		25 0 27 0 30 0 33 0 38 0 43 0 49 0 54 0 60 0;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL1082";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 4 0 7 0 11 0 14 0 19 0 22 0 
		25 0 27 0 30 0 33 0 38 0 43 0 49 0 54 0 60 0;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL1083";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 4 1 7 1 11 1 14 1 19 1 22 1 
		25 1 27 1 30 1 33 1 38 1 43 1 49 1 54 1 60 1;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL1084";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 4 0 7 0 11 0 14 0 19 0 22 0 
		25 -0.034660776702225261 27 -0.039645834214116132 30 -0.037136546583753045 
		33 -0.034660776702225261 38 -0.034660776702225261 43 -0.034660776702225261 
		49 0 54 -0.034660776702225261 60 0;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL1085";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 4 0 7 0 11 0 14 0 19 0 22 0 
		25 0.43236842264083392 27 0.49455345370157783 30 0.46325188044122045 33 0.43236842264083392 
		38 0.43236842264083392 43 0.43236842264083392 49 0 54 0.43236842264083392 
		60 0;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL1086";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 4 1 7 1 11 1 14 1 19 1 22 1 
		25 1.022596790343715 27 1.0258467549941159 30 1.024210846778379 33 1.022596790343715 
		38 1.022596790343715 43 1.022596790343715 49 1 54 1.022596790343715 60 1;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL1087";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0.076472881617957691 4 0.076472881617957691 
		7 -0.068190381162623673 11 0.073525311801197701 14 0.076472881617957691 19 
		0.033034131700396582 22 -0.11097678539180074 25 -0.13310595958220145 27 -0.23112826660158545 
		30 -0.27724702373664167 33 -0.43890348843481664 38 -0.96276481567283712 43 
		-1.4761761966342473 49 -2.5040279595091715 54 -1.4056701743799815 60 -2.5040279595091715;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL1088";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0.96147551361829786 4 0.93105416142265018 
		7 0.93304546632269802 11 0.95322249940707271 14 0.96147551361829786 19 0.9224657007074174 
		22 0.89013364363267944 25 0.7219081613832331 27 0.66797672450417989 30 0.8448476521299747 
		33 1.508052198281272 38 2.0686664276101476 43 2.4506826516963618 49 2.6614994502053553 
		54 2.7047448676097749 60 2.6614994502053553;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL1089";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 4 0 7 0 11 0 14 0 19 0.0054768742817095494 
		22 0.26707430322503661 25 0.20121930020139275 27 0.2863994685637829 30 0.45312196927940257 
		33 0.63260661812291974 38 1.0667075507862014 43 1.291710968552942 49 1.1305265350009219 
		54 1.1349023152102036 60 1.1305265350009219;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA3093";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -0.62843630316474508 4 -0.64945777164326313 
		7 3.0455725522002712 11 0.6762199719426083 14 -0.62843630316474508 19 -4.0647210446877668 
		22 -1.8959560750666928 25 0.039907503397905005 27 1.6246534025556567 30 4.836747886637859 
		33 -6.2042270125640515 38 13.743731954749155 43 -7.8826714955125015 49 -19.504876398732133 
		54 -12.662850904412618 60 -19.504876398732133;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA3094";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 5.8284402688137167 4 -15.712784536999756 
		7 -23.118437686934161 11 -18.156455913488841 14 5.8284402688137167 19 -6.129632983176454 
		22 -7.5987312358901162 25 -10.412976604800045 27 -22.545275206268631 30 -46.307982231864941 
		33 -13.448331038318274 38 -35.938490860670051 43 -14.052658823380797 49 0 
		54 -2.9461983826611342 60 0;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA3095";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1.295636019309746 4 1.5353463816017385 
		7 2.8980232091229619 11 1.9051048544433762 14 1.295636019309746 19 1.7490863204697844 
		22 0.01571029292273337 25 -2.4280299873568705 27 -4.0188984339622564 30 -5.4412261522521899 
		33 -5.5397258482733402 38 -7.309129177534067 43 1.3148835681179702 49 0 54 
		-23.379622524262416 60 0;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA3096";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3097";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3098";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3099";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3100";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3101";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3102";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3103";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3104";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3105";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3106";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3107";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3108";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3109";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3110";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3111";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3112";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3113";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3114";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3115";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3116";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 22 0 25 0 33 0 60 0;
	setAttr -s 5 ".kit[2:4]"  9 1 3;
	setAttr -s 5 ".kot[1:4]"  1 9 9 3;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA3117";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 22 0 25 0 33 0 60 0;
	setAttr -s 5 ".kit[2:4]"  9 1 3;
	setAttr -s 5 ".kot[1:4]"  1 9 9 3;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA3118";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 22 0 25 -24.501661700242042 
		33 0 60 0;
	setAttr -s 5 ".kit[2:4]"  9 1 3;
	setAttr -s 5 ".kot[1:4]"  1 9 9 3;
	setAttr -s 5 ".kix[3:4]"  0.29765972495079041 1;
	setAttr -s 5 ".kiy[3:4]"  0.95467203855514526 0;
	setAttr -s 5 ".kox[1:4]"  1 1 0.93891352415084839 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0.34415313601493835 0;
createNode animCurveTA -n "animCurveTA3119";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3120";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3121";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL1090";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.5198069948790518 26 -0.5198069948790518 
		60 -0.5198069948790518;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL1091";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.72394202659893114 26 -0.72394202659893114 
		60 -0.72394202659893114;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL1092";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.36439499068905612 26 0.36439499068905612 
		60 0.36439499068905612;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3122";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.7976222737965317 26 7.7976222737965317 
		60 7.7976222737965317;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3123";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 30.409274105849079 26 30.409274105849079 
		60 30.409274105849079;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3124";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 64.859940280210893 26 64.859940280210893 
		60 64.859940280210893;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL1093";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.43524234076486068 26 0.43524234076486068 
		60 0.43524234076486068;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL1094";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.82665738350180629 26 -0.82665738350180629 
		60 -0.82665738350180629;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL1095";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.27773886459742925 26 0.27773886459742925 
		60 0.27773886459742925;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3125";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3126";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -28.652637602052774 26 -28.652637602052774 
		60 -28.652637602052774;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3127";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -64.676908227303443 26 -64.676908227303443 
		60 -64.676908227303443;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL1096";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.75854111686822778 4 -0.57262925149573951 
		7 -0.71423301719164856 11 -0.51306664410410396 14 -0.75854111686822778 19 
		-0.71855072776607709 22 -1.2255779816172274 25 -1.2255779816172274 32 -1.2255779816172274 
		36 -1.6063322105982709 43 -3.1841829250049414 49 -4.5650504642976548 54 -2.7061480999602638 
		60 -4.5650504642976548;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 3 
		9 3 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 3 
		9 3 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL1097";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1.1932952672205326 4 1.4163535334556963 
		7 1.2948347548889261 11 1.2288485135927962 14 1.1932952672205326 19 1.599106442649618 
		22 2.2457022896772938 25 2.2457022896772938 32 2.2457022896772938 36 2.9261396535163482 
		43 3.9567818722945494 49 3.8006025697972157 54 4.2730802276713886 60 3.8006025697972157;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 3 
		9 3 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 3 
		9 3 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL1098";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.14314299916678522 4 -0.37264849786442289 
		7 -0.5597073479984731 11 -0.34826352988816595 14 0.14314299916678522 19 0.51002739429578037 
		22 0.45278061540622061 25 0.45278061540622061 32 0.45278061540622061 36 0.79864032246517247 
		43 1.4686835442306267 49 1.7686455822002116 54 1.6879074399120366 60 1.7686455822002116;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 3 
		9 3 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 3 
		9 3 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA3128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -5.7993291745893352 4 16.226511010665405 
		7 16.226511010665405 11 16.226511010665405 14 -5.7993291745893352 19 55.598837649680043 
		22 17.578216977008857 25 17.578216977008857 32 17.578216977008857 36 16.080200011728628 
		43 4.6613644930380378 49 -26.203413720634714 54 18.07051120818576 60 -26.203413720634714;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 3 
		9 3 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 3 
		9 3 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA3129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1.228264010471275 4 8.513966085499284 
		7 8.513966085499284 11 8.513966085499284 14 1.228264010471275 19 30.973734338623142 
		22 37.36166010901858 25 37.36166010901858 32 37.36166010901858 36 38.214040342966832 
		43 36.108857241373819 49 14.791961579779635 54 27.042197631862905 60 14.791961579779635;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 3 
		9 3 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 3 
		9 3 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA3130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 60.456694896838378 4 68.213989601412422 
		7 68.213989601412422 11 68.213989601412422 14 60.456694896838378 19 82.208920420259716 
		22 -48.871336699981519 25 -48.871336699981519 32 -48.871336699981519 36 -38.468597814997793 
		43 2.913287519114713 49 45.895436695401962 54 44.163945774207242 60 45.895436695401962;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 3 
		9 3 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 3 
		9 3 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL1099";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0.97384023505055983 4 0.39060337815167934 
		7 -0.70536037302492116 11 0.50541844399179925 14 0.97384023505055983 19 0.91837917750249576 
		22 0.55248830610092636 25 0.19914939983053262 29 0.2966728110788549 33 0.4541042621832414 
		38 -0.85499367162938922 43 -1.0413942991912615 49 -2.790531447591571 54 -0.5099299555228195 
		60 -2.790531447591571;
	setAttr -s 15 ".kit[0:14]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9;
	setAttr -s 15 ".kot[0:14]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL1100";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1.2525965505547216 4 1.5277817648267611 
		7 2.262645060024512 11 2.1798585636308268 14 1.2525965505547216 19 1.2710208262091869 
		22 1.3998379261856073 25 0.94238234127353337 29 1.2435327051644749 33 2.3092131847962816 
		38 3.1672059404565376 43 3.697990337801337 49 3.7466536474163434 54 3.8151598175362609 
		60 3.7466536474163434;
	setAttr -s 15 ".kit[0:14]"  3 9 9 9 9 1 9 
		9 9 9 9 9 9 9 9;
	setAttr -s 15 ".kot[0:14]"  3 9 9 9 9 1 9 
		9 9 9 9 9 9 9 9;
	setAttr -s 15 ".kix[5:14]"  0.0038020708598196507 0.0060856016352772713 
		0.014926394447684288 0.0019509813282638788 0.0015595144359394908 0.0024001861456781626 
		0.0063277380540966988 0.031278390437364578 1 0.029182020574808121;
	setAttr -s 15 ".kiy[5:14]"  0.99999278783798218 -0.99998146295547485 
		-0.99988859891891479 0.99999809265136719 0.99999880790710449 0.99999713897705078 
		0.99997997283935547 0.99951070547103882 0 -0.99957412481307983;
	setAttr -s 15 ".kox[5:14]"  0.0038020547945052385 0.0060856016352772713 
		0.014926394447684288 0.0019509813282638788 0.0015595144359394908 0.0024001861456781626 
		0.0063277380540966988 0.031278390437364578 1 0.029182020574808121;
	setAttr -s 15 ".koy[5:14]"  0.99999278783798218 -0.99998146295547485 
		-0.99988859891891479 0.99999809265136719 0.99999880790710449 0.99999713897705078 
		0.99997997283935547 0.99951070547103882 0 -0.99957412481307983;
createNode animCurveTL -n "animCurveTL1101";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -0.097994651149805143 4 0.84567637706889853 
		7 0.84670831388281143 11 0.8519779261565199 14 -0.097994651149805143 19 0.25669475715425083 
		22 1.2299450602520627 25 1.0211962728127559 29 1.2812334446424667 33 1.1621376358051472 
		38 2.4267708391848717 43 1.9106151537533023 49 1.750436070454791 54 2.0786415129687987 
		60 1.750436070454791;
	setAttr -s 15 ".kit[0:14]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9;
	setAttr -s 15 ".kot[0:14]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA3131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -12.222987645962959 4 71.119159344460144 
		7 174.96455812755872 11 194.05587618443292 14 -12.222987645962959 19 -6.8408848116811125 
		22 -178.71153037370181 25 -178.71153037370181 33 -86.806087288381434 38 -166.81562693844464 
		43 -67.608628801834271 49 -33.734888782993906 54 -32.318402203478271 60 -33.734888782993906;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA3132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 19.681044208515029 4 -28.587710488537017 
		7 -25.877151374335089 11 -68.824260400212339 14 19.681044208515029 19 -30.714124774991525 
		22 -65.402991895939863 25 -65.402991895939863 33 -83.115443895632339 38 -64.640282392072066 
		43 -56.181193940025288 49 -14.870586397896902 54 -22.509929029446681 60 -14.870586397896902;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA3133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -65.119655550709027 4 -145.5137268770755 
		7 -221.32177793259166 11 -268.86030920150114 14 -65.119655550709027 19 -52.637498007569562 
		22 97.890271845644079 25 97.890271845644079 33 61.012916349425659 38 165.05975398489667 
		43 38.016487377603077 49 -30.592169336881899 54 30.298008427764341 60 -30.592169336881899;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL1102";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0.10167917362943303 4 0.4001111643408698 
		7 0.57061566826858701 11 -0.016678813185503023 14 0.10167917362943303 19 
		0.31054502397108613 22 0.31054502397108613 25 0.31054502397108613 27 0.57475497769065642 
		30 0.31054502397108613 33 0.31054502397108613 38 0.31054502397108613 43 0.31054502397108613 
		49 0.31054502397108613 54 0.31054502397108613 60 0.31054502397108613;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 16 ".kot[0:15]"  3 1 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 16 ".kox[1:15]"  0.0058648455888032913 0.0055982554331421852 
		0.0049757366068661213 0.0081490948796272278 0.01276632584631443 1 0.0063079893589019775 
		1 0.0075695202685892582 1 1 1 1 1 1;
	setAttr -s 16 ".koy[1:15]"  0.99998277425765991 -0.99998432397842407 
		-0.99998760223388672 0.99996680021286011 0.99991852045059204 0 0.99998009204864502 
		0 -0.99997133016586304 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL1103";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -0.40762644910266188 4 -0.32054195494897236 
		7 -0.92711716659639209 11 -1.1955509282625838 14 -0.40762644910266188 19 
		-0.55640530640609931 22 -0.55640530640609931 25 -0.55640530640609931 27 -0.46368057267507495 
		30 -0.55640530640609931 33 -0.55640530640609931 38 -0.55640530640609931 43 
		-0.55640530640609931 49 -0.55640530640609931 54 -0.55640530640609931 60 -0.55640530640609931;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 16 ".kot[0:15]"  3 1 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 16 ".kox[1:15]"  0.0016485977685078979 0.0026666298508644104 
		0.0044915331527590752 0.004172199871391058 0.017920814454555511 1 0.017971444875001907 
		1 0.021564202383160591 1 1 1 1 1 1;
	setAttr -s 16 ".koy[1:15]"  -0.99999868869781494 -0.99999642372131348 
		0.99998992681503296 0.99999129772186279 -0.9998394250869751 0 0.99983847141265869 
		0 -0.9997674822807312 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL1104";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -0.93129112588482243 4 -0.81561019929437761 
		7 -0.49128941948543675 11 -1.1924527185884712 14 -0.93129112588482243 19 
		-0.57914122395678103 22 -0.57914122395678103 25 -0.57914122395678103 27 -0.41090360985775853 
		30 -0.57914122395678103 33 -0.57914122395678103 38 -0.57914122395678103 43 
		-0.57914122395678103 49 -0.57914122395678103 54 -0.57914122395678103 60 -0.57914122395678103;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 16 ".kot[0:15]"  3 1 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 16 ".kox[1:15]"  0.0030833517666906118 0.0061916806735098362 
		0.0053029353730380535 0.0043479399755597115 0.0075723156332969666 1 0.0099061373621225357 
		1 0.011887107975780964 1 1 1 1 1 1;
	setAttr -s 16 ".koy[1:15]"  0.99999523162841797 -0.99998080730438232 
		-0.99998593330383301 0.99999052286148071 0.99997133016586304 0 0.99995094537734985 
		0 -0.99992936849594116 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL1105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 4 -0.17523930523423681 7 -0.17523930523423681 
		11 -0.17523930523423681 14 0 19 -0.17523930523423681 22 -0.0081422950894450806 
		25 -0.56986698548929338 27 -0.43094386535405876 30 -0.047646009069586132 
		33 -0.063331173333856433 38 -0.063331173333856433 43 -0.37736680843384973 
		49 -0.063331173333856433 54 -0.37736680843384973 60 -0.063331173333856433;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 16 ".kot[0:15]"  3 1 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 16 ".kox[1:15]"  1 1 0.013313944451510906 1 0.31124100089073181 
		0.0050680031999945641 0.003941928967833519 0.0031914808787405491 0.0054404279217123985 
		0.16760702431201935 0.010613908059895039 1 1 1 0.0063685751520097256;
	setAttr -s 16 ".koy[1:15]"  0 0 0.99991136789321899 0 -0.95033103227615356 
		-0.99998718500137329 -0.9999922513961792 0.99999493360519409 0.9999852180480957 
		-0.98585391044616699 -0.99994367361068726 0 0 0 0.99997973442077637;
createNode animCurveTL -n "animCurveTL1106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 4 -0.00072435787012014696 7 
		-0.00072435787012014696 11 -0.00072435787012014696 14 0 19 -0.00072435787012014696 
		22 -0.69388626071362391 25 -0.68144477726767505 27 -0.69172518239403591 30 
		-0.70977769184901862 33 -0.69960805773293522 38 -0.69960805773293522 43 -0.54343311259648019 
		49 -0.69960805773293522 54 -0.54343311259648019 60 -0.69960805773293522;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 16 ".kot[0:15]"  3 1 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 16 ".kox[1:15]"  1 1 0.95503866672515869 1 0.0038430606946349144 
		0.0029380512423813343 0.61069989204406738 0.058722887188196182 0.24592280387878418 
		0.25364342331886292 0.021338725462555885 1 1 1 0.01280510239303112;
	setAttr -s 16 ".koy[1:15]"  0 0 0.29648131132125854 0 -0.99999260902404785 
		-0.99999570846557617 0.7918621301651001 -0.99827432632446289 -0.96928942203521729 
		0.96729779243469238 0.99977231025695801 0 0 0 -0.99991798400878906;
createNode animCurveTL -n "animCurveTL1107";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -1 4 -0.80201435285893019 7 -0.80201435285893019 
		11 -0.80201435285893019 14 -1 19 -0.80201435285893019 22 -0.75622028871403923 
		25 -0.54511080870143536 27 -0.55693487641830486 30 -0.64237249774344829 33 
		-0.66762598980258558 38 -0.66762598980258558 43 -0.97043124551903082 49 -0.66762598980258558 
		54 -0.97043124551903082 60 -0.66762598980258558;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 16 ".kot[0:15]"  3 1 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 16 ".kox[1:15]"  1 1 0.011784547939896584 1 0.010938183404505253 
		0.0077847875654697418 0.0083629218861460686 0.017133384943008423 0.018065348267555237 
		0.10501211136579514 0.011007508262991905 1 1 1 0.0066047618165612221;
	setAttr -s 16 ".koy[1:15]"  0 0 -0.99993056058883667 0 0.99994015693664551 
		0.9999697208404541 0.99996501207351685 -0.99985319375991821 -0.99983680248260498 
		-0.99447095394134521 -0.9999394416809082 0 0 0 0.99997818470001221;
createNode animCurveTA -n "animCurveTA3134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -0.061808866237340665 4 -0.061808866237337522 
		7 -0.061808866237337522 11 -0.061808866237337522 14 -0.061808866237340665 
		19 -0.061808866237337522 22 -0.061808866237337522 25 -0.061808866237337522 
		27 -0.061808866237337522 30 -0.061808866237337522 33 -0.061808866237337522 
		38 -0.061808866237337522 43 -0.061808866237337522 49 -0.061808866237340665 
		54 -0.061808866237337522 60 -0.061808866237340665;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -59.058178941076754 4 -59.058178941076754 
		7 -59.058178941076754 11 -59.058178941076754 14 -59.058178941076754 19 -59.058178941076754 
		22 -59.058178941076754 25 -59.058178941076754 27 -59.058178941076754 30 -59.058178941076754 
		33 -59.058178941076754 38 -59.058178941076754 43 -59.058178941076754 49 -59.058178941076754 
		54 -59.058178941076754 60 -59.058178941076754;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 16.57914742975785 4 16.579147429757843 
		7 16.579147429757843 11 16.579147429757843 14 16.57914742975785 19 16.579147429757843 
		22 16.579147429757843 25 16.579147429757843 27 16.579147429757843 30 16.579147429757843 
		33 16.579147429757843 38 16.579147429757843 43 16.579147429757843 49 16.57914742975785 
		54 16.579147429757843 60 16.57914742975785;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3137";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 12.253734489678925 4 12.253734489678925 
		7 12.253734489678925 11 12.253734489678925 14 12.253734489678925 19 12.253734489678925 
		22 12.253734489678925 25 12.253734489678925 27 12.253734489678925 30 12.253734489678925 
		33 12.253734489678925 38 12.253734489678925 43 12.253734489678925 49 12.253734489678925 
		54 12.253734489678925 60 12.253734489678925;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -65.746751280844975 4 -65.746751280844961 
		7 -65.746751280844961 11 -65.746751280844961 14 -65.746751280844975 19 -65.746751280844961 
		22 -65.746751280844961 25 -65.746751280844961 27 -65.746751280844961 30 -65.746751280844961 
		33 -65.746751280844961 38 -65.746751280844961 43 -65.746751280844961 49 -65.746751280844975 
		54 -65.746751280844961 60 -65.746751280844975;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 4 0 7 0 11 0 14 0 19 0 22 0 
		25 0 27 0 30 0 33 0 38 0 43 0 49 0 54 0 60 0;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 15.711328223519061 4 15.711328223519057 
		7 15.711328223519057 11 15.711328223519057 14 15.711328223519061 19 15.711328223519057 
		22 15.711328223519057 25 15.711328223519057 27 15.711328223519057 30 15.711328223519057 
		33 15.711328223519057 38 15.711328223519057 43 15.711328223519057 49 15.711328223519061 
		54 15.711328223519057 60 15.711328223519061;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 8.5572674112203657 4 8.5572674112203622 
		7 8.5572674112203622 11 8.5572674112203622 14 8.5572674112203657 19 8.5572674112203622 
		22 8.5572674112203622 25 8.5572674112203622 27 8.5572674112203622 30 8.5572674112203622 
		33 8.5572674112203622 38 8.5572674112203622 43 8.5572674112203622 49 8.5572674112203657 
		54 8.5572674112203622 60 8.5572674112203657;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 4 0 7 0 11 0 14 0 19 0 22 0 
		25 0 27 0 30 0 33 0 38 0 43 0 49 0 54 0 60 0;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 4 0 7 0 11 0 14 0 19 0 22 0 
		25 0 27 0 30 0 33 0 38 0 43 0 49 0 54 0 60 0;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 4 0 7 0 11 0 14 0 19 0 22 0 
		25 0 27 0 30 0 33 0 38 0 43 0 49 0 54 0 60 0;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 4 0 7 0 11 0 14 0 19 0 22 0 
		25 0 27 0 30 0 33 0 38 0 43 0 49 0 54 0 60 0;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 4 0 7 0 11 0 14 0 19 0 22 0 
		25 0 27 0 30 0 33 0 38 0 43 0 49 0 54 0 60 0;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 4 0 7 0 11 0 14 0 19 0 22 0 
		25 0 27 0 30 0 33 0 38 0 43 0 49 0 54 0 60 0;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 8.2533422302317216 4 -184.57169410760673 
		7 -184.57169410760673 11 -184.57169410760673 14 8.2533422302317216 19 -184.57169410760673 
		22 -184.57169410760673 25 -184.57169410760673 27 -184.57169410760673 30 -184.57169410760673 
		33 -184.57169410760673 38 -184.57169410760673 43 -184.57169410760673 49 19.002497950056895 
		54 -184.57169410760673 60 19.002497950056895;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 23.263402056531085 4 23.263402056531085 
		7 23.263402056531085 11 23.263402056531085 14 23.263402056531085 19 23.263402056531085 
		22 23.263402056531085 25 23.263402056531085 27 23.263402056531085 30 23.263402056531085 
		33 23.263402056531085 38 23.263402056531085 43 23.263402056531085 49 23.263402056531085 
		54 23.263402056531085 60 23.263402056531085;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 20.166277752815617 4 20.166277752815617 
		7 20.166277752815617 11 20.166277752815617 14 20.166277752815617 19 20.166277752815617 
		22 20.166277752815617 25 20.166277752815617 27 20.166277752815617 30 20.166277752815617 
		33 20.166277752815617 38 20.166277752815617 43 20.166277752815617 49 20.166277752815624 
		54 20.166277752815617 60 20.166277752815624;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 4 0 7 0 11 0 14 0 19 0 22 0 
		25 0 27 0 30 0 33 0 38 0 43 0 49 0 54 0 60 0;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 4 0 7 0 11 0 14 0 19 0 22 0 
		25 0 27 0 30 0 33 0 38 0 43 0 49 0 54 0 60 0;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 33.429092416277157 4 33.429092416277157 
		7 33.429092416277157 11 33.429092416277157 14 33.429092416277157 19 33.429092416277157 
		22 33.429092416277157 25 33.429092416277157 27 33.429092416277157 30 33.429092416277157 
		33 33.429092416277157 38 33.429092416277157 43 33.429092416277157 49 33.429092416277157 
		54 33.429092416277157 60 33.429092416277157;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3154";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3155";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3156";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3157";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3158";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3159";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.994403295754109 26 13.994403295754109 
		60 13.994403295754109;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3160";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3161";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 60 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3162";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.994403295754109 26 0 60 13.994403295754109;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 4 0 7 0 11 0 14 0 19 0 22 0 
		25 0 27 0 30 0 33 0 38 0 43 0 49 0 54 0 60 0;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 4 0 7 0 11 0 14 0 19 0 22 0 
		25 0 27 0 30 0 33 0 38 0 43 0 49 0 54 0 60 0;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3165";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 17.254116939558369 4 17.254116939558369 
		7 17.254116939558369 11 17.254116939558369 14 17.254116939558369 19 17.254116939558369 
		22 17.254116939558369 25 17.254116939558369 27 17.254116939558369 30 17.254116939558369 
		33 17.254116939558369 38 17.254116939558369 43 17.254116939558369 49 17.254116939558369 
		54 17.254116939558369 60 17.254116939558369;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 4 0 7 0 11 0 14 0 19 0 22 0 
		25 0 27 0 30 0 33 0 38 0 43 0 49 0 54 0 60 0;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 4 0 7 0 11 0 14 0 19 0 22 0 
		25 0 27 0 30 0 33 0 38 0 43 0 49 0 54 0 60 0;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 4 0 7 0 11 0 14 0 19 0 22 0 
		25 0 27 0 30 0 33 0 38 0 43 0 49 0 54 0 60 0;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3169";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0.65073001024951671 4 -17.865547004487734 
		7 -33.568934881885703 11 -18.030120514681801 14 0.65073001024951671 19 -7.8430056866173823 
		22 -7.8430056866173823 25 -7.8430056866173823 27 -3.1422186943800172 30 1.6600682412462473 
		33 3.2428821218103816 38 7.5359565583949033 43 25.890727135803381 49 1.373100660218926 
		54 -11.37102964548717 60 1.373100660218926;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 4.2368721935960938 4 8.1938064043711503 
		7 14.78974371171115 11 9.186989417956184 14 4.2368721935960938 19 3.8867637360502716 
		22 2.4212113907903019 25 2.4212113907903019 27 3.277217456030439 30 5.6886338817782773 
		33 11.812075050518553 38 14.036813544292096 43 1.1313888543542436 49 -0.38374158911587308 
		54 0.57536973090558297 60 -0.38374158911587308;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 2.6995264082587447 4 15.088783978648813 
		7 -10.201758905374636 11 -0.85376281237392615 14 2.6995264082587447 19 14.868855041301886 
		22 14.868855041301886 25 10.500432497048379 27 5.4073582592798379 30 5.1436031948885814 
		33 12.445502596270925 38 28.799747256025494 43 16.15457756926455 49 0.96901743689791298 
		54 21.192869117571593 60 0.96901743689791298;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 4 0 7 0 11 0 14 0 19 -7.1097278539792699 
		22 -7.1097278539792699 25 -7.1097278539792699 27 -7.1097278539792699 30 -7.1097278539792699 
		33 -7.1097278539792699 38 -7.1097278539792699 43 -7.1097278539792699 49 2.2144674450583466 
		54 20.076803070551748 60 2.2144674450583466;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 4 0 7 0 11 0 14 0 19 0 22 0 
		25 0 27 0 30 0 33 0 38 0 43 0 49 5.3642380392152509 54 0 60 5.3642380392152509;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 4 0 7 0 11 0 14 0 19 0 22 0 
		25 0 27 0 30 0 33 0 38 0 43 0 49 -3.2584064202075544 54 0 60 -3.2584064202075544;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 4.0198472869727979 4 11.346446826343373 
		7 -4.6991931281127517 11 -1.4823408320702993 14 4.0198472869727979 19 0.32948933226534777 
		25 4.936665607567444 33 -4.5694554420318401 38 -0.12411851461326476 43 23.846512789232317 
		49 -4.9690701715193732 54 16.399518942919972 60 -4.9690701715193732;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 9.1335573833666519 4 17.661900718647104 
		7 -15.383983504751654 11 -4.153798069427185 14 9.1335573833666519 19 18.393019233450623 
		25 9.7792069540852147 33 16.486420038233504 38 0.36620260693962053 43 42.637998316794274 
		49 2.9904681746768538 54 -34.525938596521542 60 2.9904681746768538;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -2.2752136084709536 4 -4.4079947587230608 
		7 6.3106130796856919 11 4.9670423477653189 14 -2.2752136084709536 19 -4.9128688560489149 
		25 -4.5159477481657264 33 3.8471327775177588 38 -15.63197985514657 43 17.099736619293381 
		49 14.780225156536885 54 -32.501680130080977 60 14.780225156536885;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1.8903601258661935 4 1.8903601258661931 
		7 1.6444520461961631 11 1.8903601258661931 14 1.8903601258661935 19 1.8903601258661931 
		22 1.8903601258661931 25 1.8903601258661931 27 1.244781736270514 30 -1.4672032523553795 
		33 -4.5893511886976759 38 -1.0195281352591681 43 1.8903601258661931 49 -2.211833892135727 
		54 11.266439246406184 60 -2.211833892135727;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -2.5597289571479038 4 -2.5597289571479034 
		7 -2.7241716931476172 11 -2.5597289571479034 14 -2.5597289571479038 19 -2.5597289571479034 
		22 -2.5597289571479034 25 -2.5597289571479034 27 -2.6724695929758124 30 -3.0842593602314001 
		33 -4.0062478491451934 38 -3.7253520751112297 43 -2.5597289571479034 49 -1.7086730360615547 
		54 -8.2514393232251884 60 -1.7086730360615547;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 2.0168110874036049 4 2.016811087403604 
		7 7.3478449364257932 11 2.016811087403604 14 2.0168110874036049 19 2.016811087403604 
		22 2.016811087403604 25 2.016811087403604 27 1.0722090263170199 30 -2.0736047826525068 
		33 -7.2946582505866582 38 0.14944732063885902 43 2.016811087403604 49 2.7082804953288213 
		54 4.6912887305040609 60 2.7082804953288213;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 4 0 7 0 11 0 14 0 19 0 22 0 
		25 0 27 0 30 0 33 0 38 0 43 0 49 0 54 0 60 0;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 4 0 7 0 11 0 14 0 19 0 22 0 
		25 0 27 0 30 0 33 0 38 0 43 0 49 0 54 0 60 0;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 27.080064458283051 4 27.080064458283051 
		7 27.080064458283051 11 27.080064458283051 14 27.080064458283051 19 27.080064458283051 
		22 27.080064458283051 25 27.080064458283051 27 27.080064458283051 30 27.080064458283051 
		33 27.080064458283051 38 27.080064458283051 43 27.080064458283051 49 27.080064458283051 
		54 27.080064458283051 60 27.080064458283051;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 10.423754966968488 4 -182.40128137086998 
		7 -182.40128137086998 11 -182.40128137086998 14 10.423754966968488 19 -182.40128137086998 
		22 -182.40128137086998 25 -182.40128137086998 27 -182.40128137086998 30 -182.40128137086998 
		33 -182.40128137086998 38 -182.40128137086998 43 -182.40128137086998 49 -177.04830761929054 
		54 -182.40128137086998 60 -177.04830761929054;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 27.7228482558439 4 27.722848255843903 
		7 27.722848255843903 11 27.722848255843903 14 27.7228482558439 19 27.722848255843903 
		22 27.722848255843903 25 27.722848255843903 27 27.722848255843903 30 27.722848255843903 
		33 27.722848255843903 38 27.722848255843903 43 27.722848255843903 49 27.722848255843903 
		54 27.722848255843903 60 27.722848255843903;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3186";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 21.576484776388224 4 21.576484776388227 
		7 21.576484776388227 11 21.576484776388227 14 21.576484776388224 19 21.576484776388227 
		22 21.576484776388227 25 21.576484776388227 27 21.576484776388227 30 21.576484776388227 
		33 21.576484776388227 38 21.576484776388227 43 21.576484776388227 49 21.576484776388227 
		54 21.576484776388227 60 21.576484776388227;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3187";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 4 0 7 0 11 0 14 0 19 0 22 0 
		25 0 27 0 30 0 33 0 38 0 43 0 49 0 54 0 60 0;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 4 0 7 0 11 0 14 0 19 0 22 0 
		25 0 27 0 30 0 33 0 38 0 43 0 49 0 54 0 60 0;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA3189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 27.911632519594587 4 27.911632519594587 
		7 27.911632519594587 11 27.911632519594587 14 27.911632519594587 19 27.911632519594587 
		22 27.911632519594587 25 27.911632519594587 27 27.911632519594587 30 27.911632519594587 
		33 27.911632519594587 38 27.911632519594587 43 27.911632519594587 49 27.911632519594587 
		54 27.911632519594587 60 27.911632519594587;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
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
	setAttr ".o" 1;
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
connectAttr "lsa_get_into_car_high_all_driverSource.st" "clipLibrary1.st[0]"
		;
connectAttr "lsa_get_into_car_high_all_driverSource.du" "clipLibrary1.du[0]"
		;
connectAttr "animCurveTL1067.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL1068.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL1069.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL1070.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL1071.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA3071.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU209.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU210.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU211.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU212.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU213.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU214.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU215.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU216.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA3072.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA3073.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA3074.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL1072.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL1073.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL1074.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL1075.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL1076.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL1077.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA3075.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA3076.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA3077.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL1078.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL1079.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL1080.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA3078.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA3079.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA3080.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA3081.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA3082.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA3083.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA3084.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA3085.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA3086.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA3087.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA3088.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA3089.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA3090.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA3091.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA3092.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL1081.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL1082.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL1083.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL1084.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL1085.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL1086.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL1087.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL1088.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL1089.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA3093.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA3094.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA3095.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA3096.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA3097.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA3098.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA3099.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA3100.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA3101.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA3102.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA3103.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA3104.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA3105.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA3106.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA3107.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA3108.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA3109.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA3110.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA3111.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA3112.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA3113.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA3114.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA3115.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA3116.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA3117.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA3118.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA3119.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA3120.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA3121.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL1090.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL1091.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL1092.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA3122.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA3123.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA3124.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL1093.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL1094.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL1095.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA3125.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA3126.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA3127.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL1096.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL1097.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL1098.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA3128.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA3129.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA3130.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL1099.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL1100.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL1101.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA3131.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA3132.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA3133.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL1102.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL1103.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL1104.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL1105.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL1106.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL1107.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA3134.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA3135.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA3136.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA3137.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA3138.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA3139.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA3140.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA3141.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA3142.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA3143.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA3144.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA3145.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA3146.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA3147.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA3148.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA3149.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA3150.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA3151.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA3152.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA3153.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA3154.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA3155.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA3156.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA3157.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA3158.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA3159.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA3160.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA3161.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA3162.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA3163.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA3164.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA3165.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA3166.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA3167.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA3168.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA3169.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA3170.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA3171.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA3172.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA3173.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA3174.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA3175.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA3176.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA3177.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA3178.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA3179.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA3180.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA3181.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA3182.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA3183.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA3184.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA3185.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA3186.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA3187.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA3188.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA3189.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of lsa_get_into_car_high_all_driver.ma
