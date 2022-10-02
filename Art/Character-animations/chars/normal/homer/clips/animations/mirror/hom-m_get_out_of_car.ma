//Maya ASCII 4.0 scene
//Name: hom-m_get_out_of_car.ma
//Last modified: Tue, Jul 23, 2002 11:53:56 AM
requires maya "4.0";
requires "p3dmayaexp" "17.9.1.0";
requires "p3dSimpleShader" "17.1";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "hom_get_out_of_car";
	setAttr ".ihi" 0;
	setAttr ".du" 26;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL370";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTL -n "animCurveTL371";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTL -n "animCurveTL372";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -0.99433739766662688 1 -0.98558962269199846 
		2 -0.97598795602509225 3 -0.96328801342632009 4 -0.94524541065609369 5 -0.91961576347482477 
		6 -0.88415468764292515 7 -0.8366177989208069 8 -0.77476071306888172 9 -0.66886931608790123 
		10 -0.51331000298575591 11 -0.34195915303356567 12 -0.18869314550245087 13 
		-0.08738835966353152 14 -0.033758699097311905 15 0.0017317277746973583 16 
		0.023081234419867126 17 0.034288134305568339 18 0.039350740899171809 19 0.042267367668048367 
		20 0.047036328079569076 21 0.057655935601104664 22 0.069302468316255958 23 
		0.076676924667116647 24 0.083064698658796982 25 0.091751184296407204 26 0.10602177558505754;
createNode animCurveTL -n "animCurveTL373";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0;
createNode animCurveTL -n "animCurveTL374";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0.88021938078782869 1 0.87663238784800213 
		2 0.87732198208452217 3 0.8795697765163577 4 0.8806573841624773 5 0.87786641804184995 
		6 0.86847849117344422 7 0.84977521657622912 8 0.81903820726917342 9 0.75724509242232541 
		10 0.66171491304164276 11 0.55424139989995813 12 0.45661828377010394 13 0.39063929542491305 
		14 0.35344777242289543 15 0.32631043782558705 16 0.30720610066035831 17 0.29411356995457977 
		18 0.28501165473562201 19 0.27787916403085555 20 0.27069490686765091 21 0.26143769227337865 
		22 0.25323023592229837 23 0.24944123534901219 24 0.24841847237140496 25 0.24850972880736133 
		26 0.24806278647476593;
createNode animCurveTA -n "animCurveTA1018";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0;
createNode animCurveTU -n "animCurveTU9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTU -n "animCurveTU10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTU -n "animCurveTU11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTU -n "animCurveTU12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTU -n "animCurveTU13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTU -n "animCurveTU14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTU -n "animCurveTU15";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 26 1;
createNode animCurveTU -n "animCurveTU16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 26 1;
createNode animCurveTA -n "animCurveTA1019";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1020";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1021";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTL -n "animCurveTL375";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTL -n "animCurveTL376";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTL -n "animCurveTL377";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTL -n "animCurveTL378";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.7084450118300396 8 -1.3048847177879457 
		13 -0.43415074546036941 21 0.085517317483154831 26 0.17266660784721713;
createNode animCurveTL -n "animCurveTL379";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.66588912309516346 8 0.66588912309516346 
		13 0.53038951595385153 21 0.25623130679020223 26 0.12981066364079161;
createNode animCurveTL -n "animCurveTL380";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.9096734928140209 8 1.5854821327376039 
		13 1.357575367928272 21 0.71955005638004099 26 0.60815420617944771;
createNode animCurveTA -n "animCurveTA1022";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0.39825964740717662 13 0.41715085875125751 
		21 -11.165517686115068 26 -58.796241196901185;
createNode animCurveTA -n "animCurveTA1023";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 -1.647110260657298 13 -17.384729502013851 
		21 65.530345246545522 26 84.619121407719447;
createNode animCurveTA -n "animCurveTA1024";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 -7.792214191643243 13 -7.9054076490721528 
		21 -7.1752306953435738 26 -55.674596583571365;
createNode animCurveTL -n "animCurveTL381";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.2504784321605431 4 -0.82409193837269812 
		8 -0.56097603034061028 13 0.071693977428277406 21 0.071693977428277406 26 
		0.071693977428277406;
	setAttr -s 6 ".kit[3:5]"  3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
createNode animCurveTL -n "animCurveTL382";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.67000535384055038 4 0.6482733340607908 
		8 0.41923602975380647 13 0.14857135559247653 21 0.14857135559247653 26 0.14857135559247653;
	setAttr -s 6 ".kit[3:5]"  3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
createNode animCurveTL -n "animCurveTL383";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.8871381895415522 4 1.6060127615703055 
		8 0.92581216887593609 13 0.24866285897196322 21 0.11187991450424586 26 0.11187991450424586;
	setAttr -s 6 ".kit[4:5]"  3 9;
	setAttr -s 6 ".kot[4:5]"  3 9;
createNode animCurveTA -n "animCurveTA1025";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 3.3423255055965062 8 22.58709019965919 
		13 8.1195361464842613 21 6.7421855108573316 26 -2.1919663203831292;
	setAttr -s 6 ".kit[3:5]"  1 1 9;
	setAttr -s 6 ".kot[3:5]"  1 1 9;
	setAttr -s 6 ".kix[3:5]"  0.97274857759475708 0.98380130529403687 
		0.73023563623428345;
	setAttr -s 6 ".kiy[3:5]"  -0.2318623960018158 -0.17926234006881714 
		-0.68319541215896606;
	setAttr -s 6 ".kox[3:5]"  0.97274857759475708 0.98380130529403687 
		0.73023563623428345;
	setAttr -s 6 ".koy[3:5]"  -0.23186245560646057 -0.17926236987113953 
		-0.68319541215896606;
createNode animCurveTA -n "animCurveTA1026";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 42.70484598509212 8 83.46897840771301 
		13 77.458289932728832 21 77.245594132769668 26 96.753519090739942;
createNode animCurveTA -n "animCurveTA1027";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 -9.2988248217141081 8 11.236123151313604 
		13 5.1536462113024575 21 3.8601191477950101 26 -4.7498145604783248;
createNode animCurveTA -n "animCurveTA1028";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1029";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1030";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1031";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1032";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1033";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTL -n "animCurveTL384";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 13 0 21 0 26 0;
createNode animCurveTL -n "animCurveTL385";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 13 0 21 0 26 0;
createNode animCurveTL -n "animCurveTL386";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 8 1 13 1 21 1 26 1;
createNode animCurveTL -n "animCurveTL387";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 13 0 21 0 26 0;
createNode animCurveTL -n "animCurveTL388";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 13 0 21 0 26 0;
createNode animCurveTL -n "animCurveTL389";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 8 1 13 1 21 1 26 1;
createNode animCurveTL -n "animCurveTL390";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.4786421250535617 8 -1.1521178121918223 
		13 -0.12995197620149423 21 0.085737995311478216 26 0.15766103529940978;
createNode animCurveTL -n "animCurveTL391";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.94304744795874273 8 1.0449881827816192 
		13 0.93850886300941128 21 0.93148731206595725 26 0.94887047555938053;
	setAttr -s 5 ".kit[2:4]"  1 9 9;
	setAttr -s 5 ".kot[2:4]"  1 9 9;
	setAttr -s 5 ".kix[2:4]"  0.18122340738773346 0.38582849502563477 
		0.095440559089183807;
	setAttr -s 5 ".kiy[2:4]"  -0.98344200849533081 0.92257052659988403 
		0.99543511867523193;
	setAttr -s 5 ".kox[2:4]"  0.1812254935503006 0.38582849502563477 
		0.095440559089183807;
	setAttr -s 5 ".koy[2:4]"  -0.98344159126281738 0.92257052659988403 
		0.99543511867523193;
createNode animCurveTL -n "animCurveTL392";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.3089414707479514 8 1.217961225373307 
		13 0.58090515279017763 21 0.38877425889779788 26 0.36888493443020648;
createNode animCurveTA -n "animCurveTA1034";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -25.655237914214105 8 -17.953582873445576 
		13 1.49313180653842 21 2.7581045408130525 26 17.924937741595585;
createNode animCurveTA -n "animCurveTA1035";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.0975263990809512 8 53.195674573531775 
		13 46.104052322426654 21 67.947499687763042 26 95.61643166694337;
createNode animCurveTA -n "animCurveTA1036";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.53932213336905666 8 -2.5251619920478161 
		13 1.1947658927081743 21 2.6752982586410918 26 18.39800013053058;
createNode animCurveTA -n "animCurveTA1037";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1038";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1039";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1040";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1041";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1042";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1043";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1044";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1045";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1046";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1047";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1048";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1049";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1050";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1051";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1052";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1053";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1054";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1055";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1056";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1057";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 13 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1058";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 13 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1059";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 13 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1060";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1061";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1062";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTL -n "animCurveTL393";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.5198069948790518 26 -0.5198069948790518;
createNode animCurveTL -n "animCurveTL394";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.72394202659893114 26 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL395";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.36439499068905612 26 0.36439499068905612;
createNode animCurveTA -n "animCurveTA1063";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.7976222737965317 26 7.7976222737965317;
createNode animCurveTA -n "animCurveTA1064";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 30.409274105849079 26 30.409274105849079;
createNode animCurveTA -n "animCurveTA1065";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 64.859940280210893 26 64.859940280210893;
createNode animCurveTL -n "animCurveTL396";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.43524234076486068 26 0.43524234076486068;
createNode animCurveTL -n "animCurveTL397";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.82665738350180629 26 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL398";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.27773886459742925 26 0.27773886459742925;
createNode animCurveTA -n "animCurveTA1066";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1067";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -28.652637602052774 26 -28.652637602052774;
createNode animCurveTA -n "animCurveTA1068";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -64.676908227303443 26 -64.676908227303443;
createNode animCurveTL -n "animCurveTL399";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -3.3357627539787296 8 -3.2197397099785019 
		13 -1.2663536723156747 21 -0.095444811986146627 26 0.12358895216672325;
createNode animCurveTL -n "animCurveTL400";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.7113587803638561 8 2.0591705343886462 
		13 1.9616409823944496 21 1.9527749285197455 26 1.6317045839702844;
createNode animCurveTL -n "animCurveTL401";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.0419916249791124 8 2.1253469880949933 
		13 1.5865445241504252 21 1.7021719082567119 26 1.4414346980707915;
createNode animCurveTA -n "animCurveTA1069";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 70.493912470302874 8 5.0164778206082037 
		13 -0.027670429742248925 21 90.567004062276098 26 101.46475417126094;
createNode animCurveTA -n "animCurveTA1070";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 77.251690884783017 8 6.5185324766886712 
		13 16.1989192511369 21 50.839992569764398 26 28.395372336635297;
createNode animCurveTA -n "animCurveTA1071";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 120.90414725668359 8 24.014724161592369 
		13 29.813689415614821 21 101.20805310004904 26 117.2633032991462;
createNode animCurveTL -n "animCurveTL402";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.6276771807420702 8 -1.0029988012975386 
		13 0.68309238637081959 21 0.78800622897805028 26 0.08803531683628292;
createNode animCurveTL -n "animCurveTL403";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.7338786249788518 8 2.1637913216235707 
		13 1.7169629108632507 21 1.6101373901895246 26 1.6134746838515139;
createNode animCurveTL -n "animCurveTL404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.2710824495380373 8 1.8786573408560066 
		13 1.004791603890977 21 0.14647486795596928 26 -0.27786732566679367;
createNode animCurveTA -n "animCurveTA1072";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 59.007910131897106 8 -20.828033249452968 
		13 -29.104170490493544 21 -50.688940308452686 26 -68.663851491472911;
createNode animCurveTA -n "animCurveTA1073";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -71.601588453715053 8 -5.9561083159624797 
		13 -18.835586165549852 21 -0.67656173396370445 26 11.916805987005425;
createNode animCurveTA -n "animCurveTA1074";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -90.779043014820601 8 -20.997729995609479 
		13 -56.424132605779292 21 -61.918346534795297 26 -76.61449596535607;
createNode animCurveTL -n "animCurveTL405";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.80217394619293847 8 0.31054502397108613 
		13 0.31054502397108613 21 0.31054502397108613 26 0.12098856091527502;
createNode animCurveTL -n "animCurveTL406";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.44299574108883399 8 -0.55640530640609931 
		13 -0.55640530640609931 21 -0.55640530640609931 26 -0.77868609900667618;
createNode animCurveTL -n "animCurveTL407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.5412845761155356 8 -0.57914122395678103 
		13 -0.57914122395678103 21 -0.57914122395678103 26 -1.2358054068375008;
createNode animCurveTL -n "animCurveTL408";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.49484451559913967 8 -0.063331173333856433 
		13 -0.063331173333856433 21 -0.75645780713626298 26 -0.75645780713626298;
createNode animCurveTL -n "animCurveTL409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.71931626134224813 8 -0.69960805773293522 
		13 -0.69960805773293522 21 -0.79368011868045951 26 -0.79368011868045951;
createNode animCurveTL -n "animCurveTL410";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.66067307131502628 8 -0.66762598980258558 
		13 -0.66762598980258558 21 -0.92269028705633338 26 -0.92269028705633338;
createNode animCurveTA -n "animCurveTA1075";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.061808866237340665 8 -0.061808866237337522 
		13 -0.061808866237337522 21 -0.061808866237337522 26 -0.061808866237340665;
createNode animCurveTA -n "animCurveTA1076";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -59.058178941076754 8 -59.058178941076754 
		13 -59.058178941076754 21 -59.058178941076754 26 -59.058178941076754;
createNode animCurveTA -n "animCurveTA1077";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 16.57914742975785 8 16.579147429757843 
		13 16.579147429757843 21 16.579147429757843 26 16.57914742975785;
createNode animCurveTA -n "animCurveTA1078";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 12.253734489678925 8 12.253734489678925 
		13 12.253734489678925 21 12.253734489678925 26 12.253734489678925;
createNode animCurveTA -n "animCurveTA1079";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -65.746751280844975 8 -65.746751280844961 
		13 -65.746751280844961 21 -65.746751280844961 26 -65.746751280844975;
createNode animCurveTA -n "animCurveTA1080";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 13 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1081";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 15.711328223519061 8 15.711328223519057 
		13 15.711328223519057 21 15.711328223519057 26 15.711328223519061;
createNode animCurveTA -n "animCurveTA1082";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.5572674112203657 8 8.5572674112203622 
		13 8.5572674112203622 21 8.5572674112203622 26 8.5572674112203657;
createNode animCurveTA -n "animCurveTA1083";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 13 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1084";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 13 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1085";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 13 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1086";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 13 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1087";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 13 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1088";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 13 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1089";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.2533422302317216 8 8.2533422302317216 
		13 8.2533422302317216 21 8.2533422302317216 26 8.2533422302317216;
createNode animCurveTA -n "animCurveTA1090";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 23.263402056531085 8 23.263402056531085 
		13 23.263402056531085 21 23.263402056531085 26 23.263402056531085;
createNode animCurveTA -n "animCurveTA1091";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 20.166277752815617 8 20.166277752815617 
		13 20.166277752815617 21 20.166277752815617 26 20.166277752815617;
createNode animCurveTA -n "animCurveTA1092";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 13 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1093";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 13 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1094";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 33.429092416277157 8 33.429092416277157 
		13 33.429092416277157 21 33.429092416277157 26 33.429092416277157;
createNode animCurveTA -n "animCurveTA1095";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1096";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1097";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1098";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1099";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1100";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 26 13.994403295754109;
createNode animCurveTA -n "animCurveTA1101";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1102";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1103";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 26 13.994403295754109;
createNode animCurveTA -n "animCurveTA1104";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 13 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 13 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 17.254116939558369 8 17.254116939558369 
		13 17.254116939558369 21 17.254116939558369 26 17.254116939558369;
createNode animCurveTA -n "animCurveTA1107";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 13 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1108";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 13 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1109";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 13 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1110";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -4.5029554330710591 8 -18.820843871529618 
		13 -18.820843871529618 21 -18.820843871529618 26 0.65073001024951671;
createNode animCurveTA -n "animCurveTA1111";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.9010361189490672 8 8.442588645585376 
		13 8.442588645585376 21 8.442588645585376 26 4.2368721935960938;
createNode animCurveTA -n "animCurveTA1112";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 13.385293829723333 8 16.699953369662587 
		13 16.699953369662587 21 16.699953369662587 26 8.7398866450636881;
createNode animCurveTA -n "animCurveTA1113";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 -7.1097278539792699 13 -7.1097278539792699 
		21 -7.1097278539792699 26 0;
createNode animCurveTA -n "animCurveTA1114";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 13 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1115";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 13 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1116";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.1931112038439995 8 -21.162236000387367 
		13 -35.947694138711036 21 6.6846441708573288 26 -4.8714700432790465;
createNode animCurveTA -n "animCurveTA1117";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.3695448421264804 8 -30.533730696364689 
		13 -53.148375864032161 21 1.6642147375107919 26 -11.783606204137087;
createNode animCurveTA -n "animCurveTA1118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 23.978753900084683 8 27.115733941721448 
		13 18.52472916311752 21 -0.18392673362642425 26 7.5423825101935931;
createNode animCurveTA -n "animCurveTA1119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.1995832245056772 8 1.8903601258661931 
		13 1.8903601258661931 21 1.8903601258661931 26 1.8903601258661935;
createNode animCurveTA -n "animCurveTA1120";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.2995059565535416 8 -2.5597289571479034 
		13 -2.5597289571479034 21 -2.5597289571479034 26 -2.5597289571479038;
createNode animCurveTA -n "animCurveTA1121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -5.2677132861661731 8 2.016811087403604 
		13 2.016811087403604 21 2.016811087403604 26 2.0168110874036049;
createNode animCurveTA -n "animCurveTA1122";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 13 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 13 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.080064458283051 8 27.080064458283051 
		13 27.080064458283051 21 27.080064458283051 26 27.080064458283051;
createNode animCurveTA -n "animCurveTA1125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 10.423754966968488 8 10.423754966968488 
		13 10.423754966968488 21 10.423754966968488 26 10.423754966968488;
createNode animCurveTA -n "animCurveTA1126";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.7228482558439 8 27.722848255843903 
		13 27.722848255843903 21 27.722848255843903 26 27.7228482558439;
createNode animCurveTA -n "animCurveTA1127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 21.576484776388224 8 21.576484776388227 
		13 21.576484776388227 21 21.576484776388227 26 21.576484776388224;
createNode animCurveTA -n "animCurveTA1128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 13 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 13 0 21 0 26 0;
createNode animCurveTA -n "animCurveTA1130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.911632519594587 8 27.911632519594587 
		13 27.911632519594587 21 27.911632519594587 26 27.911632519594587;
createNode clipLibrary -n "clipLibrary3";
	setAttr -s 162 ".cel[0].cev";
createNode clipLibrary -n "clipLibrary4";
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
	setAttr -s 3 ".sol";
connectAttr "hom_get_out_of_car.st" "clipLibrary3.st[0]";
connectAttr "hom_get_out_of_car.du" "clipLibrary3.du[0]";
connectAttr "animCurveTL370.a" "clipLibrary3.cel[0].cev[0].cevr";
connectAttr "animCurveTL371.a" "clipLibrary3.cel[0].cev[1].cevr";
connectAttr "animCurveTL372.a" "clipLibrary3.cel[0].cev[2].cevr";
connectAttr "animCurveTL373.a" "clipLibrary3.cel[0].cev[3].cevr";
connectAttr "animCurveTL374.a" "clipLibrary3.cel[0].cev[4].cevr";
connectAttr "animCurveTA1018.a" "clipLibrary3.cel[0].cev[5].cevr";
connectAttr "animCurveTU9.a" "clipLibrary3.cel[0].cev[6].cevr";
connectAttr "animCurveTU10.a" "clipLibrary3.cel[0].cev[7].cevr";
connectAttr "animCurveTU11.a" "clipLibrary3.cel[0].cev[8].cevr";
connectAttr "animCurveTU12.a" "clipLibrary3.cel[0].cev[9].cevr";
connectAttr "animCurveTU13.a" "clipLibrary3.cel[0].cev[10].cevr";
connectAttr "animCurveTU14.a" "clipLibrary3.cel[0].cev[11].cevr";
connectAttr "animCurveTU15.a" "clipLibrary3.cel[0].cev[12].cevr";
connectAttr "animCurveTU16.a" "clipLibrary3.cel[0].cev[13].cevr";
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
connectAttr "hom_get_out_of_car.st" "clipLibrary4.st[0]";
connectAttr "hom_get_out_of_car.du" "clipLibrary4.du[0]";
connectAttr "animCurveTL370.a" "clipLibrary4.cel[0].cev[0].cevr";
connectAttr "animCurveTL371.a" "clipLibrary4.cel[0].cev[1].cevr";
connectAttr "animCurveTL372.a" "clipLibrary4.cel[0].cev[2].cevr";
connectAttr "animCurveTL373.a" "clipLibrary4.cel[0].cev[3].cevr";
connectAttr "animCurveTL374.a" "clipLibrary4.cel[0].cev[4].cevr";
connectAttr "animCurveTA1018.a" "clipLibrary4.cel[0].cev[5].cevr";
connectAttr "animCurveTU9.a" "clipLibrary4.cel[0].cev[6].cevr";
connectAttr "animCurveTU10.a" "clipLibrary4.cel[0].cev[7].cevr";
connectAttr "animCurveTU11.a" "clipLibrary4.cel[0].cev[8].cevr";
connectAttr "animCurveTU12.a" "clipLibrary4.cel[0].cev[9].cevr";
connectAttr "animCurveTU13.a" "clipLibrary4.cel[0].cev[10].cevr";
connectAttr "animCurveTU14.a" "clipLibrary4.cel[0].cev[11].cevr";
connectAttr "animCurveTU15.a" "clipLibrary4.cel[0].cev[12].cevr";
connectAttr "animCurveTU16.a" "clipLibrary4.cel[0].cev[13].cevr";
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
// End of hom-m_get_out_of_car.ma
