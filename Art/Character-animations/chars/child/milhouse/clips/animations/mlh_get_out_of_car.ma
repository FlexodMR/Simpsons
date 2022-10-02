//Maya ASCII 4.0 scene
//Name: mlh_get_out_of_car.ma
//Last modified: Tue, Jun 25, 2002 02:25:14 PM
requires maya "4.0";
requires "p3dSimpleShader" "17.1";
requires "p3dmayaexp" "17.7";
requires "p3dDeformer" "17.1.0.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mlh_get_out_of_carSource";
	setAttr ".ihi" 0;
	setAttr ".du" 25;
	setAttr ".ci" no;
createNode animCurveTL -n "mlh_Extra_Attributes_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTL -n "mlh_Extra_Attributes_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 1.0193734309499074 1 0.87862007779132723 
		2 0.7273730413474766 3 0.59711338793371949 4 0.5193221838654194 5 0.49330203171894005 
		6 0.48211762013111498 7 0.46289161148962776 8 0.42822063634384022 9 0.38800180254446515 
		10 0.34530848843121253 11 0.30321407234379266 12 0.26224070577113451 13 0.2205107856207433 
		14 0.17749805836019303 15 0.12949799601245934 16 0.080215123039173677 17 
		0.040236764565893902 18 0.012876829861136479 19 -0.0080358720794682058 20 
		-0.026141666539691265 21 -0.045080878803303789 22 -0.065317720198107165 23 
		-0.08507953114980181 24 -0.1046513305890074 25 -0.1243181374463436;
createNode animCurveTL -n "Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0.73464803202924611 1 0.71235904529498895 
		2 0.72240105300187618 3 0.74673776252666646 4 0.76733288124611776 5 0.78958526946601293 
		6 0.81587411476261451 7 0.82363361541840074 8 0.80683636113012225 9 0.77791050374143833 
		10 0.74197358475519071 11 0.70414314567422087 12 0.65981100572762463 13 0.60907999137477331 
		14 0.56413415496392194 15 0.5283339127519997 16 0.49831884571291901 17 0.47619175327041019 
		18 0.46171032405165668 19 0.45218738107592282 20 0.44605842535506063 21 0.44175895790092201 
		22 0.43990984934878263 23 0.44099947571115949 24 0.44326459606576613 25 0.44494196949031628;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 1 -20.646953523492886 2 -42.35189430741061 
		3 -61.940858866845609 4 -76.239883716890361 5 -84.907603733548839 6 -90.292752141812898 
		7 -93.256512980256716 8 -94.660070287454502 9 -95.364608101980465 10 -95.886252543140102 
		11 -96.182548324614316 12 -96.27680737654039 13 -96.192341629055619 14 -95.952463012297301 
		15 -95.580483456402717 16 -95.09971489150918 17 -94.533469247753985 18 -93.905058455274414 
		19 -93.237794444207765 20 -92.554989144691348 21 -91.879954486862431 22 -91.236002400858325 
		23 -90.646444816816327 24 -90.134593664873734 25 -89.723760875167827;
createNode animCurveTU -n "mlh_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTU -n "mlh_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTU -n "mlh_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTU -n "mlh_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTU -n "mlh_Hoop_Root_IK_FK_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTU -n "mlh_Hoop_Root_IK_FK_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTU -n "mlh_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 1;
createNode animCurveTU -n "mlh_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 1;
createNode animCurveTA -n "mlh_Hoop_Root_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_Hoop_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_Hoop_Root_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTL -n "mlh_Hoop_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTL -n "mlh_Hoop_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTL -n "mlh_Hoop_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTL -n "animCurveTL132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.867784314272809 4 0.94689725374252132 
		7 0.94689725374252132 11 0.94689725374252132 14 0.70050947095039451 17 0.18912470714979496 
		21 -0.12723102470459602 25 -0.12723102470459602;
createNode animCurveTL -n "animCurveTL133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.89009961395345705 4 0.87393082863301275 
		7 0.87393082863301275 11 0.87393082863301275 14 0.87393082863301275 17 0.3396682222301754 
		21 0.15873888513822235 25 0.15873888513822235;
createNode animCurveTL -n "animCurveTL134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.0769609843387942 4 1.4008413676828351 
		7 1.4008413676828351 11 1.4008413676828351 14 1.1758031377859479 17 0.81488226883701087 
		21 0.72810231057739006 25 0.72810231057739006;
createNode animCurveTA -n "animCurveTA356";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -28.33147073208438 4 -16.960193642026439 
		7 182.28664988247439 11 180.3945942207778 14 230.79737028052352 17 250.79806961248113 
		21 177.16347266714416 25 174.08624265487845;
createNode animCurveTA -n "animCurveTA357";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -10.113681911874204 4 -74.92658449590833 
		7 -86.866181279295517 11 -71.535483966591897 14 -71.53548396659194 17 -64.253519059541702 
		21 -62.900395087675044 25 -77.361573251038095;
createNode animCurveTA -n "animCurveTA358";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 3.6896128937020114 4 32.768537079786768 
		7 -174.8203434432703 11 -172.91139054662753 14 -172.91139054662756 17 -194.32374451309536 
		21 -175.9767866827282 25 -172.73088895567136;
createNode animCurveTL -n "animCurveTL135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.3060948547374549 4 1.3285178253405563 
		7 1.3285178253405563 11 0.61915846937113006 14 0.044494792875415738 17 -0.16956905984264883 
		21 -0.16956905984264883 25 -0.16956905984264883;
createNode animCurveTL -n "animCurveTL136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.87347624816498559 4 0.88812050520532582 
		7 0.88812050520532582 11 0.99724782237337128 14 0.66577455587194778 17 0.17585359884449708 
		21 0.17585359884449708 25 0.1717678717874474;
createNode animCurveTL -n "animCurveTL137";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.0375250222419705 4 2.0547095591887636 
		7 2.0547095591887636 11 1.5898213882858157 14 1.1698190867505571 17 1.097427438237216 
		21 1.097427438237216 25 1.097427438237216;
createNode animCurveTA -n "animCurveTA359";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -27.647037481197394 4 -63.813136993340976 
		7 -63.813136993340976 11 -132.08424864088158 14 -132.08424864088158 17 -180.00903817791644 
		21 -172.22445507695573 25 -375.98082634113621;
createNode animCurveTA -n "animCurveTA360";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.6471102606573029 4 -61.971177657132849 
		7 -61.971177657132849 11 -70.520460291894921 14 -70.520460291894921 17 -70.52046029189485 
		21 -101.54505907997235 25 -91.029007103502892;
createNode animCurveTA -n "animCurveTA361";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 7.792214191643251 4 74.294373877892141 
		7 74.294373877892141 11 172.53814334752133 14 172.53814334752133 17 172.53814334752136 
		21 172.51486781013736 25 374.00706426405969;
createNode animCurveTA -n "mlh_Right_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_Right_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_Right_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_Left_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_Left_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_Left_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_Right_Toe_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_Right_Toe_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_Right_Toe_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_Left_Toe_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_Left_Toe_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_Left_Toe_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTL -n "animCurveTL138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTL -n "animCurveTL139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTL -n "animCurveTL140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 4 1 7 1 11 1 14 1 17 1 21 1 
		25 1;
createNode animCurveTL -n "animCurveTL141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTL -n "animCurveTL142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTL -n "animCurveTL143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 4 1 7 1 11 1 14 1 17 1 21 1 
		25 1;
createNode animCurveTL -n "animCurveTL144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.0861514784787571 4 1.0627947607660375 
		7 0.94730938669320153 11 0.62052871510112151 14 0.36325042975680771 17 0.082344686784823706 
		21 -0.092258184401566301 25 -0.25441752586561134;
	setAttr -s 8 ".kit[1:7]"  1 9 9 9 9 9 9;
	setAttr -s 8 ".kot[1:7]"  1 9 9 9 9 9 9;
	setAttr -s 8 ".kix[1:7]"  0.0039665144868195057 0.0052757859230041504 
		0.0039949985221028328 0.0037161754444241524 0.0051224115304648876 0.0079182963818311691 
		0.0082220863550901413;
	setAttr -s 8 ".kiy[1:7]"  -0.99999213218688965 -0.99998611211776733 
		-0.9999920129776001 -0.99999308586120605 -0.99998688697814941 -0.99996864795684814 
		-0.99996620416641235;
	setAttr -s 8 ".kox[1:7]"  0.0039664651267230511 0.0052757859230041504 
		0.0039949985221028328 0.0037161754444241524 0.0051224115304648876 0.0079182963818311691 
		0.0082220863550901413;
	setAttr -s 8 ".koy[1:7]"  -0.99999213218688965 -0.99998611211776733 
		-0.9999920129776001 -0.99999308586120605 -0.99998688697814941 -0.99996864795684814 
		-0.99996620416641235;
createNode animCurveTL -n "animCurveTL145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.296696676473504 4 1.5800634010263139 
		7 1.4283015669350549 11 1.6065847288354993 14 1.4111637451372558 17 0.91024044336358789 
		21 0.73150521837572424 25 0.9131651970449548;
createNode animCurveTL -n "animCurveTL146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.5034599015899144 4 1.5703495658163922 
		7 1.6855692255278485 11 1.4410315393840629 14 1.154502624559951 17 0.97452817580182205 
		21 0.90406133334029404 25 0.91057537827380008;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0.0036629047244787216 0.012811765074729919 
		0.018040435388684273 0.0043936311267316341 0.0042871753685176373 0.0093164825811982155 
		0.04166121780872345 0.20052830874919891;
	setAttr -s 8 ".kiy[0:7]"  -0.99999326467514038 0.99991792440414429 
		-0.99983727931976318 -0.99999034404754639 -0.99999082088470459 -0.99995660781860352 
		-0.99913179874420166 0.97968792915344238;
	setAttr -s 8 ".kox[0:7]"  0.0036629377864301205 0.012811765074729919 
		0.018040435388684273 0.0043936311267316341 0.0042871753685176373 0.0093164825811982155 
		0.04166121780872345 0.20052830874919891;
	setAttr -s 8 ".koy[0:7]"  -0.99999326467514038 0.99991792440414429 
		-0.99983727931976318 -0.99999034404754639 -0.99999082088470459 -0.99995660781860352 
		-0.99913179874420166 0.97968792915344238;
createNode animCurveTA -n "animCurveTA374";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -14.532001338790588 4 3.7661810482217493 
		7 -10.469953380440861 11 -10.469953380440861 14 -13.69789386666127 17 -10.625395277676512 
		21 0.77176251165334064 25 6.4770403396181893;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0.98627626895904541 0.95680898427963257 
		0.68455785512924194 0.97206664085388184 0.99990803003311157 0.67862015962600708 
		0.66623026132583618 0.80122160911560059;
	setAttr -s 8 ".kiy[0:7]"  -0.16510342061519623 0.29071730375289917 
		-0.72895854711532593 -0.23470489680767059 -0.013563617132604122 0.73448938131332397 
		0.74574607610702515 0.59836769104003906;
	setAttr -s 8 ".kox[0:7]"  0.98627626895904541 0.95680898427963257 
		0.68455785512924194 0.97206664085388184 0.99990803003311157 0.67862015962600708 
		0.66623026132583618 0.80122160911560059;
	setAttr -s 8 ".koy[0:7]"  -0.16510342061519623 0.29071730375289917 
		-0.72895854711532593 -0.23470489680767059 -0.013563617132604122 0.73448938131332397 
		0.74574607610702515 0.59836769104003906;
createNode animCurveTA -n "animCurveTA375";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 -58.688657075647072 7 -80.122988266435783 
		11 -91.455277056608281 14 -94.919953029879466 17 -88.999041530540595 21 -90.901435589138757 
		25 -78.954529439779762;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0.79438215494155884 0.16458085179328918 
		0.37777307629585266 0.67039716243743896 0.97779011726379395 0.957672119140625 
		0.83560234308242798 0.53872430324554443;
	setAttr -s 8 ".kiy[0:7]"  -0.60741829872131348 -0.98636358976364136 
		-0.92589819431304932 -0.74200248718261719 0.20958636701107025 0.28786128759384155 
		0.5493348240852356 0.84248208999633789;
	setAttr -s 8 ".kox[0:7]"  0.79438215494155884 0.16458085179328918 
		0.37777307629585266 0.67039716243743896 0.97779011726379395 0.957672119140625 
		0.83560234308242798 0.53872430324554443;
	setAttr -s 8 ".koy[0:7]"  -0.60741829872131348 -0.98636358976364136 
		-0.92589819431304932 -0.74200248718261719 0.20958636701107025 0.28786128759384155 
		0.5493348240852356 0.84248208999633789;
createNode animCurveTA -n "animCurveTA376";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 -4.8582966844671525 7 15.12132485469952 
		11 15.12132485469952 14 17.280110661791646 17 15.46623826768727 21 6.291271291041979 
		25 3.0300237053302275;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0.70649063587188721 0.66236424446105957 
		0.5561181902885437 0.98721218109130859 0.99954730272293091 0.77252364158630371 
		0.77556395530700684 0.91970193386077881;
	setAttr -s 8 ".kiy[0:7]"  -0.70772236585617065 0.74918198585510254 
		0.83110320568084717 0.15941186249256134 0.030085748061537743 -0.63498604297637939 
		-0.63126897811889648 -0.39261737465858459;
	setAttr -s 8 ".kox[0:7]"  0.70649063587188721 0.66236424446105957 
		0.5561181902885437 0.98721218109130859 0.99954730272293091 0.77252364158630371 
		0.77556395530700684 0.91970193386077881;
	setAttr -s 8 ".koy[0:7]"  -0.70772236585617065 0.74918198585510254 
		0.83110320568084717 0.15941186249256134 0.030085748061537743 -0.63498604297637939 
		-0.63126897811889648 -0.39261737465858459;
createNode animCurveTA -n "mlh_R_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_R_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_R_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_R_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_R_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_R_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_R_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_R_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_R_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_R_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_L_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_L_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_L_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_L_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_L_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_L_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_L_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_L_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_L_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_L_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_R_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_R_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_R_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA400";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  11 0 14 0 17 0;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA401";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  11 0 14 0 17 0;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA402";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  11 0 14 -24.501661700242042 17 
		0;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kox[0:2]"  0.29982760548591614 1 1;
	setAttr -s 3 ".koy[0:2]"  -0.95399338006973267 0 0;
createNode animCurveTL -n "mlh_Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 -0.43524234076486068;
createNode animCurveTL -n "mlh_Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 -0.82665738350180629;
createNode animCurveTL -n "mlh_Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0.27773886459742925;
createNode animCurveTA -n "mlh_Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 28.652637602052774;
createNode animCurveTA -n "mlh_Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 64.676908227303443;
createNode animCurveTL -n "mlh_Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0.5198069948790518;
createNode animCurveTL -n "mlh_Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 -0.72394202659893114;
createNode animCurveTL -n "mlh_Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0.36439499068905612;
createNode animCurveTA -n "mlh_Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 7.7976222737965317;
createNode animCurveTA -n "mlh_Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 -30.409274105849079;
createNode animCurveTA -n "mlh_Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 -64.859940280210893;
createNode animCurveTL -n "animCurveTL153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.523942799853089 4 1.5978813836723884 
		7 1.5978813836723884 11 1.5978813836723884 14 1.3555639106157837 17 0.23715197332405485 
		21 -0.20686703802569276 25 -0.24094058915794578;
createNode animCurveTL -n "animCurveTL154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.7845883259061959 4 2.8408765577530732 
		7 2.8408765577530732 11 2.8408765577530732 14 2.7943870605851417 17 1.2931393749628328 
		21 0.86429025933785097 25 1.1298889145633915;
createNode animCurveTL -n "animCurveTL155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.3761223177317867 4 1.4295241378294861 
		7 1.4295241378294861 11 1.4295241378294861 14 1.2399801124418155 17 0.7092364912735708 
		21 0.66494359305428608 25 0.73232309345356994;
createNode animCurveTA -n "animCurveTA409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -33.734888782993899 4 70.181936182394736 
		7 107.8539119106286 11 107.8539119106286 14 151.50871044916556 17 98.218124130258488 
		21 205.14412021846877 25 261.7260243159331;
createNode animCurveTA -n "animCurveTA410";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 14.870586397896899 4 -52.579560191702704 
		7 -44.835274258592719 11 -44.835274258592719 14 3.3718379670926208 17 -62.746410031697302 
		21 -34.518804273224596 25 -45.008042607101586;
createNode animCurveTA -n "animCurveTA411";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 30.592169336881899 4 -101.10719102547723 
		7 -78.594406664262564 11 -78.594406664262564 14 -144.76315874735317 17 -117.79969677687258 
		21 -214.87632071780322 25 -265.6340570691703;
createNode animCurveTL -n "animCurveTL156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 4.0284850094086249 4 1.5654982774620061 
		7 2.1730793537820876 11 0.99927574252601337 14 -0.67041724915059886 17 -0.22676280663035264 
		21 -0.22676280663035264 25 -0.30749701812507962;
createNode animCurveTL -n "animCurveTL157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.8767468197018944 4 2.5364741590883408 
		7 2.3267943788742373 11 2.6362440668126719 14 2.4712138041509037 17 1.1452021334425275 
		21 0.96543102456641128 25 1.1104776614679435;
createNode animCurveTL -n "animCurveTL158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.4869335592373649 4 3.3341282331332671 
		7 3.5058148583990389 11 3.3178884441090282 14 2.2202825368382322 17 2.4198425681324682 
		21 2.135544174114905 25 2.227748899304375;
createNode animCurveTA -n "animCurveTA412";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -26.203413720634725 4 -176.4316599345523 
		7 -204.64950171984853 11 -204.64950171984853 14 -214.72327328141861 17 -214.72327328141861 
		21 -234.79983811622304 25 -273.44301664312098;
createNode animCurveTA -n "animCurveTA413";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -14.791961579779638 4 -47.930996865134397 
		7 -72.766780684505136 11 -72.766780684505136 14 -41.558302929683045 17 -41.558302929683045 
		21 -68.377211838949222 25 -27.753397523637741;
createNode animCurveTA -n "animCurveTA414";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -45.895436695401962 4 144.74077881333704 
		7 174.93586962421051 11 174.93586962421051 14 167.11776635264738 17 167.11776635264738 
		21 236.74369125558539 25 266.95918275971843;
createNode animCurveTL -n "animCurveTL159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.063331173333856433 4 0.66768647579175422 
		7 0.66768647579175422 11 0.66768647579175422 14 0.66768647579175422 17 0.66768647579175422 
		21 0.66768647579175422 25 0.66768647579175422;
createNode animCurveTL -n "animCurveTL160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.69960805773293522 4 -0.67301253925255977 
		7 -0.67301253925255977 11 -0.67301253925255977 14 -0.67301253925255977 17 
		-0.67301253925255977 21 -0.67301253925255977 25 -0.67301253925255977;
createNode animCurveTL -n "animCurveTL161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.66762598980258558 4 -0.49850301940481012 
		7 -0.49850301940481012 11 -0.49850301940481012 14 -0.49850301940481012 17 
		-0.49850301940481012 21 -0.49850301940481012 25 -0.49850301940481012;
createNode animCurveTL -n "animCurveTL162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.31054502397108613 4 -0.31054502397108613 
		7 -0.31054502397108613 11 -0.31054502397108613 14 -0.31054502397108613 17 
		-0.31054502397108613 21 -0.31054502397108613 25 -0.31054502397108613;
createNode animCurveTL -n "animCurveTL163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.55640530640609931 4 -0.55640530640609931 
		7 -0.55640530640609931 11 -0.55640530640609931 14 -0.55640530640609931 17 
		-0.55640530640609931 21 -0.55640530640609931 25 -0.55640530640609931;
createNode animCurveTL -n "animCurveTL164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.57914122395678103 4 -0.57914122395678103 
		7 -0.57914122395678103 11 -0.57914122395678103 14 -0.57914122395678103 17 
		-0.57914122395678103 21 -0.57914122395678103 25 -0.57914122395678103;
createNode animCurveTA -n "animCurveTA415";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 12.253734489678925 4 12.253734489678925 
		7 12.253734489678925 11 12.253734489678925 14 12.253734489678925 17 12.253734489678925 
		21 12.253734489678925 25 12.253734489678925;
createNode animCurveTA -n "animCurveTA416";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -65.746751280844961 4 -65.746751280844961 
		7 -65.746751280844961 11 -65.746751280844961 14 -65.746751280844961 17 -65.746751280844961 
		21 -65.746751280844961 25 -65.746751280844975;
createNode animCurveTA -n "animCurveTA417";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA418";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.061808866237337522 4 -0.061808866237337522 
		7 -0.061808866237337522 11 -0.061808866237337522 14 -0.061808866237337522 
		17 -0.061808866237337522 21 -0.061808866237337522 25 -0.061808866237340665;
createNode animCurveTA -n "animCurveTA419";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -59.058178941076754 4 -59.058178941076754 
		7 -59.058178941076754 11 -59.058178941076754 14 -59.058178941076754 17 -59.058178941076754 
		21 -59.058178941076754 25 -59.058178941076754;
createNode animCurveTA -n "animCurveTA420";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 16.579147429757843 4 16.579147429757843 
		7 16.579147429757843 11 16.579147429757843 14 16.579147429757843 17 16.579147429757843 
		21 16.579147429757843 25 16.57914742975785;
createNode animCurveTA -n "animCurveTA421";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 8.5572674112203622 4 8.5572674112203622 
		7 8.5572674112203622 11 8.5572674112203622 14 8.5572674112203622 17 8.5572674112203622 
		21 8.5572674112203622 25 8.5572674112203639;
createNode animCurveTA -n "animCurveTA422";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 15.711328223519057 4 15.711328223519057 
		7 15.711328223519057 11 15.711328223519057 14 15.711328223519057 17 15.711328223519057 
		21 15.711328223519057 25 15.711328223519061;
createNode animCurveTA -n "animCurveTA423";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA424";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA425";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA426";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA427";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA428";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "mlh_Thumb_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 143.71460997127252;
createNode animCurveTA -n "mlh_Thumb_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 27.804554996454378;
createNode animCurveTA -n "mlh_Thumb_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 29.452980944098744;
createNode animCurveTA -n "animCurveTA432";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA433";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA434";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 27.080064458283051 4 27.080064458283051 
		7 27.080064458283051 11 27.080064458283051 14 27.080064458283051 17 27.080064458283051 
		21 27.080064458283051 25 27.080064458283051;
createNode animCurveTA -n "mlh_Pelvis_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_Pelvis_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_Pelvis_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_Thumb_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_Thumb_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_Thumb_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mlh_Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 13.994403295754109;
createNode animCurveTA -n "animCurveTA444";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA445";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA446";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 27.911632519594587 4 27.911632519594587 
		7 27.911632519594587 11 27.911632519594587 14 27.911632519594587 17 27.911632519594587 
		21 27.911632519594587 25 27.911632519594587;
createNode animCurveTA -n "animCurveTA447";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA448";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA449";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA450";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.3731006602189262 4 -0.5125330584386516 
		7 -0.5125330584386516 11 -0.5125330584386516 14 -0.5125330584386516 17 -0.5125330584386516 
		21 -0.5125330584386516 25 -0.65073001024951671;
createNode animCurveTA -n "animCurveTA451";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.38374158911587303 4 -1.2966697574980743 
		7 -1.2966697574980743 11 -1.2966697574980743 14 -1.2966697574980743 17 -1.2966697574980743 
		21 -1.2966697574980743 25 -4.2368721935960938;
createNode animCurveTA -n "animCurveTA452";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.96901743689791309 4 2.3808668204454095 
		7 2.3808668204454095 11 2.3808668204454095 14 2.3808668204454095 17 2.3808668204454095 
		21 2.3808668204454095 25 2.6995264082587447;
createNode animCurveTA -n "animCurveTA453";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -2.2144674450583466 4 3.9388735369945089 
		7 3.9388735369945089 11 3.9388735369945089 14 3.9388735369945089 17 3.9388735369945089 
		21 3.9388735369945089 25 0;
createNode animCurveTA -n "animCurveTA454";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -5.36423803921525 4 -1.8242021628094227 
		7 -1.8242021628094227 11 -1.8242021628094227 14 -1.8242021628094227 17 -1.8242021628094227 
		21 -1.8242021628094227 25 0;
createNode animCurveTA -n "animCurveTA455";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -10.223981770737328 4 -3.4768422591718746 
		7 -3.4768422591718746 11 -3.4768422591718746 14 -3.4768422591718746 17 -3.4768422591718746 
		21 -3.4768422591718746 25 0;
createNode animCurveTA -n "animCurveTA456";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 4.9690701715193724 4 18.227895121262321 
		7 20.079666981784221 11 20.079666981784221 14 5.8608359898415125 17 3.5619792782331539 
		21 6.0801195962680348 25 0;
createNode animCurveTA -n "animCurveTA457";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -2.9904681746768538 4 24.568711757781031 
		7 37.907702210127042 11 37.907702210127042 14 13.003644464628529 17 7.124496941251798 
		21 8.8128055601634792 25 -5.2836650271627628;
createNode animCurveTA -n "animCurveTA458";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 16.853052292944845 4 19.554807394277454 
		7 18.290548424100457 11 18.290548424100457 14 17.422820322901881 17 19.447287841734912 
		21 27.939444328551787 25 6.6786334979782911;
createNode animCurveTA -n "animCurveTA459";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.211833892135727 4 -0.42646470921519353 
		7 -0.42646470921519353 11 -0.42646470921519353 14 -0.42646470921519353 17 
		-0.42646470921519353 21 -0.42646470921519353 25 -1.8903601258661935;
createNode animCurveTA -n "animCurveTA460";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.708673036061555 4 1.9530231234413618 
		7 1.9530231234413618 11 1.9530231234413618 14 1.9530231234413618 17 1.9530231234413618 
		21 1.9530231234413618 25 2.5597289571479038;
createNode animCurveTA -n "animCurveTA461";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.7082804953288209 4 2.4049685598947645 
		7 2.4049685598947645 11 2.4049685598947645 14 2.4049685598947645 17 2.4049685598947645 
		21 2.4049685598947645 25 2.0168110874036049;
createNode animCurveTA -n "animCurveTA462";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA463";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA464";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 33.429092416277157 4 33.429092416277157 
		7 33.429092416277157 11 33.429092416277157 14 33.429092416277157 17 33.429092416277157 
		21 33.429092416277157 25 33.429092416277157;
createNode animCurveTA -n "mlh_Thumb_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 106.91515461315004;
createNode animCurveTA -n "mlh_Thumb_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 28.612774017129322;
createNode animCurveTA -n "mlh_Thumb_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 17.632837226638053;
createNode animCurveTA -n "animCurveTA468";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA469";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA470";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 17.254116939558369 4 17.254116939558369 
		7 17.254116939558369 11 17.254116939558369 14 17.254116939558369 17 17.254116939558369 
		21 17.254116939558369 25 17.254116939558369;
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
	setAttr -s 51 ".lnk";
select -ne :time1;
	setAttr ".o" 25;
select -ne :renderPartition;
	setAttr -s 51 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 51 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 14 ".u";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 14 ".tx";
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
	setAttr -s 678 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".top" 478;
	setAttr ".rght" 638;
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
connectAttr "mlh_get_out_of_carSource.st" "clipLibrary1.st[0]";
connectAttr "mlh_get_out_of_carSource.du" "clipLibrary1.du[0]";
connectAttr "mlh_Extra_Attributes_translateX.a" "clipLibrary1.cel[0].cev[0].cevr"
		;
connectAttr "mlh_Extra_Attributes_translateY.a" "clipLibrary1.cel[0].cev[1].cevr"
		;
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "mlh_Hoop_Root_IK_FK_RFoot.a" "clipLibrary1.cel[0].cev[6].cevr"
		;
connectAttr "mlh_Hoop_Root_IK_FK_LFoot.a" "clipLibrary1.cel[0].cev[7].cevr"
		;
connectAttr "mlh_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary1.cel[0].cev[8].cevr"
		;
connectAttr "mlh_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary1.cel[0].cev[9].cevr"
		;
connectAttr "mlh_Hoop_Root_IK_FK_RArm.a" "clipLibrary1.cel[0].cev[10].cevr"
		;
connectAttr "mlh_Hoop_Root_IK_FK_LArm.a" "clipLibrary1.cel[0].cev[11].cevr"
		;
connectAttr "mlh_Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary1.cel[0].cev[12].cevr"
		;
connectAttr "mlh_Hoop_Root_IK_Body_IK_World_LArm.a" "clipLibrary1.cel[0].cev[13].cevr"
		;
connectAttr "mlh_Hoop_Root_rotateX.a" "clipLibrary1.cel[0].cev[14].cevr"
		;
connectAttr "mlh_Hoop_Root_rotateY.a" "clipLibrary1.cel[0].cev[15].cevr"
		;
connectAttr "mlh_Hoop_Root_rotateZ.a" "clipLibrary1.cel[0].cev[16].cevr"
		;
connectAttr "mlh_Hoop_Root_translateX.a" "clipLibrary1.cel[0].cev[17].cevr"
		;
connectAttr "mlh_Hoop_Root_translateY.a" "clipLibrary1.cel[0].cev[18].cevr"
		;
connectAttr "mlh_Hoop_Root_translateZ.a" "clipLibrary1.cel[0].cev[19].cevr"
		;
connectAttr "animCurveTL132.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL133.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL134.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA356.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA357.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA358.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL135.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL136.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL137.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA359.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA360.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA361.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "mlh_Right_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[32].cevr"
		;
connectAttr "mlh_Right_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[33].cevr"
		;
connectAttr "mlh_Right_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[34].cevr"
		;
connectAttr "mlh_Left_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[35].cevr"
		;
connectAttr "mlh_Left_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[36].cevr"
		;
connectAttr "mlh_Left_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[37].cevr"
		;
connectAttr "mlh_Right_Toe_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[38].cevr"
		;
connectAttr "mlh_Right_Toe_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[39].cevr"
		;
connectAttr "mlh_Right_Toe_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[40].cevr"
		;
connectAttr "mlh_Left_Toe_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[41].cevr"
		;
connectAttr "mlh_Left_Toe_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[42].cevr"
		;
connectAttr "mlh_Left_Toe_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[43].cevr"
		;
connectAttr "animCurveTL138.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL139.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL140.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL141.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL142.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL143.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL144.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL145.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL146.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA374.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA375.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA376.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "mlh_R_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "mlh_R_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "mlh_R_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "mlh_R_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[59].cevr"
		;
connectAttr "mlh_R_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[60].cevr"
		;
connectAttr "mlh_R_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[61].cevr"
		;
connectAttr "mlh_R_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[62].cevr"
		;
connectAttr "mlh_R_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[63].cevr"
		;
connectAttr "mlh_R_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[64].cevr"
		;
connectAttr "mlh_R_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[65].cevr"
		;
connectAttr "mlh_L_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "mlh_L_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "mlh_L_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "mlh_L_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[69].cevr"
		;
connectAttr "mlh_L_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[70].cevr"
		;
connectAttr "mlh_L_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[71].cevr"
		;
connectAttr "mlh_L_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[72].cevr"
		;
connectAttr "mlh_L_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[73].cevr"
		;
connectAttr "mlh_L_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[74].cevr"
		;
connectAttr "mlh_L_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[75].cevr"
		;
connectAttr "mlh_R_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[76].cevr"
		;
connectAttr "mlh_R_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[77].cevr"
		;
connectAttr "mlh_R_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[78].cevr"
		;
connectAttr "animCurveTA400.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA401.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA402.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "mlh_Right_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[82].cevr"
		;
connectAttr "mlh_Right_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[83].cevr"
		;
connectAttr "mlh_Right_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[84].cevr"
		;
connectAttr "mlh_Right_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[85].cevr"
		;
connectAttr "mlh_Right_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[86].cevr"
		;
connectAttr "mlh_Right_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[87].cevr"
		;
connectAttr "mlh_Left_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[88].cevr"
		;
connectAttr "mlh_Left_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[89].cevr"
		;
connectAttr "mlh_Left_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[90].cevr"
		;
connectAttr "mlh_Left_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[91].cevr"
		;
connectAttr "mlh_Left_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[92].cevr"
		;
connectAttr "mlh_Left_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[93].cevr"
		;
connectAttr "animCurveTL153.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL154.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL155.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA409.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA410.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA411.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL156.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL157.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL158.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA412.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA413.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA414.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL159.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL160.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL161.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL162.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL163.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL164.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA415.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA416.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA417.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA418.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA419.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA420.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA421.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA422.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA423.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA424.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA425.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA426.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA427.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA428.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "mlh_Thumb_Base_L_rotateX.a" "clipLibrary1.cel[0].cev[126].cevr"
		;
connectAttr "mlh_Thumb_Base_L_rotateY.a" "clipLibrary1.cel[0].cev[127].cevr"
		;
connectAttr "mlh_Thumb_Base_L_rotateZ.a" "clipLibrary1.cel[0].cev[128].cevr"
		;
connectAttr "animCurveTA432.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA433.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA434.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "mlh_Pelvis_rotateX.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "mlh_Pelvis_rotateY.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "mlh_Pelvis_rotateZ.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "mlh_Thumb_R_rotateX.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "mlh_Thumb_R_rotateY.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "mlh_Thumb_R_rotateZ.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "mlh_Thumb_L_rotateX.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "mlh_Thumb_L_rotateY.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "mlh_Thumb_L_rotateZ.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA444.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA445.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA446.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA447.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA448.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA449.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA450.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA451.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA452.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA453.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA454.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA455.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA456.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA457.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA458.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA459.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA460.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA461.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA462.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA463.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA464.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "mlh_Thumb_Base_R_rotateX.a" "clipLibrary1.cel[0].cev[162].cevr"
		;
connectAttr "mlh_Thumb_Base_R_rotateY.a" "clipLibrary1.cel[0].cev[163].cevr"
		;
connectAttr "mlh_Thumb_Base_R_rotateZ.a" "clipLibrary1.cel[0].cev[164].cevr"
		;
connectAttr "animCurveTA468.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA469.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA470.a" "clipLibrary1.cel[0].cev[167].cevr";
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
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[21].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[22].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[23].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[24].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[25].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[26].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[27].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[28].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[29].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[30].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[31].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[32].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[32].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[33].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[34].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[35].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[36].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[37].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[38].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[39].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[40].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[41].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[42].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[43].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[44].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[45].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[46].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[47].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[48].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[49].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[50].llnk";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of mlh_get_out_of_car.ma
