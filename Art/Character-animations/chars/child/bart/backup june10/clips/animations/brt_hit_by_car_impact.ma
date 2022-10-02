//Maya ASCII 4.0 scene
//Name: brt_hit_by_car_impact.ma
//Last modified: Tue, May 28, 2002 03:13:33 PM
requires maya "4.0";
requires "p3dSimpleShader" "16.4";
requires "p3dDeformer" "16.0.0.1";
requires "p3dmayaexp" "16.15";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "brt_hit_by_car_impactSource";
	setAttr ".ihi" 0;
	setAttr ".du" 7;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.02287243591419692 1 -0.013315363792217172 
		2 -0.0053806550949127173 3 -0.00085916988727716072 4 0.0022202144371466859 
		5 0.0046333822220413195 6 0.0058478294822718714 7 0.0063127830866611303;
createNode animCurveTL -n "brt_Motion_Root_translateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.50460083466800842 1 0.64727722393889675 
		2 0.74048441408865673 3 0.75457431702487199 4 0.724691603094475 5 0.59961784395604889 
		6 0.19230124623093356 7 -0.2082260586048241;
createNode animCurveTA -n "brt_Motion_Root_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTU -n "animCurveTU25";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU26";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU27";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU28";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU29";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU30";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU31";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU32";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA570";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA571";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA572";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "animCurveTL193";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL194";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL195";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL196";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.19763288944005308 2 -0.19763288944005308 
		5 -0.19763288944005308 7 -0.19934934560661241;
	setAttr -s 4 ".kit[0:3]"  9 3 3 9;
	setAttr -s 4 ".kot[0:3]"  1 3 3 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0.36204808950424194;
	setAttr -s 4 ".koy[0:3]"  0 0 0 -0.932159423828125;
createNode animCurveTL -n "animCurveTL197";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.189 2 0.21195678752765937 5 
		0.21195678752765937 7 1.7477299054448512;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[3]"  9;
createNode animCurveTL -n "animCurveTL198";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.99077043779297014 2 1.1961929756633671 
		5 1.1961929756633671 7 0.41624033123049026;
	setAttr -s 4 ".kit[0:3]"  9 3 3 9;
	setAttr -s 4 ".kot[0:3]"  1 3 3 9;
	setAttr -s 4 ".kox[0:3]"  0.0032453262247145176 1 1 0.00085475249215960503;
	setAttr -s 4 ".koy[0:3]"  0.99999475479125977 0 0 -0.99999964237213135;
createNode animCurveTA -n "animCurveTA573";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -31.548014841396498 2 0 5 0 7 
		-33.630440768693376;
	setAttr -s 4 ".kit[0:3]"  9 3 3 9;
	setAttr -s 4 ".kot[0:3]"  1 3 3 9;
	setAttr -s 4 ".kox[0:3]"  0.12019852548837662 1 1 0.11285362392663956;
	setAttr -s 4 ".koy[0:3]"  0.99274986982345581 0 0 -0.99361163377761841;
createNode animCurveTA -n "animCurveTA574";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 5 0 7 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA575";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 5 0 7 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL199";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.19697756422115981 2 0.16123877199057202 
		5 0.25300619704434296 7 0.29185150429015561;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  0.018650621175765991 0.02973354235291481 
		0.012759330682456493 0.017159564420580864;
	setAttr -s 4 ".koy[0:3]"  -0.99982607364654541 0.99955785274505615 
		0.99991858005523682 0.99985277652740479;
createNode animCurveTL -n "animCurveTL200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.49095526767731257 2 0.30624379531570617 
		5 0.61089537625919721 7 1.1109697034832438;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  0.0036092088557779789 0.013894482515752316 
		0.0020710942335426807 0.001333134132437408;
	setAttr -s 4 ".koy[0:3]"  -0.99999350309371948 0.99990344047546387 
		0.99999785423278809 0.99999910593032837;
createNode animCurveTL -n "animCurveTL201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.092819338422239051 2 0.8475425357502373 
		5 1.3239894041173907 7 0.227156072820587;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  0.00088332564337179065 0.0013537246268242598 
		0.0026864877436310053 0.00060781027423217893;
	setAttr -s 4 ".koy[0:3]"  0.99999958276748657 0.99999910593032837 
		-0.9999963641166687 -0.99999982118606567;
createNode animCurveTA -n "animCurveTA576";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 72.51831712904297 2 48.955541083724086 
		5 -3.9320360584068554 7 -3.9320360584068554;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  0.16001921892166138 0.12394530326128006 
		0.17768523097038269 1;
	setAttr -s 4 ".koy[0:3]"  -0.98711389303207397 -0.99228906631469727 
		-0.98408734798431396 0;
createNode animCurveTA -n "animCurveTA577";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 5 0 7 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA578";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 5 0 7 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA579";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA580";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA581";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA582";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA583";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA584";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA585";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA586";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA587";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA588";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA589";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA590";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "animCurveTL202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 5 0 7 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 5 0 7 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 2 1 5 1 7 1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 5 0 7 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 5 0 7 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 2 1 5 1 7 1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.033041213165890024 2 -0.0077728219517184515 
		5 0.0066933216143579997 7 0.009119361506525361;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  0.026374245062470436 0.041908189654350281 
		0.098188199102878571 0.26497384905815125;
	setAttr -s 4 ".koy[0:3]"  0.99965214729309082 0.99912148714065552 
		0.99516785144805908 0.96425557136535645;
createNode animCurveTL -n "animCurveTL209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.86191433053168653 2 0.68531953232099319 
		5 0.84649195757100448 7 1.5542323161653797;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  0.0037750937044620514 0.10744253545999527 
		0.0019181023817509413 0.00094196468126028776;
	setAttr -s 4 ".koy[0:3]"  -0.99999284744262695 -0.99421131610870361 
		0.99999815225601196 0.99999958276748657;
createNode animCurveTL -n "animCurveTL210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.72893957619979599 2 1.0696938211437341 
		5 0.86619986933380466 7 -0.30080056251396731;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 1;
	setAttr -s 4 ".kix[3]"  0.0013098418712615967;
	setAttr -s 4 ".kiy[3]"  -0.99999916553497314;
	setAttr -s 4 ".kox[0:3]"  0.0019564402755349874 0.012141484767198563 
		0.0012161053018644452 0.0013098439667373896;
	setAttr -s 4 ".koy[0:3]"  0.99999809265136719 0.99992626905441284 
		-0.9999992847442627 -0.99999916553497314;
createNode animCurveTA -n "animCurveTA591";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 20.950825280283915 2 23.686988860744673 
		5 -20.451217483196501 7 -65.585535993622102;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  0.81294822692871094 0.22474730014801025 
		0.10636115819215775 0.084328584372997284;
	setAttr -s 4 ".koy[0:3]"  0.5823359489440918 -0.97441709041595459 
		-0.99432754516601563 -0.99643802642822266;
createNode animCurveTA -n "animCurveTA592";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -7.5734518508549122 2 9.3491547302982809 
		5 11.948637237067912 7 11.948637237067985;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  0.22017775475978851 0.43940189480781555 
		0.96488863229751587 1;
	setAttr -s 4 ".koy[0:3]"  0.9754597544670105 0.89829057455062866 
		0.26265928149223328 0;
createNode animCurveTA -n "animCurveTA593";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 -1.4726187357019898 5 -1.4726187357019873 
		7 -1.47261873570199;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  0.93305915594100952 0.98831725120544434 
		1 1;
	setAttr -s 4 ".koy[0:3]"  -0.35972297191619873 -0.15241065621376038 
		0 0;
createNode animCurveTA -n "animCurveTA594";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA595";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA596";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA597";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA598";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA599";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA600";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA601";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA602";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA603";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA604";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA605";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA606";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA607";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA608";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA609";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA610";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA611";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA612";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA613";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA614";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA615";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA616";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA617";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA618";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA619";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "animCurveTL211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.99214331096561381;
createNode animCurveTL -n "animCurveTL212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.033841737269357866;
createNode animCurveTL -n "animCurveTL213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.027201153963313806;
createNode animCurveTA -n "animCurveTA620";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA621";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA622";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "animCurveTL214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99214413619678865;
createNode animCurveTL -n "animCurveTL215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.033851474715545553;
createNode animCurveTL -n "animCurveTL216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.0272011762672867;
createNode animCurveTA -n "animCurveTA623";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA624";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA625";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "animCurveTL217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.3705977767760478;
createNode animCurveTL -n "animCurveTL218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.1618658070195953;
createNode animCurveTL -n "animCurveTL219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.12044246479037771;
createNode animCurveTA -n "animCurveTA626";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA627";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA628";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "animCurveTL220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.3705978542308779;
createNode animCurveTL -n "animCurveTL221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.1618621235956237;
createNode animCurveTL -n "animCurveTL222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.12044250833667494;
createNode animCurveTA -n "animCurveTA629";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA630";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA631";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "animCurveTL223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1;
createNode animCurveTL -n "animCurveTL226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL227";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1;
createNode animCurveTA -n "animCurveTA632";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 52.637219839343977 2 -35.280552173416005 
		5 -55.670009807431882 7 -8.3722158444725991;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  0.043405540287494659 0.087827883660793304 
		0.33444646000862122 0.080496847629547119;
	setAttr -s 4 ".koy[0:3]"  -0.99905753135681152 -0.9961356520652771 
		0.94241476058959961 0.99675488471984863;
createNode animCurveTA -n "animCurveTA633";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -24.480967171432493 2 2.5816969024663949 
		5 -13.611207391781139 7 -23.977773843939509;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  0.13975824415683746 0.66000086069107056 
		0.33833950757980347 0.34574180841445923;
	setAttr -s 4 ".koy[0:3]"  0.99018567800521851 0.75126487016677856 
		-0.94102412462234497 -0.93832969665527344;
createNode animCurveTA -n "animCurveTA634";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -64.344364641857084 2 53.251722291748415 
		5 27.497501682495685 7 33.682233492227084;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  0.032464556396007538 0.10341790318489075 
		0.43854248523712158 0.52546674013137817;
	setAttr -s 4 ".koy[0:3]"  0.99947291612625122 0.99463796615600586 
		-0.89871042966842651 0.85081416368484497;
createNode animCurveTA -n "animCurveTA635";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -53.609443747430014 2 -29.573411147573808 
		5 -8.563012295375076 7 -25.419177015304651;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  0.15694689750671387 0.20737937092781067 
		0.91698694229125977 0.22100335359573364;
	setAttr -s 4 ".koy[0:3]"  0.98760706186294556 0.9782605767250061 
		0.39891716837882996 -0.97527307271957397;
createNode animCurveTA -n "animCurveTA636";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -25.27913794042524 2 2.3677661369630982 
		5 20.507370224920166 7 -41.133378951685579;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  0.13686075806617737 0.20416818559169769 
		0.21441295742988586 0.061848796904087067;
	setAttr -s 4 ".koy[0:3]"  0.99059027433395386 0.9789358377456665 
		-0.97674310207366943 -0.99808555841445923;
createNode animCurveTA -n "animCurveTA637";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 57.594080128123679 2 84.877951062747869 
		5 107.09766021769482 7 27.165866266794364;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  0.13864700496196747 0.18940927088260651 
		0.1632448136806488 0.047732759267091751;
	setAttr -s 4 ".koy[0:3]"  0.99034184217453003 0.98189824819564819 
		-0.98658561706542969 -0.99886012077331543;
createNode animCurveTA -n "animCurveTA638";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 59.468287502559065 2 89.911651693682515 
		5 32.789921414575325 7 39.038962484432531;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  0.1244935467839241 0.33700326085090637 
		0.18448762595653534 0.52153551578521729;
	setAttr -s 4 ".koy[0:3]"  0.99222040176391602 -0.94150346517562866 
		-0.98283481597900391 0.8532295823097229;
createNode animCurveTA -n "animCurveTA639";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 59.305463658789549 2 60.185649943194235 
		5 3.2573665005240873 7 63.89762232629036;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  0.97446310520172119 0.16795651614665985 
		0.93205881118774414 0.062865227460861206;
	setAttr -s 4 ".koy[0:3]"  0.22454772889614105 -0.98579442501068115 
		0.36230698227882385 0.99802201986312866;
createNode animCurveTA -n "animCurveTA640";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 18.476235154862632 2 -25.061733991251923 
		5 22.425089944480888 7 22.425089944480888;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  0.087397336959838867 0.92410492897033691 
		0.19714692234992981 1;
	setAttr -s 4 ".koy[0:3]"  -0.99617356061935425 0.38213875889778137 
		0.98037397861480713 0;
createNode animCurveTA -n "animCurveTA641";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 10.082003051124275 2 10.082003051124259 
		5 28.721836935985287 7 28.721836935985287;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 0.45595395565032959 0.45595395565032959 
		1;
	setAttr -s 4 ".koy[0:3]"  0 0.89000338315963745 0.89000338315963745 
		0;
createNode animCurveTA -n "animCurveTA642";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -4.720189328892868 2 -4.7201893288928662 
		5 7.6266657808874898 7 7.6266657808874898;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 0.61179018020629883 0.61179018020629883 
		1;
	setAttr -s 4 ".koy[0:3]"  0 0.79102009534835815 0.79102009534835815 
		0;
createNode animCurveTA -n "animCurveTA643";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -11.342548829337773 2 -13.555270109330269 
		5 -18.847227132200882 7 2.0447427744579891;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  0.86529803276062012 0.78625196218490601 
		0.52208501100540161 0.17985065281391144;
	setAttr -s 4 ".koy[0:3]"  -0.50125771760940552 -0.61790603399276733 
		0.85289347171783447 0.98369395732879639;
createNode animCurveTA -n "animCurveTA644";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 11.615881410206434 2 11.615881410206432 
		5 44.709551992010134 7 5.5429207840541244;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 0.2772422730922699 0.84381610155105591 
		0.097064323723316193;
	setAttr -s 4 ".koy[0:3]"  0 0.96080005168914795 -0.53663241863250732 
		-0.99527812004089355;
createNode animCurveTA -n "animCurveTA645";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.32159281075535046 2 0.32159281075535068 
		5 -10.402617814119608 7 34.868956102818473;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 0.66501188278198242 0.26642128825187683 
		0.084074720740318298;
	setAttr -s 4 ".koy[0:3]"  0 -0.74683278799057007 0.96385669708251953 
		0.99645942449569702;
createNode animCurveTA -n "animCurveTA646";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 11.09331921989552 2 11.093319219895511 
		5 -32.123718040735945 7 -32.123718040735945;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 0.2157571017742157 0.2157571017742157 
		1;
	setAttr -s 4 ".koy[0:3]"  0 -0.97644704580307007 -0.97644704580307007 
		0;
createNode animCurveTA -n "animCurveTA647";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 59.959644693642325 2 59.959644693642325 
		5 19.407819173437478 7 19.407819173437478;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 0.22921425104141235 0.22921425104141235 
		1;
	setAttr -s 4 ".koy[0:3]"  0 -0.97337597608566284 -0.97337597608566284 
		0;
createNode animCurveTA -n "animCurveTA648";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 48.10646961869692 2 48.106469618696913 
		5 4.4751336445171193 7 4.4751336445171193;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 0.21380247175693512 0.21380247175693512 
		1;
	setAttr -s 4 ".koy[0:3]"  0 -0.97687691450119019 -0.97687691450119019 
		0;
createNode animCurveTA -n "animCurveTA649";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 5 0 7 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA650";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 5 0 7 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA651";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 101.15442879205187 2 67.810939637714412 
		5 -11.433734901667266 7 -11.433734901667266;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  0.11381229758262634 0.084512725472450256 
		0.11963843554258347 1;
	setAttr -s 4 ".koy[0:3]"  -0.99350225925445557 -0.9964224100112915 
		-0.99281752109527588 0;
createNode animCurveTA -n "animCurveTA652";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA653";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA654";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA655";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 2 27.705218915343313 7 27.705218915343313;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  0.13657805323600769 0.43459305167198181 
		1;
	setAttr -s 3 ".koy[0:2]"  0.99062931537628174 0.90062695741653442 
		0;
createNode animCurveTA -n "animCurveTA656";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 2 43.35103828268312 7 43.35103828268312;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  0.087771289050579071 0.29469460248947144 
		1;
	setAttr -s 3 ".koy[0:2]"  0.99614065885543823 0.95559149980545044 
		0;
createNode animCurveTA -n "animCurveTA657";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 2 54.23572299800319 7 54.23572299800319;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  0.070254072546958923 0.23933438956737518 
		1;
	setAttr -s 3 ".koy[0:2]"  0.99752914905548096 0.97093719244003296 
		0;
createNode animCurveTA -n "animCurveTA658";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 2 39.038703285259977 7 39.038703285259977;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  0.097379371523857117 0.32398420572280884 
		1;
	setAttr -s 3 ".koy[0:2]"  0.99524736404418945 0.94606250524520874 
		0;
createNode animCurveTA -n "animCurveTA659";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 2 72.755037061650995 7 72.755037061650995;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  0.052428878843784332 0.18072794377803802 
		1;
	setAttr -s 3 ".koy[0:2]"  0.99862468242645264 0.98353314399719238 
		0;
createNode animCurveTA -n "animCurveTA660";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 2 38.926480273156798 7 38.926480273156798;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  0.097657442092895508 0.32481980323791504 
		1;
	setAttr -s 3 ".koy[0:2]"  0.99522006511688232 0.94577592611312866 
		0;
createNode animCurveTA -n "animCurveTA661";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 5 0 7 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA662";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 5 0 7 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA663";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 81.622987204614233 2 -9.6043099083038648 
		5 -9.6043099083038648 7 -9.6043099083038648;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  0.041833691298961639 0.1041070744395256 
		1 1;
	setAttr -s 4 ".koy[0:3]"  -0.99912458658218384 -0.99456608295440674 
		0 0;
createNode animCurveTA -n "animCurveTA664";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.2945941069882385 2 1.2945941069882381 
		5 3.1198943483277444 7 3.1198943483277444;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 0.98221760988235474 0.98221760988235474 
		1;
	setAttr -s 4 ".koy[0:3]"  0 0.18774598836898804 0.18774598836898804 
		0;
createNode animCurveTA -n "animCurveTA665";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 3.3208811165553156 2 3.3208811165553147 
		5 1.7238169885910806 7 1.7238169885910806;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 0.98630142211914063 0.98630142211914063 
		1;
	setAttr -s 4 ".koy[0:3]"  0 -0.16495315730571747 -0.16495315730571747 
		0;
createNode animCurveTA -n "animCurveTA666";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -27.52582447785997 2 -27.525824477859967 
		5 12.268388134198538 7 12.268388134198538;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 0.23334258794784546 0.23334258794784546 
		1;
	setAttr -s 4 ".koy[0:3]"  0 0.97239458560943604 0.97239458560943604 
		0;
createNode animCurveTA -n "animCurveTA667";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -8.7597363552835983 2 6.308963718970988 
		5 6.9103069920743438 7 6.2649641345144982;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  0.24571551382541656 0.52038466930389404 
		0.99998939037322998 0.9860263466835022;
	setAttr -s 4 ".koy[0:3]"  0.96934199333190918 0.8539319634437561 
		-0.0046075768768787384 -0.16658949851989746;
createNode animCurveTA -n "animCurveTA668";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 5.7322064377030788 5 4.9896665793491746 
		7 5.780294047116163;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  0.55452406406402588 0.88630205392837524 
		0.99998730421066284 0.97924309968948364;
	setAttr -s 4 ".koy[0:3]"  0.83216768503189087 0.46310761570930481 
		0.0050356588326394558 0.20268939435482025;
createNode animCurveTA -n "animCurveTA669";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -8.9349579591731985 2 21.713029036968567 
		5 28.142527379210097 7 21.274336518663382;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  0.12367511540651321 0.24941059947013855 
		0.9989464282989502 0.48603737354278564;
	setAttr -s 4 ".koy[0:3]"  0.99232274293899536 0.96839785575866699 
		-0.045891374349594116 -0.87393802404403687;
createNode animCurveTA -n "animCurveTA670";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 5 0 7 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA671";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 5 0 7 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA672";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 5 0 7 15.545129367555198;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 0.52342391014099121 0.23861998319625854;
	setAttr -s 4 ".koy[0:3]"  0 0 0.85207241773605347 0.97111302614212036;
createNode animCurveTA -n "animCurveTA673";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 14.794623739018833 5 14.794623739018833 
		7 22.334659718447345;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  0.2499854564666748 0.54230242967605591 
		0.78483808040618896 0.45191147923469543;
	setAttr -s 4 ".koy[0:3]"  0.9682496190071106 0.84018337726593018 
		0.6197008490562439 0.89206278324127197;
createNode animCurveTA -n "animCurveTA674";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -9.2427148064678804 2 22.395186436807986 
		5 22.395186436807986 7 14.88860504567513;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  0.11986194550991058 0.28895556926727295 
		0.78617584705352783 0.453512042760849;
	setAttr -s 4 ".koy[0:3]"  0.9927905797958374 0.95734250545501709 
		-0.61800289154052734 -0.8912501335144043;
createNode animCurveTA -n "animCurveTA675";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -10.062830706779264 2 -0.5621560964572182 
		5 -0.5621560964572182 7 28.394145862336995;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  0.37302744388580322 0.70890921354293823 
		0.31319162249565125 0.13078024983406067;
	setAttr -s 4 ".koy[0:3]"  0.92782032489776611 0.7052997350692749 
		0.94968998432159424 0.99141138792037964;
createNode animCurveTA -n "animCurveTA676";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 22.078247600383854 5 18.977509968842877 
		7 20.941119161468873;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  0.17047570645809174 0.44949191808700562 
		0.99298453330993652 0.88936519622802734;
	setAttr -s 4 ".koy[0:3]"  0.98536187410354614 0.8932843804359436 
		-0.11824440956115723 0.45719745755195618;
createNode animCurveTA -n "animCurveTA677";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 -9.6389434643346714 5 -14.961349670392833 
		7 -11.985276261935251;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  0.36840724945068359 0.53801542520523071 
		0.97111541032791138 0.7888333797454834;
	setAttr -s 4 ".koy[0:3]"  -0.9296644926071167 -0.84293502569198608 
		-0.23861023783683777 0.61460709571838379;
createNode animCurveTA -n "animCurveTA678";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 5.671986885245901 2 7.1941842949003796 
		5 21.659909015129006 7 13.249280848849958;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  0.92895311117172241 0.5127788782119751 
		0.84453076124191284 0.4135073721408844;
	setAttr -s 4 ".koy[0:3]"  0.37019744515419006 0.85852068662643433 
		0.53550702333450317 -0.91050076484680176;
createNode animCurveTA -n "animCurveTA679";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 5 0 7 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA680";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 5 0 7 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA681";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 90.838361755940937 2 21.472939016776969 
		5 21.472939016776969 7 21.472939016776969;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  0.054983306676149368 0.13638024032115936 
		1 1;
	setAttr -s 4 ".koy[0:3]"  -0.99848729372024536 -0.99065655469894409 
		0 0;
createNode animCurveTA -n "animCurveTA682";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 26.194612819039182 2 26.194612819039175 
		5 -15.564086868905925 7 -15.564086868905925;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 0.22292353212833405 0.22292353212833405 
		1;
	setAttr -s 4 ".koy[0:3]"  0 -0.97483593225479126 -0.97483593225479126 
		0;
createNode animCurveTA -n "animCurveTA683";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 42.116293762219598 2 42.116293762219605 
		5 5.9119201843313247 7 5.9119201843313247;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 0.25503852963447571 0.25503852963447571 
		1;
	setAttr -s 4 ".koy[0:3]"  0 -0.96693086624145508 -0.96693086624145508 
		0;
createNode animCurveTA -n "animCurveTA684";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 51.312599966148298 2 51.312599966148291 
		5 -0.89181587725581968 7 -0.89181587725581968;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 0.17993567883968353 0.17993567883968353 
		1;
	setAttr -s 4 ".koy[0:3]"  0 -0.98367840051651001 -0.98367840051651001 
		0;
createNode animCurveTA -n "animCurveTA685";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 5 0 7 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA686";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 5 0 7 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA687";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 86.611733534295581 2 55.749331591600708 
		5 21.151890972437133 7 21.151890972437133;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  0.12282890826463699 0.14435231685638428 
		0.26606300473213196 1;
	setAttr -s 4 ".koy[0:3]"  -0.99242788553237915 -0.98952633142471313 
		-0.96395564079284668 0;
createNode clipLibrary -n "clipLibrary4";
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
	setAttr ".o" 7;
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
	setAttr -s 218 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".top" 478;
	setAttr ".rght" 638;
	setAttr ".fs" 1;
	setAttr ".ef" 10;
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
connectAttr "brt_hit_by_car_impactSource.st" "clipLibrary4.st[0]";
connectAttr "brt_hit_by_car_impactSource.du" "clipLibrary4.du[0]";
connectAttr "animCurveTL188.a" "clipLibrary4.cel[0].cev[0].cevr";
connectAttr "animCurveTL189.a" "clipLibrary4.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary4.cel[0].cev[2].cevr"
		;
connectAttr "brt_Motion_Root_translateY1.a" "clipLibrary4.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary4.cel[0].cev[4].cevr"
		;
connectAttr "brt_Motion_Root_rotateY1.a" "clipLibrary4.cel[0].cev[5].cevr"
		;
connectAttr "animCurveTU25.a" "clipLibrary4.cel[0].cev[6].cevr";
connectAttr "animCurveTU26.a" "clipLibrary4.cel[0].cev[7].cevr";
connectAttr "animCurveTU27.a" "clipLibrary4.cel[0].cev[8].cevr";
connectAttr "animCurveTU28.a" "clipLibrary4.cel[0].cev[9].cevr";
connectAttr "animCurveTU29.a" "clipLibrary4.cel[0].cev[10].cevr";
connectAttr "animCurveTU30.a" "clipLibrary4.cel[0].cev[11].cevr";
connectAttr "animCurveTU31.a" "clipLibrary4.cel[0].cev[12].cevr";
connectAttr "animCurveTU32.a" "clipLibrary4.cel[0].cev[13].cevr";
connectAttr "animCurveTA570.a" "clipLibrary4.cel[0].cev[14].cevr";
connectAttr "animCurveTA571.a" "clipLibrary4.cel[0].cev[15].cevr";
connectAttr "animCurveTA572.a" "clipLibrary4.cel[0].cev[16].cevr";
connectAttr "animCurveTL193.a" "clipLibrary4.cel[0].cev[17].cevr";
connectAttr "animCurveTL194.a" "clipLibrary4.cel[0].cev[18].cevr";
connectAttr "animCurveTL195.a" "clipLibrary4.cel[0].cev[19].cevr";
connectAttr "animCurveTL196.a" "clipLibrary4.cel[0].cev[20].cevr";
connectAttr "animCurveTL197.a" "clipLibrary4.cel[0].cev[21].cevr";
connectAttr "animCurveTL198.a" "clipLibrary4.cel[0].cev[22].cevr";
connectAttr "animCurveTA573.a" "clipLibrary4.cel[0].cev[23].cevr";
connectAttr "animCurveTA574.a" "clipLibrary4.cel[0].cev[24].cevr";
connectAttr "animCurveTA575.a" "clipLibrary4.cel[0].cev[25].cevr";
connectAttr "animCurveTL199.a" "clipLibrary4.cel[0].cev[26].cevr";
connectAttr "animCurveTL200.a" "clipLibrary4.cel[0].cev[27].cevr";
connectAttr "animCurveTL201.a" "clipLibrary4.cel[0].cev[28].cevr";
connectAttr "animCurveTA576.a" "clipLibrary4.cel[0].cev[29].cevr";
connectAttr "animCurveTA577.a" "clipLibrary4.cel[0].cev[30].cevr";
connectAttr "animCurveTA578.a" "clipLibrary4.cel[0].cev[31].cevr";
connectAttr "animCurveTA579.a" "clipLibrary4.cel[0].cev[32].cevr";
connectAttr "animCurveTA580.a" "clipLibrary4.cel[0].cev[33].cevr";
connectAttr "animCurveTA581.a" "clipLibrary4.cel[0].cev[34].cevr";
connectAttr "animCurveTA582.a" "clipLibrary4.cel[0].cev[35].cevr";
connectAttr "animCurveTA583.a" "clipLibrary4.cel[0].cev[36].cevr";
connectAttr "animCurveTA584.a" "clipLibrary4.cel[0].cev[37].cevr";
connectAttr "animCurveTA585.a" "clipLibrary4.cel[0].cev[38].cevr";
connectAttr "animCurveTA586.a" "clipLibrary4.cel[0].cev[39].cevr";
connectAttr "animCurveTA587.a" "clipLibrary4.cel[0].cev[40].cevr";
connectAttr "animCurveTA588.a" "clipLibrary4.cel[0].cev[41].cevr";
connectAttr "animCurveTA589.a" "clipLibrary4.cel[0].cev[42].cevr";
connectAttr "animCurveTA590.a" "clipLibrary4.cel[0].cev[43].cevr";
connectAttr "animCurveTL202.a" "clipLibrary4.cel[0].cev[44].cevr";
connectAttr "animCurveTL203.a" "clipLibrary4.cel[0].cev[45].cevr";
connectAttr "animCurveTL204.a" "clipLibrary4.cel[0].cev[46].cevr";
connectAttr "animCurveTL205.a" "clipLibrary4.cel[0].cev[47].cevr";
connectAttr "animCurveTL206.a" "clipLibrary4.cel[0].cev[48].cevr";
connectAttr "animCurveTL207.a" "clipLibrary4.cel[0].cev[49].cevr";
connectAttr "animCurveTL208.a" "clipLibrary4.cel[0].cev[50].cevr";
connectAttr "animCurveTL209.a" "clipLibrary4.cel[0].cev[51].cevr";
connectAttr "animCurveTL210.a" "clipLibrary4.cel[0].cev[52].cevr";
connectAttr "animCurveTA591.a" "clipLibrary4.cel[0].cev[53].cevr";
connectAttr "animCurveTA592.a" "clipLibrary4.cel[0].cev[54].cevr";
connectAttr "animCurveTA593.a" "clipLibrary4.cel[0].cev[55].cevr";
connectAttr "animCurveTA594.a" "clipLibrary4.cel[0].cev[56].cevr";
connectAttr "animCurveTA595.a" "clipLibrary4.cel[0].cev[57].cevr";
connectAttr "animCurveTA596.a" "clipLibrary4.cel[0].cev[58].cevr";
connectAttr "animCurveTA597.a" "clipLibrary4.cel[0].cev[59].cevr";
connectAttr "animCurveTA598.a" "clipLibrary4.cel[0].cev[60].cevr";
connectAttr "animCurveTA599.a" "clipLibrary4.cel[0].cev[61].cevr";
connectAttr "animCurveTA600.a" "clipLibrary4.cel[0].cev[62].cevr";
connectAttr "animCurveTA601.a" "clipLibrary4.cel[0].cev[63].cevr";
connectAttr "animCurveTA602.a" "clipLibrary4.cel[0].cev[64].cevr";
connectAttr "animCurveTA603.a" "clipLibrary4.cel[0].cev[65].cevr";
connectAttr "animCurveTA604.a" "clipLibrary4.cel[0].cev[66].cevr";
connectAttr "animCurveTA605.a" "clipLibrary4.cel[0].cev[67].cevr";
connectAttr "animCurveTA606.a" "clipLibrary4.cel[0].cev[68].cevr";
connectAttr "animCurveTA607.a" "clipLibrary4.cel[0].cev[69].cevr";
connectAttr "animCurveTA608.a" "clipLibrary4.cel[0].cev[70].cevr";
connectAttr "animCurveTA609.a" "clipLibrary4.cel[0].cev[71].cevr";
connectAttr "animCurveTA610.a" "clipLibrary4.cel[0].cev[72].cevr";
connectAttr "animCurveTA611.a" "clipLibrary4.cel[0].cev[73].cevr";
connectAttr "animCurveTA612.a" "clipLibrary4.cel[0].cev[74].cevr";
connectAttr "animCurveTA613.a" "clipLibrary4.cel[0].cev[75].cevr";
connectAttr "animCurveTA614.a" "clipLibrary4.cel[0].cev[76].cevr";
connectAttr "animCurveTA615.a" "clipLibrary4.cel[0].cev[77].cevr";
connectAttr "animCurveTA616.a" "clipLibrary4.cel[0].cev[78].cevr";
connectAttr "animCurveTA617.a" "clipLibrary4.cel[0].cev[79].cevr";
connectAttr "animCurveTA618.a" "clipLibrary4.cel[0].cev[80].cevr";
connectAttr "animCurveTA619.a" "clipLibrary4.cel[0].cev[81].cevr";
connectAttr "animCurveTL211.a" "clipLibrary4.cel[0].cev[82].cevr";
connectAttr "animCurveTL212.a" "clipLibrary4.cel[0].cev[83].cevr";
connectAttr "animCurveTL213.a" "clipLibrary4.cel[0].cev[84].cevr";
connectAttr "animCurveTA620.a" "clipLibrary4.cel[0].cev[85].cevr";
connectAttr "animCurveTA621.a" "clipLibrary4.cel[0].cev[86].cevr";
connectAttr "animCurveTA622.a" "clipLibrary4.cel[0].cev[87].cevr";
connectAttr "animCurveTL214.a" "clipLibrary4.cel[0].cev[88].cevr";
connectAttr "animCurveTL215.a" "clipLibrary4.cel[0].cev[89].cevr";
connectAttr "animCurveTL216.a" "clipLibrary4.cel[0].cev[90].cevr";
connectAttr "animCurveTA623.a" "clipLibrary4.cel[0].cev[91].cevr";
connectAttr "animCurveTA624.a" "clipLibrary4.cel[0].cev[92].cevr";
connectAttr "animCurveTA625.a" "clipLibrary4.cel[0].cev[93].cevr";
connectAttr "animCurveTL217.a" "clipLibrary4.cel[0].cev[94].cevr";
connectAttr "animCurveTL218.a" "clipLibrary4.cel[0].cev[95].cevr";
connectAttr "animCurveTL219.a" "clipLibrary4.cel[0].cev[96].cevr";
connectAttr "animCurveTA626.a" "clipLibrary4.cel[0].cev[97].cevr";
connectAttr "animCurveTA627.a" "clipLibrary4.cel[0].cev[98].cevr";
connectAttr "animCurveTA628.a" "clipLibrary4.cel[0].cev[99].cevr";
connectAttr "animCurveTL220.a" "clipLibrary4.cel[0].cev[100].cevr";
connectAttr "animCurveTL221.a" "clipLibrary4.cel[0].cev[101].cevr";
connectAttr "animCurveTL222.a" "clipLibrary4.cel[0].cev[102].cevr";
connectAttr "animCurveTA629.a" "clipLibrary4.cel[0].cev[103].cevr";
connectAttr "animCurveTA630.a" "clipLibrary4.cel[0].cev[104].cevr";
connectAttr "animCurveTA631.a" "clipLibrary4.cel[0].cev[105].cevr";
connectAttr "animCurveTL223.a" "clipLibrary4.cel[0].cev[106].cevr";
connectAttr "animCurveTL224.a" "clipLibrary4.cel[0].cev[107].cevr";
connectAttr "animCurveTL225.a" "clipLibrary4.cel[0].cev[108].cevr";
connectAttr "animCurveTL226.a" "clipLibrary4.cel[0].cev[109].cevr";
connectAttr "animCurveTL227.a" "clipLibrary4.cel[0].cev[110].cevr";
connectAttr "animCurveTL228.a" "clipLibrary4.cel[0].cev[111].cevr";
connectAttr "animCurveTA632.a" "clipLibrary4.cel[0].cev[112].cevr";
connectAttr "animCurveTA633.a" "clipLibrary4.cel[0].cev[113].cevr";
connectAttr "animCurveTA634.a" "clipLibrary4.cel[0].cev[114].cevr";
connectAttr "animCurveTA635.a" "clipLibrary4.cel[0].cev[115].cevr";
connectAttr "animCurveTA636.a" "clipLibrary4.cel[0].cev[116].cevr";
connectAttr "animCurveTA637.a" "clipLibrary4.cel[0].cev[117].cevr";
connectAttr "animCurveTA638.a" "clipLibrary4.cel[0].cev[118].cevr";
connectAttr "animCurveTA639.a" "clipLibrary4.cel[0].cev[119].cevr";
connectAttr "animCurveTA640.a" "clipLibrary4.cel[0].cev[120].cevr";
connectAttr "animCurveTA641.a" "clipLibrary4.cel[0].cev[121].cevr";
connectAttr "animCurveTA642.a" "clipLibrary4.cel[0].cev[122].cevr";
connectAttr "animCurveTA643.a" "clipLibrary4.cel[0].cev[123].cevr";
connectAttr "animCurveTA644.a" "clipLibrary4.cel[0].cev[124].cevr";
connectAttr "animCurveTA645.a" "clipLibrary4.cel[0].cev[125].cevr";
connectAttr "animCurveTA646.a" "clipLibrary4.cel[0].cev[126].cevr";
connectAttr "animCurveTA647.a" "clipLibrary4.cel[0].cev[127].cevr";
connectAttr "animCurveTA648.a" "clipLibrary4.cel[0].cev[128].cevr";
connectAttr "animCurveTA649.a" "clipLibrary4.cel[0].cev[129].cevr";
connectAttr "animCurveTA650.a" "clipLibrary4.cel[0].cev[130].cevr";
connectAttr "animCurveTA651.a" "clipLibrary4.cel[0].cev[131].cevr";
connectAttr "animCurveTA652.a" "clipLibrary4.cel[0].cev[132].cevr";
connectAttr "animCurveTA653.a" "clipLibrary4.cel[0].cev[133].cevr";
connectAttr "animCurveTA654.a" "clipLibrary4.cel[0].cev[134].cevr";
connectAttr "animCurveTA655.a" "clipLibrary4.cel[0].cev[135].cevr";
connectAttr "animCurveTA656.a" "clipLibrary4.cel[0].cev[136].cevr";
connectAttr "animCurveTA657.a" "clipLibrary4.cel[0].cev[137].cevr";
connectAttr "animCurveTA658.a" "clipLibrary4.cel[0].cev[138].cevr";
connectAttr "animCurveTA659.a" "clipLibrary4.cel[0].cev[139].cevr";
connectAttr "animCurveTA660.a" "clipLibrary4.cel[0].cev[140].cevr";
connectAttr "animCurveTA661.a" "clipLibrary4.cel[0].cev[141].cevr";
connectAttr "animCurveTA662.a" "clipLibrary4.cel[0].cev[142].cevr";
connectAttr "animCurveTA663.a" "clipLibrary4.cel[0].cev[143].cevr";
connectAttr "animCurveTA664.a" "clipLibrary4.cel[0].cev[144].cevr";
connectAttr "animCurveTA665.a" "clipLibrary4.cel[0].cev[145].cevr";
connectAttr "animCurveTA666.a" "clipLibrary4.cel[0].cev[146].cevr";
connectAttr "animCurveTA667.a" "clipLibrary4.cel[0].cev[147].cevr";
connectAttr "animCurveTA668.a" "clipLibrary4.cel[0].cev[148].cevr";
connectAttr "animCurveTA669.a" "clipLibrary4.cel[0].cev[149].cevr";
connectAttr "animCurveTA670.a" "clipLibrary4.cel[0].cev[150].cevr";
connectAttr "animCurveTA671.a" "clipLibrary4.cel[0].cev[151].cevr";
connectAttr "animCurveTA672.a" "clipLibrary4.cel[0].cev[152].cevr";
connectAttr "animCurveTA673.a" "clipLibrary4.cel[0].cev[153].cevr";
connectAttr "animCurveTA674.a" "clipLibrary4.cel[0].cev[154].cevr";
connectAttr "animCurveTA675.a" "clipLibrary4.cel[0].cev[155].cevr";
connectAttr "animCurveTA676.a" "clipLibrary4.cel[0].cev[156].cevr";
connectAttr "animCurveTA677.a" "clipLibrary4.cel[0].cev[157].cevr";
connectAttr "animCurveTA678.a" "clipLibrary4.cel[0].cev[158].cevr";
connectAttr "animCurveTA679.a" "clipLibrary4.cel[0].cev[159].cevr";
connectAttr "animCurveTA680.a" "clipLibrary4.cel[0].cev[160].cevr";
connectAttr "animCurveTA681.a" "clipLibrary4.cel[0].cev[161].cevr";
connectAttr "animCurveTA682.a" "clipLibrary4.cel[0].cev[162].cevr";
connectAttr "animCurveTA683.a" "clipLibrary4.cel[0].cev[163].cevr";
connectAttr "animCurveTA684.a" "clipLibrary4.cel[0].cev[164].cevr";
connectAttr "animCurveTA685.a" "clipLibrary4.cel[0].cev[165].cevr";
connectAttr "animCurveTA686.a" "clipLibrary4.cel[0].cev[166].cevr";
connectAttr "animCurveTA687.a" "clipLibrary4.cel[0].cev[167].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
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
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[11].olnk";
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
// End of brt_hit_by_car_impact.ma
