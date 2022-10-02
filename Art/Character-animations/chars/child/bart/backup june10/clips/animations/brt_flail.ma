//Maya ASCII 4.0 scene
//Name: brt_flail.ma
//Last modified: Tue, May 28, 2002 03:12:54 PM
requires maya "4.0";
requires "p3dSimpleShader" "16.4";
requires "p3dDeformer" "16.0.0.1";
requires "p3dmayaexp" "16.15";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "brt_flailSource";
	setAttr ".ihi" 0;
	setAttr ".du" 15;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTL -n "animCurveTL6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTL -n "animCurveTL7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "animCurveTA87";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTU -n "animCurveTU1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTU -n "animCurveTU2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTU -n "animCurveTU3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTU -n "animCurveTU4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTU -n "animCurveTU5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTU -n "animCurveTU6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTU -n "animCurveTU7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTU -n "animCurveTU8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "animCurveTA88";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "animCurveTA89";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "animCurveTA90";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTL -n "animCurveTL8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTL -n "animCurveTL9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTL -n "animCurveTL10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTL -n "animCurveTL11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -0.2986088105081508 1 -0.31706719291177954 
		2 -0.33052609235613839 3 -0.33608545746719126 4 -0.3305381288117743 5 -0.27305502676661986 
		6 -0.26137224127281788 7 -0.21038256750933712 8 -0.17365176661518247 9 -0.16042721418356443 
		10 -0.14551334140623171 11 -0.14933015825622462 12 -0.18380423048885927 13 
		-0.24189757562735456 14 -0.27183759822821613 15 -0.2878704587246409 16 -0.2986088105081508;
createNode animCurveTL -n "animCurveTL12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.75817251681610931 1 0.67607938107843724 
		2 0.59314394986174701 3 0.51106595121496601 4 0.4336505651763381 5 0.36384240968287851 
		6 0.33650653972283323 7 0.36841587471926679 8 0.46724038093710457 9 0.58067395943056899 
		10 0.60860462049117237 11 0.54491980760848946 12 0.4608929237829954 13 0.48281537555808646 
		14 0.57447328935531694 15 0.70751928255647667 16 0.75817251681610931;
createNode animCurveTL -n "animCurveTL13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.48006904753831925 1 0.47698492283843585 
		2 0.45661875435747212 3 0.43076861335979622 4 0.36303356903843637 5 0.24273440776870317 
		6 0.047732339328517136 7 -0.2187004398014458 8 -0.41684095923881237 9 -0.49333837988873092 
		10 -0.48289174808881435 11 -0.37783699327467801 12 -0.22395214620761295 13 
		-0.030306302451247817 14 0.17046541190076706 15 0.33580474068867072 16 0.48006904753831925;
createNode animCurveTA -n "animCurveTA91";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -10.221863059139661 1 -4.3838113689735341 
		2 -2.9448892948723517 3 -1.3883951282308962 4 4.812027073509916 5 18.390264710671691 
		6 36.411533043411787 7 54.908633598105126 8 69.916484789917789 9 83.531490190086018 
		10 96.817184683762818 11 104.2595629568859 12 100.34426026297972 13 77.645432093055163 
		14 41.089517196309316 15 3.6912156209347464 16 -10.221863059139663;
createNode animCurveTA -n "animCurveTA92";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -5.1606657150253259 1 -6.2648397813971499 
		2 -7.0171469803942683 3 -7.5306314001559604 4 -7.9243355623329066 5 -8.1934800607569258 
		6 -8.3117795302532347 7 -8.3496922512777605 8 -8.3710596847363004 9 -8.3749574330047505 
		10 -8.3317104409851002 11 -8.2603449492646082 12 -8.1804910098926555 13 -8.1080937058480025 
		14 -8.0241590770838886 15 -7.8921121207651659 16 -5.1606657150253259;
createNode animCurveTA -n "animCurveTA93";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.06227024557735699 1 0.12950167049838129 
		2 0.011285699598228007 3 -0.15654656892494709 4 -0.33963482171999482 5 -0.49544480660326717 
		6 -0.57334548105680427 7 -0.59434722028365528 8 -0.59175667328182802 9 -0.56562588237594935 
		10 -0.50180639034917607 11 -0.41412582453091973 12 -0.31399472492931818 13 
		-0.2123036269800882 14 -0.10185199025003697 15 0.029075023944335858 16 0.062270245577357289;
createNode animCurveTL -n "animCurveTL14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.25966634360891611 1 0.27013524028128549 
		2 0.27234835456466533 3 0.2667529105079825 4 0.25363632284979032 5 0.22922480015652713 
		6 0.19580236458705647 7 0.16239822281643609 8 0.13754833372275552 9 0.1219409986091792 
		10 0.11153820504056049 11 0.10948127730299673 12 0.11688541829522162 13 0.13669775581144181 
		14 0.17466212016497726 15 0.22353076795357499 16 0.25966634360891611;
createNode animCurveTL -n "animCurveTL15";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.39469102098730263 1 0.41867395517247008 
		2 0.4666293363666385 3 0.5151365814941602 4 0.53721191545362523 5 0.52593390602025336 
		6 0.49919279836989028 7 0.46839712191252431 8 0.44374374636050529 9 0.40552139092404332 
		10 0.38125144725365545 11 0.37032049894021613 12 0.36730973331292838 13 0.35768956125623347 
		14 0.34804171943762902 15 0.3425533659257502 16 0.39469102098730263;
createNode animCurveTL -n "animCurveTL16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -0.30744371534659226 1 -0.31457645005490326 
		2 -0.30728215782408297 3 -0.27499604339779782 4 -0.21665385832716044 5 -0.12053835898048622 
		6 0.0056664964114617146 7 0.13125473676508403 8 0.22564745074105613 9 0.28279145856050014 
		10 0.31012718924595262 11 0.30373920359023149 12 0.2630687959104 13 0.20491645444192796 
		14 0.085799307334649272 15 -0.088547359391851863 16 -0.30744371534659226;
	setAttr -s 17 ".kit[12:16]"  1 9 9 9 9;
	setAttr -s 17 ".kot[12:16]"  1 9 9 9 9;
	setAttr -s 17 ".kix[12:16]"  0.0065678991377353668 0.0037607257254421711 
		0.0022717108950018883 0.0016953019658103585 0.0015227877302095294;
	setAttr -s 17 ".kiy[12:16]"  -0.99997842311859131 -0.99999290704727173 
		-0.99999743700027466 -0.99999856948852539 -0.99999886751174927;
	setAttr -s 17 ".kox[12:16]"  0.0065679457038640976 0.0037607257254421711 
		0.0022717108950018883 0.0016953019658103585 0.0015227877302095294;
	setAttr -s 17 ".koy[12:16]"  -0.99997842311859131 -0.99999290704727173 
		-0.99999743700027466 -0.99999856948852539 -0.99999886751174927;
createNode animCurveTA -n "animCurveTA94";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 32.77670984532427 1 37.85545869269172 
		2 48.439010717403725 3 58.100765376368265 4 60.423776360447135 5 51.171620995770297 
		6 34.596641320911374 7 17.024491889459611 8 4.7829441437955635 9 -0.88661057981448199 
		10 -3.2102341642149379 11 -2.5609556957951933 12 0.68783630664211004 13 9.3451592650705351 
		14 22.644966809913662 15 34.83836802414195 16 32.77670984532427;
createNode animCurveTA -n "animCurveTA95";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -5.1606657150253268 1 -6.2648397813971499 
		2 -7.0171469803942683 3 -7.5306314001559604 4 -7.9243355623329066 5 -8.1934800607569258 
		6 -8.31177953025324 7 -8.3496922512777587 8 -8.3710596847363004 9 -8.3749574330047505 
		10 -8.3317104409851002 11 -8.2603449492646064 12 -8.1804910098926555 13 -8.134029642482643 
		14 -8.0241590770838886 15 -7.8921121207651659 16 -5.1606657150253268;
createNode animCurveTA -n "animCurveTA96";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.06227024557735631 1 0.12950167049838121 
		2 0.01128569959822881 3 -0.15654656892494728 4 -0.33963482171999626 5 -0.49544480660326828 
		6 -0.57334548105680494 7 -0.59434722028365328 8 -0.59175667328182835 9 -0.56562588237594857 
		10 -0.50180639034917662 11 -0.41412582453092001 12 -0.31399472492931862 13 
		-0.20164862990758792 14 -0.10185199025003618 15 0.029075023944336417 16 0.062270245577356505;
createNode animCurveTA -n "animCurveTA97";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "animCurveTA98";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "animCurveTA99";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "animCurveTA100";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA101";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA102";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_Right_Toe_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTA -n "brt_Right_Toe_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTA -n "brt_Right_Toe_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTA -n "brt_Left_Toe_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTA -n "brt_Left_Toe_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTA -n "brt_Left_Toe_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTL -n "animCurveTL17";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTL -n "animCurveTL18";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTL -n "animCurveTL19";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 1;
createNode animCurveTL -n "animCurveTL20";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTL -n "animCurveTL21";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTL -n "animCurveTL22";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 1;
createNode animCurveTL -n "animCurveTL23";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 8 0 12 0 16 0;
createNode animCurveTL -n "animCurveTL24";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 1.045;
createNode animCurveTL -n "animCurveTL25";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 8 0 12 0 16 0;
createNode animCurveTA -n "animCurveTA103";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -23.892493833837886 6 -32.237796022468771 
		12 -20.920970355958961 16 -23.892493833837886;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA104";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.7015802569511258 6 -1.7015802569511258 
		12 -1.7015802569511258 16 -1.7015802569511258;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.47261873570199 6 -1.47261873570199 
		12 -1.47261873570199 16 -1.47261873570199;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA107";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA108";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.0984482521620249;
createNode animCurveTA -n "animCurveTA109";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 18.588300303494186;
createNode animCurveTA -n "animCurveTA110";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA111";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA112";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -22.686733334985114;
createNode animCurveTA -n "animCurveTA113";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA114";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA115";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0579251312417477e-005;
createNode animCurveTA -n "animCurveTA116";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA117";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.0984482535121209;
createNode animCurveTA -n "animCurveTA119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 18.588300300216801;
createNode animCurveTA -n "animCurveTA120";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA122";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -22.686733333057838;
createNode animCurveTA -n "animCurveTA123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0579251312417477e-005;
createNode animCurveTA -n "animCurveTA126";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "animCurveTA127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "animCurveTA128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 2.4782236286598103;
createNode animCurveTA -n "animCurveTA129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "animCurveTA130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "animCurveTA131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 -26.720521212576141;
createNode animCurveTL -n "animCurveTL26";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -0.69163884744780491 1 -0.71800363181194116 
		2 -0.72008751950082694 3 -0.70136708355852817 4 -0.66599072364681633 5 -0.61619165732081316 
		6 -0.55956529687150769 7 -0.50535479966465613 8 -0.46178574327603999 9 -0.43489065341439015 
		10 -0.42963030727281393 11 -0.4450007933020052 12 -0.47939751541933306 13 
		-0.52892422638082726 14 -0.5859431280001467 15 -0.64279635750401753 16 -0.69163884744780502;
createNode animCurveTL -n "animCurveTL27";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.24376503020898049 1 0.38993612347593887 
		2 0.449378496265676 3 0.42255188814205136 4 0.3210989604708735 5 0.1540838582804199 
		6 -0.046074659368387547 7 -0.23873926507901899 8 -0.40106062866222664 9 -0.52526534397902669 
		10 -0.60044253163370809 11 -0.62314306706778089 12 -0.57788185691256966 13 
		-0.44426913225678277 14 -0.23133003247776007 15 0.016757298029074282 16 0.24376503020898074;
createNode animCurveTL -n "animCurveTL28";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.44841910314660005 1 0.26466400933307016 
		2 0.029764356120837974 3 -0.2112831815386523 4 -0.42365445388626072 5 -0.57013529690675468 
		6 -0.62707683210585263 7 -0.5966114710062087 8 -0.49388877967862249 9 -0.34054268748258792 
		10 -0.15009091377670172 11 0.05867860093533029 12 0.26726713969631577 13 
		0.4456375871716477 14 0.55046571304844649 15 0.55316333817561536 16 0.44841910314660011;
createNode animCurveTA -n "animCurveTA132";
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
createNode animCurveTA -n "animCurveTA133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 26.623081280451796 1 22.539514753620001 
		2 17.390477673799005 3 12.152297376947809 4 7.8070654062736704 5 5.3446855127589483 
		6 5.7650087244740753 7 10.564622564656929 8 19.327665425534413 9 30.227188009395064 
		10 41.286491621356852 11 50.289087053197321 12 55.012548581362758 13 52.817374804882391 
		14 45.482356089870144 15 36.029656476984776 16 26.623081280451796;
createNode animCurveTA -n "animCurveTA134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -49.096653183739221 1 -38.177962187585123 
		2 -27.149008817062143 3 -16.086697022871132 4 -5.0877093300327809 5 5.7374910913077732 
		6 16.253966165616216 7 28.542595623985626 8 42.816997349396715 9 56.093133390177023 
		10 65.687942998696286 11 69.765050110732801 12 67.68185096648763 13 54.297966505703457 
		14 25.438223729543552 15 -12.843382999785259 16 -49.096653183739221;
createNode animCurveTL -n "animCurveTL29";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.71012633498619782 1 0.72504426304396385 
		2 0.72929489041383844 3 0.7158542306861162 4 0.68476099319397665 5 0.64405913093392642 
		6 0.59788140134339862 7 0.55278662979412818 8 0.51810212910773645 9 0.49833970071678457 
		10 0.49630429134764525 11 0.51372911665779786 12 0.5461611632131651 13 0.58953065525971204 
		14 0.63643058160809407 15 0.67693139168786343 16 0.71012400136723119;
createNode animCurveTL -n "animCurveTL30";
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
createNode animCurveTL -n "animCurveTL31";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.075519724504810995 1 -0.16256322075088533 
		2 -0.37769004484597818 3 -0.52510313932737784 4 -0.57011686528696925 5 -0.53155492107581281 
		6 -0.4164094324744666 7 -0.23706029428422642 8 -0.029783823747587625 9 0.17600563699124197 
		10 0.36505988077591539 11 0.52032238980205126 12 0.63147828098326653 13 0.66049253990724832 
		14 0.55046767603319957 15 0.33308160443125817 16 0.075519476331700558;
createNode animCurveTA -n "animCurveTA135";
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
createNode animCurveTA -n "animCurveTA136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -29.584258420035471 1 -28.367964029714038 
		2 -25.90680749753788 3 -22.573272779630138 4 -19.033289925054081 5 -16.186972459949022 
		6 -15.023321557591039 7 -17.199562410045594 8 -22.511056178441429 9 -29.199047919287541 
		10 -35.551336727433757 11 -39.878057804879241 12 -41.930446405782654 13 -42.633834542588943 
		14 -40.82300862395892 15 -35.88370307797836 16 -29.584258420035471;
createNode animCurveTA -n "animCurveTA137";
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
createNode animCurveTL -n "animCurveTL32";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 -0.68327714892084557;
createNode animCurveTL -n "animCurveTL33";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 -7.1279910788835563;
createNode animCurveTL -n "animCurveTL34";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 7.0929301796796596;
createNode animCurveTA -n "animCurveTA138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 105.8390773060528;
createNode animCurveTA -n "animCurveTA139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 68.220013183892078;
createNode animCurveTA -n "animCurveTA140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 106.96469800875708;
createNode animCurveTL -n "animCurveTL35";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0.95566074451242544;
createNode animCurveTL -n "animCurveTL36";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 -7.2822957028252056;
createNode animCurveTL -n "animCurveTL37";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 6.8572169428218697;
createNode animCurveTA -n "animCurveTA141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 19.782546455811833;
createNode animCurveTA -n "animCurveTA142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 -24.619486178996596;
createNode animCurveTA -n "animCurveTA143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 -37.179093242461029;
createNode animCurveTL -n "animCurveTL38";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0.95955701966258378;
createNode animCurveTL -n "animCurveTL39";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 -0.64030869588996853;
createNode animCurveTL -n "animCurveTL40";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 -1.6499000421201597;
createNode animCurveTL -n "animCurveTL41";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 -0.37518978153922194;
createNode animCurveTL -n "animCurveTL42";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 -0.0049486269609355501;
createNode animCurveTL -n "animCurveTL43";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 -2.3299995351681959;
createNode animCurveTA -n "animCurveTA144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.5555755750740079 6 -1.5555755750740079 
		12 -1.5555755750740079 16 -1.5555755750740079;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.8362155502334307 6 -1.8362155502334307 
		12 -1.8362155502334307 16 -1.8362155502334307;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -5.0323831593938717 6 -5.0323831593938717 
		12 -5.0323831593938717 16 -5.0323831593938717;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -78.024183224002883 6 -78.024183224002883 
		12 -78.024183224002883 16 -78.024183224002883;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.204395537948077 6 27.204395537948077 
		12 27.204395537948077 16 27.204395537948077;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 24.297465729795011 6 24.297465729795011 
		12 24.297465729795011 16 24.297465729795011;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 68.327235470237881 6 68.327235470237881 
		12 68.327235470237881 16 68.327235470237881;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 38.08722284185874 6 38.08722284185874 
		12 38.08722284185874 16 38.08722284185874;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 22.836699594643825 6 22.836699594643825 
		12 22.836699594643825 16 22.836699594643825;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 30.664763547309338 6 30.664763547309338 
		12 30.664763547309338 16 30.664763547309338;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.9136426523866348 6 8.9136426523866348 
		12 8.9136426523866348 16 8.9136426523866348;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -58.316571219273882 6 -58.316571219273882 
		12 -58.316571219273882 16 -58.316571219273882;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.90476728715262045 6 0.90476728715262045 
		12 0.90476728715262045 16 0.90476728715262045;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.5899170637045899 6 1.5899170637045899 
		12 1.5899170637045899 16 1.5899170637045899;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -36.628454700917274 6 -36.628454700917274 
		12 -36.628454700917274 16 -36.628454700917274;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 15.180891733866947 6 15.180891733866947 
		12 15.180891733866947 16 15.180891733866947;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.072787087017036858 6 -0.072787087017036858 
		12 -0.072787087017036858 16 -0.072787087017036858;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 0 12 0 16 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 0 12 0 16 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -19.693819774835177 6 -19.693819774835177 
		12 -19.693819774835177 16 -19.693819774835177;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA165";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.705218915343313 3 27.705218915343313 
		8 27.705218915343313 12 27.705218915343313 16 27.705218915343313;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 43.35103828268312 3 43.35103828268312 
		8 43.35103828268312 12 43.35103828268312 16 43.35103828268312;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA169";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 54.23572299800319 3 54.23572299800319 
		8 54.23572299800319 12 54.23572299800319 16 54.23572299800319;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 39.038703285259977 3 39.038703285259977 
		8 39.038703285259977 12 39.038703285259977 16 39.038703285259977;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 72.755037061650995 3 72.755037061650995 
		8 72.755037061650995 12 72.755037061650995 16 72.755037061650995;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 38.926480273156798 3 38.926480273156798 
		8 38.926480273156798 12 38.926480273156798 16 38.926480273156798;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 0 12 0 16 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 0 12 0 16 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -14.841309524368913 6 -14.841309524368913 
		12 -14.841309524368913 16 -14.841309524368913;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 3.1198943483277444 6 3.1198943483277444 
		12 3.1198943483277444 16 3.1198943483277444;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.7238169885910806 6 1.7238169885910806 
		12 1.7238169885910806 16 1.7238169885910806;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 12.268388134198538 6 12.268388134198538 
		12 12.268388134198538 16 12.268388134198538;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 0 12 0 16 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 0 12 0 16 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 4.310474063255155 6 4.310474063255155 
		12 -6.737919429240308 16 4.310474063255155;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 0 12 0 16 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 0 12 0 16 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 0 12 0 16 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 0 12 0 16 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA186";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 0 12 0 16 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA187";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 9.348976144606322 6 10.364109300212814 
		12 10.114857986263612 16 9.348976144606322;
	setAttr -s 4 ".kit[1:3]"  9 1 3;
	setAttr -s 4 ".kot[1:3]"  9 1 3;
	setAttr -s 4 ".kix[2:3]"  0.99650871753692627 1;
	setAttr -s 4 ".kiy[2:3]"  -0.083488449454307556 0;
	setAttr -s 4 ".kox[2:3]"  0.99650871753692627 1;
	setAttr -s 4 ".koy[2:3]"  -0.083488471806049347 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 7.2773573828671791 6 7.2773573828671791 
		12 7.2936261034767522 16 7.2773573828671791;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.49428440924719735 6 -0.49428440924719735 
		12 0.077349414528848151 16 -0.49428440924719735;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA190";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 18.701652569624674 6 22.972796655111736 
		12 18.503769671847564 16 18.701652569624674;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA191";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 0 12 0 16 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA192";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 0 12 0 16 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA193";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 16.736721183175977 6 16.736721183175977 
		12 16.736721183175977 16 16.736721183175977;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA194";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -19.916813043140664 6 -19.916813043140664 
		12 -19.916813043140664 16 -19.916813043140664;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA195";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.1381503000571307 6 2.1381503000571307 
		12 2.1381503000571307 16 2.1381503000571307;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA196";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -6.3333534086058805 6 -6.3333534086058805 
		12 -6.3333534086058805 16 -6.3333534086058805;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA197";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 0 12 0 16 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA198";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 0 12 0 16 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA199";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 17.545620107018433 6 17.545620107018433 
		12 17.545620107018433 16 17.545620107018433;
	setAttr ".pst" 3;
createNode clipLibrary -n "clipLibrary3";
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
	setAttr ".o" 3;
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
	setAttr -s 218 ".gn";
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
connectAttr "brt_flailSource.st" "clipLibrary3.st[0]";
connectAttr "brt_flailSource.du" "clipLibrary3.du[0]";
connectAttr "animCurveTL3.a" "clipLibrary3.cel[0].cev[0].cevr";
connectAttr "animCurveTL4.a" "clipLibrary3.cel[0].cev[1].cevr";
connectAttr "animCurveTL5.a" "clipLibrary3.cel[0].cev[2].cevr";
connectAttr "animCurveTL6.a" "clipLibrary3.cel[0].cev[3].cevr";
connectAttr "animCurveTL7.a" "clipLibrary3.cel[0].cev[4].cevr";
connectAttr "animCurveTA87.a" "clipLibrary3.cel[0].cev[5].cevr";
connectAttr "animCurveTU1.a" "clipLibrary3.cel[0].cev[6].cevr";
connectAttr "animCurveTU2.a" "clipLibrary3.cel[0].cev[7].cevr";
connectAttr "animCurveTU3.a" "clipLibrary3.cel[0].cev[8].cevr";
connectAttr "animCurveTU4.a" "clipLibrary3.cel[0].cev[9].cevr";
connectAttr "animCurveTU5.a" "clipLibrary3.cel[0].cev[10].cevr";
connectAttr "animCurveTU6.a" "clipLibrary3.cel[0].cev[11].cevr";
connectAttr "animCurveTU7.a" "clipLibrary3.cel[0].cev[12].cevr";
connectAttr "animCurveTU8.a" "clipLibrary3.cel[0].cev[13].cevr";
connectAttr "animCurveTA88.a" "clipLibrary3.cel[0].cev[14].cevr";
connectAttr "animCurveTA89.a" "clipLibrary3.cel[0].cev[15].cevr";
connectAttr "animCurveTA90.a" "clipLibrary3.cel[0].cev[16].cevr";
connectAttr "animCurveTL8.a" "clipLibrary3.cel[0].cev[17].cevr";
connectAttr "animCurveTL9.a" "clipLibrary3.cel[0].cev[18].cevr";
connectAttr "animCurveTL10.a" "clipLibrary3.cel[0].cev[19].cevr";
connectAttr "animCurveTL11.a" "clipLibrary3.cel[0].cev[20].cevr";
connectAttr "animCurveTL12.a" "clipLibrary3.cel[0].cev[21].cevr";
connectAttr "animCurveTL13.a" "clipLibrary3.cel[0].cev[22].cevr";
connectAttr "animCurveTA91.a" "clipLibrary3.cel[0].cev[23].cevr";
connectAttr "animCurveTA92.a" "clipLibrary3.cel[0].cev[24].cevr";
connectAttr "animCurveTA93.a" "clipLibrary3.cel[0].cev[25].cevr";
connectAttr "animCurveTL14.a" "clipLibrary3.cel[0].cev[26].cevr";
connectAttr "animCurveTL15.a" "clipLibrary3.cel[0].cev[27].cevr";
connectAttr "animCurveTL16.a" "clipLibrary3.cel[0].cev[28].cevr";
connectAttr "animCurveTA94.a" "clipLibrary3.cel[0].cev[29].cevr";
connectAttr "animCurveTA95.a" "clipLibrary3.cel[0].cev[30].cevr";
connectAttr "animCurveTA96.a" "clipLibrary3.cel[0].cev[31].cevr";
connectAttr "animCurveTA97.a" "clipLibrary3.cel[0].cev[32].cevr";
connectAttr "animCurveTA98.a" "clipLibrary3.cel[0].cev[33].cevr";
connectAttr "animCurveTA99.a" "clipLibrary3.cel[0].cev[34].cevr";
connectAttr "animCurveTA100.a" "clipLibrary3.cel[0].cev[35].cevr";
connectAttr "animCurveTA101.a" "clipLibrary3.cel[0].cev[36].cevr";
connectAttr "animCurveTA102.a" "clipLibrary3.cel[0].cev[37].cevr";
connectAttr "brt_Right_Toe_Hoop_rotateX.a" "clipLibrary3.cel[0].cev[38].cevr"
		;
connectAttr "brt_Right_Toe_Hoop_rotateY.a" "clipLibrary3.cel[0].cev[39].cevr"
		;
connectAttr "brt_Right_Toe_Hoop_rotateZ.a" "clipLibrary3.cel[0].cev[40].cevr"
		;
connectAttr "brt_Left_Toe_Hoop_rotateX.a" "clipLibrary3.cel[0].cev[41].cevr"
		;
connectAttr "brt_Left_Toe_Hoop_rotateY.a" "clipLibrary3.cel[0].cev[42].cevr"
		;
connectAttr "brt_Left_Toe_Hoop_rotateZ.a" "clipLibrary3.cel[0].cev[43].cevr"
		;
connectAttr "animCurveTL17.a" "clipLibrary3.cel[0].cev[44].cevr";
connectAttr "animCurveTL18.a" "clipLibrary3.cel[0].cev[45].cevr";
connectAttr "animCurveTL19.a" "clipLibrary3.cel[0].cev[46].cevr";
connectAttr "animCurveTL20.a" "clipLibrary3.cel[0].cev[47].cevr";
connectAttr "animCurveTL21.a" "clipLibrary3.cel[0].cev[48].cevr";
connectAttr "animCurveTL22.a" "clipLibrary3.cel[0].cev[49].cevr";
connectAttr "animCurveTL23.a" "clipLibrary3.cel[0].cev[50].cevr";
connectAttr "animCurveTL24.a" "clipLibrary3.cel[0].cev[51].cevr";
connectAttr "animCurveTL25.a" "clipLibrary3.cel[0].cev[52].cevr";
connectAttr "animCurveTA103.a" "clipLibrary3.cel[0].cev[53].cevr";
connectAttr "animCurveTA104.a" "clipLibrary3.cel[0].cev[54].cevr";
connectAttr "animCurveTA105.a" "clipLibrary3.cel[0].cev[55].cevr";
connectAttr "animCurveTA106.a" "clipLibrary3.cel[0].cev[56].cevr";
connectAttr "animCurveTA107.a" "clipLibrary3.cel[0].cev[57].cevr";
connectAttr "animCurveTA108.a" "clipLibrary3.cel[0].cev[58].cevr";
connectAttr "animCurveTA109.a" "clipLibrary3.cel[0].cev[59].cevr";
connectAttr "animCurveTA110.a" "clipLibrary3.cel[0].cev[60].cevr";
connectAttr "animCurveTA111.a" "clipLibrary3.cel[0].cev[61].cevr";
connectAttr "animCurveTA112.a" "clipLibrary3.cel[0].cev[62].cevr";
connectAttr "animCurveTA113.a" "clipLibrary3.cel[0].cev[63].cevr";
connectAttr "animCurveTA114.a" "clipLibrary3.cel[0].cev[64].cevr";
connectAttr "animCurveTA115.a" "clipLibrary3.cel[0].cev[65].cevr";
connectAttr "animCurveTA116.a" "clipLibrary3.cel[0].cev[66].cevr";
connectAttr "animCurveTA117.a" "clipLibrary3.cel[0].cev[67].cevr";
connectAttr "animCurveTA118.a" "clipLibrary3.cel[0].cev[68].cevr";
connectAttr "animCurveTA119.a" "clipLibrary3.cel[0].cev[69].cevr";
connectAttr "animCurveTA120.a" "clipLibrary3.cel[0].cev[70].cevr";
connectAttr "animCurveTA121.a" "clipLibrary3.cel[0].cev[71].cevr";
connectAttr "animCurveTA122.a" "clipLibrary3.cel[0].cev[72].cevr";
connectAttr "animCurveTA123.a" "clipLibrary3.cel[0].cev[73].cevr";
connectAttr "animCurveTA124.a" "clipLibrary3.cel[0].cev[74].cevr";
connectAttr "animCurveTA125.a" "clipLibrary3.cel[0].cev[75].cevr";
connectAttr "animCurveTA126.a" "clipLibrary3.cel[0].cev[76].cevr";
connectAttr "animCurveTA127.a" "clipLibrary3.cel[0].cev[77].cevr";
connectAttr "animCurveTA128.a" "clipLibrary3.cel[0].cev[78].cevr";
connectAttr "animCurveTA129.a" "clipLibrary3.cel[0].cev[79].cevr";
connectAttr "animCurveTA130.a" "clipLibrary3.cel[0].cev[80].cevr";
connectAttr "animCurveTA131.a" "clipLibrary3.cel[0].cev[81].cevr";
connectAttr "animCurveTL26.a" "clipLibrary3.cel[0].cev[82].cevr";
connectAttr "animCurveTL27.a" "clipLibrary3.cel[0].cev[83].cevr";
connectAttr "animCurveTL28.a" "clipLibrary3.cel[0].cev[84].cevr";
connectAttr "animCurveTA132.a" "clipLibrary3.cel[0].cev[85].cevr";
connectAttr "animCurveTA133.a" "clipLibrary3.cel[0].cev[86].cevr";
connectAttr "animCurveTA134.a" "clipLibrary3.cel[0].cev[87].cevr";
connectAttr "animCurveTL29.a" "clipLibrary3.cel[0].cev[88].cevr";
connectAttr "animCurveTL30.a" "clipLibrary3.cel[0].cev[89].cevr";
connectAttr "animCurveTL31.a" "clipLibrary3.cel[0].cev[90].cevr";
connectAttr "animCurveTA135.a" "clipLibrary3.cel[0].cev[91].cevr";
connectAttr "animCurveTA136.a" "clipLibrary3.cel[0].cev[92].cevr";
connectAttr "animCurveTA137.a" "clipLibrary3.cel[0].cev[93].cevr";
connectAttr "animCurveTL32.a" "clipLibrary3.cel[0].cev[94].cevr";
connectAttr "animCurveTL33.a" "clipLibrary3.cel[0].cev[95].cevr";
connectAttr "animCurveTL34.a" "clipLibrary3.cel[0].cev[96].cevr";
connectAttr "animCurveTA138.a" "clipLibrary3.cel[0].cev[97].cevr";
connectAttr "animCurveTA139.a" "clipLibrary3.cel[0].cev[98].cevr";
connectAttr "animCurveTA140.a" "clipLibrary3.cel[0].cev[99].cevr";
connectAttr "animCurveTL35.a" "clipLibrary3.cel[0].cev[100].cevr";
connectAttr "animCurveTL36.a" "clipLibrary3.cel[0].cev[101].cevr";
connectAttr "animCurveTL37.a" "clipLibrary3.cel[0].cev[102].cevr";
connectAttr "animCurveTA141.a" "clipLibrary3.cel[0].cev[103].cevr";
connectAttr "animCurveTA142.a" "clipLibrary3.cel[0].cev[104].cevr";
connectAttr "animCurveTA143.a" "clipLibrary3.cel[0].cev[105].cevr";
connectAttr "animCurveTL38.a" "clipLibrary3.cel[0].cev[106].cevr";
connectAttr "animCurveTL39.a" "clipLibrary3.cel[0].cev[107].cevr";
connectAttr "animCurveTL40.a" "clipLibrary3.cel[0].cev[108].cevr";
connectAttr "animCurveTL41.a" "clipLibrary3.cel[0].cev[109].cevr";
connectAttr "animCurveTL42.a" "clipLibrary3.cel[0].cev[110].cevr";
connectAttr "animCurveTL43.a" "clipLibrary3.cel[0].cev[111].cevr";
connectAttr "animCurveTA144.a" "clipLibrary3.cel[0].cev[112].cevr";
connectAttr "animCurveTA145.a" "clipLibrary3.cel[0].cev[113].cevr";
connectAttr "animCurveTA146.a" "clipLibrary3.cel[0].cev[114].cevr";
connectAttr "animCurveTA147.a" "clipLibrary3.cel[0].cev[115].cevr";
connectAttr "animCurveTA148.a" "clipLibrary3.cel[0].cev[116].cevr";
connectAttr "animCurveTA149.a" "clipLibrary3.cel[0].cev[117].cevr";
connectAttr "animCurveTA150.a" "clipLibrary3.cel[0].cev[118].cevr";
connectAttr "animCurveTA151.a" "clipLibrary3.cel[0].cev[119].cevr";
connectAttr "animCurveTA152.a" "clipLibrary3.cel[0].cev[120].cevr";
connectAttr "animCurveTA153.a" "clipLibrary3.cel[0].cev[121].cevr";
connectAttr "animCurveTA154.a" "clipLibrary3.cel[0].cev[122].cevr";
connectAttr "animCurveTA155.a" "clipLibrary3.cel[0].cev[123].cevr";
connectAttr "animCurveTA156.a" "clipLibrary3.cel[0].cev[124].cevr";
connectAttr "animCurveTA157.a" "clipLibrary3.cel[0].cev[125].cevr";
connectAttr "animCurveTA158.a" "clipLibrary3.cel[0].cev[126].cevr";
connectAttr "animCurveTA159.a" "clipLibrary3.cel[0].cev[127].cevr";
connectAttr "animCurveTA160.a" "clipLibrary3.cel[0].cev[128].cevr";
connectAttr "animCurveTA161.a" "clipLibrary3.cel[0].cev[129].cevr";
connectAttr "animCurveTA162.a" "clipLibrary3.cel[0].cev[130].cevr";
connectAttr "animCurveTA163.a" "clipLibrary3.cel[0].cev[131].cevr";
connectAttr "animCurveTA164.a" "clipLibrary3.cel[0].cev[132].cevr";
connectAttr "animCurveTA165.a" "clipLibrary3.cel[0].cev[133].cevr";
connectAttr "animCurveTA166.a" "clipLibrary3.cel[0].cev[134].cevr";
connectAttr "animCurveTA167.a" "clipLibrary3.cel[0].cev[135].cevr";
connectAttr "animCurveTA168.a" "clipLibrary3.cel[0].cev[136].cevr";
connectAttr "animCurveTA169.a" "clipLibrary3.cel[0].cev[137].cevr";
connectAttr "animCurveTA170.a" "clipLibrary3.cel[0].cev[138].cevr";
connectAttr "animCurveTA171.a" "clipLibrary3.cel[0].cev[139].cevr";
connectAttr "animCurveTA172.a" "clipLibrary3.cel[0].cev[140].cevr";
connectAttr "animCurveTA173.a" "clipLibrary3.cel[0].cev[141].cevr";
connectAttr "animCurveTA174.a" "clipLibrary3.cel[0].cev[142].cevr";
connectAttr "animCurveTA175.a" "clipLibrary3.cel[0].cev[143].cevr";
connectAttr "animCurveTA176.a" "clipLibrary3.cel[0].cev[144].cevr";
connectAttr "animCurveTA177.a" "clipLibrary3.cel[0].cev[145].cevr";
connectAttr "animCurveTA178.a" "clipLibrary3.cel[0].cev[146].cevr";
connectAttr "animCurveTA179.a" "clipLibrary3.cel[0].cev[147].cevr";
connectAttr "animCurveTA180.a" "clipLibrary3.cel[0].cev[148].cevr";
connectAttr "animCurveTA181.a" "clipLibrary3.cel[0].cev[149].cevr";
connectAttr "animCurveTA182.a" "clipLibrary3.cel[0].cev[150].cevr";
connectAttr "animCurveTA183.a" "clipLibrary3.cel[0].cev[151].cevr";
connectAttr "animCurveTA184.a" "clipLibrary3.cel[0].cev[152].cevr";
connectAttr "animCurveTA185.a" "clipLibrary3.cel[0].cev[153].cevr";
connectAttr "animCurveTA186.a" "clipLibrary3.cel[0].cev[154].cevr";
connectAttr "animCurveTA187.a" "clipLibrary3.cel[0].cev[155].cevr";
connectAttr "animCurveTA188.a" "clipLibrary3.cel[0].cev[156].cevr";
connectAttr "animCurveTA189.a" "clipLibrary3.cel[0].cev[157].cevr";
connectAttr "animCurveTA190.a" "clipLibrary3.cel[0].cev[158].cevr";
connectAttr "animCurveTA191.a" "clipLibrary3.cel[0].cev[159].cevr";
connectAttr "animCurveTA192.a" "clipLibrary3.cel[0].cev[160].cevr";
connectAttr "animCurveTA193.a" "clipLibrary3.cel[0].cev[161].cevr";
connectAttr "animCurveTA194.a" "clipLibrary3.cel[0].cev[162].cevr";
connectAttr "animCurveTA195.a" "clipLibrary3.cel[0].cev[163].cevr";
connectAttr "animCurveTA196.a" "clipLibrary3.cel[0].cev[164].cevr";
connectAttr "animCurveTA197.a" "clipLibrary3.cel[0].cev[165].cevr";
connectAttr "animCurveTA198.a" "clipLibrary3.cel[0].cev[166].cevr";
connectAttr "animCurveTA199.a" "clipLibrary3.cel[0].cev[167].cevr";
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
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[11].olnk";
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
// End of brt_flail.ma
