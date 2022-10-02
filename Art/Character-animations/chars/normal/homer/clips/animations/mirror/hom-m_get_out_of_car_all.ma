//Maya ASCII 4.0 scene
//Name: hom-m_get_out_of_car_all.ma
//Last modified: Tue, Jul 23, 2002 11:54:10 AM
requires maya "4.0";
requires "p3dmayaexp" "17.9.1.0";
requires "p3dSimpleShader" "17.1";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "hom_get_out_of_car_all";
	setAttr ".ihi" 0;
	setAttr ".du" 56;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL370";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTL -n "animCurveTL371";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTL -n "animCurveTL372";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 57 ".ktv[0:56]"  0 -0.99433739766662688 1 -0.98870496421949072 
		2 -0.97417921480319236 3 -0.95431747580539661 4 -0.93267707361376839 5 -0.91281533461597275 
		6 -0.89828958519967417 7 -0.89265715175253824 8 -0.90468293048093984 9 -0.93280169777430644 
		10 -0.96507560029488115 11 -0.989566784704907 12 -0.99433739766662688 13 
		-0.98558962269199846 14 -0.97598795602509225 15 -0.96328801342632009 16 -0.94524541065609369 
		17 -0.91961576347482477 18 -0.88415468764292515 19 -0.8366177989208069 20 
		-0.77476071306888172 21 -0.66886931608790123 22 -0.51331000298575591 23 -0.34195915303356567 
		24 -0.18869314550245087 25 -0.08738835966353152 26 -0.033758699097311905 
		27 0.0017317277746973583 28 0.023081234419867126 29 0.034288134305568339 
		30 0.039350740899171809 31 0.042267367668048367 32 0.047036328079569076 33 
		0.057655935601104664 34 0.069302468316255958 35 0.076676924667116647 36 0.083064698658796982 
		37 0.091751184296407204 38 0.10602177558505754 39 0.13200155912623351 40 
		0.16673126734642638 41 0.19986976298825471 42 0.22107590879433711 43 0.22797301641123613 
		44 0.2259493763927975 45 0.21631131984256435 46 0.20036517786408006 47 0.15750787331137353 
		48 0.10908745324186628 49 0.082495412475709726 50 0.062946878930053629 51 
		0.051410319659027481 52 0.046798449642107116 53 0.046224614815812116 54 0.047958228669837573 
		55 0.050268704693878508 56 0.051425456377630026;
createNode animCurveTL -n "animCurveTL373";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 57 ".ktv[0:56]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 
		0 53 0 54 0 55 0 56 0;
createNode animCurveTL -n "animCurveTL374";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 57 ".ktv[0:56]"  0 0.88021938078782869 1 0.88160572871962961 
		2 0.88518104707006362 3 0.89006974767167746 4 0.89539624235701787 5 0.90028494295863171 
		6 0.90386026130906572 7 0.90524660924086664 8 0.90370480396521902 9 0.8996201042758023 
		10 0.89380358437890539 11 0.88706631848081785 12 0.88021938078782869 13 0.87663238784800213 
		14 0.87732198208452217 15 0.8795697765163577 16 0.8806573841624773 17 0.87786641804184995 
		18 0.86847849117344422 19 0.84977521657622912 20 0.81903820726917342 21 0.75724509242232541 
		22 0.66171491304164276 23 0.55424139989995813 24 0.45661828377010394 25 0.39063929542491305 
		26 0.35344777242289543 27 0.32631043782558705 28 0.30720610066035831 29 0.29411356995457977 
		30 0.28501165473562201 31 0.27787916403085555 32 0.27069490686765091 33 0.26143769227337865 
		34 0.25323023592229837 35 0.24944123534901219 36 0.24841847237140496 37 0.24850972880736133 
		38 0.24806278647476593 39 0.25031390787746582 40 0.25549704768835874 41 0.25745652597890556 
		42 0.25003666282056713 43 0.22899667408724708 44 0.19848601256659432 45 0.16493435370068751 
		46 0.1347713729316054 47 0.10763758632874215 48 0.092084162094487804 49 0.094221504824871391 
		50 0.1044383647538997 51 0.11894791398011209 52 0.13361343061058001 53 0.14632348893627975 
		54 0.15632924373265672 55 0.1628818497751563 56 0.16523246183922385;
createNode animCurveTA -n "animCurveTA1018";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 57 ".ktv[0:56]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 
		0 53 0 54 0 55 0 56 0;
createNode animCurveTU -n "animCurveTU73";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTU -n "animCurveTU74";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTU -n "animCurveTU75";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTU -n "animCurveTU76";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTU -n "animCurveTU77";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTU -n "animCurveTU78";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTU -n "animCurveTU79";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 56 1;
createNode animCurveTU -n "animCurveTU80";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 56 1;
createNode animCurveTA -n "animCurveTA1019";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTA -n "animCurveTA1020";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTA -n "animCurveTA1021";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTL -n "animCurveTL375";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTL -n "animCurveTL376";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTL -n "animCurveTL377";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTL -n "animCurveTL378";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -1.7084450118300396 7 -1.6424724882587143 
		12 -1.7084450118300396 20 -1.3048847177879457 25 -0.43415074546036941 33 
		0.085517317483154831 38 0.17266660784721713 42 0.34782980288498189 46 0.19363707383337009 
		48 -0.0018539958095463761 51 -0.37884198880546316 56 -0.21594587158542247;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 9;
createNode animCurveTL -n "animCurveTL379";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.66588912309516346 7 0.66588912309516346 
		12 0.66588912309516346 20 0.66588912309516346 25 0.53038951595385153 33 0.25623130679020223 
		38 0.12981066364079161 42 0.12981066364079161 46 0.20446493684407419 48 0.18980458018589319 
		51 0.143 56 0.1380615615975922;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 9;
createNode animCurveTL -n "animCurveTL380";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1.9096734928140209 7 1.9096734928140209 
		12 1.9096734928140209 20 1.5854821327376039 25 1.357575367928272 33 0.71955005638004099 
		38 0.60815420617944771 42 0.60815420617944771 46 0.60815420617944771 48 0.39362346777161172 
		51 0.20655460672051434 56 0.24649534489298267;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1022";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 7 0.39825964740717662 12 0 
		20 0.39825964740717662 25 0.41715085875125751 33 -11.165517686115068 38 -58.796241196901185 
		42 -58.796241196901185 46 -46.020142915325444 48 -28.382371401537227 51 3.4312982817652369 
		56 0;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1023";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 7 -1.647110260657298 12 0 20 
		-1.647110260657298 25 -17.384729502013851 33 65.530345246545522 38 84.619121407719447 
		42 84.619121407719447 46 84.619121407719447 48 62.239300398713894 51 18.012509062666393 
		56 0;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1024";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 7 -7.792214191643243 12 0 20 
		-7.792214191643243 25 -7.9054076490721528 33 -7.1752306953435738 38 -55.674596583571365 
		42 -55.674596583571365 46 -55.674596583571876 48 -37.736293514960998 51 -2.2867866011962374 
		56 0;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 3;
createNode animCurveTL -n "animCurveTL381";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -1.2504784321605431 7 -1.1584594699345214 
		12 -1.2504784321605431 16 -0.82409193837269812 20 -0.56097603034061028 25 
		0.071693977428277406 33 0.071693977428277406 38 0.071693977428277406 42 0.071693977428277406 
		46 0.071693977428277406 48 0.17453779387409837 51 0.26528836036860459 56 
		0.26454016861507795;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 3 3 
		9 9 9 1 3 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 3 3 
		9 9 9 1 3 9;
	setAttr -s 13 ".kix[10:12]"  0.0052954521961510181 1 0.91229152679443359;
	setAttr -s 13 ".kiy[10:12]"  0.99998599290847778 0 -0.40954136848449707;
	setAttr -s 13 ".kox[10:12]"  0.005295448936522007 1 0.91229152679443359;
	setAttr -s 13 ".koy[10:12]"  0.99998599290847778 0 -0.40954136848449707;
createNode animCurveTL -n "animCurveTL382";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.67000535384055038 7 0.67000535384055038 
		12 0.67000535384055038 16 0.6482733340607908 20 0.41923602975380647 25 0.14857135559247653 
		33 0.14857135559247653 38 0.14857135559247653 42 0.14857135559247653 46 0.14857135559247653 
		48 0.14857135559247653 51 0.149 56 0.13806192026723146;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 3 3 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 3 3 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL383";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1.8871381895415522 7 1.8871381895415522 
		12 1.8871381895415522 16 1.6060127615703055 20 0.92581216887593609 25 0.24866285897196322 
		33 0.11187991450424586 38 0.11187991450424586 42 0.11187991450424586 46 0.11187991450424586 
		48 0.11187991450424586 51 0.11200000000000002 56 0.18080663566993085;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 3 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 3 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1025";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 7 -1.1497175013172067 12 0 
		16 3.3423255055965062 20 22.58709019965919 25 8.1195361464842613 33 6.7421855108573316 
		38 -2.1919663203831292 42 1.9712671171590588 46 1.9712671171590588 48 1.912082476214416 
		51 2.7934120899367514 56 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 1 1 
		9 9 3 3 3 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 1 1 
		9 9 3 3 3 3;
	setAttr -s 13 ".kix[5:12]"  0.97274857759475708 0.98380130529403687 
		0.96357178688049316 0.96482360363006592 1 1 1 1;
	setAttr -s 13 ".kiy[5:12]"  -0.2318623960018158 -0.17926234006881714 
		-0.26744973659515381 0.2628980278968811 0 0 0 0;
	setAttr -s 13 ".kox[5:12]"  0.97274857759475708 0.98380130529403687 
		0.96357178688049316 0.96482360363006592 1 1 1 1;
	setAttr -s 13 ".koy[5:12]"  -0.23186245560646057 -0.17926236987113953 
		-0.26744973659515381 0.2628980278968811 0 0 0 0;
createNode animCurveTA -n "animCurveTA1026";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 7 6.734512670826839 12 0 16 
		42.70484598509212 20 83.46897840771301 25 77.458289932728832 33 77.245594132769668 
		38 96.753519090739942 42 82.486581831849534 46 82.486581831849534 48 78.90010791500859 
		51 45.008793009409914 56 25.948901905116401;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1027";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 7 -13.85301503894679 12 0 16 
		-9.2988248217141081 20 11.236123151313604 25 5.1536462113024575 33 3.8601191477950101 
		38 -4.7498145604783248 42 0 46 0 48 0 51 0 56 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 3 3 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 3 3 9 3;
createNode animCurveTA -n "animCurveTA1028";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTA -n "animCurveTA1029";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTA -n "animCurveTA1030";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTA -n "animCurveTA1031";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTA -n "animCurveTA1032";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTA -n "animCurveTA1033";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTL -n "animCurveTL384";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 7 0 12 0 20 0 25 0 33 0 38 
		0 42 0 46 0 48 0 51 0 56 0;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 3;
createNode animCurveTL -n "animCurveTL385";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 7 0 12 0 20 0 25 0 33 0 38 
		0 42 0 46 0 48 0 51 0 56 0;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 3;
createNode animCurveTL -n "animCurveTL386";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 7 1 12 1 20 1 25 1 33 1 38 
		1 42 1 46 1 48 1 51 1 56 1;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 3;
createNode animCurveTL -n "animCurveTL387";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 7 0 12 0 20 0 25 0 33 0 38 
		0 42 0 46 0 48 0 51 0 56 0;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 3;
createNode animCurveTL -n "animCurveTL388";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 7 0 12 0 20 0 25 0 33 0 38 
		0 42 0 46 0 48 0 51 0 56 0;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 3;
createNode animCurveTL -n "animCurveTL389";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 7 1 12 1 20 1 25 1 33 1 38 
		1 42 1 46 1 48 1 51 1 56 1;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 3;
createNode animCurveTL -n "animCurveTL390";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -1.4786421250535617 7 -1.3274372168934199 
		12 -1.4786421250535617 20 -1.1521178121918223 25 -0.12995197620149423 33 
		0.085737995311478216 38 0.15766103529940978 42 0.32875375334862311 46 0.29795559643931702 
		48 0.16221989040817911 51 0.076450372367261391 56 0.076472881617957719;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 9;
createNode animCurveTL -n "animCurveTL391";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.94304744795874273 7 0.94006594615970918 
		12 0.94304744795874273 20 1.0449881827816192 25 0.93850886300941128 33 0.93148731206595725 
		38 0.94887047555938053 42 0.92708628864127463 46 0.92928743089594523 48 0.93295481375907796 
		51 0.93406226499483458 56 0.93105416142265018;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 1 9 9 
		9 9 9 9 9;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 1 9 9 
		9 9 9 9 9;
	setAttr -s 12 ".kix[4:11]"  0.18122340738773346 0.38582849502563477 
		0.56324738264083862 0.13492700457572937 0.32258239388465881 0.32955315709114075 
		0.81432658433914185 0.48464229702949524;
	setAttr -s 12 ".kiy[4:11]"  -0.98344200849533081 0.92257052659988403 
		-0.82628834247589111 -0.99085551500320435 0.94654136896133423 0.94413703680038452 
		-0.58040690422058105 -0.87471246719360352;
	setAttr -s 12 ".kox[4:11]"  0.1812254935503006 0.38582849502563477 
		0.56324738264083862 0.13492700457572937 0.32258239388465881 0.32955315709114075 
		0.81432658433914185 0.48464229702949524;
	setAttr -s 12 ".koy[4:11]"  -0.98344159126281738 0.92257052659988403 
		-0.82628834247589111 -0.99085551500320435 0.94654136896133423 0.94413703680038452 
		-0.58040690422058105 -0.87471246719360352;
createNode animCurveTL -n "animCurveTL392";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1.3089414707479514 7 1.3461585304208978 
		12 1.3089414707479514 20 1.217961225373307 25 0.58090515279017763 33 0.38877425889779788 
		38 0.36888493443020648 42 0.37182021245695834 46 0.20041349117071786 48 0.13693492917262326 
		51 0.1768830144687058 56 0.2457110424239469;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 1 3;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 1 3;
	setAttr -s 12 ".kix[10:11]"  0.01456004474312067 1;
	setAttr -s 12 ".kiy[10:11]"  0.99989402294158936 0;
	setAttr -s 12 ".kox[10:11]"  0.0145600326359272 1;
	setAttr -s 12 ".koy[10:11]"  0.99989402294158936 0;
createNode animCurveTA -n "animCurveTA1034";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -25.655237914214105 7 -5.4513933106138657 
		12 -25.655237914214105 20 -17.953582873445576 25 1.49313180653842 33 2.7581045408130525 
		38 17.924937741595585 42 6.1523787035315847 46 14.521948922395541 48 3.4946570163928041 
		51 0.065484240737111885 56 -0.62843630316474508;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1035";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 2.0975263990809512 7 -0.71074198285418522 
		12 2.0975263990809512 20 53.195674573531775 25 46.104052322426654 33 67.947499687763042 
		38 95.61643166694337 42 111.11526764438572 46 98.11937217707289 48 77.618214377244243 
		51 16.283117889079818 56 5.8284402688137167;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1036";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.53932213336905666 7 -22.697660472141617 
		12 -0.53932213336905666 20 -2.5251619920478161 25 1.1947658927081743 33 2.6752982586410918 
		38 18.39800013053058 42 7.3446799259322937 46 16.53825993401091 48 0.3753348278424673 
		51 -1.1817978892575498 56 1.295636019309746;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 1 9 9 3;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 1 9 9 3;
	setAttr -s 12 ".kix[8:11]"  0.47222268581390381 0.47439736127853394 
		0.99819087982177734 1;
	setAttr -s 12 ".kiy[8:11]"  -0.88147926330566406 -0.88031083345413208 
		0.060124605894088745 0;
	setAttr -s 12 ".kox[8:11]"  0.47222268581390381 0.47439736127853394 
		0.99819087982177734 1;
	setAttr -s 12 ".koy[8:11]"  -0.88147932291030884 -0.88031083345413208 
		0.060124605894088745 0;
createNode animCurveTA -n "animCurveTA1037";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTA -n "animCurveTA1038";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTA -n "animCurveTA1039";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTA -n "animCurveTA1040";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTA -n "animCurveTA1041";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTA -n "animCurveTA1042";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTA -n "animCurveTA1043";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTA -n "animCurveTA1044";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTA -n "animCurveTA1045";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTA -n "animCurveTA1046";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTA -n "animCurveTA1047";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTA -n "animCurveTA1048";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTA -n "animCurveTA1049";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTA -n "animCurveTA1050";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTA -n "animCurveTA1051";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTA -n "animCurveTA1052";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTA -n "animCurveTA1053";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTA -n "animCurveTA1054";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTA -n "animCurveTA1055";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTA -n "animCurveTA1056";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTA -n "animCurveTA1057";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 25 0 56 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1058";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 25 0 56 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1059";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 25 0 56 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1060";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTA -n "animCurveTA1061";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTA -n "animCurveTA1062";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTL -n "animCurveTL393";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.5198069948790518 56 -0.5198069948790518;
createNode animCurveTL -n "animCurveTL394";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.72394202659893114 56 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL395";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.36439499068905612 56 0.36439499068905612;
createNode animCurveTA -n "animCurveTA1063";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.7976222737965317 56 7.7976222737965317;
createNode animCurveTA -n "animCurveTA1064";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 30.409274105849079 56 30.409274105849079;
createNode animCurveTA -n "animCurveTA1065";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 64.859940280210893 56 64.859940280210893;
createNode animCurveTL -n "animCurveTL396";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.43524234076486068 56 0.43524234076486068;
createNode animCurveTL -n "animCurveTL397";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.82665738350180629 56 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL398";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.27773886459742925 56 0.27773886459742925;
createNode animCurveTA -n "animCurveTA1066";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTA -n "animCurveTA1067";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -28.652637602052774 56 -28.652637602052774;
createNode animCurveTA -n "animCurveTA1068";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -64.676908227303443 56 -64.676908227303443;
createNode animCurveTL -n "animCurveTL399";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -3.3357627539787296 7 -2.885640734234022 
		12 -3.3357627539787296 20 -3.2197397099785019 25 -1.2663536723156747 33 -0.095444811986146627 
		38 0.12358895216672325 42 1.2331722973198656 46 1.0732735623153649 48 -0.047087738484649998 
		51 -0.91260482629879081 56 -0.76309120872911718;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 9;
createNode animCurveTL -n "animCurveTL400";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1.7113587803638561 7 2.1654918595998223 
		12 1.7113587803638561 20 2.0591705343886462 25 1.9616409823944496 33 1.9527749285197455 
		38 1.6317045839702844 42 2.51002331772668 46 2.4851677438407536 48 2.2988059797241855 
		51 1.8255305196192726 56 1.6150490657878991;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 9;
createNode animCurveTL -n "animCurveTL401";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 2.0419916249791124 7 2.1728319015256194 
		12 2.0419916249791124 20 2.1253469880949933 25 1.5865445241504252 33 1.7021719082567119 
		38 1.4414346980707915 42 1.4411684397091722 46 1.6452864265325804 48 1.2363067757347708 
		51 0.47102419248143007 56 0.54570478865735916;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1069";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 70.493912470302874 7 26.719919114785494 
		12 70.493912470302874 20 5.0164778206082037 25 -0.027670429742248925 33 90.567004062276098 
		38 101.46475417126094 42 215.74973361948011 46 229.06956913756176 48 240.63139679866137 
		51 49.867981409697563 56 16.226511010665412;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1070";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 77.251690884783017 7 27.3481632338883 
		12 77.251690884783017 20 6.5185324766886712 25 16.1989192511369 33 50.839992569764398 
		38 28.395372336635297 42 28.561742769359661 46 27.38544165447902 48 27.358412240922757 
		51 40.696854618552763 56 8.5139660854992858;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1071";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 120.90414725668359 7 45.372205371553832 
		12 120.90414725668359 20 24.014724161592369 25 29.813689415614821 33 101.20805310004904 
		38 117.2633032991462 42 157.66551597049892 46 175.9273358182281 48 175.72000460697393 
		51 39.493238927904216 56 68.213989601412422;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 3;
createNode animCurveTL -n "animCurveTL402";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.6276771807420702 7 -0.3468821648519162 
		12 -1.6276771807420702 20 -1.0029988012975386 25 0.68309238637081959 33 0.78800622897805028 
		38 0.08803531683628292 42 0.82642047429596144 46 0.85474904723905365 51 1.01848175628294 
		56 0.98071836797454492;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTL -n "animCurveTL403";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.7338786249788518 7 1.9261287629153829 
		12 1.7338786249788518 20 2.1637913216235707 25 1.7169629108632507 33 1.6101373901895246 
		38 1.6134746838515139 42 1.7099507992411103 46 1.5549842083550098 51 1.6574108350244208 
		56 1.6432964864655397;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTL -n "animCurveTL404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 2.2710824495380373 7 2.6745819008249145 
		12 2.2710824495380373 20 1.8786573408560066 25 1.004791603890977 33 0.14647486795596928 
		38 -0.27786732566679367 42 -0.4210427164427018 46 -0.46920914660444302 51 
		0.088895309416627308 56 0.30456713834076893;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA1072";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 59.007910131897106 7 -19.345874397196617 
		12 59.007910131897106 20 -20.828033249452968 25 -29.104170490493544 33 -50.688940308452686 
		38 -68.663851491472911 42 -68.663851491472911 46 -68.663851491472911 51 -9.9690854873112436 
		56 5.4739599453216465;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1073";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -71.601588453715053 7 -47.068687946319812 
		12 -71.601588453715053 20 -5.9561083159624797 25 -18.835586165549852 33 -0.67656173396370445 
		38 11.916805987005425 42 11.916805987005425 46 11.916805987005425 51 5.8406184612109193 
		56 -8.5874521608419823;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1074";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -90.779043014820601 7 7.3649226411748101 
		12 -90.779043014820601 20 -20.997729995609479 25 -56.424132605779292 33 -61.918346534795297 
		38 -76.61449596535607 42 -76.61449596535607 46 -76.61449596535607 51 -60.386736704549392 
		56 -74.754744621954103;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL405";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.80217394619293847 7 0.31054502397108613 
		12 0.80217394619293847 20 0.31054502397108613 25 0.31054502397108613 33 0.31054502397108613 
		38 0.12098856091527502 42 0.31054502397108613 46 0.4863950551218349 51 0.31054502397108613 
		56 0.10167917362943303;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL406";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.44299574108883399 7 -0.55640530640609931 
		12 -0.44299574108883399 20 -0.55640530640609931 25 -0.55640530640609931 33 
		-0.55640530640609931 38 -0.77868609900667618 42 -0.55640530640609931 46 -0.55635268174742558 
		51 -0.55640530640609931 56 -0.40762644910266188;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.5412845761155356 7 -0.57914122395678103 
		12 -0.5412845761155356 20 -0.57914122395678103 25 -0.57914122395678103 33 
		-0.57914122395678103 38 -1.2358054068375008 42 -0.57914122395678103 46 -0.62124289295404955 
		51 -0.57914122395678103 56 -0.93129112588482243;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL408";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.49484451559913967 7 -0.063331173333856433 
		12 -0.49484451559913967 20 -0.063331173333856433 25 -0.063331173333856433 
		33 -0.75645780713626298 38 -0.75645780713626298 42 -0.75645780713626298 46 
		-0.80078786277473146 48 -0.52107036475861324 51 0.00057432013934466061 56 
		0;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 3;
createNode animCurveTL -n "animCurveTL409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.71931626134224813 7 -0.69960805773293522 
		12 -0.71931626134224813 20 -0.69960805773293522 25 -0.69960805773293522 33 
		-0.79368011868045951 38 -0.79368011868045951 42 -0.79368011868045951 46 -0.54119153439315637 
		48 -1.1323611260113335 51 -0.7446206329845434 56 0;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 3;
createNode animCurveTL -n "animCurveTL410";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.66067307131502628 7 -0.66762598980258558 
		12 -0.66067307131502628 20 -0.66762598980258558 25 -0.66762598980258558 33 
		-0.92269028705633338 38 -0.92269028705633338 42 -0.92269028705633338 46 -1.0929912912359749 
		48 -0.92389756090578434 51 -1.1223586308962659 56 -1;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1075";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.061808866237340665 7 -0.061808866237337522 
		12 -0.061808866237340665 20 -0.061808866237337522 25 -0.061808866237337522 
		33 -0.061808866237337522 38 -0.061808866237340665 42 -0.061808866237337522 
		46 -0.061808866237337522 51 -0.061808866237340665 56 -0.061808866237340665;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1076";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -59.058178941076754 7 -59.058178941076754 
		12 -59.058178941076754 20 -59.058178941076754 25 -59.058178941076754 33 -59.058178941076754 
		38 -59.058178941076754 42 -59.058178941076754 46 -59.058178941076754 51 -59.058178941076754 
		56 -59.058178941076754;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1077";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 16.57914742975785 7 16.579147429757843 
		12 16.57914742975785 20 16.579147429757843 25 16.579147429757843 33 16.579147429757843 
		38 16.57914742975785 42 16.579147429757843 46 16.579147429757843 51 16.57914742975785 
		56 16.57914742975785;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1078";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 12.253734489678925 7 12.253734489678925 
		12 12.253734489678925 20 12.253734489678925 25 12.253734489678925 33 12.253734489678925 
		38 12.253734489678925 42 12.253734489678925 46 12.253734489678925 51 12.253734489678925 
		56 12.253734489678925;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1079";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -65.746751280844975 7 -65.746751280844961 
		12 -65.746751280844975 20 -65.746751280844961 25 -65.746751280844961 33 -65.746751280844961 
		38 -65.746751280844975 42 -65.746751280844961 46 -65.746751280844961 51 -65.746751280844975 
		56 -65.746751280844975;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1080";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 7 0 12 0 20 0 25 0 33 0 38 
		0 42 0 46 0 51 0 56 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1081";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 15.711328223519061 7 15.711328223519057 
		12 15.711328223519061 20 15.711328223519057 25 15.711328223519057 33 15.711328223519057 
		38 15.711328223519061 42 15.711328223519057 46 15.711328223519057 51 15.711328223519061 
		56 15.711328223519061;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1082";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 8.5572674112203657 7 8.5572674112203622 
		12 8.5572674112203657 20 8.5572674112203622 25 8.5572674112203622 33 8.5572674112203622 
		38 8.5572674112203657 42 8.5572674112203622 46 8.5572674112203622 51 8.5572674112203657 
		56 8.5572674112203657;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1083";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 7 0 12 0 20 0 25 0 33 0 38 
		0 42 0 46 0 51 0 56 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1084";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 7 0 12 0 20 0 25 0 33 0 38 
		0 42 0 46 0 51 0 56 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1085";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 7 0 12 0 20 0 25 0 33 0 38 
		0 42 0 46 0 51 0 56 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1086";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 7 0 12 0 20 0 25 0 33 0 38 
		0 42 0 46 0 51 0 56 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1087";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 7 0 12 0 20 0 25 0 33 0 38 
		0 42 0 46 0 51 0 56 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1088";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 7 0 12 0 20 0 25 0 33 0 38 
		0 42 0 46 0 51 0 56 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1089";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 8.2533422302317216 7 8.2533422302317216 
		12 8.2533422302317216 20 8.2533422302317216 25 8.2533422302317216 33 8.2533422302317216 
		38 8.2533422302317216 42 8.2533422302317216 46 8.2533422302317216 51 8.2533422302317216 
		56 8.2533422302317216;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1090";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 23.263402056531085 7 23.263402056531085 
		12 23.263402056531085 20 23.263402056531085 25 23.263402056531085 33 23.263402056531085 
		38 23.263402056531085 42 23.263402056531085 46 23.263402056531085 51 23.263402056531085 
		56 23.263402056531085;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1091";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 20.166277752815617 7 20.166277752815617 
		12 20.166277752815617 20 20.166277752815617 25 20.166277752815617 33 20.166277752815617 
		38 20.166277752815617 42 20.166277752815617 46 20.166277752815617 51 20.166277752815617 
		56 20.166277752815617;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1092";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 7 0 12 0 20 0 25 0 33 0 38 
		0 42 0 46 0 51 0 56 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1093";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 7 0 12 0 20 0 25 0 33 0 38 
		0 42 0 46 0 51 0 56 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1094";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 33.429092416277157 7 33.429092416277157 
		12 33.429092416277157 20 33.429092416277157 25 33.429092416277157 33 33.429092416277157 
		38 33.429092416277157 42 33.429092416277157 46 33.429092416277157 51 33.429092416277157 
		56 33.429092416277157;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1095";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTA -n "animCurveTA1096";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTA -n "animCurveTA1097";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTA -n "animCurveTA1098";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTA -n "animCurveTA1099";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTA -n "animCurveTA1100";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 56 13.994403295754109;
createNode animCurveTA -n "animCurveTA1101";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTA -n "animCurveTA1102";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 56 0;
createNode animCurveTA -n "animCurveTA1103";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 56 13.994403295754109;
createNode animCurveTA -n "animCurveTA1104";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 7 0 12 0 20 0 25 0 33 0 38 
		0 42 0 46 0 51 0 56 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 7 0 12 0 20 0 25 0 33 0 38 
		0 42 0 46 0 51 0 56 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 17.254116939558369 7 17.254116939558369 
		12 17.254116939558369 20 17.254116939558369 25 17.254116939558369 33 17.254116939558369 
		38 17.254116939558369 42 17.254116939558369 46 17.254116939558369 51 17.254116939558369 
		56 17.254116939558369;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1107";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 7 0 12 0 20 0 25 0 33 0 38 
		0 42 0 46 0 51 0 56 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1108";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 7 0 12 0 20 0 25 0 33 0 38 
		0 42 0 46 0 51 0 56 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1109";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 7 0 12 0 20 0 25 0 33 0 38 
		0 42 0 46 0 51 0 56 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1110";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -4.5029554330710591 7 5.9660149388432382 
		12 -4.5029554330710591 20 -18.820843871529618 25 -18.820843871529618 33 -18.820843871529618 
		38 0.65073001024951671 42 -19.0169628034208 46 -19.0169628034208 51 -5.1119290710176877 
		56 0.65073001024951671;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1111";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.9010361189490672 7 4.5116636179203082 
		12 1.9010361189490672 20 8.442588645585376 25 8.442588645585376 33 8.442588645585376 
		38 4.2368721935960938 42 11.668546164950534 46 11.668546164950534 51 6.7443765558890734 
		56 4.2368721935960938;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1112";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 13.385293829723333 7 2.3811787268879385 
		12 13.385293829723333 20 16.699953369662587 25 16.699953369662587 33 16.699953369662587 
		38 8.7398866450636881 42 15.57720679196191 46 15.57720679196191 51 10.429699812218328 
		56 8.7398866450636881;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1113";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 7 -7.1097278539792699 12 0 
		20 -7.1097278539792699 25 -7.1097278539792699 33 -7.1097278539792699 38 0 
		42 -7.1097278539792699 46 -7.1097278539792699 51 -7.109727853979269 56 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1114";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 7 0 12 0 20 0 25 0 33 0 38 
		0 42 0 46 0 51 0 56 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1115";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 7 0 12 0 20 0 25 0 33 0 38 
		0 42 0 46 0 51 0 56 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1116";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 2.1931112038439995 7 2.5361372221580361 
		12 2.1931112038439995 20 -21.162236000387367 25 -35.947694138711036 33 6.6846441708573288 
		38 -4.8714700432790465 42 17.235333606048822 46 20.029924239181792 51 23.02470182261154 
		56 -4.8714700432790465;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1117";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 2.3695448421264804 7 -57.790328939816661 
		12 2.3695448421264804 20 -30.533730696364689 25 -53.148375864032161 33 1.6642147375107919 
		38 -11.783606204137087 42 32.817306874589939 46 33.370422247086623 51 33.853642922729335 
		56 -11.783606204137087;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 23.978753900084683 7 9.5139991365783985 
		12 23.978753900084683 20 27.115733941721448 25 18.52472916311752 33 -0.18392673362642425 
		38 7.5423825101935931 42 21.458533994403421 46 25.157786330846566 51 27.226646308342659 
		56 7.5423825101935931;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 2.1995832245056772 7 3.749937051835468 
		12 2.1995832245056772 20 1.8903601258661931 25 1.8903601258661931 33 1.8903601258661931 
		38 1.8903601258661935 42 1.8903601258661931 46 1.8903601258661931 51 1.8903601258661935 
		56 1.8903601258661935;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1120";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -2.2995059565535416 7 -11.126545227672914 
		12 -2.2995059565535416 20 -2.5597289571479034 25 -2.5597289571479034 33 -2.5597289571479034 
		38 -2.5597289571479038 42 -2.5597289571479034 46 -2.5597289571479034 51 -2.5597289571479038 
		56 -2.5597289571479038;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -5.2677132861661731 7 -2.1144942238017537 
		12 -5.2677132861661731 20 2.016811087403604 25 2.016811087403604 33 2.016811087403604 
		38 2.0168110874036049 42 2.016811087403604 46 2.016811087403604 51 2.0168110874036049 
		56 2.0168110874036049;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1122";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 7 0 12 0 20 0 25 0 33 0 38 
		0 42 0 46 0 51 0 56 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 7 0 12 0 20 0 25 0 33 0 38 
		0 42 0 46 0 51 0 56 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 27.080064458283051 7 27.080064458283051 
		12 27.080064458283051 20 27.080064458283051 25 27.080064458283051 33 27.080064458283051 
		38 27.080064458283051 42 27.080064458283051 46 27.080064458283051 51 27.080064458283051 
		56 27.080064458283051;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 10.423754966968488 7 10.423754966968488 
		12 10.423754966968488 20 10.423754966968488 25 10.423754966968488 33 10.423754966968488 
		38 10.423754966968488 42 10.423754966968488 46 10.423754966968488 51 10.423754966968488 
		56 10.423754966968488;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1126";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 27.7228482558439 7 27.722848255843903 
		12 27.7228482558439 20 27.722848255843903 25 27.722848255843903 33 27.722848255843903 
		38 27.7228482558439 42 27.722848255843903 46 27.722848255843903 51 27.7228482558439 
		56 27.7228482558439;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 21.576484776388224 7 21.576484776388227 
		12 21.576484776388224 20 21.576484776388227 25 21.576484776388227 33 21.576484776388227 
		38 21.576484776388224 42 21.576484776388227 46 21.576484776388227 51 21.576484776388224 
		56 21.576484776388224;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 7 0 12 0 20 0 25 0 33 0 38 
		0 42 0 46 0 51 0 56 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 7 0 12 0 20 0 25 0 33 0 38 
		0 42 0 46 0 51 0 56 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA1130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 27.911632519594587 7 27.911632519594587 
		12 27.911632519594587 20 27.911632519594587 25 27.911632519594587 33 27.911632519594587 
		38 27.911632519594587 42 27.911632519594587 46 27.911632519594587 51 27.911632519594587 
		56 27.911632519594587;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode clipLibrary -n "clipLibrary3";
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
createNode clipLibrary -n "clipLibrary4";
	setAttr -s 162 ".cel[0].cev";
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
connectAttr "hom_get_out_of_car_all.st" "clipLibrary3.st[0]";
connectAttr "hom_get_out_of_car_all.du" "clipLibrary3.du[0]";
connectAttr "animCurveTL370.a" "clipLibrary3.cel[0].cev[0].cevr";
connectAttr "animCurveTL371.a" "clipLibrary3.cel[0].cev[1].cevr";
connectAttr "animCurveTL372.a" "clipLibrary3.cel[0].cev[2].cevr";
connectAttr "animCurveTL373.a" "clipLibrary3.cel[0].cev[3].cevr";
connectAttr "animCurveTL374.a" "clipLibrary3.cel[0].cev[4].cevr";
connectAttr "animCurveTA1018.a" "clipLibrary3.cel[0].cev[5].cevr";
connectAttr "animCurveTU73.a" "clipLibrary3.cel[0].cev[6].cevr";
connectAttr "animCurveTU74.a" "clipLibrary3.cel[0].cev[7].cevr";
connectAttr "animCurveTU75.a" "clipLibrary3.cel[0].cev[8].cevr";
connectAttr "animCurveTU76.a" "clipLibrary3.cel[0].cev[9].cevr";
connectAttr "animCurveTU77.a" "clipLibrary3.cel[0].cev[10].cevr";
connectAttr "animCurveTU78.a" "clipLibrary3.cel[0].cev[11].cevr";
connectAttr "animCurveTU79.a" "clipLibrary3.cel[0].cev[12].cevr";
connectAttr "animCurveTU80.a" "clipLibrary3.cel[0].cev[13].cevr";
connectAttr "animCurveTA1019.a" "clipLibrary3.cel[0].cev[14].cevr";
connectAttr "animCurveTA1020.a" "clipLibrary3.cel[0].cev[15].cevr";
connectAttr "animCurveTA1021.a" "clipLibrary3.cel[0].cev[16].cevr";
connectAttr "animCurveTL375.a" "clipLibrary3.cel[0].cev[17].cevr";
connectAttr "animCurveTL376.a" "clipLibrary3.cel[0].cev[18].cevr";
connectAttr "animCurveTL377.a" "clipLibrary3.cel[0].cev[19].cevr";
connectAttr "animCurveTL378.a" "clipLibrary3.cel[0].cev[20].cevr";
connectAttr "animCurveTL379.a" "clipLibrary3.cel[0].cev[21].cevr";
connectAttr "animCurveTL380.a" "clipLibrary3.cel[0].cev[22].cevr";
connectAttr "animCurveTA1022.a" "clipLibrary3.cel[0].cev[23].cevr";
connectAttr "animCurveTA1023.a" "clipLibrary3.cel[0].cev[24].cevr";
connectAttr "animCurveTA1024.a" "clipLibrary3.cel[0].cev[25].cevr";
connectAttr "animCurveTL381.a" "clipLibrary3.cel[0].cev[26].cevr";
connectAttr "animCurveTL382.a" "clipLibrary3.cel[0].cev[27].cevr";
connectAttr "animCurveTL383.a" "clipLibrary3.cel[0].cev[28].cevr";
connectAttr "animCurveTA1025.a" "clipLibrary3.cel[0].cev[29].cevr";
connectAttr "animCurveTA1026.a" "clipLibrary3.cel[0].cev[30].cevr";
connectAttr "animCurveTA1027.a" "clipLibrary3.cel[0].cev[31].cevr";
connectAttr "animCurveTA1028.a" "clipLibrary3.cel[0].cev[32].cevr";
connectAttr "animCurveTA1029.a" "clipLibrary3.cel[0].cev[33].cevr";
connectAttr "animCurveTA1030.a" "clipLibrary3.cel[0].cev[34].cevr";
connectAttr "animCurveTA1031.a" "clipLibrary3.cel[0].cev[35].cevr";
connectAttr "animCurveTA1032.a" "clipLibrary3.cel[0].cev[36].cevr";
connectAttr "animCurveTA1033.a" "clipLibrary3.cel[0].cev[37].cevr";
connectAttr "animCurveTL384.a" "clipLibrary3.cel[0].cev[38].cevr";
connectAttr "animCurveTL385.a" "clipLibrary3.cel[0].cev[39].cevr";
connectAttr "animCurveTL386.a" "clipLibrary3.cel[0].cev[40].cevr";
connectAttr "animCurveTL387.a" "clipLibrary3.cel[0].cev[41].cevr";
connectAttr "animCurveTL388.a" "clipLibrary3.cel[0].cev[42].cevr";
connectAttr "animCurveTL389.a" "clipLibrary3.cel[0].cev[43].cevr";
connectAttr "animCurveTL390.a" "clipLibrary3.cel[0].cev[44].cevr";
connectAttr "animCurveTL391.a" "clipLibrary3.cel[0].cev[45].cevr";
connectAttr "animCurveTL392.a" "clipLibrary3.cel[0].cev[46].cevr";
connectAttr "animCurveTA1034.a" "clipLibrary3.cel[0].cev[47].cevr";
connectAttr "animCurveTA1035.a" "clipLibrary3.cel[0].cev[48].cevr";
connectAttr "animCurveTA1036.a" "clipLibrary3.cel[0].cev[49].cevr";
connectAttr "animCurveTA1037.a" "clipLibrary3.cel[0].cev[50].cevr";
connectAttr "animCurveTA1038.a" "clipLibrary3.cel[0].cev[51].cevr";
connectAttr "animCurveTA1039.a" "clipLibrary3.cel[0].cev[52].cevr";
connectAttr "animCurveTA1040.a" "clipLibrary3.cel[0].cev[53].cevr";
connectAttr "animCurveTA1041.a" "clipLibrary3.cel[0].cev[54].cevr";
connectAttr "animCurveTA1042.a" "clipLibrary3.cel[0].cev[55].cevr";
connectAttr "animCurveTA1043.a" "clipLibrary3.cel[0].cev[56].cevr";
connectAttr "animCurveTA1044.a" "clipLibrary3.cel[0].cev[57].cevr";
connectAttr "animCurveTA1045.a" "clipLibrary3.cel[0].cev[58].cevr";
connectAttr "animCurveTA1046.a" "clipLibrary3.cel[0].cev[59].cevr";
connectAttr "animCurveTA1047.a" "clipLibrary3.cel[0].cev[60].cevr";
connectAttr "animCurveTA1048.a" "clipLibrary3.cel[0].cev[61].cevr";
connectAttr "animCurveTA1049.a" "clipLibrary3.cel[0].cev[62].cevr";
connectAttr "animCurveTA1050.a" "clipLibrary3.cel[0].cev[63].cevr";
connectAttr "animCurveTA1051.a" "clipLibrary3.cel[0].cev[64].cevr";
connectAttr "animCurveTA1052.a" "clipLibrary3.cel[0].cev[65].cevr";
connectAttr "animCurveTA1053.a" "clipLibrary3.cel[0].cev[66].cevr";
connectAttr "animCurveTA1054.a" "clipLibrary3.cel[0].cev[67].cevr";
connectAttr "animCurveTA1055.a" "clipLibrary3.cel[0].cev[68].cevr";
connectAttr "animCurveTA1056.a" "clipLibrary3.cel[0].cev[69].cevr";
connectAttr "animCurveTA1057.a" "clipLibrary3.cel[0].cev[70].cevr";
connectAttr "animCurveTA1058.a" "clipLibrary3.cel[0].cev[71].cevr";
connectAttr "animCurveTA1059.a" "clipLibrary3.cel[0].cev[72].cevr";
connectAttr "animCurveTA1060.a" "clipLibrary3.cel[0].cev[73].cevr";
connectAttr "animCurveTA1061.a" "clipLibrary3.cel[0].cev[74].cevr";
connectAttr "animCurveTA1062.a" "clipLibrary3.cel[0].cev[75].cevr";
connectAttr "animCurveTL393.a" "clipLibrary3.cel[0].cev[76].cevr";
connectAttr "animCurveTL394.a" "clipLibrary3.cel[0].cev[77].cevr";
connectAttr "animCurveTL395.a" "clipLibrary3.cel[0].cev[78].cevr";
connectAttr "animCurveTA1063.a" "clipLibrary3.cel[0].cev[79].cevr";
connectAttr "animCurveTA1064.a" "clipLibrary3.cel[0].cev[80].cevr";
connectAttr "animCurveTA1065.a" "clipLibrary3.cel[0].cev[81].cevr";
connectAttr "animCurveTL396.a" "clipLibrary3.cel[0].cev[82].cevr";
connectAttr "animCurveTL397.a" "clipLibrary3.cel[0].cev[83].cevr";
connectAttr "animCurveTL398.a" "clipLibrary3.cel[0].cev[84].cevr";
connectAttr "animCurveTA1066.a" "clipLibrary3.cel[0].cev[85].cevr";
connectAttr "animCurveTA1067.a" "clipLibrary3.cel[0].cev[86].cevr";
connectAttr "animCurveTA1068.a" "clipLibrary3.cel[0].cev[87].cevr";
connectAttr "animCurveTL399.a" "clipLibrary3.cel[0].cev[88].cevr";
connectAttr "animCurveTL400.a" "clipLibrary3.cel[0].cev[89].cevr";
connectAttr "animCurveTL401.a" "clipLibrary3.cel[0].cev[90].cevr";
connectAttr "animCurveTA1069.a" "clipLibrary3.cel[0].cev[91].cevr";
connectAttr "animCurveTA1070.a" "clipLibrary3.cel[0].cev[92].cevr";
connectAttr "animCurveTA1071.a" "clipLibrary3.cel[0].cev[93].cevr";
connectAttr "animCurveTL402.a" "clipLibrary3.cel[0].cev[94].cevr";
connectAttr "animCurveTL403.a" "clipLibrary3.cel[0].cev[95].cevr";
connectAttr "animCurveTL404.a" "clipLibrary3.cel[0].cev[96].cevr";
connectAttr "animCurveTA1072.a" "clipLibrary3.cel[0].cev[97].cevr";
connectAttr "animCurveTA1073.a" "clipLibrary3.cel[0].cev[98].cevr";
connectAttr "animCurveTA1074.a" "clipLibrary3.cel[0].cev[99].cevr";
connectAttr "animCurveTL405.a" "clipLibrary3.cel[0].cev[100].cevr";
connectAttr "animCurveTL406.a" "clipLibrary3.cel[0].cev[101].cevr";
connectAttr "animCurveTL407.a" "clipLibrary3.cel[0].cev[102].cevr";
connectAttr "animCurveTL408.a" "clipLibrary3.cel[0].cev[103].cevr";
connectAttr "animCurveTL409.a" "clipLibrary3.cel[0].cev[104].cevr";
connectAttr "animCurveTL410.a" "clipLibrary3.cel[0].cev[105].cevr";
connectAttr "animCurveTA1075.a" "clipLibrary3.cel[0].cev[106].cevr";
connectAttr "animCurveTA1076.a" "clipLibrary3.cel[0].cev[107].cevr";
connectAttr "animCurveTA1077.a" "clipLibrary3.cel[0].cev[108].cevr";
connectAttr "animCurveTA1078.a" "clipLibrary3.cel[0].cev[109].cevr";
connectAttr "animCurveTA1079.a" "clipLibrary3.cel[0].cev[110].cevr";
connectAttr "animCurveTA1080.a" "clipLibrary3.cel[0].cev[111].cevr";
connectAttr "animCurveTA1081.a" "clipLibrary3.cel[0].cev[112].cevr";
connectAttr "animCurveTA1082.a" "clipLibrary3.cel[0].cev[113].cevr";
connectAttr "animCurveTA1083.a" "clipLibrary3.cel[0].cev[114].cevr";
connectAttr "animCurveTA1084.a" "clipLibrary3.cel[0].cev[115].cevr";
connectAttr "animCurveTA1085.a" "clipLibrary3.cel[0].cev[116].cevr";
connectAttr "animCurveTA1086.a" "clipLibrary3.cel[0].cev[117].cevr";
connectAttr "animCurveTA1087.a" "clipLibrary3.cel[0].cev[118].cevr";
connectAttr "animCurveTA1088.a" "clipLibrary3.cel[0].cev[119].cevr";
connectAttr "animCurveTA1089.a" "clipLibrary3.cel[0].cev[120].cevr";
connectAttr "animCurveTA1090.a" "clipLibrary3.cel[0].cev[121].cevr";
connectAttr "animCurveTA1091.a" "clipLibrary3.cel[0].cev[122].cevr";
connectAttr "animCurveTA1092.a" "clipLibrary3.cel[0].cev[123].cevr";
connectAttr "animCurveTA1093.a" "clipLibrary3.cel[0].cev[124].cevr";
connectAttr "animCurveTA1094.a" "clipLibrary3.cel[0].cev[125].cevr";
connectAttr "animCurveTA1095.a" "clipLibrary3.cel[0].cev[126].cevr";
connectAttr "animCurveTA1096.a" "clipLibrary3.cel[0].cev[127].cevr";
connectAttr "animCurveTA1097.a" "clipLibrary3.cel[0].cev[128].cevr";
connectAttr "animCurveTA1098.a" "clipLibrary3.cel[0].cev[129].cevr";
connectAttr "animCurveTA1099.a" "clipLibrary3.cel[0].cev[130].cevr";
connectAttr "animCurveTA1100.a" "clipLibrary3.cel[0].cev[131].cevr";
connectAttr "animCurveTA1101.a" "clipLibrary3.cel[0].cev[132].cevr";
connectAttr "animCurveTA1102.a" "clipLibrary3.cel[0].cev[133].cevr";
connectAttr "animCurveTA1103.a" "clipLibrary3.cel[0].cev[134].cevr";
connectAttr "animCurveTA1104.a" "clipLibrary3.cel[0].cev[135].cevr";
connectAttr "animCurveTA1105.a" "clipLibrary3.cel[0].cev[136].cevr";
connectAttr "animCurveTA1106.a" "clipLibrary3.cel[0].cev[137].cevr";
connectAttr "animCurveTA1107.a" "clipLibrary3.cel[0].cev[138].cevr";
connectAttr "animCurveTA1108.a" "clipLibrary3.cel[0].cev[139].cevr";
connectAttr "animCurveTA1109.a" "clipLibrary3.cel[0].cev[140].cevr";
connectAttr "animCurveTA1110.a" "clipLibrary3.cel[0].cev[141].cevr";
connectAttr "animCurveTA1111.a" "clipLibrary3.cel[0].cev[142].cevr";
connectAttr "animCurveTA1112.a" "clipLibrary3.cel[0].cev[143].cevr";
connectAttr "animCurveTA1113.a" "clipLibrary3.cel[0].cev[144].cevr";
connectAttr "animCurveTA1114.a" "clipLibrary3.cel[0].cev[145].cevr";
connectAttr "animCurveTA1115.a" "clipLibrary3.cel[0].cev[146].cevr";
connectAttr "animCurveTA1116.a" "clipLibrary3.cel[0].cev[147].cevr";
connectAttr "animCurveTA1117.a" "clipLibrary3.cel[0].cev[148].cevr";
connectAttr "animCurveTA1118.a" "clipLibrary3.cel[0].cev[149].cevr";
connectAttr "animCurveTA1119.a" "clipLibrary3.cel[0].cev[150].cevr";
connectAttr "animCurveTA1120.a" "clipLibrary3.cel[0].cev[151].cevr";
connectAttr "animCurveTA1121.a" "clipLibrary3.cel[0].cev[152].cevr";
connectAttr "animCurveTA1122.a" "clipLibrary3.cel[0].cev[153].cevr";
connectAttr "animCurveTA1123.a" "clipLibrary3.cel[0].cev[154].cevr";
connectAttr "animCurveTA1124.a" "clipLibrary3.cel[0].cev[155].cevr";
connectAttr "animCurveTA1125.a" "clipLibrary3.cel[0].cev[156].cevr";
connectAttr "animCurveTA1126.a" "clipLibrary3.cel[0].cev[157].cevr";
connectAttr "animCurveTA1127.a" "clipLibrary3.cel[0].cev[158].cevr";
connectAttr "animCurveTA1128.a" "clipLibrary3.cel[0].cev[159].cevr";
connectAttr "animCurveTA1129.a" "clipLibrary3.cel[0].cev[160].cevr";
connectAttr "animCurveTA1130.a" "clipLibrary3.cel[0].cev[161].cevr";
connectAttr "hom_get_out_of_car_all.st" "clipLibrary4.st[0]";
connectAttr "hom_get_out_of_car_all.du" "clipLibrary4.du[0]";
connectAttr "animCurveTL370.a" "clipLibrary4.cel[0].cev[0].cevr";
connectAttr "animCurveTL371.a" "clipLibrary4.cel[0].cev[1].cevr";
connectAttr "animCurveTL372.a" "clipLibrary4.cel[0].cev[2].cevr";
connectAttr "animCurveTL373.a" "clipLibrary4.cel[0].cev[3].cevr";
connectAttr "animCurveTL374.a" "clipLibrary4.cel[0].cev[4].cevr";
connectAttr "animCurveTA1018.a" "clipLibrary4.cel[0].cev[5].cevr";
connectAttr "animCurveTU73.a" "clipLibrary4.cel[0].cev[6].cevr";
connectAttr "animCurveTU74.a" "clipLibrary4.cel[0].cev[7].cevr";
connectAttr "animCurveTU75.a" "clipLibrary4.cel[0].cev[8].cevr";
connectAttr "animCurveTU76.a" "clipLibrary4.cel[0].cev[9].cevr";
connectAttr "animCurveTU77.a" "clipLibrary4.cel[0].cev[10].cevr";
connectAttr "animCurveTU78.a" "clipLibrary4.cel[0].cev[11].cevr";
connectAttr "animCurveTU79.a" "clipLibrary4.cel[0].cev[12].cevr";
connectAttr "animCurveTU80.a" "clipLibrary4.cel[0].cev[13].cevr";
connectAttr "animCurveTA1019.a" "clipLibrary4.cel[0].cev[14].cevr";
connectAttr "animCurveTA1020.a" "clipLibrary4.cel[0].cev[15].cevr";
connectAttr "animCurveTA1021.a" "clipLibrary4.cel[0].cev[16].cevr";
connectAttr "animCurveTL375.a" "clipLibrary4.cel[0].cev[17].cevr";
connectAttr "animCurveTL376.a" "clipLibrary4.cel[0].cev[18].cevr";
connectAttr "animCurveTL377.a" "clipLibrary4.cel[0].cev[19].cevr";
connectAttr "animCurveTL378.a" "clipLibrary4.cel[0].cev[20].cevr";
connectAttr "animCurveTL379.a" "clipLibrary4.cel[0].cev[21].cevr";
connectAttr "animCurveTL380.a" "clipLibrary4.cel[0].cev[22].cevr";
connectAttr "animCurveTA1022.a" "clipLibrary4.cel[0].cev[23].cevr";
connectAttr "animCurveTA1023.a" "clipLibrary4.cel[0].cev[24].cevr";
connectAttr "animCurveTA1024.a" "clipLibrary4.cel[0].cev[25].cevr";
connectAttr "animCurveTL381.a" "clipLibrary4.cel[0].cev[26].cevr";
connectAttr "animCurveTL382.a" "clipLibrary4.cel[0].cev[27].cevr";
connectAttr "animCurveTL383.a" "clipLibrary4.cel[0].cev[28].cevr";
connectAttr "animCurveTA1025.a" "clipLibrary4.cel[0].cev[29].cevr";
connectAttr "animCurveTA1026.a" "clipLibrary4.cel[0].cev[30].cevr";
connectAttr "animCurveTA1027.a" "clipLibrary4.cel[0].cev[31].cevr";
connectAttr "animCurveTA1028.a" "clipLibrary4.cel[0].cev[32].cevr";
connectAttr "animCurveTA1029.a" "clipLibrary4.cel[0].cev[33].cevr";
connectAttr "animCurveTA1030.a" "clipLibrary4.cel[0].cev[34].cevr";
connectAttr "animCurveTA1031.a" "clipLibrary4.cel[0].cev[35].cevr";
connectAttr "animCurveTA1032.a" "clipLibrary4.cel[0].cev[36].cevr";
connectAttr "animCurveTA1033.a" "clipLibrary4.cel[0].cev[37].cevr";
connectAttr "animCurveTL384.a" "clipLibrary4.cel[0].cev[38].cevr";
connectAttr "animCurveTL385.a" "clipLibrary4.cel[0].cev[39].cevr";
connectAttr "animCurveTL386.a" "clipLibrary4.cel[0].cev[40].cevr";
connectAttr "animCurveTL387.a" "clipLibrary4.cel[0].cev[41].cevr";
connectAttr "animCurveTL388.a" "clipLibrary4.cel[0].cev[42].cevr";
connectAttr "animCurveTL389.a" "clipLibrary4.cel[0].cev[43].cevr";
connectAttr "animCurveTL390.a" "clipLibrary4.cel[0].cev[44].cevr";
connectAttr "animCurveTL391.a" "clipLibrary4.cel[0].cev[45].cevr";
connectAttr "animCurveTL392.a" "clipLibrary4.cel[0].cev[46].cevr";
connectAttr "animCurveTA1034.a" "clipLibrary4.cel[0].cev[47].cevr";
connectAttr "animCurveTA1035.a" "clipLibrary4.cel[0].cev[48].cevr";
connectAttr "animCurveTA1036.a" "clipLibrary4.cel[0].cev[49].cevr";
connectAttr "animCurveTA1037.a" "clipLibrary4.cel[0].cev[50].cevr";
connectAttr "animCurveTA1038.a" "clipLibrary4.cel[0].cev[51].cevr";
connectAttr "animCurveTA1039.a" "clipLibrary4.cel[0].cev[52].cevr";
connectAttr "animCurveTA1040.a" "clipLibrary4.cel[0].cev[53].cevr";
connectAttr "animCurveTA1041.a" "clipLibrary4.cel[0].cev[54].cevr";
connectAttr "animCurveTA1042.a" "clipLibrary4.cel[0].cev[55].cevr";
connectAttr "animCurveTA1043.a" "clipLibrary4.cel[0].cev[56].cevr";
connectAttr "animCurveTA1044.a" "clipLibrary4.cel[0].cev[57].cevr";
connectAttr "animCurveTA1045.a" "clipLibrary4.cel[0].cev[58].cevr";
connectAttr "animCurveTA1046.a" "clipLibrary4.cel[0].cev[59].cevr";
connectAttr "animCurveTA1047.a" "clipLibrary4.cel[0].cev[60].cevr";
connectAttr "animCurveTA1048.a" "clipLibrary4.cel[0].cev[61].cevr";
connectAttr "animCurveTA1049.a" "clipLibrary4.cel[0].cev[62].cevr";
connectAttr "animCurveTA1050.a" "clipLibrary4.cel[0].cev[63].cevr";
connectAttr "animCurveTA1051.a" "clipLibrary4.cel[0].cev[64].cevr";
connectAttr "animCurveTA1052.a" "clipLibrary4.cel[0].cev[65].cevr";
connectAttr "animCurveTA1053.a" "clipLibrary4.cel[0].cev[66].cevr";
connectAttr "animCurveTA1054.a" "clipLibrary4.cel[0].cev[67].cevr";
connectAttr "animCurveTA1055.a" "clipLibrary4.cel[0].cev[68].cevr";
connectAttr "animCurveTA1056.a" "clipLibrary4.cel[0].cev[69].cevr";
connectAttr "animCurveTA1057.a" "clipLibrary4.cel[0].cev[70].cevr";
connectAttr "animCurveTA1058.a" "clipLibrary4.cel[0].cev[71].cevr";
connectAttr "animCurveTA1059.a" "clipLibrary4.cel[0].cev[72].cevr";
connectAttr "animCurveTA1060.a" "clipLibrary4.cel[0].cev[73].cevr";
connectAttr "animCurveTA1061.a" "clipLibrary4.cel[0].cev[74].cevr";
connectAttr "animCurveTA1062.a" "clipLibrary4.cel[0].cev[75].cevr";
connectAttr "animCurveTL393.a" "clipLibrary4.cel[0].cev[76].cevr";
connectAttr "animCurveTL394.a" "clipLibrary4.cel[0].cev[77].cevr";
connectAttr "animCurveTL395.a" "clipLibrary4.cel[0].cev[78].cevr";
connectAttr "animCurveTA1063.a" "clipLibrary4.cel[0].cev[79].cevr";
connectAttr "animCurveTA1064.a" "clipLibrary4.cel[0].cev[80].cevr";
connectAttr "animCurveTA1065.a" "clipLibrary4.cel[0].cev[81].cevr";
connectAttr "animCurveTL396.a" "clipLibrary4.cel[0].cev[82].cevr";
connectAttr "animCurveTL397.a" "clipLibrary4.cel[0].cev[83].cevr";
connectAttr "animCurveTL398.a" "clipLibrary4.cel[0].cev[84].cevr";
connectAttr "animCurveTA1066.a" "clipLibrary4.cel[0].cev[85].cevr";
connectAttr "animCurveTA1067.a" "clipLibrary4.cel[0].cev[86].cevr";
connectAttr "animCurveTA1068.a" "clipLibrary4.cel[0].cev[87].cevr";
connectAttr "animCurveTL399.a" "clipLibrary4.cel[0].cev[88].cevr";
connectAttr "animCurveTL400.a" "clipLibrary4.cel[0].cev[89].cevr";
connectAttr "animCurveTL401.a" "clipLibrary4.cel[0].cev[90].cevr";
connectAttr "animCurveTA1069.a" "clipLibrary4.cel[0].cev[91].cevr";
connectAttr "animCurveTA1070.a" "clipLibrary4.cel[0].cev[92].cevr";
connectAttr "animCurveTA1071.a" "clipLibrary4.cel[0].cev[93].cevr";
connectAttr "animCurveTL402.a" "clipLibrary4.cel[0].cev[94].cevr";
connectAttr "animCurveTL403.a" "clipLibrary4.cel[0].cev[95].cevr";
connectAttr "animCurveTL404.a" "clipLibrary4.cel[0].cev[96].cevr";
connectAttr "animCurveTA1072.a" "clipLibrary4.cel[0].cev[97].cevr";
connectAttr "animCurveTA1073.a" "clipLibrary4.cel[0].cev[98].cevr";
connectAttr "animCurveTA1074.a" "clipLibrary4.cel[0].cev[99].cevr";
connectAttr "animCurveTL405.a" "clipLibrary4.cel[0].cev[100].cevr";
connectAttr "animCurveTL406.a" "clipLibrary4.cel[0].cev[101].cevr";
connectAttr "animCurveTL407.a" "clipLibrary4.cel[0].cev[102].cevr";
connectAttr "animCurveTL408.a" "clipLibrary4.cel[0].cev[103].cevr";
connectAttr "animCurveTL409.a" "clipLibrary4.cel[0].cev[104].cevr";
connectAttr "animCurveTL410.a" "clipLibrary4.cel[0].cev[105].cevr";
connectAttr "animCurveTA1075.a" "clipLibrary4.cel[0].cev[106].cevr";
connectAttr "animCurveTA1076.a" "clipLibrary4.cel[0].cev[107].cevr";
connectAttr "animCurveTA1077.a" "clipLibrary4.cel[0].cev[108].cevr";
connectAttr "animCurveTA1078.a" "clipLibrary4.cel[0].cev[109].cevr";
connectAttr "animCurveTA1079.a" "clipLibrary4.cel[0].cev[110].cevr";
connectAttr "animCurveTA1080.a" "clipLibrary4.cel[0].cev[111].cevr";
connectAttr "animCurveTA1081.a" "clipLibrary4.cel[0].cev[112].cevr";
connectAttr "animCurveTA1082.a" "clipLibrary4.cel[0].cev[113].cevr";
connectAttr "animCurveTA1083.a" "clipLibrary4.cel[0].cev[114].cevr";
connectAttr "animCurveTA1084.a" "clipLibrary4.cel[0].cev[115].cevr";
connectAttr "animCurveTA1085.a" "clipLibrary4.cel[0].cev[116].cevr";
connectAttr "animCurveTA1086.a" "clipLibrary4.cel[0].cev[117].cevr";
connectAttr "animCurveTA1087.a" "clipLibrary4.cel[0].cev[118].cevr";
connectAttr "animCurveTA1088.a" "clipLibrary4.cel[0].cev[119].cevr";
connectAttr "animCurveTA1089.a" "clipLibrary4.cel[0].cev[120].cevr";
connectAttr "animCurveTA1090.a" "clipLibrary4.cel[0].cev[121].cevr";
connectAttr "animCurveTA1091.a" "clipLibrary4.cel[0].cev[122].cevr";
connectAttr "animCurveTA1092.a" "clipLibrary4.cel[0].cev[123].cevr";
connectAttr "animCurveTA1093.a" "clipLibrary4.cel[0].cev[124].cevr";
connectAttr "animCurveTA1094.a" "clipLibrary4.cel[0].cev[125].cevr";
connectAttr "animCurveTA1095.a" "clipLibrary4.cel[0].cev[126].cevr";
connectAttr "animCurveTA1096.a" "clipLibrary4.cel[0].cev[127].cevr";
connectAttr "animCurveTA1097.a" "clipLibrary4.cel[0].cev[128].cevr";
connectAttr "animCurveTA1098.a" "clipLibrary4.cel[0].cev[129].cevr";
connectAttr "animCurveTA1099.a" "clipLibrary4.cel[0].cev[130].cevr";
connectAttr "animCurveTA1100.a" "clipLibrary4.cel[0].cev[131].cevr";
connectAttr "animCurveTA1101.a" "clipLibrary4.cel[0].cev[132].cevr";
connectAttr "animCurveTA1102.a" "clipLibrary4.cel[0].cev[133].cevr";
connectAttr "animCurveTA1103.a" "clipLibrary4.cel[0].cev[134].cevr";
connectAttr "animCurveTA1104.a" "clipLibrary4.cel[0].cev[135].cevr";
connectAttr "animCurveTA1105.a" "clipLibrary4.cel[0].cev[136].cevr";
connectAttr "animCurveTA1106.a" "clipLibrary4.cel[0].cev[137].cevr";
connectAttr "animCurveTA1107.a" "clipLibrary4.cel[0].cev[138].cevr";
connectAttr "animCurveTA1108.a" "clipLibrary4.cel[0].cev[139].cevr";
connectAttr "animCurveTA1109.a" "clipLibrary4.cel[0].cev[140].cevr";
connectAttr "animCurveTA1110.a" "clipLibrary4.cel[0].cev[141].cevr";
connectAttr "animCurveTA1111.a" "clipLibrary4.cel[0].cev[142].cevr";
connectAttr "animCurveTA1112.a" "clipLibrary4.cel[0].cev[143].cevr";
connectAttr "animCurveTA1113.a" "clipLibrary4.cel[0].cev[144].cevr";
connectAttr "animCurveTA1114.a" "clipLibrary4.cel[0].cev[145].cevr";
connectAttr "animCurveTA1115.a" "clipLibrary4.cel[0].cev[146].cevr";
connectAttr "animCurveTA1116.a" "clipLibrary4.cel[0].cev[147].cevr";
connectAttr "animCurveTA1117.a" "clipLibrary4.cel[0].cev[148].cevr";
connectAttr "animCurveTA1118.a" "clipLibrary4.cel[0].cev[149].cevr";
connectAttr "animCurveTA1119.a" "clipLibrary4.cel[0].cev[150].cevr";
connectAttr "animCurveTA1120.a" "clipLibrary4.cel[0].cev[151].cevr";
connectAttr "animCurveTA1121.a" "clipLibrary4.cel[0].cev[152].cevr";
connectAttr "animCurveTA1122.a" "clipLibrary4.cel[0].cev[153].cevr";
connectAttr "animCurveTA1123.a" "clipLibrary4.cel[0].cev[154].cevr";
connectAttr "animCurveTA1124.a" "clipLibrary4.cel[0].cev[155].cevr";
connectAttr "animCurveTA1125.a" "clipLibrary4.cel[0].cev[156].cevr";
connectAttr "animCurveTA1126.a" "clipLibrary4.cel[0].cev[157].cevr";
connectAttr "animCurveTA1127.a" "clipLibrary4.cel[0].cev[158].cevr";
connectAttr "animCurveTA1128.a" "clipLibrary4.cel[0].cev[159].cevr";
connectAttr "animCurveTA1129.a" "clipLibrary4.cel[0].cev[160].cevr";
connectAttr "animCurveTA1130.a" "clipLibrary4.cel[0].cev[161].cevr";
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
// End of hom-m_get_out_of_car_all.ma
