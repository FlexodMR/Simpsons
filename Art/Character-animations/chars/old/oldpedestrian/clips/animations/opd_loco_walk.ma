//Maya ASCII 4.0 scene
//Name: opd_loco_walk.ma
//Last modified: Wed, Aug 14, 2002 11:06:26 AM
requires maya "4.0";
requires "p3dSimpleShader" "18.0";
currentUnit -l meter -a degree -t film;
createNode animClip -n "opd_loco_walkSource";
	setAttr ".ihi" 0;
	setAttr ".du" 40;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL206";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 3.2000000000000002 1 3.2040000000000002 
		0 11.196 0 11.2 1 24 1;
createNode animCurveTL -n "animCurveTL207";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.79600000000000004 0 0.80000000000000004 
		1 13.6 1 13.604 0 24 0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 3;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 3;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 -0.0039361386572682238 1 -0.0039361386572682238 
		2 -0.0039361386572682238 3 -0.0039361386572682238 4 -0.0039361386572682238 
		5 -0.0039361386572682238 6 -0.0039361386572682238 7 -0.0039361386572682238 
		8 -0.0039361386572682238 9 -0.0039361386572682238 10 -0.0039361386572682238 
		11 -0.0039361386572682238 12 -0.0039361386572682238 13 -0.0039361386572682238 
		14 -0.0039361386572682238 15 -0.0039361386572682238 16 -0.0039361386572682238 
		17 -0.0039361386572682238 18 -0.0039361386572682238 19 -0.0039361386572682238 
		20 -0.0039361386572682238 21 -0.0039361386572682238 22 -0.0039361386572682238 
		23 -0.0039361386572682238 24 -0.0039361386572682238 25 -0.0039361386572682238 
		26 -0.0039361386572682238 27 -0.0039361386572682238 28 -0.0039361386572682238 
		29 -0.0039361386572682238 30 -0.0039361386572682238 31 -0.0039361386572682238 
		32 -0.0039361386572682238 33 -0.0039361386572682238 34 -0.0039361386572682238 
		35 -0.0039361386572682238 36 -0.0039361386572682238 37 -0.0039361386572682238 
		38 -0.0039361386572682238 39 -0.0039361386572682238 40 -0.0039361386572682238;
createNode animCurveTL -n "opd_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  18 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 0.037014276769325394 1 0.07787687820419717 
		2 0.11873948000032732 3 0.15960208212487417 4 0.200464684544996 5 0.24132728722785118 
		6 0.28218989014059809 7 0.32305249325039498 8 0.36391509652440024 9 0.40477769992977208 
		10 0.445640303433669 11 0.48650290700324911 12 0.52736551060567105 13 0.56822811420809283 
		14 0.60909071777767299 15 0.6499533212815698 16 0.69081592468694142 17 0.73167852796094635 
		18 0.77254113107074307 19 0.81340373398348964 20 0.85426633666634433 21 0.89512893908646574 
		22 0.93599154121101225 23 0.97685414300714191 24 1.017716744442013 25 1.0585793458768848 
		26 1.0994419476730146 27 1.1403045497975617 28 1.1811671522176834 29 1.2220297549005388 
		30 1.2628923578132856 31 1.3037549609230825 32 1.3446175641970877 33 1.3854801676024595 
		34 1.4263427711063565 35 1.4672053746759366 36 1.5080679782783586 37 1.5489305818807804 
		38 1.5897931854503606 39 1.6306557889542572 40 1.6715183923596288;
createNode animCurveTA -n "opd_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  18 0;
createNode animCurveTU -n "animCurveTU41";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU42";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU43";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU44";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU45";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU46";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU47";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU48";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA567";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA568";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA569";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.22712004907384792 4 -0.22712004907384792 
		8 -0.22712004907384792 12 -0.22712004907384792 16 -0.22712004907384792 20 
		-0.22712004907384792 24 -0.22712004907384792;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL215";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.11742609903756819 4 0.24636383476478976 
		8 0.28201060935803973 12 0.10746949179817282 16 0.10746949179817282 20 0.10746949179817282 
		24 0.10746949179817282;
	setAttr -s 7 ".kit[1:6]"  1 9 3 3 9 3;
	setAttr -s 7 ".kot[1:6]"  1 9 3 3 9 3;
	setAttr -s 7 ".kix[1:6]"  0.0082898689433932304 0.023992149159312248 
		1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0.99996566772460938 -0.99971216917037964 
		0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  0.0082899723201990128 0.023992149159312248 
		1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0.9999656081199646 -0.99971216917037964 
		0 0 0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL216";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.2791985960448875 4 -0.10297451805665084 
		8 0.59308056567220002 12 0.95665712093509625 16 1.0347111662180428 20 1.0347111662180428 
		24 1.0347111662180428;
	setAttr -s 7 ".kit[0:6]"  3 1 1 1 3 9 3;
	setAttr -s 7 ".kot[0:6]"  3 1 1 1 3 9 3;
	setAttr -s 7 ".kix[1:6]"  0.0057956036180257797 0.0026969679165631533 
		0.009320099838078022 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0.99998319149017334 0.9999963641166687 
		0.99995654821395874 0 0 0;
	setAttr -s 7 ".kox[1:6]"  0.0057955901138484478 0.0026969905011355877 
		0.0093201370909810066 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0.99998319149017334 0.9999963641166687 
		0.99995654821395874 0 0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA570";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 45.952631183994399 8 54.362914341073882 
		12 -20.316792104559379 16 -1.1023793759034133 20 -1.1023793759034133 24 0;
	setAttr -s 7 ".kit[1:6]"  1 9 1 3 3 9;
	setAttr -s 7 ".kot[1:6]"  1 9 1 3 3 9;
	setAttr -s 7 ".kix[1:6]"  0.20858076214790344 0.27692523598670959 
		0.96985322237014771 1 1 0.99340254068374634;
	setAttr -s 7 ".kiy[1:6]"  0.97800517082214355 -0.9608914852142334 
		0.24368971586227417 0 0 0.11467928439378738;
	setAttr -s 7 ".kox[1:6]"  0.20858082175254822 0.27692523598670959 
		0.9698527455329895 1 1 0.99340254068374634;
	setAttr -s 7 ".koy[1:6]"  0.97800511121749878 -0.9608914852142334 
		0.24369169771671295 0 0 0.11467928439378738;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA571";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -6.6601936810973017 4 -6.6601936810973141 
		8 -6.6601936810973141 12 -6.6601936810973141 16 -6.6601936810973159 20 -6.6601936810973159 
		24 -6.6601936810973017;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA572";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 12 0 16 0 20 0 24 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.17113167764383544 4 0.17113167764383544 
		8 0.17113167764383544 12 0.17113167764383544 16 0.17113167764383544 20 0.17113167764383544 
		24 0.17113167764383544;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL218";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.121 4 0.121 8 0.121 12 0.121 
		16 0.2744675931052159 20 0.34293966378608831 24 0.121;
	setAttr -s 7 ".kit[4:6]"  1 9 3;
	setAttr -s 7 ".kot[4:6]"  1 9 3;
	setAttr -s 7 ".kix[4:6]"  0.0086689507588744164 0.021714989095926285 
		1;
	setAttr -s 7 ".kiy[4:6]"  0.9999624490737915 -0.99976420402526855 
		0;
	setAttr -s 7 ".kox[4:6]"  0.0086690355092287064 0.021714989095926285 
		1;
	setAttr -s 7 ".koy[4:6]"  0.9999624490737915 -0.99976420402526855 
		0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL219";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.39700000000000002 4 0.39700000000000002 
		8 0.39700000000000002 12 0.39700000000000002 16 0.39700000000000002 20 0.95566118832005575 
		24 1.7068711768382889;
	setAttr -s 7 ".kit[5:6]"  1 3;
	setAttr -s 7 ".kot[5:6]"  1 3;
	setAttr -s 7 ".kix[5:6]"  0.0013688594335690141 1;
	setAttr -s 7 ".kiy[5:6]"  0.99999904632568359 0;
	setAttr -s 7 ".kox[5:6]"  0.0013688924955204129 1;
	setAttr -s 7 ".koy[5:6]"  0.99999904632568359 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA573";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -21.346586890289334 4 0.16770457905359093 
		8 0.16770457905359093 12 0.16770457905359093 16 35.658171308918838 20 67.524129560579439 
		24 -21.346586890289334;
	setAttr -s 7 ".kit[4:6]"  1 9 9;
	setAttr -s 7 ".kot[4:6]"  1 9 9;
	setAttr -s 7 ".kix[4:6]"  0.15571820735931396 0.31767961382865906 
		0.10683656483888626;
	setAttr -s 7 ".kiy[4:6]"  0.98780149221420288 -0.94819813966751099 
		-0.99427658319473267;
	setAttr -s 7 ".kox[4:6]"  0.15571820735931396 0.31767961382865906 
		0.10683656483888626;
	setAttr -s 7 ".koy[4:6]"  0.98780149221420288 -0.94819813966751099 
		-0.99427658319473267;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA574";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 12.864087651322865 4 12.864087651322849 
		8 12.864087651322849 12 12.864087651322849 16 12.864087651322846 20 12.864087651322846 
		24 12.864087651322865;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 3 3 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 3 3 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA575";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.6437643349617042 4 1.6437643349617119 
		8 1.6437643349617119 12 1.6437643349617119 16 1.6437643349617161 20 1.6437643349617257 
		24 1.6437643349617042;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 3 3 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 3 3 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA576";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA577";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA578";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA579";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA580";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA581";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA582";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA583";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA584";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA585";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA586";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA587";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 -0.037586190709041845 8 -0.11107277364777787 
		12 -0.03086244578153019 13.6 -0.0093699791820866934 17.600000000000001 0 
		20 0;
	setAttr -s 7 ".kit[0:6]"  3 1 9 9 1 9 9;
	setAttr -s 7 ".kot[0:6]"  3 1 9 9 1 9 9;
	setAttr -s 7 ".kix[1:6]"  0.022688806056976318 0.44416871666908264 
		0.022936629131436348 0.05420057475566864 0.27372735738754272 1;
	setAttr -s 7 ".kiy[1:6]"  -0.99974256753921509 0.89594316482543945 
		0.99973690509796143 0.99853008985519409 0.96180731058120728 0;
	setAttr -s 7 ".kox[1:6]"  0.022689223289489746 0.44416871666908264 
		0.022936629131436348 0.054201200604438782 0.27372735738754272 1;
	setAttr -s 7 ".koy[1:6]"  -0.99974256753921509 0.89594316482543945 
		0.99973690509796143 0.99853003025054932 0.96180731058120728 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0.010540885969283001 
		12 0 13.6 0 17.600000000000001 0 20 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 4 1 8 1.0075568577481531 12 
		1 13.6 1 17.600000000000001 1 20 1;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -0.0034852718120216707 0.80000000000000004 
		-0.0034852718120216707 1.6000000000000001 -0.0034852718120216707 2.4 -0.0034852718120216707 
		3.2000000000000002 -0.0034852718120216707 4 -0.0034852718120216707 4.8 -0.0034852718120216707 
		5.6 -0.0034852718120216707 6.4000000000000004 -0.0034852718120216707 7.2000000000000002 
		-0.0034852718120216707 8 -0.0034852718120216707 8.8000000000000007 -0.0034852718120216707 
		9.6 -0.0034852718120216707 10.4 -0.0034852718120216707 11.2 -0.0034852718120216707 
		12 -0.0034852718120216707 12.800000000000001 -0.0034852718120216707 13.6 
		-0.0034852718120216707 14.4 -0.0034852718120216707 15.2 -0.0034852718120216707 
		16 -0.0034852718120216707 16.8 -0.0034852718120216707 17.600000000000001 
		-0.0034852718120216707 18.4 -0.0034852718120216707 19.2 -0.0034852718120216707 
		20 -0.0034852718120216707 20.8 -0.0034852718120216707 21.600000000000001 
		-0.0034852718120216707 22.4 -0.0034852718120216707 23.2 -0.0034852718120216707 
		24 -0.0034852718120216707;
createNode animCurveTL -n "animCurveTL224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0 0.80000000000000004 0 1.6000000000000001 
		0 2.4 0 3.2000000000000002 0 4 0 4.8 0 5.6 0 6.4000000000000004 0 7.2000000000000002 
		0 8 0 8.8000000000000007 0 9.6 0 10.4 0 11.2 0 12 0 12.800000000000001 0 
		13.6 0 14.4 0 15.2 0 16 0 16.8 0 17.600000000000001 0 18.4 0 19.2 0 20 0 
		20.8 0 21.600000000000001 0 22.4 0 23.2 0 24 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0.032774459108112525 0.80000000000000004 
		0.061720039580155969 1.6000000000000001 0.090665620260643467 2.4 0.11961120113468614 
		3.2000000000000002 0.14855678218739513 4 0.17750236340388156 4.8 0.20644794476925662 
		5.6 0.23539352626863147 6.4000000000000004 0.26433910788711712 7.2000000000000002 
		0.29328468960982479 8 0.32223027142186561 8.8000000000000007 0.35117585330835077 
		9.6 0.38012143525439124 10.4 0.40906701724509836 11.2 0.43801259926558334 
		12 0.46695818130095695 12.800000000000001 0.49590376333633063 13.6 0.52484934535681538 
		14.4 0.55379492734752245 15.2 0.58274050929356291 16 0.61168609118004791 
		16.8 0.64063167299208856 17.600000000000001 0.66957725471479612 18.4 0.69852283633328138 
		19.2 0.72746841783265614 20 0.75641399919803076 20.8 0.78535958041451692 
		21.600000000000001 0.81430516146722565 22.4 0.84325074234126784 23.2 0.87219632302175498 
		24 0.90114190349379808;
createNode animCurveTL -n "animCurveTL226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.0051828179555656355 4 -0.0051828179555656355 
		8 -0.0051828179555656355 12 -0.0051828179555656355 16 -0.0051828179555656355 
		20 -0.0051828179555656355 24 -0.0051828179555656355;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL227";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.91270476904158226 4 0.93720460482816659 
		8 0.94865004903977279 12 0.91006317523859881 16 0.92474528316954918 20 0.95099568698893455 
		24 0.91270476904158226;
	setAttr -s 7 ".kit[0:6]"  3 1 1 1 1 9 3;
	setAttr -s 7 ".kot[0:6]"  3 1 1 1 1 9 3;
	setAttr -s 7 ".kix[1:6]"  0.060863524675369263 0.1120229959487915 
		0.4311644434928894 0.030526034533977509 0.26680749654769897 1;
	setAttr -s 7 ".kiy[1:6]"  0.99814611673355103 -0.9937056303024292 
		-0.90227335691452026 0.99953395128250122 -0.96374982595443726 0;
	setAttr -s 7 ".kox[1:6]"  0.060863111168146133 0.11202277988195419 
		0.43116381764411926 0.03052593395113945 0.26680749654769897 1;
	setAttr -s 7 ".koy[1:6]"  0.99814611673355103 -0.9937056303024292 
		-0.90227365493774414 0.99953395128250122 -0.96374982595443726 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.048737677951994719 24 1.3400545753219466;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA588";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.017481297663853493 4 0.75495874061884594 
		8 1.6598751625859147 12 1.9968756513110959 16 1.687717847049262 20 0.87787150391735813 
		24 0.017481297663853493;
	setAttr -s 7 ".kit[0:6]"  3 1 9 1 9 1 3;
	setAttr -s 7 ".kot[0:6]"  3 1 9 1 9 1 3;
	setAttr -s 7 ".kix[1:6]"  0.99376332759857178 0.99789243936538696 
		0.99997234344482422 0.99828797578811646 0.99486231803894043 1;
	setAttr -s 7 ".kiy[1:6]"  0.11150985211133957 0.064889572560787201 
		0.0074410769157111645 -0.058490611612796783 -0.10123731940984726 0;
	setAttr -s 7 ".kox[1:6]"  0.99376332759857178 0.99789243936538696 
		0.99997234344482422 0.99828797578811646 0.99486231803894043 1;
	setAttr -s 7 ".koy[1:6]"  0.11150985211133957 0.064889572560787201 
		0.0074410941451787949 -0.058490611612796783 -0.10123737156391144 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA589";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.62803185506048198 4 -2.3164019226791592 
		8 -3.6387171052969998 12 -4.1883907499716546 16 -3.6387171052969998 20 -2.3164019226791592 
		24 -0.62803185506048198;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA590";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.5944511152083107 4 -1.1914061351135672 
		8 -0.67344746148252055 12 -0.39633673882566273 16 -0.67344746148252055 20 
		-1.1914061351135672 24 -1.5944511152083107;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA591";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA592";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA593";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.0984482521620249;
createNode animCurveTA -n "animCurveTA594";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 18.588300303494186;
createNode animCurveTA -n "animCurveTA595";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA596";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA597";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -22.686733334985114;
createNode animCurveTA -n "animCurveTA598";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA599";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA600";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0579251312417477e-005;
createNode animCurveTA -n "animCurveTA601";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA602";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA603";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.0984482535121209;
createNode animCurveTA -n "animCurveTA604";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 18.588300300216801;
createNode animCurveTA -n "animCurveTA605";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA606";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA607";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -22.686733333057838;
createNode animCurveTA -n "animCurveTA608";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA609";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA610";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0579251312417477e-005;
createNode animCurveTA -n "animCurveTA611";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1.6000000000000001 0 8.8000000000000007 
		0 16 0 19.2 0;
	setAttr -s 5 ".kit[2:4]"  3 9 9;
	setAttr -s 5 ".kot[2:4]"  3 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA612";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1.6000000000000001 0 8.8000000000000007 
		0 16 0 19.2 0;
	setAttr -s 5 ".kit[2:4]"  3 9 9;
	setAttr -s 5 ".kot[2:4]"  3 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA613";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.0579251312417477e-005 1.6000000000000001 
		-8.7344250225594706 3.2000000000000002 -24.562661898122339 6.4000000000000004 
		-29.86184391130433 8.8000000000000007 -23.619988621910551 12.800000000000001 
		0 16 0 19.2 1.0579251312417477e-005 24 0;
	setAttr -s 9 ".kit[0:8]"  3 1 1 9 9 3 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 1 1 9 9 3 9 
		9 9;
	setAttr -s 9 ".kix[1:8]"  0.31565594673156738 0.33944827318191528 
		0.99752324819564819 0.45549285411834717 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  -0.94887369871139526 -0.94062471389770508 
		0.070337153971195221 0.890239417552948 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  0.31565597653388977 0.33944809436798096 
		0.99752324819564819 0.45549285411834717 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  -0.94887369871139526 -0.94062477350234985 
		0.070337153971195221 0.890239417552948 0 0 0 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA614";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3.2000000000000002 0 6.4000000000000004 
		0 10.4 0 12.800000000000001 0 16 0 19.2 0 24 0;
	setAttr -s 8 ".kit[3:7]"  3 9 9 9 9;
	setAttr -s 8 ".kot[3:7]"  3 9 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA615";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3.2000000000000002 0 6.4000000000000004 
		0 10.4 0 12.800000000000001 0 16 0 19.2 0 24 0;
	setAttr -s 8 ".kit[3:7]"  3 9 9 9 9;
	setAttr -s 8 ".kot[3:7]"  3 9 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA616";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.0579251312417477e-005 3.2000000000000002 
		1.0579251312417477e-005 6.4000000000000004 1.0579251312417477e-005 10.4 1.0579251312417477e-005 
		12.800000000000001 0 16 -23.367012926965039 19.2 1.0579251312417477e-005 
		24 1.0579251312417477e-005;
	setAttr -s 8 ".kit[3:7]"  3 3 9 3 9;
	setAttr -s 8 ".kot[3:7]"  3 3 9 3 9;
	setAttr ".pst" 3;
createNode animCurveTL -n "animCurveTL229";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.31571821937874306 5.6 -0.39663731387315709 
		10.4 -0.38295347347054054 15.2 -0.38204540365976897 19.2 -0.39663731387315709 
		24 -0.31571821937874306;
createNode animCurveTL -n "animCurveTL230";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.8036677434328291 5.6 -0.88916982907809072 
		10.4 -0.88332318738272508 15.2 -0.88379362534279982 19.2 -0.88916982907809072 
		24 -0.8036677434328291;
createNode animCurveTL -n "animCurveTL231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.35003244667218797 5.6 0.080198705494766764 
		10.4 -0.073383483687937748 15.2 -0.12454936861267242 19.2 0.080198705494766764 
		24 0.35003244667218797;
createNode animCurveTA -n "animCurveTA617";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 16.925082974147045 5.6 4.126070937433937 
		10.4 2.336763691512318 15.2 7.0496181768321424 19.2 4.126070937433937 24 
		16.925082974147045;
createNode animCurveTA -n "animCurveTA618";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 16.493902036187059 5.6 12.72658605626485 
		10.4 -7.9987619556327791 15.2 -13.078667814672489 19.2 12.72658605626485 
		24 16.493902036187059;
createNode animCurveTA -n "animCurveTA619";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 81.476911891648243 5.6 82.206445502279522 
		10.4 84.599830391224842 15.2 81.651313320286363 19.2 82.206445502279522 24 
		81.476911891648243;
createNode animCurveTL -n "animCurveTL232";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.542941600552861 5.6 0.4218392841230218 
		10.4 0.3500988352138778 15.2 0.32716929367362274 19.2 0.4218392841230218 
		24 0.542941600552861;
createNode animCurveTL -n "animCurveTL233";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.83610808479150722 5.6 -0.84829323907601739 
		10.4 -0.76331665479038535 15.2 -0.73200324177590737 19.2 -0.84829323907601739 
		24 -0.83610808479150722;
createNode animCurveTL -n "animCurveTL234";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.015082681083538496 5.6 0.18876014052858314 
		10.4 0.44789379768174042 15.2 0.50540658540187933 19.2 0.18876014052858314 
		24 -0.015082681083538496;
createNode animCurveTA -n "animCurveTA620";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5.6 1.1451874412376712 10.4 
		3.7711883796179686 15.2 5.0760140554862563 19.2 1.1451874412376712 24 0;
createNode animCurveTA -n "animCurveTA621";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5.6 -6.2205666849833774 10.4 
		-19.949690244427195 15.2 -35.335781258476537 19.2 -6.2205666849833774 24 
		0;
createNode animCurveTA -n "animCurveTA622";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -63.460406843916772 5.6 -84.960810489321702 
		10.4 -83.699810786644093 15.2 -88.61588501556966 19.2 -84.960810489321702 
		24 -63.460406843916772;
createNode animCurveTL -n "animCurveTL235";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.8091891372350974 24 -1.8091891372350974;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL236";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.8536629786602403 24 2.8536629786602403;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL237";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.15898405984075725 24 -0.15898405984075725;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA623";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA624";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA625";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL238";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.8091892394754774 24 1.8091892394754774;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL239";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.8536581165404047 24 2.8536581165404047;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL240";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.1589841173218719 24 -0.1589841173218719;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA626";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA627";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA628";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL241";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10.4 0.31938091504765564 15.2 
		0.27468620934211563 19.2 0.21420759711070886 24 0;
createNode animCurveTL -n "animCurveTL242";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10.4 -0.0052119729068525267 
		15.2 -0.0044826006158898901 19.2 -0.0034956509613461666 24 0;
createNode animCurveTL -n "animCurveTL243";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1 10.4 -0.99362040902940363 
		15.2 -0.99451317976067743 19.2 -0.9957212319479517 24 -1;
createNode animCurveTL -n "animCurveTL244";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10.4 -0.16094833692358854 15.2 
		-0.13842495405902144 19.2 -0.10794745317741632 24 0;
createNode animCurveTL -n "animCurveTL245";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10.4 0.0026265137706284213 
		15.2 0.0022589549977274502 19.2 0.0017615930488344548 24 0;
createNode animCurveTL -n "animCurveTL246";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1 10.4 -1.0032149214577113 15.2 
		-1.0027650198906455 19.2 -1.0021562358880507 24 -1;
createNode animCurveTA -n "animCurveTA629";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -52.651179398772506;
createNode animCurveTA -n "animCurveTA630";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -55.820198073255327;
createNode animCurveTA -n "animCurveTA631";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 58.120373119521346;
createNode animCurveTA -n "animCurveTA632";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 35.54451258669436;
createNode animCurveTA -n "animCurveTA633";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -52.895218011495807;
createNode animCurveTA -n "animCurveTA634";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -41.635609040376174;
createNode animCurveTA -n "animCurveTA635";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 17.713838053218517;
createNode animCurveTA -n "animCurveTA636";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 13.806304146770293;
createNode animCurveTA -n "animCurveTA637";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -3.5283751313905176 4 -3.6928418553387341 
		16.8 -3.6928418553387341 24 -3.5283751313905176;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA638";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.2625160042055776 4 0.63627196529319308 
		16.8 0.63627196529319308 24 1.2625160042055776;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA639";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 4.3879019571193743 4 -5.5132389444145549 
		16.8 -5.5132389444145549 24 4.3879019571193743;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA640";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 3.4893607003251463 4 3.4893607003251463 
		16.8 -11.833197256621254 24 3.4893607003251463;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA641";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.59877089259728322 4 -0.59877089259728322 
		16.8 -1.3257337769522137 24 -0.59877089259728322;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA642";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -5.0808191234713727 4 -5.0808191234713727 
		16.8 7.1602918811790701 24 -5.0808191234713727;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA643";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -29.008974896990431 24 -29.008974896990431;
createNode animCurveTA -n "animCurveTA644";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 19.121175982408229 24 19.121175982408229;
createNode animCurveTA -n "animCurveTA645";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 18.989800450806971 24 18.989800450806971;
createNode animCurveTA -n "animCurveTA646";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -7.6785820447977198 24 -7.6785820447977198;
createNode animCurveTA -n "animCurveTA647";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.7605391839518916 24 2.7605391839518916;
createNode animCurveTA -n "animCurveTA648";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 28.344788980746365 24 28.344788980746365;
createNode animCurveTA -n "animCurveTA649";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA650";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA651";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA652";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 3.7369773590038604 4 10.217596128632959 
		12.800000000000001 10.217596128632959 24 3.7369773590038604;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA653";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.659639826495585 4 26.093159977788364 
		12.800000000000001 26.093159977788364 24 27.659639826495585;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA654";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 7.2144708350701849 4 21.489643652879568 
		12.800000000000001 21.489643652879568 24 7.2144708350701849;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA655";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 10.940041621791822 4 14.242534406706035 
		12.800000000000001 14.242534406706035 24 10.940041621791822;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA656";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 25.143086799181098 4 23.511048863515079 
		12.800000000000001 23.511048863515079 24 25.143086799181098;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA657";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 23.668193569167805 4 31.673384476202461 
		12.800000000000001 31.673384476202461 24 23.668193569167805;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA658";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "animCurveTA659";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "animCurveTA660";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 26.049252495284946 24 26.049252495284946;
createNode animCurveTA -n "animCurveTA661";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 0 11.2 0 24 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA662";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 0 11.2 0 24 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA663";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -26.770100963031059 4 -26.770100963031059 
		11.2 -26.770100963031059 24 -26.770100963031059;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA664";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.70474241558254858 11.2 5.2721452989102415 
		24 0.70474241558254858;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTA -n "animCurveTA665";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -7.7611077633822836 11.2 1.3053023904490137 
		24 -7.7611077633822836;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTA -n "animCurveTA666";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 11.59391757503257 11.2 11.929530683952345 
		24 11.59391757503257;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTA -n "animCurveTA667";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "animCurveTA668";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "animCurveTA669";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "animCurveTA670";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 4.0874139394684663 0.80000000000000004 
		3.9950932334548286 1.6000000000000001 3.7546911889622128 2.4 3.420891759117981 
		3.2000000000000002 3.0483073968743009 4 2.6916497487104722 4.8 2.3494408553254953 
		5.6 1.9950877588358575 6.4000000000000004 1.6459408757476666 7.2000000000000002 
		1.319507683241691 8 1.0333909393338545 8.8000000000000007 0.78664990145614389 
		9.6 0.57680129441154959 10.4 0.41912078112315948 11.2 0.32882774145005417 
		12 0.31525028041970043 12.800000000000001 0.37935194910278147 13.6 0.51141778182784658 
		14.4 0.69732456578450364 15.2 0.92291693315037626 16 1.174027421657774 16.8 
		1.4548587502725852 17.600000000000001 1.7686176069010342 18.4 2.0996957090644983 
		19.2 2.4325760216721743 20 2.7518613925610906 20.8 3.0875471003565074 21.600000000000001 
		3.4433841979710018 22.4 3.7648877173467512 23.2 3.9976963591213277 24 4.0874139394684663;
createNode animCurveTA -n "animCurveTA671";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 3.0987566170060683 0.80000000000000004 
		3.0056864993678718 1.6000000000000001 2.7745506257037871 2.4 2.4772157401181474 
		3.2000000000000002 2.1854881044722765 4 1.9713718893238183 4.8 1.8259367671100368 
		5.6 1.6932172701955612 6.4000000000000004 1.5752032779312084 7.2000000000000002 
		1.4742328594200893 8 1.3929347032679606 8.8000000000000007 1.3252548100613839 
		9.6 1.264314007424779 10.4 1.2116417770263939 11.2 1.1686545259407393 12 
		1.1404292623647574 12.800000000000001 1.134136166978718 13.6 1.1488473902442149 
		14.4 1.1821091534598496 15.2 1.2314409696913367 16 1.2944060239695385 16.8 
		1.3769923056774407 17.600000000000001 1.484302467911176 18.4 1.6127758760289488 
		19.2 1.7590558334676838 20 1.9200068527106036 20.8 2.1497847178477576 21.600000000000001 
		2.4555838057842201 22.4 2.7642721051719858 23.2 3.0029580889590388 24 3.0987566170060683;
createNode animCurveTA -n "animCurveTA672";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 5.0324348042042848 0.80000000000000004 
		4.9837104795231166 1.6000000000000001 4.8535383809728208 2.4 4.6665888897054728 
		3.2000000000000002 4.4471340474614971 4 4.2179717193786317 4.8 3.9970329958081443 
		5.6 3.7925131447178924 6.4000000000000004 3.6103645459054983 7.2000000000000002 
		3.4554327438702916 8 3.3315183973525744 8.8000000000000007 3.2367645164870233 
		9.6 3.1645039905035817 10.4 3.1105524325896043 11.2 3.0710413451278078 12 
		3.0443164240139247 12.800000000000001 3.0407518457671809 13.6 3.0673750714107442 
		14.4 3.120226778939835 15.2 3.1953698979017631 16 3.288646428105594 16.8 
		3.4043475941925432 17.600000000000001 3.5476422654199582 18.4 3.7149227350168412 
		19.2 3.9019163647161563 20 4.1036992817658762 20.8 4.3323696429351317 21.600000000000001 
		4.5786681603529091 22.4 4.8040468658473561 23.2 4.9687106606482594 24 5.0324348042042848;
createNode animCurveTA -n "animCurveTA673";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11.2 0.98672997639488791 24 
		0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTA -n "animCurveTA674";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.2710204402575629 11.2 -1.3485860325613512 
		24 7.2710204402575629;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTA -n "animCurveTA675";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -4.7112509744539084 11.2 -5.2925321591292889 
		24 -4.7112509744539084;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTA -n "animCurveTA676";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -7.2356183565074765 24 -7.2356183565074765;
createNode animCurveTA -n "animCurveTA677";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 3.775875410252576 24 3.775875410252576;
createNode animCurveTA -n "animCurveTA678";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 36.102571754571038 24 36.102571754571038;
createNode animCurveTA -n "animCurveTA679";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -35.160370854790166 24 -35.160370854790166;
createNode animCurveTA -n "animCurveTA680";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 20.563693271869273 24 20.563693271869273;
createNode animCurveTA -n "animCurveTA681";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 22.57991983767285 24 22.57991983767285;
createNode animCurveTA -n "animCurveTA682";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "animCurveTA683";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "animCurveTA684";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 21.110481929355618 24 21.110481929355618;
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
select -ne :time1;
	setAttr ".o" 18;
select -ne :renderPartition;
	setAttr -s 22 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 22 ".s";
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
select -ne :characterPartition;
	setAttr -s 2 ".st";
select -ne :hyperGraphLayout;
	setAttr ".cch" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".img" -type "string" "";
	setAttr ".ims" 1;
select -ne :ikSystem;
connectAttr "opd_loco_walkSource.st" "clipLibrary1.st[0]";
connectAttr "opd_loco_walkSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL206.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL207.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "opd_Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "opd_Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr"
		;
connectAttr "animCurveTU41.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU42.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU43.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU44.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU45.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU46.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU47.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU48.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA567.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA568.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA569.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL211.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL212.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL213.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL214.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL215.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL216.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA570.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA571.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA572.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL217.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL218.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL219.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA573.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA574.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA575.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA576.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA577.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA578.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA579.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA580.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA581.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA582.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA583.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA584.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA585.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA586.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA587.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL220.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL221.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL222.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL223.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL224.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL225.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL226.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL227.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL228.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA588.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA589.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA590.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA591.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA592.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA593.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA594.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA595.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA596.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA597.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA598.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA599.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA600.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA601.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA602.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA603.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA604.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA605.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA606.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA607.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA608.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA609.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA610.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA611.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA612.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA613.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA614.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA615.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA616.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL229.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL230.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL231.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA617.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA618.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA619.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL232.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL233.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL234.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA620.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA621.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA622.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL235.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL236.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL237.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA623.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA624.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA625.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL238.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL239.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL240.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA626.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA627.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA628.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL241.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL242.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL243.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL244.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL245.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL246.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA629.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA630.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA631.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA632.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA633.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA634.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA635.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA636.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA637.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA638.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA639.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA640.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA641.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA642.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA643.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA644.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA645.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA646.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA647.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA648.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA649.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA650.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA651.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA652.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA653.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA654.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA655.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA656.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA657.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA658.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA659.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA660.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA661.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA662.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA663.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA664.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA665.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA666.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA667.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA668.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA669.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA670.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA671.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA672.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA673.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA674.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA675.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA676.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA677.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA678.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA679.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA680.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA681.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA682.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA683.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA684.a" "clipLibrary1.cel[0].cev[167].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[3].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[3].olnk";
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
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of opd_loco_walk.ma
