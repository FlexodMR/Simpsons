//Maya ASCII 4.0 scene
//Name: hom_hands_on_hips.ma
//Last modified: Tue, Feb 18, 2003 12:16:49 PM
requires maya "4.0";
requires "p3dmayaexp" "2.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "hom_hands_on_hipsSource";
	setAttr ".ihi" 0;
	setAttr ".du" 60;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL206";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 1 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.0033333150204271078;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.99999445676803589;
	setAttr -s 3 ".kox[1:2]"  1 0.0033333150204271078;
	setAttr -s 3 ".koy[1:2]"  0 -0.99999445676803589;
createNode animCurveTL -n "animCurveTL207";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 -0.051425456377630012 1 -0.056280481608661274 
		2 -0.06154991232851062 3 -0.067056146200343239 4 -0.072621580887324233 5 
		-0.078068614052618793 6 -0.083219643359392081 7 -0.087897066470809207 8 -0.091923281050035346 
		9 -0.095120684760235663 10 -0.097311675264575306 11 -0.098897282928949934 
		12 -0.10039696068596506 13 -0.10181107301144719 14 -0.10313998438122277 15 
		-0.10438405927111824 16 -0.10554366215696007 17 -0.10661915751457475 18 -0.10761090981978867 
		19 -0.10851928354842834 20 -0.10934464317632017 21 -0.11008735317929069 22 
		-0.11074777803316631 23 -0.11132628221377347 24 -0.11182323019693867 25 -0.11223898645848834 
		26 -0.11257391547424898 27 -0.11282838172004699 28 -0.11300274967170885 29 
		-0.11309738380506103 30 -0.11311264859592997 31 -0.11304890852014214 32 -0.11290652805352401 
		33 -0.112685871671902 34 -0.11238730385110261 35 -0.11201118906695227 36 
		-0.11155789179527742 37 -0.1110277765119046 38 -0.11042120769266017 39 -0.10973854981337063 
		40 -0.10898016734986245 41 -0.10814642477796206 42 -0.10723768657349593 43 
		-0.10625431721229052 44 -0.10519668117017231 45 -0.10406514292296772 46 -0.10286006694650322 
		47 -0.10158181771660528 48 -0.10023075970910034 49 -0.098807257399814857 
		50 -0.097311675264575306 51 -0.095199275863483715 52 -0.092047474398377946 
		53 -0.088039694769296392 54 -0.083359360876277475 55 -0.078189896619359614 
		56 -0.072714725898581176 57 -0.067117272613980608 58 -0.061580960665596277 
		59 -0.056289213953466595 60 -0.051425456377630012;
createNode animCurveTL -n "animCurveTL209";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0 1 0.0013941213793495031 2 0.0030120669839927058 
		3 0.0047579121521258852 4 0.0065357322219453179 5 0.0082496025316472783 6 
		0.009803598419428048 7 0.011101795223483897 8 0.012048268282011108 9 0.012547092933205954 
		10 0.012502344515264717 11 0.01214666837917701 12 0.011778266999395886 13 
		0.011399584984780085 14 0.011013066944188356 15 0.010621157486479434 16 0.010226301220512067 
		17 0.0098309427551449922 18 0.009437526699236953 19 0.0090484976616466949 
		20 0.0086663002512329564 21 0.0082933790768544811 22 0.0079321787473700129 
		23 0.0075851438716382927 24 0.0072547190585180625 25 0.0069433489168680626 
		26 0.0066534780555470401 27 0.0063875510834137316 28 0.0061480126093268854 
		29 0.0059373072421452381 30 0.0057578795907275368 31 0.0056121742639325192 
		32 0.0055026358706189308 33 0.0054317090196455125 34 0.0054018383198710072 
		35 0.0054154683801541578 36 0.0054750438093537036 37 0.00558300921632839 
		38 0.0057418092099369581 39 0.0059538883990381498 40 0.0062216913924907071 
		41 0.0065476627991533729 42 0.0069342472278848899 43 0.0073838892875440001 
		44 0.0078990335869894446 45 0.0084821247350799697 46 0.0091356073406743104 
		47 0.0098619260126312121 48 0.01066352535980942 49 0.011542849991067675 50 
		0.012502344515264717 51 0.013075256486035925 52 0.012882897106236245 53 0.012060314263804953 
		54 0.010742555846681323 55 0.0090646697428046347 56 0.0071617038401141668 
		57 0.0051687060265491894 58 0.0032207241900489847 59 0.0014528062185528287 
		60 0;
createNode animCurveTA -n "animCurveTA566";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTU -n "animCurveTU45";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 1 50 1 60 0;
	setAttr -s 4 ".kit[0:3]"  1 2 2 1;
	setAttr -s 4 ".kot[0:3]"  9 2 2 5;
	setAttr -s 4 ".kix[0:3]"  0 0.16439899802207947 1 0.31622779369354248;
	setAttr -s 4 ".kiy[0:3]"  0 0.98639392852783203 0 -0.94868326187133789;
createNode animCurveTU -n "animCurveTU46";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 1 50 1 60 0;
	setAttr -s 4 ".kit[0:3]"  1 2 2 1;
	setAttr -s 4 ".kot[0:3]"  9 2 2 5;
	setAttr -s 4 ".kix[0:3]"  0 0.16439899802207947 1 0.31622779369354248;
	setAttr -s 4 ".kiy[0:3]"  0 0.98639392852783203 0 -0.94868326187133789;
createNode animCurveTU -n "animCurveTU47";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU48";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA567";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA568";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA569";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL211";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL212";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL213";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.26454016861507795 60 -0.26454016861507795;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.13806192026723146 60 0.13806192026723146;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.064904406754016042 60 -0.064904406754016042;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA570";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA571";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -25.948901905116401 60 -25.948901905116401;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA572";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.21594587158542247 60 0.21594587158542247;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.1380615615975922 60 0.1380615615975922;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.00078430246903575811 60 0.00078430246903575811;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA573";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA574";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA575";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA576";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA577";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA578";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA579";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA580";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA581";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL220";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL221";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL222";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 50 1 60 1;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL223";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL224";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL225";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 50 1 60 1;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL226";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.076472881617957691 10 -0.14470856938841167 
		50 -0.14470856938841167 60 -0.076472881617957691;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 0.13635286688804626 0.14482036232948303 
		0.048792112618684769;
	setAttr -s 4 ".kiy[0:3]"  0 -0.99066030979156494 0.98945796489715576 
		0.99880897998809814;
	setAttr -s 4 ".kox[1:3]"  0.13634374737739563 0.14481513202190399 
		0.048792112618684769;
	setAttr -s 4 ".koy[1:3]"  -0.99066156148910522 0.98945873975753784 
		0.99880897998809814;
createNode animCurveTL -n "animCurveTL227";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.93105416142265018 10 0.96160945729260738 
		50 0.96149280051375674 60 0.93105416142265018;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 0.91489976644515991 0.86833572387695313 
		0.10885913670063019;
	setAttr -s 4 ".kiy[0:3]"  0 0.40368106961250305 -0.49597686529159546 
		-0.99405717849731445;
	setAttr -s 4 ".kox[1:3]"  0.91489905118942261 0.86833673715591431 
		0.10885913670063019;
	setAttr -s 4 ".koy[1:3]"  0.40368267893791199 -0.49597513675689697 
		-0.99405717849731445;
createNode animCurveTL -n "animCurveTL228";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0.01859177106843643 50 0.01859177106843643 
		60 0;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 0.54095137119293213 0.21864570677280426 
		0.17647679150104523;
	setAttr -s 4 ".kiy[0:3]"  0 -0.84105390310287476 0.97580432891845703 
		-0.98430478572845459;
	setAttr -s 4 ".kox[1:3]"  0.54096364974975586 0.218610480427742 
		0.17647679150104523;
	setAttr -s 4 ".koy[1:3]"  -0.84104597568511963 0.97581219673156738 
		-0.98430478572845459;
createNode animCurveTA -n "animCurveTA582";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.62843630316474508 10 0 50 
		0 60 -0.62843630316474508;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 0.9999995231628418 1 0.99945908784866333;
	setAttr -s 4 ".kiy[0:3]"  0 0.00094762298977002501 0 -0.0328870490193367;
	setAttr -s 4 ".kox[1:3]"  0.9999995231628418 1 0.99945908784866333;
	setAttr -s 4 ".koy[1:3]"  0.00094762234948575497 0 -0.0328870490193367;
createNode animCurveTA -n "animCurveTA583";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -5.8284402688137167 10 -5.9668657251980424 
		50 -5.9668657251980424 60 -5.8284402688137167;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 1 0.99999994039535522 0.99997371435165405;
	setAttr -s 4 ".kiy[0:3]"  0 -0.0001932385639520362 0.0003647854900918901 
		0.007247749250382185;
	setAttr -s 4 ".kox[1:3]"  1 0.99999994039535522 0.99997371435165405;
	setAttr -s 4 ".koy[1:3]"  -0.00019323854940012097 0.00036478551919572055 
		0.007247749250382185;
createNode animCurveTA -n "animCurveTA584";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.295636019309746 10 -4.321 
		50 -4.321 60 -1.295636019309746;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99999475479125977 0.99996870756149292 
		0.98768478631973267;
	setAttr -s 4 ".kiy[0:3]"  0 -0.0032399878837168217 0.0079127363860607147 
		0.15645685791969299;
	setAttr -s 4 ".kox[1:3]"  0.99999475479125977 0.99996870756149292 
		0.98768478631973267;
	setAttr -s 4 ".koy[1:3]"  -0.0032399862539023161 0.0079127242788672447 
		0.15645685791969299;
createNode animCurveTA -n "animCurveTA585";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA586";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA587";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA588";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA589";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA590";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA591";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA592";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA593";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA594";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA595";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA596";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA597";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA598";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA599";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA600";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA601";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA602";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA603";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA604";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA605";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA606";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA607";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA608";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA609";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA610";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL229";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.43524234076486068 50 -0.22164053326398034 
		60 -0.43524234076486068;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.015603462234139442;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.99987828731536865;
	setAttr -s 3 ".kox[1:2]"  1 0.015603462234139442;
	setAttr -s 3 ".koy[1:2]"  0 -0.99987828731536865;
createNode animCurveTL -n "animCurveTL230";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.82665738350180629 50 -0.9417076481617882 
		60 -0.82665738350180629;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.028960691764950752;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99958056211471558;
	setAttr -s 3 ".kox[1:2]"  1 0.028960691764950752;
	setAttr -s 3 ".koy[1:2]"  0 0.99958056211471558;
createNode animCurveTL -n "animCurveTL231";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.27773886459742925 50 0.038362195289875119 
		60 0.27773886459742925;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.0139237055554986;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99990308284759521;
	setAttr -s 3 ".kox[1:2]"  1 0.0139237055554986;
	setAttr -s 3 ".koy[1:2]"  0 0.99990308284759521;
createNode animCurveTA -n "animCurveTA611";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.8121934161072299e-015 50 6.7230119492284173 
		60 1.8121934161072299e-015;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.94326388835906982;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.33204403519630432;
	setAttr -s 3 ".kox[1:2]"  1 0.94326388835906982;
	setAttr -s 3 ".koy[1:2]"  0 -0.33204403519630432;
createNode animCurveTA -n "animCurveTA612";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 28.652637602052774 50 19.839511008631867 
		60 28.652637602052774;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.90798848867416382;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.41899511218070984;
	setAttr -s 3 ".kox[1:2]"  1 0.90798848867416382;
	setAttr -s 3 ".koy[1:2]"  0 0.41899511218070984;
createNode animCurveTA -n "animCurveTA613";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 64.676908227303443 50 76.90743997913691 
		60 64.676908227303443;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.84212255477905273;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.53928613662719727;
	setAttr -s 3 ".kox[1:2]"  1 0.84212255477905273;
	setAttr -s 3 ".koy[1:2]"  0 -0.53928613662719727;
createNode animCurveTL -n "animCurveTL232";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.5198069948790518 50 0.20623790699604494 
		60 0.5198069948790518;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.010629699565470219;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99994349479675293;
	setAttr -s 3 ".kox[1:2]"  1 0.010629699565470219;
	setAttr -s 3 ".koy[1:2]"  0 0.99994349479675293;
createNode animCurveTL -n "animCurveTL233";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.72394202659893114 50 -0.94615818397708606 
		60 -0.72394202659893114;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.014998722821474075;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99988752603530884;
	setAttr -s 3 ".kox[1:2]"  1 0.014998722821474075;
	setAttr -s 3 ".koy[1:2]"  0 0.99988752603530884;
createNode animCurveTL -n "animCurveTL234";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.36439499068905612 50 0.023808763748733922 
		60 0.36439499068905612;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.009786577895283699;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99995213747024536;
	setAttr -s 3 ".kox[1:2]"  1 0.009786577895283699;
	setAttr -s 3 ".koy[1:2]"  0 0.99995213747024536;
createNode animCurveTA -n "animCurveTA614";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.7976222737965317 50 8.1910546202722809 
		60 7.7976222737965317;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99978786706924438;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.020595699548721313;
	setAttr -s 3 ".kox[1:2]"  1 0.99978786706924438;
	setAttr -s 3 ".koy[1:2]"  0 -0.020595699548721313;
createNode animCurveTA -n "animCurveTA615";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -30.409274105849079 50 -16.680769289981995 
		60 -30.409274105849079;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.81198734045028687;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.58367502689361572;
	setAttr -s 3 ".kox[1:2]"  1 0.81198734045028687;
	setAttr -s 3 ".koy[1:2]"  0 -0.58367502689361572;
createNode animCurveTA -n "animCurveTA616";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -64.859940280210893 50 -64.609749241846473 
		60 -64.859940280210893;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99991422891616821;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.01309884712100029;
	setAttr -s 3 ".kox[1:2]"  1 0.99991422891616821;
	setAttr -s 3 ".koy[1:2]"  0 -0.01309884712100029;
createNode animCurveTL -n "animCurveTL235";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.98071836797454492 50 -0.8448236677023373 
		60 -0.98071836797454492;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.024521421641111374;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.99969929456710815;
	setAttr -s 3 ".kox[1:2]"  1 0.024521421641111374;
	setAttr -s 3 ".koy[1:2]"  0 -0.99969929456710815;
createNode animCurveTL -n "animCurveTL236";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.6432964864655397 50 1.5117481219250299 
		60 1.6432964864655397;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.025331092998385429;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.9996790885925293;
	setAttr -s 3 ".kox[1:2]"  1 0.025331092998385429;
	setAttr -s 3 ".koy[1:2]"  0 0.9996790885925293;
createNode animCurveTL -n "animCurveTL237";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.097994651149805143 50 -0.097994651149805143 
		60 -0.097994651149805143;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA617";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 5.4739599453216465 50 5.4739599453216474 
		60 5.4739599453216465;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA618";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.5874521608419823 50 8.5874521608419823 
		60 8.5874521608419823;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA619";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 74.754744621954103 50 74.754744621954103 
		60 74.754744621954103;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL238";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.76309120872911718 50 0.61083301393139333 
		60 0.76309120872911718;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.021887391805648804;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99976044893264771;
	setAttr -s 3 ".kox[1:2]"  1 0.021887391805648804;
	setAttr -s 3 ".koy[1:2]"  0 0.99976044893264771;
createNode animCurveTL -n "animCurveTL239";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.6150490657878991 50 1.4644416293758407 
		60 1.6150490657878991;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.022127177566289902;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.9997551441192627;
	setAttr -s 3 ".kox[1:2]"  1 0.022127177566289902;
	setAttr -s 3 ".koy[1:2]"  0 0.9997551441192627;
createNode animCurveTL -n "animCurveTL240";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.14314299916678522 50 0.14314299916678522 
		60 0.14314299916678522;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA620";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 16.226511010665412 50 16.226511010665405 
		60 16.226511010665412;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA621";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -8.5139660854992858 50 -8.513966085499284 
		60 -8.5139660854992858;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA622";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -68.213989601412422 50 -68.213989601412422 
		60 -68.213989601412422;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL241";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL242";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL243";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 50 -1 60 -1;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL244";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.10167917362943303 50 -0.10167917362943303 
		60 -0.10167917362943303;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL245";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.40762644910266188 50 -0.40762644910266188 
		60 -0.40762644910266188;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL246";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.93129112588482243 50 -0.93129112588482243 
		60 -0.93129112588482243;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA623";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 12.253734489678925 7 37.579434668794725 
		12 75.473387389371169 52 75.473387389371169 60 12.253734489678925;
	setAttr -s 5 ".kit[1:4]"  9 1 1 9;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.34081494808197021 0.99989038705825806 
		0.99855822324752808 0.23491598665714264;
	setAttr -s 5 ".kiy[0:4]"  0 0.94013041257858276 0.01480470784008503 
		-0.053679678589105606 -0.97201567888259888;
	setAttr -s 5 ".kox[2:4]"  0.99989038705825806 0.99855822324752808 
		0.23491598665714264;
	setAttr -s 5 ".koy[2:4]"  0.014804709702730179 -0.053679727017879486 
		-0.97201567888259888;
createNode animCurveTA -n "animCurveTA624";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -65.746751280844975 7 -6.3462418033839807 
		12 -9.0407165644845247 52 -9.0407165644845247 60 -65.746751280844975;
	setAttr -s 5 ".kit[1:4]"  9 1 1 9;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.3747132420539856 0.99943125247955322 
		0.99883949756622314 0.2601618766784668;
	setAttr -s 5 ".kiy[0:4]"  0 0.92714077234268188 0.033721357583999634 
		-0.048162501305341721 -0.965565025806427;
	setAttr -s 5 ".kox[2:4]"  0.99943125247955322 0.99883949756622314 
		0.2601618766784668;
	setAttr -s 5 ".koy[2:4]"  0.033721357583999634 -0.048162512481212616 
		-0.965565025806427;
createNode animCurveTA -n "animCurveTA625";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 7 -4.5874637168352717 12 -13.957435360258904 
		52 -13.957435360258904 60 0;
	setAttr -s 5 ".kit[1:4]"  9 1 1 9;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.85408002138137817 0.99999463558197021 
		0.99999845027923584 0.73831325769424438;
	setAttr -s 5 ".kiy[0:4]"  0 -0.5201416015625 -0.0032688896171748638 
		0.0017713884590193629 0.67445796728134155;
	setAttr -s 5 ".kox[2:4]"  0.99999463558197021 0.99999845027923584 
		0.73831325769424438;
	setAttr -s 5 ".koy[2:4]"  -0.0032688896171748638 0.001771390438079834 
		0.67445796728134155;
createNode animCurveTA -n "animCurveTA626";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.061808866237340665 5 38.73290704806795 
		10 85.620549070845613 50 85.620549070845613 60 -0.061808866237340665;
	setAttr -s 5 ".kit[1:4]"  9 1 1 9;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.2175607830286026 0.99979871511459351 
		0.99465084075927734 0.2175607830286026;
	setAttr -s 5 ".kiy[0:4]"  0 0.97604680061340332 0.020062925294041634 
		-0.10329411178827286 -0.97604680061340332;
	setAttr -s 5 ".kox[2:4]"  0.99979871511459351 0.99465084075927734 
		0.2175607830286026;
	setAttr -s 5 ".koy[2:4]"  0.020062930881977081 -0.10329411923885345 
		-0.97604680061340332;
createNode animCurveTA -n "animCurveTA627";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -59.058178941076754 5 -18.766116847402333 
		10 -36.380103994628307 50 -36.380103994628307 60 -59.058178941076754;
	setAttr -s 5 ".kit[1:4]"  9 1 1 9;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.64416074752807617 0.99991285800933838 
		0.99993860721588135 0.64416074752807617;
	setAttr -s 5 ".kiy[0:4]"  0 0.76489013433456421 -0.01319961529225111 
		-0.011080232448875904 -0.76489013433456421;
	setAttr -s 5 ".kox[2:4]"  0.99991285800933838 0.99993860721588135 
		0.64416074752807617;
	setAttr -s 5 ".koy[2:4]"  -0.013199616223573685 -0.011080228723585606 
		-0.76489013433456421;
createNode animCurveTA -n "animCurveTA628";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 16.57914742975785 5 -0.60734868645786699 
		10 -22.304289643301495 50 -22.304289643301495 60 16.57914742975785;
	setAttr -s 5 ".kit[1:4]"  9 1 1 9;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.44086587429046631 0.99995851516723633 
		0.99998784065246582 0.4408659040927887;
	setAttr -s 5 ".kiy[0:4]"  0 -0.89757299423217773 -0.0091062719002366066 
		0.0049348636530339718 0.89757299423217773;
	setAttr -s 5 ".kox[2:4]"  0.99995851516723633 0.99998784065246582 
		0.4408659040927887;
	setAttr -s 5 ".koy[2:4]"  -0.0091062532737851143 0.0049348375760018826 
		0.89757299423217773;
createNode animCurveTA -n "animCurveTA629";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.5572674112203639 7 52.951000114384385 
		12 76.776952612042763 52 76.776952612042763 60 8.5572674112203639;
	setAttr -s 5 ".kit[1:4]"  9 1 1 9;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.31845813989639282 0.99928635358810425 
		0.99635040760040283 0.21855151653289795;
	setAttr -s 5 ".kiy[0:4]"  0 0.94793695211410522 0.037772420793771744 
		-0.085357405245304108 -0.97582542896270752;
	setAttr -s 5 ".kox[2:4]"  0.99928635358810425 0.99635040760040283 
		0.21855151653289795;
	setAttr -s 5 ".koy[2:4]"  0.037772413343191147 -0.08535737544298172 
		-0.97582542896270752;
createNode animCurveTA -n "animCurveTA630";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 15.711328223519061 5 42.224114506718678 
		10 51.10579996363208 50 51.10579996363208 60 15.711328223519061;
	setAttr -s 5 ".kit[1:4]"  9 1 1 9;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.47487124800682068 0.99977833032608032 
		0.99954742193222046 0.47487127780914307;
	setAttr -s 5 ".kiy[0:4]"  0 0.88005524873733521 0.021055262535810471 
		-0.030083190649747849 -0.88005524873733521;
	setAttr -s 5 ".kox[2:4]"  0.99977833032608032 0.99954742193222046 
		0.47487127780914307;
	setAttr -s 5 ".koy[2:4]"  0.021055255085229874 -0.030083170160651207 
		-0.88005524873733521;
createNode animCurveTA -n "animCurveTA631";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 32.409591974637593 10 64.819183949275185 
		50 64.819183949275185 60 0;
	setAttr -s 5 ".kit[1:4]"  9 1 1 9;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.28263112902641296 0.99985581636428833 
		0.99956995248794556 0.28263112902641296;
	setAttr -s 5 ".kiy[0:4]"  0 0.95922869443893433 0.016981262713670731 
		-0.029323562979698181 -0.95922869443893433;
	setAttr -s 5 ".kox[2:4]"  0.99985581636428833 0.99956995248794556 
		0.28263112902641296;
	setAttr -s 5 ".koy[2:4]"  0.016981221735477448 -0.029323544353246689 
		-0.95922869443893433;
createNode animCurveTA -n "animCurveTA632";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 13.557467627703799 10 27.114935255407598 
		50 27.114935255407598 60 0;
	setAttr -s 5 ".kit[1:4]"  9 1 1 9;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.57585054636001587 0.99978995323181152 
		0.99887776374816895 0.57585054636001587;
	setAttr -s 5 ".kiy[0:4]"  0 0.8175550103187561 0.020494243130087852 
		-0.047362800687551498 -0.8175550103187561;
	setAttr -s 5 ".kox[2:4]"  0.99978995323181152 0.99887776374816895 
		0.57585054636001587;
	setAttr -s 5 ".koy[2:4]"  0.020494241267442703 -0.047362800687551498 
		-0.8175550103187561;
createNode animCurveTA -n "animCurveTA633";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 28.831458081234352 10 57.662916162468704 
		50 57.662916162468704 60 0;
	setAttr -s 5 ".kit[1:4]"  9 1 1 9;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.31441396474838257 0.99986326694488525 
		0.99969279766082764 0.31441399455070496;
	setAttr -s 5 ".kiy[0:4]"  0 0.94928598403930664 0.016535546630620956 
		-0.024786258116364479 -0.94928598403930664;
	setAttr -s 5 ".kox[2:4]"  0.99986326694488525 0.99969279766082764 
		0.31441399455070496;
	setAttr -s 5 ".koy[2:4]"  0.016535550355911255 -0.024786239489912987 
		-0.94928598403930664;
createNode animCurveTA -n "animCurveTA634";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 44.033418162461274 10 88.066836324922548 
		50 88.066836324922548 60 0;
	setAttr -s 5 ".kit[1:4]"  9 1 1 9;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.21193824708461761 0.99978739023208618 
		0.99720782041549683 0.21193826198577881;
	setAttr -s 5 ".kiy[0:4]"  0 0.9772830605506897 0.020620746538043022 
		-0.07467670738697052 -0.9772830605506897;
	setAttr -s 5 ".kox[2:4]"  0.99978739023208618 0.99720782041549683 
		0.21193826198577881;
	setAttr -s 5 ".koy[2:4]"  0.020620785653591156 -0.074676677584648132 
		-0.9772830605506897;
createNode animCurveTA -n "animCurveTA635";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 11.34513429647426 10 22.69026859294852 
		50 22.69026859294852 60 0;
	setAttr -s 5 ".kit[1:4]"  9 1 1 9;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.64395815134048462 0.99999088048934937 
		0.99932736158370972 0.64395815134048462;
	setAttr -s 5 ".kiy[0:4]"  0 0.76506072282791138 0.0042741047218441963 
		-0.03667110949754715 -0.76506072282791138;
	setAttr -s 5 ".kox[2:4]"  0.99999088048934937 0.99932736158370972 
		0.64395815134048462;
	setAttr -s 5 ".koy[2:4]"  0.0042741079814732075 -0.036671124398708344 
		-0.76506072282791138;
createNode animCurveTA -n "animCurveTA636";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 35.269677024193385 10 70.53935404838677 
		50 70.53935404838677 60 0;
	setAttr -s 5 ".kit[1:4]"  9 1 1 9;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.26134133338928223 0.99986356496810913 
		0.99636518955230713 0.26134136319160461;
	setAttr -s 5 ".kiy[0:4]"  0 0.96524643898010254 0.016518596559762955 
		-0.085184887051582336 -0.96524643898010254;
	setAttr -s 5 ".kox[2:4]"  0.99986356496810913 0.99636512994766235 
		0.26134136319160461;
	setAttr -s 5 ".koy[2:4]"  0.016518626362085342 -0.085184916853904724 
		-0.96524643898010254;
createNode animCurveTA -n "animCurveTA637";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 10.423754966968488 10 -14.4515173062985 
		50 -14.4515173062985 60 10.423754966968488;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.96770614385604858 0.96770614385604858 
		0.60898470878601074;
	setAttr -s 4 ".kiy[0:3]"  0 -0.25208091735839844 0.25208091735839844 
		0.79318195581436157;
createNode animCurveTA -n "animCurveTA638";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.7228482558439 10 25.967082121804467 
		50 25.967082121804467 60 27.7228482558439;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99983102083206177 0.99983102083206177 
		0.99580085277557373;
	setAttr -s 4 ".kiy[0:3]"  0 -0.01838323287665844 0.01838323287665844 
		0.091545671224594116;
createNode animCurveTA -n "animCurveTA639";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 21.576484776388224 10 -30.480457499351246 
		50 -30.480457499351246 60 21.576484776388224;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.87801200151443481 0.87801200151443481 
		0.34443026781082153;
	setAttr -s 4 ".kiy[0:3]"  0 -0.47863858938217163 0.47863858938217163 
		0.93881189823150635;
createNode animCurveTA -n "animCurveTA640";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA641";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA642";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.080064458283051 50 27.080064458283051 
		60 27.080064458283051;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA643";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA644";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA645";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA646";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA647";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA648";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.994403295754109 50 13.994403295754109 
		60 13.994403295754109;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA649";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA650";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA651";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.994403295754109 50 13.994403295754109 
		60 13.994403295754109;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA652";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA653";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA654";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.911632519594587 50 27.911632519594587 
		60 27.911632519594587;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA655";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA656";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA657";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA658";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.6507300102495166 10 3.2937256948146443 
		50 3.2937256948146443 60 -0.6507300102495166;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99995869398117065 0.99997967481613159 
		0.979331374168396;
	setAttr -s 4 ".kiy[0:3]"  0 0.0090897213667631149 -0.0063746795058250427 
		-0.20226249098777771;
	setAttr -s 4 ".kox[1:3]"  0.99995869398117065 0.99997967481613159 
		0.979331374168396;
	setAttr -s 4 ".koy[1:3]"  0.0090897222980856895 -0.0063746790401637554 
		-0.20226249098777771;
createNode animCurveTA -n "animCurveTA659";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -4.2368721935960929 10 10.776956577636053 
		50 10.776956577636053 60 -4.2368721935960929;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99964022636413574 0.99919712543487549 
		0.78616255521774292;
	setAttr -s 4 ".kiy[0:3]"  0 0.026822648942470551 -0.040063995867967606 
		-0.61801981925964355;
	setAttr -s 4 ".kox[1:3]"  0.99964022636413574 0.99919712543487549 
		0.78616255521774292;
	setAttr -s 4 ".koy[1:3]"  0.026822634041309357 -0.040063995867967606 
		-0.61801981925964355;
createNode animCurveTA -n "animCurveTA660";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.7398866450636863 10 0.31076532431907161 
		50 0.31076532431907161 60 8.7398866450636863;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99999988079071045 0.99999988079071045 
		0.91485995054244995;
	setAttr -s 4 ".kiy[0:3]"  0 0.00052251416491344571 -0.00048315557069145143 
		0.40377137064933777;
	setAttr -s 4 ".kox[1:3]"  0.99999988079071045 0.99999988079071045 
		0.91485995054244995;
	setAttr -s 4 ".koy[1:3]"  0.00052251433953642845 -0.00048315533786080778 
		0.40377137064933777;
createNode animCurveTA -n "animCurveTA661";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 8 11.971287786564517 48 11.971287786564517 
		60 0;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99874031543731689 0.99942553043365479 
		0.8863641619682312;
	setAttr -s 4 ".kiy[0:3]"  0 0.050177313387393951 -0.033891413360834122 
		-0.46298873424530029;
	setAttr -s 4 ".kox[1:3]"  0.99874031543731689 0.99942553043365479 
		0.8863641619682312;
	setAttr -s 4 ".koy[1:3]"  0.050177328288555145 -0.03389141708612442 
		-0.46298873424530029;
createNode animCurveTA -n "animCurveTA662";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 8 -15.3228146674928 48 -15.3228146674928 
		60 0;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99178725481033325 0.97889089584350586 
		0.83131396770477295;
	setAttr -s 4 ".kiy[0:3]"  0 0.12789854407310486 -0.20438358187675476 
		0.55580312013626099;
	setAttr -s 4 ".kox[1:3]"  0.99178725481033325 0.97889089584350586 
		0.83131396770477295;
	setAttr -s 4 ".koy[1:3]"  0.12789840996265411 -0.20438359677791595 
		0.55580312013626099;
createNode animCurveTA -n "animCurveTA663";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 8 9.4614085647463373 48 9.4614085647463373 
		60 0;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 0.9988250732421875 0.9990687370300293 
		0.92433041334152222;
	setAttr -s 4 ".kiy[0:3]"  0 0.048461593687534332 -0.043146591633558273 
		-0.3815930187702179;
	setAttr -s 4 ".kox[1:3]"  0.9988250732421875 0.9990687370300293 
		0.92433041334152222;
	setAttr -s 4 ".koy[1:3]"  0.048461597412824631 -0.043146613985300064 
		-0.3815930187702179;
createNode animCurveTA -n "animCurveTA664";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.8714700432790465 60 4.8714700432790465;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA665";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 11.783606204137087 60 11.783606204137087;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA666";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.5423825101935931 60 7.5423825101935931;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA667";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.8903601258661931 10 -0.62041045444479548 
		50 -0.62041045444479548 60 -1.8903601258661931;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99999982118606567 0.9999958872795105 
		0.99779653549194336;
	setAttr -s 4 ".kiy[0:3]"  0 -0.00059299665736034513 -0.0028598615899682045 
		-0.066347889602184296;
	setAttr -s 4 ".kox[1:3]"  0.99999982118606567 0.9999958872795105 
		0.99779653549194336;
	setAttr -s 4 ".koy[1:3]"  -0.00059299601707607508 -0.0028598613571375608 
		-0.066347889602184296;
createNode animCurveTA -n "animCurveTA668";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.5597289571479034 10 4.3490016686787003 
		50 4.3490016686787003 60 2.5597289571479034;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99999135732650757 0.99999982118606567 
		0.99564015865325928;
	setAttr -s 4 ".kiy[0:3]"  0 0.004156758077442646 -0.0005519779515452683 
		-0.093277640640735626;
	setAttr -s 4 ".kox[1:3]"  0.99999135732650757 0.99999982118606567 
		0.99564015865325928;
	setAttr -s 4 ".koy[1:3]"  0.004156758077442646 -0.00055197632173076272 
		-0.093277640640735626;
createNode animCurveTA -n "animCurveTA669";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.0168110874036045 10 -0.02355748243287319 
		50 -0.02355748243287319 60 2.0168110874036045;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 1 1 0.99434167146682739;
	setAttr -s 4 ".kiy[0:3]"  0 0 2.0031437088618986e-005 0.10622894763946533;
	setAttr -s 4 ".kox[1:3]"  1 1 0.99434167146682739;
	setAttr -s 4 ".koy[1:3]"  0 2.0031446183566004e-005 0.10622894763946533;
createNode animCurveTA -n "animCurveTA670";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA671";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA672";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 33.429092416277157 50 33.429092416277157 
		60 33.429092416277157;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA673";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.2533422302317216 10 -18.901438859026499 
		50 -18.901438859026499 60 8.2533422302317216;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.96186619997024536 0.96186619997024536 
		0.57528537511825562;
	setAttr -s 4 ".kiy[0:3]"  0 -0.27352032065391541 0.27352032065391541 
		0.81795281171798706;
createNode animCurveTA -n "animCurveTA674";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 23.263402056531085 10 16.053500470762661 
		50 16.053500470762661 60 23.263402056531085;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.997161865234375 0.997161865234375 
		0.93555504083633423;
	setAttr -s 4 ".kiy[0:3]"  0 -0.075287625193595886 0.075287625193595886 
		0.35318097472190857;
createNode animCurveTA -n "animCurveTA675";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 20.166277752815617 10 -51.07475780232911 
		50 -51.07475780232911 60 20.166277752815617;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.80152308940887451 0.80152308940887451 
		0.25894066691398621;
	setAttr -s 4 ".kiy[0:3]"  0 -0.59796380996704102 0.59796380996704102 
		0.9658932089805603;
createNode animCurveTA -n "animCurveTA676";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA677";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 50 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA678";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 17.254116939558369 50 17.254116939558369 
		60 17.254116939558369;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode clipLibrary -n "clipLibrary2";
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
	setAttr ".o" 2;
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
connectAttr "hom_hands_on_hipsSource.st" "clipLibrary2.st[0]";
connectAttr "hom_hands_on_hipsSource.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL206.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL207.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary2.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL209.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary2.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA566.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "hom_Hoop_Root_IK_FK_RFoot.a" "clipLibrary2.cel[0].cev[6].cevr"
		;
connectAttr "hom_Hoop_Root_IK_FK_LFoot.a" "clipLibrary2.cel[0].cev[7].cevr"
		;
connectAttr "hom_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary2.cel[0].cev[8].cevr"
		;
connectAttr "hom_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary2.cel[0].cev[9].cevr"
		;
connectAttr "animCurveTU45.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU46.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU47.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU48.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA567.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA568.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA569.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL211.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL212.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL213.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL214.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL215.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL216.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA570.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA571.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA572.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL217.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL218.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL219.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA573.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA574.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA575.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA576.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA577.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA578.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA579.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA580.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA581.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTL220.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTL221.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTL222.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTL223.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTL224.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTL225.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL226.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL227.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL228.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTA582.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTA583.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTA584.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTA585.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTA586.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTA587.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA588.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA589.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA590.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA591.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA592.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA593.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA594.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA595.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA596.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA597.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA598.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA599.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA600.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA601.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA602.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA603.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA604.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA605.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA606.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA607.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA608.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA609.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA610.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTL229.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTL230.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTL231.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA611.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA612.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA613.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL232.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL233.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL234.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA614.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA615.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA616.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL235.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL236.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL237.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA617.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA618.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA619.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL238.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL239.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL240.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA620.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA621.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA622.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL241.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL242.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL243.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTL244.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTL245.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTL246.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTA623.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTA624.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTA625.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTA626.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTA627.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTA628.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA629.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA630.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA631.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA632.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA633.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA634.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA635.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA636.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA637.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA638.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA639.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA640.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA641.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA642.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA643.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA644.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA645.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA646.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA647.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA648.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA649.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA650.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA651.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA652.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA653.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA654.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA655.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA656.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA657.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA658.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA659.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA660.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA661.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA662.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA663.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA664.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA665.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA666.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA667.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA668.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA669.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA670.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA671.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA672.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA673.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA674.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA675.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA676.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA677.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA678.a" "clipLibrary2.cel[0].cev[161].cevr";
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
// End of hom_hands_on_hips.ma
