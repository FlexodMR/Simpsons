//Maya ASCII 4.0 scene
//Name: hom_jump_run_land.ma
//Last modified: Thu, Jul 25, 2002 02:09:16 PM
requires maya "4.0";
requires "p3dmayaexp" "17.9.1.0";
requires "p3dSimpleShader" "17.1";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "hom_jump_run_landSource";
	setAttr ".ihi" 0;
	setAttr ".du" 14;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL516";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL517";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 0.020522575400564586 2 0.026283542913892767 
		3 0.026493931517315297 4 0.02799610903405924 5 0.030305673516780134 6 0.032366431485972076 
		7 0.033122189462129185 8 0.031516753965745554 9 0.026493931517315297 10 0.016350244006858874 
		11 0.0014463899712948661 12 -0.016177559098535462 13 -0.034481531711790858 
		14 -0.051425456377630012;
createNode animCurveTL -n "animCurveTL519";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 
		9 0 10 0 11 0 12 0 13 0 14 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 6.1715474635972285 2 6.20661889638723 
		3 6.2086705780587925 4 6.2085984085444421 5 6.2050816242981952 6 6.1997460076853832 
		7 6.1942173410713375 8 6.1901214068213868 9 6.1890839873008678 10 6.191974573408662 
		11 6.1977535476145773 12 6.2051830296403301 13 6.2130251392076357 14 6.2200419960382112;
createNode animCurveTA -n "animCurveTA1458";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 
		9 0 10 0 11 0 12 0 13 0 14 0;
createNode animCurveTU -n "animCurveTU105";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU106";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU107";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU108";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU109";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 3 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "animCurveTU110";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 3 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "animCurveTU111";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 3 1 14 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "animCurveTU112";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 3 1 14 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1459";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1460";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1461";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL521";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL522";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL523";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL524";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -0.26454016861507795 3 -0.26454016861507795 
		9 -0.26454016861507795 14 -0.26454016861507795;
	setAttr -s 4 ".kit[0:3]"  3 9 9 1;
	setAttr -s 4 ".kot[0:3]"  3 9 9 5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "animCurveTL525";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0.13800000000000001 3 0.13800000000000001 
		9 0.13800000000000001 14 0.13806192026723146;
	setAttr -s 4 ".kit[2:3]"  9 1;
	setAttr -s 4 ".kot[2:3]"  9 5;
	setAttr -s 4 ".kix[3]"  0.99931055307388306;
	setAttr -s 4 ".kiy[3]"  0.037126544862985611;
createNode animCurveTL -n "animCurveTL526";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 9.212 3 9.2123583849667199 9 
		9.212 14 9.212;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  3 9 9 9;
createNode animCurveTA -n "animCurveTA1462";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 0 9 0 14 0;
	setAttr -s 4 ".kit[1:3]"  9 3 1;
	setAttr -s 4 ".kot[1:3]"  9 3 5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1463";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -3.7525764787581517 3 -16.429641161471228 
		9 -24.978227070199218 14 -25.948901905116401;
	setAttr -s 4 ".kit[0:3]"  9 1 1 1;
	setAttr -s 4 ".kot[0:3]"  9 1 1 5;
	setAttr -s 4 ".kix[1:3]"  0.49151849746704102 0.956673264503479 
		1;
	setAttr -s 4 ".kiy[1:3]"  -0.87086713314056396 -0.29116368293762207 
		0;
	setAttr -s 4 ".kox[1:3]"  0.49151849746704102 0.95667320489883423 
		0;
	setAttr -s 4 ".koy[1:3]"  -0.87086713314056396 -0.29116374254226685 
		0;
createNode animCurveTA -n "animCurveTA1464";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 0 9 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "animCurveTL527";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0.21594587158542247 3 0.21594587158542247 
		9 0.21594587158542247 14 0.21594587158542247;
	setAttr -s 4 ".kit[2:3]"  9 1;
	setAttr -s 4 ".kot[2:3]"  9 5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "animCurveTL528";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0.13800000000000001 3 0.13800000000000001 
		9 0.13800000000000001 14 0.1380615615975922;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 5;
	setAttr -s 4 ".kix[0:3]"  0.10696107149124146 1 0.99985909461975098 
		0.99931854009628296;
	setAttr -s 4 ".kiy[0:3]"  -0.99426323175430298 0 0.01678716205060482 
		0.03691178560256958;
	setAttr -s 4 ".kox[0:3]"  0.10696099698543549 1 0.99985909461975098 
		0;
	setAttr -s 4 ".koy[0:3]"  -0.99426323175430298 0 0.01678716205060482 
		0;
createNode animCurveTL -n "animCurveTL529";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 9.3747774517797797 3 9.375 9 
		9.375 14 9.375;
createNode animCurveTA -n "animCurveTA1465";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 0 9 0 14 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 1;
	setAttr -s 4 ".kot[0:3]"  3 9 9 5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1466";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 0 9 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1467";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 0 9 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1468";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1469";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1470";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1471";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1472";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1473";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL530";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 0 9 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "animCurveTL531";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 0 9 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "animCurveTL532";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 3 1 9 1 14 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "animCurveTL533";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 0 9 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "animCurveTL534";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 0 9 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "animCurveTL535";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 3 1 9 1 14 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "animCurveTL536";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0.03051835782609956 3 0.03939813919472121 
		9 0.03939813919472121 14 -0.076472881617957691;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.014382322318851948;
	setAttr -s 4 ".kiy[3]"  -0.9998965859413147;
createNode animCurveTL -n "animCurveTL537";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0.6772959304381142 3 0.57343699945878546 
		9 0.61678692073698771 14 0.93105416142265018;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 5;
	setAttr -s 4 ".kix[0:3]"  0.0062057436443865299 0.044027835130691528 
		0.010252511128783226 0.0053032678551971912;
	setAttr -s 4 ".kiy[0:3]"  -0.99998074769973755 -0.99903029203414917 
		0.99994742870330811 0.99998593330383301;
	setAttr -s 4 ".kox[0:3]"  0.0062057902105152607 0.044027835130691528 
		0.010252511128783226 0;
	setAttr -s 4 ".koy[0:3]"  -0.99998074769973755 -0.99903029203414917 
		0.99994742870330811 0;
createNode animCurveTL -n "animCurveTL538";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 9.1774784674264556 3 9.2326828688548499 
		9 9.2035563789442687 14 9.2495928811760368;
createNode animCurveTA -n "animCurveTA1474";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -11.722674222649985 3 -11.722674222649985 
		9 -11.722674222649983 14 -0.6284363031647453;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.65236330032348633;
	setAttr -s 4 ".kiy[3]"  0.75790643692016602;
createNode animCurveTA -n "animCurveTA1475";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 0 9 0 14 -5.8284402688137167;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.85356968641281128;
	setAttr -s 4 ".kiy[3]"  -0.52097868919372559;
createNode animCurveTA -n "animCurveTA1476";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 0 9 0 14 -1.295636019309746;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.9909207820892334;
	setAttr -s 4 ".kiy[3]"  -0.13444682955741882;
createNode animCurveTA -n "animCurveTA1477";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1478";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1479";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1480";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1481";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1482";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1483";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1484";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1485";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1486";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1487";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1488";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1489";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1490";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1491";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1492";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1493";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1494";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1495";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1496";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1497";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1498";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1499";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1500";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1501";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1502";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL545";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.99544192467212878 3 -0.98061208805004418 
		9 -0.92287094496223643 14 -0.98071836797454492;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 5;
	setAttr -s 4 ".kix[2:3]"  0.049708213657140732 1;
	setAttr -s 4 ".kiy[2:3]"  -0.9987637996673584 0;
	setAttr -s 4 ".kox[2:3]"  0.049708165228366852 0;
	setAttr -s 4 ".koy[2:3]"  -0.9987637996673584 0;
createNode animCurveTL -n "animCurveTL546";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.5083677558895667 3 1.0425815020990148 
		9 1.1108486434876108 14 1.6432964864655397;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 5;
	setAttr -s 4 ".kix[2:3]"  0.0051633897237479687 1;
	setAttr -s 4 ".kiy[2:3]"  0.99998664855957031 0;
	setAttr -s 4 ".kox[2:3]"  0.0051633543334901333 0;
	setAttr -s 4 ".koy[2:3]"  0.99998664855957031 0;
createNode animCurveTL -n "animCurveTL547";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 15.12558016518426 3 15.498174415127771 
		9 15.406793904496677 14 15.056117372358514;
createNode animCurveTA -n "animCurveTA1509";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -42.867554010787885 3 -38.134762363532673 
		9 0.84516848667927391 14 5.4739599453216465;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 5;
	setAttr -s 4 ".kix[2:3]"  0.47622326016426086 1;
	setAttr -s 4 ".kiy[2:3]"  0.87932437658309937 0;
	setAttr -s 4 ".kox[2:3]"  0.47622323036193848 0;
	setAttr -s 4 ".koy[2:3]"  0.87932443618774414 0;
createNode animCurveTA -n "animCurveTA1510";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 28.149690506654711 3 27.83960258319113 
		9 21.560322259711064 14 8.5874521608419858;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 5;
	setAttr -s 4 ".kix[2:3]"  0.55313801765441895 1;
	setAttr -s 4 ".kiy[2:3]"  -0.83308959007263184 0;
	setAttr -s 4 ".kox[2:3]"  0.55313795804977417 0;
	setAttr -s 4 ".koy[2:3]"  -0.83308964967727661 0;
createNode animCurveTA -n "animCurveTA1511";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 30.109428848425473 3 31.359956923713636 
		9 56.68315006067558 14 74.754744621954103;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "animCurveTL548";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.94773552123998839 3 0.92493013705870175 
		9 0.85311970967631501 14 0.76309120872911718;
	setAttr -s 4 ".kit[1:3]"  3 9 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "animCurveTL549";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.0273212857329665 3 0.9496728776772112 
		9 1.0529223531298446 14 1.6150490657878991;
	setAttr -s 4 ".kit[1:3]"  3 9 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "animCurveTL550";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 15.306138279259349 3 15.665766683636255 
		9 15.513354351012259 14 15.297255022675106;
	setAttr -s 4 ".kit[1:3]"  3 9 9;
	setAttr -s 4 ".kot[1:3]"  3 9 9;
createNode animCurveTA -n "animCurveTA1512";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -2.1513976318227264 3 -2.1513976318227264 
		9 -2.1513976318227264 14 16.226511010665412;
	setAttr -s 4 ".kit[1:3]"  3 9 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[3]"  0.46107849478721619;
	setAttr -s 4 ".kiy[3]"  0.8873593807220459;
createNode animCurveTA -n "animCurveTA1513";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -29.430271342549375 3 -29.430271342549375 
		9 -29.430271342549375 14 -8.5139660854992858;
	setAttr -s 4 ".kit[1:3]"  3 9 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[3]"  0.41531211137771606;
	setAttr -s 4 ".kiy[3]"  0.90967899560928345;
createNode animCurveTA -n "animCurveTA1514";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -43.400827249869813 3 -43.400827249869813 
		9 -43.40082724986982 14 -68.213989601412422;
	setAttr -s 4 ".kit[1:3]"  3 9 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[3]"  0.35916823148727417;
	setAttr -s 4 ".kiy[3]"  -0.9332728385925293;
createNode animCurveTL -n "animCurveTL551";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0.44879925919486569 3 0.44879925919486569 
		9 0.44879925919486569 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.003713587298989296;
	setAttr -s 4 ".kiy[3]"  -0.99999308586120605;
createNode animCurveTL -n "animCurveTL552";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -2.1086769476633807 3 -2.1086769476633807 
		9 -2.1086769476633807 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.00079038483090698719;
	setAttr -s 4 ".kiy[3]"  0.99999970197677612;
createNode animCurveTL -n "animCurveTL553";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -0.18536689079245133 3 -0.18536689079245133 
		9 -0.18536689079245133 14 -1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.0020459066145122051;
	setAttr -s 4 ".kiy[3]"  -0.99999791383743286;
createNode animCurveTL -n "animCurveTL554";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -0.5126104209518183 3 -0.5126104209518183 
		9 -0.5126104209518183 14 -0.10167917362943307;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.0040557952597737312;
	setAttr -s 4 ".kiy[3]"  0.999991774559021;
createNode animCurveTL -n "animCurveTL555";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -1.3386630780291868 3 -1.3386630780291868 
		9 -1.3386630780291868 14 -0.40762644910266188;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.0017901165410876274;
	setAttr -s 4 ".kiy[3]"  0.99999839067459106;
createNode animCurveTL -n "animCurveTL556";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -0.049199106950677696 3 -0.049199106950677696 
		9 -0.049199106950677696 14 -0.93129112588482243;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.0018894441891461611;
	setAttr -s 4 ".kiy[3]"  -0.99999821186065674;
createNode animCurveTA -n "animCurveTA1515";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -42.771826393301765 3 -22.78039507191296 
		9 -22.78039507191296 14 12.253734489678918;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.26297730207443237;
	setAttr -s 4 ".kiy[3]"  0.96480202674865723;
createNode animCurveTA -n "animCurveTA1516";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -50.50902704873203 3 -59.78589307060367 
		9 -59.78589307060367 14 -65.746751280844961;
	setAttr -s 4 ".kit[1:3]"  1 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[1:3]"  1 0.962024986743927 0.84829568862915039;
	setAttr -s 4 ".kiy[1:3]"  0 -0.2729613184928894 -0.52952277660369873;
createNode animCurveTA -n "animCurveTA1517";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 34.78650961055213 3 34.574435665981952 
		9 34.574435665981952 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.26622748374938965;
	setAttr -s 4 ".kiy[3]"  -0.96391022205352783;
createNode animCurveTA -n "animCurveTA1518";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -18.096320074856848 3 -4.3077020824181265 
		9 -4.3077020824181256 14 -0.061808866237340665;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.91374897956848145;
	setAttr -s 4 ".kiy[3]"  0.40627920627593994;
createNode animCurveTA -n "animCurveTA1519";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -49.220253033269849 3 -49.658336589859132 
		9 -49.658336589859147 14 -59.058178941076754;
	setAttr -s 4 ".kit[1:3]"  1 9 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[1:3]"  1 0.91279679536819458 0.71266168355941772;
	setAttr -s 4 ".kiy[1:3]"  0 -0.40841400623321533 -0.70150792598724365;
createNode animCurveTA -n "animCurveTA1520";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 22.481085713744079 3 45.957278122761899 
		9 45.957278122761892 14 16.57914742975785;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.30912721157073975;
	setAttr -s 4 ".kiy[3]"  -0.95102071762084961;
createNode animCurveTA -n "animCurveTA1521";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 44.432703580981681 3 64.255341242982553 
		9 64.255341242982553 14 8.5572674112203639;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.16898195445537567;
	setAttr -s 4 ".kiy[3]"  -0.98561912775039673;
createNode animCurveTA -n "animCurveTA1522";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 50.842923737118142 3 72.208811687058059 
		9 72.208811687058059 14 15.711328223519065;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.16665782034397125;
	setAttr -s 4 ".kiy[3]"  -0.98601478338241577;
createNode animCurveTA -n "animCurveTA1523";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 60.563198486797667 3 72.79493678537078 
		9 72.794936785370766 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.13006643950939178;
	setAttr -s 4 ".kiy[3]"  -0.99150526523590088;
createNode animCurveTA -n "animCurveTA1524";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 26.360430176523643 3 35.224795679311441 
		9 35.224795679311441 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.26165154576301575;
	setAttr -s 4 ".kiy[3]"  -0.96516239643096924;
createNode animCurveTA -n "animCurveTA1525";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 33.197555990358396 3 56.771965155298119 
		9 56.771965155298119 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.16587428748607635;
	setAttr -s 4 ".kiy[3]"  -0.98614692687988281;
createNode animCurveTA -n "animCurveTA1526";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 59.556508727470074 3 59.556508727470074 
		9 59.556508727470074 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.1583179235458374;
	setAttr -s 4 ".kiy[3]"  -0.98738819360733032;
createNode animCurveTA -n "animCurveTA1527";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 36.028288837490415 3 36.028288837490415 
		9 36.028288837490415 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.25620338320732117;
	setAttr -s 4 ".kiy[3]"  -0.96662288904190063;
createNode animCurveTA -n "animCurveTA1528";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 13.094680882304901 3 13.094680882304901 
		9 13.094680882304898 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.58921617269515991;
	setAttr -s 4 ".kiy[3]"  -0.80797547101974487;
createNode animCurveTA -n "animCurveTA1529";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 10.967667985987509 3 10.967667985987509 
		9 10.967667985987504 14 10.423754966968493;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.99838179349899292;
	setAttr -s 4 ".kiy[3]"  -0.056866269558668137;
createNode animCurveTA -n "animCurveTA1530";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 53.910048648242878 3 53.910048648242878 
		9 53.910048648242871 14 27.7228482558439;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.34258827567100525;
	setAttr -s 4 ".kiy[3]"  -0.93948566913604736;
createNode animCurveTA -n "animCurveTA1531";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 43.127820754253513 3 43.127820754253513 
		9 43.127820754253491 14 21.576484776388227;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.405108243227005;
	setAttr -s 4 ".kiy[3]"  -0.91426873207092285;
createNode animCurveTA -n "animCurveTA1532";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 0 9 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1533";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 0 9 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1534";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 59.219502482153104 3 59.219502482153104 
		9 59.219502482153118 14 27.080064458283047;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.28481486439704895;
	setAttr -s 4 ".kiy[3]"  -0.95858252048492432;
createNode animCurveTA -n "animCurveTA1535";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1536";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1537";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1538";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1539";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1540";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 13.994403295754111;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1541";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1542";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1543";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 13.994403295754111;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1544";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 0 9 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1545";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 0 9 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1546";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 66.672206829852314 3 66.672206829852314 
		9 66.672206829852328 14 27.91163251959459;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.2392134815454483;
	setAttr -s 4 ".kiy[3]"  -0.97096699476242065;
createNode animCurveTA -n "animCurveTA1547";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 0 9 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1548";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 0 9 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1549";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 0 9 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1550";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -1.5829914574537056 3 -1.7049747317397197 
		9 -1.704974731739719 14 -0.65073001024951682;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.99396103620529175;
	setAttr -s 4 ".kiy[3]"  0.10973354429006577;
createNode animCurveTA -n "animCurveTA1551";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -1.7175900971389688 3 -1.3972839984681547 
		9 -1.397283998468154 14 -4.2368721935960938;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.95851969718933105;
	setAttr -s 4 ".kiy[3]"  -0.28502634167671204;
createNode animCurveTA -n "animCurveTA1552";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 26.300887772213173 3 32.754691543705967 
		9 28.797380284411332 14 8.7398866450636898;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.42986419796943665;
	setAttr -s 4 ".kiy[3]"  -0.9028935432434082;
createNode animCurveTA -n "animCurveTA1553";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 0 9 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1554";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 0 9 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1555";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 14.508952910281577 3 14.508952910281577 
		9 14.508952910281574 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.54977452754974365;
	setAttr -s 4 ".kiy[3]"  -0.83531308174133301;
createNode animCurveTA -n "animCurveTA1556";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 3.6375267832064915 3 5.3394441416968288 
		9 5.3394441416968288 14 4.8714700432790465;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.99880135059356689;
	setAttr -s 4 ".kiy[3]"  -0.048947390168905258;
createNode animCurveTA -n "animCurveTA1557";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 5.005087459058303 3 3.1252923706827938 
		9 3.1252923706827955 14 11.783606204137087;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.74082231521606445;
	setAttr -s 4 ".kiy[3]"  0.67170101404190063;
createNode animCurveTA -n "animCurveTA1558";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -2.5006014476938456 3 21.163097977813688 
		9 21.163097977813695 14 7.5423825101935931;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.5740591287612915;
	setAttr -s 4 ".kiy[3]"  -0.81881386041641235;
createNode animCurveTA -n "animCurveTA1559";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -0.18869730455872094 3 -0.013750268718396658 
		9 -0.013750268718396562 14 -1.8903601258661931;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.98123222589492798;
	setAttr -s 4 ".kiy[3]"  -0.19282990694046021;
createNode animCurveTA -n "animCurveTA1560";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1.4407607497566994 3 1.452997479744611 
		9 1.452997479744611 14 2.5597289571479034;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.99335086345672607;
	setAttr -s 4 ".kiy[3]"  0.11512604355812073;
createNode animCurveTA -n "animCurveTA1561";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 35.157428558935315 3 42.399434798529782 
		9 39.180803183306388 14 2.0168110874036067;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.24886605143547058;
	setAttr -s 4 ".kiy[3]"  -0.96853792667388916;
createNode animCurveTA -n "animCurveTA1562";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 0 9 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1563";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 0 9 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1564";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 61.824373247854581 3 61.824373247854581 
		9 61.824373247854581 14 33.429092416277157;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.31875628232955933;
	setAttr -s 4 ".kiy[3]"  -0.94783669710159302;
createNode animCurveTA -n "animCurveTA1565";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 22.82773238350271 3 22.82773238350271 
		9 22.827732383502713 14 8.2533422302317216;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.54804867506027222;
	setAttr -s 4 ".kiy[3]"  -0.83644646406173706;
createNode animCurveTA -n "animCurveTA1566";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 38.578337509358107 3 38.578337509358107 
		9 38.578337509358107 14 23.263402056531085;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.52910065650939941;
	setAttr -s 4 ".kiy[3]"  -0.84855908155441284;
createNode animCurveTA -n "animCurveTA1567";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 45.467643381850564 3 45.467643381850564 
		9 45.467643381850571 14 20.166277752815617;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.35310941934585571;
	setAttr -s 4 ".kiy[3]"  -0.93558204174041748;
createNode animCurveTA -n "animCurveTA1568";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 0 9 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1569";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 0 9 0 14 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1570";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 50.17101925731437 3 50.17101925731437 
		9 50.171019257314363 14 17.254116939558365;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.27861583232879639;
	setAttr -s 4 ".kiy[3]"  -0.96040260791778564;
createNode clipLibrary -n "clipLibrary1";
	setAttr -s 150 ".cel[0].cev";
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
	setAttr ".o" 14;
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
connectAttr "hom_jump_run_landSource.st" "clipLibrary1.st[0]";
connectAttr "hom_jump_run_landSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL516.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL517.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL519.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA1458.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU105.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU106.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU107.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU108.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU109.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU110.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU111.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU112.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA1459.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA1460.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA1461.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL521.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL522.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL523.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL524.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL525.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL526.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA1462.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA1463.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA1464.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL527.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL528.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL529.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA1465.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA1466.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA1467.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA1468.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA1469.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA1470.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA1471.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA1472.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA1473.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTL530.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTL531.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTL532.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTL533.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTL534.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTL535.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL536.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL537.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL538.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTA1474.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTA1475.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTA1476.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTA1477.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTA1478.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTA1479.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA1480.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA1481.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA1482.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA1483.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA1484.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA1485.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA1486.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA1487.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA1488.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA1489.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA1490.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA1491.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA1492.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA1493.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA1494.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA1495.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA1496.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA1497.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA1498.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA1499.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA1500.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA1501.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA1502.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTL545.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL546.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL547.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA1509.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA1510.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA1511.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL548.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL549.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL550.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA1512.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA1513.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA1514.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL551.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL552.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL553.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTL554.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTL555.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTL556.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTA1515.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTA1516.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTA1517.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTA1518.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTA1519.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTA1520.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA1521.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA1522.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA1523.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA1524.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA1525.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA1526.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA1527.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA1528.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA1529.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA1530.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA1531.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1532.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1533.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1534.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA1535.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1536.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1537.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1538.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1539.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1540.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1541.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1542.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1543.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA1544.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA1545.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA1546.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA1547.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA1548.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA1549.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1550.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1551.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1552.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1553.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1554.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1555.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1556.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1557.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1558.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1559.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1560.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1561.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1562.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1563.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1564.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1565.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1566.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1567.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1568.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1569.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1570.a" "clipLibrary1.cel[0].cev[161].cevr";
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
// End of hom_jump_run_land.ma
