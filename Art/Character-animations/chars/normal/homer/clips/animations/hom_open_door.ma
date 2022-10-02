//Maya ASCII 4.0 scene
//Name: hom_open_door.ma
//Last modified: Wed, Jul 03, 2002 02:11:34 PM
requires maya "4.0";
requires "p3dmayaexp" "17.7";
requires "p3dSimpleShader" "17.1";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "hom_open_doorSource";
	setAttr ".ihi" 0;
	setAttr ".du" 15;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -0.051425456377630012 1 -0.052203424802897712 
		2 -0.053759361653433126 3 -0.054926314291334689 4 -0.054537330078700832 5 
		-0.051425456377630012 6 -0.039390850020259667 7 -0.021953685198493719 8 -0.012527035314080361 
		9 -0.015113903957834178 10 -0.023062873450769104 11 -0.033805385289932308 
		12 -0.044772880972370983 13 -0.060137691048994982 14 -0.077424581363043712 
		15 -0.084093646350058573;
createNode animCurveTL -n "animCurveTL4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 -0.0035270265097629666 14 -0.0070540530195259332 
		15 0;
createNode animCurveTA -n "animCurveTA1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0;
createNode animCurveTU -n "animCurveTU1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU2";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU3";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU4";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "animCurveTA2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.26454016861507795 5 -0.26454016861507795 
		8 -0.26454016861507795 12 -0.26454016861507795 15 -0.26454016861507795;
createNode animCurveTL -n "animCurveTL10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.13806192026723146 5 0.13806192026723146 
		8 0.13806192026723146 12 0.13806192026723146 15 0.13806192026723146;
createNode animCurveTL -n "animCurveTL11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.064904406754016042 5 -0.064904406754016042 
		8 -0.064904406754016042 12 -0.064904406754016042 15 -0.064904406754016042;
createNode animCurveTA -n "animCurveTA5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 12 0 15 0;
createNode animCurveTA -n "animCurveTA6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -25.948901905116401 5 -25.948901905116401 
		8 -25.948901905116401 12 -25.948901905116401 15 -25.948901905116401;
createNode animCurveTA -n "animCurveTA7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 12 0 15 0;
createNode animCurveTL -n "animCurveTL12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.21594587158542247 5 0.21594587158542247 
		8 0.21594587158542247 12 0.21594587158542247 15 0.21594587158542247;
createNode animCurveTL -n "animCurveTL13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.1380615615975922 5 0.1380615615975922 
		8 0.1380615615975922 12 0.1380615615975922 15 0.1380615615975922;
createNode animCurveTL -n "animCurveTL14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.00078430246903575811 5 0.00078430246903575811 
		8 0.00078430246903575811 12 0.00078430246903575811 15 0.00078430246903575811;
createNode animCurveTA -n "animCurveTA8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 12 0 15 0;
createNode animCurveTA -n "animCurveTA9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 12 0 15 0;
createNode animCurveTA -n "animCurveTA10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 12 0 15 0;
createNode animCurveTA -n "animCurveTA11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA15";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL15";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 12 0 15 0;
createNode animCurveTL -n "animCurveTL16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 12 0 15 0;
createNode animCurveTL -n "animCurveTL17";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 5 1 8 1 12 1 15 1;
createNode animCurveTL -n "animCurveTL18";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 12 0 15 0;
createNode animCurveTL -n "animCurveTL19";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 12 0 15 0;
createNode animCurveTL -n "animCurveTL20";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 5 1 8 1 12 1 15 1;
createNode animCurveTL -n "animCurveTL21";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.076472881617957691 5 -0.076472881617957691 
		8 -0.018628487836120831 12 -0.066580084407076495 15 -0.1250525306946591;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTL -n "animCurveTL22";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.93105416142265018 5 0.93105416142265018 
		8 0.9177377185523794 12 0.9177377185523794 15 0.9177377185523794;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTL -n "animCurveTL23";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 12 0 15 0;
createNode animCurveTA -n "animCurveTA17";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.62843630316474508 5 -0.64945777164326313 
		8 3.0455725522002712 12 2.2213518221595017 15 -4.0647210446877668;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA18";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -5.8284402688137158 5 15.712784536999756 
		8 23.118437686934161 12 19.301447906299206 15 6.129632983176454;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA19";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.2956360193097458 5 -1.5353463816017385 
		8 -2.8980232091229619 12 -1.7971044910279799 15 -1.7490863204697844;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA20";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA21";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA22";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA23";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA24";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA25";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA26";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA27";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA28";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA29";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA30";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA31";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA32";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA33";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA34";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA35";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA36";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA37";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA38";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA39";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA40";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA41";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA42";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA43";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA44";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA45";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL24";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.43524234076486068;
createNode animCurveTL -n "animCurveTL25";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL26";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.27773886459742925;
createNode animCurveTA -n "animCurveTA46";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.8121934161072303e-015;
createNode animCurveTA -n "animCurveTA47";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 28.652637602052774;
createNode animCurveTA -n "animCurveTA48";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 64.676908227303443;
createNode animCurveTL -n "animCurveTL27";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.5198069948790518;
createNode animCurveTL -n "animCurveTL28";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL29";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.36439499068905612;
createNode animCurveTA -n "animCurveTA49";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 7.7976222737965299;
createNode animCurveTA -n "animCurveTA50";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -30.409274105849079;
createNode animCurveTA -n "animCurveTA51";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -64.859940280210878;
createNode animCurveTL -n "animCurveTL30";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.8448236677023373 5 -0.097868043675122127 
		8 0.49630295975772071 10 -0.32383171273960637 11 -0.53889157443010816 12 
		-0.98258635669495298 15 -1.1158566162674368;
createNode animCurveTL -n "animCurveTL31";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.272818195449458 5 1.6409997766055862 
		8 1.7245929532774531 10 1.7345874086042934 11 1.8852319259030492 12 1.6184040931017163 
		15 1.5073005352053455;
createNode animCurveTL -n "animCurveTL32";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.097994651149805143 5 0.84567637706889831 
		8 0.90558814192862569 10 0.99955266503950313 11 0.90214635610696714 12 0.67683747215403034 
		15 0.54362203707259038;
createNode animCurveTA -n "animCurveTA52";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 5.4739599453216474 5 71.119159344460144 
		8 27.510925858298908 10 78.443105148750945 11 -26.232637946443294 12 -55.339832299472761 
		15 -10.853444140088332;
createNode animCurveTA -n "animCurveTA53";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.5874521608419823 5 28.587710488537017 
		8 10.514577351016655 10 33.037962688614584 11 73.544495109388265 12 62.610409199778147 
		15 51.484198366333054;
createNode animCurveTA -n "animCurveTA54";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 74.754744621954103 5 145.5137268770755 
		8 148.92609618633051 10 152.83471523677741 11 42.767151911905913 12 -0.33326514007845842 
		15 49.928729878883274;
createNode animCurveTL -n "animCurveTL33";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.61083301393139333 5 0.57262925149573951 
		8 0.59805198577186836 12 0.62731828370774656 15 0.58391204189897328;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTL -n "animCurveTL34";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.229336924066629 5 1.4163535334556963 
		8 1.5447691581657059 12 1.4481707905924115 15 1.3747541910192174;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTL -n "animCurveTL35";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.14314299916678522 5 -0.37264849786442289 
		8 -0.42317204214440163 12 -0.31931996000989932 15 -0.041027114095808462;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA55";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 16.226511010665405 5 16.226511010665405 
		8 16.226511010665405 12 16.226511010665405 15 16.226511010665405;
createNode animCurveTA -n "animCurveTA56";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -8.513966085499284 5 -8.513966085499284 
		8 -8.513966085499284 12 -8.513966085499284 15 -8.513966085499284;
createNode animCurveTA -n "animCurveTA57";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -68.213989601412422 5 -68.213989601412422 
		8 -68.213989601412422 12 -68.213989601412422 15 -68.213989601412422;
createNode animCurveTL -n "animCurveTL36";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  5 0.17523930523423681 8 0.17523930523423681 
		12 0.17523930523423681 15 0.17523930523423681;
createNode animCurveTL -n "animCurveTL37";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  5 -0.00072435787012014696 8 -0.00072435787012014696 
		12 -0.00072435787012014696 15 -0.00072435787012014696;
createNode animCurveTL -n "animCurveTL38";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  5 -0.80201435285893019 8 -0.80201435285893019 
		12 -0.80201435285893019 15 -0.80201435285893019;
createNode animCurveTL -n "animCurveTL39";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  5 -0.4001111643408698 8 -0.4001111643408698 
		12 -0.4001111643408698 15 -0.31054502397108613;
createNode animCurveTL -n "animCurveTL40";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  5 -0.32054195494897236 8 -0.32054195494897236 
		12 -0.32054195494897236 15 -0.55640530640609931;
createNode animCurveTL -n "animCurveTL41";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  5 -0.81561019929437761 8 -0.81561019929437761 
		12 -0.81561019929437761 15 -0.57914122395678103;
createNode animCurveTA -n "animCurveTA58";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 12.253734489678925 5 12.253734489678925 
		8 12.253734489678925 12 12.253734489678925 15 12.253734489678925;
createNode animCurveTA -n "animCurveTA59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -65.746751280844961 5 -65.746751280844961 
		8 -65.746751280844961 12 -65.746751280844961 15 -65.746751280844961;
createNode animCurveTA -n "animCurveTA60";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 3.871449260799477e-015 5 3.871449260799477e-015 
		8 3.871449260799477e-015 12 3.871449260799477e-015 15 3.871449260799477e-015;
createNode animCurveTA -n "animCurveTA61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.061808866237337522 5 -0.061808866237337522 
		8 -0.061808866237337522 12 -0.061808866237337522 15 -0.061808866237337522;
createNode animCurveTA -n "animCurveTA62";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -59.058178941076754 5 -59.058178941076754 
		8 -59.058178941076754 12 -59.058178941076754 15 -59.058178941076754;
createNode animCurveTA -n "animCurveTA63";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 16.579147429757843 5 16.579147429757843 
		8 16.579147429757843 12 16.579147429757843 15 16.579147429757843;
createNode animCurveTA -n "animCurveTA64";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.5572674112203622 5 8.5572674112203622 
		8 8.5572674112203622 12 8.5572674112203622 15 8.5572674112203622;
createNode animCurveTA -n "animCurveTA65";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 15.711328223519057 5 15.711328223519057 
		8 15.711328223519057 12 15.711328223519057 15 15.711328223519057;
createNode animCurveTA -n "animCurveTA66";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 12 0 15 0;
createNode animCurveTA -n "animCurveTA67";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 12 0 15 0;
createNode animCurveTA -n "animCurveTA68";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 12 0 15 0;
createNode animCurveTA -n "animCurveTA69";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 12 0 15 0;
createNode animCurveTA -n "animCurveTA70";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 12 0 15 0;
createNode animCurveTA -n "animCurveTA71";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 12 0 15 0;
createNode animCurveTA -n "animCurveTA72";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 10.423754966968488 5 10.423754966968488 
		8 10.423754966968488 12 10.423754966968488 15 10.423754966968488;
createNode animCurveTA -n "animCurveTA73";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.722848255843903 5 27.722848255843903 
		8 27.722848255843903 12 27.722848255843903 15 27.722848255843903;
createNode animCurveTA -n "animCurveTA74";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 21.576484776388227 5 21.576484776388227 
		8 21.576484776388227 12 21.576484776388227 15 21.576484776388227;
createNode animCurveTA -n "animCurveTA75";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 12 0 15 0;
createNode animCurveTA -n "animCurveTA76";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 12 0 15 0;
createNode animCurveTA -n "animCurveTA77";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.080064458283051 5 27.080064458283051 
		8 27.080064458283051 12 27.080064458283051 15 27.080064458283051;
createNode animCurveTA -n "animCurveTA78";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA79";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA80";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA81";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA82";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA83";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.994403295754109;
createNode animCurveTA -n "animCurveTA84";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA85";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA86";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.994403295754109;
createNode animCurveTA -n "animCurveTA87";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 12 0 15 0;
createNode animCurveTA -n "animCurveTA88";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 12 0 15 0;
createNode animCurveTA -n "animCurveTA89";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.911632519594587 5 27.911632519594587 
		8 27.911632519594587 12 27.911632519594587 15 27.911632519594587;
createNode animCurveTA -n "animCurveTA90";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 12 0 15 0;
createNode animCurveTA -n "animCurveTA91";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 12 0 15 0;
createNode animCurveTA -n "animCurveTA92";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 12 0 15 0;
createNode animCurveTA -n "animCurveTA93";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.65073001024951671 5 17.865547004487734 
		8 26.344302103719443 12 15.995208714699748 15 12.699252606574687;
createNode animCurveTA -n "animCurveTA94";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -4.2368721935960929 5 -8.1938064043711503 
		8 -14.600939198760139 12 -10.255568461043122 15 -5.5780160790766713;
createNode animCurveTA -n "animCurveTA95";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.7398866450636881 5 15.088783978648813 
		8 18.187946831246631 12 13.315807209516004 15 12.426406503189799;
createNode animCurveTA -n "animCurveTA96";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 12 0 15 0;
createNode animCurveTA -n "animCurveTA97";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 12 0 15 0;
createNode animCurveTA -n "animCurveTA98";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 12 0 15 0;
createNode animCurveTA -n "animCurveTA99";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 4.8714700432790456 5 -1.1550608810547045 
		8 -4.6280698493928911 12 16.994449501096238 15 12.856076819043764;
createNode animCurveTA -n "animCurveTA100";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 11.783606204137085 5 -2.4848103614995831 
		8 1.1028572004337271 12 38.041437231934488 15 28.760469501743163;
createNode animCurveTA -n "animCurveTA101";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 7.5423825101935913 5 18.991605264237883 
		8 10.480040827973736 12 5.2066657700519876 15 15.950642297069546;
createNode animCurveTA -n "animCurveTA102";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.8903601258661931 5 -1.8903601258661931 
		8 -1.8903601258661931 12 -1.8903601258661931 15 -1.8903601258661931;
createNode animCurveTA -n "animCurveTA103";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.5597289571479034 5 2.5597289571479034 
		8 2.5597289571479034 12 2.5597289571479034 15 2.5597289571479034;
createNode animCurveTA -n "animCurveTA104";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.016811087403604 5 2.016811087403604 
		8 2.016811087403604 12 2.016811087403604 15 2.016811087403604;
createNode animCurveTA -n "animCurveTA105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 12 0 15 0;
createNode animCurveTA -n "animCurveTA106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 12 0 15 0;
createNode animCurveTA -n "animCurveTA107";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 33.429092416277157 5 33.429092416277157 
		8 33.429092416277157 12 33.429092416277157 15 33.429092416277157;
createNode animCurveTA -n "animCurveTA108";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.2533422302317216 5 8.2533422302317216 
		8 8.2533422302317216 12 8.2533422302317216 15 8.2533422302317216;
createNode animCurveTA -n "animCurveTA109";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 23.263402056531085 5 23.263402056531085 
		8 23.263402056531085 12 23.263402056531085 15 23.263402056531085;
createNode animCurveTA -n "animCurveTA110";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 20.166277752815617 5 20.166277752815617 
		8 20.166277752815617 12 20.166277752815617 15 20.166277752815617;
createNode animCurveTA -n "animCurveTA111";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 12 0 15 0;
createNode animCurveTA -n "animCurveTA112";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 12 0 15 0;
createNode animCurveTA -n "animCurveTA113";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 17.254116939558369 5 17.254116939558369 
		8 17.254116939558369 12 17.254116939558369 15 17.254116939558369;
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
	setAttr ".ihi" 0;
	setAttr -s 21 ".lnk";
select -ne :time1;
	setAttr ".o" 15;
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
select -ne :shaderGlow1;
	setAttr ".gc" -type "float3" 0.16862746 0.99607843 0.56078434 ;
select -ne :defaultRenderGlobals;
	setAttr ".outf" 19;
	setAttr ".top" 1023;
	setAttr ".rght" 1279;
	setAttr ".an" yes;
	setAttr ".fs" 0;
	setAttr ".ef" 120;
select -ne :defaultRenderQuality;
	setAttr ".eaa" 0;
	setAttr ".mss" 4;
select -ne :defaultResolution;
	setAttr ".w" 720;
	setAttr ".h" 486;
	setAttr ".pa" 0.80000001192092896;
	setAttr ".al" yes;
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
connectAttr "hom_open_doorSource.st" "clipLibrary1.st[0]";
connectAttr "hom_open_doorSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL1.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL2.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL4.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA1.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU1.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU2.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU3.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU4.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU5.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU6.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU7.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU8.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA2.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA3.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA4.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL6.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL7.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL8.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL9.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL10.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL11.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA5.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA6.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA7.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL12.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL13.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL14.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA8.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA9.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA10.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA11.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA12.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA13.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA14.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA15.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA16.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTL15.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTL16.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTL17.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTL18.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTL19.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTL20.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL21.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL22.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL23.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTA17.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTA18.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTA19.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTA20.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTA21.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTA22.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA23.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA24.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA25.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA26.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA27.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA28.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA29.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA30.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA31.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA32.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA33.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA34.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA35.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA36.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA37.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA38.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA39.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA40.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA41.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA42.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA43.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA44.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA45.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTL24.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTL25.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTL26.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA46.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA47.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA48.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL27.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL28.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL29.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA49.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA50.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA51.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL30.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL31.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL32.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA52.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA53.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA54.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL33.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL34.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL35.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA55.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA56.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA57.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL36.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL37.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL38.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTL39.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTL40.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTL41.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTA58.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTA59.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTA60.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTA61.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTA62.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTA63.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA64.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA65.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA66.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA67.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA68.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA69.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA70.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA71.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA72.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA73.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA74.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA75.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA76.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA77.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA78.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA79.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA80.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA81.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA82.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA83.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA84.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA85.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA86.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA87.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA88.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA89.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA90.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA91.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA92.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA93.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA94.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA95.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA96.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA97.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA98.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA99.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA100.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA101.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA102.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA103.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA104.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA105.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA106.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA107.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA108.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA109.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA110.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA111.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA112.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA113.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[52].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[68].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[68].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[69].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[70].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[71].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[72].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[73].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[74].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[75].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[76].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[77].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[78].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[79].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[80].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[81].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[82].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[83].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[84].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[85].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[86].llnk";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of hom_open_door.ma
