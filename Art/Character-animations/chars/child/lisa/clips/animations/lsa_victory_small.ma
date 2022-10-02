//Maya ASCII 4.0 scene
//Name: lsa_victory_small.ma
//Last modified: Fri, Feb 07, 2003 02:53:26 PM
requires maya "4.0";
requires "p3dmayaexp" "2.0";
requires "p3dSimpleShader" "18.8";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "lsa_victory_smallSource";
	setAttr ".ihi" 0;
	setAttr ".du" 49;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL42";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTL -n "animCurveTL43";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.033 49 -0.033;
createNode animCurveTL -n "animCurveTL45";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTL -n "animCurveTL46";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA120";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTU -n "animCurveTU9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  39 0;
createNode animCurveTU -n "animCurveTU10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  39 0;
createNode animCurveTU -n "animCurveTU11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  39 0;
createNode animCurveTU -n "animCurveTU12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  39 0;
createNode animCurveTU -n "animCurveTU13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  39 0;
createNode animCurveTU -n "animCurveTU14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  39 0;
createNode animCurveTU -n "animCurveTU15";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA122";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTL -n "animCurveTL47";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTL -n "animCurveTL48";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTL -n "animCurveTL49";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTL -n "animCurveTL50";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.26454016861507795 17 -0.26454016861507795 
		40 -0.26454016861507795 49 -0.26454016861507795 56 -0.26454016861507795;
createNode animCurveTL -n "animCurveTL51";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.21854541072049752 17 0.21854541072049752 
		40 0.21854541072049752 49 0.21854541072049752 56 0.21854541072049752;
createNode animCurveTL -n "animCurveTL52";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.064904406754016042 17 -0.064904406754016042 
		40 -0.064904406754016042 49 -0.064904406754016042 56 -0.064904406754016042;
createNode animCurveTA -n "animCurveTA124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -25.948901905116401 17 -25.948901905116401 
		40 -25.948901905116401 49 -25.948901905116401 56 -25.948901905116401;
createNode animCurveTA -n "animCurveTA126";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTL -n "animCurveTL53";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.21594587158542247 17 0.21594587158542247 
		40 0.21594587158542247 49 0.21594587158542247 56 0.21594587158542247;
createNode animCurveTL -n "animCurveTL54";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.13800000000000001 17 0.13800000000000001 
		40 0.13800000000000001 49 0.13800000000000001 56 0.13800000000000001;
createNode animCurveTL -n "animCurveTL55";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.00078430246903575811 17 0.00078430246903575811 
		40 0.00078430246903575811 49 0.00078430246903575811 56 0.00078430246903575811;
createNode animCurveTA -n "animCurveTA127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA137";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTL -n "animCurveTL56";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTL -n "animCurveTL57";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTL -n "animCurveTL58";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 17 1 40 1 49 1 56 1;
createNode animCurveTL -n "animCurveTL59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTL -n "animCurveTL60";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTL -n "animCurveTL61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 17 1 40 1 49 1 56 1;
createNode animCurveTL -n "animCurveTL62";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.076472881617957691 17 -0.076472881617957691 
		40 -0.076472881617957691 49 -0.076472881617957691 56 -0.076472881617957691;
createNode animCurveTL -n "animCurveTL63";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.95473100313980441 10 0.70866248570528667 
		17 1.0338000001849692 40 1.0338000001849692 49 0.95473100313980441 56 0.95473100313980441;
createNode animCurveTL -n "animCurveTL64";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.62843630316474508 10 0.29224093094263032 
		17 -2.4107085871362166 40 -2.4107085871362166 49 -0.62843630316474508 56 
		-0.62843630316474508;
createNode animCurveTA -n "animCurveTA143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -5.8284402688137158 10 -5.7840198353717192 
		17 -5.3450574986446551 40 -5.3450574986446551 49 -5.8284402688137158 56 -5.8284402688137158;
createNode animCurveTA -n "animCurveTA144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.2956360193097458 10 -10.370930239507743 
		17 16.85959828383233 40 16.85959828383233 49 -1.2956360193097458 56 -1.2956360193097458;
createNode animCurveTA -n "animCurveTA145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA165";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA169";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTL -n "animCurveTL65";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.43524234076486068 10 -0.45882664280675434 
		17 -0.59770925878005132 40 -0.59770925878005132 49 -0.43524234076486068 56 
		-0.43524234076486068;
createNode animCurveTL -n "animCurveTL66";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.82665738350180629 10 -0.15685898818154845 
		17 -0.58037168770938496 40 -0.58037168770938496 49 -0.82665738350180629 56 
		-0.82665738350180629;
createNode animCurveTL -n "animCurveTL67";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.27773886459742925 10 0.51358827982220423 
		17 0.28297989741417257 40 0.28297989741417257 49 0.27773886459742925 56 0.27773886459742925;
createNode animCurveTA -n "animCurveTA171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.8121934161072303e-015 17 -1.8121934161072303e-015 
		40 -1.8121934161072303e-015 49 -1.8121934161072303e-015 56 -1.8121934161072303e-015;
createNode animCurveTA -n "animCurveTA172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 28.652637602052774 10 89.081668860550195 
		17 28.652637602052774 40 28.652637602052774 49 28.652637602052774 56 28.652637602052774;
createNode animCurveTA -n "animCurveTA173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 64.676908227303443 17 64.676908227303443 
		40 64.676908227303443 49 64.676908227303443 56 64.676908227303443;
createNode animCurveTL -n "animCurveTL68";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.5198069948790518 10 0.20197217767396469 
		17 0.50507501407911759 21 0.30502805086525159 23 0.42779975322031649 40 0.50507501407911759 
		49 0.5198069948790518 56 0.5198069948790518;
createNode animCurveTL -n "animCurveTL69";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.72394202659893114 10 -0.50061951680437422 
		17 0.77763818443234112 21 0.58584096910054817 23 0.79580192139599892 40 0.77763818443234112 
		49 -0.72394202659893114 56 -0.72394202659893114;
	setAttr -s 8 ".kit[5:7]"  1 9 9;
	setAttr -s 8 ".kot[5:7]"  1 9 9;
	setAttr -s 8 ".kix[5:7]"  0.020470449700951576 0.0035517914220690727 
		1;
	setAttr -s 8 ".kiy[5:7]"  -0.99979043006896973 -0.99999368190765381 
		0;
	setAttr -s 8 ".kox[5:7]"  0.020470533519983292 0.0035517914220690727 
		1;
	setAttr -s 8 ".koy[5:7]"  -0.99979043006896973 -0.99999368190765381 
		0;
createNode animCurveTL -n "animCurveTL70";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.36439499068905612 10 0.37271197041049592 
		17 0.15579020957511144 21 0.034419509929537739 23 0.076634974596156341 40 
		0.15579020957511144 49 0.36439499068905612 56 0.36439499068905612;
createNode animCurveTA -n "animCurveTA174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 7.7976222737965299 10 -106.26658112656342 
		17 -156.65908267236318 40 -156.65908267236318 49 7.7976222737965299 56 7.7976222737965299;
createNode animCurveTA -n "animCurveTA175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -30.409274105849079 10 -93.772486370159413 
		17 14.741785943846187 40 14.741785943846187 49 -30.409274105849079 56 -30.409274105849079;
createNode animCurveTA -n "animCurveTA176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -64.859940280210878 10 28.374548765202487 
		17 65.921446031427791 40 65.921446031427791 49 -64.859940280210878 56 -64.859940280210878;
createNode animCurveTL -n "animCurveTL71";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.8448236677023373 17 -0.8448236677023373 
		40 -0.8448236677023373 49 -0.8448236677023373 56 -0.8448236677023373;
createNode animCurveTL -n "animCurveTL72";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.0304014029588007 17 1.0304014029588007 
		40 1.0304014029588007 49 1.0304014029588007 56 1.0304014029588007;
createNode animCurveTL -n "animCurveTL73";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.097994651149805143 17 -0.097994651149805143 
		40 -0.097994651149805143 49 -0.097994651149805143 56 -0.097994651149805143;
createNode animCurveTA -n "animCurveTA177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 5.4739599453216474 17 5.4739599453216474 
		40 5.4739599453216474 49 5.4739599453216474 56 5.4739599453216474;
createNode animCurveTA -n "animCurveTA178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.5874521608419823 17 8.5874521608419823 
		40 8.5874521608419823 49 8.5874521608419823 56 8.5874521608419823;
createNode animCurveTA -n "animCurveTA179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 74.754744621954103 17 74.754744621954103 
		40 74.754744621954103 49 74.754744621954103 56 74.754744621954103;
createNode animCurveTL -n "animCurveTL74";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.61083301393139333 17 0.61083301393139333 
		40 0.61083301393139333 49 0.61083301393139333 56 0.61083301393139333;
createNode animCurveTL -n "animCurveTL75";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.0211562878106184 17 1.0211562878106184 
		40 1.0211562878106184 49 1.0211562878106184 56 1.0211562878106184;
createNode animCurveTL -n "animCurveTL76";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.14314299916678522 17 0.14314299916678522 
		40 0.14314299916678522 49 0.14314299916678522 56 0.14314299916678522;
createNode animCurveTA -n "animCurveTA180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 16.226511010665405 17 16.226511010665405 
		40 16.226511010665405 49 16.226511010665405 56 16.226511010665405;
createNode animCurveTA -n "animCurveTA181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -8.513966085499284 17 -8.513966085499284 
		40 -8.513966085499284 49 -8.513966085499284 56 -8.513966085499284;
createNode animCurveTA -n "animCurveTA182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -68.213989601412422 17 -68.213989601412422 
		40 -68.213989601412422 49 -68.213989601412422 56 -68.213989601412422;
createNode animCurveTL -n "animCurveTL77";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 10 0.29606480520903833 17 0.11721192485334356 
		40 0.11721192485334356 49 0 56 0;
createNode animCurveTL -n "animCurveTL78";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 10 -0.32221171581754404 17 
		0.052673581190199208 40 0.052673581190199208 49 0 56 0;
createNode animCurveTL -n "animCurveTL79";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1 10 -0.33837886899470654 17 
		0.22869357056183526 40 0.22869357056183526 49 -1 56 -1;
createNode animCurveTL -n "animCurveTL80";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.10167917362943303 17 -0.10167917362943303 
		40 -0.10167917362943303 49 -0.10167917362943303 56 -0.10167917362943303;
createNode animCurveTL -n "animCurveTL81";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.40762644910266188 17 -0.40762644910266188 
		40 -0.40762644910266188 49 -0.40762644910266188 56 -0.40762644910266188;
createNode animCurveTL -n "animCurveTL82";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.93129112588482243 17 -0.93129112588482243 
		40 -0.93129112588482243 49 -0.93129112588482243 56 -0.93129112588482243;
createNode animCurveTA -n "animCurveTA183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 12.253734489678925 17 12.253734489678925 
		40 12.253734489678925 49 12.253734489678925 56 12.253734489678925;
createNode animCurveTA -n "animCurveTA184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -65.746751280844961 17 -65.746751280844961 
		40 -65.746751280844961 49 -65.746751280844961 56 -65.746751280844961;
createNode animCurveTA -n "animCurveTA185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 3.871449260799477e-015 17 3.871449260799477e-015 
		40 3.871449260799477e-015 49 3.871449260799477e-015 56 3.871449260799477e-015;
createNode animCurveTA -n "animCurveTA186";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.061808866237337522 17 -0.061808866237337522 
		40 -0.061808866237337522 49 -0.061808866237337522 56 -0.061808866237337522;
createNode animCurveTA -n "animCurveTA187";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -59.058178941076754 17 -59.058178941076754 
		40 -59.058178941076754 49 -59.058178941076754 56 -59.058178941076754;
createNode animCurveTA -n "animCurveTA188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 16.579147429757843 17 16.579147429757843 
		40 16.579147429757843 49 16.579147429757843 56 16.579147429757843;
createNode animCurveTA -n "animCurveTA189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.5572674112203622 17 8.5572674112203622 
		40 8.5572674112203622 49 8.5572674112203622 56 8.5572674112203622;
createNode animCurveTA -n "animCurveTA190";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 15.711328223519057 17 15.711328223519057 
		40 15.711328223519057 49 15.711328223519057 56 15.711328223519057;
createNode animCurveTA -n "animCurveTA191";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA192";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA193";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA194";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA195";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA196";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA197";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 143.71460997127252 17 143.71460997127252 
		40 143.71460997127252 49 143.71460997127252 56 143.71460997127252;
createNode animCurveTA -n "animCurveTA198";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.804554996454375 17 27.804554996454375 
		40 27.804554996454375 49 27.804554996454375 56 27.804554996454375;
createNode animCurveTA -n "animCurveTA199";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 29.452980944098748 17 29.452980944098748 
		40 29.452980944098748 49 29.452980944098748 56 29.452980944098748;
createNode animCurveTA -n "animCurveTA200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.080064458283051 17 27.080064458283051 
		40 27.080064458283051 49 27.080064458283051 56 27.080064458283051;
createNode animCurveTA -n "animCurveTA203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 13.994403295754109 17 13.994403295754109 
		40 13.994403295754109 49 13.994403295754109 56 13.994403295754109;
createNode animCurveTA -n "animCurveTA212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.911632519594587 10 69.036067798364044 
		17 27.911632519594587 40 27.911632519594587 49 27.911632519594587 56 27.911632519594587;
createNode animCurveTA -n "animCurveTA215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.65073001024951671 10 13.621168999553664 
		17 -0.0047110730134608423 40 -0.0047110730134608423 49 -0.65073001024951671 
		56 -0.65073001024951671;
createNode animCurveTA -n "animCurveTA219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -4.2368721935960929 10 -18.614478070583665 
		17 -3.0334459555038573 40 -3.0334459555038573 49 -4.2368721935960929 56 -4.2368721935960929;
createNode animCurveTA -n "animCurveTA220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.6995264082587447 10 15.40493650350415 
		17 -12.760476586328121 40 -12.760476586328121 49 2.6995264082587447 56 2.6995264082587447;
createNode animCurveTA -n "animCurveTA221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 -1.5507016008759309 40 -1.5507016008759309 
		49 0 56 0;
createNode animCurveTA -n "animCurveTA222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 5.0360587803453649 40 5.0360587803453649 
		49 0 56 0;
createNode animCurveTA -n "animCurveTA223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 -6.4163056970590135 40 -6.4163056970590135 
		49 0 56 0;
createNode animCurveTA -n "animCurveTA224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.9251701322399404e-015 10 -27.85601215246334 
		17 8.9251701322399404e-015 40 8.9251701322399404e-015 49 8.9251701322399404e-015 
		56 8.9251701322399404e-015;
createNode animCurveTA -n "animCurveTA225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -7.2005835300832052e-015 10 19.065979786177927 
		17 -7.2005835300832052e-015 40 -7.2005835300832052e-015 49 -7.2005835300832052e-015 
		56 -7.2005835300832052e-015;
createNode animCurveTA -n "animCurveTA226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 6.6786334979782902 10 20.340803205611419 
		17 6.6786334979782902 40 6.6786334979782902 49 6.6786334979782902 56 6.6786334979782902;
createNode animCurveTA -n "animCurveTA227";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.8903601258661931 17 -1.9185497961300695 
		40 -1.9185497961300695 49 -1.8903601258661931 56 -1.8903601258661931;
createNode animCurveTA -n "animCurveTA228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.5597289571479034 17 10.156745071386128 
		40 10.156745071386128 49 2.5597289571479034 56 2.5597289571479034;
createNode animCurveTA -n "animCurveTA229";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.016811087403604 17 1.7628238786108588 
		40 1.7628238786108588 49 2.016811087403604 56 2.016811087403604;
createNode animCurveTA -n "animCurveTA230";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA232";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 33.429092416277157 17 33.429092416277157 
		40 33.429092416277157 49 33.429092416277157 56 33.429092416277157;
createNode animCurveTA -n "animCurveTA233";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -121.24398976748977 17 -121.24398976748977 
		40 -121.24398976748977 49 -121.24398976748977 56 -121.24398976748977;
createNode animCurveTA -n "animCurveTA234";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 28.612774017129329 17 28.612774017129329 
		40 28.612774017129329 49 28.612774017129329 56 28.612774017129329;
createNode animCurveTA -n "animCurveTA235";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 17.632837226638049 17 17.632837226638049 
		40 17.632837226638049 49 17.632837226638049 56 17.632837226638049;
createNode animCurveTA -n "animCurveTA236";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA237";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 40 0 49 0 56 0;
createNode animCurveTA -n "animCurveTA238";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 17.254116939558369 17 118.04149569695642 
		40 118.04149569695642 49 17.254116939558369 56 17.254116939558369;
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
	setAttr -s 21 ".lnk";
select -ne :time1;
	setAttr ".o" 25;
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
	setAttr -s 102 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".top" 479;
	setAttr ".rght" 639;
	setAttr ".fs" 1;
	setAttr ".ef" 10;
select -ne :defaultRenderQuality;
	setAttr ".eaa" 1;
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
connectAttr "lsa_victory_smallSource.st" "clipLibrary1.st[0]";
connectAttr "lsa_victory_smallSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL42.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL43.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL45.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL46.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA120.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU9.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU10.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU11.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU12.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU13.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU14.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU15.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU16.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA121.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA122.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA123.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL47.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL48.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL49.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL50.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL51.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL52.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA124.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA125.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA126.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL53.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL54.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL55.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA127.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA128.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA129.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA130.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA131.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA132.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA133.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA134.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA135.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA136.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA137.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA138.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA139.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA140.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA141.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL56.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL57.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL58.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL59.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL60.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL61.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL62.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL63.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL64.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA142.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA143.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA144.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA145.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA146.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA147.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA148.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA149.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA150.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA151.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA152.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA153.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA154.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA155.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA156.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA157.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA158.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA159.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA160.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA161.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA162.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA163.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA164.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA165.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA166.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA167.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA168.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA169.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA170.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL65.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL66.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL67.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA171.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA172.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA173.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL68.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL69.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL70.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA174.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA175.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA176.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL71.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL72.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL73.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA177.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA178.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA179.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL74.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL75.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL76.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA180.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA181.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA182.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL77.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL78.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL79.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL80.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL81.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL82.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA183.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA184.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA185.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA186.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA187.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA188.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA189.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA190.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA191.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA192.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA193.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA194.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA195.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA196.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA197.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA198.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA199.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA200.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA201.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA202.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA203.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA204.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA205.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA206.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA207.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA208.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA209.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA210.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA211.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA212.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA213.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA214.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA215.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA216.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA217.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA218.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA219.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA220.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA221.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA222.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA223.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA224.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA225.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA226.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA227.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA228.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA229.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA230.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA231.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA232.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA233.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA234.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA235.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA236.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA237.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA238.a" "clipLibrary1.cel[0].cev[167].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[3].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[4].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[5].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[5].olnk";
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
// End of lsa_victory_small.ma
