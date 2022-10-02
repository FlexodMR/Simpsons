//Maya ASCII 4.0 scene
//Name: hom_get_out_of_car_all.ma
//Last modified: Tue, Oct 22, 2002 11:38:20 AM
requires maya "4.0";
requires "p3dmayaexp" "18.5";
requires "p3dSimpleShader" "18.5";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "hom_get_out_of_car_allSource";
	setAttr ".ihi" 0;
	setAttr ".du" 34;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL493";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTL -n "animCurveTL494";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTL -n "animCurveTL495";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0.99433739766662688 1 0.9868055275989166 
		2 0.9679758524296409 3 0.94349727470958245 4 0.9190186969895241 5 0.90018902182024851 
		6 0.89265715175253824 7 0.90494675469359165 8 0.93359317041226197 9 0.96626280925181463 
		10 0.99062208155551446 11 0.99433739766662688 12 0.98462562680506482 13 0.97267072707958069 
		14 0.95208974216669706 15 0.91649971574293698 16 0.85951769148482438 17 0.77476071306888172 
		18 0.58438703494870115 19 0.30844535002912038 20 0.08738835966353152 21 -0.014288630485680827 
		22 -0.061080933376271476 23 -0.10602177558505754 24 -0.17307559317701937 
		25 -0.22107590879433711 26 -0.22361628427563859 27 -0.20036517786408006 28 
		-0.1570367158583017 29 -0.10908745324186628 30 -0.073822307634547293 31 -0.051410319659027481 
		32 -0.046287611807214184 33 -0.04885653409235826 34 -0.051425456377630026;
createNode animCurveTL -n "animCurveTL496";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL497";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0.88021938078782869 1 0.88207324956212774 
		2 0.88670792149787547 3 0.89273299501434777 4 0.89875806853081985 5 0.90339274046656759 
		6 0.90524660924086664 7 0.9038977178816725 8 0.90019884602516254 9 0.89467169700294602 
		10 0.88783797414663168 11 0.88021938078782869 12 0.87780024065427575 13 0.88156805405939265 
		14 0.88454928921331044 15 0.87977041432615921 16 0.86025789760807003 17 0.81903820726917342 
		18 0.70494226606642585 19 0.5319117585066806 20 0.39063929542491305 21 0.31762954538659993 
		22 0.27637784040233426 23 0.24806278647476593 24 0.24910030686736939 25 0.25003666282056713 
		26 0.19519533601905012 27 0.1347713729316054 28 0.10454470172755104 29 0.092084162094487804 
		30 0.10067866738363199 31 0.11894791398011209 32 0.13778922522121534 33 0.1566535710701209 
		34 0.16523246183922385;
createNode animCurveTA -n "animCurveTA1357";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 -2.0975263990809521 1 -1.8895065189376079 
		2 -1.3694568185792493 3 -0.69339220811338309 4 -0.017327597647517092 5 0.50272210271084206 
		6 0.71074198285418544 7 1.2027754029889823 8 2.0745115079811711 9 2.4194040647124488 
		10 1.3309068400645097 11 -2.0975263990809521 12 -8.6066442343713483 13 -17.528106777086482 
		14 -27.654827554793219 15 -37.779720095058423 16 -46.695697925449018 17 -53.195674573531775 
		18 -51.959128280389663 19 -45.886923331812284 20 -46.104052322426654 21 -59.193486310993976 
		22 -78.572253381618864 23 -95.61643166694337 24 -106.45997669531114 25 -111.11526764438572 
		26 -106.86731957911917 27 -98.11937217707289 28 -90.889993330343245 29 -77.618214377244257 
		30 -45.425388799960793 31 -16.283117889079818 32 -7.1913328281851499 33 -5.348255701803196 
		34 -5.8284402688137176;
createNode animCurveTU -n "animCurveTU97";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTU -n "animCurveTU98";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTU -n "animCurveTU99";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTU -n "animCurveTU100";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTU -n "animCurveTU101";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTU -n "animCurveTU102";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTU -n "animCurveTU103";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 34 1;
createNode animCurveTU -n "animCurveTU104";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 34 1;
createNode animCurveTA -n "animCurveTA1358";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTA -n "animCurveTA1359";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTA -n "animCurveTA1360";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTL -n "animCurveTL498";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTL -n "animCurveTL499";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTL -n "animCurveTL500";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTL -n "animCurveTL501";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1.2504784321605431 6 1.1584594699345214 
		11 1.2504784321605431 14 0.82409193837269812 17 0.56097603034061028 20 -0.071693977428277406 
		23 -0.071693977428277406 25 -0.071693977428277406 27 -0.071693977428277406 
		29 -0.17453779387409837 31 -0.26528836036860459 34 -0.26454016861507795;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 3 9 
		9 9 1 3 9;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 3 9 
		9 9 1 3 9;
	setAttr -s 12 ".kix[9:11]"  0.0052954521961510181 1 0.80069440603256226;
	setAttr -s 12 ".kiy[9:11]"  -0.99998599290847778 0 0.59907299280166626;
	setAttr -s 12 ".kox[9:11]"  0.005295448936522007 1 0.80069440603256226;
	setAttr -s 12 ".koy[9:11]"  -0.99998599290847778 0 0.59907299280166626;
createNode animCurveTL -n "animCurveTL502";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.67000535384055038 6 0.67000535384055038 
		11 0.67000535384055038 14 0.6482733340607908 17 0.41923602975380647 20 0.14857135559247653 
		23 0.14857135559247653 25 0.14857135559247653 27 0.14857135559247653 29 0.14857135559247653 
		31 0.149 34 0.13806192026723146;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 3 9 
		9 9 9 9 9;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 3 9 
		9 9 9 9 9;
createNode animCurveTL -n "animCurveTL503";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1.8871381895415522 6 1.8871381895415522 
		11 1.8871381895415522 14 1.6060127615703055 17 0.92581216887593609 20 0.24866285897196322 
		23 0.11187991450424586 25 0.11187991450424586 27 0.11187991450424586 29 0.11187991450424586 
		31 0.11200000000000002 34 0.18080663566993085;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1361";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 6 -1.1497175013172067 11 0 
		14 3.3423255055965062 17 22.58709019965919 20 8.1195361464842613 23 -2.1919663203831292 
		25 1.9712671171590588 27 1.9712671171590588 29 1.912082476214416 31 2.7934120899367514 
		34 0;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 1 9 
		9 3 3 3 3;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 1 9 
		9 3 3 3 3;
	setAttr -s 12 ".kix[5:11]"  0.97274857759475708 0.84080034494400024 
		0.87807583808898926 1 1 1 1;
	setAttr -s 12 ".kiy[5:11]"  -0.2318623960018158 -0.54134529829025269 
		0.47852146625518799 0 0 0 0;
	setAttr -s 12 ".kox[5:11]"  0.97274857759475708 0.84080034494400024 
		0.87807583808898926 1 1 1 1;
	setAttr -s 12 ".koy[5:11]"  -0.23186245560646057 -0.54134529829025269 
		0.47852146625518799 0 0 0 0;
createNode animCurveTA -n "animCurveTA1362";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 6 -6.734512670826839 11 0 14 
		-42.70484598509212 17 -83.46897840771301 20 -77.458289932728832 23 -96.753519090739942 
		25 -82.486581831849534 27 -82.486581831849534 29 -78.90010791500859 31 -45.008793009409914 
		34 -25.948901905116401;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1363";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 6 13.85301503894679 11 0 14 
		9.2988248217141081 17 -11.236123151313604 20 -5.1536462113024575 23 4.7498145604783248 
		25 0 27 0 29 0 31 0 34 0;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 3 3 9 3;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 3 3 9 3;
createNode animCurveTL -n "animCurveTL504";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.7084450118300396 6 1.6424724882587143 
		11 1.7084450118300396 17 1.3048847177879457 20 0.43415074546036941 23 -0.17266660784721713 
		25 -0.34782980288498189 27 -0.19363707383337009 29 0.0018539958095463761 
		31 0.37884198880546316 34 0.21594587158542247;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTL -n "animCurveTL505";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.66588912309516346 6 0.66588912309516346 
		11 0.66588912309516346 17 0.66588912309516346 20 0.53038951595385153 23 0.12981066364079161 
		25 0.12981066364079161 27 0.20446493684407419 29 0.18980458018589319 31 0.143 
		34 0.1380615615975922;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTL -n "animCurveTL506";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.9096734928140209 6 1.9096734928140209 
		11 1.9096734928140209 17 1.5854821327376039 20 1.357575367928272 23 0.60815420617944771 
		25 0.60815420617944771 27 0.60815420617944771 29 0.39362346777161172 31 0.20655460672051434 
		34 0.24649534489298267;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA1364";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 0.39825964740717662 11 0 
		17 0.39825964740717662 20 0.41715085875125751 23 -58.796241196901185 25 -58.796241196901185 
		27 -46.020142915325444 29 -28.382371401537227 31 3.4312982817652369 34 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1365";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 1.647110260657298 11 0 17 
		1.647110260657298 20 17.384729502013851 23 -84.619121407719447 25 -84.619121407719447 
		27 -84.619121407719447 29 -62.239300398713894 31 -18.012509062666393 34 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1366";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 7.792214191643243 11 0 17 
		7.792214191643243 20 7.9054076490721528 23 55.674596583571365 25 55.674596583571365 
		27 55.674596583571876 29 37.736293514960998 31 2.2867866011962374 34 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1367";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTA -n "animCurveTA1368";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTA -n "animCurveTA1369";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTA -n "animCurveTA1370";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTA -n "animCurveTA1371";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTA -n "animCurveTA1372";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTL -n "animCurveTL507";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 0 11 0 17 0 20 0 23 0 25 
		0 27 0 29 0 31 0 34 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL508";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 0 11 0 17 0 20 0 23 0 25 
		0 27 0 29 0 31 0 34 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL509";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 6 1 11 1 17 1 20 1 23 1 25 
		1 27 1 29 1 31 1 34 1;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL510";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 0 11 0 17 0 20 0 23 0 25 
		0 27 0 29 0 31 0 34 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL511";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 0 11 0 17 0 20 0 23 0 25 
		0 27 0 29 0 31 0 34 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL512";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 6 1 11 1 17 1 20 1 23 1 25 
		1 27 1 29 1 31 1 34 1;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL513";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.4786421250535617 6 1.3274372168934199 
		11 1.4786421250535617 17 1.1521178121918223 20 0.12995197620149423 23 -0.15766103529940978 
		25 -0.32875375334862311 27 -0.29795559643931702 29 -0.16221989040817911 31 
		-0.076450372367261391 34 -0.076472881617957719;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTL -n "animCurveTL514";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.94304744795874273 6 0.94006594615970918 
		11 0.94304744795874273 17 1.0449881827816192 20 0.93850886300941128 23 0.94887047555938053 
		25 0.92708628864127463 27 0.92928743089594523 29 0.93295481375907796 31 0.93406226499483458 
		34 0.93105416142265018;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 1 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 1 9 9 
		9 9 9 9;
	setAttr -s 11 ".kix[4:10]"  0.18122340738773346 0.1443810760974884 
		0.067928843200206757 0.22155436873435974 0.26895269751548767 0.65930986404418945 
		0.31546074151992798;
	setAttr -s 11 ".kiy[4:10]"  -0.98344200849533081 -0.98952215909957886 
		-0.99769014120101929 0.97514802217483521 0.96315336227416992 -0.75187134742736816 
		-0.94893860816955566;
	setAttr -s 11 ".kox[4:10]"  0.1812254935503006 0.1443810760974884 
		0.067928843200206757 0.22155436873435974 0.26895269751548767 0.65930986404418945 
		0.31546074151992798;
	setAttr -s 11 ".koy[4:10]"  -0.98344159126281738 -0.98952215909957886 
		-0.99769014120101929 0.97514802217483521 0.96315336227416992 -0.75187134742736816 
		-0.94893860816955566;
createNode animCurveTL -n "animCurveTL515";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.3089414707479514 6 1.3461585304208978 
		11 1.3089414707479514 17 1.217961225373307 20 0.58090515279017763 23 0.36888493443020648 
		25 0.37182021245695834 27 0.20041349117071786 29 0.13693492917262326 31 0.1768830144687058 
		34 0.2457110424239469;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 1 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 1 3;
	setAttr -s 11 ".kix[9:10]"  0.01456004474312067 1;
	setAttr -s 11 ".kiy[9:10]"  0.99989402294158936 0;
	setAttr -s 11 ".kox[9:10]"  0.0145600326359272 1;
	setAttr -s 11 ".koy[9:10]"  0.99989402294158936 0;
createNode animCurveTA -n "animCurveTA1373";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -25.655237914214105 6 -5.4513933106138657 
		11 -25.655237914214105 17 -17.953582873445576 20 1.49313180653842 23 17.924937741595585 
		25 6.1523787035315847 27 14.521948922395541 29 3.4946570163928041 31 0.065484240737111885 
		34 -0.62843630316474508;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1374";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -2.0975263990809512 6 0.71074198285418522 
		11 -2.0975263990809512 17 -53.195674573531775 20 -46.104052322426654 23 -95.61643166694337 
		25 -111.11526764438572 27 -98.11937217707289 29 -77.618214377244243 31 -16.283117889079818 
		34 -5.8284402688137167;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1375";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.53932213336905666 6 22.697660472141617 
		11 0.53932213336905666 17 2.5251619920478161 20 -1.1947658927081743 23 -18.39800013053058 
		25 -7.3446799259322937 27 -16.53825993401091 29 -0.3753348278424673 31 1.1817978892575498 
		34 -1.295636019309746;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		1 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		1 9 9 3;
	setAttr -s 11 ".kix[7:10]"  0.47222268581390381 0.39589405059814453 
		0.99538815021514893 1;
	setAttr -s 11 ".kiy[7:10]"  0.88147926330566406 0.918296217918396 
		-0.095929250121116638 0;
	setAttr -s 11 ".kox[7:10]"  0.47222268581390381 0.39589405059814453 
		0.99538815021514893 1;
	setAttr -s 11 ".koy[7:10]"  0.88147926330566406 0.918296217918396 
		-0.095929250121116638 0;
createNode animCurveTA -n "animCurveTA1376";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTA -n "animCurveTA1377";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTA -n "animCurveTA1378";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTA -n "animCurveTA1379";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTA -n "animCurveTA1380";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTA -n "animCurveTA1381";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTA -n "animCurveTA1382";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTA -n "animCurveTA1383";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTA -n "animCurveTA1384";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTA -n "animCurveTA1385";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTA -n "animCurveTA1386";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTA -n "animCurveTA1387";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTA -n "animCurveTA1388";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTA -n "animCurveTA1389";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTA -n "animCurveTA1390";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTA -n "animCurveTA1391";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTA -n "animCurveTA1392";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTA -n "animCurveTA1393";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTA -n "animCurveTA1394";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTA -n "animCurveTA1395";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTA -n "animCurveTA1396";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTA -n "animCurveTA1397";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTA -n "animCurveTA1398";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTA -n "animCurveTA1399";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 34 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1400";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 34 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1401";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 34 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL516";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.43524234076486068 34 -0.43524234076486068;
createNode animCurveTL -n "animCurveTL517";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.82665738350180629 34 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL518";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.27773886459742925 34 0.27773886459742925;
createNode animCurveTA -n "animCurveTA1402";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTA -n "animCurveTA1403";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 28.652637602052774 34 28.652637602052774;
createNode animCurveTA -n "animCurveTA1404";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 64.676908227303443 34 64.676908227303443;
createNode animCurveTL -n "animCurveTL519";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.5198069948790518 34 0.5198069948790518;
createNode animCurveTL -n "animCurveTL520";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.72394202659893114 34 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL521";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.36439499068905612 34 0.36439499068905612;
createNode animCurveTA -n "animCurveTA1405";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.7976222737965317 34 7.7976222737965317;
createNode animCurveTA -n "animCurveTA1406";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -30.409274105849079 34 -30.409274105849079;
createNode animCurveTA -n "animCurveTA1407";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -64.859940280210893 34 -64.859940280210893;
createNode animCurveTL -n "animCurveTL522";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1.6276771807420702 6 0.3468821648519162 
		11 1.6276771807420702 17 1.0029988012975386 20 -0.68309238637081959 23 -0.08803531683628292 
		25 -0.82642047429596144 27 -0.85474904723905365 31 -1.01848175628294 34 -0.98071836797454492;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
createNode animCurveTL -n "animCurveTL523";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1.7338786249788518 6 1.9261287629153829 
		11 1.7338786249788518 17 2.1637913216235707 20 1.7169629108632507 23 1.6134746838515139 
		25 1.7099507992411103 27 1.5549842083550098 31 1.6574108350244208 34 1.6432964864655397;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
createNode animCurveTL -n "animCurveTL524";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 2.2710824495380373 6 2.6745819008249145 
		11 2.2710824495380373 17 1.8786573408560066 20 1.004791603890977 23 -0.27786732566679367 
		25 -0.4210427164427018 27 -0.46920914660444302 31 0.088895309416627308 34 
		0.30456713834076893;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
createNode animCurveTA -n "animCurveTA1408";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 59.007910131897106 6 -19.345874397196617 
		11 59.007910131897106 17 -20.828033249452968 20 -29.104170490493544 23 -68.663851491472911 
		25 -68.663851491472911 27 -68.663851491472911 31 -9.9690854873112436 34 5.4739599453216465;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 71.601588453715053 6 47.068687946319812 
		11 71.601588453715053 17 5.9561083159624797 20 18.835586165549852 23 -11.916805987005425 
		25 -11.916805987005425 27 -11.916805987005425 31 -5.8406184612109193 34 8.5874521608419823;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1410";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 90.779043014820601 6 -7.3649226411748101 
		11 90.779043014820601 17 20.997729995609479 20 56.424132605779292 23 76.61449596535607 
		25 76.61449596535607 27 76.61449596535607 31 60.386736704549392 34 74.754744621954103;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTL -n "animCurveTL525";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 3.3357627539787296 6 2.885640734234022 
		11 3.3357627539787296 17 3.2197397099785019 20 1.2663536723156747 23 -0.12358895216672325 
		25 -1.2331722973198656 27 -1.0732735623153649 29 0.047087738484649998 31 
		0.91260482629879081 34 0.76309120872911718;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTL -n "animCurveTL526";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.7113587803638561 6 2.1654918595998223 
		11 1.7113587803638561 17 2.0591705343886462 20 1.9616409823944496 23 1.6317045839702844 
		25 2.51002331772668 27 2.4851677438407536 29 2.2988059797241855 31 1.8255305196192726 
		34 1.6150490657878991;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTL -n "animCurveTL527";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 2.0419916249791124 6 2.1728319015256194 
		11 2.0419916249791124 17 2.1253469880949933 20 1.5865445241504252 23 1.4414346980707915 
		25 1.4411684397091722 27 1.6452864265325804 29 1.2363067757347708 31 0.47102419248143007 
		34 0.54570478865735916;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA1411";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 70.493912470302874 6 26.719919114785494 
		11 70.493912470302874 17 5.0164778206082037 20 -0.027670429742248925 23 101.46475417126094 
		25 215.74973361948011 27 229.06956913756176 29 240.63139679866137 31 49.867981409697563 
		34 16.226511010665412;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1412";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -77.251690884783017 6 -27.3481632338883 
		11 -77.251690884783017 17 -6.5185324766886712 20 -16.1989192511369 23 -28.395372336635297 
		25 -28.561742769359661 27 -27.38544165447902 29 -27.358412240922757 31 -40.696854618552763 
		34 -8.5139660854992858;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1413";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -120.90414725668359 6 -45.372205371553832 
		11 -120.90414725668359 17 -24.014724161592369 20 -29.813689415614821 23 -117.2633032991462 
		25 -157.66551597049892 27 -175.9273358182281 29 -175.72000460697393 31 -39.493238927904216 
		34 -68.213989601412422;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL528";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.49484451559913967 6 0.063331173333856433 
		11 0.49484451559913967 17 0.063331173333856433 20 0.063331173333856433 23 
		0.75645780713626298 25 0.75645780713626298 27 0.80078786277473146 29 0.52107036475861324 
		31 -0.00057432013934466061 34 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL529";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.71931626134224813 6 -0.69960805773293522 
		11 -0.71931626134224813 17 -0.69960805773293522 20 -0.69960805773293522 23 
		-0.79368011868045951 25 -0.79368011868045951 27 -0.54119153439315637 29 -1.1323611260113335 
		31 -0.7446206329845434 34 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL530";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.66067307131502628 6 -0.66762598980258558 
		11 -0.66067307131502628 17 -0.66762598980258558 20 -0.66762598980258558 23 
		-0.92269028705633338 25 -0.92269028705633338 27 -1.0929912912359749 29 -0.92389756090578434 
		31 -1.1223586308962659 34 -1;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL531";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.80217394619293847 6 -0.31054502397108613 
		11 -0.80217394619293847 17 -0.31054502397108613 20 -0.31054502397108613 23 
		-0.12098856091527502 25 -0.31054502397108613 27 -0.4863950551218349 31 -0.31054502397108613 
		34 -0.10167917362943303;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTL -n "animCurveTL532";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.44299574108883399 6 -0.55640530640609931 
		11 -0.44299574108883399 17 -0.55640530640609931 20 -0.55640530640609931 23 
		-0.77868609900667618 25 -0.55640530640609931 27 -0.55635268174742558 31 -0.55640530640609931 
		34 -0.40762644910266188;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTL -n "animCurveTL533";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.5412845761155356 6 -0.57914122395678103 
		11 -0.5412845761155356 17 -0.57914122395678103 20 -0.57914122395678103 23 
		-1.2358054068375008 25 -0.57914122395678103 27 -0.62124289295404955 31 -0.57914122395678103 
		34 -0.93129112588482243;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1414";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 12.253734489678925 6 12.253734489678925 
		11 12.253734489678925 17 12.253734489678925 20 12.253734489678925 23 12.253734489678925 
		25 12.253734489678925 27 12.253734489678925 31 12.253734489678925 34 12.253734489678925;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1415";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -65.746751280844975 6 -65.746751280844961 
		11 -65.746751280844975 17 -65.746751280844961 20 -65.746751280844961 23 -65.746751280844975 
		25 -65.746751280844961 27 -65.746751280844961 31 -65.746751280844975 34 -65.746751280844975;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1416";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 0 11 0 17 0 20 0 23 0 25 
		0 27 0 31 0 34 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1417";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.061808866237340665 6 -0.061808866237337522 
		11 -0.061808866237340665 17 -0.061808866237337522 20 -0.061808866237337522 
		23 -0.061808866237340665 25 -0.061808866237337522 27 -0.061808866237337522 
		31 -0.061808866237340665 34 -0.061808866237340665;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1418";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -59.058178941076754 6 -59.058178941076754 
		11 -59.058178941076754 17 -59.058178941076754 20 -59.058178941076754 23 -59.058178941076754 
		25 -59.058178941076754 27 -59.058178941076754 31 -59.058178941076754 34 -59.058178941076754;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1419";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 16.57914742975785 6 16.579147429757843 
		11 16.57914742975785 17 16.579147429757843 20 16.579147429757843 23 16.57914742975785 
		25 16.579147429757843 27 16.579147429757843 31 16.57914742975785 34 16.57914742975785;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1420";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 8.5572674112203657 6 8.5572674112203622 
		11 8.5572674112203657 17 8.5572674112203622 20 8.5572674112203622 23 8.5572674112203657 
		25 8.5572674112203622 27 8.5572674112203622 31 8.5572674112203657 34 8.5572674112203657;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1421";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 15.711328223519061 6 15.711328223519057 
		11 15.711328223519061 17 15.711328223519057 20 15.711328223519057 23 15.711328223519061 
		25 15.711328223519057 27 15.711328223519057 31 15.711328223519061 34 15.711328223519061;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1422";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 0 11 0 17 0 20 0 23 0 25 
		0 27 0 31 0 34 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1423";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 0 11 0 17 0 20 0 23 0 25 
		0 27 0 31 0 34 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1424";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 0 11 0 17 0 20 0 23 0 25 
		0 27 0 31 0 34 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1425";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 0 11 0 17 0 20 0 23 0 25 
		0 27 0 31 0 34 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1426";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 0 11 0 17 0 20 0 23 0 25 
		0 27 0 31 0 34 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1427";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 0 11 0 17 0 20 0 23 0 25 
		0 27 0 31 0 34 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1428";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 10.423754966968488 6 10.423754966968488 
		11 10.423754966968488 17 10.423754966968488 20 10.423754966968488 23 10.423754966968488 
		25 10.423754966968488 27 10.423754966968488 31 10.423754966968488 34 10.423754966968488;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1429";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 27.7228482558439 6 27.722848255843903 
		11 27.7228482558439 17 27.722848255843903 20 27.722848255843903 23 27.7228482558439 
		25 27.722848255843903 27 27.722848255843903 31 27.7228482558439 34 27.7228482558439;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1430";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 21.576484776388224 6 21.576484776388227 
		11 21.576484776388224 17 21.576484776388227 20 21.576484776388227 23 21.576484776388224 
		25 21.576484776388227 27 21.576484776388227 31 21.576484776388224 34 21.576484776388224;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1431";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 0 11 0 17 0 20 0 23 0 25 
		0 27 0 31 0 34 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1432";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 0 11 0 17 0 20 0 23 0 25 
		0 27 0 31 0 34 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1433";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 27.080064458283051 6 27.080064458283051 
		11 27.080064458283051 17 27.080064458283051 20 27.080064458283051 23 27.080064458283051 
		25 27.080064458283051 27 27.080064458283051 31 27.080064458283051 34 27.080064458283051;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1434";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTA -n "animCurveTA1435";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTA -n "animCurveTA1436";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTA -n "animCurveTA1437";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTA -n "animCurveTA1438";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTA -n "animCurveTA1439";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 34 13.994403295754109;
createNode animCurveTA -n "animCurveTA1440";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTA -n "animCurveTA1441";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 34 0;
createNode animCurveTA -n "animCurveTA1442";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 34 13.994403295754109;
createNode animCurveTA -n "animCurveTA1443";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 0 11 0 17 0 20 0 23 0 25 
		0 27 0 31 0 34 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1444";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 0 11 0 17 0 20 0 23 0 25 
		0 27 0 31 0 34 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1445";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 27.911632519594587 6 27.911632519594587 
		11 27.911632519594587 17 27.911632519594587 20 27.911632519594587 23 27.911632519594587 
		25 27.911632519594587 27 27.911632519594587 31 27.911632519594587 34 27.911632519594587;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1446";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 0 11 0 17 0 20 0 23 0 25 
		0 27 0 31 0 34 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1447";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 0 11 0 17 0 20 0 23 0 25 
		0 27 0 31 0 34 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1448";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 0 11 0 17 0 20 0 23 0 25 
		0 27 0 31 0 34 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1449";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 4.5029554330710591 6 -5.9660149388432382 
		11 4.5029554330710591 17 18.820843871529618 20 18.820843871529618 23 -0.65073001024951671 
		25 19.0169628034208 27 19.0169628034208 31 5.1119290710176877 34 -0.65073001024951671;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1450";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1.9010361189490672 6 -4.5116636179203082 
		11 -1.9010361189490672 17 -8.442588645585376 20 -8.442588645585376 23 -4.2368721935960938 
		25 -11.668546164950534 27 -11.668546164950534 31 -6.7443765558890734 34 -4.2368721935960938;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1451";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 13.385293829723333 6 2.3811787268879385 
		11 13.385293829723333 17 16.699953369662587 20 16.699953369662587 23 8.7398866450636881 
		25 15.57720679196191 27 15.57720679196191 31 10.429699812218328 34 8.7398866450636881;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1452";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 7.1097278539792699 11 0 17 
		7.1097278539792699 20 7.1097278539792699 23 0 25 7.1097278539792699 27 7.1097278539792699 
		31 7.109727853979269 34 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1453";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 0 11 0 17 0 20 0 23 0 25 
		0 27 0 31 0 34 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1454";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 0 11 0 17 0 20 0 23 0 25 
		0 27 0 31 0 34 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1455";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -2.1931112038439995 6 -2.5361372221580361 
		11 -2.1931112038439995 17 21.162236000387367 20 35.947694138711036 23 4.8714700432790465 
		25 -17.235333606048822 27 -20.029924239181792 31 -23.02470182261154 34 4.8714700432790465;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1456";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -2.3695448421264804 6 57.790328939816661 
		11 -2.3695448421264804 17 30.533730696364689 20 53.148375864032161 23 11.783606204137087 
		25 -32.817306874589939 27 -33.370422247086623 31 -33.853642922729335 34 11.783606204137087;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1457";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 23.978753900084683 6 9.5139991365783985 
		11 23.978753900084683 17 27.115733941721448 20 18.52472916311752 23 7.5423825101935931 
		25 21.458533994403421 27 25.157786330846566 31 27.226646308342659 34 7.5423825101935931;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1458";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -2.1995832245056772 6 -3.749937051835468 
		11 -2.1995832245056772 17 -1.8903601258661931 20 -1.8903601258661931 23 -1.8903601258661935 
		25 -1.8903601258661931 27 -1.8903601258661931 31 -1.8903601258661935 34 -1.8903601258661935;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1459";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 2.2995059565535416 6 11.126545227672914 
		11 2.2995059565535416 17 2.5597289571479034 20 2.5597289571479034 23 2.5597289571479038 
		25 2.5597289571479034 27 2.5597289571479034 31 2.5597289571479038 34 2.5597289571479038;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1460";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -5.2677132861661731 6 -2.1144942238017537 
		11 -5.2677132861661731 17 2.016811087403604 20 2.016811087403604 23 2.0168110874036049 
		25 2.016811087403604 27 2.016811087403604 31 2.0168110874036049 34 2.0168110874036049;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1461";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 0 11 0 17 0 20 0 23 0 25 
		0 27 0 31 0 34 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1462";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 0 11 0 17 0 20 0 23 0 25 
		0 27 0 31 0 34 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1463";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 33.429092416277157 6 33.429092416277157 
		11 33.429092416277157 17 33.429092416277157 20 33.429092416277157 23 33.429092416277157 
		25 33.429092416277157 27 33.429092416277157 31 33.429092416277157 34 33.429092416277157;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1464";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 8.2533422302317216 6 8.2533422302317216 
		11 8.2533422302317216 17 8.2533422302317216 20 8.2533422302317216 23 8.2533422302317216 
		25 8.2533422302317216 27 8.2533422302317216 31 8.2533422302317216 34 8.2533422302317216;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1465";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 23.263402056531085 6 23.263402056531085 
		11 23.263402056531085 17 23.263402056531085 20 23.263402056531085 23 23.263402056531085 
		25 23.263402056531085 27 23.263402056531085 31 23.263402056531085 34 23.263402056531085;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1466";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 20.166277752815617 6 20.166277752815617 
		11 20.166277752815617 17 20.166277752815617 20 20.166277752815617 23 20.166277752815617 
		25 20.166277752815617 27 20.166277752815617 31 20.166277752815617 34 20.166277752815617;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1467";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 0 11 0 17 0 20 0 23 0 25 
		0 27 0 31 0 34 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1468";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 0 11 0 17 0 20 0 23 0 25 
		0 27 0 31 0 34 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA1469";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 17.254116939558369 6 17.254116939558369 
		11 17.254116939558369 17 17.254116939558369 20 17.254116939558369 23 17.254116939558369 
		25 17.254116939558369 27 17.254116939558369 31 17.254116939558369 34 17.254116939558369;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
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
connectAttr "hom_get_out_of_car_allSource.st" "clipLibrary1.st[0]";
connectAttr "hom_get_out_of_car_allSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL493.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL494.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL495.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL496.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL497.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA1357.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU97.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU98.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU99.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU100.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU101.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU102.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU103.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU104.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA1358.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA1359.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA1360.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL498.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL499.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL500.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL501.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL502.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL503.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA1361.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA1362.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA1363.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL504.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL505.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL506.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA1364.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA1365.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA1366.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA1367.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA1368.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA1369.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA1370.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA1371.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA1372.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTL507.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTL508.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTL509.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTL510.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTL511.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTL512.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL513.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL514.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL515.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTA1373.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTA1374.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTA1375.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTA1376.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTA1377.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTA1378.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA1379.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA1380.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA1381.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA1382.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA1383.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA1384.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA1385.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA1386.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA1387.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA1388.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA1389.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA1390.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA1391.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA1392.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA1393.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA1394.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA1395.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA1396.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA1397.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA1398.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA1399.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA1400.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA1401.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTL516.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTL517.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTL518.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA1402.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA1403.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA1404.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL519.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL520.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL521.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA1405.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA1406.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA1407.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL522.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL523.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL524.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA1408.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA1409.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA1410.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL525.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL526.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL527.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA1411.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA1412.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA1413.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL528.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL529.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL530.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTL531.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTL532.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTL533.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTA1414.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTA1415.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTA1416.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTA1417.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTA1418.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTA1419.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA1420.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA1421.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA1422.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA1423.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA1424.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA1425.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA1426.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA1427.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA1428.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA1429.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA1430.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1431.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1432.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1433.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA1434.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1435.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1436.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1437.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1438.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1439.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1440.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1441.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1442.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA1443.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA1444.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA1445.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA1446.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA1447.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA1448.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1449.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1450.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1451.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1452.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1453.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1454.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1455.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1456.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1457.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1458.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1459.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1460.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1461.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1462.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1463.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1464.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1465.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1466.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1467.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1468.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1469.a" "clipLibrary1.cel[0].cev[161].cevr";
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
// End of hom_get_out_of_car_all.ma
