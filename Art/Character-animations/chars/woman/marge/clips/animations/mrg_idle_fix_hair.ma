//Maya ASCII 4.0 scene
//Name: mrg_idle_fix_hair.ma
//Last modified: Tue, Oct 01, 2002 05:20:02 PM
requires maya "4.0";
requires "p3dmayaexp" "18.5";
requires "p3dSimpleShader" "18.5";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mrg_idle_fix_hairSource";
	setAttr ".ihi" 0;
	setAttr ".du" 60;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL42";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 10.995 0 11 1 25 1 25.005 0 
		60 0;
createNode animCurveTL -n "animCurveTL43";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 29.995000000000001 0 30 
		1 43 1 43.005000000000003 0 60 0;
createNode animCurveTL -n "animCurveTL44";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 -0.06062466746525573 1 -0.060492102848207628 
		2 -0.06010915587709606 3 -0.05949794687197011 4 -0.058680596152878829 5 -0.057679224039871302 
		6 -0.056515950852996613 7 -0.055212896912303827 8 -0.053792182537842015 9 
		-0.052275928049660275 10 -0.050686253767807658 11 -0.049045280012333249 12 
		-0.047375127103286119 13 -0.045697915360715345 14 -0.044035765104670013 15 
		-0.042410796655199187 16 -0.04089799873003333 17 -0.039554166141285201 18 
		-0.038374130616464962 19 -0.03735272388308282 20 -0.036484777668648931 21 
		-0.035765123700673508 22 -0.035188593706666722 23 -0.034750019414138765 24 
		-0.034444232550599821 25 -0.034266064843560068 26 -0.034210348020529711 27 
		-0.034271913809018908 28 -0.034445593936537865 29 -0.034726220130596758 30 
		-0.035108624118705779 31 -0.035591307728753151 32 -0.036170407591579891 33 
		-0.036837203561070571 34 -0.037582975491109817 35 -0.038399003235582214 36 
		-0.039276566648372369 37 -0.040206945583364871 38 -0.041181419894444321 39 
		-0.042191269435495331 40 -0.043227774060402478 41 -0.044282213623050376 42 
		-0.045345867977323623 43 -0.046410016977106824 44 -0.047465940476284559 45 
		-0.048504918328741438 46 -0.049554489360446451 47 -0.050637536524828379 48 
		-0.051738370128985814 49 -0.052841300480017374 50 -0.053930637885021636 51 
		-0.054990692651097225 52 -0.05600577508534272 53 -0.05696019549485673 54 
		-0.057838264186737869 55 -0.058624291468084719 56 -0.059302587645995886 57 
		-0.059857463027569953 58 -0.06027322791990556 59 -0.060534192630101284 60 
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
	setAttr -s 61 ".ktv[0:60]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 
		0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0;
createNode animCurveTA -n "animCurveTA129";
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
	setAttr ".ktv[0]"  60 0;
createNode animCurveTU -n "animCurveTU10";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTU -n "animCurveTU11";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTU -n "animCurveTU12";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTU -n "animCurveTU13";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTU -n "animCurveTU14";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTU -n "animCurveTU15";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 1;
createNode animCurveTU -n "animCurveTU16";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 1;
createNode animCurveTA -n "animCurveTA130";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA131";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA132";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTL -n "animCurveTL47";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTL -n "animCurveTL48";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTL -n "animCurveTL49";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTL -n "animCurveTL50";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.17655026201706334 20 -0.17655026201706334 
		30 -0.17655026201706334 40 -0.17655026201706334 60 -0.17655026201706334;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "animCurveTL51";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.10676264329452093 20 0.10676264329452093 
		30 0.10676264329452093 40 0.10676264329452093 60 0.10676264329452093;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "animCurveTL52";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.073147264740539078 20 -0.073147264740539078 
		30 -0.073147264740539078 40 -0.073147264740539078 60 -0.073147264740539078;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 20 0 30 0 40 0 60 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -25.948901905116401 20 -25.948901905116401 
		30 -25.948901905116401 40 -25.948901905116401 60 -25.948901905116401;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 20 0 30 0 40 0 60 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL53";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.072059567379697237 20 0.072059567379697237 
		30 0.072059567379697237 40 0.072059567379697237 60 0.072059567379697237;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "animCurveTL54";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.10860528941614173 20 0.10860528941614173 
		30 0.10860528941614173 40 0.10860528941614173 60 0.10860528941614173;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "animCurveTL55";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.00088390886240813306 20 0.00088390886240813306 
		30 0.00088390886240813306 40 0.00088390886240813306 60 0.00088390886240813306;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 20 0 30 0 40 0 60 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA137";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 20 0 30 0 40 0 60 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 20 0 30 0 40 0 60 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA139";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA140";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA141";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA142";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA143";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA144";
	setAttr ".tan" 3;
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
	setAttr -s 5 ".ktv[0:4]"  0 0 20 0 30 0 40 0 60 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 1 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL57";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 20 0 30 0 40 0 60 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 1 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL58";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.1269999742507935 20 1.1269999742507935 
		30 1.1269999742507935 40 1.1269999742507935 60 1.1269999742507935;
	setAttr -s 5 ".kit[0:4]"  3 9 9 1 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 20 0 30 0 40 0 60 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 1 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL60";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 20 0 30 0 40 0 60 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 1 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.1269999742507935 20 1.1269999742507935 
		30 1.1269999742507935 40 1.1269999742507935 60 1.1269999742507935;
	setAttr -s 5 ".kit[0:4]"  3 9 9 1 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL62";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.073888416931195494 15 -0.051689629925630975 
		20 -0.044467088674227863 30 -0.044467088674227863 40 -0.044467088674227863 
		45 -0.05911705215936422 60 -0.073888416931195494;
	setAttr -s 7 ".kit[0:6]"  3 1 9 9 9 1 3;
	setAttr -s 7 ".kot[0:6]"  3 1 9 9 9 1 3;
	setAttr -s 7 ".kix[1:6]"  0.16859342157840729 0.56919294595718384 
		1 0.32300347089767456 0.25719752907752991 1;
	setAttr -s 7 ".kiy[1:6]"  0.98568570613861084 0.82220399379730225 
		0 -0.94639778137207031 -0.96635884046554565 0;
	setAttr -s 7 ".kox[1:6]"  0.16859349608421326 0.56919294595718384 
		1 0.32300347089767456 0.25719642639160156 1;
	setAttr -s 7 ".koy[1:6]"  0.98568564653396606 0.82220399379730225 
		0 -0.94639778137207031 -0.96635913848876953 0;
createNode animCurveTL -n "animCurveTL63";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.9885925041129735 15 0.99588836161744287 
		20 0.99413642969513005 30 0.99413642969513005 40 0.99413642969513005 45 0.99537093524245979 
		60 0.9885925041129735;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL64";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 15 0 20 0 30 0 40 0 45 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.62843630316474508 15 -0.65014527504287623 
		20 10.258797054162619 30 -8.120318136608125 40 -3.6209470513749422 45 -0.6419282029118657 
		60 -0.62843630316474508;
	setAttr -s 7 ".kit[0:6]"  3 1 9 9 9 1 3;
	setAttr -s 7 ".kot[0:6]"  3 1 9 9 9 1 3;
	setAttr -s 7 ".kix[1:6]"  0.99999970197677612 0.96764355897903442 
		0.93987351655960083 0.9675757884979248 0.9999995231628418 1;
	setAttr -s 7 ".kiy[1:6]"  -0.00080412602983415127 -0.25232100486755371 
		-0.34152266383171082 0.25258088111877441 0.00095835921820253134 0;
	setAttr -s 7 ".kox[1:6]"  0.99999970197677612 0.96764355897903442 
		0.93987351655960083 0.9675757884979248 0.9999995231628418 1;
	setAttr -s 7 ".koy[1:6]"  -0.00080412550596520305 -0.25232100486755371 
		-0.34152266383171082 0.25258088111877441 0.00095835939282551408 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -5.8284402688137158 15 -1.8191924631776812 
		20 -0.32144794035683538 30 -6.3619668447630815 40 -6.7355300060638221 45 
		-4.7588526339487593 60 -5.8284402688137158;
	setAttr -s 7 ".kit[0:6]"  3 1 9 9 9 1 3;
	setAttr -s 7 ".kot[0:6]"  3 1 9 9 9 1 3;
	setAttr -s 7 ".kix[1:6]"  0.98883962631225586 0.98765957355499268 
		0.98619270324707031 0.99843794107437134 0.99638795852661133 1;
	setAttr -s 7 ".kiy[1:6]"  0.14898401498794556 -0.15661589801311493 
		-0.16560174524784088 0.055871833115816116 -0.084918089210987091 0;
	setAttr -s 7 ".kox[1:6]"  0.98883962631225586 0.98765957355499268 
		0.98619270324707031 0.99843794107437134 0.99638795852661133 1;
	setAttr -s 7 ".koy[1:6]"  0.14898405969142914 -0.15661589801311493 
		-0.16560174524784088 0.055871833115816116 -0.084918089210987091 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.2956360193097458 15 -0.90547523873851721 
		20 -4.5016675799851011 30 1.3446798408238458 40 -1.3415094640722129 45 -1.1193696019407173 
		60 -1.2956360193097458;
	setAttr -s 7 ".kit[0:6]"  3 1 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 1 9 9 9 9 3;
	setAttr -s 7 ".kix[1:6]"  0.9998512864112854 0.99692952632904053 
		0.99659514427185059 0.99632138013839722 0.9999992847442627 1;
	setAttr -s 7 ".kiy[1:6]"  0.017244532704353333 0.07830405980348587 
		0.082451045513153076 -0.085695147514343262 0.0012009631609544158 0;
	setAttr -s 7 ".kox[1:6]"  0.9998512864112854 0.99692952632904053 
		0.99659514427185059 0.99632138013839722 0.9999992847442627 1;
	setAttr -s 7 ".koy[1:6]"  0.017244530841708183 0.07830405980348587 
		0.082451045513153076 -0.085695147514343262 0.0012009631609544158 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA154";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA155";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA156";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA157";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA158";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA159";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA160";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA161";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA162";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA163";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA164";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA165";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA166";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA167";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA168";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA169";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA170";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA171";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA172";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA173";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA174";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA175";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA176";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA177";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA178";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA179";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTL -n "animCurveTL65";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 -0.43524234076486068;
createNode animCurveTL -n "animCurveTL66";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL67";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0.27773886459742925;
createNode animCurveTA -n "animCurveTA180";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 -1.8121934161072303e-015;
createNode animCurveTA -n "animCurveTA181";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 28.652637602052774;
createNode animCurveTA -n "animCurveTA182";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 64.676908227303443;
createNode animCurveTL -n "animCurveTL68";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0.5198069948790518;
createNode animCurveTL -n "animCurveTL69";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL70";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0.36439499068905612;
createNode animCurveTA -n "animCurveTA183";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 7.7976222737965299;
createNode animCurveTA -n "animCurveTA184";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 -30.409274105849079;
createNode animCurveTA -n "animCurveTA185";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 -64.859940280210878;
createNode animCurveTL -n "animCurveTL71";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.65311611999272123 10 -0.65662754751867913 
		20 -0.14528245874408532 25 -0.57749808779734757 30 -0.60435218635580112 40 
		-0.5893287675866562 45 -0.79183159644053291 50 -0.68460300165565113 60 -0.65311611999272123;
	setAttr -s 9 ".kit[0:8]"  3 9 1 1 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 1 1 9 9 9 
		9 3;
	setAttr -s 9 ".kix[2:8]"  0.010912937112152576 0.023508200421929359 
		0.38929077982902527 0.026660114526748657 0.034965332597494125 0.036021612584590912 
		1;
	setAttr -s 9 ".kiy[2:8]"  -0.99994045495986938 -0.99972367286682129 
		-0.92111492156982422 -0.99964457750320435 -0.99938851594924927 0.99935102462768555 
		0;
	setAttr -s 9 ".kox[2:8]"  0.010913250967860222 0.023508142679929733 
		0.38929077982902527 0.026660114526748657 0.034965332597494125 0.036021612584590912 
		1;
	setAttr -s 9 ".koy[2:8]"  -0.99994045495986938 -0.99972367286682129 
		-0.92111492156982422 -0.99964457750320435 -0.99938851594924927 0.99935102462768555 
		0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL72";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.2462096125327005 10 2.407673273490841 
		20 3.5710423183248357 25 4.0537557266531499 30 3.8988312443514155 40 4.0332140749293748 
		45 2.7950584343774323 50 2.3211686319953317 60 2.2462096125327005;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 1 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 1 9 
		9 3;
	setAttr -s 9 ".kix[5:8]"  0.017650548368692398 0.0019469850230962038 
		0.0091095985844731331 1;
	setAttr -s 9 ".kiy[5:8]"  -0.99984419345855713 -0.99999809265136719 
		-0.99995851516723633 0;
	setAttr -s 9 ".kox[5:8]"  0.017650552093982697 0.0019469850230962038 
		0.0091095985844731331 1;
	setAttr -s 9 ".koy[5:8]"  -0.99984419345855713 -0.99999809265136719 
		-0.99995851516723633 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL73";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.097994651149805143 10 -0.04892299029572196 
		20 0.87097149255587503 25 0.25268749517275901 30 -0.55526396835258285 40 
		-0.36272289361390675 45 0.28606704476800243 50 -0.12802712880231534 60 -0.097994651149805143;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA186";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 5.4739599453216474 10 -13.776239661099837 
		20 -209.77037401606563 25 -200.93937323327617 30 -170.83664440249441 40 -163.26768271189673 
		45 -129.71447982828698 50 -38.698458022570414 60 5.4739599453216474;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA187";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 8.5874521608419823 10 69.134470458435018 
		20 39.05191989333364 25 25.305133077430693 30 -29.362374407762207 40 -8.4773297202704274 
		45 69.063014373374514 50 -4.3635485498475335 60 8.5874521608419823;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 74.754744621954103 10 61.826943025412369 
		20 -90.459097572894805 25 -92.874737171495823 30 -71.704490404565021 40 -75.167208962931269 
		45 -43.794860311160861 50 67.335398414620315 60 74.754744621954103;
	setAttr -s 9 ".kit[0:8]"  3 9 1 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 1 9 9 9 9 
		9 3;
	setAttr -s 9 ".kix[2:8]"  0.32568958401679993 0.71350306272506714 
		0.85062211751937866 0.71627581119537354 0.13283507525920868 0.23489207029342651 
		1;
	setAttr -s 9 ".kiy[2:8]"  -0.94547677040100098 0.70065212249755859 
		0.52577751874923706 0.69781726598739624 0.99113816022872925 0.97202146053314209 
		0;
	setAttr -s 9 ".kox[2:8]"  0.32568970322608948 0.71350306272506714 
		0.85062211751937866 0.71627581119537354 0.13283507525920868 0.23489207029342651 
		1;
	setAttr -s 9 ".koy[2:8]"  -0.9454767107963562 0.70065212249755859 
		0.52577751874923706 0.69781726598739624 0.99113816022872925 0.97202146053314209 
		0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL74";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.31432036959158904 10 0.32432248023794841 
		20 0.21326437997251571 30 0.32857991113228602 50 0.28174851446774618 55 0.30050609066573214 
		60 0.31432036959158904;
	setAttr -s 7 ".kit[0:6]"  3 1 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 1 9 9 9 9 3;
	setAttr -s 7 ".kix[1:6]"  0.07982383668422699 0.84280109405517578 
		0.14448699355125427 0.2845643162727356 0.10180611908435822 1;
	setAttr -s 7 ".kiy[1:6]"  -0.99680900573730469 0.53822511434555054 
		0.98950672149658203 -0.95865696668624878 0.9948042631149292 0;
	setAttr -s 7 ".kox[1:6]"  0.079824849963188171 0.84280109405517578 
		0.14448699355125427 0.2845643162727356 0.10180611908435822 1;
	setAttr -s 7 ".koy[1:6]"  -0.99680888652801514 0.53822511434555054 
		0.98950672149658203 -0.95865696668624878 0.9948042631149292 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL75";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.2297686973003263 10 2.2976526759204865 
		20 2.5759132645851319 30 2.4113310236624219 50 2.5141248432784558 55 2.2980315462170764 
		60 2.2297686973003263;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL76";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.016524074637843583 10 -0.0096819663101740099 
		20 -0.40369606613679004 30 -0.25325628467799122 50 -0.23881826811708004 55 
		-0.047312248620329886 60 0.016524074637843583;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 16.226511010665405 10 16.226511010665405 
		20 -4.5224331837312715 30 41.227972159720615 50 37.447445568561044 55 19.963863314107378 
		60 16.226511010665405;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA190";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -8.513966085499284 10 -8.513966085499284 
		20 -61.425654999234624 30 -76.687903812014866 50 -61.311834222612191 55 -26.971498273202126 
		60 -8.513966085499284;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA191";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -68.213989601412422 10 -68.213989601412422 
		20 -67.791158805895634 30 -111.8441715264663 50 -108.74893961587223 55 -82.614683134053394 
		60 -68.213989601412422;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 1 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 1 3;
	setAttr -s 7 ".kix[5:6]"  0.32404160499572754 1;
	setAttr -s 7 ".kiy[5:6]"  0.94604283571243286 0;
	setAttr -s 7 ".kox[5:6]"  0.32404160499572754 1;
	setAttr -s 7 ".koy[5:6]"  0.94604283571243286 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL77";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 20 0.52662609491725443 30 0.67589373279719711 
		40 0.42903659902437818 60 0;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL78";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 20 0.063529099222474447 30 
		-0.011307552192487214 40 -0.037003565884128939 60 0;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL79";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1 20 -0.92929882084678872 30 
		-0.82524113787677267 40 -0.9758219847111973 60 -1;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL80";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.10167917362943303 10 -0.29350369366663565 
		20 -1.1557741781153579 30 -1.3597192567406069 40 -1.259494163722674 50 -0.38846441178090951 
		60 -0.10167917362943303;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTL -n "animCurveTL81";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.40762644910266188 10 -0.60120828942953641 
		20 -1.824791368385664 30 -1.7074518376605254 40 -0.80369529795034667 50 -0.83820838895213046 
		60 -0.40762644910266188;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTL -n "animCurveTL82";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.93129112588482243 10 -1.6054573450028884 
		20 -0.23511104419499329 30 -0.28685836292614647 40 -0.15222403969532472 50 
		-1.7431175502337406 60 -0.93129112588482243;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTA -n "animCurveTA192";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 12.253734489678925 15 2.5080130201733613 
		20 2.9114950928527259 30 2.9114950928527259 35 8.9711994505746979 40 2.9114950928527259 
		50 10.401250555162825 60 12.253734489678925;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 1 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 1 9 9 
		3;
	setAttr -s 8 ".kix[4:7]"  0.98217999935150146 0.99875640869140625 
		0.97136878967285156 1;
	setAttr -s 8 ".kiy[4:7]"  0.18794278800487518 0.049856122583150864 
		0.23757666349411011 0;
	setAttr -s 8 ".kox[4:7]"  0.98217999935150146 0.99875640869140625 
		0.97136878967285156 1;
	setAttr -s 8 ".koy[4:7]"  0.18794280290603638 0.049856122583150864 
		0.23757666349411011 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA193";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -65.746751280844961 15 -66.23189068800383 
		20 -66.21774140995872 30 -66.21774140995872 35 -65.911934826160262 40 -66.21774140995872 
		50 -65.84015989840124 60 -65.746751280844961;
	setAttr -s 8 ".kit[0:7]"  3 1 9 9 1 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 1 9 9 1 9 9 
		3;
	setAttr -s 8 ".kix[1:7]"  0.99999308586120605 0.99999988079071045 
		0.99994301795959473 0.99996083974838257 0.9999968409538269 0.99992400407791138 
		1;
	setAttr -s 8 ".kiy[1:7]"  -0.0037223771214485168 0.00049390294589102268 
		0.01067405566573143 0.0088514136150479317 0.0025054097641259432 0.012329556047916412 
		0;
	setAttr -s 8 ".kox[1:7]"  0.99999308586120605 0.99999988079071045 
		0.99994301795959473 0.99996083974838257 0.9999968409538269 0.99992400407791138 
		1;
	setAttr -s 8 ".koy[1:7]"  -0.0037223771214485168 0.00049390294589102268 
		0.01067405566573143 0.0088514126837253571 0.0025054097641259432 0.012329556047916412 
		0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA194";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 3.871449260799477e-015 15 10.66049297399303 
		20 9.858651562479924 30 9.858651562479924 35 2.7123737418397913 40 9.858651562479924 
		50 1.9927650968646102 60 3.871449260799477e-015;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA195";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.061808866237337522 15 -1.8696893211112606 
		20 -3.4468764951941306 30 -3.4468764951941306 40 -3.4468764951941306 50 -0.65081063525734661 
		60 -0.061808866237337522;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA196";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -59.058178941076754 15 -58.016233844005519 
		20 -57.738024894266985 30 -57.738024894266985 40 -57.738024894266985 50 -58.828472137136643 
		60 -59.058178941076754;
	setAttr -s 7 ".kit[0:6]"  3 1 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 1 9 9 9 9 3;
	setAttr -s 7 ".kix[1:6]"  0.9993630051612854 0.99995285272598267 
		1 0.99959278106689453 0.99940329790115356 1;
	setAttr -s 7 ".kiy[1:6]"  0.035688102245330811 0.0097108660265803337 
		0 -0.028536215424537659 -0.034540928900241852 0;
	setAttr -s 7 ".kox[1:6]"  0.9993630051612854 0.99995285272598267 
		1 0.99959278106689453 0.99940329790115356 1;
	setAttr -s 7 ".koy[1:6]"  0.035688098520040512 0.0097108660265803337 
		0 -0.028536215424537659 -0.034540928900241852 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA197";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 16.579147429757843 15 19.186045316761614 
		20 21.169985634159037 30 21.169985634159037 40 21.169985634159037 50 17.37795328241749 
		60 16.579147429757843;
	setAttr -s 7 ".kit[0:6]"  3 1 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 1 9 9 9 9 3;
	setAttr -s 7 ".kix[1:6]"  0.98076349496841431 0.99761062860488892 
		1 0.99510836601257324 0.9928547739982605 1;
	setAttr -s 7 ".kiy[1:6]"  0.19519966840744019 0.069087110459804535 
		0 -0.098789557814598083 -0.11932909488677979 0;
	setAttr -s 7 ".kox[1:6]"  0.98076349496841431 0.99761062860488892 
		1 0.99510836601257324 0.9928547739982605 1;
	setAttr -s 7 ".koy[1:6]"  0.19519966840744019 0.069087110459804535 
		0 -0.098789557814598083 -0.11932909488677979 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA198";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 8.5572674112203622 15 11.258794193049559 
		20 13.716098065712346 30 13.716098065712346 35 20.489010807363705 40 13.716098065712346 
		50 9.0702149461333974 60 8.5572674112203622;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA199";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 15.711328223519057 10 15.711328223519057 
		20 15.711328223519057 30 15.711328223519057 40 15.711328223519057 50 15.711328223519057 
		60 15.711328223519057;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 15 15.821664458316235 20 17.131600228275268 
		30 17.131600228275268 40 17.131600228275268 50 2.9808984217524079 60 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 15 0 20 -1.0219181869565825 
		30 -1.0219181869565825 40 -1.0219181869565825 50 -0.17781376655935305 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 15 0 20 -0.26444832786408168 
		30 -0.26444832786408168 40 -0.26444832786408168 50 -0.046014009381140711 
		60 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 10.423754966968488 10 10.423754966968488 
		20 10.423754966968488 30 10.423754966968488 40 10.423754966968488 50 10.423754966968488 
		60 10.423754966968488;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.722848255843903 10 27.722848255843903 
		20 27.722848255843903 30 27.722848255843903 40 27.722848255843903 50 27.722848255843903 
		60 27.722848255843903;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 21.576484776388227 10 21.576484776388227 
		20 21.576484776388227 30 21.576484776388227 40 21.576484776388227 50 21.576484776388227 
		60 21.576484776388227;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.080064458283051 10 27.080064458283051 
		20 27.080064458283051 30 27.080064458283051 40 27.080064458283051 50 27.080064458283051 
		60 27.080064458283051;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA212";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA213";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA214";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA215";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA216";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA217";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 13.994403295754109;
createNode animCurveTA -n "animCurveTA218";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA219";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA220";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 13.994403295754109;
createNode animCurveTA -n "animCurveTA221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 20 0 30 0 40 0 50 0 60 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 20 0 30 0 40 0 50 0 60 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.911632519594587 20 -0.67634283285596541 
		30 -0.67634283285596541 40 -0.67634283285596541 50 22.937324777324758 60 
		27.911632519594587;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA227";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.65073001024951671 10 -0.56759285525053427 
		20 11.637243750984245 30 0.11296410092356517 40 -2.9110457594865404 50 -1.2797040748235962 
		60 -0.65073001024951671;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -4.2368721935960929 10 -4.2828905650316926 
		20 -10.145176241125554 30 1.3875328067586736 40 -1.1449764491248451 50 -4.3252087291078434 
		60 -4.2368721935960929;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA229";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 9.4592235793901747 10 5.8182944375302021 
		20 19.080577777332245 30 0.9995941656051377 40 12.503783337665949 50 17.851029473187694 
		60 9.4592235793901747;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA230";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 20 0 30 0 40 0 50 0 60 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 20 0 30 0 40 0 50 0 60 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA232";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 20 0 30 0 40 0 50 0 60 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA233";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 3.7040334665099741 20 -11.832700655156087 
		30 11.569916206358936 40 10.006856270789953 50 2.6704636579134027 60 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA234";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 6.1370725533817057 20 -13.378007693240837 
		30 12.608297332977109 40 3.9568974265648809 50 0.73511995144584896 60 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA235";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 13.828138835879258 10 18.035406261920802 
		20 30.407179341259543 30 1.0604698018084631 40 0.58162291526888832 50 20.969088277341005 
		60 13.828138835879258;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 1 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 1 3;
	setAttr -s 7 ".kix[5:6]"  0.98339909315109253 1;
	setAttr -s 7 ".kiy[5:6]"  -0.1814558357000351 0;
	setAttr -s 7 ".kox[5:6]"  0.98339909315109253 1;
	setAttr -s 7 ".koy[5:6]"  -0.18145580589771271 0;
createNode animCurveTA -n "animCurveTA236";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.8905779124872244 10 -1.8748286642201073 
		20 -1.8973016001313301 30 -1.8973016001313301 40 -1.8973016001313301 50 -1.8798882941097192 
		60 -1.8905779124872244;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA237";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.5602510346124587 10 2.6325101139688041 
		20 2.5252301451771402 30 2.5252301451771402 40 2.5252301451771402 50 2.609596422024024 
		60 2.5602510346124587;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA238";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -12.605441061780661 10 -11.810854645066819 
		20 -13.051658914888886 30 -13.051658914888886 40 -13.051658914888886 50 -12.058421378086718 
		60 -12.605441061780661;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA239";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA240";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA241";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 33.429092416277157 10 33.429092416277157 
		20 33.429092416277157 30 33.429092416277157 40 33.429092416277157 50 33.429092416277157 
		60 33.429092416277157;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA242";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.2533422302317216 10 8.2533422302317216 
		20 8.2533422302317216 30 8.2533422302317216 40 8.2533422302317216 50 8.2533422302317216 
		60 8.2533422302317216;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA243";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 23.263402056531085 10 23.263402056531085 
		20 23.263402056531085 30 23.263402056531085 40 23.263402056531085 50 23.263402056531085 
		60 23.263402056531085;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA244";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 20.166277752815617 10 20.166277752815617 
		20 20.166277752815617 30 20.166277752815617 40 20.166277752815617 50 20.166277752815617 
		60 20.166277752815617;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA245";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA246";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA247";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 17.254116939558369 10 17.254116939558369 
		20 17.254116939558369 30 17.254116939558369 40 17.254116939558369 50 17.254116939558369 
		60 17.254116939558369;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA248";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 10 -1.2584685285773469 20 -1.1678587954011119 
		25 -1.1720901387172622 30 -1.0204145615069387 35 -0.85217022253421648 45 
		-0.51156489153164364 60 0;
createNode animCurveTA -n "animCurveTA249";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 10 0.91232759247340256 20 0.84664000606880618 
		25 0.51733870912106572 30 0.41997846902365282 35 0.34726739247929811 45 0.20796952223304804 
		60 0;
createNode animCurveTA -n "animCurveTA250";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 10 -0.75267653778590682 20 
		-5.3176541970866182 25 -17.228211169221108 30 12.645345588903036 35 24.176909257597668 
		45 -12.352494807176049 60 0;
createNode animCurveTA -n "animCurveTA251";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 10 -1.2584685285773469 20 -1.3545533084179744 
		25 -1.2787161152401956 30 -1.1058539037873349 35 -0.92268052036061576 45 
		-0.55377183053217016 60 0;
createNode animCurveTA -n "animCurveTA252";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 10 0.91232759247340256 20 0.49580775338569427 
		25 0.13756550480114424 30 0.086818288245563369 35 0.06874961502226809 45 
		0.040731518707193416 60 0;
createNode animCurveTA -n "animCurveTA253";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 10 -0.75267653778590682 20 
		-21.152663693368154 25 -32.990497133986004 30 -1.0653004162533013 35 12.72820945666208 
		45 -19.225049831535191 60 0;
createNode animCurveTA -n "animCurveTA254";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 10 -1.2584685285773469 20 -1.2959245806617459 
		25 -1.2384926004804118 30 -1.0725391608564754 35 -0.89505278595946103 45 
		-0.53721456703438908 60 0;
createNode animCurveTA -n "animCurveTA255";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 10 0.91232759247340256 20 0.63343673703227965 
		25 0.33540899950393832 30 0.26452394398644308 35 0.21777811497470095 45 0.13028404559193776 
		60 0;
createNode animCurveTA -n "animCurveTA256";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 10 -0.75267653778590682 20 
		-15.208481724614085 25 -24.686999012772443 30 6.3775937057022496 35 18.96830746900018 
		45 -15.475564298081256 60 0;
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
	setAttr ".o" 18;
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
connectAttr "mrg_idle_fix_hairSource.st" "clipLibrary1.st[0]";
connectAttr "mrg_idle_fix_hairSource.du" "clipLibrary1.du[0]";
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
// End of mrg_idle_fix_hair.ma
