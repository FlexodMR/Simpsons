//Maya ASCII 4.0 scene
//Name: mlh_flail.ma
//Last modified: Tue, Jun 25, 2002 01:40:50 PM
requires maya "4.0";
requires "p3dSimpleShader" "17.1";
requires "p3dmayaexp" "17.7";
requires "p3dDeformer" "17.1.0.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mlh_flailSource";
	setAttr ".ihi" 0;
	setAttr ".du" 16;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL85";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL86";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL87";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTL -n "animCurveTL88";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTL -n "animCurveTL89";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "animCurveTA319";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTU -n "animCurveTU17";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTU -n "animCurveTU18";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTU -n "animCurveTU19";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTU -n "animCurveTU20";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTU -n "animCurveTU21";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTU -n "animCurveTU22";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTU -n "animCurveTU23";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTU -n "animCurveTU24";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "animCurveTA320";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "animCurveTA321";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "animCurveTA322";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTL -n "animCurveTL90";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTL -n "animCurveTL91";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTL -n "animCurveTL92";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTL -n "animCurveTL93";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.16000304312027924 3 -0.19747969007931954 
		6 -0.18390924085598509 9 -0.1541851113121728 12 -0.1494594360984553 16 -0.16000304312027924;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL94";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.69694988241596423 3 0.44984331681482081 
		6 0.27528390532268804 9 0.51945132503042379 12 0.39967028938285021 15 0.64629664815633148 
		16 0.69694988241596423;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL95";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.48006904753831953 3 0.43076861335979644 
		6 0.047732339328517205 9 -0.49333837988873053 12 -0.22395214620761306 15 
		0.33580474068867072 16 0.48006904753831953;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA323";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.531298217928925 7 35.345613757465074 
		11 87.720261368885929 16 -1.531298217928925;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA324";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -3.009301722173785 7 -7.0374308654562743 
		11 -7.3350465800301441 16 -3.009301722173785;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA325";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -4.6844546671168041 7 20.345839014508424 
		11 1.5937231944567223 16 -4.6844546671168041;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL96";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.35557412649563686 1 0.36604302316800635 
		2 0.36825613745138619 3 0.36266069339470336 4 0.34954410573651112 5 0.32513258304324782 
		6 0.29171014747377721 7 0.25830600570315682 8 0.23345611660947627 9 0.2178487814958999 
		10 0.20744598792728117 11 0.20538906018971742 12 0.21279320118194231 13 0.23260553869816253 
		14 0.27056990305169798 15 0.31943855084029571 16 0.35557412649563686;
	setAttr -s 17 ".kit[16]"  3;
	setAttr -s 17 ".kot[16]"  3;
createNode animCurveTL -n "animCurveTL97";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.36695598190940815 1 0.37605554039579753 
		2 0.40540670196649331 3 0.45391394709401495 4 0.47598928105348004 5 0.46471127162010817 
		6 0.43797016396974509 7 0.40717448751237911 8 0.38252111196036004 9 0.34429875652389813 
		10 0.32002881285351026 11 0.30909786454007093 12 0.30608709891278318 13 0.30638917732194043 
		14 0.31410527381857711 15 0.33714339039602276 16 0.36695598190940815;
	setAttr -s 17 ".kit[16]"  3;
	setAttr -s 17 ".kot[16]"  3;
createNode animCurveTL -n "animCurveTL98";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -0.30744371534659226 1 -0.31457645005490326 
		2 -0.30728215782408297 3 -0.27499604339779782 4 -0.21665385832716044 5 -0.12053835898048622 
		6 0.0056664964114617146 7 0.13125473676508403 8 0.22564745074105613 9 0.28279145856050014 
		10 0.31012718924595262 11 0.30373920359023149 12 0.2630687959104 13 0.20491645444192799 
		14 0.085799307334649272 15 -0.088547359391851863 16 -0.30744371534659226;
	setAttr -s 17 ".kit[12:16]"  1 9 9 9 3;
	setAttr -s 17 ".kot[12:16]"  1 9 9 9 3;
	setAttr -s 17 ".kix[12:16]"  0.0065678991377353668 0.0037607257254421711 
		0.0022717108950018883 0.0016953019658103585 1;
	setAttr -s 17 ".kiy[12:16]"  -0.99997842311859131 -0.99999290704727173 
		-0.99999743700027466 -0.99999856948852539 0;
	setAttr -s 17 ".kox[12:16]"  0.0065679457038640976 0.0037607257254421711 
		0.0022717108950018883 0.0016953019658103585 1;
	setAttr -s 17 ".koy[12:16]"  -0.99997842311859131 -0.99999290704727173 
		-0.99999743700027466 -0.99999856948852539 0;
createNode animCurveTA -n "animCurveTA326";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 32.77670984532427 1 37.85545869269172 
		2 48.439010717403725 3 58.100765376368265 4 60.423776360447135 5 51.171620995770297 
		6 34.596641320911374 7 17.024491889459611 8 4.7829441437955635 9 -0.88661057981448199 
		10 -3.2102341642149379 11 -2.5609556957951933 12 0.68783630664211004 13 9.3451592650705351 
		14 22.644966809913662 15 34.83836802414195 16 32.77670984532427;
	setAttr -s 17 ".kit[16]"  3;
	setAttr -s 17 ".kot[16]"  3;
createNode animCurveTA -n "animCurveTA327";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -9.5407709589823195 1 -10.644945025354136 
		2 -11.397252224351243 3 -11.910736644112932 4 -12.304440806289879 5 -12.5735853047139 
		6 -12.691884774210214 7 -12.729797495234733 8 -12.751164928693273 9 -12.755062676961723 
		10 -12.711815684942074 11 -12.64045019322158 12 -12.56059625384963 13 -12.514134886439617 
		14 -12.404264321040861 15 -12.272217364722138 16 -9.5407709589823195;
	setAttr -s 17 ".kit[16]"  3;
	setAttr -s 17 ".kot[16]"  3;
createNode animCurveTA -n "animCurveTA328";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.062270245577356505 1 0.12950167049838121 
		2 0.01128569959822881 3 -0.15654656892494728 4 -0.33963482171999626 5 -0.49544480660326828 
		6 -0.57334548105680494 7 -0.59434722028365328 8 -0.59175667328182835 9 -0.56562588237594857 
		10 -0.50180639034917662 11 -0.41412582453092001 12 -0.31399472492931862 13 
		-0.20164862990758792 14 -0.10185199025003618 15 0.029075023944336417 16 0.062270245577356505;
	setAttr -s 17 ".kit[16]"  3;
	setAttr -s 17 ".kot[16]"  3;
createNode animCurveTA -n "animCurveTA329";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "animCurveTA330";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "animCurveTA331";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "animCurveTA332";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA333";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA334";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA335";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTA -n "animCurveTA336";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTA -n "animCurveTA337";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTA -n "animCurveTA338";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTA -n "animCurveTA339";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTA -n "animCurveTA340";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTL -n "mlh_Right_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTL -n "mlh_Right_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTL -n "mlh_Right_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 1;
createNode animCurveTL -n "animCurveTL102";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0.42023346303501946;
createNode animCurveTL -n "animCurveTL103";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTL -n "animCurveTL104";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 1;
createNode animCurveTL -n "animCurveTL105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 8 0 12 0 16 0;
createNode animCurveTL -n "animCurveTL106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0.98377736559985529;
createNode animCurveTL -n "animCurveTL107";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 8 0 12 0 16 0;
createNode animCurveTA -n "animCurveTA341";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -23.892493833837886 6 -30.186194822702756 
		12 -29.247823840880528 16 -23.892493833837886;
	setAttr -s 4 ".kit[1:3]"  9 1 3;
	setAttr -s 4 ".kot[1:3]"  9 1 3;
	setAttr -s 4 ".kix[2:3]"  0.80043011903762817 1;
	setAttr -s 4 ".kiy[2:3]"  0.59942609071731567 0;
	setAttr -s 4 ".kox[2:3]"  0.8004300594329834 1;
	setAttr -s 4 ".koy[2:3]"  0.59942615032196045 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA342";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.7015802569511258 6 -1.7015802569511258 
		12 -1.7015802569511258 16 -1.7015802569511258;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA343";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.47261873570199 6 -1.47261873570199 
		12 -1.47261873570199 16 -1.47261873570199;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA344";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA345";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA346";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.0984482521620249;
createNode animCurveTA -n "animCurveTA347";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 18.588300303494186;
createNode animCurveTA -n "animCurveTA348";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA349";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA350";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -22.686733334985114;
createNode animCurveTA -n "animCurveTA351";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA352";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA353";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0579251312417477e-005;
createNode animCurveTA -n "animCurveTA354";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA355";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA356";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.0984482535121209;
createNode animCurveTA -n "animCurveTA357";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 18.588300300216801;
createNode animCurveTA -n "animCurveTA358";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA359";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA360";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -22.686733333057838;
createNode animCurveTA -n "animCurveTA361";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA362";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA363";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0579251312417477e-005;
createNode animCurveTA -n "animCurveTA364";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "animCurveTA365";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "animCurveTA366";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 2.4782236286598103;
createNode animCurveTA -n "animCurveTA367";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "animCurveTA368";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "animCurveTA369";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 -26.720521212576141;
createNode animCurveTL -n "animCurveTL108";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -0.69163884744780491 1 -0.71800363181194116 
		2 -0.72008751950082694 3 -0.70136708355852817 4 -0.66599072364681633 5 -0.61619165732081316 
		6 -0.55956529687150769 7 -0.50535479966465613 8 -0.46178574327603999 9 -0.43489065341439015 
		10 -0.42963030727281393 11 -0.4450007933020052 12 -0.47939751541933306 13 
		-0.52892422638082726 14 -0.5859431280001467 15 -0.64279635750401753 16 -0.69163884744780502;
	setAttr -s 17 ".kit[0:16]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 3;
	setAttr -s 17 ".kot[0:16]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL109";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.24376503020898049 1 0.38993612347593887 
		2 0.449378496265676 3 0.42255188814205136 4 0.3210989604708735 5 0.1540838582804199 
		6 -0.046074659368387547 7 -0.23873926507901899 8 -0.40106062866222664 9 -0.52526534397902669 
		10 -0.60044253163370809 11 -0.62314306706778089 12 -0.57788185691256966 13 
		-0.44426913225678277 14 -0.23133003247776007 15 0.016757298029074282 16 0.24376503020898074;
	setAttr -s 17 ".kit[0:16]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 3;
	setAttr -s 17 ".kot[0:16]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL110";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.44841910314660005 1 0.26466400933307016 
		2 0.029764356120837974 3 -0.2112831815386523 4 -0.42365445388626072 5 -0.57013529690675468 
		6 -0.62707683210585263 7 -0.5966114710062087 8 -0.49388877967862249 9 -0.34054268748258792 
		10 -0.15009091377670172 11 0.05867860093533029 12 0.26726713969631577 13 
		0.4456375871716477 14 0.55046571304844649 15 0.55316333817561536 16 0.44841910314660011;
	setAttr -s 17 ".kit[0:16]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 3;
	setAttr -s 17 ".kot[0:16]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA370";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -70.759742713658724 1 -67.35465968965056 
		2 -64.627062293197582 3 -61.8862315535251 4 -58.477709993667887 5 -53.767003670820252 
		6 -47.115332595215136 7 -36.157747645498432 8 -21.181021796514884 9 -5.4162093554507988 
		10 8.12478855919246 11 16.975839527589791 12 19.641460171199768 13 11.707226379310983 
		14 -10.172454005856011 15 -41.173493081668106 16 -70.759742713658724;
	setAttr -s 17 ".kit[0:16]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 3;
	setAttr -s 17 ".kot[0:16]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA371";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 26.623081280451796 1 22.539514753620001 
		2 17.390477673799005 3 12.152297376947809 4 7.8070654062736704 5 5.3446855127589483 
		6 5.7650087244740753 7 10.564622564656929 8 19.327665425534413 9 30.227188009395064 
		10 41.286491621356852 11 50.289087053197321 12 55.012548581362758 13 52.817374804882391 
		14 45.482356089870144 15 36.029656476984776 16 26.623081280451796;
	setAttr -s 17 ".kit[0:16]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 3;
	setAttr -s 17 ".kot[0:16]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA372";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -49.096653183739221 1 -38.177962187585123 
		2 -27.149008817062143 3 -16.086697022871132 4 -5.0877093300327809 5 5.7374910913077732 
		6 16.253966165616216 7 28.542595623985626 8 42.816997349396715 9 56.093133390177023 
		10 65.687942998696286 11 69.765050110732801 12 67.68185096648763 13 54.297966505703457 
		14 25.438223729543552 15 -12.843382999785259 16 -49.096653183739221;
	setAttr -s 17 ".kit[0:16]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 3;
	setAttr -s 17 ".kot[0:16]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL111";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.71012633498619782 1 0.72504426304396385 
		2 0.72929489041383844 3 0.7158542306861162 4 0.68476099319397665 5 0.64405913093392642 
		6 0.59788140134339862 7 0.55278662979412818 8 0.51810212910773645 9 0.49833970071678457 
		10 0.49630429134764525 11 0.51372911665779786 12 0.5461611632131651 13 0.58953065525971204 
		14 0.63643058160809407 15 0.67693139168786343 16 0.71012400136723119;
	setAttr -s 17 ".kit[0:16]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 3;
	setAttr -s 17 ".kot[0:16]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL112";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.4707678367800211 1 0.39489093203606901 
		2 0.26143184618211762 3 0.059285980987140149 4 -0.1793818580915969 5 -0.41004763093288704 
		6 -0.60144215729868633 7 -0.71563038808223101 8 -0.74208521429548169 9 -0.70448103563210784 
		10 -0.61303380441456456 11 -0.46812187170092406 12 -0.27819748969119529 13 
		-0.0399909427989147 14 0.20116836350308948 15 0.37526799758887452 16 0.47076628974155943;
	setAttr -s 17 ".kit[0:16]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 3;
	setAttr -s 17 ".kot[0:16]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL113";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.075519724504810995 1 -0.16256322075088533 
		2 -0.37769004484597818 3 -0.52510313932737784 4 -0.57011686528696925 5 -0.53155492107581281 
		6 -0.4164094324744666 7 -0.23706029428422642 8 -0.029783823747587625 9 0.17600563699124197 
		10 0.36505988077591539 11 0.52032238980205126 12 0.63147828098326653 13 0.66049253990724832 
		14 0.55046767603319957 15 0.33308160443125817 16 0.075519476331700558;
	setAttr -s 17 ".kit[0:16]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 3;
	setAttr -s 17 ".kot[0:16]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA373";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -78.56043550230747 1 -60.067589845117247 
		2 -39.91869436138208 3 -19.693566013759821 4 -0.92132038168802621 5 15.088773138761589 
		6 27.272381206042986 7 36.132562784162396 8 42.413918593104398 9 45.600130523934261 
		10 45.019792639051722 11 39.489972833368704 12 26.295523663747314 13 4.2451962517521276 
		14 -24.189902003480306 15 -53.462608422337176 16 -78.56043550230747;
	setAttr -s 17 ".kit[0:16]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 3;
	setAttr -s 17 ".kot[0:16]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA374";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -29.584258420035471 1 -28.367964029714038 
		2 -25.90680749753788 3 -22.573272779630138 4 -19.033289925054081 5 -16.186972459949022 
		6 -15.023321557591039 7 -17.199562410045594 8 -22.511056178441429 9 -29.199047919287541 
		10 -35.551336727433757 11 -39.878057804879241 12 -41.930446405782654 13 -42.633834542588943 
		14 -40.82300862395892 15 -35.88370307797836 16 -29.584258420035471;
	setAttr -s 17 ".kit[0:16]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 3;
	setAttr -s 17 ".kot[0:16]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA375";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 60.925944603873425 1 44.396251892964813 
		2 26.643613055188553 3 9.1017873837829928 4 -6.9746592388759465 5 -20.572016389697687 
		6 -30.822161953384313 7 -37.957061318157926 8 -42.637819174833218 9 -44.61899216151923 
		10 -43.468630303170897 11 -38.276364242171276 12 -26.676936675807909 13 -7.756458890527977 
		14 16.106820925056585 15 40.238014477156142 16 60.925944603873425;
	setAttr -s 17 ".kit[0:16]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 3;
	setAttr -s 17 ".kot[0:16]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL114";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 -0.68327714892084557;
createNode animCurveTL -n "animCurveTL115";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 -7.1279910788835563;
createNode animCurveTL -n "animCurveTL116";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 7.0929301796796596;
createNode animCurveTA -n "animCurveTA376";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 105.8390773060528;
createNode animCurveTA -n "animCurveTA377";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 68.220013183892078;
createNode animCurveTA -n "animCurveTA378";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 106.96469800875708;
createNode animCurveTL -n "animCurveTL117";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0.95566074451242544;
createNode animCurveTL -n "animCurveTL118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 -7.2822957028252056;
createNode animCurveTL -n "animCurveTL119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 6.8572169428218697;
createNode animCurveTA -n "animCurveTA379";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 19.782546455811833;
createNode animCurveTA -n "animCurveTA380";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 -24.619486178996596;
createNode animCurveTA -n "animCurveTA381";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 -37.179093242461029;
createNode animCurveTL -n "animCurveTL120";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0.95955701966258378;
createNode animCurveTL -n "animCurveTL121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 -0.64030869588996853;
createNode animCurveTL -n "animCurveTL122";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 -1.6499000421201597;
createNode animCurveTL -n "animCurveTL123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 -0.37518978153922194;
createNode animCurveTL -n "animCurveTL124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 -0.0049486269609355501;
createNode animCurveTL -n "animCurveTL125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 -2.3299995351681959;
createNode animCurveTA -n "animCurveTA382";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.5555755750740079 6 -1.5555755750740079 
		12 -1.5555755750740079 16 -1.5555755750740079;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA383";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.8362155502334307 6 -1.8362155502334307 
		12 -1.8362155502334307 16 -1.8362155502334307;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA384";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -5.0323831593938717 6 -5.0323831593938717 
		12 -5.0323831593938717 16 -5.0323831593938717;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA385";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -78.024183224002883 6 -78.024183224002883 
		12 -78.024183224002883 16 -78.024183224002883;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA386";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.204395537948077 6 27.204395537948077 
		12 27.204395537948077 16 27.204395537948077;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA387";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 24.297465729795011 6 24.297465729795011 
		12 24.297465729795011 16 24.297465729795011;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA388";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 68.327235470237881 6 68.327235470237881 
		12 68.327235470237881 16 68.327235470237881;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA389";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 38.08722284185874 6 38.08722284185874 
		12 38.08722284185874 16 38.08722284185874;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA390";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 22.836699594643825 6 22.836699594643825 
		12 22.836699594643825 16 22.836699594643825;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA391";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 30.664763547309338 6 30.664763547309338 
		12 30.664763547309338 16 30.664763547309338;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA392";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.9136426523866348 6 8.9136426523866348 
		12 8.9136426523866348 16 8.9136426523866348;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA393";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -58.316571219273882 6 -58.316571219273882 
		12 -58.316571219273882 16 -58.316571219273882;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA394";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.90476728715262045 6 0.90476728715262045 
		12 0.90476728715262045 16 0.90476728715262045;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA395";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.5899170637045899 6 1.5899170637045899 
		12 1.5899170637045899 16 1.5899170637045899;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA396";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 -15.657312778022405;
createNode animCurveTA -n "animCurveTA397";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 11.000669871920374;
createNode animCurveTA -n "animCurveTA398";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 16.529185238054509;
createNode animCurveTA -n "animCurveTA399";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 0 12 0 16 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA400";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 0 12 0 16 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA401";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -19.693819774835177 6 -19.693819774835177 
		12 -19.693819774835177 16 -19.693819774835177;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA402";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA403";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA404";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA405";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA406";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA408";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 -13.565857253518471;
createNode animCurveTA -n "animCurveTA409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 -10.389375599545618;
createNode animCurveTA -n "animCurveTA410";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 1.7299231161883335;
createNode animCurveTA -n "animCurveTA411";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 0 12 0 16 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA412";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 0 12 0 16 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA413";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -14.841309524368913 6 -14.841309524368913 
		12 -14.841309524368913 16 -14.841309524368913;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA414";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 3.1198943483277444 6 3.1198943483277444 
		12 3.1198943483277444 16 3.1198943483277444;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA415";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.7238169885910806 6 1.7238169885910806 
		12 1.7238169885910806 16 1.7238169885910806;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA416";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 12.268388134198538 6 12.268388134198538 
		12 12.268388134198538 16 12.268388134198538;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA417";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 0 12 0 16 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA418";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 0 12 0 16 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA419";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 4.310474063255155 6 1.6617383537146833 
		12 0.35902714331474606 16 4.310474063255155;
	setAttr -s 4 ".kit[1:3]"  1 9 3;
	setAttr -s 4 ".kot[1:3]"  1 9 3;
	setAttr -s 4 ".kix[1:3]"  0.90759241580963135 0.99051946401596069 
		1;
	setAttr -s 4 ".kiy[1:3]"  -0.41985231637954712 0.13737264275550842 
		0;
	setAttr -s 4 ".kox[1:3]"  0.90759247541427612 0.99051946401596069 
		1;
	setAttr -s 4 ".koy[1:3]"  -0.41985228657722473 0.13737264275550842 
		0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA420";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 0 12 0 16 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA421";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 0 12 0 16 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA422";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 0 12 0 16 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA423";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 0 12 0 16 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA424";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 0 12 0 16 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA425";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 9.348976144606322 6 5.8663447720217556 
		12 7.2873499261724515 16 9.348976144606322;
	setAttr -s 4 ".kit[0:3]"  3 1 1 3;
	setAttr -s 4 ".kot[0:3]"  3 1 1 3;
	setAttr -s 4 ".kix[1:3]"  0.98720961809158325 0.95521759986877441 
		1;
	setAttr -s 4 ".kiy[1:3]"  -0.15942774713039398 0.29590418934822083 
		0;
	setAttr -s 4 ".kox[1:3]"  0.98720961809158325 0.95521777868270874 
		1;
	setAttr -s 4 ".koy[1:3]"  -0.15942773222923279 0.29590365290641785 
		0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA426";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 7.2773573828671791 6 7.2787111094770829 
		12 7.2826589600280709 16 7.2773573828671791;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA427";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.49428440924719735 6 -0.40482624466965983 
		12 -0.37861651152086878 16 -0.49428440924719735;
	setAttr -s 4 ".kit[0:3]"  3 1 1 3;
	setAttr -s 4 ".kot[0:3]"  3 1 1 3;
	setAttr -s 4 ".kix[1:3]"  0.99983906745910645 0.99988794326782227 
		1;
	setAttr -s 4 ".kiy[1:3]"  0.017939569428563118 -0.014969184994697571 
		0;
	setAttr -s 4 ".kox[1:3]"  0.99983906745910645 0.99988794326782227 
		1;
	setAttr -s 4 ".koy[1:3]"  0.017939571291208267 -0.014969184994697571 
		0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA428";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 18.701652569624674 6 22.972796655111736 
		12 19.889704053062204 16 18.701652569624674;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA429";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 0 12 0 16 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA430";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 0 12 0 16 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA431";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 16.736721183175977 6 16.736721183175977 
		12 16.736721183175977 16 16.736721183175977;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA432";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 30.509503252859794;
createNode animCurveTA -n "animCurveTA433";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 10.289823922878021;
createNode animCurveTA -n "animCurveTA434";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 24.793845656943311;
createNode animCurveTA -n "animCurveTA435";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 0 12 0 16 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA436";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 0 12 0 16 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA437";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 17.545620107018433 6 17.545620107018433 
		12 17.545620107018433 16 17.545620107018433;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
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
	setAttr -s 24 ".lnk";
select -ne :time1;
	setAttr ".o" 16;
select -ne :renderPartition;
	setAttr -s 24 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 24 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 4 ".u";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 4 ".tx";
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
connectAttr "mlh_flailSource.st" "clipLibrary1.st[0]";
connectAttr "mlh_flailSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL85.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL86.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL87.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL88.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL89.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA319.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU17.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU18.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU19.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU20.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU21.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU22.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU23.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU24.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA320.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA321.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA322.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL90.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL91.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL92.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL93.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL94.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL95.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA323.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA324.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA325.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL96.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL97.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL98.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA326.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA327.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA328.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA329.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA330.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA331.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA332.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA333.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA334.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA335.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA336.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA337.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA338.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA339.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA340.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "mlh_Right_Knee_Hoop_translateX.a" "clipLibrary1.cel[0].cev[44].cevr"
		;
connectAttr "mlh_Right_Knee_Hoop_translateY.a" "clipLibrary1.cel[0].cev[45].cevr"
		;
connectAttr "mlh_Right_Knee_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[46].cevr"
		;
connectAttr "animCurveTL102.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL103.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL104.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL105.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL106.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL107.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA341.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA342.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA343.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA344.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA345.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA346.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA347.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA348.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA349.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA350.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA351.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA352.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA353.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA354.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA355.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA356.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA357.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA358.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA359.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA360.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA361.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA362.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA363.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA364.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA365.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA366.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA367.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA368.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA369.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL108.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL109.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL110.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA370.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA371.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA372.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL111.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL112.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL113.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA373.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA374.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA375.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL114.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL115.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL116.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA376.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA377.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA378.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL117.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL118.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL119.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA379.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA380.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA381.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL120.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL121.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL122.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL123.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL124.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL125.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA382.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA383.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA384.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA385.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA386.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA387.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA388.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA389.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA390.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA391.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA392.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA393.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA394.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA395.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA396.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA397.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA398.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA399.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA400.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA401.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA402.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA403.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA404.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA405.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA406.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA407.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA408.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA409.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA410.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA411.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA412.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA413.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA414.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA415.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA416.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA417.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA418.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA419.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA420.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA421.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA422.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA423.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA424.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA425.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA426.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA427.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA428.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA429.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA430.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA431.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA432.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA433.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA434.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA435.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA436.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA437.a" "clipLibrary1.cel[0].cev[167].cevr";
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
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[21].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[22].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[23].llnk";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of mlh_flail.ma
