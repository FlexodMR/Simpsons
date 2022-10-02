//Maya ASCII 4.0 scene
//Name: brt-m_get_out_of_car.ma
//Last modified: Mon, Jul 29, 2002 03:10:49 PM
requires maya "4.0";
requires "p3dSimpleShader" "17.1";
requires "p3dmayaexp" "17.9.1.0";
requires "p3dDeformer" "17.1.1.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "brt_get_out_of_car";
	setAttr ".ihi" 0;
	setAttr ".du" 25;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL370";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTL -n "animCurveTL371";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTL -n "animCurveTL372";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 -1.0008611248067398 1 -0.91576348407282193 
		2 -0.7462374150520068 3 -0.57152129752272407 4 -0.47085351126340258 5 -0.44726183661051883 
		6 -0.43712127333177547 7 -0.41968964041164103 8 -0.38825452962008944 9 -0.35178934538243278 
		10 -0.31308062566614625 11 -0.27491490843870503 12 -0.2377656124555807 13 
		-0.19993037252551676 14 -0.16093205069589625 15 -0.11741186496250647 16 -0.072728594142261099 
		17 -0.036481441514232896 18 -0.010956543626166436 19 0.0092018348297370871 
		20 0.02585729835771983 21 0.040873451462023924 22 0.053288800844443214 23 
		0.062595575742887752 24 0.071337964465774131 25 0.082060155321518849;
createNode animCurveTL -n "animCurveTL373";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0;
createNode animCurveTL -n "animCurveTL374";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0.81305610463408051 1 0.7900899174661461 
		2 0.75342613527879621 3 0.71724261439586401 4 0.69571721114118246 5 0.70656113506053575 
		6 0.73506224287520494 7 0.74676336167226942 8 0.73153380590334049 9 0.70530761734272251 
		10 0.67272471406153256 11 0.63842501413088881 12 0.5982304212477072 13 0.55223416501193545 
		14 0.51148315234923758 15 0.47902416971133838 16 0.45181042813580008 17 0.43174847142704281 
		18 0.41888864669916326 19 0.4107045584527087 20 0.40523763657177519 21 0.4005293109404589 
		22 0.39436961178830049 23 0.38836567159576907 24 0.38628457362335306 25 0.39189340113154059;
createNode animCurveTA -n "animCurveTA1066";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 1 5.8072379690578844 2 14.966547385237735 
		3 26.462254520180029 4 39.278685645525258 5 52.400167032913849 6 64.811024953986333 
		7 75.495585680383172 8 83.438175483744871 9 88.492992253044889 10 91.520049699377054 
		11 93.012397827562467 12 93.463086642422141 13 93.365166148777107 14 93.211686351448378 
		15 93.495697255257014 16 93.917056323256347 17 93.923790356894955 18 93.631203368586668 
		19 93.154599370745387 20 92.609282375784986 21 92.110556396119307 22 92.183401760243413 
		23 92.493071755785124 24 91.865279833857286 25 89.125739445572833;
createNode animCurveTU -n "animCurveTU9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTU -n "animCurveTU10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTU -n "animCurveTU11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTU -n "animCurveTU12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTU -n "animCurveTU13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTU -n "animCurveTU14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTU -n "animCurveTU15";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 25 1;
createNode animCurveTU -n "animCurveTU16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 25 1;
createNode animCurveTA -n "animCurveTA1067";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1068";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1069";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTL -n "animCurveTL375";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTL -n "animCurveTL376";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTL -n "animCurveTL377";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTL -n "animCurveTL378";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -2.4790535543793637 4 -1.3285178253405563 
		7 -1.3285178253405563 11 -0.61915846937113006 14 -0.044494792875415738 17 
		0.16956905984264883 21 0.16956905984264883 25 0.16956905984264883;
createNode animCurveTL -n "animCurveTL379";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.98803500993479365 4 0.88812050520532582 
		7 0.88812050520532582 11 0.99724782237337128 14 0.66577455587194778 17 0.23612671896190915 
		21 0.23612671896190915 25 0.23204099190485944;
createNode animCurveTL -n "animCurveTL380";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.3692681032003731 4 2.0547095591887636 
		7 2.0547095591887636 11 1.5898213882858157 14 1.1698190867505571 17 1.097427438237216 
		21 1.097427438237216 25 1.097427438237216;
createNode animCurveTA -n "animCurveTA1070";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -27.647037481197401 4 -63.813136993340976 
		7 -63.813136993340976 11 -132.08424864088158 14 -132.08424864088158 17 -180.00903817791644 
		21 -172.22445507695573 25 -375.98082634113621;
createNode animCurveTA -n "animCurveTA1071";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.6471102606573034 4 61.971177657132849 
		7 61.971177657132849 11 70.520460291894921 14 70.520460291894921 17 70.52046029189485 
		21 101.54505907997235 25 91.029007103502906;
createNode animCurveTA -n "animCurveTA1072";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -7.7922141916432519 4 -74.294373877892141 
		7 -74.294373877892141 11 -172.53814334752133 14 -172.53814334752133 17 -172.53814334752136 
		21 -172.51486781013736 25 -374.00706426405969;
createNode animCurveTL -n "animCurveTL381";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -2.0407430139147178 4 -0.94689725374252132 
		7 -0.94689725374252132 11 -0.94689725374252132 14 -0.70050947095039451 17 
		-0.18912470714979496 21 0.12723102470459602 25 0.12723102470459602;
createNode animCurveTL -n "animCurveTL382";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.004658375723265 4 0.87393082863301275 
		7 0.87393082863301275 11 0.87393082863301275 14 0.87393082863301275 17 0.3396682222301754 
		21 0.21426051557445225 25 0.21426051557445225;
	setAttr -s 8 ".kit[6:7]"  3 9;
	setAttr -s 8 ".kot[6:7]"  3 9;
createNode animCurveTL -n "animCurveTL383";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.4087040652971967 4 1.4008413676828351 
		7 1.4008413676828351 11 1.4008413676828351 14 1.1758031377859479 17 0.81488226883701087 
		21 0.72810231057739006 25 0.72810231057739006;
createNode animCurveTA -n "animCurveTA1073";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -28.33147073208438 4 -16.960193642026439 
		7 182.28664988247439 11 180.39459422077783 14 230.79737028052352 17 250.79806961248113 
		21 177.16347266714416 25 174.08624265487845;
createNode animCurveTA -n "animCurveTA1074";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 10.113681911874204 4 74.92658449590833 
		7 86.866181279295517 11 71.535483966591897 14 71.53548396659194 17 64.253519059541702 
		21 62.900395087675044 25 77.361573251038095;
createNode animCurveTA -n "animCurveTA1075";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -3.6896128937020114 4 -32.768537079786768 
		7 174.8203434432703 11 172.91139054662753 14 172.91139054662756 17 194.32374451309536 
		21 175.9767866827282 25 172.73088895567136;
createNode animCurveTA -n "animCurveTA1076";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1077";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1078";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1079";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1080";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1081";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1082";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1083";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1084";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1085";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1086";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1087";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTL -n "animCurveTL384";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTL -n "animCurveTL385";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTL -n "animCurveTL386";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 4 1 7 1 11 1 14 1 17 1 21 1 
		25 1;
createNode animCurveTL -n "animCurveTL387";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTL -n "animCurveTL388";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTL -n "animCurveTL389";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 4 1 7 1 11 1 14 1 17 1 21 1 
		25 1;
createNode animCurveTL -n "animCurveTL390";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -2.2591101781206659 4 -1.0627947607660375 
		7 -0.94730938669320153 11 -0.62052871510112151 14 -0.36325042975680771 17 
		-0.082344686784823706 21 0.092258184401566301 25 0.1852234316132543;
	setAttr -s 8 ".kit[1:7]"  1 9 9 9 9 9 9;
	setAttr -s 8 ".kot[1:7]"  1 9 9 9 9 9 9;
	setAttr -s 8 ".kix[1:7]"  0.0039665144868195057 0.0052757859230041504 
		0.0039949985221028328 0.0037161754444241524 0.0051224115304648876 0.0099658146500587463 
		0.014340801164507866;
	setAttr -s 8 ".kiy[1:7]"  0.99999213218688965 0.99998611211776733 
		0.9999920129776001 0.99999308586120605 0.99998688697814941 0.9999503493309021 
		0.99989718198776245;
	setAttr -s 8 ".kox[1:7]"  0.0039664651267230511 0.0052757859230041504 
		0.0039949985221028328 0.0037161754444241524 0.0051224115304648876 0.0099658146500587463 
		0.014340801164507866;
	setAttr -s 8 ".koy[1:7]"  0.99999213218688965 0.99998611211776733 
		0.9999920129776001 0.99999308586120605 0.99998688697814941 0.9999503493309021 
		0.99989718198776245;
createNode animCurveTL -n "animCurveTL391";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.3485645994757605 4 1.5800634010263139 
		7 1.4283015669350549 11 1.6065847288354993 14 1.4111637451372558 17 0.91024044336358789 
		21 0.73150521837572424 25 0.9704149019867897;
createNode animCurveTL -n "animCurveTL392";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.8352029825483169 4 1.5703495658163922 
		7 1.6855692255278485 11 1.4410315393840629 14 1.154502624559951 17 0.97452817580182205 
		21 0.90406133334029404 25 0.88456864722919493;
createNode animCurveTA -n "animCurveTA1088";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -26.004389268796515 4 3.7661810482217493 
		7 -10.469953380440861 11 -10.469953380440861 14 -13.69789386666127 17 -10.625395277676512 
		21 0.77176251165334064 25 -29.507853993942465;
createNode animCurveTA -n "animCurveTA1089";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 58.688657075647072 7 80.122988266435783 
		11 91.455277056608281 14 94.919953029879466 17 88.999041530540595 21 90.901435589138757 
		25 88.879633345488074;
createNode animCurveTA -n "animCurveTA1090";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 4.8582966844671525 7 -15.12132485469952 
		11 -15.12132485469952 14 -17.280110661791646 17 -15.46623826768727 21 -6.291271291041979 
		25 -31.471029442793292;
createNode animCurveTA -n "animCurveTA1091";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1092";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1093";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1094";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1095";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1096";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1097";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1098";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1099";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1100";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1101";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1102";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1103";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1104";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1107";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1108";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1109";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1110";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1111";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 11 0 14 0 17 0 25 0;
	setAttr -s 5 ".kit[3:4]"  1 9;
	setAttr -s 5 ".kot[1:4]"  1 9 3 9;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1112";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 11 0 14 0 17 0 25 0;
	setAttr -s 5 ".kit[3:4]"  1 9;
	setAttr -s 5 ".kot[1:4]"  1 9 3 9;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1113";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 11 0 14 -24.501661700242042 
		17 0 25 0;
	setAttr -s 5 ".kit[3:4]"  1 9;
	setAttr -s 5 ".kot[1:4]"  1 9 3 9;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  0.29982760548591614 1 1 1;
	setAttr -s 5 ".koy[1:4]"  -0.95399338006973267 0 0 0;
createNode animCurveTA -n "animCurveTA1114";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1115";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1116";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTL -n "animCurveTL393";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.5198069948790518 25 -0.5198069948790518;
createNode animCurveTL -n "animCurveTL394";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.72394202659893114 25 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL395";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.36439499068905612 25 0.36439499068905612;
createNode animCurveTA -n "animCurveTA1117";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.7976222737965317 25 7.7976222737965317;
createNode animCurveTA -n "animCurveTA1118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 30.409274105849079 25 30.409274105849079;
createNode animCurveTA -n "animCurveTA1119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 64.859940280210893 25 64.859940280210893;
createNode animCurveTL -n "animCurveTL396";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.43524234076486068 25 0.43524234076486068;
createNode animCurveTL -n "animCurveTL397";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.82665738350180629 25 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL398";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.27773886459742925 25 0.27773886459742925;
createNode animCurveTA -n "animCurveTA1120";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -28.652637602052774 25 -28.652637602052774;
createNode animCurveTA -n "animCurveTA1122";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -64.676908227303443 25 -64.676908227303443;
createNode animCurveTL -n "animCurveTL399";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -3.6370999456408879 4 -1.5654982774620061 
		7 -1.5654982774620061 11 -0.60313658393764646 14 -0.23438812192995465 17 
		0.22676280663035264 21 0.48388930974074507 25 0.30749701812507962;
createNode animCurveTL -n "animCurveTL400";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.7841255587132463 4 2.2393114421654818 
		7 2.2393114421654818 11 2.1790050974223631 14 2.020390968200291 17 1.1452021334425275 
		21 0.91561758277467564 25 1.0510182586227352;
createNode animCurveTL -n "animCurveTL401";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.7027068055413355 4 3.0323634771554704 
		7 3.0323634771554704 11 2.9772662469357636 14 2.6274596464883251 17 2.1080049762588078 
		21 1.995506276605657 25 1.8460670423804326;
createNode animCurveTA -n "animCurveTA1123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -26.203413720634714 4 -176.4316599345523 
		7 -176.4316599345523 11 -204.64950171984853 14 -204.64950171984853 17 -214.72327328141861 
		21 -228.23223001845938 25 -273.44301664312098;
createNode animCurveTA -n "animCurveTA1124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 14.791961579779635 4 47.930996865134397 
		7 47.930996865134397 11 72.766780684505136 14 72.766780684505136 17 41.558302929683045 
		21 52.970556866400599 25 27.753397523637741;
createNode animCurveTA -n "animCurveTA1125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 45.895436695401962 4 -144.74077881333704 
		7 -144.74077881333704 11 -174.93586962421051 14 -174.93586962421051 17 -167.11776635264738 
		21 -242.9300030114936 25 -266.95918275971843;
createNode animCurveTL -n "animCurveTL402";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -2.1657315743829622 4 -0.66351043477343252 
		7 -0.66351043477343252 11 -0.35608706388947348 14 -0.35608706388947348 17 
		-0.28143114328305574 21 0.20686703802569276 25 0.24094058915794578;
createNode animCurveTL -n "animCurveTL403";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.6749265988332942 4 2.4541694248727119 
		7 2.4541694248727119 11 2.3622610843582597 14 1.7898199177107497 17 0.98515795416184049 
		21 0.86429025933785097 25 1.0349865835160112;
createNode animCurveTL -n "animCurveTL404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.6001625185510933 4 1.4295241378294861 
		7 1.4295241378294861 11 0.9195707105718407 14 0.68849768263945266 17 0.4839399669035872 
		21 0.37328602101973773 25 0.34076812298084341;
createNode animCurveTA -n "animCurveTA1126";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -33.734888782993906 4 6.0203811311389988 
		7 6.0203811311389988 11 6.0203811311389988 14 -68.930016188460073 17 229.53747512405812 
		21 205.14412021846877 25 261.7260243159331;
createNode animCurveTA -n "animCurveTA1127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -14.870586397896902 4 22.924271515195496 
		7 22.924271515195496 11 22.924271515195496 14 48.885605763433382 17 30.95189762621477 
		21 34.518804273224596 25 45.008042607101586;
createNode animCurveTA -n "animCurveTA1128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -30.592169336881899 4 22.99065666778457 
		7 22.99065666778457 11 22.99065666778457 14 -48.767890046047938 17 237.17798092422751 
		21 214.87632071780322 25 265.6340570691703;
createNode animCurveTL -n "animCurveTL405";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.31054502397108613 4 0.31054502397108613 
		7 0.31054502397108613 11 0.31054502397108613 14 0.31054502397108613 17 0.31054502397108613 
		21 0.31054502397108613 25 0.31054502397108613;
createNode animCurveTL -n "animCurveTL406";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.55640530640609931 4 -0.55640530640609931 
		7 -0.55640530640609931 11 -0.55640530640609931 14 -0.55640530640609931 17 
		-0.55640530640609931 21 -0.55640530640609931 25 -0.55640530640609931;
createNode animCurveTL -n "animCurveTL407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.57914122395678103 4 -0.57914122395678103 
		7 -0.57914122395678103 11 -0.57914122395678103 14 -0.57914122395678103 17 
		-0.57914122395678103 21 -0.57914122395678103 25 -0.57914122395678103;
createNode animCurveTL -n "animCurveTL408";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.063331173333856433 4 -0.66768647579175422 
		7 -0.66768647579175422 11 -0.66768647579175422 14 -0.66768647579175422 17 
		-0.66768647579175422 21 -0.66768647579175422 25 -0.66768647579175422;
createNode animCurveTL -n "animCurveTL409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.69960805773293522 4 -0.67301253925255977 
		7 -0.67301253925255977 11 -0.67301253925255977 14 -0.67301253925255977 17 
		-0.67301253925255977 21 -0.67301253925255977 25 -0.67301253925255977;
createNode animCurveTL -n "animCurveTL410";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.66762598980258558 4 -0.49850301940481012 
		7 -0.49850301940481012 11 -0.49850301940481012 14 -0.49850301940481012 17 
		-0.49850301940481012 21 -0.49850301940481012 25 -0.49850301940481012;
createNode animCurveTA -n "animCurveTA1129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.061808866237340665 4 -0.061808866237337522 
		7 -0.061808866237337522 11 -0.061808866237337522 14 -0.061808866237337522 
		17 -0.061808866237337522 21 -0.061808866237337522 25 -0.061808866237340665;
createNode animCurveTA -n "animCurveTA1130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -59.058178941076754 4 -59.058178941076754 
		7 -59.058178941076754 11 -59.058178941076754 14 -59.058178941076754 17 -59.058178941076754 
		21 -59.058178941076754 25 -59.058178941076754;
createNode animCurveTA -n "animCurveTA1131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 16.57914742975785 4 16.579147429757843 
		7 16.579147429757843 11 16.579147429757843 14 16.579147429757843 17 16.579147429757843 
		21 16.579147429757843 25 16.57914742975785;
createNode animCurveTA -n "animCurveTA1132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 12.253734489678925 4 12.253734489678925 
		7 12.253734489678925 11 12.253734489678925 14 12.253734489678925 17 12.253734489678925 
		21 12.253734489678925 25 12.253734489678925;
createNode animCurveTA -n "animCurveTA1133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -65.746751280844975 4 -65.746751280844961 
		7 -65.746751280844961 11 -65.746751280844961 14 -65.746751280844961 17 -65.746751280844961 
		21 -65.746751280844961 25 -65.746751280844975;
createNode animCurveTA -n "animCurveTA1134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA1135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 15.711328223519061 4 15.711328223519057 
		7 15.711328223519057 11 15.711328223519057 14 15.711328223519057 17 15.711328223519057 
		21 15.711328223519057 25 15.711328223519061;
createNode animCurveTA -n "animCurveTA1136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 8.5572674112203657 4 8.5572674112203622 
		7 8.5572674112203622 11 8.5572674112203622 14 8.5572674112203622 17 8.5572674112203622 
		21 8.5572674112203622 25 8.5572674112203657;
createNode animCurveTA -n "animCurveTA1137";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA1138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA1139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA1140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA1141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA1142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA1143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -171.24588681251637 25 -121.24398976748977;
createNode animCurveTA -n "animCurveTA1144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 23.263402056531088 25 28.612774017129329;
createNode animCurveTA -n "animCurveTA1145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 20.166277752815624 25 17.632837226638049;
createNode animCurveTA -n "animCurveTA1146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA1147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA1148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 33.429092416277157 4 33.429092416277157 
		7 33.429092416277157 11 33.429092416277157 14 33.429092416277157 17 33.429092416277157 
		21 33.429092416277157 25 33.429092416277157;
createNode animCurveTA -n "animCurveTA1149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 25 13.994403295754109;
createNode animCurveTA -n "animCurveTA1155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA1159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA1160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 17.254116939558369 4 17.254116939558369 
		7 17.254116939558369 11 17.254116939558369 14 17.254116939558369 17 17.254116939558369 
		21 17.254116939558369 25 17.254116939558369;
createNode animCurveTA -n "animCurveTA1161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA1162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA1163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA1164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.373100660218926 4 0.5125330584386516 
		7 0.5125330584386516 11 0.5125330584386516 14 0.5125330584386516 17 0.5125330584386516 
		21 0.5125330584386516 25 0.65073001024951671;
createNode animCurveTA -n "animCurveTA1165";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.38374158911587308 4 1.2966697574980743 
		7 1.2966697574980743 11 1.2966697574980743 14 1.2966697574980743 17 1.2966697574980743 
		21 1.2966697574980743 25 4.2368721935960938;
createNode animCurveTA -n "animCurveTA1166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.96901743689791298 4 2.3808668204454095 
		7 2.3808668204454095 11 2.3808668204454095 14 2.3808668204454095 17 2.3808668204454095 
		21 2.3808668204454095 25 2.6995264082587447;
createNode animCurveTA -n "animCurveTA1167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.2144674450583466 4 -3.9388735369945089 
		7 -3.9388735369945089 11 -3.9388735369945089 14 -3.9388735369945089 17 -3.9388735369945089 
		21 -3.9388735369945089 25 0;
createNode animCurveTA -n "animCurveTA1168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 5.3642380392152509 4 1.8242021628094227 
		7 1.8242021628094227 11 1.8242021628094227 14 1.8242021628094227 17 1.8242021628094227 
		21 1.8242021628094227 25 0;
createNode animCurveTA -n "animCurveTA1169";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -3.2584064202075544 4 -3.4768422591718746 
		7 -3.4768422591718746 11 -3.4768422591718746 14 -3.4768422591718746 17 -3.4768422591718746 
		21 -3.4768422591718746 25 0;
createNode animCurveTA -n "animCurveTA1170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -4.9690701715193732 4 -33.712015865598353 
		7 -25.627726729996503 11 -20.079666981784225 14 -5.8608359898415125 17 -3.5619792782331539 
		21 -6.0801195962680348 25 0;
createNode animCurveTA -n "animCurveTA1171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.9904681746768538 4 -17.505701362685283 
		7 -16.189361723020774 11 -14.221009636577303 14 -13.003644464628531 17 -7.124496941251798 
		21 -8.8128055601634792 25 0;
createNode animCurveTA -n "animCurveTA1172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 14.780225156536881 4 12.510448912505932 
		7 0.82841756958153401 11 18.290548424100457 14 17.422820322901881 17 19.447287841734912 
		21 27.939444328551787 25 6.6786334979782902;
createNode animCurveTA -n "animCurveTA1173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -2.211833892135727 4 0.42646470921519353 
		7 0.42646470921519353 11 0.42646470921519353 14 0.42646470921519353 17 0.42646470921519353 
		21 0.42646470921519353 25 1.8903601258661935;
createNode animCurveTA -n "animCurveTA1174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.7086730360615547 4 -1.9530231234413618 
		7 -1.9530231234413618 11 -1.9530231234413618 14 -1.9530231234413618 17 -1.9530231234413618 
		21 -1.9530231234413618 25 -2.5597289571479038;
createNode animCurveTA -n "animCurveTA1175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.7082804953288213 4 2.4049685598947645 
		7 2.4049685598947645 11 2.4049685598947645 14 2.4049685598947645 17 2.4049685598947645 
		21 2.4049685598947645 25 2.0168110874036049;
createNode animCurveTA -n "animCurveTA1176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA1177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA1178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 27.080064458283051 4 27.080064458283051 
		7 27.080064458283051 11 27.080064458283051 14 27.080064458283051 17 27.080064458283051 
		21 27.080064458283051 25 27.080064458283051;
createNode animCurveTA -n "animCurveTA1179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -177.04830761929054 25 143.71460997127252;
createNode animCurveTA -n "animCurveTA1180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 27.7228482558439 25 27.804554996454378;
createNode animCurveTA -n "animCurveTA1181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 21.576484776388227 25 29.452980944098744;
createNode animCurveTA -n "animCurveTA1182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA1183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA1184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 27.911632519594587 4 27.911632519594587 
		7 27.911632519594587 11 27.911632519594587 14 27.911632519594587 17 27.911632519594587 
		21 27.911632519594587 25 27.911632519594587;
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
	setAttr ".top" 478;
	setAttr ".rght" 638;
	setAttr ".fs" 1;
	setAttr ".ef" 10;
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
connectAttr "brt_get_out_of_car.st" "clipLibrary2.st[0]";
connectAttr "brt_get_out_of_car.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL370.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL371.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "animCurveTL372.a" "clipLibrary2.cel[0].cev[2].cevr";
connectAttr "animCurveTL373.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "animCurveTL374.a" "clipLibrary2.cel[0].cev[4].cevr";
connectAttr "animCurveTA1066.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "animCurveTU9.a" "clipLibrary2.cel[0].cev[6].cevr";
connectAttr "animCurveTU10.a" "clipLibrary2.cel[0].cev[7].cevr";
connectAttr "animCurveTU11.a" "clipLibrary2.cel[0].cev[8].cevr";
connectAttr "animCurveTU12.a" "clipLibrary2.cel[0].cev[9].cevr";
connectAttr "animCurveTU13.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU14.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU15.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU16.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA1067.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA1068.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA1069.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL375.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL376.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL377.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL378.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL379.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL380.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA1070.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA1071.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA1072.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL381.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL382.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL383.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA1073.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA1074.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA1075.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA1076.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA1077.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA1078.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA1079.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA1080.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA1081.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTA1082.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTA1083.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTA1084.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTA1085.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTA1086.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTA1087.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL384.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL385.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL386.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTL387.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTL388.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTL389.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTL390.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTL391.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTL392.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA1088.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA1089.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA1090.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA1091.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA1092.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA1093.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA1094.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA1095.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA1096.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA1097.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA1098.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA1099.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA1100.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA1101.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA1102.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA1103.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA1104.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA1105.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA1106.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA1107.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA1108.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA1109.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA1110.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTA1111.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTA1112.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTA1113.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA1114.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA1115.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA1116.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL393.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL394.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL395.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA1117.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA1118.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA1119.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL396.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL397.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL398.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA1120.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA1121.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA1122.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL399.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL400.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL401.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA1123.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA1124.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA1125.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL402.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL403.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL404.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTA1126.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTA1127.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTA1128.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTL405.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTL406.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTL407.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTL408.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTL409.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTL410.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA1129.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA1130.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA1131.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA1132.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA1133.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA1134.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA1135.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA1136.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA1137.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA1138.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA1139.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA1140.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA1141.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA1142.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA1143.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA1144.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA1145.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA1146.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA1147.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA1148.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA1149.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA1150.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA1151.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA1152.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA1153.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA1154.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA1155.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA1156.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA1157.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA1158.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA1159.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA1160.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA1161.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA1162.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA1163.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA1164.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA1165.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA1166.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA1167.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA1168.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA1169.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA1170.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA1171.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA1172.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA1173.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA1174.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA1175.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA1176.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA1177.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA1178.a" "clipLibrary2.cel[0].cev[161].cevr";
connectAttr "animCurveTA1179.a" "clipLibrary2.cel[0].cev[162].cevr";
connectAttr "animCurveTA1180.a" "clipLibrary2.cel[0].cev[163].cevr";
connectAttr "animCurveTA1181.a" "clipLibrary2.cel[0].cev[164].cevr";
connectAttr "animCurveTA1182.a" "clipLibrary2.cel[0].cev[165].cevr";
connectAttr "animCurveTA1183.a" "clipLibrary2.cel[0].cev[166].cevr";
connectAttr "animCurveTA1184.a" "clipLibrary2.cel[0].cev[167].cevr";
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
// End of brt-m_get_out_of_car.ma
