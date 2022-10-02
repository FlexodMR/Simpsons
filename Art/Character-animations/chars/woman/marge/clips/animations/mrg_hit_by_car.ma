//Maya ASCII 4.0 scene
//Name: mrg_hit_by_car.ma
//Last modified: Fri, Jun 07, 2002 11:09:24 AM
requires maya "4.0";
requires "p3dSimpleShader" "17.1";
requires "p3dmayaexp" "17.3";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mrg_hit_by_carSource";
	setAttr ".ihi" 0;
	setAttr ".du" 39;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL338";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  30 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[0:3]"  1 9 1 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL339";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  30 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[0:3]"  1 9 1 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  0 0.02822006920967135 1 0.014610734027834211 
		2 0.0010013991112864191 3 -0.0071874631879556066 4 -0.0060455611252836676 
		5 0.0005168136259670155 6 0.006189258290897782 7 0.0079797637234580408 8 
		0.0084325970069749762 9 0.00863200488788665 10 0.008532300947430814 11 0.0084325970069749762 
		12 0.0084325970069749796 13 0.0084325970069749866 14 0.00843259700697499 
		15 0.0084325970069749918 16 0.0084325970069749987 17 0.0084325970069750039 
		18 0.0084325970069750109 19 0.0084325970069750161 20 0.0084325970069750178 
		21 0.0084325970069750178 22 0.0084325970069750178 23 0.0084325970069750178 
		24 0.0084325970069750178 25 0.0084325970069750178 26 0.0084325970069750178 
		27 0.0084325970069750178 28 0.0084325970069750178 29 0.0084325970069750178 
		30 0.008744915411096307 31 0.0090572338152175979 32 0.0084325970069750178 
		33 0.0058894328348493641 34 0.0024093134290931319 35 0 36 -0.00067761939599832329 
		37 -0.00060232835199850972 38 -0.00022587313199944094 39 0;
createNode animCurveTL -n "animCurveTL341";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  0 -0.10300313841677244 1 -0.10051395507015733 
		2 -0.098024771773086883 3 -0.11509925878775507 4 -0.12239455639046369 5 -0.14925352325160832 
		6 -0.30326840722452336 7 -0.84736071575412553 8 -1.3823839068893198 9 -1.5978250491842203 
		10 -1.7927379003828743 11 -1.9959615386477578 12 -2.2145649330178649 13 -2.4403864049456132 
		14 -2.6794193279694962 15 -2.912469525078373 16 -3.1189287389795251 17 -3.3026745731001541 
		18 -3.4675846308674609 19 -3.6175365157086481 20 -3.7564078310509159 21 -3.7752801104619169 
		22 -3.7564078310509159 23 -3.8427157601492743 24 -3.9553056678355221 25 -4.0520800769700287 
		26 -4.1157135370059166 27 -4.1659490468759177 28 -4.2162918036598125 29 -4.2802470044373839 
		30 -4.3659909628542133 31 -4.4679317389015072 32 -4.5789221491774867 33 -4.7156861606603435 
		34 -4.8614998094311161 35 -4.9590440157422933 36 -4.9895895236479131 37 -4.9861955783250655 
		38 -4.9692258517108341 39 -4.9590440157422933;
createNode animCurveTA -n "animCurveTA988";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0;
createNode animCurveTU -n "animCurveTU49";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  30 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[0:3]"  1 9 1 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTU -n "animCurveTU50";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  30 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[0:3]"  1 9 1 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTU -n "animCurveTU51";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  30 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[0:3]"  1 9 1 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTU -n "animCurveTU52";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  30 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[0:3]"  1 9 1 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTU -n "animCurveTU53";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  30 1 32 1 35 0 39 0;
	setAttr -s 4 ".kit[0:3]"  1 9 1 9;
	setAttr -s 4 ".kot[0:3]"  1 9 3 9;
	setAttr -s 4 ".kix[0:3]"  1 0.16439898312091827 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 -0.98639392852783203 0 0;
	setAttr -s 4 ".kox[0:3]"  1 0.16439898312091827 1 1;
	setAttr -s 4 ".koy[0:3]"  0 -0.98639392852783203 0 0;
createNode animCurveTU -n "animCurveTU54";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  30 1 32 1 35 0 39 0;
	setAttr -s 4 ".kit[0:3]"  1 9 1 9;
	setAttr -s 4 ".kot[0:3]"  1 9 3 9;
	setAttr -s 4 ".kix[0:3]"  1 0.16439898312091827 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 -0.98639392852783203 0 0;
	setAttr -s 4 ".kox[0:3]"  1 0.16439898312091827 1 1;
	setAttr -s 4 ".koy[0:3]"  0 -0.98639392852783203 0 0;
createNode animCurveTU -n "animCurveTU55";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  30 0 32 0 35 1 39 1;
	setAttr -s 4 ".kit[0:3]"  1 9 1 9;
	setAttr -s 4 ".kot[0:3]"  1 9 3 9;
	setAttr -s 4 ".kix[0:3]"  1 0.16439898312091827 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0.98639392852783203 0 0;
	setAttr -s 4 ".kox[0:3]"  1 0.16439898312091827 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0.98639392852783203 0 0;
createNode animCurveTU -n "animCurveTU56";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  30 0 32 0 35 1 39 1;
	setAttr -s 4 ".kit[0:3]"  1 9 1 9;
	setAttr -s 4 ".kot[0:3]"  1 9 3 9;
	setAttr -s 4 ".kix[0:3]"  1 0.16439898312091827 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0.98639392852783203 0 0;
	setAttr -s 4 ".kox[0:3]"  1 0.16439898312091827 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0.98639392852783203 0 0;
createNode animCurveTA -n "animCurveTA989";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA990";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA991";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTL -n "animCurveTL343";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  30 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[0:3]"  1 9 1 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL344";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  30 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[0:3]"  1 9 1 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL345";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  30 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[0:3]"  1 9 1 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL346";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.080085202525975452 3 -0.050325215209307696 
		6 -0.050325215209307696 8 -0.052041671375867023 11 -0.051697883967582903 
		14 -0.014436998542992931 17 -0.032535236969259154 20 -0.027070443273074472 
		22 -0.029149272119341433 25 -0.029149272119341433 29 -0.029149272119341433 
		32 -0.029149272119341433 35 -0.086840680636711673 39 -0.086840680636711673;
	setAttr -s 14 ".kit[1:13]"  3 3 1 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 14 ".kot[1:13]"  3 3 1 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 14 ".kix[3:13]"  0.20705151557922363 0.053109820932149887 
		0.10380586236715317 0.15636269748210907 0.44162645936012268 0.62551939487457275 
		1 1 0.034646391868591309 0.040412034839391708 1;
	setAttr -s 14 ".kiy[3:13]"  -0.97833001613616943 0.9985886812210083 
		0.99459755420684814 -0.98769968748092651 0.89719903469085693 -0.78020864725112915 
		0 0 -0.99939966201782227 -0.99918311834335327 0;
	setAttr -s 14 ".kox[3:13]"  0.20705513656139374 0.053109820932149887 
		0.10380586236715317 0.15636269748210907 0.44162645936012268 0.62551939487457275 
		1 1 0.034646391868591309 0.040412034839391708 1;
	setAttr -s 14 ".koy[3:13]"  -0.97832930088043213 0.9985886812210083 
		0.99459755420684814 -0.98769968748092651 0.89719903469085693 -0.78020864725112915 
		0 0 -0.99939966201782227 -0.99918311834335327 0;
createNode animCurveTL -n "animCurveTL347";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.36956228769602462 3 0.090873464379081406 
		6 0.090873464379081406 8 1.7477299054448512 11 2.2197759997302784 14 1.1437648501491109 
		17 0.54773281201349833 20 1.1428006031135964 22 0.13883895566958071 25 0.44632793060368697 
		29 0.93301626414994687 32 0.28983332092491493 35 0.085138496806437786 39 
		0.085138496806437786;
	setAttr -s 14 ".kit[1:13]"  3 3 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 14 ".kot[1:13]"  3 3 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL348";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.50783966139956582 3 -0.15235994436950159 
		6 -0.15235994436950159 8 -0.77792662068783869 11 -1.624045733752121 14 -2.3519672910289935 
		17 -2.9659584501664478 20 -3.5791244313338804 22 -3.5536415342826517 25 -3.7363571214094309 
		29 -3.9927827766478323 32 -4.4729175212634145 35 -4.6697957009218056 39 -4.6697957009218056;
	setAttr -s 14 ".kit[1:13]"  3 3 9 9 9 9 9 
		9 9 9 9 3 9;
	setAttr -s 14 ".kot[1:13]"  3 3 9 9 9 9 9 
		9 9 9 9 3 9;
createNode animCurveTA -n "animCurveTA992";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 68.750149689121017 3 0 6 0 8 
		-33.630440768693376 11 -73.773351916935781 14 -7.1019218986860482 17 5.7687459647213588 
		20 -89.675227039431803 22 -27.595959067019745 25 0.21801381617811239 29 -22.535152420394311 
		32 -22.535152420394311 35 -20.431608270131136 39 -3.3595522507325413;
	setAttr -s 14 ".kit[2:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 14 ".kot[2:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9;
createNode animCurveTA -n "animCurveTA993";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 3 0 6 0 8 0 11 0 14 0 17 0 
		20 0 22 0 25 0 29 0 32 0 35 -4.9396511688497009 39 -4.9396511688497009;
createNode animCurveTA -n "animCurveTA994";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 3 0 6 0 8 0 11 0 14 0 17 0 
		20 0 22 0 25 0 29 0 32 0 35 1.4972445100027123 39 1.4972445100027125;
createNode animCurveTL -n "animCurveTL349";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.11054624056798007 3 0.11054624056798007 
		6 0.11054624056798007 8 0.13954290880145034 11 0.13555524807938996 14 0.086643704700631013 
		17 0.076383427730718378 20 0.13954290880145034 22 0.16527857253325121 25 
		0.16527857253325121 29 0.16527857253325121 32 0.16527857253325121 35 0.16545702065900617 
		39 0.16545702065900617;
	setAttr -s 14 ".kit[0:13]"  3 3 3 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 3 3 9 9 9 9 
		9 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL350";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.096121281988743604 3 0.096121281988743604 
		6 0.096121281988743604 8 1.1109697034832438 11 1.1860300757103321 14 1.8431592791784019 
		17 1.3278013759437328 20 0.55491014289282381 22 0.12676209304037109 25 0.4415173473323335 
		29 0.52663342833544091 32 0.22390966765600395 35 0.089957787604123873 39 
		0.089957787604123873;
	setAttr -s 14 ".kit[0:13]"  3 3 3 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 3 3 9 9 9 9 
		9 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL351";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.25449932136439507 3 -0.25449932136439507 
		6 -0.25449932136439507 8 -0.96701087909774219 11 -1.868551794206913 14 -2.4418009705459327 
		17 -3.1253663664221039 20 -3.4664362236677677 22 -3.6152199438549046 25 -3.9178426350336326 
		29 -4.2178122694634608 32 -4.6586632622468596 35 -4.7143787037848828 39 -4.7143787037848828;
	setAttr -s 14 ".kit[0:13]"  3 3 3 9 9 9 9 
		9 9 9 9 9 3 9;
	setAttr -s 14 ".kot[0:13]"  3 3 3 9 9 9 9 
		9 9 9 9 9 3 9;
createNode animCurveTA -n "animCurveTA995";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 3 0 6 0 8 -3.9320360584068554 
		11 37.060637496242499 14 -58.257284892332507 17 -102.95856940875365 20 -39.2252513343742 
		22 5.4760876434928472 25 5.6175156500276104 29 25.211350838126936 32 1.4415482405103193 
		35 -17.095029905043305 39 -0.022973885644723264;
	setAttr -s 14 ".kit[0:13]"  3 3 3 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 3 3 9 9 9 9 
		9 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA996";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 3 0 6 0 8 0 11 0 14 0 17 0 
		20 0 22 0 25 0 29 0 32 0 35 -4.688255881576846 39 -4.6882558815768478;
	setAttr -s 14 ".kit[0:13]"  3 3 3 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 3 3 9 9 9 9 
		9 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA997";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 3 0 6 0 8 0 11 0 14 0 17 0 
		20 0 22 0 25 0 29 0 32 0 35 -0.16613472175511146 39 -0.16613472175511138;
	setAttr -s 14 ".kit[0:13]"  3 3 3 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 3 3 9 9 9 9 
		9 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA998";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA999";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA1000";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA1001";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA1002";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA1003";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA1004";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA1005";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA1006";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA1007";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA1008";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA1009";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTL -n "animCurveTL352";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 8 0 11 0 14 0 20 0 
		22 0 25 0 29 0 32 0 35 0.086535275487552965 39 0.069686758109084701;
	setAttr -s 13 ".kit[4:12]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 13 ".kot[4:12]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 13 ".kix[4:12]"  1 1 1 1 1 1 0.023105790838599205 
		0.03346441313624382 0.078889869153499603;
	setAttr -s 13 ".kiy[4:12]"  0 0 0 0 0 0 0.99973303079605103 
		0.99943989515304565 -0.9968833327293396;
	setAttr -s 13 ".kox[4:12]"  1 1 1 1 1 1 0.023105790838599205 
		0.03346441313624382 0.078889869153499603;
	setAttr -s 13 ".koy[4:12]"  0 0 0 0 0 0 0.99973303079605103 
		0.99943989515304565 -0.9968833327293396;
createNode animCurveTL -n "animCurveTL353";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 8 0 11 0 14 0 20 0 
		22 0 25 0 29 0 32 0 35 0.0047180449320973726 39 -0.0014721578016397461;
	setAttr -s 13 ".kit[4:12]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 13 ".kot[4:12]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 13 ".kix[4:12]"  1 1 1 1 1 1 0.39028608798980713 
		0.84573858976364136 0.21056491136550903;
	setAttr -s 13 ".kiy[4:12]"  0 0 0 0 0 0 0.92069363594055176 
		-0.53359740972518921 -0.97757989168167114;
	setAttr -s 13 ".kox[4:12]"  1 1 1 1 1 1 0.39028608798980713 
		0.84573858976364136 0.21056491136550903;
	setAttr -s 13 ".koy[4:12]"  0 0 0 0 0 0 0.92069363594055176 
		-0.53359740972518921 -0.97757989168167114;
createNode animCurveTL -n "animCurveTL354";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 3 1 6 1 8 1 11 1 14 1 20 1 
		22 1 25 1 29 1 32 1 35 1.0196125091168946 39 0.99388036597325757;
	setAttr -s 13 ".kit[4:12]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 13 ".kot[4:12]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 13 ".kix[4:12]"  1 1 1 1 1 1 0.10144960880279541 
		0.35626789927482605 0.051746435463428497;
	setAttr -s 13 ".kiy[4:12]"  0 0 0 0 0 0 0.99484068155288696 
		-0.93438386917114258 -0.99866026639938354;
	setAttr -s 13 ".kox[4:12]"  1 1 1 1 1 1 0.10144960880279541 
		0.35626789927482605 0.051746435463428497;
	setAttr -s 13 ".koy[4:12]"  0 0 0 0 0 0 0.99484068155288696 
		-0.93438386917114258 -0.99866026639938354;
createNode animCurveTL -n "animCurveTL355";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 8 0 11 0 14 0 20 0 
		22 0 25 0 29 0 32 0 35 0.22315575876557764 39 0.22315575876557764;
	setAttr -s 13 ".kit[4:12]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 13 ".kot[4:12]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 13 ".kix[4:12]"  1 1 1 1 1 1 0.0089619895443320274 
		0.01045550312846899 1;
	setAttr -s 13 ".kiy[4:12]"  0 0 0 0 0 0 0.99995982646942139 
		0.99994534254074097 0;
	setAttr -s 13 ".kox[4:12]"  1 1 1 1 1 1 0.0089619895443320274 
		0.01045550312846899 1;
	setAttr -s 13 ".koy[4:12]"  0 0 0 0 0 0 0.99995982646942139 
		0.99994534254074097 0;
createNode animCurveTL -n "animCurveTL356";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 8 0 11 0 14 0 20 0 
		22 0 25 0 29 0 32 0 35 0.0006565739970363771 39 0.0006565739970363771;
	setAttr -s 13 ".kit[4:12]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 13 ".kot[4:12]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 13 ".kix[4:12]"  1 1 1 1 1 1 0.95011186599731445 
		0.96261608600616455 1;
	setAttr -s 13 ".kiy[4:12]"  0 0 0 0 0 0 0.31190937757492065 
		0.27086943387985229 0;
	setAttr -s 13 ".kox[4:12]"  1 1 1 1 1 1 0.95011186599731445 
		0.96261608600616455 1;
	setAttr -s 13 ".koy[4:12]"  0 0 0 0 0 0 0.31190937757492065 
		0.27086943387985229 0;
createNode animCurveTL -n "animCurveTL357";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 3 1 6 1 8 1 11 1 14 1 20 1 
		22 1 25 1 29 1 32 1 35 0.98169956815627235 39 0.98169956815627235;
	setAttr -s 13 ".kit[4:12]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 13 ".kot[4:12]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 13 ".kix[4:12]"  1 1 1 1 1 1 0.10864017903804779 
		0.12647762894630432 1;
	setAttr -s 13 ".kiy[4:12]"  0 0 0 0 0 0 -0.99408113956451416 
		-0.99196946620941162 0;
	setAttr -s 13 ".kox[4:12]"  1 1 1 1 1 1 0.10864017903804779 
		0.12647762894630432 1;
	setAttr -s 13 ".koy[4:12]"  0 0 0 0 0 0 -0.99408113956451416 
		-0.99196946620941162 0;
createNode animCurveTL -n "animCurveTL358";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.03051835782609956 3 -0.0077728219517184515 
		6 0.0066933216143579997 8 0.009119361506525361 11 0.009119361506525361 14 
		0.0091193615065253766 20 0.0091193615065254061 22 0.0091193615065254061 25 
		0.0091193615065254061 29 0.0091193615065254061 32 0.0091193615065254061 35 
		0 39 0;
	setAttr -s 13 ".kit[4:12]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 13 ".kot[4:12]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 13 ".kix[4:12]"  1 1 1 1 1 1 0.21422222256660461 
		0.24788045883178711 1;
	setAttr -s 13 ".kiy[4:12]"  0 0 0 0 0 0 -0.97678494453430176 
		-0.96879065036773682 0;
	setAttr -s 13 ".kox[4:12]"  1 1 1 1 1 1 0.21422222256660461 
		0.24788045883178711 1;
	setAttr -s 13 ".koy[4:12]"  0 0 0 0 0 0 -0.97678494453430176 
		-0.96879065036773682 0;
createNode animCurveTL -n "animCurveTL359";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.83223984443990662 3 0.68531953232099319 
		6 0.84649195757100448 8 1.5542323161653797 11 1.7661666600925463 14 1.4755848029407181 
		20 0.3468538911515619 22 0.3468538911515619 25 0.82740234985228822 29 0.96287250733672525 
		32 0.73258277931816107 35 0.1302919830353689 39 0.17206302234963397;
	setAttr -s 13 ".kit[4:12]"  1 9 3 3 9 9 9 
		9 9;
	setAttr -s 13 ".kot[4:12]"  1 9 3 3 9 9 9 
		9 9;
	setAttr -s 13 ".kix[4:12]"  0.0079419361427426338 0.0021136943250894547 
		1 1 0.0037877368740737438 0.024600693956017494 0.0024021631106734276 0.0041627669706940651 
		0.031903784722089767;
	setAttr -s 13 ".kiy[4:12]"  -0.99996846914291382 -0.99999779462814331 
		0 0 0.99999284744262695 -0.99969732761383057 -0.99999713897705078 -0.99999135732650757 
		0.99949091672897339;
	setAttr -s 13 ".kox[4:12]"  0.0079419361427426338 0.0021136943250894547 
		1 1 0.0037877368740737438 0.024600693956017494 0.0024021631106734276 0.0041627669706940651 
		0.031903784722089767;
	setAttr -s 13 ".koy[4:12]"  -0.99996846914291382 -0.99999779462814331 
		0 0 0.99999284744262695 -0.99969732761383057 -0.99999713897705078 -0.99999135732650757 
		0.99949091672897339;
createNode animCurveTL -n "animCurveTL360";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.11139188256622042 3 -0.12447313077459499 
		6 -0.32796708258452451 8 -1.4949675144322965 11 -2.1585159125941744 14 -2.8976356227048603 
		20 -4.0623358318868377 22 -4.0623358318868377 25 -4.3820881093586994 29 -4.6288373247767849 
		32 -4.9518370620636327 35 -5.3629166754819426 39 -5.3629166754819426;
	setAttr -s 13 ".kit[3:12]"  1 1 1 9 9 9 9 
		9 9 9;
	setAttr -s 13 ".kot[3:12]"  1 1 1 9 9 9 9 
		9 9 9;
	setAttr -s 13 ".kix[3:12]"  0.0013098418712615967 0.0014204677427187562 
		0.0012446887558326125 0.0022895673755556345 0.0052122976630926132 0.0041188127361238003 
		0.0040953364223241806 0.0027244910597801208 0.0056760190054774284 1;
	setAttr -s 13 ".kiy[3:12]"  -0.99999916553497314 -0.99999898672103882 
		-0.99999922513961792 -0.99999737739562988 -0.99998641014099121 -0.99999153614044189 
		-0.99999159574508667 -0.99999630451202393 -0.99998390674591064 0;
	setAttr -s 13 ".kox[3:12]"  0.0013098439667373896 0.0014204671606421471 
		0.0012446797918528318 0.0022895673755556345 0.0052122976630926132 0.0041188127361238003 
		0.0040953364223241806 0.0027244910597801208 0.0056760190054774284 1;
	setAttr -s 13 ".koy[3:12]"  -0.99999916553497314 -0.99999898672103882 
		-0.99999922513961792 -0.99999737739562988 -0.99998641014099121 -0.99999153614044189 
		-0.99999159574508667 -0.99999630451202393 -0.99998390674591064 0;
createNode animCurveTA -n "animCurveTA1010";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 20.950825280283908 3 23.686988860744673 
		6 -20.451217483196501 8 -65.585535993622102 11 -100.74327684107348 14 -100.37646840021081 
		17 -105.23895471139292 20 -117.84381686362197 22 -122.35138681083153 25 -99.171606951449704 
		29 -68.522598721536568 32 -55.788555672989702 35 -77.924338556956229 39 -94.463031014815527;
	setAttr -s 14 ".kit[4:13]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 14 ".kot[4:13]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 14 ".kix[4:13]"  0.40327122807502747 0.93092095851898193 
		0.54852956533432007 0.48729503154754639 0.45532739162445068 0.241038978099823 
		0.29449599981307983 0.77309471368789673 0.32671111822128296 0.4193384051322937;
	setAttr -s 14 ".kiy[4:13]"  -0.9150804877281189 -0.36522069573402405 
		-0.83613115549087524 -0.87323743104934692 0.89032405614852905 0.97051542997360229 
		0.95565271377563477 -0.63429063558578491 -0.94512426853179932 -0.90782999992370605;
	setAttr -s 14 ".kox[4:13]"  0.40327122807502747 0.93092095851898193 
		0.54852956533432007 0.48729503154754639 0.45532739162445068 0.241038978099823 
		0.29449599981307983 0.77309471368789673 0.32671111822128296 0.4193384051322937;
	setAttr -s 14 ".koy[4:13]"  -0.9150804877281189 -0.36522069573402405 
		-0.83613115549087524 -0.87323743104934692 0.89032405614852905 0.97051542997360229 
		0.95565271377563477 -0.63429063558578491 -0.94512426853179932 -0.90782999992370605;
createNode animCurveTA -n "animCurveTA1011";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 3 9.3491547302982809 6 11.948637237067912 
		8 11.948637237067985 11 11.948637237067945 14 11.948637237067956 17 11.94863723706797 
		20 11.948637237067985 22 11.948637237067981 25 5.7219641580000298 29 5.7219641580000413 
		32 5.721964158000044 35 10.339902534407132 39 21.641902216209711;
	setAttr -s 14 ".kit[4:13]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 14 ".kot[4:13]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 14 ".kix[4:13]"  1 1 1 1 0.83765590190887451 0.90649992227554321 
		1 0.92751693725585938 0.64308679103851318 0.56000584363937378;
	setAttr -s 14 ".kiy[4:13]"  0 0 0 0 -0.54619830846786499 -0.42220601439476013 
		0 0.37378111481666565 0.7657933235168457 0.82848864793777466;
	setAttr -s 14 ".kox[4:13]"  1 1 1 1 0.83765590190887451 0.90649992227554321 
		1 0.92751693725585938 0.64308679103851318 0.56000584363937378;
	setAttr -s 14 ".koy[4:13]"  0 0 0 0 -0.54619830846786499 -0.42220601439476013 
		0 0.37378111481666565 0.7657933235168457 0.82848864793777466;
createNode animCurveTA -n "animCurveTA1012";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 3 -1.4726187357019898 6 -1.4726187357019873 
		8 -1.47261873570199 11 -1.472618735701984 14 -1.4726187357019858 17 -1.4726187357019878 
		20 -1.47261873570199 22 -1.47261873570199 25 -0.44683864569923853 29 -0.44683864569924076 
		32 -0.4468386456992412 35 -1.2601559128696818 39 -3.6044218574730369;
	setAttr -s 14 ".kit[4:13]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 14 ".kot[4:13]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 14 ".kix[4:13]"  1 1 1 1 0.99427998065948486 0.99706929922103882 
		1 0.99749070405960083 0.97322314977645874 0.9560014009475708;
	setAttr -s 14 ".kiy[4:13]"  0 0 0 0 0.10680499672889709 0.07650330662727356 
		0 -0.07079721987247467 -0.22986233234405518 -0.29336217045783997;
	setAttr -s 14 ".kox[4:13]"  1 1 1 1 0.99427998065948486 0.99706929922103882 
		1 0.99749070405960083 0.97322314977645874 0.9560014009475708;
	setAttr -s 14 ".koy[4:13]"  0 0 0 0 0.10680499672889709 0.07650330662727356 
		0 -0.07079721987247467 -0.22986233234405518 -0.29336217045783997;
createNode animCurveTA -n "animCurveTA1013";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA1014";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA1015";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 4.0984482521620249 
		39 4.0984482521620249;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  0.81333768367767334 1;
	setAttr -s 4 ".kiy[2:3]"  0.58179193735122681 0;
createNode animCurveTA -n "animCurveTA1016";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 18.588300303494186 
		39 18.588300303494186;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  0.29456019401550293 1;
	setAttr -s 4 ".kiy[2:3]"  0.95563292503356934 0;
createNode animCurveTA -n "animCurveTA1017";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA1018";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA1019";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 -22.686733334985114 
		39 -22.686733334985114;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  0.24486361443996429 1;
	setAttr -s 4 ".kiy[2:3]"  -0.96955752372741699 0;
createNode animCurveTA -n "animCurveTA1020";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA1021";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA1022";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 1.0579251312417479e-005 
		39 1.0579251312417479e-005;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA1023";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA1024";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA1025";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 4.0984482535121209 
		39 4.0984482535121209;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  0.81333768367767334 1;
	setAttr -s 4 ".kiy[2:3]"  0.58179193735122681 0;
createNode animCurveTA -n "animCurveTA1026";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 18.588300300216805 
		39 18.588300300216805;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  0.29456019401550293 1;
	setAttr -s 4 ".kiy[2:3]"  0.95563292503356934 0;
createNode animCurveTA -n "animCurveTA1027";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA1028";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA1029";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 -22.686733333057838 
		39 -22.686733333057838;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  0.24486361443996429 1;
	setAttr -s 4 ".kiy[2:3]"  -0.96955752372741699 0;
createNode animCurveTA -n "animCurveTA1030";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA1031";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA1032";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 1.0579251312417479e-005 
		39 1.0579251312417479e-005;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA1033";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA1034";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA1035";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 2.4782236286598103 
		39 2.4782236286598103;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  0.91782385110855103 1;
	setAttr -s 4 ".kiy[2:3]"  0.39698782563209534 0;
createNode animCurveTA -n "animCurveTA1036";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA1037";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA1038";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTL -n "animCurveTL361";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  30 -0.99214331096561381 32 0.098477282776761876 
		35 -0.69163884744780491 39 -0.69163884744780491;
	setAttr -s 4 ".kit[0:3]"  1 9 1 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 0.0055461442098021507 0.0033277194015681744 
		1;
	setAttr -s 4 ".kiy[0:3]"  0 0.99998462200164795 0.99999445676803589 
		0;
	setAttr -s 4 ".kox[0:3]"  1 0.0055461442098021507 0.002953139366582036 
		1;
	setAttr -s 4 ".koy[0:3]"  0 0.99998462200164795 -0.9999956488609314 
		0;
createNode animCurveTL -n "animCurveTL362";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  30 -0.033841737269357866 32 -1.2301080708866399 
		35 0.24376503020897994 39 0.24376503020897994;
	setAttr -s 4 ".kit[0:3]"  1 9 1 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 0.0060035879723727703 0.0036021943669766188 
		1;
	setAttr -s 4 ".kiy[0:3]"  0 0.99998199939727783 0.99999350309371948 
		0;
	setAttr -s 4 ".kox[0:3]"  1 0.0060035879723727703 0.0015831283526495099 
		1;
	setAttr -s 4 ".koy[0:3]"  0 0.99998199939727783 0.99999874830245972 
		0;
createNode animCurveTL -n "animCurveTL363";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  30 -0.027201153963313806 32 1.3078563829518688 
		35 0.44841910314659961 39 0.44841910314659961;
	setAttr -s 4 ".kit[0:3]"  1 9 1 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 0.0035041745286434889 0.0021025130990892649 
		1;
	setAttr -s 4 ".kiy[0:3]"  0 0.99999386072158813 0.99999779462814331 
		0;
	setAttr -s 4 ".kox[0:3]"  1 0.0035041745286434889 0.0027149447705596685 
		1;
	setAttr -s 4 ".koy[0:3]"  0 0.99999386072158813 -0.99999630451202393 
		0;
createNode animCurveTA -n "animCurveTA1039";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 61.901589883246402 35 -70.759742713658738 
		39 -70.759742713658738;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  0.080708138644695282 1;
	setAttr -s 4 ".kiy[2:3]"  -0.9967377781867981 0;
createNode animCurveTA -n "animCurveTA1040";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 25.199323443309421 35 26.623081280451803 
		39 26.623081280451803;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  0.21039380133152008 1;
	setAttr -s 4 ".kiy[2:3]"  0.97761672735214233 0;
createNode animCurveTA -n "animCurveTA1041";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 84.048696033159729 35 -49.096653183739235 
		39 -49.096653183739235;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  0.11591333895921707 1;
	setAttr -s 4 ".kiy[2:3]"  -0.99325931072235107 0;
createNode animCurveTL -n "animCurveTL364";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  30 0.99214413619678865 32 0.99214413619678865 
		35 0.71012400136723108 39 0.71012400136723108;
	setAttr -s 4 ".kit[0:3]"  1 9 1 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 0.0059096403419971466 0.003545823972672224 
		1;
	setAttr -s 4 ".kiy[0:3]"  0 -0.99998253583908081 -0.99999374151229858 
		0;
	setAttr -s 4 ".kox[0:3]"  1 0.0059096403419971466 0.0082733575254678726 
		1;
	setAttr -s 4 ".koy[0:3]"  0 -0.99998253583908081 -0.99996578693389893 
		0;
createNode animCurveTL -n "animCurveTL365";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  30 -0.033851474715545553 32 -0.033851474715545553 
		35 0.47076628974155943 39 0.47076628974155943;
	setAttr -s 4 ".kit[0:3]"  1 9 1 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 0.0033028118778020144 0.0019816940184682608 
		1;
	setAttr -s 4 ".kiy[0:3]"  0 0.99999451637268066 0.99999803304672241 
		0;
	setAttr -s 4 ".kox[0:3]"  1 0.0033028118778020144 0.0046239127404987812 
		1;
	setAttr -s 4 ".koy[0:3]"  0 0.99999451637268066 0.99998933076858521 
		0;
createNode animCurveTL -n "animCurveTL366";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  30 -0.0272011762672867 32 -0.0272011762672867 
		35 0.075519476331700294 39 0.075519476331700294;
	setAttr -s 4 ".kit[0:3]"  1 9 1 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 0.016223099082708359 0.0097346799448132515 
		1;
	setAttr -s 4 ".kiy[0:3]"  0 0.99986839294433594 0.99995261430740356 
		0;
	setAttr -s 4 ".kox[0:3]"  1 0.016223099082708359 0.022709470242261887 
		1;
	setAttr -s 4 ".koy[0:3]"  0 0.99986839294433594 0.99974209070205688 
		0;
createNode animCurveTA -n "animCurveTA1042";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 -78.560435502307485 
		39 -78.560435502307485;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  0.072738915681838989 1;
	setAttr -s 4 ".kiy[2:3]"  -0.99735099077224731 0;
createNode animCurveTA -n "animCurveTA1043";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 -29.584258420035471 
		39 -29.584258420035471;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  0.19013682007789612 1;
	setAttr -s 4 ".kiy[2:3]"  -0.98175758123397827 0;
createNode animCurveTA -n "animCurveTA1044";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 60.92594460387344 39 
		60.92594460387344;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  0.093628570437431335 1;
	setAttr -s 4 ".kiy[2:3]"  0.99560719728469849 0;
createNode animCurveTL -n "animCurveTL367";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.3705977767760478 30 -1.3705977767760478 
		32 -1.1433813107054158 35 -0.77018858354478503 39 -0.80521726511750047;
	setAttr -s 5 ".kit[1:4]"  1 9 9 3;
	setAttr -s 5 ".kot[1:4]"  1 9 9 3;
	setAttr -s 5 ".kix[1:4]"  1 0.002775873988866806 0.0068998401984572411 
		1;
	setAttr -s 5 ".kiy[1:4]"  0 0.9999961256980896 0.99997621774673462 
		0;
	setAttr -s 5 ".kox[1:4]"  1 0.002775873988866806 0.0068998401984572411 
		1;
	setAttr -s 5 ".koy[1:4]"  0 0.9999961256980896 0.99997621774673462 
		0;
createNode animCurveTL -n "animCurveTL368";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.1618658070195953 30 2.1618658070195953 
		32 1.5236548074533371 35 0.31414400201799764 39 0.16011791453845547;
	setAttr -s 5 ".kit[1:4]"  1 9 9 3;
	setAttr -s 5 ".kot[1:4]"  1 9 9 3;
	setAttr -s 5 ".kix[1:4]"  1 0.00090201135026291013 0.0017112332861870527 
		1;
	setAttr -s 5 ".kiy[1:4]"  0 -0.99999958276748657 -0.99999850988388062 
		0;
	setAttr -s 5 ".kox[1:4]"  1 0.00090201135026291013 0.0017112332861870527 
		1;
	setAttr -s 5 ".koy[1:4]"  0 -0.99999958276748657 -0.99999850988388062 
		0;
createNode animCurveTL -n "animCurveTL369";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.12044246479037771 30 -0.12044246479037771 
		32 -12.417660069427921 35 -13.243709761976236 39 -13.08119084976186;
	setAttr -s 5 ".kit[0:4]"  9 1 1 9 3;
	setAttr -s 5 ".kot[0:4]"  9 1 1 9 3;
	setAttr -s 5 ".kix[1:4]"  1 0.00032241889857687056 0.0035165194422006607 
		1;
	setAttr -s 5 ".kiy[1:4]"  0 -0.99999994039535522 -0.99999380111694336 
		0;
	setAttr -s 5 ".kox[1:4]"  1 0.00032241703593172133 0.0035165194422006607 
		1;
	setAttr -s 5 ".koy[1:4]"  0 -0.99999994039535522 -0.99999380111694336 
		0;
createNode animCurveTA -n "animCurveTA1045";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0.42860825122569929 35 -179.55392776172391 
		39 -120.6667236884293;
createNode animCurveTA -n "animCurveTA1046";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0.10779889749586917 35 116.96279219127334 
		39 102.95625951926647;
createNode animCurveTA -n "animCurveTA1047";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 14.114108295498545 35 -167.34049544866542 
		39 -117.50644899099053;
createNode animCurveTL -n "animCurveTL370";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.3705978542308779 30 1.3705978542308779 
		32 1.3705978542308779 35 0.40893690716992881 39 0.40893690716992881;
	setAttr -s 5 ".kit[1:4]"  1 9 9 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  1 0.0017331099370494485 0.0024263504892587662 
		1;
	setAttr -s 5 ".kiy[1:4]"  0 -0.99999850988388062 -0.99999707937240601 
		0;
	setAttr -s 5 ".kox[1:4]"  1 0.0017331099370494485 0.0024263504892587662 
		1;
	setAttr -s 5 ".koy[1:4]"  0 -0.99999850988388062 -0.99999707937240601 
		0;
createNode animCurveTL -n "animCurveTL371";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.1618621235956237 30 2.1618621235956237 
		32 2.1618621235956237 35 0.18904845089899255 39 0.18904845089899255;
	setAttr -s 5 ".kit[1:4]"  1 9 9 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  1 0.00084481673547998071 0.0011827431153506041 
		1;
	setAttr -s 5 ".kiy[1:4]"  0 -0.99999964237213135 -0.9999992847442627 
		0;
	setAttr -s 5 ".kox[1:4]"  1 0.00084481673547998071 0.0011827431153506041 
		1;
	setAttr -s 5 ".koy[1:4]"  0 -0.99999964237213135 -0.9999992847442627 
		0;
createNode animCurveTL -n "animCurveTL372";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.12044250833667494 30 -0.12044250833667494 
		32 -10.676528003383881 35 -14.132659100440684 39 -14.132659100440684;
	setAttr -s 5 ".kit[1:4]"  1 9 9 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  1 0.00011894382623722777 0.00067512854002416134 
		1;
	setAttr -s 5 ".kiy[1:4]"  0 -1 -0.9999997615814209 0;
	setAttr -s 5 ".kox[1:4]"  1 0.00011894382623722777 0.00067512854002416134 
		1;
	setAttr -s 5 ".koy[1:4]"  0 -1 -0.9999997615814209 0;
createNode animCurveTA -n "animCurveTA1048";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 6.2222396109735723 
		39 6.2222396109735723;
createNode animCurveTA -n "animCurveTA1049";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 -16.600812933991165 
		39 -16.600812933991165;
createNode animCurveTA -n "animCurveTA1050";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 -6.3965619146530344 
		39 -6.3965619146530344;
createNode animCurveTL -n "animCurveTL373";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 32 0 35 0.20583112500852868 
		39 1.5351542341385696;
	setAttr -s 5 ".kit[1:4]"  1 9 9 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  1 0.0080969873815774918 0.0015199322951957583 
		0.0010030159028246999;
	setAttr -s 5 ".kiy[1:4]"  0 0.99996721744537354 0.99999886751174927 
		0.9999995231628418;
	setAttr -s 5 ".kox[1:4]"  1 0.0080969873815774918 0.0015199322951957583 
		0.0010030159028246999;
	setAttr -s 5 ".koy[1:4]"  0 0.99996721744537354 0.99999886751174927 
		0.9999995231628418;
createNode animCurveTL -n "animCurveTL374";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 32 0 35 1.0559234230556687 
		39 -0.86667752871238668;
	setAttr -s 5 ".kit[1:4]"  1 9 9 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  1 0.0015783952549099922 0.0026922642719000578 
		0.00069350458215922117;
	setAttr -s 5 ".kiy[1:4]"  0 0.99999874830245972 -0.9999963641166687 
		-0.9999997615814209;
	setAttr -s 5 ".kox[1:4]"  1 0.0015783952549099922 0.0026922642719000578 
		0.00069350458215922117;
	setAttr -s 5 ".koy[1:4]"  0 0.99999874830245972 -0.9999963641166687 
		-0.9999997615814209;
createNode animCurveTL -n "animCurveTL375";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1 30 -1 32 -1 35 -2.7266002347845419 
		39 -1.1105508292219248;
	setAttr -s 5 ".kit[1:4]"  1 9 9 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  1 0.00096528761787340045 0.021101729944348335 
		0.00082505680620670319;
	setAttr -s 5 ".kiy[1:4]"  0 -0.9999995231628418 -0.99977731704711914 
		0.99999964237213135;
	setAttr -s 5 ".kox[1:4]"  1 0.00096528761787340045 0.021101729944348335 
		0.00082505680620670319;
	setAttr -s 5 ".koy[1:4]"  0 -0.9999995231628418 -0.99977731704711914 
		0.99999964237213135;
createNode animCurveTL -n "animCurveTL376";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 32 0 35 -0.59788775323863297 
		39 0.61323488484053001;
	setAttr -s 5 ".kit[1:4]"  1 9 9 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  1 0.0027875802479684353 0.0038049311842769384 
		0.0011009059380739927;
	setAttr -s 5 ".kiy[1:4]"  0 -0.9999961256980896 0.99999278783798218 
		0.99999940395355225;
	setAttr -s 5 ".kox[1:4]"  1 0.0027875802479684353 0.0038049311842769384 
		0.0011009059380739927;
	setAttr -s 5 ".koy[1:4]"  0 -0.9999961256980896 0.99999278783798218 
		0.99999940395355225;
createNode animCurveTL -n "animCurveTL377";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 32 0 35 -1.6361478719279683 
		39 0.30801779867030882;
	setAttr -s 5 ".kit[1:4]"  1 9 9 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  1 0.0010186523431912065 0.0075751026161015034 
		0.00068581226514652371;
	setAttr -s 5 ".kiy[1:4]"  0 -0.99999946355819702 0.99997133016586304 
		0.9999997615814209;
	setAttr -s 5 ".kox[1:4]"  1 0.0010186523431912065 0.0075751026161015034 
		0.00068581226514652371;
	setAttr -s 5 ".koy[1:4]"  0 -0.99999946355819702 0.99997133016586304 
		0.9999997615814209;
createNode animCurveTL -n "animCurveTL378";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1 30 -1 32 -1 35 -2.2967427684127548 
		39 -2.1649829693683946;
	setAttr -s 5 ".kit[1:4]"  1 9 9 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  1 0.0012852705549448729 0.0020028864964842796 
		0.010118903592228889;
	setAttr -s 5 ".kiy[1:4]"  0 -0.99999916553497314 -0.99999797344207764 
		0.99994879961013794;
	setAttr -s 5 ".kox[1:4]"  1 0.0012852705549448729 0.0020028864964842796 
		0.010118903592228889;
	setAttr -s 5 ".koy[1:4]"  0 -0.99999916553497314 -0.99999797344207764 
		0.99994879961013794;
createNode animCurveTA -n "animCurveTA1051";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 4.7921462321675188 3 -35.280552173416005 
		6 -55.670009807431882 8 -8.3722158444725991 10 -1.5555755750740079 14 52.965972516037311 
		18 46.674944363553088 20 -8.3722158444725991 22 6.8619270713577576 25 11.910122171492144 
		29 8.719760997765631 32 -0.86682362046053785 35 80.425561779386882 39 80.425561779386882;
createNode animCurveTA -n "animCurveTA1052";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -53.856694228597611 3 2.5816969024663949 
		6 -13.611207391781139 8 -23.977773843939509 10 46.438548478045902 14 8.5628669386974039 
		18 -49.571988023061706 20 -23.977773843939509 22 26.271568733472723 25 34.847436509543812 
		29 -19.172371927598537 32 -36.420165432649057 35 -30.44506412614497 39 -30.44506412614497;
createNode animCurveTA -n "animCurveTA1053";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -1.098529366997784 3 53.251722291748415 
		6 27.497501682495685 8 33.682233492227084 10 -43.144038971193382 14 -93.212985043219433 
		18 -42.695429521936489 20 33.682233492227084 22 -28.478653283920352 25 -57.340025714492775 
		29 -15.284065710194218 32 -37.142136265893669 35 -71.256105225350495 39 -71.256105225350495;
createNode animCurveTA -n "animCurveTA1054";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 17.196782419487917 3 -29.573411147573808 
		6 -8.563012295375076 8 -25.419177015304651 10 -78.024183224002883 14 -27.012830558626415 
		18 53.698828735921538 20 -25.419177015304651 22 35.50840155485146 25 26.194228625572833 
		29 30.531553251488187 32 -13.873454918735659 35 43.141146641774462 39 43.141146641774462;
	setAttr -s 14 ".kit[5:13]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 14 ".kot[5:13]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 14 ".kix[5:13]"  0.067792564630508423 0.99046748876571655 
		0.38720911741256714 0.18192823231220245 0.9371684193611145 0.31650730967521667 
		0.67254066467285156 0.22829197347164154 1;
	setAttr -s 14 ".kiy[5:13]"  0.99769943952560425 0.13774679601192474 
		-0.92199194431304932 0.98331183195114136 -0.34887725114822388 -0.94859004020690918 
		0.74006015062332153 0.97359269857406616 0;
	setAttr -s 14 ".kox[5:13]"  0.067792549729347229 0.99046748876571655 
		0.38720911741256714 0.18192823231220245 0.9371684193611145 0.31650730967521667 
		0.67254066467285156 0.22829197347164154 1;
	setAttr -s 14 ".koy[5:13]"  0.99769943952560425 0.13774679601192474 
		-0.92199194431304932 0.98331183195114136 -0.34887725114822388 -0.94859004020690918 
		0.74006015062332153 0.97359269857406616 0;
createNode animCurveTA -n "animCurveTA1055";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -60.10188422410716 3 2.3677661369630982 
		6 20.507370224920166 8 -41.133378951685579 10 27.204395537948077 14 -19.208474923985207 
		18 -46.999306374175127 20 -41.133378951685579 22 18.534260088769848 25 1.6125065100282923 
		29 -38.582935464452937 32 -57.65471620728129 35 -34.275123249513904 39 -34.275123249513904;
createNode animCurveTA -n "animCurveTA1056";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -21.001041665835174 3 84.877951062747869 
		6 107.09766021769482 8 27.165866266794364 10 24.297465729795011 14 -16.200706224807899 
		18 -45.587246804174015 20 27.165866266794364 22 2.2170566423766038 25 -44.957460230307618 
		29 -32.931696609933702 32 5.2163725894863555 35 -49.798186726856571 39 -49.798186726856571;
	setAttr -s 14 ".kit[5:13]"  1 1 9 9 9 9 9 
		9 9;
	setAttr -s 14 ".kot[5:13]"  1 1 9 9 9 9 9 
		9 9;
	setAttr -s 14 ".kix[5:13]"  0.12704253196716309 0.20912046730518341 
		0.15780416131019592 0.1312568336725235 0.35550794005393982 0.25747072696685791 
		0.56197273731231689 0.23613637685775757 1;
	setAttr -s 14 ".kiy[5:13]"  -0.99189728498458862 0.97788989543914795 
		0.98747044801712036 -0.99134838581085205 -0.9346732497215271 0.96628612279891968 
		-0.82715576887130737 -0.97171992063522339 0;
	setAttr -s 14 ".kox[5:13]"  0.12704259157180786 0.20912043750286102 
		0.15780416131019592 0.1312568336725235 0.35550794005393982 0.25747072696685791 
		0.56197273731231689 0.23613637685775757 1;
	setAttr -s 14 ".koy[5:13]"  -0.99189728498458862 0.97788989543914795 
		0.98747044801712036 -0.99134838581085205 -0.9346732497215271 0.96628612279891968 
		-0.82715576887130737 -0.97171992063522339 0;
createNode animCurveTA -n "animCurveTA1057";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 59.468287502559065 3 89.911651693682515 
		6 32.789921414575325 8 39.038962484432531 10 68.327235470237881 16 2.3588908258300982 
		20 39.038962484432531 22 12.874514918270977 25 12.874514918270977 29 60.256622455879089 
		32 79.642588495982807 35 23.279099769107543 39 23.279099769107543;
createNode animCurveTA -n "animCurveTA1058";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 59.305463658789549 3 60.185649943194235 
		6 3.2573665005240873 8 63.89762232629036 10 38.08722284185874 14 -2.4095273643203612 
		18 54.772758504542118 20 63.89762232629036 22 18.197981956320611 25 45.248375301206067 
		29 45.248375301206067 32 87.940749370014572 35 21.701008910528319 39 21.701008910528319;
createNode animCurveTA -n "animCurveTA1059";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 18.476235154862632 3 -25.061733991251923 
		6 22.425089944480888 8 22.425089944480888 20 -54.236822617544803 22 -54.236822617544803 
		25 23.823134639673615 29 23.823134639673615 32 23.823134639673619 35 -11.431503848920924 
		39 -11.431503848920924;
createNode animCurveTA -n "animCurveTA1060";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 10.082003051124275 3 10.082003051124259 
		6 28.721836935985287 8 28.721836935985287 20 -21.870691107419802 22 -21.870691107419802 
		25 -6.0806429538034328 29 -6.0806429538034328 32 -6.0806429538034346 35 56.613259276433965 
		39 56.613259276433965;
createNode animCurveTA -n "animCurveTA1061";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -4.720189328892868 3 -4.7201893288928662 
		6 7.6266657808874898 8 7.6266657808874898 20 15.410846653408855 22 15.410846653408855 
		25 10.96112701689211 29 10.96112701689211 32 10.961127016892112 35 13.131642679464067 
		39 13.131642679464067;
createNode animCurveTA -n "animCurveTA1062";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 20.127263792592359 3 -13.555270109330269 
		6 -18.847227132200882 8 2.0447427744579891 10 -58.316571219273882 14 64.419947348262966 
		18 -13.419761998961244 20 2.0447427744579891 22 75.75473903343277 25 24.991091773627126 
		29 24.991091773627126 32 24.991091773627126 35 -35.828077252198852 39 -35.828077252198852;
createNode animCurveTA -n "animCurveTA1063";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 11.615881410206432 3 11.615881410206432 
		6 44.709551992010134 8 5.5429207840541244 10 0.90476728715262045 14 -13.767569937486742 
		18 -6.1396228316779355 20 5.5429207840541244 22 -8.1079546283831778 25 -8.107954628383192 
		29 -8.107954628383192 32 -8.1079546283831938 35 7.8286751959834691 39 7.8286751959834691;
createNode animCurveTA -n "animCurveTA1064";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.3215928107553504 3 0.32159281075535068 
		6 -10.402617814119608 8 34.868956102818473 10 1.5899170637045899 14 -21.741856593480794 
		18 37.217504479895823 20 34.868956102818473 22 -15.142398251678113 25 -15.142398251678118 
		29 -15.142398251678118 32 -15.142398251678118 35 -17.722466912710736 39 -17.722466912710736;
createNode animCurveTA -n "animCurveTA1065";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -33.352561559544277 3 11.093319219895511 
		6 -32.123718040735945 8 -32.123718040735945 20 -32.123718040735945 22 -32.123718040735945 
		25 -32.123718040735945 29 -32.123718040735945 32 -32.123718040735959 35 -36.628454700917274 
		39 -36.628454700917274;
createNode animCurveTA -n "animCurveTA1066";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 39.646570824829801 3 59.959644693642325 
		6 19.407819173437478 8 19.407819173437478 20 19.407819173437478 22 19.407819173437478 
		25 19.407819173437478 29 19.407819173437478 32 19.407819173437481 35 15.180891733866945 
		39 15.180891733866945;
createNode animCurveTA -n "animCurveTA1067";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 11.057385060550727 3 48.106469618696913 
		6 4.4751336445171193 8 4.4751336445171193 20 4.4751336445171193 22 4.4751336445171193 
		25 4.4751336445171193 29 4.4751336445171193 32 4.4751336445171193 35 -0.072787087017037025 
		39 -0.072787087017037025;
createNode animCurveTA -n "animCurveTA1068";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 20 0 22 0 25 0 
		29 0 32 0 35 0 39 0;
createNode animCurveTA -n "animCurveTA1069";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 20 0 22 0 25 0 
		29 0 32 0 35 0 39 0;
createNode animCurveTA -n "animCurveTA1070";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 72.57093380156806 3 67.810939637714412 
		6 -11.433734901667266 8 -11.433734901667266 20 -11.433734901667266 22 -11.433734901667266 
		25 -11.433734901667266 29 -11.433734901667266 32 -11.43373490166727 35 -19.69381977483518 
		39 16.091928124335652;
createNode animCurveTA -n "animCurveTA1071";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA1072";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA1073";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 35 0 39 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "mrg_Thumb_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  39 0;
createNode animCurveTA -n "mrg_Thumb_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  39 0;
createNode animCurveTA -n "mrg_Thumb_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  39 0;
createNode animCurveTA -n "mrg_Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  39 0;
createNode animCurveTA -n "mrg_Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  39 0;
createNode animCurveTA -n "mrg_Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  39 0;
createNode animCurveTA -n "animCurveTA1080";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 20 0 22 0 25 0 
		29 0 32 0 35 0 39 0;
createNode animCurveTA -n "animCurveTA1081";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 20 0 22 0 25 0 
		29 0 32 0 35 0 39 0;
createNode animCurveTA -n "animCurveTA1082";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 72.677699265164733 3 -9.6043099083038648 
		6 -9.6043099083038648 8 -9.6043099083038648 20 -9.6043099083038648 22 -9.6043099083038648 
		25 -9.6043099083038648 29 -9.6043099083038648 32 -9.6043099083038648 35 -14.841309524368915 
		39 14.532113898241397;
createNode animCurveTA -n "animCurveTA1083";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.2945941069882385 3 1.2945941069882381 
		6 3.1198943483277444 8 3.1198943483277444 20 3.1198943483277444 22 3.1198943483277444 
		25 3.1198943483277444 29 3.1198943483277444 32 3.1198943483277444 35 3.1198943483277448 
		39 0;
createNode animCurveTA -n "animCurveTA1084";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 3.3208811165553156 3 3.3208811165553147 
		6 1.7238169885910806 8 1.7238169885910806 20 1.7238169885910806 22 1.7238169885910806 
		25 1.7238169885910806 29 1.7238169885910806 32 1.723816988591081 35 1.7238169885910808 
		39 0;
createNode animCurveTA -n "animCurveTA1085";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -27.52582447785997 3 -27.525824477859967 
		6 12.268388134198538 8 12.268388134198538 20 12.268388134198538 22 12.268388134198538 
		25 12.268388134198538 29 12.268388134198538 32 12.268388134198538 35 12.268388134198538 
		39 0;
createNode animCurveTA -n "animCurveTA1086";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 6.308963718970988 6 6.9103069920743438 
		8 6.2649641345144982 12 7.1813335466160488 20 6.2649641345144982 22 4.3792227256952083 
		25 -6.174601823043262 29 5.5003912180703773 32 0.41771815725513101 35 4.3455899438596957 
		39 21.857236856166011;
createNode animCurveTA -n "animCurveTA1087";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 5.7322064377030788 6 4.9896665793491746 
		8 5.780294047116163 12 4.432759729220459 20 5.780294047116163 22 7.3112839305619053 
		25 5.3349485649520059 29 7.3427228592247538 32 1.4517181918272679 35 -2.0211929929175145 
		39 2.424565788311519;
createNode animCurveTA -n "animCurveTA1088";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 2.8319513947347925 3 21.713029036968567 
		6 28.142527379210097 8 21.274336518663382 12 32.251027012308903 20 21.274336518663382 
		22 4.8458125891459387 25 -18.053793752528659 29 5.3515714667445593 32 16.50991249947349 
		35 9.1303904739519428 39 22.21772607214919;
createNode animCurveTA -n "animCurveTA1089";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 20 0 22 0 25 0 
		29 0 32 0 35 0 39 -11.623795089125478;
createNode animCurveTA -n "animCurveTA1090";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 20 0 22 0 25 0 
		29 0 32 0 35 0 39 -5.1801351848586021;
createNode animCurveTA -n "animCurveTA1091";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 15.545129367555198 
		20 0 22 14.898647627575579 25 14.898647627575579 29 14.898647627575579 32 
		14.898647627575579 35 0 39 27.974704293083807;
createNode animCurveTA -n "animCurveTA1092";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 14.794623739018833 6 14.794623739018833 
		8 22.334659718447345 12 26.31359528990102 20 22.334659718447345 22 22.338466481041845 
		25 11.456752355681559 29 3.5955899922493053 32 3.5955899922493062 35 4.5948127575308497 
		39 23.086919043348587;
createNode animCurveTA -n "animCurveTA1093";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 22.395186436807986 6 22.395186436807986 
		8 14.88860504567513 12 5.8646513341486664 20 14.88860504567513 22 14.882720778967039 
		25 24.202881440026243 29 4.6959726176734558 32 4.6959726176734575 35 6.2727765341536816 
		39 8.6912145029969565;
createNode animCurveTA -n "animCurveTA1094";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -8.5537919350489524 3 -0.5621560964572182 
		6 -0.5621560964572182 8 28.394145862336995 12 49.545011691859933 20 28.394145862336995 
		22 28.408964454747306 25 -3.2783717394768646 29 10.032621196260985 32 10.032621196260987 
		35 27.984443909870059 39 22.489414651394924;
createNode animCurveTA -n "animCurveTA1095";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 22.078247600383854 6 18.977509968842877 
		8 20.941119161468873 20 10.848910062280096 22 11.98685505624049 25 13.464379261934385 
		29 0.82664351209015052 32 0.8266435120901503 35 7.1522494975013187 39 7.2864915402669999;
createNode animCurveTA -n "animCurveTA1096";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 -9.6389434643346714 6 -14.961349670392833 
		8 -11.985276261935251 20 -9.6857689857774592 22 -8.2276460027505074 25 -5.4447707464457205 
		29 -5.4419935515154378 32 -5.4419935515154378 35 -1.4349096479040127 39 -0.33252079700716181;
createNode animCurveTA -n "animCurveTA1097";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -8.6139304882271457 3 7.1941842949003796 
		6 21.659909015129006 8 13.249280848849958 20 7.31134628381818 22 0.012452880661499691 
		25 -12.349286551846278 29 5.8122340998814881 32 5.8122340998814881 35 26.122606478441046 
		39 17.435740369561156;
createNode animCurveTA -n "animCurveTA1098";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 20 0 22 0 25 0 
		29 0 32 0 35 0 39 0;
createNode animCurveTA -n "animCurveTA1099";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 20 0 22 0 25 0 
		29 0 32 0 35 0 39 0;
createNode animCurveTA -n "animCurveTA1100";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 72.677699265164733 3 21.472939016776969 
		6 21.472939016776969 8 21.472939016776969 20 21.472939016776969 22 21.472939016776969 
		25 21.472939016776969 29 21.472939016776969 32 21.472939016776973 35 16.736721183175977 
		39 30.900736939420714;
createNode animCurveTA -n "animCurveTA1101";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.043585476863095891 3 26.194612819039175 
		6 -15.564086868905925 8 -15.564086868905925 20 -15.564086868905925 22 -15.564086868905925 
		25 -15.564086868905925 29 -15.564086868905925 32 -15.564086868905928 35 -19.916813043140671 
		39 -19.916813043140671;
createNode animCurveTA -n "animCurveTA1102";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 28.449471067828945 3 42.116293762219605 
		6 5.9119201843313247 8 5.9119201843313247 20 5.9119201843313247 22 5.9119201843313247 
		25 5.9119201843313247 29 5.9119201843313247 32 5.9119201843313265 35 2.1381503000571311 
		39 2.1381503000571311;
createNode animCurveTA -n "animCurveTA1103";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 15.739680343212559 3 51.312599966148291 
		6 -0.89181587725581968 8 -0.89181587725581968 20 -0.89181587725581968 22 
		-0.89181587725581968 25 -0.89181587725581968 29 -0.89181587725581968 32 -0.89181587725581979 
		35 -6.3333534086058831 39 -6.3333534086058831;
createNode animCurveTA -n "animCurveTA1104";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 20 0 22 0 25 0 
		29 0 32 0 35 0 39 0;
createNode animCurveTA -n "animCurveTA1105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 20 0 22 0 25 0 
		29 0 32 0 35 0 39 0;
createNode animCurveTA -n "animCurveTA1106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 72.57093380156806 3 55.749331591600708 
		6 21.151890972437133 8 21.151890972437133 20 21.151890972437133 22 21.151890972437133 
		25 21.151890972437133 29 21.151890972437133 32 21.151890972437133 35 17.545620107018433 
		39 -15.187381016197607;
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
	setAttr ".o" 39;
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
select -ne :defaultResolution;
	setAttr ".w" 720;
	setAttr ".h" 486;
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
connectAttr "mrg_hit_by_carSource.st" "clipLibrary1.st[0]";
connectAttr "mrg_hit_by_carSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL338.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL339.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL341.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA988.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU49.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU50.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU51.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU52.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU53.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU54.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU55.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU56.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA989.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA990.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA991.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL343.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL344.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL345.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL346.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL347.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL348.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA992.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA993.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA994.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL349.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL350.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL351.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA995.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA996.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA997.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA998.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA999.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA1000.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA1001.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA1002.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA1003.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA1004.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA1005.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA1006.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA1007.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA1008.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA1009.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL352.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL353.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL354.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL355.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL356.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL357.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL358.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL359.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL360.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA1010.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA1011.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA1012.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA1013.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA1014.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA1015.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA1016.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA1017.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA1018.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA1019.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA1020.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA1021.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA1022.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA1023.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA1024.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA1025.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA1026.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA1027.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA1028.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA1029.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA1030.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA1031.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA1032.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA1033.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA1034.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA1035.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA1036.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA1037.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA1038.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL361.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL362.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL363.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA1039.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA1040.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA1041.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL364.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL365.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL366.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA1042.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA1043.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA1044.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL367.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL368.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL369.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA1045.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA1046.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA1047.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL370.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL371.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL372.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA1048.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA1049.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA1050.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL373.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL374.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL375.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL376.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL377.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL378.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA1051.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA1052.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA1053.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA1054.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA1055.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA1056.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA1057.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA1058.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA1059.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA1060.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA1061.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1062.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1063.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1064.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA1065.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1066.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1067.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1068.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1069.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1070.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1071.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1072.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1073.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "mrg_Thumb_R_rotateX.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "mrg_Thumb_R_rotateY.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "mrg_Thumb_R_rotateZ.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "mrg_Thumb_L_rotateX.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "mrg_Thumb_L_rotateY.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "mrg_Thumb_L_rotateZ.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1080.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1081.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1082.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1083.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1084.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1085.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1086.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1087.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1088.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1089.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1090.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1091.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1092.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1093.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1094.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1095.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1096.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1097.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1098.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1099.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1100.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA1101.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA1102.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA1103.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA1104.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA1105.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA1106.a" "clipLibrary1.cel[0].cev[167].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[3].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[4].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[5].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[6].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[7].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[8].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[9].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[10].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[10].olnk";
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
// End of mrg_hit_by_car.ma
