//Maya ASCII 4.0 scene
//Name: hom_get_into_car_all.ma
//Last modified: Tue, Oct 22, 2002 11:35:36 AM
requires maya "4.0";
requires "p3dmayaexp" "18.5";
requires "p3dSimpleShader" "18.5";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "hom_get_into_car_allSource";
	setAttr ".ihi" 0;
	setAttr ".du" 41;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL411";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTL -n "animCurveTL412";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTL -n "animCurveTL413";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 -0.051425456377630012 1 -0.052866138609971199 
		2 -0.054306820842312392 3 -0.051425456377630012 4 -0.038670508959098682 5 
		-0.021593514667913233 6 -0.012527035314080361 7 -0.015988944724490882 8 -0.025396315495186977 
		9 -0.036430507589902413 10 -0.044772880972370983 11 -0.04980286494006194 
		12 -0.052606587432750651 13 -0.051425456377630012 14 -0.044103083388211409 
		15 -0.032795856712178932 16 -0.022214349227984511 17 -0.017094717058031818 
		18 -0.0081831755252471799 19 0.016132886580040778 20 0.042714754662763373 
		21 0.042423987822389542 22 0.040050965360667184 23 0.095636267194668736 24 
		0.23650222906202886 25 0.42329454537625921 26 0.61603883406824755 27 0.77476071306888172 
		28 0.88547349179050883 29 0.95939050255702174 30 0.99433739766662688 31 0.99319436710844944 
		32 0.96915663049886625 33 0.93552238457696302 34 0.90558982608182514 35 0.89265715175253824 
		36 0.90018902182024851 37 0.9190186969895241 38 0.94349727470958245 39 0.9679758524296409 
		40 0.9868055275989166 41 0.99433739766662688;
createNode animCurveTL -n "animCurveTL414";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL415";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 -0.0047027017968146491 12 -0.0094054035936292982 13 0 14 
		0.032795042599841034 15 0.079698190909491096 16 0.1269729499511385 17 0.16517543732181986 
		18 0.21440866525381849 19 0.29198987683514144 20 0.38674581699268246 21 0.50118504507264949 
		22 0.62145720442515928 23 0.71087202078946421 24 0.75797467738371083 25 0.78373690046414479 
		26 0.80010823032716571 27 0.81903820726917342 28 0.84325752882056604 29 0.86494434632257022 
		30 0.88021938078782869 31 0.88971888451564829 32 0.89678772116808969 33 0.90160952880192502 
		34 0.90436794547392663 35 0.90524660924086664 36 0.90339274046656759 37 0.89875806853081985 
		38 0.89273299501434777 39 0.88670792149787547 40 0.88207324956212774 41 0.88021938078782869;
createNode animCurveTA -n "animCurveTA1131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 -5.8284402688137176 1 -1.3157848772529199 
		2 7.9838093600442068 3 15.712784536999759 4 19.663056057025194 5 22.042708491641307 
		6 23.118437686934172 7 23.585770581578483 8 23.5339100666062 9 22.320065916639155 
		10 19.301447906299206 11 11.436239638182483 12 0.74345734158674226 13 -5.8284402688137176 
		14 -4.5674138290299657 15 0.81449713058141315 16 6.1296329831764549 17 9.849025760366013 
		18 13.600868200262253 19 19.62049601416447 20 21.932677743389643 21 15.58324010976113 
		22 5.8426755842036551 23 -3.7197865316961756 24 -13.474867471753745 25 -24.144102240802923 
		26 -32.684482193784824 27 -36.052998685640567 28 -28.167942550771158 29 -12.891726876928704 
		30 -2.0975263990809521 31 1.1356330122847784 32 2.1997210084602514 33 1.9280561371463718 
		34 1.1539569460440451 35 0.71074198285418544 36 0.50272210271084183 37 -0.017327597647516697 
		38 -0.69339220811338331 39 -1.3694568185792486 40 -1.8895065189376079 41 
		-2.0975263990809521;
createNode animCurveTU -n "animCurveTU81";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTU -n "animCurveTU82";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTU -n "animCurveTU83";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTU -n "animCurveTU84";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTU -n "animCurveTU85";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTU -n "animCurveTU86";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTU -n "animCurveTU87";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 41 1;
createNode animCurveTU -n "animCurveTU88";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 41 1;
createNode animCurveTA -n "animCurveTA1132";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTA -n "animCurveTA1133";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTA -n "animCurveTA1134";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTL -n "animCurveTL416";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTL -n "animCurveTL417";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTL -n "animCurveTL418";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTL -n "animCurveTL419";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.26454016861507795 3 -0.26454016861507795 
		6 -0.26454016861507795 9 -0.26454016861507795 12 -0.26454016861507795 15 
		-0.26454016861507795 17 -0.22437861733064826 19 -0.12576758233289637 23 -0.12576758233289637 
		27 0.56097603034061028 30 1.2504784321605431 41 1.2504784321605431;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		3 3 9 3 3;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		3 3 9 3 3;
createNode animCurveTL -n "animCurveTL420";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.13806192026723146 3 0.13806192026723146 
		6 0.13806192026723146 9 0.13806192026723146 12 0.13806192026723146 15 0.21218793707500705 
		17 0.25861102390683555 19 0.18381928724669791 23 0.14857135559247653 27 0.41923602975380647 
		30 0.67000535384055038 41 0.67000535384055038;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		3 3 9 3 3;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		3 3 9 3 3;
createNode animCurveTL -n "animCurveTL421";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.064904406754016042 3 -0.064904406754016042 
		6 -0.064904406754016042 9 -0.064904406754016042 12 -0.064904406754016042 
		15 -0.064904406754016042 17 0.38761032248211302 19 0.92356787827008124 23 
		0.92356787827008124 27 1.2727107540018192 30 1.8871381895415522 41 1.8871381895415522;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		3 3 9 3 3;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		3 3 9 3 3;
createNode animCurveTA -n "animCurveTA1135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 9 0 12 0 15 15.829425701546842 
		17 14.331626443463124 19 -10.811641225563552 23 1.5040871012270867 27 7.2345129325716782 
		30 0 41 0;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		3 3 9 3 3;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		3 3 9 3 3;
createNode animCurveTA -n "animCurveTA1136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -25.948901905116401 3 -25.948901905116401 
		6 -25.948901905116401 9 -25.948901905116401 12 -25.948901905116401 15 -25.948901905116429 
		17 -0.4082319874018141 19 9.0830972443010491 23 9.0830972443010527 27 -69.701631783905754 
		30 0 41 0;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		3 3 9 3 3;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		3 3 9 3 3;
createNode animCurveTA -n "animCurveTA1137";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 9 0 12 0 15 0 17 0.50956548566278548 
		19 2.954679702671601 23 2.9546797026715965 27 4.4294098373784498 30 0 41 
		0;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		3 3 9 3 3;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		3 3 9 3 3;
createNode animCurveTL -n "animCurveTL422";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.21594587158542247 3 0.21594587158542247 
		6 0.21594587158542247 10 0.21594587158542247 13 0.21594587158542247 16 0.21594587158542247 
		18 0.21594587158542247 20 0.21284262128680437 23 0.71965975992478237 27 0.71965975992478237 
		30 1.7084450118300396 41 1.7084450118300396;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 3 3;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 3 3;
createNode animCurveTL -n "animCurveTL423";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.1380615615975922 3 0.1380615615975922 
		6 0.1380615615975922 10 0.1380615615975922 13 0.1380615615975922 16 0.1380615615975922 
		18 0.1380615615975922 20 0.20944072756738258 23 0.66588912309516346 27 0.66588912309516346 
		30 0.66588912309516346 41 0.66588912309516346;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 3 3;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 3 3;
createNode animCurveTL -n "animCurveTL424";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.00078430246903575811 3 0.00078430246903575811 
		6 0.00078430246903575811 10 0.00078430246903575811 13 0.00078430246903575811 
		16 0.00078430246903575811 18 0.00078430246903575811 20 0.06225095438633 23 
		1.357575367928272 27 1.357575367928272 30 1.9096734928140209 41 1.9096734928140209;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		1 9 9 3 3;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		1 9 9 3 3;
	setAttr -s 12 ".kix[7:11]"  0.0055326707661151886 0.0018013475928455591 
		0.0042262640781700611 1 1;
	setAttr -s 12 ".kiy[7:11]"  0.99998468160629272 0.99999839067459106 
		0.99999105930328369 0 0;
	setAttr -s 12 ".kox[7:11]"  0.0055327103473246098 0.0018013475928455591 
		0.0042262640781700611 1 1;
	setAttr -s 12 ".koy[7:11]"  0.99998468160629272 0.99999839067459106 
		0.99999105930328369 0 0;
createNode animCurveTA -n "animCurveTA1138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 10 0 13 0 16 0 18 0 
		20 22.010234457643321 23 0.52783895649044899 27 0.52783895649044899 30 0 
		41 0;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 3 3;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 3 3;
createNode animCurveTA -n "animCurveTA1139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 10 0 13 0 16 0 18 0 
		20 1.6471102606573049 23 41.044255556689905 27 41.044255556689905 30 0 41 
		0;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 3 3;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 3 3;
createNode animCurveTA -n "animCurveTA1140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 10 0 13 0 16 0 18 0 
		20 7.7922141916432555 23 8.1273733030172544 27 8.1273733030172544 30 0 41 
		0;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 3 3;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 3 3;
createNode animCurveTA -n "animCurveTA1141";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTA -n "animCurveTA1142";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTA -n "animCurveTA1143";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTA -n "animCurveTA1144";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTA -n "animCurveTA1145";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTA -n "animCurveTA1146";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTL -n "animCurveTL425";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 13 0 16 0 18 0 
		20 0 23 0 27 0 30 0 35 0 41 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL426";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 13 0 16 0 18 0 
		20 0 23 0 27 0 30 0 35 0 41 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL427";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 3 1 6 1 10 1 13 1 16 1 18 1 
		20 1 23 1 27 1 30 1 35 1 41 1;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL428";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 13 0 16 0 18 0 
		20 0 23 0 27 0 30 0 35 0 41 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL429";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 13 0 16 0 18 0 
		20 0 23 0 27 0 30 0 35 0 41 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL430";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 3 1 6 1 10 1 13 1 16 1 18 1 
		20 1 23 1 27 1 30 1 35 1 41 1;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL431";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.076472881617957691 3 -0.076472881617957691 
		6 -0.018628487836120831 10 -0.066580084407076495 13 -0.076472881617957691 
		16 -0.033034131700396582 18 -0.01216889566532684 20 0.063519521395760351 
		23 0.1422171324228183 27 1.1521178121918223 30 1.4786421250535617 35 1.3274372168934199 
		41 1.4786421250535617;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL432";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.93105416142265018 3 0.93105416142265018 
		6 0.9177377185523794 10 0.9177377185523794 13 0.93105416142265018 16 0.9224657007074174 
		18 0.91524338550816797 20 0.88699451063555812 23 0.96472071093595801 27 1.0449881827816192 
		30 0.94304744795874273 35 0.94006594615970918 41 0.94304744795874273;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL433";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 13 0 16 0.18881674669046031 
		18 0.31883914369988964 20 0.5751153059671642 23 1.0571113164685229 27 1.217961225373307 
		30 1.3089414707479514 35 1.3461585304208978 41 1.3089414707479514;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.62843630316474508 3 -0.64945777164326313 
		6 3.0455725522002712 10 2.2213518221595017 13 -0.62843630316474508 16 -4.0647210446877668 
		18 -2.935775021023272 20 -3.0762169050940038 23 -6.5591355069755881 27 -16.566395863032415 
		30 -25.655237914214105 35 -5.4513933106138657 41 -25.655237914214105;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -5.8284402688137167 3 15.712784536999756 
		6 23.118437686934161 10 19.301447906299206 13 -5.8284402688137167 16 6.129632983176454 
		18 13.600868200262255 20 21.932677743389643 23 -3.7197865316961756 27 -36.05299868564056 
		30 -2.0975263990809512 35 0.71074198285418522 41 -2.0975263990809512;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -1.295636019309746 3 -1.5353463816017385 
		6 -2.8980232091229619 10 -1.7971044910279799 13 -1.295636019309746 16 -1.7490863204697844 
		18 -0.84256151123097234 20 -1.3015925165258879 23 -5.0537228151421463 27 
		-19.695463475605692 30 0.53932213336905666 35 22.697660472141617 41 0.53932213336905666;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1150";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTA -n "animCurveTA1151";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTA -n "animCurveTA1152";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTA -n "animCurveTA1153";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTA -n "animCurveTA1154";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTA -n "animCurveTA1155";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTA -n "animCurveTA1156";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTA -n "animCurveTA1157";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTA -n "animCurveTA1158";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTA -n "animCurveTA1159";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTA -n "animCurveTA1160";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTA -n "animCurveTA1161";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTA -n "animCurveTA1162";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTA -n "animCurveTA1163";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTA -n "animCurveTA1164";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTA -n "animCurveTA1165";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTA -n "animCurveTA1166";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTA -n "animCurveTA1167";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTA -n "animCurveTA1168";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTA -n "animCurveTA1169";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTA -n "animCurveTA1170";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTA -n "animCurveTA1171";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTA -n "animCurveTA1172";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTA -n "animCurveTA1173";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 18 0 20 0 23 0 41 0;
	setAttr -s 5 ".kit[2:4]"  9 1 3;
	setAttr -s 5 ".kot[2:4]"  9 9 3;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA1174";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 18 0 20 0 23 0 41 0;
	setAttr -s 5 ".kit[2:4]"  9 1 3;
	setAttr -s 5 ".kot[2:4]"  9 9 3;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA1175";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 18 0 20 -24.501661700242042 
		23 0 41 0;
	setAttr -s 5 ".kit[2:4]"  9 1 3;
	setAttr -s 5 ".kot[2:4]"  9 9 3;
	setAttr -s 5 ".kix[3:4]"  0.29765972495079041 1;
	setAttr -s 5 ".kiy[3:4]"  0.95467203855514526 0;
createNode animCurveTL -n "animCurveTL434";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.43524234076486068 41 -0.43524234076486068;
createNode animCurveTL -n "animCurveTL435";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.82665738350180629 41 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL436";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.27773886459742925 41 0.27773886459742925;
createNode animCurveTA -n "animCurveTA1176";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTA -n "animCurveTA1177";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 28.652637602052774 41 28.652637602052774;
createNode animCurveTA -n "animCurveTA1178";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 64.676908227303443 41 64.676908227303443;
createNode animCurveTL -n "animCurveTL437";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.5198069948790518 41 0.5198069948790518;
createNode animCurveTL -n "animCurveTL438";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.72394202659893114 41 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL439";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.36439499068905612 41 0.36439499068905612;
createNode animCurveTA -n "animCurveTA1179";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.7976222737965317 41 7.7976222737965317;
createNode animCurveTA -n "animCurveTA1180";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -30.409274105849079 41 -30.409274105849079;
createNode animCurveTA -n "animCurveTA1181";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -64.859940280210893 41 -64.859940280210893;
createNode animCurveTL -n "animCurveTL440";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -0.98071836797454492 3 -0.12918582278454438 
		6 0.40359153657317925 8 -0.42745787780192973 9 -0.71133690651373072 10 -1.2970140423760432 
		13 -0.98071836797454492 16 -1.0213867325450756 18 -0.93563441807673853 20 
		-1.0331849042695547 23 -0.67116214979470568 27 1.1409724028572352 30 1.6276771807420702 
		35 0.3468821648519162 41 1.6276771807420702;
	setAttr -s 15 ".kit[0:14]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 3;
	setAttr -s 15 ".kot[0:14]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL441";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1.6432964864655397 3 2.1661197911932373 
		6 2.1298258292891048 8 2.2896554703403975 9 2.4885062410763745 10 2.2089347316345678 
		13 1.6432964864655397 16 1.6777475572638221 18 1.6251689713187807 20 1.8907775193587466 
		23 1.8586443870087304 27 2.4123113531393385 30 1.7338786249788518 35 1.9261287629153829 
		41 1.7338786249788518;
	setAttr -s 15 ".kit[0:14]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 3;
	setAttr -s 15 ".kot[0:14]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL442";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -0.097994651149805143 3 1.0618433825773288 
		6 1.0530603282581392 8 1.2736628656247109 9 1.1908332373806563 10 0.70730532210103303 
		13 -0.097994651149805143 16 0.33883709290778696 18 0.68965730237390177 20 
		1.346161422927207 23 2.0226701274451937 27 1.9602685963281385 30 2.2710824495380373 
		35 2.6745819008249145 41 2.2710824495380373;
	setAttr -s 15 ".kit[0:14]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 3;
	setAttr -s 15 ".kot[0:14]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 5.4739599453216465 3 71.119159344460144 
		6 27.510925858298908 8 78.443105148750945 9 -26.232637946443294 10 -55.339832299472761 
		13 5.4739599453216465 16 -6.8408848116811125 18 -10.826466618605725 20 -3.7025266420285567 
		23 -18.690786715290024 27 -19.345874397196617 30 59.007910131897106 32 -34.65314174300314 
		35 -19.345874397196617 41 59.007910131897106;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 8.5874521608419823 3 28.587710488537017 
		6 10.514577351016655 8 33.037962688614584 9 73.544495109388265 10 62.610409199778147 
		13 8.5874521608419823 16 30.714124774991525 18 2.6182241232448606 20 35.82537573484101 
		23 29.020978550579716 27 47.068687946319812 30 71.601588453715053 32 61.869745702867348 
		35 47.068687946319812 41 71.601588453715053;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 74.754744621954103 3 145.5137268770755 
		6 148.92609618633051 8 152.83471523677741 9 42.767151911905913 10 -0.33326514007845842 
		13 74.754744621954103 16 52.637498007569562 18 59.744542346032461 20 64.704809934636117 
		23 58.202525201975099 27 -7.3649226411748101 30 90.779043014820601 32 -16.307979948727802 
		35 -7.3649226411748101 41 90.779043014820601;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL443";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.76309120872911718 3 0.75587064200997578 
		6 0.78942865258794126 10 0.82806016739837884 13 0.76309120872911718 16 0.94848699834070749 
		18 1.0529490501269325 20 1.1996274441505643 23 1.6562308183345602 27 3.4135155161474864 
		30 3.3357627539787296 35 3.0258222535816142 41 3.3357627539787296;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL444";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1.6150490657878991 3 1.8695867384522185 
		6 2.0390953698050986 10 1.9115855195415641 13 1.6150490657878991 16 2.1108205881739668 
		18 2.1683105141316612 20 2.2980178642254137 23 2.156572463078525 27 1.6528972625111389 
		30 1.7113587803638561 35 2.3393917017867518 41 1.7113587803638561;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL445";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.14314299916678522 3 -0.49189603672722981 
		6 -0.5585871178268671 10 -0.42150236396206558 13 0.14314299916678522 16 0.6732361872224315 
		18 0.82932847291127021 20 1.2282317179774547 23 1.609251581706836 27 1.8198427857615651 
		30 2.0419916249791124 35 2.1903796205957198 41 2.0419916249791124;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 16.226511010665412 3 16.226511010665405 
		6 16.226511010665405 10 16.226511010665405 13 16.226511010665412 16 55.598837649680043 
		18 30.40552687334386 20 -7.0892260623715391 23 36.020908932246329 27 5.0164778206082037 
		30 70.493912470302874 35 26.719919114785494 41 70.493912470302874;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1186";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -8.5139660854992858 3 -8.513966085499284 
		6 -8.513966085499284 10 -8.513966085499284 13 -8.5139660854992858 16 -30.973734338623142 
		18 -57.071878589129092 20 -44.865183862830662 23 -26.331229507995829 27 -6.5185324766886712 
		30 -77.251690884783017 35 -27.3481632338883 41 -77.251690884783017;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1187";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -68.213989601412422 3 -68.213989601412422 
		6 -68.213989601412422 10 -68.213989601412422 13 -68.213989601412422 16 -82.208920420259716 
		18 -59.188089930048456 20 -31.625021117767549 23 -12.474571549991943 27 -24.014724161592369 
		30 -120.90414725668359 35 -45.372205371553832 41 -120.90414725668359;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL446";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0.17523930523423681 6 0.17523930523423681 
		10 0.17523930523423681 13 0 16 0.17523930523423681 18 0.15311553630748009 
		20 0.063331173333856433 23 0.063331173333856433 27 0.063331173333856433 30 
		0.49484451559913967 35 0.063331173333856433 41 0.49484451559913967;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 1 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kox[1:12]"  1 1 0.013313944451510906 1 0.010884381830692291 
		0.011913688853383064 0.01855979859828949 1 0.0054072467610239983 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 -0.99991136789321899 0 0.99994075298309326 
		-0.99992901086807251 -0.99982774257659912 0 0.99998539686203003 0 0 0;
createNode animCurveTL -n "animCurveTL447";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 -0.00072435787012014696 6 
		-0.00072435787012014696 10 -0.00072435787012014696 13 0 16 -0.00072435787012014696 
		18 -0.37298796460009648 20 -0.69960805773293522 23 -0.69960805773293522 27 
		-0.69960805773293522 30 -0.71931626134224813 35 -0.69960805773293522 41 -0.71931626134224813;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 1 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kox[1:12]"  1 1 0.95503866672515869 1 0.0044683748856186867 
		0.0019078007899224758 0.0051027019508183002 1 0.11757286638021469 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0.29648131132125854 0 -0.99999004602432251 
		-0.99999815225601196 -0.99998700618743896 0 -0.993064284324646 0 0 0;
createNode animCurveTL -n "animCurveTL448";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -1 3 -0.80201435285893019 6 -0.80201435285893019 
		10 -0.80201435285893019 13 -1 16 -0.80201435285893019 18 -0.70922931248881582 
		20 -0.66762598980258558 23 -0.66762598980258558 27 -0.66762598980258558 30 
		-0.66067307131502628 35 -0.66762598980258558 41 -0.66067307131502628;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 1 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kox[1:12]"  1 1 0.011784547939896584 1 0.0057317991741001606 
		0.0099210049957036972 0.040028795599937439 1 0.31815299391746521 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 -0.99993056058883667 0 0.99998354911804199 
		0.99995076656341553 0.9991985559463501 0 0.94803935289382935 0 0 0;
createNode animCurveTL -n "animCurveTL449";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.10167917362943303 3 -0.4001111643408698 
		6 -0.4001111643408698 10 -0.4001111643408698 13 -0.10167917362943303 16 -0.31054502397108613 
		18 -0.31054502397108613 20 -0.31054502397108613 23 -0.31054502397108613 27 
		-0.31054502397108613 30 -0.80217394619293847 35 -0.31054502397108613 41 -0.80217394619293847;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 1 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kox[1:12]"  1 1 0.0078184045851230621 0.022324303165078163 
		0.0079793492332100868 1 1 1 0.0047460738569498062 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0.99996942281723022 0.99975079298019409 
		-0.99996817111968994 0 0 0 -0.99998873472213745 0 0 0;
createNode animCurveTL -n "animCurveTL450";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.40762644910266188 3 -0.32054195494897236 
		6 -0.32054195494897236 10 -0.32054195494897236 13 -0.40762644910266188 16 
		-0.55640530640609931 18 -0.55640530640609931 20 -0.55640530640609931 23 -0.55640530640609931 
		27 -0.55640530640609931 30 -0.44299574108883399 35 -0.55640530640609931 41 
		-0.44299574108883399;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 1 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kox[1:12]"  1 1 0.026784287765622139 0.008479180745780468 
		0.011201605200767517 1 1 1 0.020570043474435806 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 -0.99964123964309692 -0.99996405839920044 
		-0.99993723630905151 0 0 0 0.99978840351104736 0 0 0;
createNode animCurveTL -n "animCurveTL451";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.93129112588482243 3 -0.81561019929437761 
		6 -0.81561019929437761 10 -0.81561019929437761 13 -0.93129112588482243 16 
		-0.57914122395678103 18 -0.57914122395678103 20 -0.57914122395678103 23 -0.57914122395678103 
		27 -0.57914122395678103 30 -0.5412845761155356 35 -0.57914122395678103 41 
		-0.5412845761155356;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 1 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kox[1:12]"  1 1 0.020166320726275444 0.0084574669599533081 
		0.0047327796928584576 1 1 1 0.061519280076026917 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 -0.99979662895202637 0.99996423721313477 
		0.99998879432678223 0 0 0 0.99810588359832764 0 0 0;
createNode animCurveTA -n "animCurveTA1188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 12.253734489678925 3 12.253734489678925 
		6 12.253734489678925 10 12.253734489678925 13 12.253734489678925 16 12.253734489678925 
		18 12.253734489678925 20 12.253734489678925 23 12.253734489678925 27 12.253734489678925 
		30 12.253734489678925 35 12.253734489678925 41 12.253734489678925;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -65.746751280844975 3 -65.746751280844961 
		6 -65.746751280844961 10 -65.746751280844961 13 -65.746751280844975 16 -65.746751280844961 
		18 -65.746751280844961 20 -65.746751280844961 23 -65.746751280844961 27 -65.746751280844961 
		30 -65.746751280844975 35 -65.746751280844961 41 -65.746751280844975;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1190";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 13 0 16 0 18 0 
		20 0 23 0 27 0 30 0 35 0 41 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1191";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.061808866237340665 3 -0.061808866237337522 
		6 -0.061808866237337522 10 -0.061808866237337522 13 -0.061808866237340665 
		16 -0.061808866237337522 18 -0.061808866237337522 20 -0.061808866237337522 
		23 -0.061808866237337522 27 -0.061808866237337522 30 -0.061808866237340665 
		35 -0.061808866237337522 41 -0.061808866237340665;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1192";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -59.058178941076754 3 -59.058178941076754 
		6 -59.058178941076754 10 -59.058178941076754 13 -59.058178941076754 16 -59.058178941076754 
		18 -59.058178941076754 20 -59.058178941076754 23 -59.058178941076754 27 -59.058178941076754 
		30 -59.058178941076754 35 -59.058178941076754 41 -59.058178941076754;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1193";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 16.57914742975785 3 16.579147429757843 
		6 16.579147429757843 10 16.579147429757843 13 16.57914742975785 16 16.579147429757843 
		18 16.579147429757843 20 16.579147429757843 23 16.579147429757843 27 16.579147429757843 
		30 16.57914742975785 35 16.579147429757843 41 16.57914742975785;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1194";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 8.5572674112203657 3 8.5572674112203622 
		6 8.5572674112203622 10 8.5572674112203622 13 8.5572674112203657 16 8.5572674112203622 
		18 8.5572674112203622 20 8.5572674112203622 23 8.5572674112203622 27 8.5572674112203622 
		30 8.5572674112203657 35 8.5572674112203622 41 8.5572674112203657;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1195";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 15.711328223519061 3 15.711328223519057 
		6 15.711328223519057 10 15.711328223519057 13 15.711328223519061 16 15.711328223519057 
		18 15.711328223519057 20 15.711328223519057 23 15.711328223519057 27 15.711328223519057 
		30 15.711328223519061 35 15.711328223519057 41 15.711328223519061;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1196";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 13 0 16 0 18 0 
		20 0 23 0 27 0 30 0 35 0 41 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1197";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 13 0 16 0 18 0 
		20 0 23 0 27 0 30 0 35 0 41 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1198";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 13 0 16 0 18 0 
		20 0 23 0 27 0 30 0 35 0 41 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1199";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 13 0 16 0 18 0 
		20 0 23 0 27 0 30 0 35 0 41 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 13 0 16 0 18 0 
		20 0 23 0 27 0 30 0 35 0 41 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 13 0 16 0 18 0 
		20 0 23 0 27 0 30 0 35 0 41 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 10.423754966968488 3 10.423754966968488 
		6 10.423754966968488 10 10.423754966968488 13 10.423754966968488 16 10.423754966968488 
		18 10.423754966968488 20 10.423754966968488 23 10.423754966968488 27 10.423754966968488 
		30 10.423754966968488 35 10.423754966968488 41 10.423754966968488;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 27.7228482558439 3 27.722848255843903 
		6 27.722848255843903 10 27.722848255843903 13 27.7228482558439 16 27.722848255843903 
		18 27.722848255843903 20 27.722848255843903 23 27.722848255843903 27 27.722848255843903 
		30 27.7228482558439 35 27.722848255843903 41 27.7228482558439;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 21.576484776388224 3 21.576484776388227 
		6 21.576484776388227 10 21.576484776388227 13 21.576484776388224 16 21.576484776388227 
		18 21.576484776388227 20 21.576484776388227 23 21.576484776388227 27 21.576484776388227 
		30 21.576484776388224 35 21.576484776388227 41 21.576484776388224;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 13 0 16 0 18 0 
		20 0 23 0 27 0 30 0 35 0 41 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 13 0 16 0 18 0 
		20 0 23 0 27 0 30 0 35 0 41 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 27.080064458283051 3 27.080064458283051 
		6 27.080064458283051 10 27.080064458283051 13 27.080064458283051 16 27.080064458283051 
		18 27.080064458283051 20 27.080064458283051 23 27.080064458283051 27 27.080064458283051 
		30 27.080064458283051 35 27.080064458283051 41 27.080064458283051;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1208";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTA -n "animCurveTA1209";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTA -n "animCurveTA1210";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTA -n "animCurveTA1211";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTA -n "animCurveTA1212";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTA -n "animCurveTA1213";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 41 13.994403295754109;
createNode animCurveTA -n "animCurveTA1214";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTA -n "animCurveTA1215";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 41 0;
createNode animCurveTA -n "animCurveTA1216";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 41 13.994403295754109;
createNode animCurveTA -n "animCurveTA1217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 13 0 16 0 18 0 
		20 0 23 0 27 0 30 0 35 0 41 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 13 0 16 0 18 0 
		20 0 23 0 27 0 30 0 35 0 41 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 27.911632519594587 3 27.911632519594587 
		6 27.911632519594587 10 27.911632519594587 13 27.911632519594587 16 27.911632519594587 
		18 27.911632519594587 20 27.911632519594587 23 27.911632519594587 27 27.911632519594587 
		30 27.911632519594587 35 27.911632519594587 41 27.911632519594587;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 13 0 16 0 18 0 
		20 0 23 0 27 0 30 0 35 0 41 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 13 0 16 0 18 0 
		20 0 23 0 27 0 30 0 35 0 41 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 13 0 16 0 18 0 
		20 0 23 0 27 0 30 0 35 0 41 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.65073001024951671 3 17.865547004487734 
		6 26.344302103719443 10 15.995208714699748 13 -0.65073001024951671 16 7.8430056866173823 
		18 7.8430056866173823 20 7.8430056866173823 23 18.820843871529618 27 18.820843871529618 
		30 4.5029554330710582 35 -5.9660149388432382 41 4.5029554330710582;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -4.2368721935960938 3 -8.1938064043711503 
		6 -14.600939198760139 10 -10.255568461043122 13 -4.2368721935960938 16 -2.4212113907903019 
		18 -2.4212113907903019 20 -2.4212113907903019 23 -8.442588645585376 27 -8.442588645585376 
		30 -1.9010361189490677 35 -4.5116636179203082 41 -1.9010361189490677;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 8.7398866450636881 3 15.088783978648813 
		6 18.187946831246631 10 13.315807209516004 13 8.7398866450636881 16 14.868855041301886 
		18 14.868855041301886 20 14.868855041301886 23 16.699953369662587 27 16.699953369662587 
		30 13.385293829723333 35 2.3811787268879385 41 13.385293829723333;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 3 0 6 0 10 0 13 0 16 7.1097278539792699 
		18 7.1097278539792699 20 7.1097278539792699 23 7.1097278539792699 27 7.1097278539792699 
		30 0 32 -30.07762742496973 35 7.1097278539792699 41 0;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 3;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1227";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 13 0 16 0 18 0 
		20 0 23 0 27 0 30 0 35 0 41 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 13 0 16 0 18 0 
		20 0 23 0 27 0 30 0 35 0 41 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1229";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 4.8714700432790465 3 -1.1550608810547045 
		6 -4.6280698493928911 10 16.994449501096238 13 4.8714700432790465 16 9.4996494992735059 
		18 -5.8315373789181599 20 -5.8315373789181599 23 -36.676233426256914 27 3.7903101035041509 
		30 -2.1931112038439995 35 -2.5361372221580361 41 -2.1931112038439995;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1230";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 11.783606204137087 3 -2.4848103614995831 
		6 1.1028572004337271 10 38.041437231934488 13 11.783606204137087 16 16.751057158406269 
		18 -5.3829029886559372 20 -5.3829029886559372 23 -33.508235110336763 27 -7.1873577666484181 
		30 -2.3695448421264804 35 57.790328939816661 41 -2.3695448421264804;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 7.5423825101935931 3 18.991605264237883 
		6 10.480040827973736 10 5.2066657700519876 13 7.5423825101935931 16 14.783394888482434 
		18 21.978188033309632 20 21.978188033309632 23 32.725954993364923 27 14.550786262996995 
		30 23.978753900084683 35 9.5139991365783985 41 23.978753900084683;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1232";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -1.8903601258661935 3 -1.8903601258661931 
		6 -1.8903601258661931 10 -1.8903601258661931 13 -1.8903601258661935 16 -1.8903601258661931 
		18 -1.8903601258661931 20 -1.8903601258661931 23 -1.8903601258661931 27 -1.8903601258661931 
		30 -2.1995832245056772 35 -3.749937051835468 41 -2.1995832245056772;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1233";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 2.5597289571479038 3 2.5597289571479034 
		6 2.5597289571479034 10 2.5597289571479034 13 2.5597289571479038 16 2.5597289571479034 
		18 2.5597289571479034 20 2.5597289571479034 23 2.5597289571479034 27 2.5597289571479034 
		30 2.2995059565535416 35 11.126545227672914 41 2.2995059565535416;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1234";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 2.0168110874036049 3 2.016811087403604 
		6 2.016811087403604 10 2.016811087403604 13 2.0168110874036049 16 2.016811087403604 
		18 2.016811087403604 20 2.016811087403604 23 2.016811087403604 27 2.016811087403604 
		30 -5.267713286166174 35 -2.1144942238017537 41 -5.267713286166174;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1235";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 13 0 16 0 18 0 
		20 0 23 0 27 0 30 0 35 0 41 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1236";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 13 0 16 0 18 0 
		20 0 23 0 27 0 30 0 35 0 41 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1237";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 33.429092416277157 3 33.429092416277157 
		6 33.429092416277157 10 33.429092416277157 13 33.429092416277157 16 33.429092416277157 
		18 33.429092416277157 20 33.429092416277157 23 33.429092416277157 27 33.429092416277157 
		30 33.429092416277157 35 33.429092416277157 41 33.429092416277157;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1238";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 8.2533422302317216 3 8.2533422302317216 
		6 8.2533422302317216 10 8.2533422302317216 13 8.2533422302317216 16 8.2533422302317216 
		18 8.2533422302317216 20 8.2533422302317216 23 8.2533422302317216 27 8.2533422302317216 
		30 8.2533422302317216 35 8.2533422302317216 41 8.2533422302317216;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1239";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 23.263402056531085 3 23.263402056531085 
		6 23.263402056531085 10 23.263402056531085 13 23.263402056531085 16 23.263402056531085 
		18 23.263402056531085 20 23.263402056531085 23 23.263402056531085 27 23.263402056531085 
		30 23.263402056531085 35 23.263402056531085 41 23.263402056531085;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1240";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 20.166277752815617 3 20.166277752815617 
		6 20.166277752815617 10 20.166277752815617 13 20.166277752815617 16 20.166277752815617 
		18 20.166277752815617 20 20.166277752815617 23 20.166277752815617 27 20.166277752815617 
		30 20.166277752815617 35 20.166277752815617 41 20.166277752815617;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1241";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 13 0 16 0 18 0 
		20 0 23 0 27 0 30 0 35 0 41 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1242";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 13 0 16 0 18 0 
		20 0 23 0 27 0 30 0 35 0 41 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1243";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 17.254116939558369 3 17.254116939558369 
		6 17.254116939558369 10 17.254116939558369 13 17.254116939558369 16 17.254116939558369 
		18 17.254116939558369 20 17.254116939558369 23 17.254116939558369 27 17.254116939558369 
		30 17.254116939558369 35 17.254116939558369 41 17.254116939558369;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
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
connectAttr "hom_get_into_car_allSource.st" "clipLibrary1.st[0]";
connectAttr "hom_get_into_car_allSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL411.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL412.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL413.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL414.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL415.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA1131.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU81.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU82.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU83.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU84.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU85.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU86.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU87.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU88.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA1132.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA1133.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA1134.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL416.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL417.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL418.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL419.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL420.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL421.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA1135.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA1136.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA1137.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL422.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL423.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL424.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA1138.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA1139.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA1140.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA1141.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA1142.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA1143.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA1144.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA1145.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA1146.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTL425.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTL426.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTL427.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTL428.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTL429.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTL430.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL431.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL432.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL433.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTA1147.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTA1148.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTA1149.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTA1150.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTA1151.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTA1152.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA1153.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA1154.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA1155.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA1156.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA1157.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA1158.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA1159.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA1160.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA1161.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA1162.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA1163.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA1164.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA1165.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA1166.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA1167.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA1168.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA1169.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA1170.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA1171.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA1172.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA1173.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA1174.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA1175.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTL434.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTL435.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTL436.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA1176.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA1177.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA1178.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL437.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL438.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL439.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA1179.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA1180.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA1181.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL440.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL441.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL442.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA1182.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA1183.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA1184.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL443.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL444.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL445.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA1185.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA1186.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA1187.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL446.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL447.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL448.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTL449.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTL450.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTL451.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTA1188.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTA1189.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTA1190.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTA1191.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTA1192.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTA1193.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA1194.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA1195.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA1196.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA1197.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA1198.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA1199.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA1200.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA1201.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA1202.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA1203.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA1204.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1205.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1206.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1207.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA1208.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1209.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1210.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1211.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1212.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1213.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1214.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1215.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1216.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA1217.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA1218.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA1219.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA1220.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA1221.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA1222.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1223.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1224.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1225.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1226.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1227.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1228.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1229.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1230.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1231.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1232.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1233.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1234.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1235.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1236.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1237.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1238.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1239.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1240.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1241.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1242.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1243.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[2].olnk";
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
// End of hom_get_into_car_all.ma
