//Maya ASCII 4.0 scene
//Name: mrg_idle_cross_arms.ma
//Last modified: Tue, Oct 01, 2002 05:19:54 PM
requires maya "4.0";
requires "p3dmayaexp" "18.5";
requires "p3dSimpleShader" "18.5";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mrg_idle_cross_armsSource";
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
createNode animCurveTL -n "animCurveTL44";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 -0.06062466746525573 1 -0.061975013468391182 
		2 -0.065561543404428754 3 -0.070687495163315239 4 -0.076656106634997404 5 
		-0.082770615709422068 6 -0.089267620739217332 7 -0.096590837829913651 8 -0.10435418150081142 
		9 -0.11217156627121107 10 -0.11965690666041293 11 -0.1264241171877174 12 
		-0.13208711237242488 13 -0.13654207406979746 14 -0.14004344458348422 15 -0.14274252910536595 
		16 -0.14479063282732349 17 -0.14633906094123764 18 -0.14753911863898916 19 
		-0.14869151936998456 20 -0.14998250170975821 21 -0.15139165853938308 22 -0.15289858273993207 
		23 -0.15448286719247808 24 -0.15612410477809402 25 -0.15780188837785278 26 
		-0.15949581087282733 27 -0.16118546514409046 28 -0.16285044407271529 29 -0.16447034053977455 
		30 -0.16602474742634118 31 -0.16749325761348816 32 -0.16885546398228832 33 
		-0.17009095941381466 34 -0.17117933678914005 35 -0.17210018898933738 36 -0.17283310889547951 
		37 -0.17335768938863949 38 -0.17365352334989015 39 -0.17370020366030439 40 
		-0.17347732320095513 41 -0.1729644748529153 42 -0.17214125149725781 43 -0.17098724601505555 
		44 -0.1694820512873815 45 -0.16760526019530844 46 -0.16443957814188562 47 
		-0.1592981097184856 48 -0.1525060465886664 49 -0.14438858041598604 50 -0.13527090286400248 
		51 -0.12547820559627376 52 -0.11533568027635795 53 -0.10516851856781298 54 
		-0.095301912134196878 55 -0.086061052639067701 56 -0.077771131745983449 57 
		-0.070757341118502098 58 -0.065344872420181707 59 -0.06185891731458025 60 
		-0.06062466746525573;
createNode animCurveTL -n "animCurveTL45";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 
		0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0;
createNode animCurveTL -n "animCurveTL46";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0 1 0 2 0 3 0 4 0 5 0 6 2.1426545496811724e-005 
		7 7.142181832270576e-005 8 0.00012855927298087037 9 0.00017141236397449379 
		10 0.00017855454580676441 11 0.00012855927298087051 12 0 13 -0.000111199799044489 
		14 -0.00017307886206431749 15 -0.00030300705256091498 16 -0.00061835423403571127 
		17 -0.001236490269990136 18 -0.002274785023925619 19 -0.0036320080915308185 
		20 -0.0051191056621445376 21 -0.0067217124897434224 22 -0.0084254633283041228 
		23 -0.010215992931803286 24 -0.012078936054217565 25 -0.013999927449523598 
		26 -0.015964601871698039 27 -0.017958594074717532 28 -0.019967538812558729 
		29 -0.021977070839198278 30 -0.023972824908612824 31 -0.02594043577477902 
		32 -0.027865538191673513 33 -0.029733766913272945 34 -0.031530756693553964 
		35 -0.033242142286493227 36 -0.03485355844606737 37 -0.036350639926253064 
		38 -0.037719021481026925 39 -0.038944337864365616 40 -0.040012223830245795 
		41 -0.040908314132644091 42 -0.041618243525537162 43 -0.042127646762901649 
		44 -0.042422158598714212 45 -0.042487413786951519 46 -0.041898911934370821 
		47 -0.040341477513150086 48 -0.037964732575396919 49 -0.034918299173218946 
		50 -0.031351799358723766 51 -0.027414855184018993 52 -0.023257088701212236 
		53 -0.019028121962411097 54 -0.014877577019723203 55 -0.010955075925256153 
		56 -0.0074102407311175669 57 -0.0043926934894150419 58 -0.0020520562522561999 
		59 -0.00053795107174864788 60 0;
createNode animCurveTA -n "animCurveTA129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 
		0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0;
createNode animCurveTU -n "animCurveTU9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTU -n "animCurveTU10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTU -n "animCurveTU11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTU -n "animCurveTU12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTU -n "animCurveTU13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTU -n "animCurveTU14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTU -n "animCurveTU15";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 1;
createNode animCurveTU -n "animCurveTU16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 1;
createNode animCurveTA -n "animCurveTA130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTL -n "animCurveTL47";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTL -n "animCurveTL48";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTL -n "animCurveTL49";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTL -n "animCurveTL50";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.17655026201706334 5 -0.17655026201706334 
		18 -0.17655026201706334 45 -0.17655026201706334 60 -0.17655026201706334;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "animCurveTL51";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.10676264329452093 5 0.10676264329452093 
		18 0.10676264329452093 45 0.10676264329452093 60 0.10676264329452093;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "animCurveTL52";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.073147264740539078 5 -0.073147264740539078 
		18 -0.073147264740539078 45 -0.073147264740539078 60 -0.073147264740539078;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 18 0 45 0 60 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -25.948901905116401 5 -25.948901905116401 
		18 -25.948901905116401 45 -25.948901905116401 60 -25.948901905116401;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 18 0 45 0 60 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "animCurveTL53";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.072059567379697237 3 0.072059567379697237 
		8 0.034033636703046842 13 0.095264196724378206 45 0.095264196724378206 60 
		0.072059567379697237;
	setAttr -s 6 ".kit[2:5]"  9 3 3 3;
	setAttr -s 6 ".kot[2:5]"  9 3 3 3;
createNode animCurveTL -n "animCurveTL54";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.10860528941614173 3 0.10860528941614173 
		8 0.14505384650274353 13 0.10023615114791097 45 0.10023615114791097 60 0.10860528941614173;
	setAttr -s 6 ".kit[0:5]"  3 3 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 3 9 9 9 3;
createNode animCurveTL -n "animCurveTL55";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.00088390886240813306 3 0.00088390886240813306 
		8 -0.01996104582486008 13 -0.069408964350662447 45 -0.069408964350662447 
		60 0.00088390886240813306;
	setAttr -s 6 ".kit[0:5]"  3 3 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 3 9 9 9 3;
createNode animCurveTA -n "animCurveTA136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 8 9.7248638133372189 13 
		1.3111513281966007 45 1.3111513281966007 60 0;
	setAttr -s 6 ".kit[0:5]"  3 3 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 3 9 9 9 3;
createNode animCurveTA -n "animCurveTA137";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 8 7.7669655327135176 13 
		20.682024796266205 45 20.682024796266205 60 0;
	setAttr -s 6 ".kit[2:5]"  1 9 9 3;
	setAttr -s 6 ".kot[2:5]"  1 9 9 3;
	setAttr -s 6 ".kix[2:5]"  0.49562689661979675 0.98370558023452759 
		0.97446870803833008 1;
	setAttr -s 6 ".kiy[2:5]"  0.86853551864624023 0.1797870546579361 
		-0.22452345490455627 0;
	setAttr -s 6 ".kox[2:5]"  0.49562680721282959 0.98370558023452759 
		0.97446870803833008 1;
	setAttr -s 6 ".koy[2:5]"  0.86853557825088501 0.1797870546579361 
		-0.22452345490455627 0;
createNode animCurveTA -n "animCurveTA138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 8 -2.4303747419619981 13 
		3.4972111245794788 45 3.4972111245794788 60 0;
	setAttr -s 6 ".kit[0:5]"  3 3 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 3 9 9 9 3;
createNode animCurveTA -n "animCurveTA139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTL -n "animCurveTL56";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 18 0 45 0 60 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "animCurveTL57";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 18 0 45 0 60 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "animCurveTL58";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.1269999742507935 5 1.1269999742507935 
		18 1.1269999742507935 45 1.1269999742507935 60 1.1269999742507935;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "animCurveTL59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 18 0 45 0 60 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "animCurveTL60";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 18 0 45 0 60 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "animCurveTL61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.1269999742507935 5 1.1269999742507935 
		18 1.1269999742507935 45 1.1269999742507935 60 1.1269999742507935;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "animCurveTL62";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.073888416931195494 5 -0.100879559738526 
		12 -0.1609857511516205 18 -0.17981841991803765 45 -0.20427472616274275 60 
		-0.073888416931195494;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL63";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.9885925041129735 5 0.98182934901357344 
		12 0.97208190345946788 18 0.96912898679484516 45 0.96562837589288308 60 0.9885925041129735;
	setAttr -s 6 ".kit[0:5]"  3 1 9 9 1 3;
	setAttr -s 6 ".kot[0:5]"  3 1 9 9 1 3;
	setAttr -s 6 ".kix[1:5]"  0.20054402947425842 0.32291853427886963 
		0.86251825094223022 0.89066451787948608 1;
	setAttr -s 6 ".kiy[1:5]"  -0.97968471050262451 -0.94642674922943115 
		-0.50602596998214722 0.45466107130050659 0;
	setAttr -s 6 ".kox[1:5]"  0.20054188370704651 0.32291853427886963 
		0.86251825094223022 0.89066439867019653 1;
	setAttr -s 6 ".koy[1:5]"  -0.97968512773513794 -0.94642674922943115 
		-0.50602596998214722 0.45466133952140808 0;
createNode animCurveTL -n "animCurveTL64";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 12 0 18 -0.0027724731747680639 
		45 -0.051783009713293034 60 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA151";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.62843630316474508 5 1.6109018166569928 
		12 2.1768307354859431 18 1.544767647402328 45 1.1822093897116603 60 -0.62843630316474508;
	setAttr -s 6 ".kit[0:5]"  3 1 1 9 1 3;
	setAttr -s 6 ".kot[0:5]"  3 1 1 9 1 3;
	setAttr -s 6 ".kix[1:5]"  0.99116730690002441 0.99880743026733398 
		0.99987548589706421 0.99979007244110107 1;
	setAttr -s 6 ".kiy[1:5]"  0.13261720538139343 -0.048822924494743347 
		-0.015779323875904083 -0.020489159971475601 0;
	setAttr -s 6 ".kox[1:5]"  0.99116730690002441 0.99880743026733398 
		0.99987548589706421 0.99979007244110107 1;
	setAttr -s 6 ".koy[1:5]"  0.13261719048023224 -0.048822924494743347 
		-0.015779323875904083 -0.020489156246185303 0;
createNode animCurveTA -n "animCurveTA152";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -5.8284402688137158 5 -1.0800156761534343 
		12 0.064983848442739606 18 -3.7706759094846443 45 -4.7955049774525431 60 
		-5.8284402688137158;
	setAttr -s 6 ".kit[0:5]"  3 1 1 1 9 3;
	setAttr -s 6 ".kot[0:5]"  3 1 1 1 9 3;
	setAttr -s 6 ".kix[1:5]"  0.95905965566635132 0.99897235631942749 
		0.99522536993026733 0.99967110157012939 1;
	setAttr -s 6 ".kiy[1:5]"  0.28320416808128357 -0.045324161648750305 
		-0.097603514790534973 -0.025644965469837189 0;
	setAttr -s 6 ".kox[1:5]"  0.95905965566635132 0.99897235631942749 
		0.99522536993026733 0.99967110157012939 1;
	setAttr -s 6 ".koy[1:5]"  0.28320410847663879 -0.045324184000492096 
		-0.097603507339954376 -0.025644965469837189 0;
createNode animCurveTA -n "animCurveTA153";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.2956360193097458 5 2.2823354791072705 
		12 0.12301076861891889 18 -3.9395267524920867 45 -4.8666649468390277 60 -1.2956360193097458;
	setAttr -s 6 ".kit[0:5]"  3 9 1 1 1 3;
	setAttr -s 6 ".kot[0:5]"  3 9 1 1 1 3;
	setAttr -s 6 ".kix[2:5]"  0.94349867105484009 0.99542099237442017 
		0.99917232990264893 1;
	setAttr -s 6 ".kiy[2:5]"  -0.33137625455856323 -0.095588058233261108 
		0.040677592158317566 0;
	setAttr -s 6 ".kox[2:5]"  0.94349867105484009 0.99542099237442017 
		0.99917232990264893 1;
	setAttr -s 6 ".koy[2:5]"  -0.33137625455856323 -0.095588050782680511 
		0.040677592158317566 0;
createNode animCurveTA -n "animCurveTA154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA165";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA169";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTL -n "animCurveTL65";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 -0.43524234076486068;
createNode animCurveTL -n "animCurveTL66";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL67";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0.27773886459742925;
createNode animCurveTA -n "animCurveTA180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 -1.8121934161072303e-015;
createNode animCurveTA -n "animCurveTA181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 28.652637602052774;
createNode animCurveTA -n "animCurveTA182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 64.676908227303443;
createNode animCurveTL -n "animCurveTL68";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0.5198069948790518;
createNode animCurveTL -n "animCurveTL69";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL70";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0.36439499068905612;
createNode animCurveTA -n "animCurveTA183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 7.7976222737965299;
createNode animCurveTA -n "animCurveTA184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 -30.409274105849079;
createNode animCurveTA -n "animCurveTA185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 -64.859940280210878;
createNode animCurveTL -n "animCurveTL71";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.65311611999272123 8 -0.56477303460347594 
		15 -0.7028544800011467 18 -0.56998186000939455 23 -0.32718673710334523 31 
		-0.44886245598868818 50 -0.38758904836256075 54 -0.56655385359713084 60 -0.65311611999272123;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 1 1 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 1 1 
		9 3;
	setAttr -s 9 ".kix[5:8]"  0.11365935206413269 0.11781080812215805 
		0.012552659027278423 1;
	setAttr -s 9 ".kiy[5:8]"  0.99351978302001953 0.99303603172302246 
		-0.99992120265960693 0;
	setAttr -s 9 ".kox[5:8]"  0.11365937441587448 0.11781101673841476 
		0.012552659027278423 1;
	setAttr -s 9 ".koy[5:8]"  0.99351978302001953 0.99303603172302246 
		-0.99992120265960693 0;
createNode animCurveTL -n "animCurveTL72";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.2462096125327005 8 2.6527500675046123 
		15 2.9163437350233989 18 2.9934633695822539 23 3.0457455440411514 31 2.9083386685067767 
		50 2.9296773644147955 54 2.5151762241349869 60 2.2462096125327005;
	setAttr -s 9 ".kit[0:8]"  3 1 1 1 9 1 1 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 1 1 1 9 1 1 
		9 3;
	setAttr -s 9 ".kix[1:8]"  0.0061669130809605122 0.011034072376787663 
		0.012749389745295048 0.050839882344007492 0.20212593674659729 0.25944402813911438 
		0.0048770313151180744 1;
	setAttr -s 9 ".kiy[1:8]"  0.99998098611831665 0.99993914365768433 
		0.99991869926452637 -0.99870681762695313 0.97935956716537476 -0.96575814485549927 
		-0.99998807907104492 0;
	setAttr -s 9 ".kox[1:8]"  0.0061668655835092068 0.011034091003239155 
		0.012749359011650085 0.050839882344007492 0.20212595164775848 0.25944393873214722 
		0.0048770313151180744 1;
	setAttr -s 9 ".koy[1:8]"  0.99998098611831665 0.99993914365768433 
		0.99991869926452637 -0.99870681762695313 0.97935950756072998 -0.96575814485549927 
		-0.99998807907104492 0;
createNode animCurveTL -n "animCurveTL73";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.097994651149805143 8 0.27518258024209702 
		15 0.39086758973466562 18 0.58705137971890986 23 0.44964513239217568 31 0.40340035201012214 
		50 0.35953292972756073 54 0.37727325226047576 60 -0.097994651149805143;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 1 1 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 1 1 
		9 3;
	setAttr -s 9 ".kix[5:8]"  0.14838480949401855 0.076465927064418793 
		0.0072853420861065388 1;
	setAttr -s 9 ".kiy[5:8]"  -0.98892968893051147 -0.99707221984863281 
		-0.99997347593307495 0;
	setAttr -s 9 ".kox[5:8]"  0.14838476479053497 0.076465979218482971 
		0.0072853420861065388 1;
	setAttr -s 9 ".koy[5:8]"  -0.98892968893051147 -0.99707221984863281 
		-0.99997347593307495 0;
createNode animCurveTA -n "animCurveTA186";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 5.4739599453216474 8 164.25671884708439 
		15 183.92358313249542 18 166.76009787845928 23 132.87853255202791 31 132.87853255202791 
		50 112.29792119274765 54 63.169992121240803 60 5.4739599453216474;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 1 1 1 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 1 1 1 
		9 3;
	setAttr -s 9 ".kix[4:8]"  0.81632840633392334 0.99665218591690063 
		0.68129855394363403 0.17599502205848694 1;
	setAttr -s 9 ".kiy[4:8]"  -0.57758802175521851 0.081758119165897369 
		-0.73200565576553345 -0.98439103364944458 0;
	setAttr -s 9 ".kox[4:8]"  0.81632852554321289 0.99665218591690063 
		0.68129873275756836 0.17599502205848694 1;
	setAttr -s 9 ".koy[4:8]"  -0.57758790254592896 0.081758104264736176 
		-0.7320055365562439 -0.98439103364944458 0;
createNode animCurveTA -n "animCurveTA187";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 8.5874521608419823 8 73.010571734940882 
		15 33.829980853422114 18 19.670030154702715 23 3.4790062351705502 31 3.4790062351705502 
		50 -9.7475182085898027 54 44.97606139644698 60 8.5874521608419823;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 1 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 1 
		9 3;
	setAttr -s 9 ".kix[6:8]"  0.94677799940109253 0.72138124704360962 
		1;
	setAttr -s 9 ".kiy[6:8]"  -0.32188734412193298 0.69253814220428467 
		0;
	setAttr -s 9 ".kox[6:8]"  0.94677799940109253 0.72138124704360962 
		1;
	setAttr -s 9 ".koy[6:8]"  -0.32188734412193298 0.69253814220428467 
		0;
createNode animCurveTA -n "animCurveTA188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 74.754744621954103 8 240.96872714280065 
		15 265.84099728581083 18 246.07512506598914 23 207.31937393349301 31 207.31937393349301 
		50 197.16803121054676 54 113.30394038279515 60 74.754744621954103;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 1 9 1 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 1 9 1 
		9 3;
	setAttr -s 9 ".kix[4:8]"  0.79678690433502197 0.98116862773895264 
		0.75057119131088257 0.15415245294570923 1;
	setAttr -s 9 ".kiy[4:8]"  -0.60426038503646851 -0.19315324723720551 
		-0.6607896089553833 -0.98804706335067749 0;
	setAttr -s 9 ".kox[4:8]"  0.79678696393966675 0.98116862773895264 
		0.75057113170623779 0.15415245294570923 1;
	setAttr -s 9 ".koy[4:8]"  -0.60426026582717896 -0.19315324723720551 
		-0.66078966856002808 -0.98804706335067749 0;
createNode animCurveTL -n "animCurveTL74";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.31432036959158904 8 0.30441789132029035 
		15 -0.15923586528944966 18 -0.27951969540306915 23 -0.39133648583315611 31 
		-0.51301220471849907 50 -0.44441495106110751 54 0.0047057571296409643 60 
		0.31432036959158904;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 1 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 1 
		9 3;
	setAttr -s 9 ".kix[6:8]"  0.036451764404773712 0.004393232986330986 
		1;
	setAttr -s 9 ".kiy[6:8]"  0.99933540821075439 0.99999034404754639 
		0;
	setAttr -s 9 ".kox[6:8]"  0.036451701074838638 0.004393232986330986 
		1;
	setAttr -s 9 ".koy[6:8]"  0.99933540821075439 0.99999034404754639 
		0;
createNode animCurveTL -n "animCurveTL75";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.2297686973003263 8 2.3190094857539498 
		15 2.7981978030148582 18 2.9376198683102701 23 3.0643371870042082 31 2.9269303114698335 
		50 2.9482690073778519 54 2.5873749215884101 60 2.2297686973003263;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 1 1 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 1 1 
		9 3;
	setAttr -s 9 ".kix[5:8]"  0.28678810596466064 0.11610863357782364 
		0.0046392427757382393 1;
	setAttr -s 9 ".kiy[5:8]"  0.95799404382705688 -0.99323654174804688 
		-0.99998921155929565 0;
	setAttr -s 9 ".kox[5:8]"  0.28678813576698303 0.11610851436853409 
		0.0046392427757382393 1;
	setAttr -s 9 ".koy[5:8]"  0.95799404382705688 -0.99323654174804688 
		-0.99998921155929565 0;
createNode animCurveTL -n "animCurveTL76";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.016524074637843583 8 0.04763022023152564 
		15 0.4484653005919787 18 0.31968481795595388 23 0.31365995444324896 31 0.26741517406119547 
		50 0.22354775177863417 54 0.27901856641019201 60 0.016524074637843583;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 1 1 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 1 1 
		9 3;
	setAttr -s 9 ".kix[5:8]"  0.11842283606529236 0.068297028541564941 
		0.016099130734801292 1;
	setAttr -s 9 ".kiy[5:8]"  -0.99296325445175171 -0.99766504764556885 
		-0.9998704195022583 0;
	setAttr -s 9 ".kox[5:8]"  0.11842278391122818 0.068296827375888824 
		0.016099130734801292 1;
	setAttr -s 9 ".koy[5:8]"  -0.99296325445175171 -0.99766504764556885 
		-0.9998704195022583 0;
createNode animCurveTA -n "animCurveTA189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 16.226511010665405 8 15.352531350342113 
		15 105.34715710766179 18 112.88466750769527 23 115.17508005445684 31 115.17508005445684 
		50 114.24407429789856 54 86.051943315156635 60 16.226511010665405;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 1 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 1 
		9 3;
	setAttr -s 9 ".kix[6:8]"  0.97554314136505127 0.1912519633769989 
		1;
	setAttr -s 9 ".kiy[6:8]"  -0.21980813145637512 -0.9815409779548645 
		0;
	setAttr -s 9 ".kox[6:8]"  0.97554314136505127 0.1912519633769989 
		1;
	setAttr -s 9 ".koy[6:8]"  -0.21980816125869751 -0.9815409779548645 
		0;
createNode animCurveTA -n "animCurveTA190";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -8.513966085499284 8 -33.675694835985219 
		15 -21.496681843950324 18 -3.8497544470211111 23 22.863769712321375 31 22.863769712321375 
		50 23.378216695087737 54 -9.7241156253322174 60 -8.513966085499284;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 1 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 1 
		9 3;
	setAttr -s 9 ".kix[6:8]"  0.9990965723991394 0.51376932859420776 
		1;
	setAttr -s 9 ".kiy[6:8]"  -0.042497318238019943 -0.85792839527130127 
		0;
	setAttr -s 9 ".kox[6:8]"  0.9990965723991394 0.51376932859420776 
		1;
	setAttr -s 9 ".koy[6:8]"  -0.042497370392084122 -0.85792839527130127 
		0;
createNode animCurveTA -n "animCurveTA191";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -68.213989601412422 8 -87.038638303950719 
		15 -193.73562755755702 18 -209.77051458368032 23 -208.44835921791812 31 -208.44835921791812 
		50 -208.82023358558058 54 -159.1022832783371 60 -68.213989601412422;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 1 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 1 
		9 3;
	setAttr -s 9 ".kix[6:8]"  0.97048735618591309 0.1345943808555603 
		1;
	setAttr -s 9 ".kiy[6:8]"  0.24115189909934998 0.99090075492858887 
		0;
	setAttr -s 9 ".kox[6:8]"  0.97048741579055786 0.1345943808555603 
		1;
	setAttr -s 9 ".koy[6:8]"  0.24115180969238281 0.99090075492858887 
		0;
createNode animCurveTL -n "animCurveTL77";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 8 0 15 0.72950049097719871 
		18 1.0124740708465572 23 1.3714041361675471 31 1.3993220747795834 50 1.3593747970788566 
		60 0;
	setAttr -s 8 ".kit[6:7]"  3 9;
	setAttr -s 8 ".kot[6:7]"  3 9;
createNode animCurveTL -n "animCurveTL78";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 8 0.017297425520376164 15 0.11887968011508843 
		18 0.20195317631937798 23 0.36846750951917395 31 0.54078939868456788 50 0.54566308618423554 
		60 0;
	setAttr -s 8 ".kit[6:7]"  3 9;
	setAttr -s 8 ".kot[6:7]"  3 9;
createNode animCurveTL -n "animCurveTL79";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1 8 -1 15 -1.0250465734801351 
		18 -1.0310742442462177 23 -1.0482339166512291 31 -0.95381915812552576 50 
		-1.0769663733098322 60 -1;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 3 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 3 
		3;
createNode animCurveTL -n "animCurveTL80";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.10167917362943303 8 -0.68667937788284872 
		15 -0.74247579153844923 18 -1.0582977284673869 23 -1.5749265559468948 31 
		-1.4906181246959596 50 -1.5869558950355853 60 -0.10167917362943303;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTL -n "animCurveTL81";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.40762644910266188 8 -0.44301407715002683 
		15 -0.30572068270712577 18 -0.10194224278268302 23 0.41025946688888704 31 
		0.44840808386512637 50 0.28590123372181658 60 -0.40762644910266188;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTL -n "animCurveTL82";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.93129112588482243 8 -0.93661874652913868 
		15 -1.03050276698082 18 -1.0063066628238202 23 -0.94783687594268173 31 -0.91818526920864663 
		50 -0.97656933260128487 60 -0.93129112588482243;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA192";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 12.253734489678925 5 12.253734489678925 
		18 12.253734489678925 45 12.253734489678925 60 12.253734489678925;
createNode animCurveTA -n "animCurveTA193";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -65.746751280844961 5 -65.746751280844961 
		18 -65.746751280844961 45 -65.746751280844961 60 -65.746751280844961;
createNode animCurveTA -n "animCurveTA194";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 3.871449260799477e-015 5 3.871449260799477e-015 
		18 0 45 0 60 3.871449260799477e-015;
createNode animCurveTA -n "animCurveTA195";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.061808866237337522 5 -0.061808866237337522 
		18 -0.061808866237337522 45 -0.061808866237337522 60 -0.061808866237337522;
createNode animCurveTA -n "animCurveTA196";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -59.058178941076754 5 -59.058178941076754 
		18 -59.058178941076754 45 -59.058178941076754 60 -59.058178941076754;
createNode animCurveTA -n "animCurveTA197";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 16.579147429757843 5 16.579147429757843 
		18 16.579147429757843 45 16.579147429757843 60 16.579147429757843;
createNode animCurveTA -n "animCurveTA198";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.5572674112203622 5 8.5572674112203622 
		18 8.5572674112203622 45 8.5572674112203622 60 8.5572674112203622;
createNode animCurveTA -n "animCurveTA199";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 15.711328223519057 5 15.711328223519057 
		18 15.711328223519057 45 15.711328223519057 60 15.711328223519057;
createNode animCurveTA -n "animCurveTA200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 18 0 45 0 60 0;
createNode animCurveTA -n "animCurveTA201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 18 0 45 0 60 0;
createNode animCurveTA -n "animCurveTA202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 18 0 45 0 60 0;
createNode animCurveTA -n "animCurveTA203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 18 0 45 0 60 0;
createNode animCurveTA -n "animCurveTA204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 18 0 45 0 60 0;
createNode animCurveTA -n "animCurveTA205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 18 0 45 0 60 0;
createNode animCurveTA -n "animCurveTA206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 10.423754966968488 5 10.423754966968488 
		18 10.423754966968488 45 10.423754966968488 60 10.423754966968488;
createNode animCurveTA -n "animCurveTA207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.722848255843903 5 27.722848255843903 
		18 27.722848255843903 45 27.722848255843903 60 27.722848255843903;
createNode animCurveTA -n "animCurveTA208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 21.576484776388227 5 21.576484776388227 
		18 21.576484776388227 45 21.576484776388227 60 21.576484776388227;
createNode animCurveTA -n "animCurveTA209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 18 0 45 0 60 0;
createNode animCurveTA -n "animCurveTA210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 18 0 45 0 60 0;
createNode animCurveTA -n "animCurveTA211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.080064458283051 5 27.080064458283051 
		18 27.080064458283051 45 27.080064458283051 60 27.080064458283051;
createNode animCurveTA -n "animCurveTA212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 13.994403295754109;
createNode animCurveTA -n "animCurveTA218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 13.994403295754109;
createNode animCurveTA -n "animCurveTA221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 18 0 45 0 60 0;
createNode animCurveTA -n "animCurveTA222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 18 0 45 0 60 0;
createNode animCurveTA -n "animCurveTA223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.911632519594587 5 27.911632519594587 
		18 27.911632519594587 45 27.911632519594587 60 27.911632519594587;
createNode animCurveTA -n "animCurveTA224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 18 0 45 0 60 0;
createNode animCurveTA -n "animCurveTA225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 18 0 45 0 60 0;
createNode animCurveTA -n "animCurveTA226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 18 0 45 0 60 0;
createNode animCurveTA -n "animCurveTA227";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.65073001024951671 5 4.0650115343692814 
		18 -6.1663255048448216 45 -8.1164454291724617 60 -0.65073001024951671;
	setAttr -s 5 ".kit[0:4]"  3 9 1 1 3;
	setAttr -s 5 ".kot[0:4]"  3 9 1 1 3;
	setAttr -s 5 ".kix[2:4]"  0.99603873491287231 0.9994279146194458 
		1;
	setAttr -s 5 ".kiy[2:4]"  -0.088920436799526215 -0.033820606768131256 
		0;
	setAttr -s 5 ".kox[2:4]"  0.99603873491287231 0.9994279146194458 
		1;
	setAttr -s 5 ".koy[2:4]"  -0.088920444250106812 -0.033820610493421555 
		0;
createNode animCurveTA -n "animCurveTA228";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -4.2368721935960929 5 0.69662921587996229 
		18 9.8723865255616943 45 10.516450120961963 60 -4.2368721935960929;
	setAttr -s 5 ".kit[0:4]"  3 1 1 1 3;
	setAttr -s 5 ".kot[0:4]"  3 1 1 1 3;
	setAttr -s 5 ".kix[1:4]"  0.84876066446304321 0.99691909551620483 
		0.99891036748886108 1;
	setAttr -s 5 ".kiy[1:4]"  0.52877718210220337 0.078436493873596191 
		-0.046670503914356232 0;
	setAttr -s 5 ".kox[1:4]"  0.84876072406768799 0.99691909551620483 
		0.99891030788421631 1;
	setAttr -s 5 ".koy[1:4]"  0.52877712249755859 0.078436478972434998 
		-0.046670544892549515 0;
createNode animCurveTA -n "animCurveTA229";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 9.4592235793901747 5 5.8442245168379339 
		18 -1.1276624776546562 45 -3.2137395304081586 60 9.4592235793901747;
	setAttr -s 5 ".kit[0:4]"  3 1 1 1 3;
	setAttr -s 5 ".kot[0:4]"  3 1 1 1 3;
	setAttr -s 5 ".kix[1:4]"  0.84476304054260254 0.99529707431793213 
		0.99959421157836914 1;
	setAttr -s 5 ".kiy[1:4]"  -0.53514057397842407 -0.096869923174381256 
		-0.028485516086220741 0;
	setAttr -s 5 ".kox[1:4]"  0.84476298093795776 0.99529707431793213 
		0.99959421157836914 1;
	setAttr -s 5 ".koy[1:4]"  -0.53514063358306885 -0.096869923174381256 
		-0.028485510498285294 0;
createNode animCurveTA -n "animCurveTA230";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 18 19.612458236816881 45 
		29.347881178570912 60 0;
	setAttr -s 5 ".kit[3:4]"  1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[3:4]"  0.99999356269836426 0.69852131605148315;
	setAttr -s 5 ".kiy[3:4]"  0.003586944192647934 -0.71558922529220581;
	setAttr -s 5 ".kox[3:4]"  0.99999356269836426 0.69852131605148315;
	setAttr -s 5 ".koy[3:4]"  0.0035868817940354347 -0.71558922529220581;
createNode animCurveTA -n "animCurveTA231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 18 0 45 0 60 0;
createNode animCurveTA -n "animCurveTA232";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 18 0 45 0 60 0;
createNode animCurveTA -n "animCurveTA233";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 1.798137933214877 18 -13.800082288293215 
		45 -11.890464530113887 60 0;
	setAttr -s 5 ".kit[0:4]"  3 9 1 1 3;
	setAttr -s 5 ".kot[0:4]"  3 9 1 1 3;
	setAttr -s 5 ".kix[2:4]"  0.99957656860351563 0.99780774116516113 
		1;
	setAttr -s 5 ".kiy[2:4]"  -0.029097914695739746 0.066179327666759491 
		0;
	setAttr -s 5 ".kox[2:4]"  0.99957656860351563 0.99780774116516113 
		1;
	setAttr -s 5 ".koy[2:4]"  -0.029097933322191238 0.066179342567920685 
		0;
createNode animCurveTA -n "animCurveTA234";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 4.4619691196883169 18 -17.124028619085557 
		45 -21.080183772919064 60 0;
	setAttr -s 5 ".kit[0:4]"  3 9 1 1 3;
	setAttr -s 5 ".kot[0:4]"  3 9 1 1 3;
	setAttr -s 5 ".kix[2:4]"  0.98522728681564331 0.99763911962509155 
		1;
	setAttr -s 5 ".kiy[2:4]"  -0.17125168442726135 -0.06867411732673645 
		0;
	setAttr -s 5 ".kox[2:4]"  0.98522728681564331 0.99763911962509155 
		1;
	setAttr -s 5 ".koy[2:4]"  -0.17125168442726135 -0.068674094974994659 
		0;
createNode animCurveTA -n "animCurveTA235";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 13.828138835879258 5 19.17319188686022 
		18 28.957018032460336 45 30.34664603265437 60 13.828138835879258;
	setAttr -s 5 ".kit[0:4]"  3 9 1 1 3;
	setAttr -s 5 ".kot[0:4]"  3 9 1 1 3;
	setAttr -s 5 ".kix[2:4]"  0.99632483720779419 0.99936020374298096 
		1;
	setAttr -s 5 ".kiy[2:4]"  0.085655428469181061 -0.035764887928962708 
		0;
	setAttr -s 5 ".kox[2:4]"  0.99632483720779419 0.99936020374298096 
		1;
	setAttr -s 5 ".koy[2:4]"  0.085655435919761658 -0.035764876753091812 
		0;
createNode animCurveTA -n "animCurveTA236";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.8905779124872244 5 -1.892566782782598 
		18 -1.8890840137219629 45 -1.8893864671400296 60 -1.8905779124872244;
	setAttr -s 5 ".kit[0:4]"  3 9 1 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 1 9 3;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 -1.8623893993208185e-005 0;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 -1.8623893993208185e-005 0;
createNode animCurveTA -n "animCurveTA237";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.5602510346124587 5 -3.6672468933255971 
		18 -1.1699494723368886 45 1.5554123682260852 60 2.5602510346124587;
	setAttr -s 5 ".kit[0:4]"  3 1 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 1 9 9 3;
	setAttr -s 5 ".kix[1:4]"  0.99999064207077026 0.99767130613327026 
		0.9989205002784729 1;
	setAttr -s 5 ".kiy[1:4]"  0.0043309046886861324 0.068205252289772034 
		0.046452857553958893 0;
	setAttr -s 5 ".kox[1:4]"  0.99999064207077026 0.99767130613327026 
		0.9989205002784729 1;
	setAttr -s 5 ".koy[1:4]"  0.0043308916501700878 0.068205252289772034 
		0.046452857553958893 0;
createNode animCurveTA -n "animCurveTA238";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -12.605441061780661 5 -12.399862537455558 
		18 -12.482373064128476 45 -12.572262040633488 60 -12.605441061780661;
	setAttr -s 5 ".kit[0:4]"  3 1 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 1 9 9 3;
	setAttr -s 5 ".kix[1:4]"  0.99999994039535522 0.99999743700027466 
		0.99999880790710449 1;
	setAttr -s 5 ".kiy[1:4]"  -0.00031117451726458967 -0.0022566984407603741 
		-0.0015342422993853688 0;
	setAttr -s 5 ".kox[1:4]"  0.99999994039535522 0.99999743700027466 
		0.99999880790710449 1;
	setAttr -s 5 ".koy[1:4]"  -0.00031117428443394601 -0.0022566984407603741 
		-0.0015342422993853688 0;
createNode animCurveTA -n "animCurveTA239";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 18 0 45 0 60 0;
createNode animCurveTA -n "animCurveTA240";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 18 0 45 0 60 0;
createNode animCurveTA -n "animCurveTA241";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 33.429092416277157 5 33.429092416277157 
		18 33.429092416277157 45 33.429092416277157 60 33.429092416277157;
createNode animCurveTA -n "animCurveTA242";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.2533422302317216 5 8.2533422302317216 
		18 8.2533422302317216 45 8.2533422302317216 60 8.2533422302317216;
createNode animCurveTA -n "animCurveTA243";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 23.263402056531085 5 23.263402056531085 
		18 23.263402056531085 45 23.263402056531085 60 23.263402056531085;
createNode animCurveTA -n "animCurveTA244";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 20.166277752815617 5 20.166277752815617 
		18 20.166277752815617 45 20.166277752815617 60 20.166277752815617;
createNode animCurveTA -n "animCurveTA245";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 18 0 45 0 60 0;
createNode animCurveTA -n "animCurveTA246";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 18 0 45 0 60 0;
createNode animCurveTA -n "animCurveTA247";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 17.254116939558369 5 17.254116939558369 
		18 17.254116939558369 45 17.254116939558369 60 17.254116939558369;
createNode animCurveTA -n "animCurveTA248";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 15 0 25 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA249";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 2.219463762193786 15 -1.5559408257600231 
		25 3.9357826549150503 40 -0.97121583241700893 50 1.9091999606480059 60 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA250";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 15 -2.5776711081586936 
		25 -2.3513735107395828 40 -1.392134335848539 50 -0.70212871154206868 60 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA251";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 15 0 25 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA252";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 2.219463762193786 15 -1.5559408257600231 
		25 3.9357826549150503 40 -0.97121583241700893 50 1.9091999606480059 60 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA253";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 15 -2.5776711081586936 
		25 -2.3513735107395828 40 -1.392134335848539 50 -0.70212871154206868 60 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA254";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 15 0 25 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA255";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 2.219463762193786 15 -1.5559408257600231 
		25 3.9357826549150503 40 -0.97121583241700893 50 1.9091999606480059 60 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA256";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 15 -2.5776711081586936 
		25 -2.3513735107395828 40 -1.392134335848539 50 -0.70212871154206868 60 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode clipLibrary -n "clipLibrary1";
	setAttr -s 177 ".cel[0].cev";
	setAttr ".cd[0].cm" -type "characterMapping" 177 "Extra_Attributes.translateX" 
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
		2 118 "Middle_L.rotateZ" 2 119 "hair_1.rotateX" 2 120 "hair_1.rotateY" 
		2 121 "hair_1.rotateZ" 2 122 "hair_2.rotateX" 2 123 "hair_2.rotateY" 
		2 124 "hair_2.rotateZ" 2 125 "hair_3.rotateX" 2 126 "hair_3.rotateY" 
		2 127 "hair_3.rotateZ" 2 128  ;
	setAttr ".cd[0].cim" -type "Int32Array" 177 0 1 2 3
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
		 158 159 160 161 162 163 164 165 166 167 168
		 169 170 171 172 173 174 175 176 ;
createNode lightLinker -n "lightLinker1";
	setAttr ".ihi" 0;
	setAttr -s 21 ".lnk";
select -ne :time1;
	setAttr ".o" 39;
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
	setAttr ".outf" 23;
	setAttr ".an" yes;
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
connectAttr "mrg_idle_cross_armsSource.st" "clipLibrary1.st[0]";
connectAttr "mrg_idle_cross_armsSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL42.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL43.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL44.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL45.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL46.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA129.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU9.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU10.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU11.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU12.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU13.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU14.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU15.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU16.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA130.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA131.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA132.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL47.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL48.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL49.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL50.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL51.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL52.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA133.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA134.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA135.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL53.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL54.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL55.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA136.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA137.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA138.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA139.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA140.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA141.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA142.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA143.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA144.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA145.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA146.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA147.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA148.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA149.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA150.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL56.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL57.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL58.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL59.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL60.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL61.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL62.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL63.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL64.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA151.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA152.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA153.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA154.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA155.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA156.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA157.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA158.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA159.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA160.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA161.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA162.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA163.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA164.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA165.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA166.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA167.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA168.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA169.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA170.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA171.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA172.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA173.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA174.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA175.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA176.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA177.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA178.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA179.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL65.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL66.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL67.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA180.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA181.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA182.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL68.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL69.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL70.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA183.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA184.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA185.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL71.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL72.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL73.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA186.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA187.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA188.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL74.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL75.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL76.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA189.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA190.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA191.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL77.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL78.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL79.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL80.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL81.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL82.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA192.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA193.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA194.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA195.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA196.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA197.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA198.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA199.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA200.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA201.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA202.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA203.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA204.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA205.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA206.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA207.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA208.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA209.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA210.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA211.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA212.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA213.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA214.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA215.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA216.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA217.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA218.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA219.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA220.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA221.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA222.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA223.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA224.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA225.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA226.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA227.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA228.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA229.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA230.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA231.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA232.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA233.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA234.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA235.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA236.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA237.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA238.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA239.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA240.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA241.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA242.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA243.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA244.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA245.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA246.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA247.a" "clipLibrary1.cel[0].cev[167].cevr";
connectAttr "animCurveTA248.a" "clipLibrary1.cel[0].cev[168].cevr";
connectAttr "animCurveTA249.a" "clipLibrary1.cel[0].cev[169].cevr";
connectAttr "animCurveTA250.a" "clipLibrary1.cel[0].cev[170].cevr";
connectAttr "animCurveTA251.a" "clipLibrary1.cel[0].cev[171].cevr";
connectAttr "animCurveTA252.a" "clipLibrary1.cel[0].cev[172].cevr";
connectAttr "animCurveTA253.a" "clipLibrary1.cel[0].cev[173].cevr";
connectAttr "animCurveTA254.a" "clipLibrary1.cel[0].cev[174].cevr";
connectAttr "animCurveTA255.a" "clipLibrary1.cel[0].cev[175].cevr";
connectAttr "animCurveTA256.a" "clipLibrary1.cel[0].cev[176].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[1].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[8].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[13].llnk";
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
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[33].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[34].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[35].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[36].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[37].llnk";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of mrg_idle_cross_arms.ma
