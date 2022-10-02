//Maya ASCII 4.0 scene
//Name: lsa-m_get_into_car_all.ma
//Last modified: Wed, Jul 31, 2002 04:46:22 PM
requires maya "4.0";
requires "p3dSimpleShader" "18.0";
requires "p3dmayaexp" "18.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "lsa_get_into_car_all";
	setAttr ".ihi" 0;
	setAttr ".du" 55;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL452";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL453";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL454";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 56 ".ktv[0:55]"  0 0.033135114381557439 1 0.035667470030465831 
		2 0.039888062778646476 3 0.040732181328282595 4 0.033135114381557439 5 0.0086587339873708431 
		6 -0.0276332677310656 7 -0.060552871960101048 8 -0.074912059886084639 9 -0.061435719178381469 
		10 -0.029965784531086954 11 0.0060101923323541027 12 0.033004659688496946 
		13 0.038155953308526551 14 0.033135114381557439 15 0.0306021365172441 16 
		0.027726529794494012 17 0.024584075320636146 18 0.021250554202999494 19 0.017801747548913026 
		20 0.014313436465705733 21 0.010734512351929862 22 0.0052726893669606143 
		23 -0.0012130151396384699 24 -0.007644826530591519 25 -0.016230593625766628 
		26 -0.02917816524503189 27 -0.049589255408637824 28 -0.075448692768568429 
		29 -0.10128899809229201 30 -0.12164269214727692 31 -0.12503372520137707 32 
		-0.11771743779042844 33 -0.12082343608387421 34 -0.15548132625115763 35 -0.24606854385280333 
		36 -0.38022676136320721 37 -0.52398194032261869 38 -0.69873507412515967 39 
		-0.88308515703612245 40 -0.97885515190251315 41 -0.97782540533110063 42 -0.94499369677682155 
		43 -0.89200913835893081 44 -0.83052084219668287 45 -0.7721779204093332 46 
		-0.72862948511613623 47 -0.71152464843634733 48 -0.71935659740770219 49 -0.74076392440479755 
		50 -0.77261384955217982 51 -0.811773592974395 52 -0.85511037479598972 53 
		-0.8994914151415101 54 -0.94178393413550243 55 -0.97885515190251315;
createNode animCurveTL -n "animCurveTL455";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 56 ".ktv[0:55]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 
		0 53 0 54 0 55 0;
createNode animCurveTL -n "animCurveTL456";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 56 ".ktv[0:55]"  0 0 1 -0.00034695124734365529 2 
		-0.00092520332624974736 3 -0.001040853742030966 4 0 5 0.003953627497261818 
		6 0.0099262044413061506 7 0.014636492468019789 8 0.014803253213289538 9 0.0071551142283859627 
		10 -0.0057591387029306829 11 -0.018490506596039076 12 -0.025589990466317887 
		13 -0.016768136175983262 14 0 15 0.012984927022062094 16 0.025469356624952394 
		17 0.038023826335647957 18 0.051218873681125862 19 0.065625036188363128 20 
		0.081812851384336874 21 0.10746280433691582 22 0.13815056098700493 23 0.16286706689461625 
		24 0.18569421973066993 25 0.2116817564980604 26 0.24587941419968165 27 0.29950593128021336 
		28 0.36657739836785747 29 0.42633958074079148 30 0.45803824367719337 31 0.47940976773664695 
		32 0.51698377269462181 33 0.56319586700650026 34 0.61048165912766428 35 0.66752255171800967 
		36 0.73095484375108311 37 0.77514648815274456 38 0.78342248648132129 39 0.77245783550528058 
		40 0.76664548096569152 41 0.77342393573782797 42 0.78302940949786592 43 0.79405139318822593 
		44 0.80507937775132898 45 0.81470285412959598 46 0.82151131326544757 47 0.82409424610130455 
		48 0.82241117669989428 49 0.8178107870363297 50 0.8109663049216107 51 0.80255095816673694 
		52 0.79323797458270828 53 0.78370058198052472 54 0.77461200817118592 55 0.76664548096569152;
createNode animCurveTA -n "animCurveTA1304";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 56 ".ktv[0:55]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 
		0 53 0 54 0 55 0;
createNode animCurveTU -n "animCurveTU89";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "animCurveTU90";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "animCurveTU91";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "animCurveTU92";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "animCurveTU93";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "animCurveTU94";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "animCurveTU95";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 55 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "animCurveTU96";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 55 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1305";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1306";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1307";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL457";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL458";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL459";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL460";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.21594587158542247 4 -0.21594587158542247 
		8 -0.21594587158542247 12 -0.21594587158542247 14 -0.21594587158542247 20 
		-0.21594587158542247 22 -0.21594587158542247 26 -0.13963627310524832 30 -0.78871766039456459 
		34 -0.78871766039456459 37 -1.4361886848485597 40 -2.4790535543793637 47 
		-1.8526412823159342 55 -2.4790535543793637;
	setAttr -s 14 ".kit[0:13]"  3 3 9 9 9 9 9 
		9 3 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 3 9 9 9 9 9 
		9 3 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL461";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.1380615615975922 4 0.13777142593280561 
		8 0.13777142593280561 12 0.13777142593280561 14 0.1380615615975922 20 0.13777142593280561 
		22 0.13777142593280561 26 0.15776172601265276 30 0.78001930404657405 34 0.78001930404657405 
		37 1.0116405815805272 40 0.9833319268331725 47 1.101605641278836 55 0.9833319268331725;
	setAttr -s 14 ".kit[0:13]"  3 3 9 9 9 9 9 
		9 3 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 3 9 9 9 9 9 
		9 3 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL462";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.00078430246903575811 4 0.00078430246903575811 
		8 0.00078430246903575811 12 0.00078430246903575811 14 0.00078430246903575811 
		20 0.00078430246903575811 22 0.00078430246903575811 26 0.14969380950094124 
		30 1.2889513117444105 34 1.5793782648492296 37 2.26208031869812 40 2.4327597250722541 
		47 2.2179098919452227 55 2.4327597250722541;
	setAttr -s 14 ".kit[0:13]"  3 3 9 9 9 9 9 
		9 3 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 3 9 9 9 9 9 
		9 3 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1308";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 4 0 8 0 12 0 14 0 20 0 22 0 
		26 44.388556084713827 30 -17.613616873884094 34 -17.613616873884094 37 -22.174262600566369 
		40 -27.647037481197394 47 -27.647037481197394 55 -27.647037481197394;
	setAttr -s 14 ".kit[0:13]"  3 3 9 9 9 9 9 
		9 3 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 3 9 9 9 9 9 
		9 3 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1309";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 4 0 8 0 12 0 14 0 20 0 22 0 
		26 -8.3467315155771242 30 -40.787271126349502 34 -40.787271126349502 37 -22.996288908790323 
		40 -1.6471102606573029 47 -1.6471102606573029 55 -1.6471102606573029;
	setAttr -s 14 ".kit[0:13]"  3 3 9 9 9 9 9 
		9 3 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 3 9 9 9 9 9 
		9 3 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1310";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 4 0 8 0 12 0 14 0 20 0 22 0 
		26 7.7471581766269448 30 -7.3958374073208715 34 -7.3958374073208715 37 -7.5760086727188929 
		40 -7.792214191643251 47 -7.792214191643251 55 -7.792214191643251;
	setAttr -s 14 ".kit[0:13]"  3 3 9 9 9 9 9 
		9 3 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 3 9 9 9 9 9 
		9 3 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL463";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.26454016861507795 4 0.26454016861507795 
		8 0.17390215284266961 14 0.26454016861507795 20 0.2173751638612961 22 0.17721361257686638 
		26 -0.014387102308690393 30 -0.019043121068561687 34 -0.028822034365029829 
		37 -0.82409193837269812 40 -2.0407430139147178 47 -1.3797541401272344 55 
		-2.0407430139147178;
	setAttr -s 13 ".kit[0:12]"  3 3 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 3 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL464";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.13806192026723146 4 0.13855539481534615 
		8 0.17679277769660132 14 0.13806192026723146 20 0.14108570071487245 22 0.17862100800168421 
		26 0.14826816906663071 30 0.17199391129371869 34 0.71918268285638098 37 0.89960345004200148 
		40 0.99995529262164395 47 0.98945728173332703 55 0.99995529262164395;
	setAttr -s 13 ".kit[0:12]"  3 3 9 9 3 9 1 
		1 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 3 9 9 3 9 1 
		1 9 9 9 9 9;
	setAttr -s 13 ".kix[6:12]"  0.03802553191781044 0.016002556309103966 
		0.0032068316359072924 0.0071230209432542324 0.037071786820888519 1 0.24619768559932709;
	setAttr -s 13 ".kiy[6:12]"  -0.99927669763565063 0.99987202882766724 
		0.99999487400054932 0.99997460842132568 0.99931257963180542 0 0.9692196249961853;
	setAttr -s 13 ".kox[6:12]"  0.038025688380002975 0.016002470627427101 
		0.0032068316359072924 0.0071230209432542324 0.037071786820888519 1 0.24619768559932709;
	setAttr -s 13 ".koy[6:12]"  -0.99927669763565063 0.99987202882766724 
		0.99999487400054932 0.99997460842132568 0.99931257963180542 0 0.9692196249961853;
createNode animCurveTL -n "animCurveTL465";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.064904406754016042 4 -0.064904406754016042 
		8 -0.052792361204449745 14 -0.064904406754016042 20 -0.064904406754016042 
		22 0.38761032248211302 26 0.92356787827008124 30 0.91265126660440776 34 1.3265112247752731 
		37 2.0187165276500982 40 2.4400670660903248 47 2.3337850073683857 55 2.4400670660903248;
	setAttr -s 13 ".kit[0:12]"  3 3 9 9 1 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 3 9 9 1 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kix[4:12]"  0.41586130857467651 0.0020233201794326305 
		0.0050789033994078636 0.0066178240813314915 0.002109575318172574 0.0017960452241823077 
		0.010579118505120277 1 0.025082578882575035;
	setAttr -s 13 ".kiy[4:12]"  0.90942800045013428 0.99999797344207764 
		0.99998712539672852 0.99997812509536743 0.99999779462814331 0.99999839067459106 
		0.99994403123855591 0 0.99968540668487549;
	setAttr -s 13 ".kox[4:12]"  0.41586148738861084 0.0020233201794326305 
		0.0050789033994078636 0.0066178240813314915 0.002109575318172574 0.0017960452241823077 
		0.010579118505120277 1 0.025082578882575035;
	setAttr -s 13 ".koy[4:12]"  0.90942800045013428 0.99999797344207764 
		0.99998712539672852 0.99997812509536743 0.99999779462814331 0.99999839067459106 
		0.99994403123855591 0 0.99968540668487549;
createNode animCurveTA -n "animCurveTA1311";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 8 40.947029585382076 14 
		0 20 15.829425701546842 22 14.331626443463124 26 -10.811641225563552 30 22.593134942179454 
		34 63.16108123139599 37 3.3423255055965062 40 -28.33147073208438 47 -0.72225263268043516 
		55 -28.33147073208438;
	setAttr -s 13 ".kit[0:12]"  3 3 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 3 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1312";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 13.717778871715204 4 25.948901905116401 
		8 22.743554926231724 14 13.717778871715204 20 25.948901905116429 22 0.4082319874018141 
		26 -9.0830972443010491 30 -5.4726526619269746 34 -35.595363845044297 37 42.70484598509212 
		40 10.113681911874204 47 10.113681911874179 55 10.113681911874204;
	setAttr -s 13 ".kit[0:12]"  3 3 9 9 1 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 3 9 9 1 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kix[4:12]"  0.99546581506729126 0.3108954131603241 
		0.93325561285018921 0.4993138313293457 0.2673909068107605 0.24317258596420288 
		0.50559002161026001 1 1;
	setAttr -s 13 ".kiy[4:12]"  -0.095119811594486237 -0.95044416189193726 
		-0.35921290516853333 -0.86642122268676758 0.96358811855316162 0.96998304128646851 
		-0.86277389526367188 0 0;
	setAttr -s 13 ".kox[4:12]"  0.99546587467193604 0.3108954131603241 
		0.93325561285018921 0.4993138313293457 0.2673909068107605 0.24317258596420288 
		0.50559002161026001 1 1;
	setAttr -s 13 ".koy[4:12]"  -0.095119617879390717 -0.95044416189193726 
		-0.35921290516853333 -0.86642122268676758 0.96358811855316162 0.96998304128646851 
		-0.86277389526367188 0 0;
createNode animCurveTA -n "animCurveTA1313";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 8 20.771216329880893 14 
		0 20 0 22 -0.50956548566278548 26 -2.954679702671601 30 2.3144369118160042 
		34 1.8224410758254592 37 -9.2988248217141081 40 -3.6896128937020114 47 -3.6896128937020123 
		55 -3.6896128937020114;
	setAttr -s 13 ".kit[0:12]"  3 3 9 9 1 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 3 9 9 1 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kix[4:12]"  0.99998509883880615 0.96832883358001709 
		0.98334437608718872 0.95443600416183472 0.75494009256362915 0.90116506814956665 
		0.95947450399398804 1 1;
	setAttr -s 13 ".kiy[4:12]"  -0.0054611046798527241 -0.24967822432518005 
		0.18175207078456879 0.29841569066047668 -0.65579378604888916 -0.43347612023353577 
		0.28179541230201721 0 0;
	setAttr -s 13 ".kox[4:12]"  0.99998509883880615 0.96832883358001709 
		0.98334437608718872 0.95443600416183472 0.75494009256362915 0.90116506814956665 
		0.95947450399398804 1 1;
	setAttr -s 13 ".koy[4:12]"  -0.0054611093364655972 -0.24967822432518005 
		0.18175207078456879 0.29841569066047668 -0.65579378604888916 -0.43347612023353577 
		0.28179541230201721 0 0;
createNode animCurveTA -n "animCurveTA1314";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1315";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1316";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1317";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1318";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1319";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1320";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1321";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1322";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1323";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1324";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1325";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL466";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 4 0 8 0 12 0 14 0 20 0 22 0 
		26 0 30 0 34 0 37 0 40 0 47 0 55 0;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL467";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 4 0 8 0 12 0 14 0 20 0 22 0 
		26 0 30 0 34 0 37 0 40 0 47 0 55 0;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL468";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 4 1 8 1 12 1 14 1 20 1 22 1 
		26 1 30 1 34 1 37 1 40 1 47 1 55 1;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL469";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 4 0 8 0 12 0 14 0 20 0 22 0 
		26 0 30 0 34 0 37 0 40 0 47 0 55 0;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL470";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 4 0 8 0 12 0 14 0 20 0 22 0 
		26 0 30 0 34 0 37 0 40 0 47 0 55 0;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL471";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 4 1 8 1 12 1 14 1 20 1 22 1 
		26 1 30 1 34 1 37 1 40 1 47 1 55 1;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL472";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.076472881617957691 4 0.076472881617957691 
		8 -0.17289033686313299 12 0.076171803849399422 14 0.076472881617957691 20 
		0.033034131700396582 22 0.01216889566532684 26 -0.067340596773508177 30 -0.28074045826882532 
		34 -0.35883700050921535 37 -1.2093034727697225 40 -2.2591101781206659 47 
		-1.6421352762378554 55 -2.2591101781206659;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL473";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.96147551361829786 4 0.93105416142265018 
		8 0.96166607922299341 12 0.95329017309074449 14 0.96147551361829786 20 0.9224657007074174 
		22 0.91524338550816797 26 0.92948217727043758 30 0.96472071093595801 34 1.4137363308028799 
		37 1.5410418720851637 40 1.2803698945022608 47 1.4356475945789096 55 1.2803698945022608;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 1 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 1 9 9 9 9 9;
	setAttr -s 14 ".kix[8:13]"  0.019300941377878189 0.0040486352518200874 
		0.014994590543210506 0.03161146491765976 1 0.017171002924442291;
	setAttr -s 14 ".kiy[8:13]"  0.9998137354850769 0.999991774559021 
		-0.99988758563995361 -0.99950021505355835 0 -0.99985253810882568;
	setAttr -s 14 ".kox[8:13]"  0.019300926476716995 0.0040486352518200874 
		0.014994590543210506 0.03161146491765976 1 0.017171002924442291;
	setAttr -s 14 ".koy[8:13]"  0.9998137354850769 0.999991774559021 
		-0.99988758563995361 -0.99950021505355835 0 -0.99985253810882568;
createNode animCurveTL -n "animCurveTL474";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 4 0 8 0.034164584962791775 
		12 -0.059059410177397804 14 0 20 0.18881674669046031 22 0.31883914369988964 
		26 0.56746770564493954 30 1.0571113164685229 34 1.4089370904477301 37 1.7889687943275561 
		40 1.7693492297543687 47 1.9019358436022702 55 1.7693492297543687;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 1 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 1 9 9 9 9 9;
	setAttr -s 14 ".kix[8:13]"  0.013435677625238895 0.0031882184557616711 
		0.0055491169914603233 0.029494293034076691 1 0.020108575001358986;
	setAttr -s 14 ".kiy[8:13]"  0.99990975856781006 0.99999493360519409 
		0.99998462200164795 0.99956494569778442 0 -0.99979782104492188;
	setAttr -s 14 ".kox[8:13]"  0.013435684144496918 0.0031882184557616711 
		0.0055491169914603233 0.029494293034076691 1 0.020108575001358986;
	setAttr -s 14 ".koy[8:13]"  0.99990975856781006 0.99999493360519409 
		0.99998462200164795 0.99956494569778442 0 -0.99979782104492188;
createNode animCurveTA -n "animCurveTA1326";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.62843630316474508 4 -0.64945777164326313 
		8 3.5362358469263615 12 2.2213518221595017 14 -0.62843630316474508 20 -4.0647210446877668 
		22 -2.935775021023272 26 -3.0762169050940038 30 -6.5591355069755881 34 -6.5591355069755881 
		37 -10.96697467846017 40 -19.504876398732126 47 19.904949984433497 55 -19.504876398732126;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 1 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 1 9 9 9 9 9;
	setAttr -s 14 ".kix[8:13]"  0.9971427321434021 0.94971179962158203 
		0.66280597448348999 0.526103675365448 1 0.36147677898406982;
	setAttr -s 14 ".kiy[8:13]"  -0.075540885329246521 -0.31312531232833862 
		-0.7487911581993103 0.85042041540145874 0 -0.93238109350204468;
	setAttr -s 14 ".kox[8:13]"  0.9971427321434021 0.94971179962158203 
		0.66280597448348999 0.526103675365448 1 0.36147677898406982;
	setAttr -s 14 ".koy[8:13]"  -0.075540848076343536 -0.31312531232833862 
		-0.7487911581993103 0.85042041540145874 0 -0.93238109350204468;
createNode animCurveTA -n "animCurveTA1327";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 5.8284402688137167 4 -15.712784536999756 
		8 -37.60704203649366 12 -19.301447906299206 14 5.8284402688137167 20 -6.129632983176454 
		22 -13.600868200262255 26 -21.932677743389643 30 3.7197865316961756 34 3.7197865316961756 
		37 2.6849411150377636 40 0 47 -23.729790269354229 55 0;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 1 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 1 9 9 9 9 9;
	setAttr -s 14 ".kix[8:13]"  0.90011471509933472 0.997017502784729 
		0.95114231109619141 0.58591967821121216 1 0.54135948419570923;
	setAttr -s 14 ".kiy[8:13]"  0.43565288186073303 -0.07717539370059967 
		-0.30875280499458313 -0.81036913394927979 0 0.84079128503799438;
	setAttr -s 14 ".kox[8:13]"  0.90011477470397949 0.997017502784729 
		0.95114231109619141 0.58591967821121216 1 0.54135948419570923;
	setAttr -s 14 ".koy[8:13]"  0.43565282225608826 -0.07717539370059967 
		-0.30875280499458313 -0.81036913394927979 0 0.84079128503799438;
createNode animCurveTA -n "animCurveTA1328";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1.295636019309746 4 1.5353463816017385 
		8 1.9350868568911364 12 1.7971044910279799 14 1.295636019309746 20 1.7490863204697844 
		22 0.84256151123097234 26 1.3015925165258879 30 5.0537228151421463 34 5.0537228151421463 
		37 3.5942040383448104 40 0 47 -30.653736597065432 55 0;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1329";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1330";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1331";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1332";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1333";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1334";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1335";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1336";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1337";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1338";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1339";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1340";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1341";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1342";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1343";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1344";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1345";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1346";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1347";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1348";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1349";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 22 0 26 0 30 0 55 0;
	setAttr -s 5 ".kit[2:4]"  9 1 1;
	setAttr -s 5 ".kot[2:4]"  9 9 5;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA1350";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 22 0 26 0 30 0 55 0;
	setAttr -s 5 ".kit[2:4]"  9 1 1;
	setAttr -s 5 ".kot[2:4]"  9 9 5;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA1351";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 22 0 26 -24.501661700242042 
		30 0 55 0;
	setAttr -s 5 ".kit[2:4]"  9 1 1;
	setAttr -s 5 ".kot[2:4]"  9 9 5;
	setAttr -s 5 ".kix[3:4]"  0.29765972495079041 1;
	setAttr -s 5 ".kiy[3:4]"  0.95467203855514526 0;
createNode animCurveTA -n "animCurveTA1352";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1353";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1354";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL475";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.5198069948790518 55 -0.5198069948790518;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL476";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.72394202659893114 55 -0.72394202659893114;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL477";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.36439499068905612 55 0.36439499068905612;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1355";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.7976222737965317 55 7.7976222737965299;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1356";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 30.409274105849079 55 30.409274105849079;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1357";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 64.859940280210893 55 64.859940280210878;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL478";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.43524234076486068 55 0.43524234076486068;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL479";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.82665738350180629 55 -0.82665738350180629;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL480";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.27773886459742925 55 0.27773886459742925;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1358";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1359";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -28.652637602052774 55 -28.652637602052774;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1360";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -64.676908227303443 55 -64.676908227303443;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL481";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.75854111686822778 4 -0.57262925149573951 
		8 -0.65078171898999204 12 -0.65379941659865082 14 -0.75854111686822778 20 
		-0.71855072776607709 22 -0.79768864264128636 26 -1.2216982766104969 30 -1.6615405618010601 
		34 -1.6615405618010601 37 -2.718818699284034 40 -4.206404471075289 47 -3.0251282500831582 
		55 -4.206404471075289;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL482";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1.1932952672205326 4 1.4163535334556963 
		8 1.1595450764031354 12 1.187554025869259 14 1.1932952672205326 20 1.5241480002158414 
		22 1.642659415129353 26 2.1458374442121051 30 2.1873530019833729 34 2.1873530019833729 
		37 1.9413710135050546 40 1.7781418955835293 47 2.4322073245137408 55 1.7781418955835293;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL483";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.14314299916678522 4 -0.37264849786442289 
		8 -0.61670812692470955 12 -0.37392246864567208 14 0.14314299916678522 20 
		0.66996185967789745 22 0.83013864918616787 26 0.9774450882183453 30 1.4120938891850821 
		34 1.7877164599350404 37 2.6274946301868729 40 2.7041072647042435 47 2.4602491551945591 
		55 2.7041072647042435;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1361";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -5.7993291745893352 4 16.226511010665405 
		8 -36.342371142933764 12 -19.485233780889633 14 -5.7993291745893352 20 55.598837649680043 
		22 30.40552687334386 26 0.53074525458670618 30 -9.3708019553636923 34 -9.3708019553636923 
		37 -17.985238978769711 40 -26.203413720634725 47 -27.818924152705119 55 -26.203413720634725;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1362";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1.228264010471275 4 8.513966085499284 
		8 -11.969566747283142 12 0.96208380069696442 14 1.228264010471275 20 30.973734338623142 
		22 57.071878589129092 26 30.368244126557347 30 29.306594429857483 34 29.306594429857483 
		37 23.104847167583884 40 14.791961579779638 47 -7.8589637569602626 55 14.791961579779638;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1363";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 60.456694896838378 4 68.213989601412422 
		8 58.343731855318346 12 56.825927835201007 14 60.456694896838378 20 82.208920420259716 
		22 59.188089930048456 26 -43.401113370080203 30 -65.912336754634623 34 -65.912336754634623 
		37 -5.077971438885676 40 45.895436695401962 47 -6.0238552216777173 55 45.895436695401962;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL484";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0.97384023505055983 4 0.097868043675122127 
		8 -0.67297017784466751 10 0.53889157443010816 12 0.91687176238261336 14 0.97384023505055983 
		20 0.91837917750249576 22 0.89437419462442036 26 0.79254435424317993 30 0.50802692925305393 
		34 0.09225560444291149 37 -1.0697637662078572 40 -2.4318854543692052 47 -0.85865689186961502 
		50 -1.0663777460455246 55 -2.4318854543692052;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL485";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1.2525965505547216 4 1.6409997766055862 
		8 2.0516744866464558 10 1.9297493576614511 12 1.6867389784155029 14 1.2525965505547216 
		20 1.2376327523903852 22 1.2598377302979162 26 1.3355470437254813 30 1.5019588733907707 
		34 2.7988454248546248 37 2.2666828628028433 40 1.7241929732026566 47 2.5072247162763563 
		50 2.5434888612919893 55 1.7241929732026566;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 1 9 9 9 9 1 9;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 1 9 9 9 9 1 9;
	setAttr -s 16 ".kix[9:15]"  0.0042146164923906326 0.0030511955264955759 
		0.0018610635306686163 0.013856271281838417 0.0040685003623366356 0.023984095081686974 
		0.0020342636853456497;
	setAttr -s 16 ".kiy[9:15]"  0.99999111890792847 0.99999535083770752 
		-0.99999827146530151 0.99990397691726685 0.99999171495437622 -0.99971240758895874 
		-0.99999791383743286;
	setAttr -s 16 ".kox[9:15]"  0.0042146611958742142 0.0030511955264955759 
		0.0018610635306686163 0.013856271281838417 0.0040685003623366356 0.023984048515558243 
		0.0020342636853456497;
	setAttr -s 16 ".koy[9:15]"  0.99999111890792847 0.99999535083770752 
		-0.99999827146530151 0.99990397691726685 0.99999171495437622 -0.99971240758895874 
		-0.99999791383743286;
createNode animCurveTL -n "animCurveTL486";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -0.097994651149805143 4 0.84567637706889831 
		8 1.012740774631735 9.995 0.99955266503950313 12 0.82410919595210663 14 -0.097994651149805143 
		20 0.18811956002607613 22 0.40817563733893863 26 0.97154473824728926 30 1.7084459967887549 
		34 2.9184961808501275 37 3.1165646536977438 40 2.6858977529588222 47 3.6257457706658354 
		50 3.4262633344380617 55 2.6858977529588222;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 1 9;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 1 9;
	setAttr -s 16 ".kix[14:15]"  0.0069580026902258396 0.0022511351853609085;
	setAttr -s 16 ".kiy[14:15]"  -0.99997574090957642 -0.99999743700027466;
	setAttr -s 16 ".kox[14:15]"  0.0069580008275806904 0.0022511351853609085;
	setAttr -s 16 ".koy[14:15]"  -0.99997574090957642 -0.99999743700027466;
createNode animCurveTA -n "animCurveTA1364";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -12.222987645962959 4 71.119159344460144 
		8 115.97949163849844 9.995 78.443105148750945 12 4.4503298151152562 14 -12.222987645962959 
		20 -10.826424546146567 22 -10.826466618605725 26 -10.345092866137652 30 -29.971309712113101 
		34 -99.357306583188404 37 -71.444410515520019 40 -33.734888782993899 47 -19.345874397196617 
		50 -21.547393754778248 55 -33.734888782993899;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1365";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 19.681044208515029 4 -28.587710488537017 
		8 -70.59428487001783 10 -73.544495109388265 12 -33.344727940425187 14 19.681044208515029 
		20 -28.562123998386923 22 -27.007566258096951 26 -16.457368745399648 30 36.465641622030631 
		34 -47.240579136546721 37 -34.915716994255128 40 -14.870586397896899 47 -47.068687946319812 
		50 -42.142378080219508 55 -14.870586397896899;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1366";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -65.119655550709027 4 -145.5137268770755 
		8 -193.1888567175117 9.995 -152.83471523677741 12 -74.65908388092609 14 -65.119655550709027 
		20 -52.637498007569562 22 -53.986957445494888 26 -48.871451458157736 30 -20.091500423830848 
		34 41.619546305829736 37 6.7023665856785861 40 -30.592169336881899 47 7.3649226411748101 
		50 1.55748705668628 55 -30.592169336881899;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL487";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.10167917362943303 4 0.4001111643408698 
		8 0.4001111643408698 12 0.4001111643408698 14 0.10167917362943303 20 0.31054502397108613 
		22 0.31054502397108613 26 0.31054502397108613 30 0.31054502397108613 34 0.31054502397108613 
		37 0.31054502397108613 40 0.31054502397108613 47 0.31054502397108613 55 0.31054502397108613;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 1 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kox[1:13]"  1 1 0.0067015434615314007 0.02975996769964695 
		0.01276632584631443 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 -0.99997752904891968 -0.99955707788467407 
		0.99991852045059204 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL488";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.40762644910266188 4 -0.32054195494897236 
		8 -0.32054195494897236 12 -0.32054195494897236 14 -0.40762644910266188 20 
		-0.55640530640609931 22 -0.55640530640609931 26 -0.55640530640609931 30 -0.55640530640609931 
		34 -0.55640530640609931 37 -0.55640530640609931 40 -0.55640530640609931 47 
		-0.55640530640609931 55 -0.55640530640609931;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 1 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kox[1:13]"  1 1 0.022960146889090538 0.011305258609354496 
		0.017920814454555511 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 -0.99973636865615845 -0.99993610382080078 
		-0.9998394250869751 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL489";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.93129112588482243 4 -0.81561019929437761 
		8 -0.81561019929437761 12 -0.81561019929437761 14 -0.93129112588482243 20 
		-0.57914122395678103 22 -0.57914122395678103 26 -0.57914122395678103 30 -0.57914122395678103 
		34 -0.57914122395678103 37 -0.57914122395678103 40 -0.57914122395678103 47 
		-0.57914122395678103 55 -0.57914122395678103;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 1 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kox[1:13]"  1 1 0.017286350950598717 0.011276308447122574 
		0.0075723156332969666 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 -0.9998505711555481 0.99993640184402466 
		0.99997133016586304 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL490";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 4 -0.17523930523423681 8 -0.17523930523423681 
		12 -0.17523930523423681 14 0 20 -0.17523930523423681 22 -0.15311553630748009 
		26 -0.063331173333856433 30 -0.063331173333856433 34 -0.063331173333856433 
		37 -0.063331173333856433 40 -0.063331173333856433 47 -0.063331173333856433 
		55 -0.063331173333856433;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 1 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kox[1:13]"  1 1 0.011412221938371658 1 0.01741340197622776 
		0.017868949100375175 0.029687700793147087 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0.9999348521232605 0 -0.99984836578369141 
		0.99984031915664673 0.99955922365188599 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL491";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 4 -0.00072435787012014696 8 
		-0.00072435787012014696 12 -0.00072435787012014696 14 0 20 -0.00072435787012014696 
		22 -0.37298796460009648 26 -0.69960805773293522 30 -0.69960805773293522 34 
		-0.69960805773293522 37 -0.69960805773293522 40 -0.69960805773293522 47 -0.69960805773293522 
		55 -0.69960805773293522;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 1 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kox[1:13]"  1 1 0.94023275375366211 1 0.0071492884308099747 
		0.0028616946656256914 0.0081641571596264839 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0.34053251147270203 0 -0.99997442960739136 
		-0.9999958872795105 -0.99996668100357056 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL492";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -1 4 -0.80201435285893019 8 -0.80201435285893019 
		12 -0.80201435285893019 14 -1 20 -0.80201435285893019 22 -0.70922931248881582 
		26 -0.66762598980258558 30 -0.66762598980258558 34 -0.66762598980258558 37 
		-0.66762598980258558 40 -0.66762598980258558 47 -0.66762598980258558 55 -0.66762598980258558;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 1 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kox[1:13]"  1 1 0.010101226158440113 1 0.0091706439852714539 
		0.014880592934787273 0.063966177403926849 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 -0.99994897842407227 0 0.99995791912078857 
		0.99988925457000732 0.99795204401016235 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1367";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.061808866237340665 4 -0.061808866237337522 
		8 -0.061808866237337522 12 -0.061808866237337522 14 -0.061808866237340665 
		20 -0.061808866237337522 22 -0.061808866237337522 26 -0.061808866237337522 
		30 -0.061808866237337522 34 -0.061808866237337522 40 -0.061808866237337522 
		47 -0.061808866237337522 55 -0.061808866237337522;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1368";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -59.058178941076754 4 -59.058178941076754 
		8 -59.058178941076754 12 -59.058178941076754 14 -59.058178941076754 20 -59.058178941076754 
		22 -59.058178941076754 26 -59.058178941076754 30 -59.058178941076754 34 -59.058178941076754 
		40 -59.058178941076754 47 -59.058178941076754 55 -59.058178941076754;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1369";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 16.57914742975785 4 16.579147429757843 
		8 16.579147429757843 12 16.579147429757843 14 16.57914742975785 20 16.579147429757843 
		22 16.579147429757843 26 16.579147429757843 30 16.579147429757843 34 16.579147429757843 
		40 16.579147429757843 47 16.579147429757843 55 16.579147429757843;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1370";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 12.253734489678925 4 12.253734489678925 
		8 12.253734489678925 12 12.253734489678925 14 12.253734489678925 20 12.253734489678925 
		22 12.253734489678925 26 12.253734489678925 30 12.253734489678925 34 12.253734489678925 
		40 12.253734489678925 47 12.253734489678925 55 12.253734489678925;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1371";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -65.746751280844975 4 -65.746751280844961 
		8 -65.746751280844961 12 -65.746751280844961 14 -65.746751280844975 20 -65.746751280844961 
		22 -65.746751280844961 26 -65.746751280844961 30 -65.746751280844961 34 -65.746751280844961 
		40 -65.746751280844961 47 -65.746751280844961 55 -65.746751280844961;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1372";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 8 0 12 0 14 0 20 0 22 0 
		26 0 30 0 34 0 40 0 47 0 55 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1373";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 15.711328223519061 4 15.711328223519057 
		8 15.711328223519057 12 15.711328223519057 14 15.711328223519061 20 15.711328223519057 
		22 15.711328223519057 26 15.711328223519057 30 15.711328223519057 34 15.711328223519057 
		40 15.711328223519057 47 15.711328223519057 55 15.711328223519057;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1374";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 8.5572674112203657 4 8.5572674112203622 
		8 8.5572674112203622 12 8.5572674112203622 14 8.5572674112203657 20 8.5572674112203622 
		22 8.5572674112203622 26 8.5572674112203622 30 8.5572674112203622 34 8.5572674112203622 
		40 8.5572674112203622 47 8.5572674112203622 55 8.5572674112203622;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1375";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 8 0 12 0 14 0 20 0 22 0 
		26 0 30 0 34 0 40 0 47 0 55 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1376";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 8 0 12 0 14 0 20 0 22 0 
		26 0 30 0 34 0 40 0 47 0 55 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1377";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 8 0 12 0 14 0 20 0 22 0 
		26 0 30 0 34 0 40 0 47 0 55 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1378";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 8 0 12 0 14 0 20 0 22 0 
		26 0 30 0 34 0 40 0 47 0 55 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1379";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 8 0 12 0 14 0 20 0 22 0 
		26 0 30 0 34 0 40 0 47 0 55 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1380";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 8 0 12 0 14 0 20 0 22 0 
		26 0 30 0 34 0 40 0 47 0 55 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1381";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 198.501726992805 4 19.002497950056888 
		8 19.002497950056888 12 19.002497950056888 14 198.501726992805 20 19.002497950056888 
		22 19.002497950056888 26 19.002497950056888 30 19.002497950056888 34 19.002497950056888 
		40 19.002497950056888 47 19.002497950056888 55 19.002497950056888;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1382";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 23.263402056531085 4 23.263402056531085 
		8 23.263402056531085 12 23.263402056531085 14 23.263402056531085 20 23.263402056531085 
		22 23.263402056531085 26 23.263402056531085 30 23.263402056531085 34 23.263402056531085 
		40 23.263402056531085 47 23.263402056531085 55 23.263402056531085;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1383";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 20.166277752815617 4 20.166277752815617 
		8 20.166277752815617 12 20.166277752815617 14 20.166277752815617 20 20.166277752815617 
		22 20.166277752815617 26 20.166277752815617 30 20.166277752815617 34 20.166277752815617 
		40 20.166277752815617 47 20.166277752815617 55 20.166277752815617;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1384";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 8 0 12 0 14 0 20 0 22 0 
		26 0 30 0 34 0 40 0 47 0 55 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1385";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 8 0 12 0 14 0 20 0 22 0 
		26 0 30 0 34 0 40 0 47 0 55 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1386";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 33.429092416277157 4 33.429092416277157 
		8 33.429092416277157 12 33.429092416277157 14 33.429092416277157 20 33.429092416277157 
		22 33.429092416277157 26 33.429092416277157 30 33.429092416277157 34 33.429092416277157 
		40 33.429092416277157 47 33.429092416277157 55 33.429092416277157;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1387";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1388";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1389";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1390";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1391";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1392";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 55 13.994403295754109;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1393";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1394";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 55 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1395";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 55 13.994403295754109;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1396";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 8 0 12 0 14 0 20 0 22 0 
		26 0 30 0 34 0 40 0 47 0 55 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1397";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 8 0 12 0 14 0 20 0 22 0 
		26 0 30 0 34 0 40 0 47 0 55 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1398";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 17.254116939558369 4 17.254116939558369 
		8 17.254116939558369 12 17.254116939558369 14 17.254116939558369 20 17.254116939558369 
		22 17.254116939558369 26 17.254116939558369 30 17.254116939558369 34 17.254116939558369 
		40 17.254116939558369 47 17.254116939558369 55 17.254116939558369;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1399";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 8 0 12 0 14 0 20 0 22 0 
		26 0 30 0 34 0 40 0 47 0 55 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1400";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 8 0 12 0 14 0 20 0 22 0 
		26 0 30 0 34 0 40 0 47 0 55 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1401";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 8 0 12 0 14 0 20 0 22 0 
		26 0 30 0 34 0 40 0 47 0 55 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1402";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.65073001024951671 4 -17.865547004487734 
		8 -26.344302103719443 12 -15.995208714699748 14 0.65073001024951671 20 -7.8430056866173823 
		22 -7.8430056866173823 26 -7.8430056866173823 30 -18.820843871529618 34 -18.820843871529618 
		40 1.3731006602189262 47 5.9660149388432382 55 1.3731006602189262;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1403";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 4.2368721935960938 4 8.1938064043711503 
		8 14.600939198760139 12 10.255568461043122 14 4.2368721935960938 20 2.4212113907903019 
		22 2.4212113907903019 26 2.4212113907903019 30 8.442588645585376 34 8.442588645585376 
		40 -0.38374158911587303 47 4.5116636179203082 55 -0.38374158911587303;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 2.6995264082587447 4 15.088783978648813 
		8 18.187946831246631 12 13.315807209516004 14 2.6995264082587447 20 14.868855041301886 
		22 14.868855041301886 26 14.868855041301886 30 16.699953369662587 34 16.699953369662587 
		40 0.96901743689791309 47 2.3811787268879385 55 0.96901743689791309;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1405";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 8 0 12 0 14 0 20 -7.1097278539792699 
		22 -7.1097278539792699 26 -7.1097278539792699 30 -7.1097278539792699 34 -7.1097278539792699 
		40 2.2144674450583466 47 -7.1097278539792699 55 2.2144674450583466;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1406";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 8 0 12 0 14 0 20 0 22 0 
		26 0 30 0 34 0 40 5.36423803921525 47 0 55 5.36423803921525;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 6.9655753505297673 8 6.9655753505297673 
		12 6.9655753505297673 14 0 20 6.9655753505297673 22 6.9655753505297673 26 
		6.9655753505297673 30 6.9655753505297673 34 6.9655753505297673 40 -3.2584064202075531 
		47 6.9655753505297673 55 -3.2584064202075531;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1408";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 4.0198472869727979 4 5.9242295281046466 
		8 -1.8652854771413565 12 -21.728187361662286 14 4.0198472869727979 20 8.2806877228551272 
		22 8.9764510997163622 26 5.2494090226201955 30 5.2378895149391758 34 -3.7903101035041509 
		40 -4.9690701715193724 43 -46.227209466300053 47 -38.999395730978343 55 -4.9690701715193724;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 1 9 
		9 9 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 1 9 
		9 9 9 9 9 9 5;
	setAttr -s 14 ".kix[5:13]"  0.91116088628768921 0.96674752235412598 
		0.97134435176849365 0.86064779758453369 0.88194912672042847 0.37541595101356506 
		0.36565139889717102 0.48559635877609253 0.40958940982818604;
	setAttr -s 14 ".kiy[5:13]"  0.4120507538318634 -0.25573271512985229 
		-0.23767659068107605 -0.50920075178146362 -0.47134461998939514 -0.92685645818710327 
		-0.93075186014175415 0.87418317794799805 0.9122699499130249;
	setAttr -s 14 ".kox[5:13]"  0.91116094589233398 0.96674752235412598 
		0.97134435176849365 0.86064779758453369 0.88194912672042847 0.37541595101356506 
		0.36565139889717102 0.48559635877609253 0;
	setAttr -s 14 ".koy[5:13]"  0.41205063462257385 -0.25573271512985229 
		-0.23767659068107605 -0.50920075178146362 -0.47134461998939514 -0.92685645818710327 
		-0.93075186014175415 0.87418317794799805 0;
createNode animCurveTA -n "animCurveTA1409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 9.1335573833666519 4 9.077909751430024 
		8 -16.975603900501056 12 -21.522809173019919 14 9.1335573833666519 20 8.5086629712104536 
		22 6.9980377420294353 26 7.4288331807529291 30 25.174728286073833 34 7.1873577666484181 
		40 2.9904681746768538 43 -43.464870903715401 47 -68.701263884681893 55 2.9904681746768538;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 1 1 
		9 9 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 1 1 
		9 9 9 9 9 9 5;
	setAttr -s 14 ".kix[5:13]"  0.99601650238037109 0.95914065837860107 
		0.64345020055770874 0.99987512826919556 0.65243446826934814 0.32134926319122314 
		0.18331900238990784 0.44242957234382629 0.20843805372714996;
	setAttr -s 14 ".kiy[5:13]"  0.089168936014175415 -0.28292959928512573 
		0.76548796892166138 -0.015802554786205292 -0.75784516334533691 -0.94696074724197388 
		-0.98305350542068481 0.89680325984954834 0.978035569190979;
	setAttr -s 14 ".kox[5:13]"  0.99601650238037109 0.95914071798324585 
		0.64345020055770874 0.99987512826919556 0.65243446826934814 0.32134926319122314 
		0.18331900238990784 0.44242957234382629 0;
	setAttr -s 14 ".koy[5:13]"  0.089168928563594818 -0.28292950987815857 
		0.76548796892166138 -0.015802554786205292 -0.75784516334533691 -0.94696074724197388 
		-0.98305350542068481 0.89680325984954834 0;
createNode animCurveTA -n "animCurveTA1410";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -2.2752136084709536 4 -7.2687178407216164 
		8 -14.2973988729951 12 -1.4936145831966527 14 -2.2752136084709536 20 -2.3189154341807527 
		22 -5.9940130223088586 26 -11.077093509012803 30 -8.0550223726483026 34 12.477959126589024 
		40 14.780225156536881 43 14.102963811421818 47 -10.15874635942871 55 14.780225156536881;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 1 1 
		9 9 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 1 1 
		9 9 9 9 9 9 5;
	setAttr -s 14 ".kix[5:13]"  0.7913811206817627 0.67820924520492554 
		0.99102425575256348 0.54418915510177612 0.64155560731887817 0.99556094408035278 
		0.47246447205543518 0.99956363439559937 1;
	setAttr -s 14 ".kiy[5:13]"  -0.61132305860519409 -0.73486888408660889 
		-0.13368198275566101 0.83896255493164063 0.76707649230957031 0.094119273126125336 
		-0.88134974241256714 0.02953820675611496 0;
	setAttr -s 14 ".kox[5:13]"  0.79138118028640747 0.67820918560028076 
		0.99102425575256348 0.54418915510177612 0.64155560731887817 0.99556094408035278 
		0.47246447205543518 0.99956363439559937 0;
	setAttr -s 14 ".koy[5:13]"  -0.61132305860519409 -0.73486888408660889 
		-0.13368198275566101 0.83896255493164063 0.76707649230957031 0.094119273126125336 
		-0.88134974241256714 0.02953820675611496 0;
createNode animCurveTA -n "animCurveTA1411";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1.8903601258661935 4 1.8903601258661931 
		8 10.620934651579155 12 1.8903601258661931 14 1.8903601258661935 20 1.8903601258661931 
		22 1.8903601258661931 26 1.8903601258661931 30 1.8903601258661931 34 1.8903601258661931 
		40 -2.211833892135727 47 3.749937051835468 55 -2.211833892135727;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1412";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -2.5597289571479038 4 -2.5597289571479034 
		8 4.2675310995034259 12 -2.5597289571479034 14 -2.5597289571479038 20 -2.5597289571479034 
		22 -2.5597289571479034 26 -2.5597289571479034 30 -2.5597289571479034 34 -2.5597289571479034 
		40 -1.708673036061555 47 -11.126545227672914 55 -1.708673036061555;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1413";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 2.0168110874036049 4 2.016811087403604 
		8 -2.5690730322880704 12 2.016811087403604 14 2.0168110874036049 20 2.016811087403604 
		22 2.016811087403604 26 2.016811087403604 30 2.016811087403604 34 2.016811087403604 
		40 2.7082804953288209 47 -2.1144942238017537 55 2.7082804953288209;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1414";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 8 0 12 0 14 0 20 0 22 0 
		26 0 30 0 34 0 40 0 47 0 55 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1415";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 8 0 12 0 14 0 20 0 22 0 
		26 0 30 0 34 0 40 0 47 0 55 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1416";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 27.080064458283051 4 27.080064458283051 
		8 27.080064458283051 12 27.080064458283051 14 27.080064458283051 20 27.080064458283051 
		22 27.080064458283051 26 27.080064458283051 30 27.080064458283051 34 27.080064458283051 
		40 27.080064458283051 47 27.080064458283051 55 27.080064458283051;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1417";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 10.423754966968488 4 -177.04830761929054 
		8 -177.04830761929054 12 -177.04830761929054 14 10.423754966968488 20 -177.04830761929054 
		22 -177.04830761929054 26 -177.04830761929054 30 -177.04830761929054 34 -177.04830761929054 
		40 -177.04830761929054 47 -177.04830761929054 55 -177.04830761929054;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1418";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 27.7228482558439 4 27.722848255843903 
		8 27.722848255843903 12 27.722848255843903 14 27.7228482558439 20 27.722848255843903 
		22 27.722848255843903 26 27.722848255843903 30 27.722848255843903 34 27.722848255843903 
		40 27.722848255843903 47 27.722848255843903 55 27.722848255843903;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1419";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 21.576484776388224 4 21.576484776388227 
		8 21.576484776388227 12 21.576484776388227 14 21.576484776388224 20 21.576484776388227 
		22 21.576484776388227 26 21.576484776388227 30 21.576484776388227 34 21.576484776388227 
		40 21.576484776388227 47 21.576484776388227 55 21.576484776388227;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1420";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 8 0 12 0 14 0 20 0 22 0 
		26 0 30 0 34 0 40 0 47 0 55 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1421";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 8 0 12 0 14 0 20 0 22 0 
		26 0 30 0 34 0 40 0 47 0 55 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1422";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 27.911632519594587 4 27.911632519594587 
		8 27.911632519594587 12 27.911632519594587 14 27.911632519594587 20 27.911632519594587 
		22 27.911632519594587 26 27.911632519594587 30 27.911632519594587 34 27.911632519594587 
		40 27.911632519594587 47 27.911632519594587 55 27.911632519594587;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode clipLibrary -n "clipLibrary2";
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
connectAttr "lsa_get_into_car_all.st" "clipLibrary2.st[0]";
connectAttr "lsa_get_into_car_all.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL452.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL453.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "animCurveTL454.a" "clipLibrary2.cel[0].cev[2].cevr";
connectAttr "animCurveTL455.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "animCurveTL456.a" "clipLibrary2.cel[0].cev[4].cevr";
connectAttr "animCurveTA1304.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "animCurveTU89.a" "clipLibrary2.cel[0].cev[6].cevr";
connectAttr "animCurveTU90.a" "clipLibrary2.cel[0].cev[7].cevr";
connectAttr "animCurveTU91.a" "clipLibrary2.cel[0].cev[8].cevr";
connectAttr "animCurveTU92.a" "clipLibrary2.cel[0].cev[9].cevr";
connectAttr "animCurveTU93.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU94.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU95.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU96.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA1305.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA1306.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA1307.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL457.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL458.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL459.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL460.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL461.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL462.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA1308.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA1309.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA1310.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL463.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL464.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL465.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA1311.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA1312.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA1313.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA1314.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA1315.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA1316.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA1317.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA1318.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA1319.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTA1320.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTA1321.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTA1322.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTA1323.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTA1324.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTA1325.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL466.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL467.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL468.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTL469.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTL470.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTL471.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTL472.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTL473.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTL474.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA1326.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA1327.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA1328.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA1329.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA1330.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA1331.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA1332.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA1333.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA1334.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA1335.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA1336.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA1337.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA1338.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA1339.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA1340.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA1341.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA1342.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA1343.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA1344.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA1345.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA1346.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA1347.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA1348.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTA1349.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTA1350.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTA1351.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA1352.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA1353.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA1354.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL475.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL476.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL477.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA1355.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA1356.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA1357.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL478.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL479.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL480.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA1358.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA1359.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA1360.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL481.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL482.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL483.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA1361.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA1362.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA1363.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL484.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL485.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL486.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTA1364.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTA1365.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTA1366.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTL487.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTL488.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTL489.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTL490.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTL491.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTL492.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA1367.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA1368.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA1369.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA1370.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA1371.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA1372.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA1373.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA1374.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA1375.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA1376.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA1377.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA1378.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA1379.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA1380.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA1381.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA1382.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA1383.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA1384.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA1385.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA1386.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA1387.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA1388.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA1389.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA1390.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA1391.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA1392.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA1393.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA1394.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA1395.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA1396.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA1397.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA1398.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA1399.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA1400.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA1401.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA1402.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA1403.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA1404.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA1405.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA1406.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA1407.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA1408.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA1409.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA1410.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA1411.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA1412.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA1413.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA1414.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA1415.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA1416.a" "clipLibrary2.cel[0].cev[161].cevr";
connectAttr "animCurveTA1417.a" "clipLibrary2.cel[0].cev[162].cevr";
connectAttr "animCurveTA1418.a" "clipLibrary2.cel[0].cev[163].cevr";
connectAttr "animCurveTA1419.a" "clipLibrary2.cel[0].cev[164].cevr";
connectAttr "animCurveTA1420.a" "clipLibrary2.cel[0].cev[165].cevr";
connectAttr "animCurveTA1421.a" "clipLibrary2.cel[0].cev[166].cevr";
connectAttr "animCurveTA1422.a" "clipLibrary2.cel[0].cev[167].cevr";
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
// End of lsa-m_get_into_car_all.ma
