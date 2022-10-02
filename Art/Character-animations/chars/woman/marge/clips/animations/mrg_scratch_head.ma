//Maya ASCII 4.0 scene
//Name: mrg_scratch_head.ma
//Last modified: Wed, Feb 19, 2003 11:03:38 AM
requires maya "4.0";
requires "p3dmayaexp" "2.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mrg_scratch_headSource";
	setAttr ".ihi" 0;
	setAttr ".du" 60;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL165";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 1 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.016664352267980576;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.99986112117767334;
	setAttr -s 3 ".kox[1:2]"  1 0.016664352267980576;
	setAttr -s 3 ".koy[1:2]"  0 -0.99986112117767334;
createNode animCurveTL -n "animCurveTL166";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 -0.079815982092630827 1 -0.076578228567262652 
		2 -0.072908201717363078 3 -0.068991161540718701 4 -0.065012368035116147 5 
		-0.061157081198342005 6 -0.057610561028182884 7 -0.054558067522425382 8 -0.052184860678856131 
		9 -0.050676200495261725 10 -0.050217346969428762 11 -0.050320626693799754 
		12 -0.050375493777502944 13 -0.050382899680562809 14 -0.050343795863003797 
		15 -0.050259133784850349 16 -0.050129864906126906 17 -0.049956940686857944 
		18 -0.04974131258706789 19 -0.049483932066781221 20 -0.049185750586022377 
		21 -0.048847719604815806 22 -0.048470790583185965 23 -0.048055914981157292 
		24 -0.047604044258754259 25 -0.047116129876001292 26 -0.046593123292922874 
		27 -0.046035975969543445 28 -0.045445639365887434 29 -0.044823064941979331 
		30 -0.044169204157843547 31 -0.043485008473504561 32 -0.042771429348986818 
		33 -0.042029418244314769 34 -0.04125992661951286 35 -0.040463905934605554 
		36 -0.039642307649617285 37 -0.038796083224572529 38 -0.037926184119495721 
		39 -0.037033561794411307 40 -0.036119167709343751 41 -0.035497405914374926 
		42 -0.035450958780386121 43 -0.035933179171146169 44 -0.036897419950423886 
		45 -0.038297033981988089 46 -0.040085374129607609 47 -0.042215793257051271 
		48 -0.044641644228087911 49 -0.047316279906486333 50 -0.050193053156015369 
		51 -0.053225316840443834 52 -0.056366423823540582 53 -0.059569726969074407 
		54 -0.062788579140814135 55 -0.065976333202528589 56 -0.069086342017986635 
		57 -0.072071958450957041 58 -0.074886535365208631 59 -0.077483425624510313 
		60 -0.079815982092630827;
createNode animCurveTL -n "animCurveTL168";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "Motion_Root_translateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0 1 -2.6898445431811562e-005 
		2 -9.5638917090885554e-005 3 -0.00018828911802268097 4 -0.00028691675127265668 
		5 -0.00037358951988627169 6 -0.00043037512690898504 7 -0.00043934127538625551 
		8 -0.00038255566836354227 9 -0.00024208600888630391 10 0 11 0.00042282115954875939 
		12 0.001081817961834549 13 0.0019594091159288408 14 0.003038013330903107 
		15 0.0043000493158288208 16 0.0057279357797774544 17 0.0073040914318204773 
		18 0.0090109349810293653 19 0.01083088513647559 20 0.012746360607230625 21 
		0.014739780102365936 22 0.016793562330953003 23 0.018890126002063298 24 0.021011889824768287 
		25 0.023141272508139448 26 0.025260692761248246 27 0.027352569293166162 28 
		0.029399320812964667 29 0.031383366029715226 30 0.033287123652489321 31 0.035093012390358419 
		32 0.036783450952393992 33 0.038340858047667507 34 0.039747652385250451 35 
		0.040986252674214289 36 0.042039077623630482 37 0.042888545942570515 38 0.043517076340105869 
		39 0.043907087525307989 40 0.044040998207248376 41 0.043826298341641694 42 
		0.043204219243787652 43 0.042207791662135272 44 0.040870046345133575 45 0.039224014041231582 
		46 0.037302725498878309 47 0.035139211466522782 48 0.032766502692614025 49 
		0.03021762992560105 50 0.027525623913932883 51 0.024723515406058532 52 0.021844335150427035 
		53 0.01892111389548741 54 0.015986882389688668 55 0.013074671381479832 56 
		0.010217511619309927 57 0.0074484338516279712 58 0.0048004688268829809 59 
		0.0023066472935239909 60 0;
createNode animCurveTA -n "animCurveTA498";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_FK_RFoot1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  43 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_FK_LFoot1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  43 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_Rev_IK_Sim_RFoot1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  43 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_Rev_IK_Sim_LFoot1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  43 0;
createNode animCurveTU -n "animCurveTU29";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 1 40 1 60 0;
createNode animCurveTU -n "animCurveTU30";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 1 40 1 60 0;
createNode animCurveTU -n "animCurveTU31";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "animCurveTU32";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTA -n "animCurveTA499";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA500";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA501";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL170";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL171";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL172";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.17655026201706334 60 -0.17655026201706334;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.10676264329452093 60 0.10676264329452093;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.073147264740539078 60 -0.073147264740539078;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA502";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA503";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -25.948901905116401 60 -25.948901905116401;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA504";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.072059567379697237 60 0.072059567379697237;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.10860528941614173 60 0.10860528941614173;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.00088390886240813306 60 0.00088390886240813306;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA505";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA506";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA507";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA508";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA509";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA510";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA511";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA512";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA513";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA514";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA515";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA516";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA517";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA518";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA519";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL179";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL180";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL181";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.1269999742507935 10 1 60 1.1269999742507935;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.13011793792247772;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99149852991104126;
	setAttr -s 3 ".kox[1:2]"  1 0.13011793792247772;
	setAttr -s 3 ".koy[1:2]"  0 0.99149852991104126;
createNode animCurveTL -n "animCurveTL182";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL183";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL184";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.1269999742507935 10 1 60 1.1269999742507935;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.13011793792247772;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99149852991104126;
	setAttr -s 3 ".kox[1:2]"  1 0.13011793792247772;
	setAttr -s 3 ".koy[1:2]"  0 0.99149852991104126;
createNode animCurveTL -n "animCurveTL185";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.097247464600251146 10 -0.061184609193437878 
		40 -0.044007445515467002 60 -0.097247464600251146;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 0.90601718425750732 0.28363150358200073 
		0.12424878776073456;
	setAttr -s 4 ".kiy[0:3]"  0 -0.42324090003967285 0.95893335342407227 
		-0.99225109815597534;
	setAttr -s 4 ".kox[1:3]"  0.90601712465286255 0.28362998366355896 
		0.12424878776073456;
	setAttr -s 4 ".koy[1:3]"  -0.42324107885360718 0.95893377065658569 
		-0.99225109815597534;
createNode animCurveTL -n "animCurveTL186";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.9825577053607899 10 0.9912550528809112 
		60 0.9825577053607899;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.88654786348342896;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.46263691782951355;
	setAttr -s 3 ".kox[1:2]"  1 0.88654786348342896;
	setAttr -s 3 ".koy[1:2]"  0 -0.46263691782951355;
createNode animCurveTL -n "animCurveTL187";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 40 0.053659371241571635 
		60 0;
	setAttr -s 4 ".kit[0:3]"  1 1 9 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.6752123236656189 1 0.12329258024692535;
	setAttr -s 4 ".kiy[0:3]"  0 0.73762345314025879 0 -0.9923703670501709;
	setAttr -s 4 ".kox[1:3]"  0.67521071434020996 1 0.12329258024692535;
	setAttr -s 4 ".koy[1:3]"  0.7376248836517334 0 -0.9923703670501709;
createNode animCurveTA -n "animCurveTA520";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.62843630316474508 10 0 60 
		-0.62843630316474508;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99997836351394653;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.0065808272920548916;
	setAttr -s 3 ".kox[1:2]"  1 0.99997836351394653;
	setAttr -s 3 ".koy[1:2]"  0 -0.0065808272920548916;
createNode animCurveTA -n "animCurveTA521";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -5.8284402688137167 10 0 60 -5.8284402688137167;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.9981425404548645;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.060921914875507355;
	setAttr -s 3 ".kox[1:2]"  1 0.9981425404548645;
	setAttr -s 3 ".koy[1:2]"  0 -0.060921914875507355;
createNode animCurveTA -n "animCurveTA522";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.295636019309746 10 0 60 -1.295636019309746;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.9999079704284668;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.013566619716584682;
	setAttr -s 3 ".kox[1:2]"  1 0.9999079704284668;
	setAttr -s 3 ".koy[1:2]"  0 -0.013566619716584682;
createNode animCurveTA -n "animCurveTA523";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA524";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA525";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA526";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA527";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA528";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA529";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA530";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA531";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA532";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA533";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA534";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA535";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA536";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA537";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA538";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA539";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA540";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA541";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA542";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA543";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA544";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA545";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA546";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA547";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA548";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL188";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.43524234076486068 10 -0.22164053326398034 
		60 -0.43524234076486068;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.077790364623069763;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.99696975946426392;
	setAttr -s 3 ".kox[1:2]"  1 0.077790364623069763;
	setAttr -s 3 ".koy[1:2]"  0 -0.99696975946426392;
createNode animCurveTL -n "animCurveTL189";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.82665738350180629 10 -0.9417076481617882 
		60 -0.82665738350180629;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.14336769282817841;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.98966950178146362;
	setAttr -s 3 ".kox[1:2]"  1 0.14336769282817841;
	setAttr -s 3 ".koy[1:2]"  0 0.98966950178146362;
createNode animCurveTL -n "animCurveTL190";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.27773886459742925 10 0.038362195289875119 
		60 0.27773886459742925;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.069457121193408966;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99758493900299072;
	setAttr -s 3 ".kox[1:2]"  1 0.069457121193408966;
	setAttr -s 3 ".koy[1:2]"  0 0.99758493900299072;
createNode animCurveTA -n "animCurveTA549";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.8121934161072299e-015 10 6.7230119492284173 
		60 1.8121934161072299e-015;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99753087759017944;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.070229381322860718;
	setAttr -s 3 ".kox[1:2]"  1 0.99753087759017944;
	setAttr -s 3 ".koy[1:2]"  0 -0.070229381322860718;
createNode animCurveTA -n "animCurveTA550";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 28.652637602052774 10 19.839511008631867 
		60 28.652637602052774;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99576818943023682;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.091900289058685303;
	setAttr -s 3 ".kox[1:2]"  1 0.99576818943023682;
	setAttr -s 3 ".koy[1:2]"  0 0.091900289058685303;
createNode animCurveTA -n "animCurveTA551";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 64.676908227303443 10 76.90743997913691 
		60 64.676908227303443;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.9918975830078125;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.12704008817672729;
	setAttr -s 3 ".kox[1:2]"  1 0.9918975830078125;
	setAttr -s 3 ".koy[1:2]"  0 -0.12704008817672729;
createNode animCurveTL -n "animCurveTL191";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.5198069948790518 10 0.20623790699604494 
		60 0.5198069948790518;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.053076576441526413;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99859046936035156;
	setAttr -s 3 ".kox[1:2]"  1 0.053076576441526413;
	setAttr -s 3 ".koy[1:2]"  0 0.99859046936035156;
createNode animCurveTL -n "animCurveTL192";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.72394202659893114 10 -0.94615818397708606 
		60 -0.72394202659893114;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.074791982769966125;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99719917774200439;
	setAttr -s 3 ".kox[1:2]"  1 0.074791982769966125;
	setAttr -s 3 ".koy[1:2]"  0 0.99719917774200439;
createNode animCurveTL -n "animCurveTL193";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.36439499068905612 10 0.023808763748733922 
		60 0.36439499068905612;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.048876743763685226;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99880480766296387;
	setAttr -s 3 ".kox[1:2]"  1 0.048876743763685226;
	setAttr -s 3 ".koy[1:2]"  0 0.99880480766296387;
createNode animCurveTA -n "animCurveTA552";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.7976222737965317 10 8.1910546202722809 
		60 7.7976222737965317;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99999153614044189;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.0041199792176485062;
	setAttr -s 3 ".kox[1:2]"  1 0.99999153614044189;
	setAttr -s 3 ".koy[1:2]"  0 -0.0041199792176485062;
createNode animCurveTA -n "animCurveTA553";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -30.409274105849079 10 -16.680769289981995 
		60 -30.409274105849079;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.98982334136962891;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.1423015296459198;
	setAttr -s 3 ".kox[1:2]"  1 0.98982334136962891;
	setAttr -s 3 ".koy[1:2]"  0 -0.1423015296459198;
createNode animCurveTA -n "animCurveTA554";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -64.859940280210893 10 -64.609749241846473 
		60 -64.859940280210893;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99999654293060303;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.0026199854910373688;
	setAttr -s 3 ".kox[1:2]"  1 0.99999654293060303;
	setAttr -s 3 ".koy[1:2]"  0 -0.0026199854910373688;
createNode animCurveTL -n "animCurveTL194";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.65311611999272123 60 -0.65311611999272123;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL195";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.222264083594911 60 2.222264083594911;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL196";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.097994651149805143 60 -0.097994651149805143;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA555";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 5.4739599453216465 60 5.4739599453216465;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA556";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 8.5874521608419823 60 8.5874521608419823;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA557";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 74.754744621954103 60 74.754744621954103;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL197";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.25368378509166484 60 0.25368378509166484;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL198";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.2026421011163611 60 2.2026421011163611;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL199";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.0085295933619701936 60 0.0085295933619701936;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA558";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 16.226511010665412 60 16.226511010665412;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA559";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -8.5139660854992858 60 -8.5139660854992858;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA560";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -68.213989601412422 60 -68.213989601412422;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL200";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.245189189189189 10 0 60 -0.245189189189189;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.067818216979503632;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.99769771099090576;
	setAttr -s 3 ".kox[1:2]"  1 0.067818216979503632;
	setAttr -s 3 ".koy[1:2]"  0 -0.99769771099090576;
createNode animCurveTL -n "animCurveTL201";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL202";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 10 -1 60 -1;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.062337280601809833 10 0.062337280601809021 
		60 0.062337280601809833;
createNode animCurveTL -n "animCurveTL204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.40762644910266188 10 -1.1466563465352706 
		60 -0.40762644910266188;
createNode animCurveTL -n "animCurveTL205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.93129112588482243 10 -3.1103517865303192 
		60 -0.93129112588482243;
createNode animCurveTA -n "animCurveTA561";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 12.253734489678925 10 -94.403399312650208 
		13 -95.094181384534224 16 -94.373255767657199 19 -94.943463659569133 22 -94.433542857643232 
		25 -94.943463659569133 28 -94.403399312650208 40 -95.111359979063849 60 12.253734489678925;
	setAttr -s 10 ".kit[0:9]"  1 1 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[1:9]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 10 ".kix[0:9]"  0 0.99081951379776001 0.99999654293060303 
		0.99991351366043091 0.99998617172241211 1 0.99999654293060303 0.99998283386230469 
		0.49717229604721069 0.33518829941749573;
	setAttr -s 10 ".kiy[0:9]"  0 -0.13519145548343658 0.0026305115316063166 
		0.01315146591514349 -0.0052609685808420181 0 0.0026305115316063166 -0.0058605866506695747 
		0.86765182018280029 0.94215112924575806;
	setAttr -s 10 ".kox[1:9]"  0.99081951379776001 0.99999654293060303 
		0.99991351366043091 0.99998617172241211 1 0.99999654293060303 0.99998283386230469 
		0.49717229604721069 0.33518829941749573;
	setAttr -s 10 ".koy[1:9]"  -0.13519129157066345 0.0026305115316063166 
		0.01315146591514349 -0.0052609685808420181 0 0.0026305115316063166 -0.0058605866506695747 
		0.86765182018280029 0.94215112924575806;
createNode animCurveTA -n "animCurveTA562";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -65.746751280844975 10 1.5539394738194081 
		13 -12.397111228338572 16 3.6378760165779664 19 -11.382207067904206 22 2.9612732429550483 
		25 -14.261740155530269 28 2.9612732429550483 40 1.4216728960361551 60 -65.746751280844975;
	setAttr -s 10 ".kit[0:9]"  1 1 9 9 9 9 9 
		1 9 9;
	setAttr -s 10 ".kot[1:9]"  1 9 9 9 9 9 1 
		9 9;
	setAttr -s 10 ".kix[0:9]"  0 0.99841839075088501 0.98386305570602417 
		0.99610084295272827 0.99826139211654663 0.9698481559753418 1 0.94822233915328979 
		0.66461712121963501 0.49433526396751404;
	setAttr -s 10 ".kiy[0:9]"  0 0.056220583617687225 0.17892314493656158 
		0.08822176605463028 -0.058942075818777084 -0.24370990693569183 0 0.31760722398757935 
		-0.74718409776687622 -0.86927133798599243;
	setAttr -s 10 ".kox[1:9]"  0.99841839075088501 0.98386305570602417 
		0.99610084295272827 0.99826139211654663 0.9698481559753418 1 0.94822233915328979 
		0.66461712121963501 0.49433526396751404;
	setAttr -s 10 ".koy[1:9]"  0.056220568716526031 0.17892314493656158 
		0.08822176605463028 -0.058942075818777084 -0.24370990693569183 0 0.31760725378990173 
		-0.74718409776687622 -0.86927133798599243;
createNode animCurveTA -n "animCurveTA563";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 58.383869577657087 13 60.222019837741108 
		16 58.049206477303521 19 59.971022512475933 22 58.300203802568689 25 60.222019837741108 
		28 58.383869577657087 40 40.029831339824185 60 0;
	setAttr -s 10 ".kit[0:9]"  1 1 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[1:9]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 10 ".kix[0:9]"  0 0.90805763006210327 0.99957382678985596 
		0.9997602105140686 0.9997602105140686 0.9997602105140686 0.9999733567237854 
		0.81736892461776733 0.72308158874511719 0.69035178422927856;
	setAttr -s 10 ".kiy[0:9]"  0 0.41884529590606689 -0.029192419722676277 
		-0.02189839631319046 0.02189839631319046 0.02189839631319046 0.007301021832972765 
		-0.57611459493637085 -0.69076263904571533 -0.72347384691238403;
	setAttr -s 10 ".kox[1:9]"  0.90805763006210327 0.99957382678985596 
		0.9997602105140686 0.9997602105140686 0.9997602105140686 0.9999733567237854 
		0.81736892461776733 0.72308158874511719 0.69035178422927856;
	setAttr -s 10 ".koy[1:9]"  0.41884520649909973 -0.029192419722676277 
		-0.02189839631319046 0.02189839631319046 0.02189839631319046 0.007301021832972765 
		-0.57611459493637085 -0.69076263904571533 -0.72347384691238403;
createNode animCurveTA -n "animCurveTA564";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.061808866237340665 10 -0.061808866237337522 
		60 -0.061808866237340665;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA565";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -71.45606973001415 60 -71.45606973001415;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA566";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 16.57914742975785 10 16.579147429757843 
		60 16.57914742975785;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA567";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 8.5572674112203639 10 92.890572288783758 
		13 106.8866366107541 16 92.890572288783758 19 106.8866366107541 22 92.890572288783758 
		25 106.8866366107541 28 92.890572288783758 40 72.986421276382544 60 8.5572674112203639;
	setAttr -s 10 ".kit[0:9]"  1 1 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[1:9]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 10 ".kix[0:9]"  0 0.99762004613876343 1 1 1 1 1 
		0.64545750617980957 0.58680301904678345 0.50996983051300049;
	setAttr -s 10 ".kiy[0:9]"  0 0.068951278924942017 0 0 0 0 
		0 -0.76379621028900146 -0.80972975492477417 -0.86019229888916016;
	setAttr -s 10 ".kox[1:9]"  0.99762004613876343 1 1 1 1 1 0.64545750617980957 
		0.58680301904678345 0.50996983051300049;
	setAttr -s 10 ".koy[1:9]"  0.068951211869716644 0 0 0 0 0 
		-0.76379621028900146 -0.80972975492477417 -0.86019229888916016;
createNode animCurveTA -n "animCurveTA568";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 15.711328223519061 10 15.711328223519057 
		60 15.711328223519061;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA569";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 -14.641 13 -8.223885441597659 
		16 -14.376608227946123 19 -8.223885441597659 22 -14.376608227946123 25 -8.223885441597659 
		28 -14.376608227946123 40 -15.319286316984282 60 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		1 9 9;
	setAttr -s 10 ".kot[7:9]"  1 9 9;
	setAttr -s 10 ".kix[0:9]"  0 0.9492800235748291 0.99973392486572266 
		1 1 1 1 0.99993258714675903 0.97342962026596069 0.92813771963119507;
	setAttr -s 10 ".kiy[0:9]"  0 -0.31443196535110474 0.02306639589369297 
		0 0 0 0 -0.011610336601734161 0.22898638248443604 0.37223702669143677;
	setAttr -s 10 ".kox[7:9]"  0.99993258714675903 0.97342962026596069 
		0.92813771963119507;
	setAttr -s 10 ".koy[7:9]"  -0.011610297486186028 0.22898638248443604 
		0.37223702669143677;
createNode animCurveTA -n "animCurveTA570";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 17.025625321051574 13 12.380428053376002 
		16 17.025625321051574 19 12.380428053376002 22 17.025625321051574 25 12.380428053376002 
		28 17.025625321051574 40 26.023083754396467 60 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		1 9 9;
	setAttr -s 10 ".kot[7:9]"  1 9 9;
	setAttr -s 10 ".kix[0:9]"  0 0.89491194486618042 1 1 1 1 1 
		0.99978715181350708 0.96331804990768433 0.82643324136734009;
	setAttr -s 10 ".kiy[0:9]"  0 0.4462428092956543 0 0 0 0 0 
		0.020632531493902206 -0.26836225390434265 -0.56303471326828003;
	setAttr -s 10 ".kox[7:9]"  0.99978715181350708 0.96331804990768433 
		0.82643324136734009;
	setAttr -s 10 ".koy[7:9]"  0.020632538944482803 -0.26836225390434265 
		-0.56303471326828003;
createNode animCurveTA -n "animCurveTA571";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 -19.041318463876852 13 -8.4579966239639717 
		16 -24.609096988299559 19 -8.4579966239639717 22 -27.120055930686267 25 -8.4579966239639717 
		28 -27.120055930686267 40 -29.681099765133286 60 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		1 9 9;
	setAttr -s 10 ".kot[7:9]"  1 9 9;
	setAttr -s 10 ".kix[0:9]"  0 0.94658178091049194 0.89944946765899658 
		1 0.97682398557662964 1 1 0.9984620213508606 0.91404664516448975 0.78963088989257813;
	setAttr -s 10 ".kiy[0:9]"  0 -0.32246378064155579 -0.4370248019695282 
		0 -0.21404412388801575 0 0 -0.055439487099647522 0.40560901165008545 0.61358213424682617;
	setAttr -s 10 ".kox[7:9]"  0.9984620213508606 0.91404664516448975 
		0.78963088989257813;
	setAttr -s 10 ".koy[7:9]"  -0.055439509451389313 0.40560901165008545 
		0.61358213424682617;
createNode animCurveTA -n "animCurveTA572";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA573";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA574";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA575";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 10.423754966968488 10 10.423754966968488 
		60 10.423754966968488;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA576";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.7228482558439 10 27.722848255843903 
		60 27.7228482558439;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA577";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 21.576484776388224 10 21.576484776388227 
		60 21.576484776388224;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA578";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA579";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA580";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.080064458283051 10 27.080064458283051 
		60 27.080064458283051;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA581";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA582";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA583";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA584";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA585";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA586";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.994403295754109 10 13.994403295754109 
		60 13.994403295754109;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA587";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA588";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA589";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.994403295754109 10 13.994403295754109 
		60 13.994403295754109;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA590";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 10 0 13 -1.0566759136474175 
		16 0 19 -1.0566759136474175 22 0 25 -1.0566759136474175 28 0 31 0 40 0 60 
		0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[1:10]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 11 ".kix[0:10]"  0 0.99909555912017822 1 1 1 1 1 
		0.99577534198760986 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 -0.042521063238382339 0 0 0 0 
		0 0.091822810471057892 0 0 0;
	setAttr -s 11 ".kox[1:10]"  0.98341566324234009 1 1 1 1 1 0.99577534198760986 
		1 1 1;
	setAttr -s 11 ".koy[1:10]"  -0.18136616051197052 0 0 0 0 0 
		0.091822810471057892 0 0 0;
createNode animCurveTA -n "animCurveTA591";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 10 0 13 0.064341866925491167 
		16 0 19 0.064341866925491167 22 0 25 0.064341866925491167 28 0 31 0 40 0 
		60 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[1:10]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 11 ".kix[0:10]"  0 0.99999666213989258 1 1 1 1 1 
		0.9999842643737793 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 0.002591477707028389 0 0 0 0 
		0 -0.00561479851603508 0 0 0;
	setAttr -s 11 ".kox[1:10]"  0.99993693828582764 1 1 1 1 1 0.9999842643737793 
		1 1 1;
	setAttr -s 11 ".koy[1:10]"  0.011229065246880054 0 0 0 0 0 
		-0.00561479851603508 0 0 0;
createNode animCurveTA -n "animCurveTA592";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 27.911632519594587 10 27.911632519594587 
		13 38.512817069298855 16 27.911632519594587 19 38.512817069298855 22 27.911632519594587 
		25 38.512817069298855 28 27.911632519594587 31 27.911632519594587 40 27.911632519594587 
		60 27.911632519594587;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kix[0:10]"  0 0.91967344284057617 1 1 1 1 1 
		0.73405265808105469 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 0.39268410205841064 0 0 0 0 0 
		-0.67909258604049683 0 0 0;
createNode animCurveTA -n "animCurveTA593";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA594";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA595";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA596";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.71009266045615993 10 0 60 0.71009266045615993;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99997234344482422;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.0074358675628900528;
	setAttr -s 3 ".kox[1:2]"  1 0.99997234344482422;
	setAttr -s 3 ".koy[1:2]"  0 0.0074358675628900528;
createNode animCurveTA -n "animCurveTA597";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.39065484564574893 10 0 60 0.39065484564574893;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99999165534973145;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.0040908940136432648;
	setAttr -s 3 ".kox[1:2]"  1 0.99999165534973145;
	setAttr -s 3 ".koy[1:2]"  0 0.0040908940136432648;
createNode animCurveTA -n "animCurveTA598";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.1445984161934586 10 0 60 8.1445984161934586;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99638253450393677;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.08498150110244751;
	setAttr -s 3 ".kox[1:2]"  1 0.99638253450393677;
	setAttr -s 3 ".koy[1:2]"  0 0.08498150110244751;
createNode animCurveTA -n "animCurveTA599";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 19.874478172618979 40 19.874478172618979 
		60 0;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 0.9992707371711731 0.99939239025115967 
		0.88710325956344604;
	setAttr -s 4 ".kiy[0:3]"  0 0.038183487951755524 -0.034855306148529053 
		-0.46157100796699524;
	setAttr -s 4 ".kox[1:3]"  0.9992707371711731 0.99939239025115967 
		0.88710325956344604;
	setAttr -s 4 ".koy[1:3]"  0.03818347305059433 -0.03485531359910965 
		-0.46157100796699524;
createNode animCurveTA -n "animCurveTA600";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 22.7519159243489 13 22.586489628460725 
		16 24.389727836871362 19 22.586489628460725 22 24.389727836871362 25 22.586489628460725 
		28 24.389727836871362 40 22.7519159243489 60 0;
	setAttr -s 10 ".kit[0:9]"  1 1 1 9 9 9 9 
		9 1 9;
	setAttr -s 10 ".kot[1:9]"  1 1 9 9 9 9 9 
		1 9;
	setAttr -s 10 ".kix[0:9]"  0 0.99815309047698975 0.99875915050506592 
		1 1 1 1 0.99998331069946289 0.99986302852630615 0.85913968086242676;
	setAttr -s 10 ".kiy[0:9]"  0 0.060748275369405746 0.049800615757703781 
		0 0 0 0 0.0057743708603084087 -0.016551172360777855 -0.51174116134643555;
	setAttr -s 10 ".kox[1:9]"  0.99815309047698975 0.99875915050506592 
		1 1 1 1 0.99998331069946289 0.99986302852630615 0.85913968086242676;
	setAttr -s 10 ".koy[1:9]"  0.060748260468244553 0.049800600856542587 
		0 0 0 0 0.0057743708603084087 -0.016551163047552109 -0.51174116134643555;
createNode animCurveTA -n "animCurveTA601";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 26.895392240767496 40 26.895392240767496 
		60 0;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99728846549987793 0.98903733491897583 
		0.817646324634552;
	setAttr -s 4 ".kiy[0:3]"  0 0.073591403663158417 -0.14766550064086914 
		-0.57572090625762939;
	setAttr -s 4 ".kox[1:3]"  0.99728846549987793 0.98903733491897583 
		0.817646324634552;
	setAttr -s 4 ".koy[1:3]"  0.073591411113739014 -0.14766548573970795 
		-0.57572090625762939;
createNode animCurveTA -n "animCurveTA602";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.0270270270270276 10 -4.9367554394300077 
		60 -2.0270270270270276;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99953609704971313;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.03045647032558918;
	setAttr -s 3 ".kox[1:2]"  1 0.99953609704971313;
	setAttr -s 3 ".koy[1:2]"  0 0.03045647032558918;
createNode animCurveTA -n "animCurveTA603";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.4108692476260059 10 -8.6986303327609935 
		60 -2.4108692476260059;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99783921241760254;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.065703004598617554;
	setAttr -s 3 ".kox[1:2]"  1 0.99783921241760254;
	setAttr -s 3 ".koy[1:2]"  0 0.065703004598617554;
createNode animCurveTA -n "animCurveTA604";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.0432985235726 10 17.455917002855632 
		60 13.0432985235726;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99893409013748169;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.04615958034992218;
	setAttr -s 3 ".kox[1:2]"  1 0.99893409013748169;
	setAttr -s 3 ".koy[1:2]"  0 -0.04615958034992218;
createNode animCurveTA -n "animCurveTA605";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA606";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA607";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -10.382821061592265 10 0 60 -10.382821061592265;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99414092302322388;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.10809160023927689;
	setAttr -s 3 ".kox[1:2]"  1 0.99414092302322388;
	setAttr -s 3 ".koy[1:2]"  0 -0.10809160023927689;
createNode animCurveTA -n "animCurveTA608";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA609";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA610";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 33.429092416277157 10 33.429092416277157 
		13 36.033014869531556 16 33.429092416277157 19 36.033014869531556 22 33.429092416277157 
		25 36.033014869531556 28 33.429092416277157 31 33.429092416277157 40 33.429092416277157 
		60 33.429092416277157;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kix[0:10]"  0 0.99454528093338013 1 1 1 1 1 
		0.97514081001281738 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 0.10430566221475601 0 0 0 0 0 
		-0.22158622741699219 0 0 0;
createNode animCurveTA -n "animCurveTA611";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.2533422302317216 10 8.2533422302317216 
		60 8.2533422302317216;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA612";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 23.263402056531085 10 23.263402056531085 
		60 23.263402056531085;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA613";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 20.166277752815617 10 20.166277752815617 
		60 20.166277752815617;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA614";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA615";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA616";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 17.254116939558369 10 17.254116939558369 
		60 17.254116939558369;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA617";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA618";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA619";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA620";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA621";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA622";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA623";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA624";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA625";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode clipLibrary -n "clipLibrary2";
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
	setAttr ".o" 43;
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
connectAttr "mrg_scratch_headSource.st" "clipLibrary2.st[0]";
connectAttr "mrg_scratch_headSource.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL165.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL166.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX1.a" "clipLibrary2.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL168.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ1.a" "clipLibrary2.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA498.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "mrg_Hoop_Root_IK_FK_RFoot1.a" "clipLibrary2.cel[0].cev[6].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_FK_LFoot1.a" "clipLibrary2.cel[0].cev[7].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_Rev_IK_Sim_RFoot1.a" "clipLibrary2.cel[0].cev[8].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_Rev_IK_Sim_LFoot1.a" "clipLibrary2.cel[0].cev[9].cevr"
		;
connectAttr "animCurveTU29.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU30.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU31.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU32.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA499.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA500.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA501.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL170.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL171.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL172.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL173.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL174.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL175.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA502.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA503.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA504.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL176.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL177.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL178.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA505.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA506.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA507.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA508.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA509.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA510.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA511.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA512.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA513.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTA514.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTA515.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTA516.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTA517.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTA518.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTA519.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL179.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL180.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL181.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTL182.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTL183.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTL184.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTL185.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTL186.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTL187.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA520.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA521.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA522.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA523.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA524.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA525.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA526.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA527.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA528.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA529.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA530.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA531.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA532.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA533.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA534.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA535.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA536.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA537.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA538.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA539.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA540.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA541.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA542.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTA543.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTA544.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTA545.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA546.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA547.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA548.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL188.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL189.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL190.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA549.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA550.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA551.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL191.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL192.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL193.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA552.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA553.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA554.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL194.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL195.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL196.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA555.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA556.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA557.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL197.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL198.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL199.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTA558.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTA559.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTA560.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTL200.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTL201.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTL202.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTL203.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTL204.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTL205.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA561.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA562.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA563.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA564.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA565.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA566.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA567.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA568.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA569.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA570.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA571.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA572.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA573.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA574.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA575.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA576.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA577.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA578.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA579.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA580.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA581.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA582.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA583.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA584.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA585.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA586.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA587.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA588.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA589.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA590.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA591.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA592.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA593.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA594.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA595.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA596.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA597.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA598.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA599.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA600.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA601.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA602.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA603.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA604.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA605.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA606.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA607.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA608.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA609.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA610.a" "clipLibrary2.cel[0].cev[161].cevr";
connectAttr "animCurveTA611.a" "clipLibrary2.cel[0].cev[162].cevr";
connectAttr "animCurveTA612.a" "clipLibrary2.cel[0].cev[163].cevr";
connectAttr "animCurveTA613.a" "clipLibrary2.cel[0].cev[164].cevr";
connectAttr "animCurveTA614.a" "clipLibrary2.cel[0].cev[165].cevr";
connectAttr "animCurveTA615.a" "clipLibrary2.cel[0].cev[166].cevr";
connectAttr "animCurveTA616.a" "clipLibrary2.cel[0].cev[167].cevr";
connectAttr "animCurveTA617.a" "clipLibrary2.cel[0].cev[168].cevr";
connectAttr "animCurveTA618.a" "clipLibrary2.cel[0].cev[169].cevr";
connectAttr "animCurveTA619.a" "clipLibrary2.cel[0].cev[170].cevr";
connectAttr "animCurveTA620.a" "clipLibrary2.cel[0].cev[171].cevr";
connectAttr "animCurveTA621.a" "clipLibrary2.cel[0].cev[172].cevr";
connectAttr "animCurveTA622.a" "clipLibrary2.cel[0].cev[173].cevr";
connectAttr "animCurveTA623.a" "clipLibrary2.cel[0].cev[174].cevr";
connectAttr "animCurveTA624.a" "clipLibrary2.cel[0].cev[175].cevr";
connectAttr "animCurveTA625.a" "clipLibrary2.cel[0].cev[176].cevr";
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
// End of mrg_scratch_head.ma
