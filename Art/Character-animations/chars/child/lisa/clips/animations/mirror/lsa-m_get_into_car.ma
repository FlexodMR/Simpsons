//Maya ASCII 4.0 scene
//Name: lsa-m_get_into_car.ma
//Last modified: Wed, Jul 31, 2002 04:46:14 PM
requires maya "4.0";
requires "p3dSimpleShader" "18.0";
requires "p3dmayaexp" "18.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "lsa_get_into_car";
	setAttr ".ihi" 0;
	setAttr ".du" 26;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL452";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL453";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL454";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0.033135114381557439 1 0.0306021365172441 
		2 0.027726529794494012 3 0.024584075320636146 4 0.021250554202999494 5 0.017801747548913026 
		6 0.014313436465705733 7 0.010734512351929862 8 0.0052726893669606143 9 -0.0012130151396384699 
		10 -0.007644826530591519 11 -0.016230593625766628 12 -0.02917816524503189 
		13 -0.049589255408637824 14 -0.075448692768568429 15 -0.10128899809229201 
		16 -0.12164269214727692 17 -0.12503372520137707 18 -0.11771743779042844 19 
		-0.12082343608387421 20 -0.15548132625115763 21 -0.24606854385280333 22 -0.38022676136320721 
		23 -0.52398194032261869 24 -0.69873507412515967 25 -0.88308515703612245 26 
		-0.97885515190251315;
createNode animCurveTL -n "animCurveTL455";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0;
createNode animCurveTL -n "animCurveTL456";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 1 0.012984927022062094 2 0.025469356624952394 
		3 0.038023826335647957 4 0.051218873681125862 5 0.065625036188363128 6 0.081812851384336874 
		7 0.10746280433691582 8 0.13815056098700493 9 0.16286706689461625 10 0.18569421973066993 
		11 0.2116817564980604 12 0.24587941419968165 13 0.29950593128021336 14 0.36657739836785747 
		15 0.42633958074079148 16 0.45803824367719337 17 0.47940976773664695 18 0.51698377269462181 
		19 0.56319586700650026 20 0.61048165912766428 21 0.66752255171800967 22 0.73095484375108311 
		23 0.77514648815274456 24 0.78342248648132129 25 0.77245783550528058 26 0.76664548096569152;
createNode animCurveTA -n "animCurveTA1304";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0;
createNode animCurveTU -n "animCurveTU9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU15";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 16 1 26 1;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 16 1 26 1;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1305";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1306";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1307";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL457";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL458";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL459";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL460";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.21594587158542247 6 -0.21594587158542247 
		8 -0.21594587158542247 12 -0.13963627310524832 16 -0.78871766039456459 20 
		-0.78871766039456459 23 -1.4361886848485597 26 -2.4790535543793637;
	setAttr -s 8 ".kit[4:7]"  3 9 9 9;
	setAttr -s 8 ".kot[4:7]"  3 9 9 9;
createNode animCurveTL -n "animCurveTL461";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.1380615615975922 6 0.13777142593280561 
		8 0.13777142593280561 12 0.15776172601265276 16 0.78001930404657405 20 0.78001930404657405 
		23 1.0116405815805272 26 0.9833319268331725;
	setAttr -s 8 ".kit[4:7]"  3 9 9 9;
	setAttr -s 8 ".kot[4:7]"  3 9 9 9;
createNode animCurveTL -n "animCurveTL462";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.00078430246903575811 6 0.00078430246903575811 
		8 0.00078430246903575811 12 0.14969380950094124 16 1.2889513117444105 20 
		1.5793782648492296 23 2.26208031869812 26 2.4327597250722541;
	setAttr -s 8 ".kit[4:7]"  3 9 9 9;
	setAttr -s 8 ".kot[4:7]"  3 9 9 9;
createNode animCurveTA -n "animCurveTA1308";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 0 8 0 12 44.388556084713827 
		16 -17.613616873884094 20 -17.613616873884094 23 -22.174262600566369 26 -27.647037481197394;
	setAttr -s 8 ".kit[4:7]"  3 9 9 9;
	setAttr -s 8 ".kot[4:7]"  3 9 9 9;
createNode animCurveTA -n "animCurveTA1309";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 0 8 0 12 -8.3467315155771242 
		16 -40.787271126349502 20 -40.787271126349502 23 -22.996288908790323 26 -1.6471102606573029;
	setAttr -s 8 ".kit[4:7]"  3 9 9 9;
	setAttr -s 8 ".kot[4:7]"  3 9 9 9;
createNode animCurveTA -n "animCurveTA1310";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 0 8 0 12 7.7471581766269448 
		16 -7.3958374073208715 20 -7.3958374073208715 23 -7.5760086727188929 26 -7.792214191643251;
	setAttr -s 8 ".kit[4:7]"  3 9 9 9;
	setAttr -s 8 ".kot[4:7]"  3 9 9 9;
createNode animCurveTL -n "animCurveTL463";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.26454016861507795 6 0.2173751638612961 
		8 0.17721361257686638 12 -0.014387102308690393 16 -0.019043121068561687 20 
		-0.028822034365029829 23 -0.82409193837269812 26 -2.0407430139147178;
createNode animCurveTL -n "animCurveTL464";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.13806192026723146 6 0.14108570071487245 
		8 0.17862100800168421 12 0.14826816906663071 16 0.17199391129371869 20 0.71918268285638098 
		23 0.89960345004200148 26 0.99995529262164395;
	setAttr -s 8 ".kit[1:7]"  3 9 1 1 9 9 9;
	setAttr -s 8 ".kot[1:7]"  3 9 1 1 9 9 9;
	setAttr -s 8 ".kix[3:7]"  0.03802553191781044 0.016002556309103966 
		0.0032068316359072924 0.0071230209432542324 0.0099644465371966362;
	setAttr -s 8 ".kiy[3:7]"  -0.99927669763565063 0.99987202882766724 
		0.99999487400054932 0.99997460842132568 0.9999503493309021;
	setAttr -s 8 ".kox[3:7]"  0.038025688380002975 0.016002470627427101 
		0.0032068316359072924 0.0071230209432542324 0.0099644465371966362;
	setAttr -s 8 ".koy[3:7]"  -0.99927669763565063 0.99987202882766724 
		0.99999487400054932 0.99997460842132568 0.9999503493309021;
createNode animCurveTL -n "animCurveTL465";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.064904406754016042 6 -0.064904406754016042 
		8 0.38761032248211302 12 0.92356787827008124 16 0.91265126660440776 20 1.3265112247752731 
		23 2.0187165276500982 26 2.4400670660903248;
	setAttr -s 8 ".kit[1:7]"  1 9 9 9 9 9 9;
	setAttr -s 8 ".kot[1:7]"  1 9 9 9 9 9 9;
	setAttr -s 8 ".kix[1:7]"  0.41586130857467651 0.0020233201794326305 
		0.0050789033994078636 0.0066178240813314915 0.002109575318172574 0.0017960452241823077 
		0.0023733144626021385;
	setAttr -s 8 ".kiy[1:7]"  0.90942800045013428 0.99999797344207764 
		0.99998712539672852 0.99997812509536743 0.99999779462814331 0.99999839067459106 
		0.99999719858169556;
	setAttr -s 8 ".kox[1:7]"  0.41586148738861084 0.0020233201794326305 
		0.0050789033994078636 0.0066178240813314915 0.002109575318172574 0.0017960452241823077 
		0.0023733144626021385;
	setAttr -s 8 ".koy[1:7]"  0.90942800045013428 0.99999797344207764 
		0.99998712539672852 0.99997812509536743 0.99999779462814331 0.99999839067459106 
		0.99999719858169556;
createNode animCurveTA -n "animCurveTA1311";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 15.829425701546842 8 14.331626443463124 
		12 -10.811641225563552 16 22.593134942179454 20 63.16108123139599 23 3.3423255055965062 
		26 -28.33147073208438;
createNode animCurveTA -n "animCurveTA1312";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 13.717778871715204 6 25.948901905116429 
		8 0.4082319874018141 12 -9.0830972443010491 16 -5.4726526619269746 20 -35.595363845044297 
		23 42.70484598509212 26 10.113681911874204;
	setAttr -s 8 ".kit[1:7]"  1 9 9 9 9 9 9;
	setAttr -s 8 ".kot[1:7]"  1 9 9 9 9 9 9;
	setAttr -s 8 ".kix[1:7]"  0.99546581506729126 0.3108954131603241 
		0.93325561285018921 0.4993138313293457 0.2673909068107605 0.24317258596420288 
		0.1731463223695755;
	setAttr -s 8 ".kiy[1:7]"  -0.095119811594486237 -0.95044416189193726 
		-0.35921290516853333 -0.86642122268676758 0.96358811855316162 0.96998304128646851 
		-0.98489612340927124;
	setAttr -s 8 ".kox[1:7]"  0.99546587467193604 0.3108954131603241 
		0.93325561285018921 0.4993138313293457 0.2673909068107605 0.24317258596420288 
		0.1731463223695755;
	setAttr -s 8 ".koy[1:7]"  -0.095119617879390717 -0.95044416189193726 
		-0.35921290516853333 -0.86642122268676758 0.96358811855316162 0.96998304128646851 
		-0.98489612340927124;
createNode animCurveTA -n "animCurveTA1313";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 0 8 -0.50956548566278548 
		12 -2.954679702671601 16 2.3144369118160042 20 1.8224410758254592 23 -9.2988248217141081 
		26 -3.6896128937020114;
	setAttr -s 8 ".kit[1:7]"  1 9 9 9 9 9 9;
	setAttr -s 8 ".kot[1:7]"  1 9 9 9 9 9 9;
	setAttr -s 8 ".kix[1:7]"  0.99998509883880615 0.96832883358001709 
		0.98334437608718872 0.95443600416183472 0.75494009256362915 0.90116506814956665 
		0.71457284688949585;
	setAttr -s 8 ".kiy[1:7]"  -0.0054611046798527241 -0.24967822432518005 
		0.18175207078456879 0.29841569066047668 -0.65579378604888916 -0.43347612023353577 
		0.69956105947494507;
	setAttr -s 8 ".kox[1:7]"  0.99998509883880615 0.96832883358001709 
		0.98334437608718872 0.95443600416183472 0.75494009256362915 0.90116506814956665 
		0.71457284688949585;
	setAttr -s 8 ".koy[1:7]"  -0.0054611093364655972 -0.24967822432518005 
		0.18175207078456879 0.29841569066047668 -0.65579378604888916 -0.43347612023353577 
		0.69956105947494507;
createNode animCurveTA -n "animCurveTA1314";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1315";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1316";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1317";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1318";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1319";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1320";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1321";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1322";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1323";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1324";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1325";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL466";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 0 8 0 12 0 16 0 20 0 23 0 
		26 0;
createNode animCurveTL -n "animCurveTL467";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 0 8 0 12 0 16 0 20 0 23 0 
		26 0;
createNode animCurveTL -n "animCurveTL468";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 6 1 8 1 12 1 16 1 20 1 23 1 
		26 1;
createNode animCurveTL -n "animCurveTL469";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 0 8 0 12 0 16 0 20 0 23 0 
		26 0;
createNode animCurveTL -n "animCurveTL470";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 0 8 0 12 0 16 0 20 0 23 0 
		26 0;
createNode animCurveTL -n "animCurveTL471";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 6 1 8 1 12 1 16 1 20 1 23 1 
		26 1;
createNode animCurveTL -n "animCurveTL472";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.076472881617957691 6 0.033034131700396582 
		8 0.01216889566532684 12 -0.067340596773508177 16 -0.28074045826882532 20 
		-0.35883700050921535 23 -1.2093034727697225 26 -2.2591101781206659;
createNode animCurveTL -n "animCurveTL473";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.96147551361829786 6 0.9224657007074174 
		8 0.91524338550816797 12 0.92948217727043758 16 0.96472071093595801 20 1.4137363308028799 
		23 1.5410418720851637 26 1.2803698945022608;
	setAttr -s 8 ".kit[4:7]"  1 9 9 9;
	setAttr -s 8 ".kot[4:7]"  1 9 9 9;
	setAttr -s 8 ".kix[4:7]"  0.019300941377878189 0.0040486352518200874 
		0.014994590543210506 0.0038362112827599049;
	setAttr -s 8 ".kiy[4:7]"  0.9998137354850769 0.999991774559021 
		-0.99988758563995361 -0.99999266862869263;
	setAttr -s 8 ".kox[4:7]"  0.019300926476716995 0.0040486352518200874 
		0.014994590543210506 0.0038362112827599049;
	setAttr -s 8 ".koy[4:7]"  0.9998137354850769 0.999991774559021 
		-0.99988758563995361 -0.99999266862869263;
createNode animCurveTL -n "animCurveTL474";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 0.18881674669046031 8 0.31883914369988964 
		12 0.56746770564493954 16 1.0571113164685229 20 1.4089370904477301 23 1.7889687943275561 
		26 1.7693492297543687;
	setAttr -s 8 ".kit[4:7]"  1 9 9 9;
	setAttr -s 8 ".kot[4:7]"  1 9 9 9;
	setAttr -s 8 ".kix[4:7]"  0.013435677625238895 0.0031882184557616711 
		0.0055491169914603233 0.050903458148241043;
	setAttr -s 8 ".kiy[4:7]"  0.99990975856781006 0.99999493360519409 
		0.99998462200164795 -0.99870359897613525;
	setAttr -s 8 ".kox[4:7]"  0.013435684144496918 0.0031882184557616711 
		0.0055491169914603233 0.050903458148241043;
	setAttr -s 8 ".koy[4:7]"  0.99990975856781006 0.99999493360519409 
		0.99998462200164795 -0.99870359897613525;
createNode animCurveTA -n "animCurveTA1326";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.62843630316474508 6 -4.0647210446877668 
		8 -2.935775021023272 12 -3.0762169050940038 16 -6.5591355069755881 20 -6.5591355069755881 
		23 -10.96697467846017 26 -19.504876398732126;
	setAttr -s 8 ".kit[4:7]"  1 9 9 9;
	setAttr -s 8 ".kot[4:7]"  1 9 9 9;
	setAttr -s 8 ".kix[4:7]"  0.9971427321434021 0.94971179962158203 
		0.66280597448348999 0.55723220109939575;
	setAttr -s 8 ".kiy[4:7]"  -0.075540885329246521 -0.31312531232833862 
		-0.7487911581993103 -0.83035671710968018;
	setAttr -s 8 ".kox[4:7]"  0.9971427321434021 0.94971179962158203 
		0.66280597448348999 0.55723220109939575;
	setAttr -s 8 ".koy[4:7]"  -0.075540848076343536 -0.31312531232833862 
		-0.7487911581993103 -0.83035671710968018;
createNode animCurveTA -n "animCurveTA1327";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 5.8284402688137167 6 -6.129632983176454 
		8 -13.600868200262255 12 -21.932677743389643 16 3.7197865316961756 20 3.7197865316961756 
		23 2.6849411150377636 26 0;
	setAttr -s 8 ".kit[4:7]"  1 9 9 9;
	setAttr -s 8 ".kot[4:7]"  1 9 9 9;
	setAttr -s 8 ".kix[4:7]"  0.90011471509933472 0.997017502784729 
		0.95114231109619141 0.90550744533538818;
	setAttr -s 8 ".kiy[4:7]"  0.43565288186073303 -0.07717539370059967 
		-0.30875280499458313 -0.42433035373687744;
	setAttr -s 8 ".kox[4:7]"  0.90011477470397949 0.997017502784729 
		0.95114231109619141 0.90550744533538818;
	setAttr -s 8 ".koy[4:7]"  0.43565282225608826 -0.07717539370059967 
		-0.30875280499458313 -0.42433035373687744;
createNode animCurveTA -n "animCurveTA1328";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.295636019309746 6 1.7490863204697844 
		8 0.84256151123097234 12 1.3015925165258879 16 5.0537228151421463 20 5.0537228151421463 
		23 3.5942040383448104 26 0;
createNode animCurveTA -n "animCurveTA1329";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1330";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1331";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1332";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1333";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1334";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1335";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1336";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1337";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1338";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1339";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1340";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1341";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1342";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1343";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1344";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1345";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1346";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1347";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1348";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1349";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 12 0 16 0 26 0;
	setAttr -s 5 ".kit[1:4]"  3 9 1 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1350";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 12 0 16 0 26 0;
	setAttr -s 5 ".kit[1:4]"  3 9 1 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1351";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 12 -24.501661700242042 
		16 0 26 0;
	setAttr -s 5 ".kit[1:4]"  3 9 1 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[3:4]"  0.29765972495079041 1;
	setAttr -s 5 ".kiy[3:4]"  0.95467203855514526 0;
	setAttr -s 5 ".kox[1:4]"  1 1 0.73726671934127808 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0.6756017804145813 0;
createNode animCurveTA -n "animCurveTA1352";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1353";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1354";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL475";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.5198069948790518 16 -0.5198069948790518 
		26 -0.5198069948790518;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL476";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.72394202659893114 16 -0.72394202659893114 
		26 -0.72394202659893114;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL477";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.36439499068905612 16 0.36439499068905612 
		26 0.36439499068905612;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1355";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.7976222737965299 16 7.7976222737965299 
		26 7.7976222737965299;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1356";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 30.409274105849079 16 30.409274105849079 
		26 30.409274105849079;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1357";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 64.859940280210878 16 64.859940280210878 
		26 64.859940280210878;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL478";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.43524234076486068 16 0.43524234076486068 
		26 0.43524234076486068;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL479";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.82665738350180629 16 -0.82665738350180629 
		26 -0.82665738350180629;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL480";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.27773886459742925 16 0.27773886459742925 
		26 0.27773886459742925;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1358";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1359";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -28.652637602052774 16 -28.652637602052774 
		26 -28.652637602052774;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1360";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -64.676908227303443 16 -64.676908227303443 
		26 -64.676908227303443;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL481";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.75854111686822778 6 -0.71855072776607709 
		8 -0.79768864264128636 12 -1.2216982766104969 16 -1.6615405618010601 20 -1.6615405618010601 
		23 -2.718818699284034 26 -4.206404471075289;
createNode animCurveTL -n "animCurveTL482";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.1932952672205326 6 1.5241480002158414 
		8 1.642659415129353 12 2.1458374442121051 16 2.1873530019833729 20 2.1873530019833729 
		23 1.9413710135050546 26 1.7781418955835293;
createNode animCurveTL -n "animCurveTL483";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.14314299916678522 6 0.66996185967789745 
		8 0.83013864918616787 12 0.9774450882183453 16 1.4120938891850821 20 1.7877164599350404 
		23 2.6274946301868729 26 2.7041072647042435;
createNode animCurveTA -n "animCurveTA1361";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -5.7993291745893352 6 55.598837649680043 
		8 30.40552687334386 12 0.53074525458670618 16 -9.3708019553636923 20 -9.3708019553636923 
		23 -17.985238978769711 26 -26.203413720634725;
createNode animCurveTA -n "animCurveTA1362";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.228264010471275 6 30.973734338623142 
		8 57.071878589129092 12 30.368244126557347 16 29.306594429857483 20 29.306594429857483 
		23 23.104847167583884 26 14.791961579779638;
createNode animCurveTA -n "animCurveTA1363";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 60.456694896838378 6 82.208920420259716 
		8 59.188089930048456 12 -43.401113370080203 16 -65.912336754634623 20 -65.912336754634623 
		23 -5.077971438885676 26 45.895436695401962;
createNode animCurveTL -n "animCurveTL484";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.97384023505055983 6 0.91837917750249576 
		8 0.89437419462442036 12 0.79254435424317993 16 0.50802692925305393 20 0.09225560444291149 
		23 -1.0697637662078572 26 -2.4318854543692052;
createNode animCurveTL -n "animCurveTL485";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.2525965505547216 6 1.2376327523903852 
		8 1.2598377302979162 12 1.3355470437254813 16 1.5019588733907707 20 2.7988454248546248 
		23 2.2666828628028433 26 1.7241929732026566;
	setAttr -s 8 ".kit[4:7]"  1 9 9 9;
	setAttr -s 8 ".kot[4:7]"  1 9 9 9;
	setAttr -s 8 ".kix[4:7]"  0.0042146164923906326 0.0030511955264955759 
		0.0018610635306686163 0.0018433495424687862;
	setAttr -s 8 ".kiy[4:7]"  0.99999111890792847 0.99999535083770752 
		-0.99999827146530151 -0.99999827146530151;
	setAttr -s 8 ".kox[4:7]"  0.0042146611958742142 0.0030511955264955759 
		0.0018610635306686163 0.0018433495424687862;
	setAttr -s 8 ".koy[4:7]"  0.99999111890792847 0.99999535083770752 
		-0.99999827146530151 -0.99999827146530151;
createNode animCurveTL -n "animCurveTL486";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.097994651149805143 6 0.18811956002607613 
		8 0.40817563733893863 12 0.97154473824728926 16 1.7084459967887549 20 2.9184961808501275 
		23 3.1165646536977438 26 2.6858977529588222;
createNode animCurveTA -n "animCurveTA1364";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -12.222987645962959 6 -10.826424546146567 
		8 -10.826466618605725 12 -10.345092866137652 16 -29.971309712113101 20 -99.357306583188404 
		23 -71.444410515520019 26 -33.734888782993899;
createNode animCurveTA -n "animCurveTA1365";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 19.681044208515029 6 -28.562123998386923 
		8 -27.007566258096951 12 -16.457368745399648 16 36.465641622030631 20 -47.240579136546721 
		23 -34.915716994255128 26 -14.870586397896899;
createNode animCurveTA -n "animCurveTA1366";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -65.119655550709027 6 -52.637498007569562 
		8 -53.986957445494888 12 -48.871451458157736 16 -20.091500423830848 20 41.619546305829736 
		23 6.7023665856785861 26 -30.592169336881899;
createNode animCurveTL -n "animCurveTL487";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.10167917362943303 6 0.31054502397108613 
		8 0.31054502397108613 12 0.31054502397108613 16 0.31054502397108613 20 0.31054502397108613 
		23 0.31054502397108613 26 0.31054502397108613;
createNode animCurveTL -n "animCurveTL488";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.40762644910266188 6 -0.55640530640609931 
		8 -0.55640530640609931 12 -0.55640530640609931 16 -0.55640530640609931 20 
		-0.55640530640609931 23 -0.55640530640609931 26 -0.55640530640609931;
createNode animCurveTL -n "animCurveTL489";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.93129112588482243 6 -0.57914122395678103 
		8 -0.57914122395678103 12 -0.57914122395678103 16 -0.57914122395678103 20 
		-0.57914122395678103 23 -0.57914122395678103 26 -0.57914122395678103;
createNode animCurveTL -n "animCurveTL490";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 -0.17523930523423681 8 -0.15311553630748009 
		12 -0.063331173333856433 16 -0.063331173333856433 20 -0.063331173333856433 
		23 -0.063331173333856433 26 -0.063331173333856433;
createNode animCurveTL -n "animCurveTL491";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 -0.00072435787012014696 8 
		-0.37298796460009648 12 -0.69960805773293522 16 -0.69960805773293522 20 -0.69960805773293522 
		23 -0.69960805773293522 26 -0.69960805773293522;
createNode animCurveTL -n "animCurveTL492";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1 6 -0.80201435285893019 8 -0.70922931248881582 
		12 -0.66762598980258558 16 -0.66762598980258558 20 -0.66762598980258558 23 
		-0.66762598980258558 26 -0.66762598980258558;
createNode animCurveTA -n "animCurveTA1367";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.061808866237340665 6 -0.061808866237337522 
		8 -0.061808866237337522 12 -0.061808866237337522 16 -0.061808866237337522 
		20 -0.061808866237337522 26 -0.061808866237337522;
createNode animCurveTA -n "animCurveTA1368";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -59.058178941076754 6 -59.058178941076754 
		8 -59.058178941076754 12 -59.058178941076754 16 -59.058178941076754 20 -59.058178941076754 
		26 -59.058178941076754;
createNode animCurveTA -n "animCurveTA1369";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 16.57914742975785 6 16.579147429757843 
		8 16.579147429757843 12 16.579147429757843 16 16.579147429757843 20 16.579147429757843 
		26 16.579147429757843;
createNode animCurveTA -n "animCurveTA1370";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 12.253734489678925 6 12.253734489678925 
		8 12.253734489678925 12 12.253734489678925 16 12.253734489678925 20 12.253734489678925 
		26 12.253734489678925;
createNode animCurveTA -n "animCurveTA1371";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -65.746751280844975 6 -65.746751280844961 
		8 -65.746751280844961 12 -65.746751280844961 16 -65.746751280844961 20 -65.746751280844961 
		26 -65.746751280844961;
createNode animCurveTA -n "animCurveTA1372";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTA -n "animCurveTA1373";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 15.711328223519061 6 15.711328223519057 
		8 15.711328223519057 12 15.711328223519057 16 15.711328223519057 20 15.711328223519057 
		26 15.711328223519057;
createNode animCurveTA -n "animCurveTA1374";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.5572674112203657 6 8.5572674112203622 
		8 8.5572674112203622 12 8.5572674112203622 16 8.5572674112203622 20 8.5572674112203622 
		26 8.5572674112203622;
createNode animCurveTA -n "animCurveTA1375";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTA -n "animCurveTA1376";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTA -n "animCurveTA1377";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTA -n "animCurveTA1378";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTA -n "animCurveTA1379";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTA -n "animCurveTA1380";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTA -n "animCurveTA1381";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 198.501726992805 6 19.002497950056888 
		8 19.002497950056888 12 19.002497950056888 16 19.002497950056888 20 19.002497950056888 
		26 19.002497950056888;
createNode animCurveTA -n "animCurveTA1382";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 23.263402056531085 6 23.263402056531085 
		8 23.263402056531085 12 23.263402056531085 16 23.263402056531085 20 23.263402056531085 
		26 23.263402056531085;
createNode animCurveTA -n "animCurveTA1383";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 20.166277752815617 6 20.166277752815617 
		8 20.166277752815617 12 20.166277752815617 16 20.166277752815617 20 20.166277752815617 
		26 20.166277752815617;
createNode animCurveTA -n "animCurveTA1384";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTA -n "animCurveTA1385";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTA -n "animCurveTA1386";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 33.429092416277157 6 33.429092416277157 
		8 33.429092416277157 12 33.429092416277157 16 33.429092416277157 20 33.429092416277157 
		26 33.429092416277157;
createNode animCurveTA -n "animCurveTA1387";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1388";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1389";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1390";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1391";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1392";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.994403295754109 16 13.994403295754109 
		26 13.994403295754109;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1393";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1394";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1395";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.994403295754109 16 13.994403295754109 
		26 13.994403295754109;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1396";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTA -n "animCurveTA1397";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTA -n "animCurveTA1398";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 17.254116939558369 6 17.254116939558369 
		8 17.254116939558369 12 17.254116939558369 16 17.254116939558369 20 17.254116939558369 
		26 17.254116939558369;
createNode animCurveTA -n "animCurveTA1399";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTA -n "animCurveTA1400";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTA -n "animCurveTA1401";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTA -n "animCurveTA1402";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.65073001024951671 6 -7.8430056866173823 
		8 -7.8430056866173823 12 -7.8430056866173823 16 -18.820843871529618 20 -18.820843871529618 
		26 1.3731006602189262;
createNode animCurveTA -n "animCurveTA1403";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 4.2368721935960938 6 2.4212113907903019 
		8 2.4212113907903019 12 2.4212113907903019 16 8.442588645585376 20 8.442588645585376 
		26 -0.38374158911587303;
createNode animCurveTA -n "animCurveTA1404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.6995264082587447 6 14.868855041301886 
		8 14.868855041301886 12 14.868855041301886 16 16.699953369662587 20 16.699953369662587 
		26 0.96901743689791309;
createNode animCurveTA -n "animCurveTA1405";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 -7.1097278539792699 8 -7.1097278539792699 
		12 -7.1097278539792699 16 -7.1097278539792699 20 -7.1097278539792699 26 2.2144674450583466;
createNode animCurveTA -n "animCurveTA1406";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 5.36423803921525;
createNode animCurveTA -n "animCurveTA1407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 6.9655753505297673 8 6.9655753505297673 
		12 6.9655753505297673 16 6.9655753505297673 20 6.9655753505297673 26 -3.2584064202075531;
createNode animCurveTA -n "animCurveTA1408";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 4.0198472869727979 6 8.2806877228551272 
		8 8.9764510997163622 12 5.2494090226201955 16 5.2378895149391758 20 -3.7903101035041509 
		26 -4.9690701715193724;
	setAttr -s 7 ".kit[1:6]"  1 9 9 9 9 9;
	setAttr -s 7 ".kot[1:6]"  1 9 9 9 9 9;
	setAttr -s 7 ".kix[1:6]"  0.91116088628768921 0.96674752235412598 
		0.97134435176849365 0.86064779758453369 0.88194912672042847 0.99475091695785522;
	setAttr -s 7 ".kiy[1:6]"  0.4120507538318634 -0.25573271512985229 
		-0.23767659068107605 -0.50920075178146362 -0.47134461998939514 -0.10232625156641006;
	setAttr -s 7 ".kox[1:6]"  0.91116094589233398 0.96674752235412598 
		0.97134435176849365 0.86064779758453369 0.88194912672042847 0.99475091695785522;
	setAttr -s 7 ".koy[1:6]"  0.41205063462257385 -0.25573271512985229 
		-0.23767659068107605 -0.50920075178146362 -0.47134461998939514 -0.10232625156641006;
createNode animCurveTA -n "animCurveTA1409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 9.1335573833666519 6 8.5086629712104536 
		8 6.9980377420294353 12 7.4288331807529291 16 25.174728286073833 20 7.1873577666484181 
		26 2.9904681746768538;
	setAttr -s 7 ".kit[1:6]"  1 1 9 9 9 9;
	setAttr -s 7 ".kot[1:6]"  1 1 9 9 9 9;
	setAttr -s 7 ".kix[1:6]"  0.99601650238037109 0.95914065837860107 
		0.64345020055770874 0.99987512826919556 0.65243446826934814 0.93900340795516968;
	setAttr -s 7 ".kiy[1:6]"  0.089168936014175415 -0.28292959928512573 
		0.76548796892166138 -0.015802554786205292 -0.75784516334533691 -0.34390780329704285;
	setAttr -s 7 ".kox[1:6]"  0.99601650238037109 0.95914071798324585 
		0.64345020055770874 0.99987512826919556 0.65243446826934814 0.93900340795516968;
	setAttr -s 7 ".koy[1:6]"  0.089168928563594818 -0.28292950987815857 
		0.76548796892166138 -0.015802554786205292 -0.75784516334533691 -0.34390780329704285;
createNode animCurveTA -n "animCurveTA1410";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -2.2752136084709536 6 -2.3189154341807527 
		8 -5.9940130223088586 12 -11.077093509012803 16 -8.0550223726483026 20 12.477959126589024 
		26 14.780225156536881;
	setAttr -s 7 ".kit[1:6]"  1 1 9 9 9 9;
	setAttr -s 7 ".kot[1:6]"  1 1 9 9 9 9;
	setAttr -s 7 ".kix[1:6]"  0.7913811206817627 0.67820924520492554 
		0.99102425575256348 0.54418915510177612 0.64155560731887817 0.98040860891342163;
	setAttr -s 7 ".kiy[1:6]"  -0.61132305860519409 -0.73486888408660889 
		-0.13368198275566101 0.83896255493164063 0.76707649230957031 0.19697447121143341;
	setAttr -s 7 ".kox[1:6]"  0.79138118028640747 0.67820918560028076 
		0.99102425575256348 0.54418915510177612 0.64155560731887817 0.98040860891342163;
	setAttr -s 7 ".koy[1:6]"  -0.61132305860519409 -0.73486888408660889 
		-0.13368198275566101 0.83896255493164063 0.76707649230957031 0.19697447121143341;
createNode animCurveTA -n "animCurveTA1411";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.8903601258661935 6 1.8903601258661931 
		8 1.8903601258661931 12 1.8903601258661931 16 1.8903601258661931 20 1.8903601258661931 
		26 -2.211833892135727;
createNode animCurveTA -n "animCurveTA1412";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -2.5597289571479038 6 -2.5597289571479034 
		8 -2.5597289571479034 12 -2.5597289571479034 16 -2.5597289571479034 20 -2.5597289571479034 
		26 -1.708673036061555;
createNode animCurveTA -n "animCurveTA1413";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.0168110874036049 6 2.016811087403604 
		8 2.016811087403604 12 2.016811087403604 16 2.016811087403604 20 2.016811087403604 
		26 2.7082804953288209;
createNode animCurveTA -n "animCurveTA1414";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTA -n "animCurveTA1415";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTA -n "animCurveTA1416";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.080064458283051 6 27.080064458283051 
		8 27.080064458283051 12 27.080064458283051 16 27.080064458283051 20 27.080064458283051 
		26 27.080064458283051;
createNode animCurveTA -n "animCurveTA1417";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 10.423754966968488 6 -177.04830761929054 
		8 -177.04830761929054 12 -177.04830761929054 16 -177.04830761929054 20 -177.04830761929054 
		26 -177.04830761929054;
createNode animCurveTA -n "animCurveTA1418";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.7228482558439 6 27.722848255843903 
		8 27.722848255843903 12 27.722848255843903 16 27.722848255843903 20 27.722848255843903 
		26 27.722848255843903;
createNode animCurveTA -n "animCurveTA1419";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 21.576484776388224 6 21.576484776388227 
		8 21.576484776388227 12 21.576484776388227 16 21.576484776388227 20 21.576484776388227 
		26 21.576484776388227;
createNode animCurveTA -n "animCurveTA1420";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTA -n "animCurveTA1421";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTA -n "animCurveTA1422";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.911632519594587 6 27.911632519594587 
		8 27.911632519594587 12 27.911632519594587 16 27.911632519594587 20 27.911632519594587 
		26 27.911632519594587;
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
connectAttr "lsa_get_into_car.st" "clipLibrary2.st[0]";
connectAttr "lsa_get_into_car.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL452.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL453.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "animCurveTL454.a" "clipLibrary2.cel[0].cev[2].cevr";
connectAttr "animCurveTL455.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "animCurveTL456.a" "clipLibrary2.cel[0].cev[4].cevr";
connectAttr "animCurveTA1304.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "animCurveTU9.a" "clipLibrary2.cel[0].cev[6].cevr";
connectAttr "animCurveTU10.a" "clipLibrary2.cel[0].cev[7].cevr";
connectAttr "animCurveTU11.a" "clipLibrary2.cel[0].cev[8].cevr";
connectAttr "animCurveTU12.a" "clipLibrary2.cel[0].cev[9].cevr";
connectAttr "animCurveTU13.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU14.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU15.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU16.a" "clipLibrary2.cel[0].cev[13].cevr";
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
// End of lsa-m_get_into_car.ma
