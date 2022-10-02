//Maya ASCII 4.0 scene
//Name: mrg_victory_large.ma
//Last modified: Tue, Feb 25, 2003 11:53:33 AM
requires maya "4.0";
requires "p3dmayaexp" "2.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mrg_victory_largeSource";
	setAttr ".ihi" 0;
	setAttr ".du" 65;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL329";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL330";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL331";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.079815982092630827 65 -0.079815982092630827;
createNode animCurveTL -n "animCurveTL332";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 65 0;
createNode animCurveTL -n "animCurveTL333";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 65 0;
createNode animCurveTA -n "animCurveTA920";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 65 0;
createNode animCurveTU -n "animCurveTU61";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU62";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU63";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU64";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU65";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 1 58 1 65 0;
createNode animCurveTU -n "animCurveTU66";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 1 58 1 65 0;
createNode animCurveTU -n "animCurveTU67";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU68";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA921";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA922";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA923";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL334";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL335";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL336";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL337";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.17655026201706334 14 -0.17655026201706334 
		18 -0.48715172820327246 22 -0.17655026201706334 30 -0.17655026201706334 34 
		-0.43794158285129775 38 -0.17655026201706334 46 -0.17655026201706334 50 -0.46478348031601135 
		54 -0.17655026201706334 65 -0.17655026201706334;
	setAttr -s 11 ".kit[0:10]"  1 3 9 3 3 9 3 
		3 9 3 9;
	setAttr -s 11 ".kot[0:10]"  9 3 9 3 3 9 3 
		3 9 3 9;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL338";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.10676264329452093 14 0.10676264329452093 
		18 1.0080858632610761 22 0.10676264329452093 30 0.10676264329452093 34 1.0080858632610761 
		38 0.10676264329452093 46 0.10676264329452093 50 1.0793179407083802 54 0.10676264329452093 
		65 0.10676264329452093;
	setAttr -s 11 ".kit[2:10]"  9 3 3 9 3 3 9 
		3 9;
	setAttr -s 11 ".kot[2:10]"  9 3 3 9 3 3 9 
		3 9;
createNode animCurveTL -n "animCurveTL339";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.073147264740539078 14 -0.073147264740539078 
		18 -0.029524128441173532 22 -0.073147264740539078 30 -0.073147264740539078 
		34 -0.032901793149898169 38 -0.073147264740539078 46 -0.073147264740539078 
		50 -0.032901793149898169 54 -0.073147264740539078 65 -0.073147264740539078;
	setAttr -s 11 ".kit[0:10]"  1 3 9 3 3 9 3 
		3 9 3 9;
	setAttr -s 11 ".kot[0:10]"  9 3 9 3 3 9 3 
		3 9 3 9;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA924";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 14 0 18 113.04469760764437 
		22 0 30 0 34 112.6928987561683 38 0 46 0 50 123.59866315192653 54 0 65 0;
	setAttr -s 11 ".kit[2:10]"  9 3 3 9 3 3 9 
		3 9;
	setAttr -s 11 ".kot[2:10]"  9 3 3 9 3 3 9 
		3 9;
createNode animCurveTA -n "animCurveTA925";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -25.948901905116401 14 -25.948901905116401 
		18 21.337277950488847 22 -25.948901905116401 30 -25.948901905116401 34 17.126242266410344 
		38 -25.948901905116401 46 -25.948901905116401 50 22.677152940877473 54 -25.948901905116401 
		65 -25.948901905116401;
	setAttr -s 11 ".kit[0:10]"  1 3 9 3 3 9 3 
		3 9 3 9;
	setAttr -s 11 ".kot[0:10]"  9 3 9 3 3 9 3 
		3 9 3 9;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA926";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 14 0 18 7.0847245472366209 
		22 0 30 0 34 6.6462789220147078 38 0 46 0 50 7.3143865414004798 54 0 65 0;
	setAttr -s 11 ".kit[0:10]"  1 3 9 3 3 9 3 
		3 9 3 9;
	setAttr -s 11 ".kot[0:10]"  9 3 9 3 3 9 3 
		3 9 3 9;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL340";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.072059567379697237 14 0.072059567379697237 
		18 0.2643754810913494 22 0.072059567379697237 30 0.072059567379697237 34 
		0.27592659498130118 38 0.072059567379697237 46 0.072059567379697237 50 0.26741524790449461 
		54 0.072059567379697237 65 0.072059567379697237;
	setAttr -s 11 ".kit[10]"  9;
	setAttr -s 11 ".kot[10]"  9;
createNode animCurveTL -n "animCurveTL341";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.10860528941614173 14 0.10860528941614173 
		18 1.1018154062958083 22 0.10860528941614173 30 0.10860528941614173 34 1.0354785524782424 
		38 0.10860528941614173 46 0.10860528941614173 50 0.98296187653933598 54 0.10860528941614173 
		65 0.10860528941614173;
	setAttr -s 11 ".kit[10]"  9;
	setAttr -s 11 ".kot[10]"  9;
createNode animCurveTL -n "animCurveTL342";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.00088390886240813306 14 0.00088390886240813306 
		18 -0.054248216355459122 22 0.00088390886240813306 30 0.00088390886240813306 
		34 -0.057625881064183732 38 0.00088390886240813306 46 0.00088390886240813306 
		50 -0.057625881064183732 54 0.00088390886240813306 65 0.00088390886240813306;
	setAttr -s 11 ".kit[10]"  9;
	setAttr -s 11 ".kot[10]"  9;
createNode animCurveTA -n "animCurveTA927";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 14 0 18 84.038609011799196 
		22 0 30 0 34 86.621762977325787 38 0 46 0 50 79.647247270403923 54 0 65 0;
	setAttr -s 11 ".kit[2:10]"  9 3 3 9 3 3 9 
		3 9;
	setAttr -s 11 ".kot[2:10]"  9 3 3 9 3 3 9 
		3 9;
createNode animCurveTA -n "animCurveTA928";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 14 0 18 -35.635821609294268 
		22 0 30 0 34 -36.995001794507999 38 0 46 0 50 -39.342676659877164 54 0 65 
		0;
	setAttr -s 11 ".kit[2:10]"  9 3 3 9 3 3 9 
		3 9;
	setAttr -s 11 ".kot[2:10]"  9 3 3 9 3 3 9 
		3 9;
createNode animCurveTA -n "animCurveTA929";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 14 0 18 1.9918756903862782 
		22 0 30 0 34 1.8948096668953736 38 0 46 0 50 2.1071415932817286 54 0 65 0;
	setAttr -s 11 ".kit[10]"  9;
	setAttr -s 11 ".kot[10]"  9;
createNode animCurveTA -n "animCurveTA930";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA931";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA932";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA933";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA934";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA935";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA936";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA937";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA938";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA939";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA940";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA941";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL343";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0.32171130294242517 
		26 0 34 0.32171130294242517 42 0 50 0.32171130294242517 58 0.16085565147121261 
		65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.018647018820047379 1 1 1 1 
		0.033137809485197067 0.015540007501840591 0.014504238963127136;
	setAttr -s 9 ".kiy[0:8]"  0 0.99982613325119019 0 0 0 0 0.99945080280303955 
		-0.99987924098968506 -0.99989479780197144;
createNode animCurveTL -n "animCurveTL344";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 1.3975949528796172 
		26 0 34 1.3975949528796172 42 0 50 1.3975949528796172 58 0.69879747643980883 
		65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.0042930496856570244 1 1 1 1 
		0.0076319370418787003 0.0035775515716522932 0.0033390524331480265;
	setAttr -s 9 ".kiy[0:8]"  0 0.99999076128005981 0 0 0 0 0.99997085332870483 
		-0.99999362230300903 -0.99999439716339111;
createNode animCurveTL -n "animCurveTL345";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.1269999742507935 10 1.1269999742507935 
		18 -0.10243141239864734 26 1.1269999742507935 34 -0.10243141239864734 42 
		1.1269999742507935 50 -0.10243141239864734 58 0.51228428092607292 65 1.1269999742507935;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.0048802467063069344 1 1 1 1 
		0.0086757708340883255 0.0040668873116374016 0.0037957669701427221;
	setAttr -s 9 ".kiy[0:8]"  0 -0.99998807907104492 0 0 0 0 
		-0.99996238946914673 0.99999171495437622 0.99999278783798218;
createNode animCurveTL -n "animCurveTL346";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL347";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 1.2667221298386915 
		26 0 34 1.2667221298386915 42 0 50 1.2667221298386915 58 0.63336106491934574 
		65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.0047365813516080379 1 1 1 1 
		0.0084203854203224182 0.0039471648633480072 0.0036840259563177824;
	setAttr -s 9 ".kiy[0:8]"  0 0.99998879432678223 0 0 0 0 0.99996453523635864 
		-0.99999219179153442 -0.99999320507049561;
createNode animCurveTL -n "animCurveTL348";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.1269999742507935 10 1.1269999742507935 
		18 0.5023599757005871 26 1.1269999742507935 34 0.5023599757005871 42 1.1269999742507935 
		50 0.5023599757005871 58 0.81467997497569034 65 1.1269999742507935;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.0096050901338458061 1 1 1 1 
		0.017074013128876686 0.0080043543130159378 0.0074707646854221821;
	setAttr -s 9 ".kiy[0:8]"  0 -0.99995386600494385 0 0 0 0 
		-0.99985420703887939 0.99996799230575562 0.99997210502624512;
createNode animCurveTL -n "animCurveTL349";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.097247464600251146 65 -0.097247464600251146;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL350";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.9825577053607899 10 0.77145870390261173 
		18 1.4144490485189383 26 0.73617229883002522 34 1.3873377443851542 42 0.70855501827687717 
		50 1.4603297170530336 58 0.77128640507258639 65 0.9825577053607899;
	setAttr -s 9 ".kit[0:8]"  3 3 9 9 9 9 9 
		3 9;
	setAttr -s 9 ".kot[0:8]"  3 3 9 9 9 9 9 
		3 9;
createNode animCurveTL -n "animCurveTL351";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0.00094462358404679564 18 
		0.083287900949310989 26 -0.0022041216961092044 34 0.080854859824633141 42 
		-0.0037784943361871895 50 0.086522601328913956 58 0.041372053496363366 65 
		0;
	setAttr -s 9 ".kit[0:8]"  3 1 9 9 9 9 3 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 1 9 9 9 9 3 
		9 9;
	setAttr -s 9 ".kix[1:8]"  0.46625807881355286 0.86112236976623535 
		0.90980023145675659 0.95908534526824951 0.68529576063156128 1 0.057692121714353561 
		0.056309323757886887;
	setAttr -s 9 ".kiy[1:8]"  0.88464874029159546 -0.50839775800704956 
		-0.41504648327827454 -0.28311708569526672 0.72826486825942993 0 -0.99833440780639648 
		-0.99841338396072388;
	setAttr -s 9 ".kox[1:8]"  0.46625792980194092 0.86112236976623535 
		0.90980023145675659 0.95908534526824951 0.68529576063156128 1 0.057692121714353561 
		0.056309323757886887;
	setAttr -s 9 ".koy[1:8]"  0.88464879989624023 -0.50839775800704956 
		-0.41504648327827454 -0.28311708569526672 0.72826486825942993 0 -0.99833440780639648 
		-0.99841338396072388;
createNode animCurveTA -n "animCurveTA942";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.62843630316474508 10 7.479651971644401 
		18 -0.22585702543350988 26 7.6891364105908773 34 0.21929740732775077 42 7.2439819778296171 
		50 0.50733851087915494 58 4.3693230083049448 65 -0.62843630316474508;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 3 9 3 
		9 9;
	setAttr -s 9 ".kot[4:8]"  3 9 3 9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.9999314546585083 0.9999765157699585 
		0.9998939037322998 1 0.99995559453964233 1 0.99921500682830811 0.93668860197067261;
	setAttr -s 9 ".kiy[0:8]"  0 0.011709753423929214 0.0068552009761333466 
		0.01456610020250082 0 0.0094257043674588203 0 -0.039614900946617126 -0.35016354918479919;
createNode animCurveTA -n "animCurveTA943";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -5.8284402688137167 10 -5.5874047805997042 
		18 -5.826391899663439 26 -5.592239119474538 34 -5.8102774367473282 42 -5.5922391194745389 
		50 -5.8247804533718268 58 -5.6801506355345559 65 -5.8284402688137167;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 0.99999988079071045 1 0.99999988079071045 
		0.9999958872795105 1 0.9999384880065918;
	setAttr -s 9 ".kiy[0:8]"  0 5.9584643167909235e-005 -0.00015820337284822017 
		0.0005273445276543498 0 -0.00047461004578508437 -0.0028768857009708881 -0.00012775165669154376 
		-0.011091351509094238;
createNode animCurveTA -n "animCurveTA944";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1.295636019309746 10 -2.1238566641839101 
		18 -0.63156255741377487 26 -2.1238566641839101 34 -0.63156255741377487 42 
		-2.1238566641839101 50 -0.63156255741377487 58 -1.4294734004354281 65 -1.295636019309746;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.9998134970664978 1 1 1 1 0.99974191188812256 
		0.99973142147064209 0.9999498724937439;
	setAttr -s 9 ".kiy[0:8]"  0 0.019313512369990349 0 0 0 0 
		0.022717773914337158 -0.023174311965703964 0.010010506957769394;
createNode animCurveTA -n "animCurveTA945";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA946";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA947";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA948";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA949";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA950";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA951";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA952";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA953";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA954";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA955";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA956";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA957";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA958";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA959";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA960";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA961";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA962";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA963";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA964";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA965";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA966";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA967";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA968";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA969";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA970";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL352";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.43524234076486068 10 -0.43524234076486068 
		18 -0.43524234076486068 26 -0.43524234076486068 34 -0.43524234076486068 42 
		-0.43524234076486068 50 -0.43524234076486068 58 -0.43524234076486068 65 -0.43524234076486068;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL353";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.82665738350180629 10 -0.82665738350180629 
		18 -0.82665738350180629 26 -0.82665738350180629 34 -0.82665738350180629 42 
		-0.82665738350180629 50 -0.82665738350180629 58 -0.82665738350180629 65 -0.82665738350180629;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL354";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.27773886459742925 10 0.27773886459742925 
		18 0.27773886459742925 26 0.27773886459742925 34 0.27773886459742925 42 0.27773886459742925 
		50 0.27773886459742925 58 0.27773886459742925 65 0.27773886459742925;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA971";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.8121934161072299e-015 10 1.8121934161072299e-015 
		18 1.8121934161072299e-015 26 1.8121934161072299e-015 34 1.8121934161072299e-015 
		42 1.8121934161072299e-015 50 1.8121934161072299e-015 58 1.8121934161072299e-015 
		65 1.8121934161072299e-015;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA972";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 28.652637602052774 10 28.652637602052774 
		18 28.652637602052774 26 28.652637602052774 34 28.652637602052774 42 28.652637602052774 
		50 28.652637602052774 58 28.652637602052774 65 28.652637602052774;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA973";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 64.676908227303443 10 64.676908227303443 
		18 64.676908227303443 26 64.676908227303443 34 64.676908227303443 42 64.676908227303443 
		50 64.676908227303443 58 64.676908227303443 65 64.676908227303443;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL355";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.5198069948790518 10 0.5198069948790518 
		18 0.5198069948790518 26 0.5198069948790518 34 0.5198069948790518 42 0.5198069948790518 
		50 0.5198069948790518 58 0.5198069948790518 65 0.5198069948790518;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL356";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.72394202659893114 10 -0.72394202659893114 
		18 -0.72394202659893114 26 -0.72394202659893114 34 -0.72394202659893114 42 
		-0.72394202659893114 50 -0.72394202659893114 58 -0.72394202659893114 65 -0.72394202659893114;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL357";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.36439499068905612 10 0.36439499068905612 
		18 0.36439499068905612 26 0.36439499068905612 34 0.36439499068905612 42 0.36439499068905612 
		50 0.36439499068905612 58 0.36439499068905612 65 0.36439499068905612;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA974";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 7.7976222737965317 10 7.7976222737965317 
		18 7.7976222737965317 26 7.7976222737965317 34 7.7976222737965317 42 7.7976222737965317 
		50 7.7976222737965317 58 7.7976222737965317 65 7.7976222737965317;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA975";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -30.409274105849079 10 -30.409274105849079 
		18 -30.409274105849079 26 -30.409274105849079 34 -30.409274105849079 42 -30.409274105849079 
		50 -30.409274105849079 58 -30.409274105849079 65 -30.409274105849079;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA976";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -64.859940280210893 10 -64.859940280210893 
		18 -64.859940280210893 26 -64.859940280210893 34 -64.859940280210893 42 -64.859940280210893 
		50 -64.859940280210893 58 -64.859940280210893 65 -64.859940280210893;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL358";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.65311611999272123 10 -0.65311611999272123 
		18 -0.65311611999272123 26 -0.65311611999272123 34 -0.65311611999272123 42 
		-0.65311611999272123 50 -0.65311611999272123 58 -0.65311611999272123 65 -0.65311611999272123;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL359";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.222264083594911 10 2.222264083594911 
		18 2.222264083594911 26 2.222264083594911 34 2.222264083594911 42 2.222264083594911 
		50 2.222264083594911 58 2.222264083594911 65 2.222264083594911;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL360";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.097994651149805143 10 -0.097994651149805143 
		18 -0.097994651149805143 26 -0.097994651149805143 34 -0.097994651149805143 
		42 -0.097994651149805143 50 -0.097994651149805143 58 -0.097994651149805143 
		65 -0.097994651149805143;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA977";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 5.4739599453216465 10 5.4739599453216465 
		18 5.4739599453216465 26 5.4739599453216465 34 5.4739599453216465 42 5.4739599453216465 
		50 5.4739599453216465 58 5.4739599453216465 65 5.4739599453216465;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA978";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 8.5874521608419823 10 8.5874521608419823 
		18 8.5874521608419823 26 8.5874521608419823 34 8.5874521608419823 42 8.5874521608419823 
		50 8.5874521608419823 58 8.5874521608419823 65 8.5874521608419823;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA979";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 74.754744621954103 10 74.754744621954103 
		18 74.754744621954103 26 74.754744621954103 34 74.754744621954103 42 74.754744621954103 
		50 74.754744621954103 58 74.754744621954103 65 74.754744621954103;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL361";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.25368378509166484 10 0.25368378509166484 
		18 0.25368378509166484 26 0.25368378509166484 34 0.25368378509166484 42 0.25368378509166484 
		50 0.25368378509166484 58 0.25368378509166484 65 0.25368378509166484;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL362";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.2026421011163611 10 2.2026421011163611 
		18 2.2026421011163611 26 2.2026421011163611 34 2.2026421011163611 42 2.2026421011163611 
		50 2.2026421011163611 58 2.2026421011163611 65 2.2026421011163611;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL363";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.0085295933619701936 10 0.0085295933619701936 
		18 0.0085295933619701936 26 0.0085295933619701936 34 0.0085295933619701936 
		42 0.0085295933619701936 50 0.0085295933619701936 58 0.0085295933619701936 
		65 0.0085295933619701936;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA980";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 16.226511010665412 10 16.226511010665412 
		18 16.226511010665412 26 16.226511010665412 34 16.226511010665412 42 16.226511010665412 
		50 16.226511010665412 58 16.226511010665412 65 16.226511010665412;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA981";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -8.5139660854992858 10 -8.5139660854992858 
		18 -8.5139660854992858 26 -8.5139660854992858 34 -8.5139660854992858 42 -8.5139660854992858 
		50 -8.5139660854992858 58 -8.5139660854992858 65 -8.5139660854992858;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA982";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -68.213989601412422 10 -68.213989601412422 
		18 -68.213989601412422 26 -68.213989601412422 34 -68.213989601412422 42 -68.213989601412422 
		50 -68.213989601412422 58 -68.213989601412422 65 -68.213989601412422;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL364";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.245189189189189 10 -0.245189189189189 
		18 -0.245189189189189 26 -0.245189189189189 34 -0.245189189189189 42 -0.245189189189189 
		50 -0.245189189189189 58 -0.245189189189189 65 -0.245189189189189;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL365";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL366";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1 10 -1 18 -1 26 -1 34 -1 42 
		-1 50 -1 58 -1 65 -1;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL367";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.062337280601809833 10 0.062337280601809833 
		18 0.062337280601809833 26 0.062337280601809833 34 0.062337280601809833 42 
		0.062337280601809833 50 0.062337280601809833 58 0.062337280601809833 65 0.062337280601809833;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL368";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.40762644910266188 10 -0.40762644910266188 
		18 -0.40762644910266188 26 -0.40762644910266188 34 -0.40762644910266188 42 
		-0.40762644910266188 50 -0.40762644910266188 58 -0.40762644910266188 65 -0.40762644910266188;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL369";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.93129112588482243 10 -0.93129112588482243 
		18 -0.93129112588482243 26 -0.93129112588482243 34 -0.93129112588482243 42 
		-0.93129112588482243 50 -0.93129112588482243 58 -0.93129112588482243 65 -0.93129112588482243;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA983";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 12.253734489678925 6 47.730025391393447 
		10 -88.445131756746022 13 -53.098356379206741 16 -72.536520577668099 19 -53.098356379206741 
		22 -86.876900923640449 25 -53.098356379206741 28 -78.881161124255641 31 -53.098356379206741 
		34 -104.1019310227455 37 -53.098356379206741 40 -91.377592985988841 43 -53.098356379206741 
		46 -81.957056781828527 50 -53.098356379206741 65 12.253734489678925;
	setAttr -s 17 ".kit[0:16]"  1 9 3 2 9 2 9 
		2 9 2 9 2 9 2 9 9 9;
	setAttr -s 17 ".kot[2:16]"  3 3 9 3 9 3 9 
		3 9 3 9 3 9 9 9;
	setAttr -s 17 ".ktl[3:16]" no yes no yes no yes no yes no yes 
		no yes yes yes;
	setAttr -s 17 ".kix[0:16]"  0 0.18633866310119629 1 0.16000770032405853 
		1 0.28273272514343262 1 0.16723303496837616 1 0.2169327586889267 1 0.11163464188575745 
		1 0.14802932739257813 1 0.35943123698234558 0.40148165822029114;
	setAttr -s 17 ".kiy[0:16]"  0 -0.98248559236526489 0 0.98711574077606201 
		0 0.9591987133026123 0 0.98591738939285278 0 0.97618657350540161 0 0.99374932050704956 
		0 0.98898297548294067 0 0.93317157030105591 0.91586709022521973;
createNode animCurveTA -n "animCurveTA984";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -65.746751280844975 6 -53.360049255995825 
		10 -60.788730224097939 50 -60.788730224097925 65 -65.746751280844975;
	setAttr -s 5 ".kit[1:4]"  9 1 1 9;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.96791642904281616 0.99992048740386963 
		0.99998456239700317 0.9853520393371582;
	setAttr -s 5 ".kiy[0:4]"  0 0.25127243995666504 -0.012609143741428852 
		-0.0055563980713486671 -0.1705324649810791;
	setAttr -s 5 ".kox[2:4]"  0.99992048740386963 0.99998456239700317 
		0.9853520393371582;
	setAttr -s 5 ".koy[2:4]"  -0.012609140947461128 -0.0055563971400260925 
		-0.1705324649810791;
createNode animCurveTA -n "animCurveTA985";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 -40.495476310684118 10 99.356888472475092 
		50 99.356888472474822 65 0;
	setAttr -s 5 ".kit[1:4]"  9 1 1 9;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.18876637518405914 0.99458563327789307 
		0.99599999189376831 0.27704685926437378;
	setAttr -s 5 ".kiy[0:4]"  0 0.98202204704284668 0.10392004996538162 
		-0.089353263378143311 -0.96085637807846069;
	setAttr -s 5 ".kox[2:4]"  0.99458563327789307 0.99599999189376831 
		0.27704685926437378;
	setAttr -s 5 ".koy[2:4]"  0.10392013192176819 -0.089353166520595551 
		-0.96085637807846069;
createNode animCurveTA -n "animCurveTA986";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -0.061808866237340665 6 39.190885139563385 
		10 -80.625224214360543 13 -52.878635070042982 16 -84.610360155965012 19 -52.878635070042982 
		22 -84.759041677469838 25 -52.878635070042982 28 -77.557385199857691 31 -52.878635070042982 
		34 -87.089454375600241 37 -52.878635070042982 40 -71.936111204967204 43 -52.878635070042982 
		46 -95.617281964452445 50 -52.878635070042982 65 -0.061808866237340665;
	setAttr -s 17 ".kit[0:16]"  1 9 3 2 3 2 3 
		2 3 2 3 2 3 2 3 9 9;
	setAttr -s 17 ".kot[0:16]"  9 9 3 3 3 3 3 
		3 3 3 3 3 3 3 3 9 9;
	setAttr -s 17 ".ktl[3:16]" no yes no yes no yes no yes no yes 
		no yes yes yes;
	setAttr -s 17 ".kix[0:16]"  0 0.23066975176334381 1 0.20223002135753632 
		1 0.17768974602222443 1 0.17688693106174469 1 0.22615143656730652 1 0.16517804563045502 
		1 0.28791624307632446 1 0.35501468181610107 0.47678211331367493;
	setAttr -s 17 ".kiy[0:16]"  0 -0.97303211688995361 0 0.97933804988861084 
		0 0.98408657312393188 0 0.98423117399215698 0 0.97409212589263916 0 0.98626375198364258 
		0 0.95765560865402222 0 0.9348607063293457 0.87902152538299561;
createNode animCurveTA -n "animCurveTA987";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -59.058178941076754 6 -48.440082079524132 
		10 -46.967496762811905 50 -46.967496762811891 65 -59.058178941076754;
	setAttr -s 5 ".kit[4]"  9;
	setAttr -s 5 ".kot[0:4]"  9 1 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.91951644420623779 0.99978762865066528 
		0.9999392032623291 0.92130827903747559;
	setAttr -s 5 ".kiy[0:4]"  0 0.39305147528648376 0.020607391372323036 
		-0.011027572676539421 -0.38883292675018311;
	setAttr -s 5 ".kox[1:4]"  0.91951644420623779 0.99978762865066528 
		0.9999392032623291 0.92130827903747559;
	setAttr -s 5 ".koy[1:4]"  0.39305147528648376 0.020607393234968185 
		-0.011027572676539421 -0.38883292675018311;
createNode animCurveTA -n "animCurveTA988";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 16.57914742975785 6 -30.948499287033581 
		10 86.239626097477029 50 86.239626097477029 65 16.57914742975785;
	setAttr -s 5 ".kit[1:4]"  9 1 1 9;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.2644093930721283 0.99733221530914307 
		0.9999774694442749 0.38034304976463318;
	setAttr -s 5 ".kiy[0:4]"  0 0.96441054344177246 0.072995938360691071 
		-0.0067150169052183628 -0.92484545707702637;
	setAttr -s 5 ".kox[2:4]"  0.99733221530914307 0.9999774694442749 
		0.38034304976463318;
	setAttr -s 5 ".koy[2:4]"  0.072995848953723907 -0.0067150816321372986 
		-0.92484545707702637;
createNode animCurveTA -n "animCurveTA989";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 8.5572674112203639 6 38.58105319812973 
		13 51.501043167710584 16 49.341372124665483 19 51.501043167710584 22 49.341372124665483 
		25 51.501043167710584 28 49.341372124665483 31 51.501043167710584 34 49.341372124665483 
		37 51.501043167710584 40 49.341372124665483 43 51.501043167710584 46 49.341372124665483 
		50 51.501043167710584 65 8.5572674112203639;
	setAttr -s 16 ".kit[0:15]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 16 ".kix[0:15]"  0 0.50052261352539063 0.87123692035675049 
		1 1 1 1 1 1 1 1 1 1 1 0.66471976041793823 0.55495113134384155;
	setAttr -s 16 ".kiy[0:15]"  0 0.86572349071502686 0.49086269736289978 
		0 0 0 0 0 0 0 0 0 0 0 -0.74709278345108032 -0.83188295364379883;
createNode animCurveTA -n "animCurveTA990";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 15.711328223519061 6 51.67964526225029 
		13 51.67964526225029 16 54.309582655384716 19 51.67964526225029 22 54.309582655384716 
		25 51.67964526225029 28 54.309582655384716 31 51.67964526225029 34 54.309582655384716 
		37 51.67964526225029 40 54.309582655384716 43 51.67964526225029 46 54.309582655384716 
		50 51.67964526225029 65 15.711328223519061;
	setAttr -s 16 ".kit[0:15]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 16 ".kix[0:15]"  0 0.56808078289031982 0.99065166711807251 
		1 1 1 1 1 1 1 1 1 1 1 0.68495982885360718 0.6230127215385437;
	setAttr -s 16 ".kiy[0:15]"  0 0.82297283411026001 0.13641589879989624 
		0 0 0 0 0 0 0 0 0 0 0 -0.72858083248138428 -0.78221166133880615;
createNode animCurveTA -n "animCurveTA991";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 6 1.3331702538609063 13 -7.5292005192784561 
		16 -4.4444725106888159 19 -7.5292005192784561 22 -4.4444725106888159 25 -7.5292005192784561 
		28 -4.4444725106888159 31 -7.5292005192784561 34 -4.4444725106888159 37 -7.5292005192784561 
		40 -4.4444725106888159 43 -7.5292005192784561 46 -4.4444725106888159 50 -7.5292005192784561 
		65 0;
	setAttr -s 16 ".kit[0:15]"  1 9 2 3 2 3 2 
		3 2 3 2 3 2 3 2 9;
	setAttr -s 16 ".kot[0:15]"  9 9 3 3 3 3 3 
		3 3 3 3 3 3 3 3 9;
	setAttr -s 16 ".ktl[2:15]" no yes no yes no yes no yes no yes 
		no yes no yes;
	setAttr -s 16 ".kix[0:15]"  0 0.95696544647216797 0.83349502086639404 
		1 0.88049870729446411 1 0.88049858808517456 1 0.88049858808517456 1 0.88049870729446411 
		1 0.88049846887588501 1 0.92725992202758789 0.96715527772903442;
	setAttr -s 16 ".kiy[0:15]"  0 -0.29020196199417114 -0.55252701044082642 
		0 -0.47404858469963074 0 -0.47404879331588745 0 -0.47404879331588745 0 -0.47404858469963074 
		0 -0.47404900193214417 0 -0.37441825866699219 0.25418639183044434;
createNode animCurveTA -n "animCurveTA992";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 6 -8.9024571223602589 13 22.048492488107751 
		16 10.964890740807745 19 22.048492488107751 22 10.964890740807745 25 22.048492488107751 
		28 10.964890740807745 31 22.048492488107751 34 10.964890740807745 37 22.048492488107751 
		40 10.964890740807745 43 22.048492488107751 46 10.964890740807745 50 22.048492488107751 
		65 0;
	setAttr -s 16 ".kit[0:15]"  1 9 2 3 2 3 2 
		3 2 3 2 3 2 3 2 9;
	setAttr -s 16 ".kot[0:15]"  9 9 3 3 3 3 3 
		3 3 3 3 3 3 3 3 9;
	setAttr -s 16 ".ktl[2:15]" no yes no yes no yes no yes no yes 
		no yes no yes;
	setAttr -s 16 ".kix[0:15]"  0 0.74772316217422485 0.39653182029724121 
		1 0.45921310782432556 1 0.45921289920806885 1 0.45921289920806885 1 0.45921310782432556 
		1 0.45921266078948975 1 0.56751012802124023 0.79246824979782104;
	setAttr -s 16 ".kiy[0:15]"  0 0.66401058435440063 0.91802096366882324 
		0 0.88832610845565796 0 0.88832622766494751 0 0.88832622766494751 0 0.88832610845565796 
		0 0.88832634687423706 0 0.82336646318435669 -0.609913170337677;
createNode animCurveTA -n "animCurveTA993";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 6 24.131650431493217 13 35.6537946445182 
		16 33.534474971123593 19 35.6537946445182 22 33.534474971123593 25 35.6537946445182 
		28 33.534474971123593 31 35.6537946445182 34 33.534474971123593 37 35.6537946445182 
		40 33.534474971123593 43 35.6537946445182 46 33.534474971123593 50 35.6537946445182 
		65 0;
	setAttr -s 16 ".kit[0:15]"  1 1 2 9 2 9 2 
		9 2 9 2 9 2 9 2 9;
	setAttr -s 16 ".kot[1:15]"  1 3 9 3 9 3 9 
		3 9 3 9 3 9 3 9;
	setAttr -s 16 ".ktl[2:15]" no yes no yes no yes no yes no yes 
		no yes no yes;
	setAttr -s 16 ".kix[0:15]"  0 0.66943538188934326 0.75749033689498901 
		1 0.93789511919021606 1 0.93789505958557129 1 0.93789505958557129 1 0.93789511919021606 
		1 0.93789499998092651 1 0.96360719203948975 0.62635821104049683;
	setAttr -s 16 ".kiy[0:15]"  0 0.7428702712059021 0.65284633636474609 
		0 0.34691894054412842 0 0.34691911935806274 0 0.34691911935806274 0 0.34691894054412842 
		0 0.34691932797431946 0 0.26732230186462402 -0.77953535318374634;
	setAttr -s 16 ".kox[1:15]"  0.66943538188934326 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.62635821104049683;
	setAttr -s 16 ".koy[1:15]"  0.74287033081054688 0 0 0 0 0 0 
		0 0 0 0 0 0 0 -0.77953535318374634;
createNode animCurveTA -n "animCurveTA994";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 65 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA995";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 6 -3.3883400866957287 13 33.634007641169099 
		16 20.907095287539743 19 33.634007641169099 22 20.907095287539743 25 33.634007641169099 
		28 20.907095287539743 31 33.634007641169099 34 20.907095287539743 37 33.634007641169099 
		40 20.907095287539743 43 33.634007641169099 46 20.907095287539743 50 33.634007641169099 
		65 0;
	setAttr -s 16 ".kit[0:15]"  1 9 2 9 2 9 2 
		9 2 9 2 9 2 9 2 9;
	setAttr -s 16 ".kot[2:15]"  3 9 3 9 3 9 3 
		9 3 9 3 9 3 9;
	setAttr -s 16 ".ktl[2:15]" no yes no yes no yes no yes no yes 
		no yes no yes;
	setAttr -s 16 ".kix[0:15]"  0 0.59389984607696533 0.33964073657989502 
		1 0.41051176190376282 1 0.4105115532875061 1 0.4105115532875061 1 0.41051176190376282 
		1 0.41051134467124939 1 0.51465868949890137 0.64842325448989868;
	setAttr -s 16 ".kiy[0:15]"  0 0.8045390248298645 0.94055521488189697 
		0 0.91185528039932251 0 0.91185539960861206 0 0.91185539960861206 0 0.91185528039932251 
		0 0.91185545921325684 0 0.85739517211914063 -0.76128005981445313;
createNode animCurveTA -n "animCurveTA996";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 6 34.030071769177617 13 34.030071769177596 
		16 36.518288025578265 19 34.030071769177596 22 36.518288025578265 25 34.030071769177596 
		28 36.518288025578265 31 34.030071769177596 34 36.518288025578265 37 34.030071769177596 
		40 36.518288025578265 43 34.030071769177596 46 36.518288025578265 50 34.030071769177596 
		65 0;
	setAttr -s 16 ".kit[0:15]"  1 1 2 9 2 9 2 
		9 2 9 2 9 2 9 9 9;
	setAttr -s 16 ".kot[1:15]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9;
	setAttr -s 16 ".ktl[2:15]" no yes no yes no yes no yes no yes 
		no yes yes yes;
	setAttr -s 16 ".kix[0:15]"  0 0.99018442630767822 1 1 0.91724002361297607 
		1 0.9172399640083313 1 0.9172399640083313 1 0.91724002361297607 1 0.91723984479904175 
		1 0.70486009120941162 0.64401727914810181;
	setAttr -s 16 ".kiy[0:15]"  0 0.13976708054542542 0 0 -0.39833495020866394 
		0 -0.39833512902259827 0 -0.39833512902259827 0 -0.39833495020866394 0 -0.39833533763885498 
		0 -0.70934635400772095 -0.76501095294952393;
	setAttr -s 16 ".kox[1:15]"  0.99018442630767822 0.9916197657585144 
		1 1 1 1 1 1 1 1 1 1 1 0.70486009120941162 0.64401727914810181;
	setAttr -s 16 ".koy[1:15]"  0.13976705074310303 0.12919089198112488 
		0 0 0 0 0 0 0 0 0 0 0 -0.70934635400772095 -0.76501095294952393;
createNode animCurveTA -n "animCurveTA997";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 10.423754966968488 10 10.423754966968488 
		18 10.423754966968488 26 10.423754966968488 34 10.423754966968488 42 10.423754966968488 
		50 10.423754966968488 58 10.423754966968488 65 10.423754966968488;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA998";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 27.7228482558439 10 27.7228482558439 
		18 27.7228482558439 26 27.7228482558439 34 27.7228482558439 42 27.7228482558439 
		50 27.7228482558439 58 27.7228482558439 65 27.7228482558439;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA999";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 21.576484776388224 10 21.576484776388224 
		18 21.576484776388224 26 21.576484776388224 34 21.576484776388224 42 21.576484776388224 
		50 21.576484776388224 58 21.576484776388224 65 21.576484776388224;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1000";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1001";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1002";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 27.080064458283051 10 27.080064458283051 
		18 27.080064458283051 26 27.080064458283051 34 27.080064458283051 42 27.080064458283051 
		50 27.080064458283051 58 27.080064458283051 65 27.080064458283051;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1003";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1004";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1005";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1006";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1007";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1008";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 13.994403295754109 10 13.994403295754109 
		18 13.994403295754109 26 13.994403295754109 34 13.994403295754109 42 13.994403295754109 
		50 13.994403295754109 58 13.994403295754109 65 13.994403295754109;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1009";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1010";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1011";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 13.994403295754109 10 13.994403295754109 
		18 13.994403295754109 26 13.994403295754109 34 13.994403295754109 42 13.994403295754109 
		50 13.994403295754109 58 13.994403295754109 65 13.994403295754109;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1012";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1013";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1014";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 27.911632519594587 10 27.911632519594587 
		18 21.360808034133026 26 27.911632519594587 34 21.360808034133026 42 27.911632519594587 
		50 21.360808034133026 58 24.636220276863806 65 27.911632519594587;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.98232418298721313 1 1 1 1 0.99430441856384277 
		0.9748382568359375 0.97127437591552734;
	setAttr -s 9 ".kiy[0:8]"  0 -0.18718753755092621 0 0 0 0 
		-0.10657712072134018 0.22291326522827148 0.23796238005161285;
createNode animCurveTA -n "animCurveTA1015";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1016";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1017";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1018";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.71009266045615993 10 0.6689207415454046 
		18 0.64249065808135697 26 0.6689207415454046 34 0.64249065808135697 42 0.6689207415454046 
		50 0.64249065808135697 58 0.65313245511997942 65 0.71009266045615993;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.99999809265136719 1 1 1 1 0.99999988079071045 
		0.99999719858169556 0.99999094009399414;
	setAttr -s 9 ".kiy[0:8]"  0 -0.0019664587453007698 0 0 0 
		0 -0.00051667040679603815 0.0023597485851496458 0.0042605726048350334;
createNode animCurveTA -n "animCurveTA1019";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.39065484564574893 10 1.8839586388481506 
		18 2.2629034974571809 26 1.8839586388481506 34 2.2629034974571809 42 1.8839586388481506 
		50 2.2629034974571809 58 2.1667625534419406 65 0.39065484564574893;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.99852025508880615 1 1 1 1 0.99995720386505127 
		0.9978712797164917 0.99129021167755127;
	setAttr -s 9 ".kiy[0:8]"  0 0.054380916059017181 0 0 0 0 
		0.0092543400824069977 -0.065214686095714569 -0.13169537484645844;
createNode animCurveTA -n "animCurveTA1020";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 8.1445984161934586 10 -6.1789274937894723 
		18 -10.025098608114087 26 -6.1789274937894723 34 -10.025098608114087 42 -6.1789274937894723 
		50 -10.025098608114087 58 -8.9972334146999202 65 8.1445984161934586;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.88410824537277222 1 1 1 1 0.99577385187149048 
		0.84447199106216431 0.61498582363128662;
	setAttr -s 9 ".kiy[0:8]"  0 -0.46728220582008362 0 0 0 0 
		-0.091839075088500977 0.53559964895248413 0.78853815793991089;
createNode animCurveTA -n "animCurveTA1021";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 9 0.065267803260110488 17 -11.88193114903823 
		25 0.065267803260110488 33 -11.88193114903823 41 0.065267803260110488 49 
		-11.88193114903823 57 -5.9042524354865495 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.93908983469009399 1 1 1 1 0.98144811391830444 
		0.93202155828475952 0.93277662992477417;
	setAttr -s 9 ".kiy[0:8]"  0 -0.3436717689037323 0 0 0 0 -0.19172793626785278 
		0.36240285634994507 0.3604549765586853;
createNode animCurveTA -n "animCurveTA1022";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 9 -0.46548024672133326 17 21.28100361729221 
		25 18.625199641423624 33 -19.316234286602498 41 -17.397059517876457 49 21.28100361729221 
		57 17.955174578826444 65 0;
	setAttr -s 9 ".kit[4:8]"  3 1 3 9 3;
	setAttr -s 9 ".kot[0:8]"  9 1 1 1 3 1 3 
		9 3;
	setAttr -s 9 ".kix[0:8]"  0 0.98632878065109253 0.98820596933364868 
		0.9533461332321167 1 0.94935673475265503 1 0.82060998678207397 1;
	setAttr -s 9 ".kiy[0:8]"  0 0.16478936374187469 0.15313062071800232 
		-0.30187934637069702 0 0.31420025229454041 0 -0.57148861885070801 0;
	setAttr -s 9 ".kox[1:8]"  0.98632878065109253 0.98820596933364868 
		0.9533461332321167 1 0.9493567943572998 1 0.82060998678207397 1;
	setAttr -s 9 ".koy[1:8]"  0.16478936374187469 0.15313065052032471 
		-0.30187931656837463 0 0.3142000138759613 0 -0.57148861885070801 0;
createNode animCurveTA -n "animCurveTA1023";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 9 5.0479396868328896 17 8.565457120560124 
		25 5.0479396868328896 33 8.565457120560124 41 5.0479396868328896 49 8.565457120560124 
		57 7.1221946476364151 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.96691787242889404 1 1 1 1 0.99770408868789673 
		0.96288800239562988 0.90636378526687622;
	setAttr -s 9 ".kiy[0:8]"  0 0.25508788228034973 0 0 0 0 0.067723989486694336 
		-0.26990127563476563 -0.4224981963634491;
createNode animCurveTA -n "animCurveTA1024";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -2.0270270270270276 10 -2.0270270270270276 
		18 -2.0270270270270276 26 -2.0270270270270276 34 -2.0270270270270276 42 -2.0270270270270276 
		50 -2.0270270270270276 58 -2.0270270270270276 65 -2.0270270270270276;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1025";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -2.4108692476260059 10 -2.4108692476260059 
		18 -2.4108692476260059 26 -2.4108692476260059 34 -2.4108692476260059 42 -2.4108692476260059 
		50 -2.4108692476260059 58 -2.4108692476260059 65 -2.4108692476260059;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1026";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 13.0432985235726 10 13.0432985235726 
		18 13.0432985235726 26 13.0432985235726 34 13.0432985235726 42 13.0432985235726 
		50 13.0432985235726 58 13.0432985235726 65 13.0432985235726;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1027";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0.43187512968481573 18 0.33756306241616041 
		26 0.43187512968481573 34 0.33756306241616041 42 0.43187512968481573 50 0.33756306241616041 
		58 0.41171129200112672 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.99995177984237671 1 1 1 1 0.9999997615814209 
		0.99993056058883667 0.99952614307403564;
	setAttr -s 9 ".kiy[0:8]"  0 0.0098188389092683792 0 0 0 0 
		-0.00065985991386696696 -0.011782356537878513 -0.030781324952840805;
createNode animCurveTA -n "animCurveTA1028";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 -1.5942427066512641 18 -0.55158958784563861 
		26 -1.5942427066512641 34 -0.55158958784563861 42 -1.5942427066512641 50 
		-0.55158958784563861 58 -1.1725563151468825 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.99987131357192993 1 1 1 1 0.9999048113822937 
		0.99981468915939331 0.99617576599121094;
	setAttr -s 9 ".kiy[0:8]"  0 -0.016043026000261307 0 0 0 0 
		0.013798341155052185 0.019250540062785149 0.087371557950973511;
createNode animCurveTA -n "animCurveTA1029";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -10.382821061592265 10 5.4564308997622319 
		18 -4.7835260101365842 26 5.4564308997622319 34 -4.7835260101365842 42 5.4564308997622319 
		50 -4.7835260101365842 58 1.3264057099980537 65 -10.382821061592265;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.98699378967285156 1 1 1 1 0.99098986387252808 
		0.9814295768737793 0.75226056575775146;
	setAttr -s 9 ".kiy[0:8]"  0 0.16075848042964935 0 0 0 0 -0.13393698632717133 
		-0.19182264804840088 -0.65886569023132324;
createNode animCurveTA -n "animCurveTA1030";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1031";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1032";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 33.429092416277157 10 33.429092416277157 
		18 14.32057224701887 26 33.429092416277157 34 14.32057224701887 42 33.429092416277157 
		50 14.32057224701887 58 23.874832331648015 65 33.429092416277157;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.87405014038085938 1 1 1 1 0.95443582534790039 
		0.83191722631454468 0.81359070539474487;
	setAttr -s 9 ".kiy[0:8]"  0 -0.48583579063415527 0 0 0 0 
		-0.29841622710227966 0.55489975214004517 0.58143800497055054;
createNode animCurveTA -n "animCurveTA1033";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 8.2533422302317216 10 8.2533422302317216 
		18 -19.778134566607445 26 8.2533422302317216 34 -19.778134566607445 42 8.2533422302317216 
		50 -19.778134566607445 58 -5.7623961681878653 65 8.2533422302317216;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.77501183748245239 1 1 1 1 0.90895098447799683 
		0.71475458145141602 0.6902153491973877;
	setAttr -s 9 ".kiy[0:8]"  0 -0.63194668292999268 0 0 0 0 
		-0.4169030487537384 0.69937533140182495 0.72360402345657349;
createNode animCurveTA -n "animCurveTA1034";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 23.263402056531085 10 23.263402056531085 
		18 17.085412634998615 26 23.263402056531085 34 17.085412634998615 42 23.263402056531085 
		50 17.085412634998615 58 20.174407345764848 65 23.263402056531085;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.98423296213150024 1 1 1 1 0.99492955207824707 
		0.97752785682678223 0.97432988882064819;
	setAttr -s 9 ".kiy[0:8]"  0 -0.17687693238258362 0 0 0 0 
		-0.1005745530128479 0.21080633997917175 0.22512492537498474;
createNode animCurveTA -n "animCurveTA1035";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 20.166277752815617 10 20.166277752815617 
		18 3.1271938284370462 26 20.166277752815617 34 3.1271938284370462 42 20.166277752815617 
		50 3.1271938284370462 58 11.646735790626332 65 20.166277752815617;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.89598190784454346 1 1 1 1 0.96326321363449097 
		0.85946732759475708 0.84331893920898438;
	setAttr -s 9 ".kiy[0:8]"  0 -0.44409060478210449 0 0 0 0 
		-0.26855909824371338 0.51119071245193481 0.53741335868835449;
createNode animCurveTA -n "animCurveTA1036";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1037";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1038";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 17.254116939558369 10 17.254116939558369 
		18 17.254116939558369 26 17.254116939558369 34 17.254116939558369 42 17.254116939558369 
		50 17.254116939558369 58 17.254116939558369 65 17.254116939558369;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1039";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1040";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1041";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1042";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1043";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1044";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1045";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1046";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1047";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 18 0 26 0 34 0 42 0 50 
		0 58 0 65 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode clipLibrary -n "clipLibrary3";
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
	setAttr ".o" 65;
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
connectAttr "mrg_victory_largeSource.st" "clipLibrary3.st[0]";
connectAttr "mrg_victory_largeSource.du" "clipLibrary3.du[0]";
connectAttr "animCurveTL329.a" "clipLibrary3.cel[0].cev[0].cevr";
connectAttr "animCurveTL330.a" "clipLibrary3.cel[0].cev[1].cevr";
connectAttr "animCurveTL331.a" "clipLibrary3.cel[0].cev[2].cevr";
connectAttr "animCurveTL332.a" "clipLibrary3.cel[0].cev[3].cevr";
connectAttr "animCurveTL333.a" "clipLibrary3.cel[0].cev[4].cevr";
connectAttr "animCurveTA920.a" "clipLibrary3.cel[0].cev[5].cevr";
connectAttr "animCurveTU61.a" "clipLibrary3.cel[0].cev[6].cevr";
connectAttr "animCurveTU62.a" "clipLibrary3.cel[0].cev[7].cevr";
connectAttr "animCurveTU63.a" "clipLibrary3.cel[0].cev[8].cevr";
connectAttr "animCurveTU64.a" "clipLibrary3.cel[0].cev[9].cevr";
connectAttr "animCurveTU65.a" "clipLibrary3.cel[0].cev[10].cevr";
connectAttr "animCurveTU66.a" "clipLibrary3.cel[0].cev[11].cevr";
connectAttr "animCurveTU67.a" "clipLibrary3.cel[0].cev[12].cevr";
connectAttr "animCurveTU68.a" "clipLibrary3.cel[0].cev[13].cevr";
connectAttr "animCurveTA921.a" "clipLibrary3.cel[0].cev[14].cevr";
connectAttr "animCurveTA922.a" "clipLibrary3.cel[0].cev[15].cevr";
connectAttr "animCurveTA923.a" "clipLibrary3.cel[0].cev[16].cevr";
connectAttr "animCurveTL334.a" "clipLibrary3.cel[0].cev[17].cevr";
connectAttr "animCurveTL335.a" "clipLibrary3.cel[0].cev[18].cevr";
connectAttr "animCurveTL336.a" "clipLibrary3.cel[0].cev[19].cevr";
connectAttr "animCurveTL337.a" "clipLibrary3.cel[0].cev[20].cevr";
connectAttr "animCurveTL338.a" "clipLibrary3.cel[0].cev[21].cevr";
connectAttr "animCurveTL339.a" "clipLibrary3.cel[0].cev[22].cevr";
connectAttr "animCurveTA924.a" "clipLibrary3.cel[0].cev[23].cevr";
connectAttr "animCurveTA925.a" "clipLibrary3.cel[0].cev[24].cevr";
connectAttr "animCurveTA926.a" "clipLibrary3.cel[0].cev[25].cevr";
connectAttr "animCurveTL340.a" "clipLibrary3.cel[0].cev[26].cevr";
connectAttr "animCurveTL341.a" "clipLibrary3.cel[0].cev[27].cevr";
connectAttr "animCurveTL342.a" "clipLibrary3.cel[0].cev[28].cevr";
connectAttr "animCurveTA927.a" "clipLibrary3.cel[0].cev[29].cevr";
connectAttr "animCurveTA928.a" "clipLibrary3.cel[0].cev[30].cevr";
connectAttr "animCurveTA929.a" "clipLibrary3.cel[0].cev[31].cevr";
connectAttr "animCurveTA930.a" "clipLibrary3.cel[0].cev[32].cevr";
connectAttr "animCurveTA931.a" "clipLibrary3.cel[0].cev[33].cevr";
connectAttr "animCurveTA932.a" "clipLibrary3.cel[0].cev[34].cevr";
connectAttr "animCurveTA933.a" "clipLibrary3.cel[0].cev[35].cevr";
connectAttr "animCurveTA934.a" "clipLibrary3.cel[0].cev[36].cevr";
connectAttr "animCurveTA935.a" "clipLibrary3.cel[0].cev[37].cevr";
connectAttr "animCurveTA936.a" "clipLibrary3.cel[0].cev[38].cevr";
connectAttr "animCurveTA937.a" "clipLibrary3.cel[0].cev[39].cevr";
connectAttr "animCurveTA938.a" "clipLibrary3.cel[0].cev[40].cevr";
connectAttr "animCurveTA939.a" "clipLibrary3.cel[0].cev[41].cevr";
connectAttr "animCurveTA940.a" "clipLibrary3.cel[0].cev[42].cevr";
connectAttr "animCurveTA941.a" "clipLibrary3.cel[0].cev[43].cevr";
connectAttr "animCurveTL343.a" "clipLibrary3.cel[0].cev[44].cevr";
connectAttr "animCurveTL344.a" "clipLibrary3.cel[0].cev[45].cevr";
connectAttr "animCurveTL345.a" "clipLibrary3.cel[0].cev[46].cevr";
connectAttr "animCurveTL346.a" "clipLibrary3.cel[0].cev[47].cevr";
connectAttr "animCurveTL347.a" "clipLibrary3.cel[0].cev[48].cevr";
connectAttr "animCurveTL348.a" "clipLibrary3.cel[0].cev[49].cevr";
connectAttr "animCurveTL349.a" "clipLibrary3.cel[0].cev[50].cevr";
connectAttr "animCurveTL350.a" "clipLibrary3.cel[0].cev[51].cevr";
connectAttr "animCurveTL351.a" "clipLibrary3.cel[0].cev[52].cevr";
connectAttr "animCurveTA942.a" "clipLibrary3.cel[0].cev[53].cevr";
connectAttr "animCurveTA943.a" "clipLibrary3.cel[0].cev[54].cevr";
connectAttr "animCurveTA944.a" "clipLibrary3.cel[0].cev[55].cevr";
connectAttr "animCurveTA945.a" "clipLibrary3.cel[0].cev[56].cevr";
connectAttr "animCurveTA946.a" "clipLibrary3.cel[0].cev[57].cevr";
connectAttr "animCurveTA947.a" "clipLibrary3.cel[0].cev[58].cevr";
connectAttr "animCurveTA948.a" "clipLibrary3.cel[0].cev[59].cevr";
connectAttr "animCurveTA949.a" "clipLibrary3.cel[0].cev[60].cevr";
connectAttr "animCurveTA950.a" "clipLibrary3.cel[0].cev[61].cevr";
connectAttr "animCurveTA951.a" "clipLibrary3.cel[0].cev[62].cevr";
connectAttr "animCurveTA952.a" "clipLibrary3.cel[0].cev[63].cevr";
connectAttr "animCurveTA953.a" "clipLibrary3.cel[0].cev[64].cevr";
connectAttr "animCurveTA954.a" "clipLibrary3.cel[0].cev[65].cevr";
connectAttr "animCurveTA955.a" "clipLibrary3.cel[0].cev[66].cevr";
connectAttr "animCurveTA956.a" "clipLibrary3.cel[0].cev[67].cevr";
connectAttr "animCurveTA957.a" "clipLibrary3.cel[0].cev[68].cevr";
connectAttr "animCurveTA958.a" "clipLibrary3.cel[0].cev[69].cevr";
connectAttr "animCurveTA959.a" "clipLibrary3.cel[0].cev[70].cevr";
connectAttr "animCurveTA960.a" "clipLibrary3.cel[0].cev[71].cevr";
connectAttr "animCurveTA961.a" "clipLibrary3.cel[0].cev[72].cevr";
connectAttr "animCurveTA962.a" "clipLibrary3.cel[0].cev[73].cevr";
connectAttr "animCurveTA963.a" "clipLibrary3.cel[0].cev[74].cevr";
connectAttr "animCurveTA964.a" "clipLibrary3.cel[0].cev[75].cevr";
connectAttr "animCurveTA965.a" "clipLibrary3.cel[0].cev[76].cevr";
connectAttr "animCurveTA966.a" "clipLibrary3.cel[0].cev[77].cevr";
connectAttr "animCurveTA967.a" "clipLibrary3.cel[0].cev[78].cevr";
connectAttr "animCurveTA968.a" "clipLibrary3.cel[0].cev[79].cevr";
connectAttr "animCurveTA969.a" "clipLibrary3.cel[0].cev[80].cevr";
connectAttr "animCurveTA970.a" "clipLibrary3.cel[0].cev[81].cevr";
connectAttr "animCurveTL352.a" "clipLibrary3.cel[0].cev[82].cevr";
connectAttr "animCurveTL353.a" "clipLibrary3.cel[0].cev[83].cevr";
connectAttr "animCurveTL354.a" "clipLibrary3.cel[0].cev[84].cevr";
connectAttr "animCurveTA971.a" "clipLibrary3.cel[0].cev[85].cevr";
connectAttr "animCurveTA972.a" "clipLibrary3.cel[0].cev[86].cevr";
connectAttr "animCurveTA973.a" "clipLibrary3.cel[0].cev[87].cevr";
connectAttr "animCurveTL355.a" "clipLibrary3.cel[0].cev[88].cevr";
connectAttr "animCurveTL356.a" "clipLibrary3.cel[0].cev[89].cevr";
connectAttr "animCurveTL357.a" "clipLibrary3.cel[0].cev[90].cevr";
connectAttr "animCurveTA974.a" "clipLibrary3.cel[0].cev[91].cevr";
connectAttr "animCurveTA975.a" "clipLibrary3.cel[0].cev[92].cevr";
connectAttr "animCurveTA976.a" "clipLibrary3.cel[0].cev[93].cevr";
connectAttr "animCurveTL358.a" "clipLibrary3.cel[0].cev[94].cevr";
connectAttr "animCurveTL359.a" "clipLibrary3.cel[0].cev[95].cevr";
connectAttr "animCurveTL360.a" "clipLibrary3.cel[0].cev[96].cevr";
connectAttr "animCurveTA977.a" "clipLibrary3.cel[0].cev[97].cevr";
connectAttr "animCurveTA978.a" "clipLibrary3.cel[0].cev[98].cevr";
connectAttr "animCurveTA979.a" "clipLibrary3.cel[0].cev[99].cevr";
connectAttr "animCurveTL361.a" "clipLibrary3.cel[0].cev[100].cevr";
connectAttr "animCurveTL362.a" "clipLibrary3.cel[0].cev[101].cevr";
connectAttr "animCurveTL363.a" "clipLibrary3.cel[0].cev[102].cevr";
connectAttr "animCurveTA980.a" "clipLibrary3.cel[0].cev[103].cevr";
connectAttr "animCurveTA981.a" "clipLibrary3.cel[0].cev[104].cevr";
connectAttr "animCurveTA982.a" "clipLibrary3.cel[0].cev[105].cevr";
connectAttr "animCurveTL364.a" "clipLibrary3.cel[0].cev[106].cevr";
connectAttr "animCurveTL365.a" "clipLibrary3.cel[0].cev[107].cevr";
connectAttr "animCurveTL366.a" "clipLibrary3.cel[0].cev[108].cevr";
connectAttr "animCurveTL367.a" "clipLibrary3.cel[0].cev[109].cevr";
connectAttr "animCurveTL368.a" "clipLibrary3.cel[0].cev[110].cevr";
connectAttr "animCurveTL369.a" "clipLibrary3.cel[0].cev[111].cevr";
connectAttr "animCurveTA983.a" "clipLibrary3.cel[0].cev[112].cevr";
connectAttr "animCurveTA984.a" "clipLibrary3.cel[0].cev[113].cevr";
connectAttr "animCurveTA985.a" "clipLibrary3.cel[0].cev[114].cevr";
connectAttr "animCurveTA986.a" "clipLibrary3.cel[0].cev[115].cevr";
connectAttr "animCurveTA987.a" "clipLibrary3.cel[0].cev[116].cevr";
connectAttr "animCurveTA988.a" "clipLibrary3.cel[0].cev[117].cevr";
connectAttr "animCurveTA989.a" "clipLibrary3.cel[0].cev[118].cevr";
connectAttr "animCurveTA990.a" "clipLibrary3.cel[0].cev[119].cevr";
connectAttr "animCurveTA991.a" "clipLibrary3.cel[0].cev[120].cevr";
connectAttr "animCurveTA992.a" "clipLibrary3.cel[0].cev[121].cevr";
connectAttr "animCurveTA993.a" "clipLibrary3.cel[0].cev[122].cevr";
connectAttr "animCurveTA994.a" "clipLibrary3.cel[0].cev[123].cevr";
connectAttr "animCurveTA995.a" "clipLibrary3.cel[0].cev[124].cevr";
connectAttr "animCurveTA996.a" "clipLibrary3.cel[0].cev[125].cevr";
connectAttr "animCurveTA997.a" "clipLibrary3.cel[0].cev[126].cevr";
connectAttr "animCurveTA998.a" "clipLibrary3.cel[0].cev[127].cevr";
connectAttr "animCurveTA999.a" "clipLibrary3.cel[0].cev[128].cevr";
connectAttr "animCurveTA1000.a" "clipLibrary3.cel[0].cev[129].cevr";
connectAttr "animCurveTA1001.a" "clipLibrary3.cel[0].cev[130].cevr";
connectAttr "animCurveTA1002.a" "clipLibrary3.cel[0].cev[131].cevr";
connectAttr "animCurveTA1003.a" "clipLibrary3.cel[0].cev[132].cevr";
connectAttr "animCurveTA1004.a" "clipLibrary3.cel[0].cev[133].cevr";
connectAttr "animCurveTA1005.a" "clipLibrary3.cel[0].cev[134].cevr";
connectAttr "animCurveTA1006.a" "clipLibrary3.cel[0].cev[135].cevr";
connectAttr "animCurveTA1007.a" "clipLibrary3.cel[0].cev[136].cevr";
connectAttr "animCurveTA1008.a" "clipLibrary3.cel[0].cev[137].cevr";
connectAttr "animCurveTA1009.a" "clipLibrary3.cel[0].cev[138].cevr";
connectAttr "animCurveTA1010.a" "clipLibrary3.cel[0].cev[139].cevr";
connectAttr "animCurveTA1011.a" "clipLibrary3.cel[0].cev[140].cevr";
connectAttr "animCurveTA1012.a" "clipLibrary3.cel[0].cev[141].cevr";
connectAttr "animCurveTA1013.a" "clipLibrary3.cel[0].cev[142].cevr";
connectAttr "animCurveTA1014.a" "clipLibrary3.cel[0].cev[143].cevr";
connectAttr "animCurveTA1015.a" "clipLibrary3.cel[0].cev[144].cevr";
connectAttr "animCurveTA1016.a" "clipLibrary3.cel[0].cev[145].cevr";
connectAttr "animCurveTA1017.a" "clipLibrary3.cel[0].cev[146].cevr";
connectAttr "animCurveTA1018.a" "clipLibrary3.cel[0].cev[147].cevr";
connectAttr "animCurveTA1019.a" "clipLibrary3.cel[0].cev[148].cevr";
connectAttr "animCurveTA1020.a" "clipLibrary3.cel[0].cev[149].cevr";
connectAttr "animCurveTA1021.a" "clipLibrary3.cel[0].cev[150].cevr";
connectAttr "animCurveTA1022.a" "clipLibrary3.cel[0].cev[151].cevr";
connectAttr "animCurveTA1023.a" "clipLibrary3.cel[0].cev[152].cevr";
connectAttr "animCurveTA1024.a" "clipLibrary3.cel[0].cev[153].cevr";
connectAttr "animCurveTA1025.a" "clipLibrary3.cel[0].cev[154].cevr";
connectAttr "animCurveTA1026.a" "clipLibrary3.cel[0].cev[155].cevr";
connectAttr "animCurveTA1027.a" "clipLibrary3.cel[0].cev[156].cevr";
connectAttr "animCurveTA1028.a" "clipLibrary3.cel[0].cev[157].cevr";
connectAttr "animCurveTA1029.a" "clipLibrary3.cel[0].cev[158].cevr";
connectAttr "animCurveTA1030.a" "clipLibrary3.cel[0].cev[159].cevr";
connectAttr "animCurveTA1031.a" "clipLibrary3.cel[0].cev[160].cevr";
connectAttr "animCurveTA1032.a" "clipLibrary3.cel[0].cev[161].cevr";
connectAttr "animCurveTA1033.a" "clipLibrary3.cel[0].cev[162].cevr";
connectAttr "animCurveTA1034.a" "clipLibrary3.cel[0].cev[163].cevr";
connectAttr "animCurveTA1035.a" "clipLibrary3.cel[0].cev[164].cevr";
connectAttr "animCurveTA1036.a" "clipLibrary3.cel[0].cev[165].cevr";
connectAttr "animCurveTA1037.a" "clipLibrary3.cel[0].cev[166].cevr";
connectAttr "animCurveTA1038.a" "clipLibrary3.cel[0].cev[167].cevr";
connectAttr "animCurveTA1039.a" "clipLibrary3.cel[0].cev[168].cevr";
connectAttr "animCurveTA1040.a" "clipLibrary3.cel[0].cev[169].cevr";
connectAttr "animCurveTA1041.a" "clipLibrary3.cel[0].cev[170].cevr";
connectAttr "animCurveTA1042.a" "clipLibrary3.cel[0].cev[171].cevr";
connectAttr "animCurveTA1043.a" "clipLibrary3.cel[0].cev[172].cevr";
connectAttr "animCurveTA1044.a" "clipLibrary3.cel[0].cev[173].cevr";
connectAttr "animCurveTA1045.a" "clipLibrary3.cel[0].cev[174].cevr";
connectAttr "animCurveTA1046.a" "clipLibrary3.cel[0].cev[175].cevr";
connectAttr "animCurveTA1047.a" "clipLibrary3.cel[0].cev[176].cevr";
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
// End of mrg_victory_large.ma
