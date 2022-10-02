//Maya ASCII 4.0 scene
//Name: mlh_idle_glasses_up.ma
//Last modified: Tue, Jun 25, 2002 02:36:48 PM
requires maya "4.0";
requires "p3dSimpleShader" "17.1";
requires "p3dDeformer" "17.1.0.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "clip1Source";
	setAttr ".ihi" 0;
	setAttr ".du" 60;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL42";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL43";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 -0.037367575899315227 1 -0.038022429487491273 
		2 -0.039825185211787129 3 -0.042533135511854385 4 -0.04590357282734462 5 
		-0.049693789597909432 6 -0.053661078263200414 7 -0.057562731262869135 8 -0.061156041036567202 
		9 -0.064198300023946178 10 -0.066446800664657663 11 -0.068186211991178095 
		12 -0.069826380201649677 13 -0.071312363484222624 14 -0.07258922002704718 
		15 -0.073602008018273615 16 -0.074295785646052104 17 -0.07461561109853293 
		18 -0.074506542563866338 19 -0.073913638230202527 20 -0.072781956285691757 
		21 -0.070816267777847608 22 -0.067909533324348223 23 -0.064289095468590601 
		24 -0.060182296753971729 25 -0.055816479723888646 26 -0.051418986921738366 
		27 -0.047217160890917882 28 -0.043438344174824214 29 -0.040309879316854376 
		30 -0.038059108860405373 31 -0.036652833510014811 32 -0.035836846578306707 
		33 -0.035506979520807683 34 -0.035559063793044368 35 -0.035888930850543392 
		36 -0.03639241214883137 37 -0.036965339143434937 38 -0.03750354328988071 
		39 -0.03790285604369531 40 -0.038059108860405373 41 -0.038063342735635212 
		42 -0.038073221777838166 43 -0.038084512111784388 44 -0.038092979862244067 
		45 -0.038094391153987342 46 -0.038084512111784388 47 -0.038059108860405373 
		48 -0.038018000893143618 49 -0.037965530003669222 50 -0.037904245767317497 
		51 -0.037836697759423749 52 -0.037765435555323287 53 -0.037693008730351432 
		54 -0.037621966859843481 55 -0.037554859519134752 56 -0.03749423628356055 
		57 -0.037442646728456187 58 -0.037402640429156975 59 -0.037376766960998217 
		60 -0.037367575899315227;
createNode animCurveTL -n "animCurveTL45";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 
		0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0 1 -1.0915998302889541e-006 
		2 -3.8812438410273917e-006 3 -7.6411988120226769e-006 4 -1.1643731523082176e-005 
		5 -1.5161108754013247e-005 6 -1.7465597284623266e-005 7 -1.7829463894719582e-005 
		8 -1.5524975364109563e-005 9 -9.8243984726005894e-006 10 0 11 1.0670228734684718e-005 
		12 1.961049515330009e-005 13 2.8601830587319733e-005 14 3.9425266368217274e-005 
		15 5.3861833827466341e-005 16 7.3692564296540524e-005 17 0.00010069848910691352 
		18 0.00013666063959005888 19 0.00018336004707745023 20 0.00024257774290056128 
		21 0.00032029837417220575 22 0.00041799974912496367 23 0.00053070264076995823 
		24 0.00065342782211831249 25 0.00078119606618114927 26 0.00090902814596959219 
		27 0.0010319448344947636 28 0.0011449669047677872 29 0.0012431151297997861 
		30 0.0013214102826018823 31 0.001382594130622227 32 0.0014333535210023067 
		33 0.0014746268462932487 34 0.0015073524990461826 35 0.0015324688718122363 
		36 0.0015509143571425374 37 0.0015636273475882153 38 0.0015715462357003978 
		39 0.0015756094140302133 40 0.0015767552751287898 41 0.001572264404145825 
		42 0.0015583116236545956 43 0.001534176682341599 44 0.0014991393288933323 
		45 0.0014524793119962923 46 0.0013934763803369766 47 0.0013214102826018823 
		48 0.0012319808444212173 49 0.0011243137660701741 50 0.0010028276082027251 
		51 0.00087194093147284371 52 0.00073607229653450262 53 0.00059964026404167516 
		54 0.00046706339464833423 55 0.00034276024900845313 56 0.0002311493877760046 
		57 0.00013664937160496208 58 6.3678761149298032e-005 59 1.6656117062986472e-005 
		60 0;
createNode animCurveTA -n "animCurveTA120";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 
		0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0;
createNode animCurveTU -n "animCurveTU9";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU10";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU11";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU12";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU13";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU14";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU15";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU16";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "animCurveTA121";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA122";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA123";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL47";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL48";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL49";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL50";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.21764441145149604 10 -0.21764441145149604 
		20 -0.21764441145149604 30 -0.21764441145149604 40 -0.21764441145149604 47 
		-0.21764441145149604 60 -0.21764441145149604;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL51";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.1521050350093231 10 0.1521050350093231 
		20 0.1521050350093231 30 0.1521050350093231 40 0.1521050350093231 47 0.1521050350093231 
		60 0.1521050350093231;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL52";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.064904406754016042 10 -0.064904406754016042 
		20 -0.064904406754016042 30 -0.064904406754016042 40 -0.064904406754016042 
		47 -0.064904406754016042 60 -0.064904406754016042;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 47 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -25.948901905116401 10 -25.948901905116401 
		20 -25.948901905116401 30 -25.948901905116401 40 -25.948901905116401 47 -25.948901905116401 
		60 -25.948901905116401;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA126";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 47 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL53";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.1393832443869546 10 0.1393832443869546 
		20 0.1393832443869546 30 0.12988939037959912 40 0.12988939037959912 47 0.12988939037959912 
		60 0.1393832443869546;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL54";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.1521046763396838 10 0.16828312965757988 
		20 0.18997684607389956 30 0.1431557391662954 40 0.1431557391662954 47 0.17246519589142878 
		60 0.1521046763396838;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL55";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.00078430246903575811 10 0.00078430246903575811 
		20 -0.1171631510899762 30 -0.12269354871225366 40 -0.12269354871225366 47 
		-0.08038381402239983 60 0.00078430246903575811;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 12.122131219169265 20 19.45639399107262 
		30 1.548470057324951 40 1.548470057324951 47 13.630599512885929 60 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 3.0093308652485882 20 3.0093308652485851 
		30 3.0093308652485855 40 3.0093308652485855 47 3.0093308652485811 60 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 -0.34518096384687141 20 
		-0.34518096384687108 30 -0.34518096384687191 40 -0.34518096384687191 47 -0.34518096384687219 
		60 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA130";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA131";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA132";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA133";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA134";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA135";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA136";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA137";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA138";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA139";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA140";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA141";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL56";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 47 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL57";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 47 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL58";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 10 1 20 1 30 1 40 1 47 1 60 
		1;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 47 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL60";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 47 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 10 1 20 1 30 1 40 1 47 1 60 
		1;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL62";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.076472881617957691 10 -0.13598362213304599 
		20 -0.14894854142949832 30 -0.077888106368175752 40 -0.077888106368175752 
		47 -0.077888106368175752 60 -0.076472881617957691;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL63";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.96474337111153452 10 0.95005626458357229 
		20 0.94609187841472475 30 0.94609187841472497 40 0.94609187841472497 47 0.94899909493854662 
		60 0.96474337111153452;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL64";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0.00049643624370950825 
		30 0.0027042710071010405 40 0.0032268354741636822 47 0.0027042710071010405 
		60 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.62843630316474508 10 6.0873397502179669 
		20 13.474766024344676 30 14.617726768691767 40 13.091663708285811 47 8.0419171216544463 
		60 -0.62843630316474508;
	setAttr -s 7 ".kit[0:6]"  3 1 9 9 9 1 3;
	setAttr -s 7 ".kot[0:6]"  3 1 9 9 9 1 3;
	setAttr -s 7 ".kix[1:6]"  0.86632442474365234 0.97595858573913574 
		0.99994969367980957 0.98010009527206421 0.90232592821121216 1;
	setAttr -s 7 ".kiy[1:6]"  0.49948170781135559 0.21795596182346344 
		-0.010029090568423271 -0.19850404560565948 -0.43105447292327881 0;
	setAttr -s 7 ".kox[1:6]"  0.86632448434829712 0.97595858573913574 
		0.99994969367980957 0.98010009527206421 0.90232586860656738 1;
	setAttr -s 7 ".koy[1:6]"  0.49948164820671082 0.21795596182346344 
		-0.010029090568423271 -0.19850404560565948 -0.4310545027256012 0;
createNode animCurveTA -n "animCurveTA143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -5.8284402688137158 10 -6.4819900008541191 
		20 -4.7190669525360969 30 3.0949643807438374 40 12.691929877478069 47 5.3759100522362386 
		60 -5.8284402688137158;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.2956360193097458 10 -1.447412609552269 
		20 -2.317250721282806 30 -1.9860133008630594 40 -1.3096062817176553 47 -0.31855696590960242 
		60 -1.2956360193097458;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA145";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA146";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA147";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA148";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA149";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA150";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA151";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA152";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA153";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA154";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA155";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA156";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA157";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA158";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA159";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA160";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA161";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA162";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA163";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA164";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA165";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA166";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA167";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA168";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA169";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA170";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL65";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.43524234076486068;
createNode animCurveTL -n "animCurveTL66";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL67";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.27773886459742925;
createNode animCurveTA -n "animCurveTA171";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.8121934161072303e-015;
createNode animCurveTA -n "animCurveTA172";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 28.652637602052774;
createNode animCurveTA -n "animCurveTA173";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 64.676908227303443;
createNode animCurveTL -n "animCurveTL68";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.5198069948790518;
createNode animCurveTL -n "animCurveTL69";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL70";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.36439499068905612;
createNode animCurveTA -n "animCurveTA174";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 7.7976222737965299;
createNode animCurveTA -n "animCurveTA175";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -30.409274105849079;
createNode animCurveTA -n "animCurveTA176";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -64.859940280210878;
createNode animCurveTL -n "animCurveTL71";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.84654347043021561 10 -0.9044586473481725 
		20 -0.90955137287158527 30 -0.86181137608522373 40 -0.78320589109563854 47 
		-0.81602596472908406 60 -0.84654347043021561;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 1 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 1 3;
	setAttr -s 7 ".kix[5:6]"  0.055513754487037659 1;
	setAttr -s 7 ".kiy[5:6]"  -0.99845790863037109 0;
	setAttr -s 7 ".kox[5:6]"  0.055514160543680191 1;
	setAttr -s 7 ".koy[5:6]"  -0.99845790863037109 0;
createNode animCurveTL -n "animCurveTL72";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.2151450287453427 10 1.1938666346090183 
		20 1.1541751300435932 30 1.211548723001308 40 1.1438406551668938 47 1.1552152347168725 
		60 1.2151450287453427;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL73";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.097994651149805143 10 -0.22748580892873094 
		20 -0.27674829203230583 30 -0.1839257613092142 40 0.037062687108498617 47 
		0.027846036771515696 60 -0.097994651149805143;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 1 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 1 3;
	setAttr -s 7 ".kix[5:6]"  0.036114387214183807 1;
	setAttr -s 7 ".kiy[5:6]"  -0.99934768676757813 0;
	setAttr -s 7 ".kox[5:6]"  0.036114249378442764 1;
	setAttr -s 7 ".koy[5:6]"  -0.99934768676757813 0;
createNode animCurveTA -n "animCurveTA177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -13.607468531903837 10 -9.9607944984917758 
		20 -9.9607944984917758 30 -9.9607944984917758 40 1.7415250150437063 47 0.34319187973398618 
		60 -13.607468531903837;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 5.3248413331634161 10 -11.100990064855324 
		20 -16.517314044731602 30 -16.517314044731602 40 -4.2069341834211942 47 2.5679731964723169 
		60 5.3248413331634161;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 56.915544200805968 10 46.719059052783656 
		20 42.544463726650676 30 42.544463726650676 40 45.196979048799768 47 50.03444276004393 
		60 56.915544200805968;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 1 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 1 3;
	setAttr -s 7 ".kix[5:6]"  0.91929763555526733 1;
	setAttr -s 7 ".kiy[5:6]"  0.39356306195259094 0;
	setAttr -s 7 ".kox[5:6]"  0.91929763555526733 1;
	setAttr -s 7 ".koy[5:6]"  0.39356306195259094 0;
createNode animCurveTL -n "animCurveTL74";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.61083301393139333 10 0.60015342625935364 
		20 0.60495466918102259 30 0.61844283554749557 40 0.65051040316300512 47 0.78206046212640246 
		52 0.73017859949001851 60 0.61083301393139333;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTL -n "animCurveTL75";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.205921556906836 10 1.3007320006329528 
		20 1.251390209999911 30 1.1829083265928435 40 1.2292311204263726 47 2.0414943223142732 
		52 2.4329973593504421 60 1.205921556906836;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 1 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 1 9 9 
		3;
	setAttr -s 8 ".kix[4:7]"  0.024736590683460236 0.0033228860702365637 
		0.0051859933882951736 1;
	setAttr -s 8 ".kiy[4:7]"  0.99969398975372314 0.99999445676803589 
		-0.99998652935028076 0;
	setAttr -s 8 ".kox[4:7]"  0.024736657738685608 0.0033228860702365637 
		0.0051859933882951736 1;
	setAttr -s 8 ".koy[4:7]"  0.99969398975372314 0.99999445676803589 
		-0.99998652935028076 0;
createNode animCurveTL -n "animCurveTL76";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.14314299916678522 10 0.091900636743962358 
		20 0.059614629186411118 30 -0.038139630983559727 40 -0.038139630983559727 
		47 0.55207772468044336 52 0.46591882932187856 60 0.14314299916678522;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 1 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 1 9 9 
		3;
	setAttr -s 8 ".kix[4:7]"  0.059302747249603271 0.0079353377223014832 
		0.010596043430268764 1;
	setAttr -s 8 ".kiy[4:7]"  0.99824005365371704 0.99996852874755859 
		-0.99994385242462158 0;
	setAttr -s 8 ".kox[4:7]"  0.059302836656570435 0.0079353377223014832 
		0.010596043430268764 1;
	setAttr -s 8 ".koy[4:7]"  0.99824005365371704 0.99996852874755859 
		-0.99994385242462158 0;
createNode animCurveTA -n "animCurveTA180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.14751373646059296 10 -0.14751373646059296 
		20 -0.14751373646059296 30 -0.14751373646059296 40 -17.653035939665241 47 
		-103.59175316478223 52 -146.76324108255156 60 -0.14751373646059296;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -8.513966085499284 10 -8.513966085499284 
		20 -8.513966085499284 30 -8.513966085499284 40 -14.596325826652016 47 -39.500845553300032 
		52 -54.107756493240565 60 -8.513966085499284;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -58.291954750297876 10 -58.291954750297876 
		20 -58.291954750297876 30 -58.291954750297876 40 -53.081975011644658 47 -33.824398831622787 
		52 29.09695025823909 60 -58.291954750297876;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTL -n "animCurveTL77";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 47 1.0823831845814205 
		60 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL78";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 47 -1.5289441726682149 
		60 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL79";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1 10 -1 20 -1 30 -1 40 -1 47 
		-0.78736296964822616 60 -1;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL80";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.10167917362943303 10 -0.10167917362943303 
		20 -0.10167917362943303 30 -0.10167917362943303 40 -0.10167917362943303 47 
		-0.10167917362943303 60 -0.10167917362943303;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL81";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.40762644910266188 10 -0.40762644910266188 
		20 -0.40762644910266188 30 -0.40762644910266188 40 -0.40762644910266188 47 
		-0.40762644910266188 60 -0.40762644910266188;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL82";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.93129112588482243 10 -0.93129112588482243 
		20 -0.93129112588482243 30 -0.93129112588482243 40 -0.93129112588482243 47 
		-0.93129112588482243 60 -0.93129112588482243;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 12.253734489678925 10 12.253734489678925 
		20 12.253734489678925 30 12.253734489678925 40 12.253734489678925 47 12.253734489678925 
		60 12.253734489678925;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -65.746751280844961 10 -65.746751280844961 
		20 -65.746751280844961 30 -65.746751280844961 40 -65.746751280844961 47 -65.746751280844961 
		60 -65.746751280844961;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 3.871449260799477e-015 10 3.871449260799477e-015 
		20 3.871449260799477e-015 30 3.871449260799477e-015 40 3.871449260799477e-015 
		47 0 60 3.871449260799477e-015;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA186";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.061808866237337522 10 -0.061808866237337522 
		20 -0.061808866237337522 30 -0.061808866237337522 40 -0.061808866237337522 
		47 -0.061808866237337522 60 -0.061808866237337522;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA187";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -59.058178941076754 10 -59.058178941076754 
		20 -59.058178941076754 30 -59.058178941076754 40 -59.058178941076754 47 -59.058178941076754 
		60 -59.058178941076754;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 16.579147429757843 10 16.579147429757843 
		20 16.579147429757843 30 16.579147429757843 40 16.579147429757843 47 16.579147429757843 
		60 16.579147429757843;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.5572674112203622 10 8.5572674112203622 
		20 8.5572674112203622 30 8.5572674112203622 40 8.5572674112203622 47 8.5572674112203622 
		60 8.5572674112203622;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA190";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 15.711328223519057 10 15.711328223519057 
		20 15.711328223519057 30 15.711328223519057 40 15.711328223519057 47 15.711328223519057 
		60 15.711328223519057;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA191";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 47 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA192";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 47 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA193";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 47 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA194";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 47 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA195";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 47 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA196";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 47 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA197";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 143.71460997127252 10 143.71460997127252 
		20 143.71460997127252 30 143.71460997127252 40 143.71460997127252 47 143.71460997127252 
		60 143.71460997127252;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA198";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.804554996454375 10 27.804554996454375 
		20 27.804554996454375 30 27.804554996454375 40 27.804554996454375 47 27.804554996454375 
		60 27.804554996454375;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA199";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 29.452980944098748 10 29.452980944098748 
		20 29.452980944098748 30 29.452980944098748 40 29.452980944098748 47 29.452980944098748 
		60 29.452980944098748;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 47 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 47 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.080064458283051 10 27.080064458283051 
		20 27.080064458283051 30 27.080064458283051 40 27.080064458283051 47 27.080064458283051 
		60 27.080064458283051;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA203";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA204";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA205";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA206";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA207";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA208";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA209";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA210";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA211";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.994403295754109;
createNode animCurveTA -n "animCurveTA212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 47 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 47 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.911632519594587 10 27.911632519594587 
		20 27.911632519594587 30 27.911632519594587 40 27.911632519594587 47 27.911632519594587 
		60 27.911632519594587;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 47 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 47 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 47 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.65073001024951671 10 -8.6710381831395065 
		20 -9.9837771730412168 30 -4.4558054295201268 40 -4.4558054295201268 47 -4.4558054295201268 
		60 -0.65073001024951671;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -4.2368721935960929 10 2.6116287730839249 
		20 7.9951432736511796 30 5.3390659424119242 40 4.1260057026312191 47 2.8371291978642215 
		60 -4.2368721935960929;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.6995264082587447 10 7.5064790710929143 
		20 10.350346434669287 30 11.199794629981129 40 11.199794629981129 47 9.7010631543519406 
		60 2.6995264082587447;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 47 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 47 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 47 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.9251701322399404e-015 8 10.707524542193632 
		20 13.508940177239692 30 -7.5549253470868623 40 -17.387674114220506 47 -7.3042573568103917 
		60 8.9251701322399404e-015;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 1 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 1 3;
	setAttr -s 7 ".kix[5:6]"  0.80365413427352905 1;
	setAttr -s 7 ".kiy[5:6]"  0.59509670734405518 0;
	setAttr -s 7 ".kox[5:6]"  0.80365413427352905 1;
	setAttr -s 7 ".koy[5:6]"  0.59509670734405518 0;
createNode animCurveTA -n "animCurveTA225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -5.2836650271627628 8 16.878613112001098 
		20 24.049058525276656 30 -14.481899086628347 40 -19.55007517782504 47 -8.6924495569698301 
		60 -5.2836650271627628;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 6.6786334979782902 8 16.732657974460075 
		20 21.421805843201252 30 23.384092070115113 40 23.846582049251293 47 20.919856347069732 
		60 6.6786334979782902;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA227";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.8903601258661931 10 -1.8903601258661931 
		20 1.8701337889594201 30 19.219684831033312 40 19.219684831033312 47 19.219684831033312 
		60 -1.8903601258661931;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.5597289571479034 10 2.5597289571479034 
		20 2.1432738497822257 30 0.4167204608830008 40 0.4167204608830008 47 0.4167204608830008 
		60 2.5597289571479034;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA229";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.016811087403604 10 2.016811087403604 
		20 2.2076863449462056 30 2.7669571521449243 40 2.7669571521449243 47 2.7669571521449243 
		60 2.016811087403604;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA230";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 47 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 47 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA232";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 33.429092416277157 10 33.429092416277157 
		20 33.429092416277157 30 33.429092416277157 40 33.429092416277157 47 33.429092416277157 
		60 33.429092416277157;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA233";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 106.91515461315004 10 106.91515461315004 
		20 106.91515461315004 30 106.91515461315004 40 106.91515461315004 47 106.91515461315004 
		60 106.91515461315004;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA234";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 28.612774017129329 10 28.612774017129329 
		20 28.612774017129329 30 28.612774017129329 40 28.612774017129329 47 28.612774017129329 
		60 28.612774017129329;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA235";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 17.632837226638049 10 17.632837226638049 
		20 17.632837226638049 30 17.632837226638049 40 17.632837226638049 47 17.632837226638049 
		60 17.632837226638049;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA236";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 47 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA237";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 47 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA238";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 17.254116939558369 10 17.254116939558369 
		20 17.254116939558369 30 17.254116939558369 40 17.254116939558369 47 17.254116939558369 
		60 17.254116939558369;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
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
	setAttr ".o" 42;
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
	setAttr -s 3 ".sol";
connectAttr "clip1Source.st" "clipLibrary1.st[0]";
connectAttr "clip1Source.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL42.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL43.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL45.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
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
// End of mlh_idle_glasses_up.ma
