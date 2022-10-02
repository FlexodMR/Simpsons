//Maya ASCII 4.0 scene
//Name: apu_shaking_fist.ma
//Last modified: Wed, Feb 19, 2003 02:06:29 PM
requires maya "4.0";
requires "p3dmayaexp" "2.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "apu_shaking_fistSource";
	setAttr ".ihi" 0;
	setAttr ".du" 60;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL122";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 9 1 60 1;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL123";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 -0.054075435230564878 1 -0.055715807498017023 
		2 -0.057522623565434881 3 -0.059424550382788911 4 -0.061350254900049583 5 
		-0.063228404067187369 6 -0.064987664834172773 7 -0.06655670415097624 8 -0.067864188967568267 
		9 -0.068838786233919314 10 -0.069409162899999863 11 -0.06974760363869377 
		12 -0.070073806686417148 13 -0.070387559338438904 14 -0.070688648890027891 
		15 -0.070976862636453003 16 -0.071251987872983105 17 -0.071513811894887078 
		18 -0.071762121997433814 19 -0.071996705475892195 20 -0.072217349625531072 
		21 -0.072423841741619338 22 -0.072615969119425888 23 -0.072793519054219602 
		24 -0.072956278841269318 25 -0.073104035775843956 26 -0.07323657715321237 
		27 -0.073353690268643454 28 -0.073455162417406086 29 -0.073540780894769134 
		30 -0.073610332996001504 31 -0.073663606016372021 32 -0.073700387251149621 
		33 -0.073720463995603155 34 -0.073723623545001504 35 -0.073709653194613547 
		36 -0.073678340239708179 37 -0.07362947197555425 38 -0.073562835697420656 
		39 -0.073478218700576275 40 -0.073375408280289989 41 -0.073254191731830676 
		42 -0.073114356350467202 43 -0.072955689431468462 44 -0.072777978270103322 
		45 -0.072581010161640661 46 -0.072364572401349372 47 -0.072128452284498337 
		48 -0.071872437106356421 49 -0.071596314162192476 50 -0.071299870747275437 
		51 -0.070724200088267519 52 -0.069667167973721592 53 -0.068213720541742462 
		54 -0.066448803930434966 55 -0.064457364277903967 56 -0.062324347722254245 
		57 -0.060134700401590642 58 -0.057973368454018008 59 -0.055925298017641137 
		60 -0.054075435230564878;
createNode animCurveTL -n "animCurveTL125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0 1 0.0032362221106204021 2 0.0068209511076534604 
		3 0.010604826925727428 4 0.014438489499470557 5 0.0181725787635111 6 0.021657734652477313 
		7 0.024744597100997443 8 0.027283806043699746 9 0.029126001415212488 10 0.030121823150163898 
		11 0.030626203094523283 12 0.031093944927135478 13 0.031525496331942057 14 
		0.031921304992884585 15 0.032281818593904638 16 0.032607484818943787 17 0.032898751351943589 
		18 0.033156065876845643 19 0.033379876077591492 20 0.033570629638122726 21 
		0.033728774242380903 22 0.033854757574307601 23 0.033949027317844382 24 0.034012031156932826 
		25 0.034044216775514509 26 0.034046031857530988 27 0.034017924086923841 28 
		0.033960341147634632 29 0.033873730723604945 30 0.033758540498776343 31 0.033615218157090392 
		32 0.033444211382488667 33 0.033245967858912748 34 0.033020935270304183 35 
		0.032769561300604572 36 0.032492293633755463 37 0.032189579953698429 38 0.031861867944375059 
		39 0.031509605289726905 40 0.031133239673695547 41 0.030733218780222549 42 
		0.030309990293249493 43 0.029864001896717941 44 0.029395701274569461 45 0.02890553611074563 
		46 0.028393954089188014 47 0.027861402893838191 48 0.027308330208637731 49 
		0.026735183717528192 50 0.026142411104451164 51 0.025157731762757946 52 0.023489038820583903 
		53 0.021257040564046693 54 0.018582445279263962 55 0.015585961252353354 56 
		0.01238829676943253 57 0.0091101601166191301 58 0.0058722595800308128 59 
		0.0027953034457852198 60 0;
createNode animCurveTA -n "animCurveTA340";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTU -n "animCurveTU29";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 1 50 1 60 0;
	setAttr -s 4 ".kit[0:3]"  1 2 2 1;
	setAttr -s 4 ".kot[0:3]"  9 2 2 5;
	setAttr -s 4 ".kix[0:3]"  0 0.31622776389122009 1 0.31622779369354248;
	setAttr -s 4 ".kiy[0:3]"  0 0.94868332147598267 0 -0.94868326187133789;
createNode animCurveTU -n "animCurveTU30";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 1 50 1 60 0;
	setAttr -s 4 ".kit[0:3]"  1 2 2 1;
	setAttr -s 4 ".kot[0:3]"  9 2 2 5;
	setAttr -s 4 ".kix[0:3]"  0 0.31622776389122009 1 0.31622779369354248;
	setAttr -s 4 ".kiy[0:3]"  0 0.94868332147598267 0 -0.94868326187133789;
createNode animCurveTU -n "animCurveTU31";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU32";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA341";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA342";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA343";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL127";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL128";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL129";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.26454016861507795 60 -0.26454016861507795;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.13806192026723146 60 0.13806192026723146;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.064904406754016042 60 -0.064904406754016042;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA344";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA345";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -25.948901905116401 60 -25.948901905116401;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA346";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.21594587158542247 60 0.21594587158542247;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.1380615615975922 60 0.1380615615975922;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.00078430246903575811 60 0.00078430246903575811;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA347";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA348";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA349";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA350";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA351";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA352";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA353";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA354";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA355";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL137";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.076472881617957691 10 -0.098157669467134556 
		50 -0.1008314875651741 60 -0.076472881617957691;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.5646897554397583 0.6093904972076416 
		0.13558059930801392;
	setAttr -s 4 ".kiy[0:3]"  0 -0.82530325651168823 0.79287022352218628 
		0.99076634645462036;
createNode animCurveTL -n "animCurveTL143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.99296149630440855 10 0.99207385110210422 
		50 0.99207385110210422 60 0.99296149630440855;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99858474731445313 0.99858474731445313 
		0.96632462739944458;
	setAttr -s 4 ".kiy[0:3]"  0 -0.053183339536190033 0.053183339536190033 
		0.25732600688934326;
createNode animCurveTL -n "animCurveTL144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0.042597948699958685 50 
		0.036970308256875271 60 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.41098034381866455 0.36435961723327637 
		0.089798189699649811;
	setAttr -s 4 ".kiy[0:3]"  0 0.91164422035217285 -0.93125832080841064 
		-0.99595999717712402;
createNode animCurveTA -n "animCurveTA356";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.62843630316474508 10 2.8798183916023534 
		50 4.2946925490903149 60 -0.62843630316474508;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99867367744445801 0.99932581186294556 
		0.96834522485733032;
	setAttr -s 4 ".kiy[0:3]"  0 0.051486507058143616 -0.036713588982820511 
		-0.24961464107036591;
createNode animCurveTA -n "animCurveTA357";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -5.8284402688137167 10 0.032356037197084186 
		50 0.032356037197084173 60 -5.8284402688137167;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99812191724777222 0.99812191724777222 
		0.95599955320358276;
	setAttr -s 4 ".kiy[0:3]"  0 0.061258852481842041 -0.061258852481842041 
		-0.2933681309223175;
createNode animCurveTA -n "animCurveTA358";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.295636019309746 10 -0.64317426163671099 
		50 -0.64317426163671065 60 -1.295636019309746;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99997663497924805 0.99997663497924805 
		0.99941694736480713;
	setAttr -s 4 ".kiy[0:3]"  0 0.0068324045278131962 -0.0068324045278131962 
		-0.034142900258302689;
createNode animCurveTA -n "animCurveTA359";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA360";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA361";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA362";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA363";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA364";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA365";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA366";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA367";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA368";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA369";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA370";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA371";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA372";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA373";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA374";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA375";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA376";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA377";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA378";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA379";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA380";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA381";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA382";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA383";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA384";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL145";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.43524234076486068 9 -0.22164053326398034 
		60 -0.43524234076486068;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.079336479306221008;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.99684786796569824;
	setAttr -s 3 ".kox[1:2]"  1 0.079336479306221008;
	setAttr -s 3 ".koy[1:2]"  0 -0.99684786796569824;
createNode animCurveTL -n "animCurveTL146";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.82665738350180629 9 -0.9417076481617882 
		60 -0.82665738350180629;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.14617437124252319;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.98925882577896118;
	setAttr -s 3 ".kox[1:2]"  1 0.14617437124252319;
	setAttr -s 3 ".koy[1:2]"  0 0.98925882577896118;
createNode animCurveTL -n "animCurveTL147";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.27773886459742925 9 0.038362195289875119 
		60 0.27773886459742925;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.070839367806911469;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99748772382736206;
	setAttr -s 3 ".kox[1:2]"  1 0.070839367806911469;
	setAttr -s 3 ".koy[1:2]"  0 0.99748772382736206;
createNode animCurveTA -n "animCurveTA385";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.8121934161072299e-015 9 6.7230119492284173 
		60 1.8121934161072299e-015;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99762642383575439;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.068858928978443146;
	setAttr -s 3 ".kox[1:2]"  1 0.99762642383575439;
	setAttr -s 3 ".koy[1:2]"  0 -0.068858928978443146;
createNode animCurveTA -n "animCurveTA386";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 28.652637602052774 9 19.839511008631867 
		60 28.652637602052774;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99593156576156616;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.090113095939159393;
	setAttr -s 3 ".kox[1:2]"  1 0.99593156576156616;
	setAttr -s 3 ".koy[1:2]"  0 0.090113095939159393;
createNode animCurveTA -n "animCurveTA387";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 64.676908227303443 9 76.90743997913691 
		60 64.676908227303443;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99220854043960571;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.12458815425634384;
	setAttr -s 3 ".kox[1:2]"  1 0.99220854043960571;
	setAttr -s 3 ".koy[1:2]"  0 -0.12458815425634384;
createNode animCurveTL -n "animCurveTL148";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.5198069948790518 9 0.20623790699604494 
		60 0.5198069948790518;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.054135031998157501;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99853360652923584;
	setAttr -s 3 ".kox[1:2]"  1 0.054135031998157501;
	setAttr -s 3 ".koy[1:2]"  0 0.99853360652923584;
createNode animCurveTL -n "animCurveTL149";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.72394202659893114 9 -0.94615818397708606 
		60 -0.72394202659893114;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.076279200613498688;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99708652496337891;
	setAttr -s 3 ".kox[1:2]"  1 0.076279200613498688;
	setAttr -s 3 ".koy[1:2]"  0 0.99708652496337891;
createNode animCurveTL -n "animCurveTL150";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.36439499068905612 9 0.023808763748733922 
		60 0.36439499068905612;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.049851875752210617;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99875664710998535;
	setAttr -s 3 ".kox[1:2]"  1 0.049851875752210617;
	setAttr -s 3 ".koy[1:2]"  0 0.99875664710998535;
createNode animCurveTA -n "animCurveTA388";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.7976222737965317 9 8.1910546202722809 
		60 7.7976222737965317;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99999183416366577;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.0040391962975263596;
	setAttr -s 3 ".kox[1:2]"  1 0.99999183416366577;
	setAttr -s 3 ".koy[1:2]"  0 -0.0040391962975263596;
createNode animCurveTA -n "animCurveTA389";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -30.409274105849079 9 -16.680769289981995 
		60 -30.409274105849079;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99021273851394653;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.13956618309020996;
	setAttr -s 3 ".kox[1:2]"  1 0.99021273851394653;
	setAttr -s 3 ".koy[1:2]"  0 -0.13956618309020996;
createNode animCurveTA -n "animCurveTA390";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -64.859940280210893 9 -64.609749241846473 
		60 -64.859940280210893;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99999672174453735;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.0025686132721602917;
	setAttr -s 3 ".kox[1:2]"  1 0.99999672174453735;
	setAttr -s 3 ".koy[1:2]"  0 -0.0025686132721602917;
createNode animCurveTL -n "animCurveTL151";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.8448236677023373 9 -0.8448236677023373 
		60 -0.8448236677023373;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL152";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.5117481219250299 9 1.5117481219250299 
		60 1.5117481219250299;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL153";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.097994651149805143 9 -0.097994651149805143 
		60 -0.097994651149805143;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA391";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 5.4739599453216465 9 5.4739599453216474 
		60 5.4739599453216465;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA392";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.5874521608419823 9 8.5874521608419823 
		60 8.5874521608419823;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA393";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 74.754744621954103 9 74.754744621954103 
		60 74.754744621954103;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL154";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.61083301393139333 9 0.61083301393139333 
		60 0.61083301393139333;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL155";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.4644416293758407 9 1.4644416293758407 
		60 1.4644416293758407;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL156";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.14314299916678522 9 0.14314299916678522 
		60 0.14314299916678522;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA394";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 16.226511010665412 9 16.226511010665405 
		60 16.226511010665412;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA395";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -8.5139660854992858 9 -8.513966085499284 
		60 -8.5139660854992858;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA396";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -68.213989601412422 9 -68.213989601412422 
		60 -68.213989601412422;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1 60 -1;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.10167917362943303 60 -0.10167917362943303;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.40762644910266188 60 -0.40762644910266188;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.93129112588482243 60 -0.93129112588482243;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA397";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 12.253734489678925 10 -67.023443446392847 
		50 -67.023443446392847 60 12.253734489678925;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99438655376434326 0.97092688083648682 
		0.23420853912830353;
	setAttr -s 4 ".kiy[0:3]"  0 -0.10580802708864212 0.23937629163265228 
		0.9721863865852356;
	setAttr -s 4 ".kox[1:3]"  0.99438655376434326 0.97092688083648682 
		0.23420853912830353;
	setAttr -s 4 ".koy[1:3]"  -0.10580804944038391 0.23937623202800751 
		0.9721863865852356;
createNode animCurveTA -n "animCurveTA398";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -65.746751280844975 10 -11.674435651078507 
		50 -11.674435651078507 60 -65.746751280844975;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 0.98572587966918945 0.99898278713226318 
		0.33304101228713989;
	setAttr -s 4 ".kiy[0:3]"  0 0.16835823655128479 -0.045093424618244171 
		-0.94291234016418457;
	setAttr -s 4 ".kox[1:3]"  0.98572587966918945 0.99898278713226318 
		0.33304101228713989;
	setAttr -s 4 ".koy[1:3]"  0.1683582067489624 -0.045093409717082977 
		-0.94291234016418457;
createNode animCurveTA -n "animCurveTA399";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 73.209880528654736 50 73.209880528654736 
		60 0;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99779433012008667 0.99568289518356323 
		0.2524263858795166;
	setAttr -s 4 ".kiy[0:3]"  0 0.066381484270095825 -0.092819929122924805 
		-0.96761608123779297;
	setAttr -s 4 ".kox[1:3]"  0.99779433012008667 0.99568289518356323 
		0.2524263858795166;
	setAttr -s 4 ".koy[1:3]"  0.066381439566612244 -0.092819914221763611 
		-0.96761608123779297;
createNode animCurveTA -n "animCurveTA400";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.061808866237340665 10 46.211399949024518 
		50 46.211399949024518 60 -0.061808866237340665;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.89991182088851929 0.89991182088851929 
		0.38151690363883972;
	setAttr -s 4 ".kiy[0:3]"  0 0.4360719621181488 -0.4360719621181488 
		-0.92436188459396362;
createNode animCurveTA -n "animCurveTA401";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -59.058178941076754 10 -31.253419128209984 
		50 -31.253419128209984 60 -59.058178941076754;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.96012789011001587 0.96012789011001587 
		0.56618297100067139;
	setAttr -s 4 ".kiy[0:3]"  0 0.27956119179725647 -0.27956119179725647 
		-0.82427960634231567;
createNode animCurveTA -n "animCurveTA402";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 16.57914742975785 10 -53.488362918341828 
		50 -53.488362918341828 60 16.57914742975785;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.80624657869338989 0.80624657869338989 
		0.26297992467880249;
	setAttr -s 4 ".kiy[0:3]"  0 -0.5915796160697937 0.5915796160697937 
		0.96480131149291992;
createNode animCurveTA -n "animCurveTA403";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 8.5572674112203639 10 58.18498084109217 
		12 63.906122114553988 14 55.46201856474346 16 69.955479566884932 18 53.899675724094713 
		20 68.868987069778143 23 54.735696694276058 26 63.340599085373547 29 53.194059493785232 
		32 61.373811912588913 36 54.378362965883163 40 58.18498084109217 50 58.18498084109217 
		60 8.5572674112203639;
	setAttr -s 15 ".kit[0:14]"  1 9 3 3 3 3 3 
		3 3 3 3 3 9 1 9;
	setAttr -s 15 ".kot[0:14]"  9 9 3 3 3 3 3 
		3 3 3 3 3 9 1 9;
	setAttr -s 15 ".kix[0:14]"  0 0.38257038593292236 1 1 1 1 1 
		1 1 1 1 1 0.99001729488372803 0.99849766492843628 0.35915946960449219;
	setAttr -s 15 ".kiy[0:14]"  0 0.92392635345458984 0 0 0 0 0 
		0 0 0 0 0 0.14094597101211548 -0.054794751107692719 -0.93327623605728149;
	setAttr -s 15 ".kox[13:14]"  0.99849766492843628 0.35915946960449219;
	setAttr -s 15 ".koy[13:14]"  -0.054794769734144211 -0.93327623605728149;
createNode animCurveTA -n "animCurveTA404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 15.711328223519061 10 43.274961386243781 
		50 43.274961386243781 60 15.711328223519061;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.96077644824981689 0.96077644824981689 
		0.5695340633392334;
	setAttr -s 4 ".kiy[0:3]"  0 0.27732399106025696 -0.27732399106025696 
		-0.8219677209854126;
createNode animCurveTA -n "animCurveTA405";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 -56.06501192956862 50 -56.06501192956862 
		60 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.86235743761062622 0.86235743761062622 
		0.32245489954948425;
	setAttr -s 4 ".kiy[0:3]"  0 -0.50629991292953491 0.50629991292953491 
		0.94658482074737549;
createNode animCurveTA -n "animCurveTA406";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 -10.471413205801918 50 -10.471413205801918 
		60 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99404144287109375 0.99404144287109375 
		0.87685132026672363;
	setAttr -s 4 ".kiy[0:3]"  0 -0.10900299251079559 0.10900299251079559 
		0.48076170682907104;
createNode animCurveTA -n "animCurveTA407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 15.115370958430159 50 15.115370958430159 
		60 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.98770308494567871 0.98770308494567871 
		0.78413271903991699;
	setAttr -s 4 ".kiy[0:3]"  0 0.15634134411811829 -0.15634134411811829 
		-0.62059319019317627;
createNode animCurveTA -n "animCurveTA408";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA409";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA410";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA411";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 10.423754966968488 9 10.423754966968488 
		60 10.423754966968488;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA412";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.7228482558439 9 27.722848255843903 
		60 27.7228482558439;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA413";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 21.576484776388224 9 21.576484776388227 
		60 21.576484776388224;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA414";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA415";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA416";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.080064458283051 10 67.192248785462226 
		50 67.192248785462226 60 27.080064458283051;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.92196440696716309 0.92196440696716309 
		0.42988869547843933;
	setAttr -s 4 ".kiy[0:3]"  0 0.38727465271949768 -0.38727465271949768 
		-0.902881920337677;
createNode animCurveTA -n "animCurveTA417";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA418";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA419";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA420";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA421";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA422";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.994403295754109 9 13.994403295754109 
		60 13.994403295754109;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA423";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA424";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA425";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.994403295754109 9 13.994403295754109 
		60 13.994403295754109;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA426";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA427";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA428";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.911632519594587 10 55.279018713593231 
		50 55.279018713593231 60 27.911632519594587;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.96130108833312988 0.96130108833312988 
		0.57228374481201172;
	setAttr -s 4 ".kiy[0:3]"  0 0.27549988031387329 -0.27549988031387329 
		-0.82005566358566284;
createNode animCurveTA -n "animCurveTA429";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA430";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA431";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA432";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.6507300102495166 10 6.3236536703965802 
		50 7.0214176866588671 60 -0.6507300102495166;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99678808450698853 0.99734354019165039 
		0.92792767286300659;
	setAttr -s 4 ".kiy[0:3]"  0 0.08008449524641037 -0.072841554880142212 
		-0.37276032567024231;
createNode animCurveTA -n "animCurveTA433";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -4.2368721935960929 10 6.9342283547515615 
		50 6.8621161012451184 60 -4.2368721935960929;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99331313371658325 0.99322688579559326 
		0.86460250616073608;
	setAttr -s 4 ".kiy[0:3]"  0 0.1154511347413063 -0.11619114875793457 
		-0.50245648622512817;
createNode animCurveTA -n "animCurveTA434";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 8.7398866450636863 10 0.1044908688053426 
		12 1.3217209690329967 14 0.1044908688053426 16 1.3217209690329967 18 0.1044908688053426 
		20 1.3217209690329967 23 0.1044908688053426 26 1.3217209690329967 29 0.1044908688053426 
		32 1.3217209690329967 36 0.1044908688053426 40 1.3217209690329967 50 0.72027540605350671 
		60 8.7398866450636863;
	setAttr -s 15 ".kit[0:14]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9;
	setAttr -s 15 ".kix[0:14]"  0 0.95140296220779419 1 1 1 1 1 
		1 1 1 1 1 0.99973493814468384 0.98165899515151978 0.92201310396194458;
	setAttr -s 15 ".kiy[0:14]"  0 -0.30794873833656311 0 0 0 0 
		0 0 0 0 0 0 0.023024182766675949 0.19064518809318542 0.38715869188308716;
createNode animCurveTA -n "animCurveTA435";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 -9.570709688671819 50 -9.570709688671819 
		60 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99501508474349976 0.99501508474349976 
		0.89402586221694946;
	setAttr -s 4 ".kiy[0:3]"  0 -0.099724628031253815 0.099724628031253815 
		0.44801530241966248;
createNode animCurveTA -n "animCurveTA436";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 -6.3361945571336244 50 -6.3361945571336244 
		60 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.9978058934211731 0.9978058934211731 
		0.94912964105606079;
	setAttr -s 4 ".kiy[0:3]"  0 -0.066206887364387512 0.066206887364387512 
		0.31488549709320068;
createNode animCurveTA -n "animCurveTA437";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -15.452965173287607 60 -15.452965173287607;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA438";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 4.8714700432790465 9 -4.9367554394300077 
		60 4.8714700432790465;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.9949682354927063;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.10019085556268692;
	setAttr -s 3 ".kox[1:2]"  1 0.9949682354927063;
	setAttr -s 3 ".koy[1:2]"  0 0.10019085556268692;
createNode animCurveTA -n "animCurveTA439";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 11.783606204137087 9 -8.6986303327609935 
		60 11.783606204137087;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.97859758138656616;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.20578321814537048;
	setAttr -s 3 ".kox[1:2]"  1 0.97859758138656616;
	setAttr -s 3 ".koy[1:2]"  0 0.20578321814537048;
createNode animCurveTA -n "animCurveTA440";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.5423825101935931 9 17.455917002855632 
		60 7.5423825101935931;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99486047029495239;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.1012556180357933;
	setAttr -s 3 ".kox[1:2]"  1 0.99486047029495239;
	setAttr -s 3 ".koy[1:2]"  0 -0.1012556180357933;
createNode animCurveTA -n "animCurveTA441";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.8903601258661931 10 -0.64722709656317345 
		50 1.0527259485707507 60 -1.8903601258661931;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99952542781829834 0.99991530179977417 
		0.98833400011062622;
	setAttr -s 4 ".kiy[0:3]"  0 0.030805299058556557 -0.013016955927014351 
		-0.15230189263820648;
createNode animCurveTA -n "animCurveTA442";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.5597289571479034 10 4.5362068636446526 
		50 4.5111806380491659 60 2.5597289571479034;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99979126453399658 0.9997859001159668 
		0.99482035636901855;
	setAttr -s 4 ".kiy[0:3]"  0 0.020431289449334145 -0.020693197846412659 
		-0.10164852440357208;
createNode animCurveTA -n "animCurveTA443";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.0168110874036045 10 -0.02563471306874987 
		50 1.4186355726303357 60 2.0168110874036045;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.9999803900718689 0.9997713565826416 
		0.99950987100601196;
	setAttr -s 4 ".kiy[0:3]"  0 -0.0062639564275741577 0.021383551880717278 
		0.031305044889450073;
createNode animCurveTA -n "animCurveTA444";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA445";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA446";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 33.429092416277157 10 84.356784919957406 
		50 84.356784919957406 60 33.429092416277157;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.88236016035079956 0.88236016035079956 
		0.35113486647605896;
	setAttr -s 4 ".kiy[0:3]"  0 0.47057464718818665 -0.47057464718818665 
		-0.93632489442825317;
createNode animCurveTA -n "animCurveTA447";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.2533422302317216 10 6.8355305161438329 
		50 6.8355305161438329 60 8.2533422302317216;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.9998897910118103 0.9998897910118103 
		0.99725580215454102;
	setAttr -s 4 ".kiy[0:3]"  0 -0.014845653437077999 0.014845653437077999 
		0.074032731354236603;
createNode animCurveTA -n "animCurveTA448";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 23.263402056531085 10 35.29420794367595 
		50 35.29420794367595 60 23.263402056531085;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.992156982421875 0.992156982421875 
		0.84611767530441284;
	setAttr -s 4 ".kiy[0:3]"  0 0.12499819695949554 -0.12499819695949554 
		-0.53299617767333984;
createNode animCurveTA -n "animCurveTA449";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 20.166277752815617 10 18.034481280099516 
		50 18.034481280099516 60 20.166277752815617;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99975091218948364 0.99975091218948364 
		0.99382805824279785;
	setAttr -s 4 ".kiy[0:3]"  0 -0.022318560630083084 0.022318560630083084 
		0.11093167215585709;
createNode animCurveTA -n "animCurveTA450";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA451";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA452";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 17.254116939558369 10 53.374751096036299 
		50 53.374751096036299 60 17.254116939558369;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.93532460927963257 0.93532460927963257 
		0.46742701530456543;
	setAttr -s 4 ".kiy[0:3]"  0 0.35379067063331604 -0.35379067063331604 
		-0.88403165340423584;
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
	setAttr ".o" 60;
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
connectAttr "apu_shaking_fistSource.st" "clipLibrary2.st[0]";
connectAttr "apu_shaking_fistSource.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL122.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL123.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary2.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL125.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary2.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA340.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "apu_Hoop_Root_IK_FK_RFoot.a" "clipLibrary2.cel[0].cev[6].cevr"
		;
connectAttr "apu_Hoop_Root_IK_FK_LFoot.a" "clipLibrary2.cel[0].cev[7].cevr"
		;
connectAttr "apu_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary2.cel[0].cev[8].cevr"
		;
connectAttr "apu_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary2.cel[0].cev[9].cevr"
		;
connectAttr "animCurveTU29.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU30.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU31.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU32.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA341.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA342.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA343.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL127.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL128.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL129.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL130.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL131.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL132.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA344.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA345.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA346.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL133.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL134.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL135.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA347.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA348.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA349.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA350.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA351.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA352.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA353.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA354.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA355.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTL136.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTL137.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTL138.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTL139.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTL140.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTL141.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL142.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL143.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL144.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTA356.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTA357.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTA358.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTA359.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTA360.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTA361.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA362.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA363.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA364.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA365.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA366.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA367.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA368.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA369.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA370.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA371.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA372.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA373.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA374.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA375.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA376.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA377.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA378.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA379.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA380.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA381.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA382.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA383.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA384.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTL145.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTL146.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTL147.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA385.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA386.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA387.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL148.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL149.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL150.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA388.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA389.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA390.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL151.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL152.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL153.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA391.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA392.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA393.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL154.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL155.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL156.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA394.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA395.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA396.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL157.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL158.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL159.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTL160.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTL161.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTL162.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTA397.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTA398.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTA399.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTA400.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTA401.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTA402.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA403.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA404.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA405.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA406.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA407.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA408.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA409.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA410.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA411.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA412.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA413.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA414.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA415.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA416.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA417.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA418.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA419.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA420.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA421.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA422.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA423.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA424.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA425.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA426.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA427.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA428.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA429.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA430.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA431.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA432.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA433.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA434.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA435.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA436.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA437.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA438.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA439.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA440.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA441.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA442.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA443.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA444.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA445.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA446.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA447.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA448.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA449.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA450.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA451.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA452.a" "clipLibrary2.cel[0].cev[161].cevr";
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
// End of apu_shaking_fist.ma
