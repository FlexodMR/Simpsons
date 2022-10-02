//Maya ASCII 4.0 scene
//Name: brt_jump_run_all.ma
//Last modified: Tue, May 27, 2003 01:51:33 PM
requires maya "4.0";
requires "p3dDeformer" "2.0";
requires "p3dmayaexp" "2.0.3.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "brt_jump_run_allSource";
	setAttr ".ihi" 0;
	setAttr ".du" 35;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL715";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL716";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 -0.014638358985086029 1 -0.017671967331394218 
		2 -0.021572320882147555 3 -0.022005693484370138 4 -0.021572320882147555 5 
		-0.021572320882147555 6 -0.021572320882147555 7 -0.021572320882147555 8 -0.021572320882147555 
		9 -0.021572320882147555 10 -0.021572320882147555 11 -0.021572320882147555 
		12 -0.021572320882147555 13 -0.021572320882147555 14 -0.021572320882147555 
		15 -0.021572320882147555 16 -0.02227418028387905 17 -0.023677899087342042 
		18 -0.024730688189939284 19 -0.024379758489073537 20 -0.021572320882147555 
		21 -0.012259067533803476 22 0.0019282096057425557 23 0.013520649960726747 
		24 0.017316081268080399 25 0.017454689147797284 26 0.018509167892886879 27 
		0.020173347911406014 28 0.021673609624755653 29 0.022236333454336767 30 0.021087899821550321 
		31 0.017454689147797284 32 0.0089523757058045158 33 -0.0043625680782882958 
		34 -0.019602564552960937 35 -0.033880036066693167;
createNode animCurveTL -n "Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0.32294453418752544 1 0.45791789129503613 
		2 0.6765174014501758 3 0.82594278127542009 4 0.99195380663584065 5 1.2058894990414282 
		6 1.4367537204459802 7 1.6694029786280138 8 1.8886937813660456 9 2.079482636438593 
		10 2.2351955816615852 11 2.3668631417939481 12 2.4857485550286902 13 2.6031150595588204 
		14 2.7302258935773471 15 2.8783442952772806 16 3.0611908453954122 17 3.2715232662432348 
		18 3.4891605083758912 19 3.6939215223485276 20 3.8656252587162885 21 3.9735433839909282 
		22 4.0270080480925614 23 4.0659289266888772 24 4.0890346313638233 25 4.0903863169671455 
		26 4.089713571452398 27 4.086021211732195 28 4.0811305718115021 29 4.0768629856952838 
		30 4.0750397873885023 31 4.0774823108961238 32 4.0874771943738457 33 4.1043469176218093 
		34 4.1239665771116414 35 4.1422112693149709;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0;
createNode animCurveTU -n "animCurveTU145";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU146";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU147";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU148";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU149";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 23 1 25 0;
createNode animCurveTU -n "animCurveTU150";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 23 1 25 0;
createNode animCurveTU -n "animCurveTU151";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 23 0 25 1;
createNode animCurveTU -n "animCurveTU152";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 23 0 25 1;
createNode animCurveTA -n "animCurveTA2036";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2037";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2038";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL720";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL721";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL722";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL723";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.19763288944005308 2 -0.19763288944005308 
		4 -0.19763288944005308 9 -0.26743046713945823 15 -0.19361324548656986 20 
		-0.19763288944005308 23 -0.26454016861507795 25 -0.26454016861507795 31 -0.26454016861507795 
		35 -0.26454016861507795;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 3 
		3 9 9;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 3 
		3 9 9;
createNode animCurveTL -n "animCurveTL724";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.18919812301601746 2 0.14552605892239473 
		4 0.48553879384849169 9 2.7006242161799872 15 2.7181066443696431 20 0.5390069303671019 
		23 0.21854541072049752 25 0.21854541072049752 31 0.21854541072049752 35 0.21854541072049752;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 3 
		3 9 9;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 3 
		3 9 9;
createNode animCurveTL -n "animCurveTL725";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.99077043779297014 2 1.1961929756633671 
		4 2.1203301526419867 9 5.2431979791589161 15 6.2921032035986126 20 8.2461663583404139 
		23 9.284756007164539 25 9.284756007164539 31 9.284756007164539 35 9.284756007164539;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 3 
		3 9 9;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 3 
		3 9 9;
createNode animCurveTA -n "animCurveTA2039";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -31.548014841396498 2 -1.4427281748707057 
		4 58.991545356860456 9 -23.756352536516083 15 63.42919453699708 20 63.42919453699708 
		23 0 25 0 31 0 35 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 3 
		3 9 9;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 3 
		3 9 9;
createNode animCurveTA -n "animCurveTA2040";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 9 0 15 0 20 0 23 -25.948901905116401 
		25 -25.948901905116401 31 -25.948901905116401 35 -25.948901905116401;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 3 3 
		3 9 9;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 3 3 
		3 9 9;
createNode animCurveTA -n "animCurveTA2041";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 9 0 15 0 20 0 23 0 
		25 0 31 0 35 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
createNode animCurveTL -n "animCurveTL726";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.19697756422115981 2 0.19697756422115981 
		4 0.19697756422115981 9 0.19697756422115981 15 0.20466293379550235 20 0.19697756422115981 
		23 0.21594587158542247 25 0.21594587158542247 31 0.21594587158542247 35 0.21594587158542247;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 3 
		3 3 9;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 3 
		3 3 9;
createNode animCurveTL -n "animCurveTL727";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.49095526767731257 2 0.22175644724314478 
		4 0.24513094272336303 9 2.5551053259469829 15 2.8688065975154795 20 0.46685556106951737 
		23 0.21854505205085809 25 0.21854505205085809 31 0.21854505205085809 35 0.21854505205085809;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 3 
		3 9 9;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 3 
		3 9 9;
createNode animCurveTL -n "animCurveTL728";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.092819338422239051 2 1.7458099737334241 
		4 1.8511113012100922 9 4.3214402232490379 15 7.0354508459422771 20 9.2258366859591909 
		23 9.3504447163875906 25 9.3504447163875906 31 9.3504447163875906 35 9.3504447163875906;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 3 
		3 9 9;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 3 
		3 9 9;
createNode animCurveTA -n "animCurveTA2042";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 72.51831712904297 2 26.091360890572709 
		4 7.0836138343503396 9 63.280688109220009 15 15.152663851696316 20 -21.697759345501197 
		23 0 25 0 31 0 35 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 3 
		3 9 9;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 3 
		3 9 9;
createNode animCurveTA -n "animCurveTA2043";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 9 0 15 0 20 0 23 0 
		25 0 31 0 35 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
createNode animCurveTA -n "animCurveTA2044";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 9 0 15 0 20 0 23 0 
		25 0 31 0 35 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
createNode animCurveTA -n "animCurveTA2045";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2046";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2047";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2048";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2049";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2050";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2051";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2052";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2053";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2054";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2055";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2056";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL729";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 9 0 15 0 20 0 23 0 
		25 0 31 0 35 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
createNode animCurveTL -n "animCurveTL730";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 9 0 15 0 20 0 23 0 
		25 0 31 0 35 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
createNode animCurveTL -n "animCurveTL731";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 2 1 4 1 9 1 15 1 20 1 23 1 
		25 1 31 1 35 1;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
createNode animCurveTL -n "animCurveTL732";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 9 0 15 0 20 0 23 0 
		25 0 31 0 35 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
createNode animCurveTL -n "animCurveTL733";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 9 0 15 0 20 0 23 0 
		25 0 31 0 35 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
createNode animCurveTL -n "animCurveTL734";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 2 1 4 1 9 1 15 1 20 1 23 1 
		25 1 31 1 35 1;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
createNode animCurveTL -n "animCurveTL735";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.033041213165890024 2 -0.048692319506319935 
		4 -0.048692319506319935 9 -0.048692319506319935 15 -0.048692319506319935 
		20 -0.048692319506319935 23 0.03051835782609956 25 0.03939813919472121 31 
		0.03939813919472121 35 -0.076472881617957691;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
createNode animCurveTL -n "animCurveTL736";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.86191433053168653 2 0.71947078807178333 
		4 0.87639974265305898 9 2.9942091371908175 15 3.3210984729564728 20 1.0085220366676828 
		23 0.6772959304381142 25 0.57343699945878546 31 0.61678692073698771 35 0.95473100313980441;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 1 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 1 
		9 9 9;
	setAttr -s 10 ".kix[6:9]"  0.0062057445757091045 0.044027835130691528 
		0.0087418267503380775 0.0039453948847949505;
	setAttr -s 10 ".kiy[6:9]"  -0.99998074769973755 -0.99903029203414917 
		0.99996179342269897 0.99999219179153442;
	setAttr -s 10 ".kox[6:9]"  0.0062057911418378353 0.044027835130691528 
		0.0087418267503380775 0.0039453948847949505;
	setAttr -s 10 ".koy[6:9]"  -0.99998074769973755 -0.99903029203414917 
		0.99996179342269897 0.99999219179153442;
createNode animCurveTL -n "animCurveTL737";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.72893957619979599 2 1.5270123990348288 
		4 2.239004878153577 9 4.6937384945496152 15 6.4969022499021047 20 8.7253597430438354 
		23 9.1774784674264556 25 9.2326828688548499 31 9.2035563789442687 35 9.3496604139185546;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
createNode animCurveTA -n "animCurveTA2057";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 20.950825280283915 2 20.950825280283908 
		4 20.950825280283908 9 -27.4658159762194 15 -31.871346166237402 20 -17.73343894735353 
		23 -11.722674222649985 25 -11.722674222649985 31 -11.722674222649983 35 -0.62843630316474508;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
createNode animCurveTA -n "animCurveTA2058";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -7.5734518508549122 2 -6.8139232258102842 
		4 -6.8139232258102842 9 -6.6831835168417442 15 -6.2464949092521325 20 -6.2464949092521254 
		23 0 25 0 31 0 35 -5.8284402688137167;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
createNode animCurveTA -n "animCurveTA2059";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 -1.4726187357019898 4 -1.4726187357019898 
		9 1.9851625591198019 15 3.0995684069088036 20 3.0995684069087965 23 0 25 
		0 31 0 35 -1.295636019309746;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
createNode animCurveTA -n "animCurveTA2060";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2061";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2062";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.0984482521620249 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2063";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 18.588300303494186 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2064";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2065";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2066";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -22.686733334985114 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2067";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2068";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2069";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0579251312417479e-005 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2070";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2071";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2072";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.0984482535121209 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2073";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 18.588300300216805 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2074";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2075";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2076";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -22.686733333057838 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2077";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2078";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2079";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0579251312417479e-005 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2080";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2081";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2082";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.4782236286598098 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "brt_L_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "brt_L_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "brt_L_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTL -n "animCurveTL744";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.98061208805004418 22 -0.98061208805004418 
		25 -0.98061208805004418 31 -0.92287094496223643 35 -0.8448236677023373;
createNode animCurveTL -n "animCurveTL745";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.63150002143062933 22 0.63150002143062933 
		25 0.63150002143062933 31 0.56644343935920771 35 1.0304014029588007;
createNode animCurveTL -n "animCurveTL746";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 12.453949396124056 22 12.453949396124056 
		25 12.453949396124056 31 12.395899816357968 35 11.994352297956164;
createNode animCurveTA -n "animCurveTA2092";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 22 -42.867554010787885 25 -38.134762363532673 
		31 0.84516848667927391 35 5.4739599453216465;
	setAttr -s 5 ".kit[0:4]"  3 9 9 1 9;
	setAttr -s 5 ".kot[0:4]"  3 1 9 1 9;
	setAttr -s 5 ".kix[3:4]"  0.47622326016426086 0.85525590181350708;
	setAttr -s 5 ".kiy[3:4]"  0.87932437658309937 0.51820594072341919;
	setAttr -s 5 ".kox[1:4]"  0.77098405361175537 0.36594519019126892 
		0.47622323036193848 0.85525590181350708;
	setAttr -s 5 ".koy[1:4]"  0.63685446977615356 0.93063640594482422 
		0.87932443618774414 0.51820594072341919;
createNode animCurveTA -n "animCurveTA2093";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 22 28.149690506654711 25 27.83960258319113 
		31 21.560322259711064 35 8.5874521608419823;
	setAttr -s 5 ".kit[0:4]"  3 9 9 1 9;
	setAttr -s 5 ".kot[0:4]"  3 1 9 1 9;
	setAttr -s 5 ".kix[3:4]"  0.55313801765441895 0.50743144750595093;
	setAttr -s 5 ".kiy[3:4]"  -0.83308959007263184 -0.86169213056564331;
	setAttr -s 5 ".kox[1:4]"  0.99853867292404175 0.93373972177505493 
		0.55313795804977417 0.50743144750595093;
	setAttr -s 5 ".koy[1:4]"  -0.05404147133231163 -0.3579527735710144 
		-0.83308964967727661 -0.86169213056564331;
createNode animCurveTA -n "animCurveTA2094";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 22 30.109428848425473 25 31.359956923713636 
		31 56.68315006067558 35 74.754744621954103;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 1 9 9 9;
	setAttr -s 5 ".kox[1:4]"  0.97700017690658569 0.54311704635620117 
		0.40282496809959412 0.38937026262283325;
	setAttr -s 5 ".koy[1:4]"  0.21323844790458679 0.8396570086479187 
		0.91527700424194336 0.9210813045501709;
createNode animCurveTL -n "animCurveTL747";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.92493013705870175 22 0.92493013705870175 
		25 0.92493013705870175 31 0.85311970967631501 35 0.61083301393139333;
createNode animCurveTL -n "animCurveTL748";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.53859139700882563 22 0.53859139700882563 
		25 0.53859139700882563 31 0.50851714900144152 35 1.0211562878106184;
createNode animCurveTL -n "animCurveTL749";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 12.62154166463254 22 12.62154166463254 
		25 12.62154166463254 31 12.50246026287355 35 12.235489948272752;
createNode animCurveTA -n "animCurveTA2095";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 22 -2.1513976318227264 25 -2.1513976318227264 
		31 -2.1513976318227264 35 16.226511010665412;
	setAttr -s 5 ".kit[0:4]"  3 9 3 9 9;
	setAttr -s 5 ".kot[0:4]"  3 1 3 9 9;
	setAttr -s 5 ".kox[1:4]"  1 1 0.72057139873504639 0.38384354114532471;
	setAttr -s 5 ".koy[1:4]"  0 0 0.69338071346282959 0.92339813709259033;
createNode animCurveTA -n "animCurveTA2096";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 22 -29.430271342549375 25 -29.430271342549375 
		31 -29.430271342549375 35 -8.5139660854992858;
	setAttr -s 5 ".kit[0:4]"  3 9 3 9 9;
	setAttr -s 5 ".kot[0:4]"  3 1 3 9 9;
	setAttr -s 5 ".kox[1:4]"  1 1 0.67429047822952271 0.34307169914245605;
	setAttr -s 5 ".koy[1:4]"  0 0 0.73846620321273804 0.93930923938751221;
createNode animCurveTA -n "animCurveTA2097";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 22 -43.400827249869813 25 -43.400827249869813 
		31 -43.40082724986982 35 -68.213989601412422;
	setAttr -s 5 ".kit[0:4]"  3 9 3 9 9;
	setAttr -s 5 ".kot[0:4]"  3 1 3 9 9;
	setAttr -s 5 ".kox[1:4]"  1 1 0.60994237661361694 0.29424828290939331;
	setAttr -s 5 ".koy[1:4]"  0 0 -0.79244577884674072 -0.95572900772094727;
createNode animCurveTL -n "animCurveTL750";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 9 0 15 0 20 0 23 0.44879925919486569 
		25 0.44879925919486569 31 0.44879925919486569 35 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
createNode animCurveTL -n "animCurveTL751";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 9 0 15 0 20 0 23 -2.1086769476633807 
		25 -2.1086769476633807 31 -2.1086769476633807 35 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
createNode animCurveTL -n "animCurveTL752";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1 2 -1 4 -1 9 -1 15 -1 20 -1 
		23 -0.18536689079245133 25 -0.18536689079245133 31 -0.18536689079245133 35 
		-1;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
createNode animCurveTL -n "animCurveTL753";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 9 0 15 0 20 0 23 -0.5126104209518183 
		25 -0.5126104209518183 31 -0.5126104209518183 35 -0.10167917362943303;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
createNode animCurveTL -n "animCurveTL754";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 9 0 15 0 20 0 23 -1.3386630780291868 
		25 -1.3386630780291868 31 -1.3386630780291868 35 -0.40762644910266188;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
createNode animCurveTL -n "animCurveTL755";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1 2 -1 4 -1 9 -1 15 -1 20 -1 
		23 -0.049199106950677696 25 -0.049199106950677696 31 -0.049199106950677696 
		35 -0.93129112588482243;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
createNode animCurveTA -n "animCurveTA2098";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 52.637219839343977 4 38.288355439467409 
		8 -9.7806751951410718 16 -58.519680197032365 20 -31.571577954490724 23 -42.771826393301765 
		25 -22.78039507191296 31 -22.78039507191296 35 12.253734489678925;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA2099";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -24.480967171432493 4 -34.477986237269441 
		8 -8.4296852078207465 16 33.527431276659861 20 7.3574512395266103 23 -50.50902704873203 
		25 -59.78589307060367 31 -59.78589307060367 35 -65.746751280844975;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 1 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[6:8]"  1 0.9545859694480896 0.78839731216430664;
	setAttr -s 9 ".kiy[6:8]"  0 -0.29793563485145569 -0.61516642570495605;
createNode animCurveTA -n "animCurveTA2100";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -64.344364641857084 4 -58.841273892169454 
		8 13.309227169289349 16 48.24819198542562 20 35.617654615044998 23 34.78650961055213 
		25 34.574435665981952 31 34.574435665981952 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA2101";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -53.609443747430014 4 55.55104118666123 
		8 -39.047870538844734 16 -78.55054160946581 20 -34.843094200493795 23 -18.096320074856848 
		25 -4.3077020824181265 31 -4.3077020824181256 35 -0.061808866237340665;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA2102";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -25.27913794042524 4 -22.864898916390906 
		8 34.228246858113778 16 47.006849538266806 20 2.1260275889345177 23 -49.220253033269849 
		25 -49.658336589859132 31 -49.658336589859147 35 -59.058178941076754;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 1 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[6:8]"  1 0.89721798896789551 0.63069528341293335;
	setAttr -s 9 ".kiy[6:8]"  0 -0.441587895154953 -0.77603060007095337;
createNode animCurveTA -n "animCurveTA2103";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 57.594080128123679 4 -66.560432261884458 
		8 31.092418731050284 16 5.0067341800000937 20 -4.0384343808384129 23 22.481085713744079 
		25 45.957278122761899 31 45.957278122761899 35 16.57914742975785;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA2104";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 59.468287502559065 4 42.061717197589253 
		8 63.595530963034982 16 18.413186094630159 20 50.602895361976628 23 44.432703580981681 
		25 64.255341242982553 31 64.255341242982553 35 8.5572674112203639;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA2105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 59.305463658789549 4 39.540454462093251 
		8 15.683132976672461 16 29.822033701000105 20 76.952784880962497 23 50.842923737118142 
		25 72.208811687058059 31 72.208811687058059 35 15.711328223519061;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA2106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 18.476235154862632 4 -20.023139945693767 
		8 -20.023139945693767 16 45.026792796940271 20 -20.023139945693767 23 60.563198486797667 
		25 72.79493678537078 31 72.794936785370766 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA2107";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 10.082003051124275 4 26.671328910479655 
		8 26.671328910479655 16 26.671328910479694 20 26.671328910479655 23 26.360430176523643 
		25 35.224795679311441 31 35.224795679311441 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA2108";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -4.720189328892868 4 5.3717556430426301 
		8 5.3717556430426301 16 5.3717556430426114 20 5.3717556430426301 23 33.197555990358396 
		25 56.771965155298119 31 56.771965155298119 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA2109";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -11.342548829337773 4 -50.380399976743753 
		8 5.5563002740969507 16 -14.855460620052202 20 5.5563002740969507 23 59.556508727470074 
		25 59.556508727470074 31 59.556508727470074 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA2110";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 11.615881410206434 4 17.011015481116551 
		8 17.01101548111658 16 3.4359667312808053 20 17.01101548111658 23 36.028288837490415 
		25 36.028288837490415 31 36.028288837490415 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA2111";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.32159281075535046 4 -5.3376311675567187 
		8 -5.3376311675567338 16 -8.2007816812803718 20 -5.3376311675567338 23 13.094680882304901 
		25 13.094680882304901 31 13.094680882304898 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "brt_Thumb_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 -135.99575007373303;
createNode animCurveTA -n "Thumb_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  35 60.679225746638807;
createNode animCurveTA -n "Thumb_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  35 48.350963991229975;
createNode animCurveTA -n "animCurveTA2115";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 16 0 20 0 23 0 25 0 
		31 0 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA2116";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 16 0 20 0 23 0 25 0 
		31 0 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA2117";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 101.15442879205187 4 67.810939637714412 
		8 67.810939637714412 16 67.810939637714412 20 67.810939637714412 23 59.219502482153104 
		25 59.219502482153104 31 59.219502482153118 35 27.080064458283051;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA2118";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2119";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2120";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2121";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 27.70521891534332 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2122";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 43.35103828268312 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2123";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 54.235722998003197 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  0.26331391930580139;
	setAttr -s 2 ".kiy[1]"  -0.96471017599105835;
createNode animCurveTA -n "animCurveTA2124";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 39.038703285259977 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2125";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 72.755037061650995 35 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2126";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 38.926480273156798 35 13.994403295754109;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA2127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 16 0 20 0 23 0 25 0 
		31 0 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA2128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 16 0 20 0 23 0 25 0 
		31 0 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA2129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 81.622987204614233 4 40.637834425062678 
		8 40.637834425062678 16 40.637834425062678 20 40.637834425062678 23 66.672206829852314 
		25 66.672206829852314 31 66.672206829852328 35 27.911632519594587;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA2130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.2945941069882385 4 0 8 0 16 
		0 20 0 23 0 25 0 31 0 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 1 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 3.3208811165553156 4 0 8 0 16 
		0 20 0 23 0 25 0 31 0 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 1 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -27.52582447785997 4 0 8 0 16 
		0 20 0 23 0 25 0 31 0 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 1 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -8.7597363552835983 4 -7.660020298875442 
		8 -20.174528203279309 16 9.3168978960520814 20 8.4064065218267139 23 -1.5829914574537056 
		25 -1.7049747317397197 31 -1.704974731739719 35 -0.65073001024951671;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA2134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 1.4575024756080202 8 3.5015358300888062 
		16 -2.6412510516012935 20 -3.9144739663283423 23 -1.7175900971389688 25 -1.3972839984681547 
		31 -1.397283998468154 35 -4.2368721935960938;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA2135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -8.9349579591731985 4 11.303295119228467 
		8 -18.434669853316674 16 -16.499523597698332 20 0.31929352552719664 23 26.300887772213173 
		25 32.754691543705967 31 28.797380284411332 35 2.6995264082587442;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA2136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 16 0 20 0 23 0 25 0 
		31 0 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA2137";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 16 0 20 0 23 0 25 0 
		31 0 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA2138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 16 0 20 0 23 14.508952910281577 
		25 14.508952910281577 31 14.508952910281574 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA2139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0.88855738406062901 8 0.88855738406062901 
		16 7.4551353158152267 20 6.0738884979870953 23 3.6375267832064915 25 5.3394441416968288 
		31 5.3394441416968288 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA2140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -9.2427148064678804 4 -8.2331616608723177 
		8 -8.2331616608723177 16 3.2100512689098402 20 5.3890682779967127 23 5.005087459058303 
		25 3.1252923706827938 31 3.1252923706827955 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA2141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -10.062830706779264 4 -7.5844312513428269 
		8 -7.5844312513428269 16 2.0594213626924698 20 0.069580784890004577 23 -2.5006014476938456 
		25 21.163097977813688 31 21.163097977813695 35 6.6786334979782902;
	setAttr -s 9 ".kit[0:8]"  3 9 9 1 1 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 1 1 9 9 
		9 9;
	setAttr -s 9 ".kix[3:8]"  0.85773366689682007 0.73541063070297241 
		0.41241848468780518 0.5424269437789917 0.79677408933639526 0.46651297807693481;
	setAttr -s 9 ".kiy[3:8]"  0.51409429311752319 -0.67762172222137451 
		0.91099452972412109 0.84010297060012817 -0.60427731275558472 -0.88451433181762695;
	setAttr -s 9 ".kox[3:8]"  0.85773360729217529 0.73541074991226196 
		0.41241848468780518 0.5424269437789917 0.79677408933639526 0.46651297807693481;
	setAttr -s 9 ".koy[3:8]"  0.51409435272216797 -0.67762154340744019 
		0.91099452972412109 0.84010297060012817 -0.60427731275558472 -0.88451433181762695;
createNode animCurveTA -n "animCurveTA2142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 16 0 20 0 23 -0.18869730455872094 
		25 -0.013750268718396658 31 -0.013750268718396562 35 -1.8903601258661935;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA2143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 16 0 20 0 23 1.4407607497566994 
		25 1.452997479744611 31 1.452997479744611 35 2.5597289571479038;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA2144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 5.671986885245901 4 0 8 0 16 
		0 20 0 23 35.157428558935315 25 42.399434798529782 31 39.180803183306388 
		35 2.0168110874036049;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA2145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 16 0 20 0 23 0 25 0 
		31 0 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA2146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 16 0 20 0 23 0 25 0 
		31 0 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA2147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 90.838361755940937 4 66.910735171519136 
		8 66.910735171519136 16 66.910735171519136 20 66.910735171519136 23 61.824373247854581 
		25 61.824373247854581 31 61.824373247854581 35 33.429092416277157;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "Thumb_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  35 -129.34036054043401;
createNode animCurveTA -n "Thumb_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  35 42.116293762219648;
createNode animCurveTA -n "Thumb_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  35 51.312599966148383;
createNode animCurveTA -n "animCurveTA2151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 16 0 20 0 23 0 25 0 
		31 0 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA2152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 16 0 20 0 23 0 25 0 
		31 0 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA2153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 86.611733534295581 4 55.749331591600708 
		8 55.749331591600708 16 55.749331591600708 20 55.749331591600708 23 50.17101925731437 
		25 50.17101925731437 31 50.171019257314363 35 17.254116939558369;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
createNode clipLibrary -n "clipLibrary1";
	setAttr -s 156 ".cel[0].cev";
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
	setAttr ".o" 21;
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
	setAttr -s 654 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -k on ".ra";
	setAttr -k on ".clip";
	setAttr -k on ".edm";
	setAttr -k on ".edl";
	setAttr -k on ".esr";
	setAttr -k on ".ors";
	setAttr -k on ".outf";
	setAttr -k on ".gama";
	setAttr ".top" 478;
	setAttr -k on ".left";
	setAttr -k on ".bot";
	setAttr ".rght" 638;
	setAttr -k on ".urr";
	setAttr ".fs" 1;
	setAttr ".ef" 10;
	setAttr -k on ".bf";
	setAttr -k on ".bfs";
	setAttr -k on ".be";
	setAttr -k on ".fec";
	setAttr -k on ".sec";
	setAttr -k on ".ofc";
	setAttr -k on ".comp";
	setAttr -k on ".cth";
	setAttr -k on ".rd";
	setAttr -k on ".lp";
	setAttr -k on ".sp";
	setAttr -k on ".shs";
	setAttr -k on ".lpr";
	setAttr -k on ".mm";
	setAttr -k on ".npu";
	setAttr -k on ".shp";
	setAttr -k on ".uf";
	setAttr -k on ".oi";
	setAttr -k on ".rut";
	setAttr -k on ".mbf";
	setAttr -k on ".afp";
	setAttr -k on ".pfb";
	setAttr -k on ".bll";
	setAttr -k on ".bls";
	setAttr -k on ".smv";
	setAttr -k on ".ubc";
	setAttr -k on ".mbc";
	setAttr -k on ".udbx";
	setAttr -k on ".smc";
	setAttr -k on ".kmv";
	setAttr -k on ".rgpn";
	setAttr -k on ".rlsd";
	setAttr -k on ".frts";
	setAttr -k on ".tlwd";
	setAttr -k on ".tlht";
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
connectAttr "brt_jump_run_allSource.st" "clipLibrary1.st[0]";
connectAttr "brt_jump_run_allSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL715.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL716.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU145.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU146.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU147.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU148.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU149.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU150.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU151.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU152.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA2036.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA2037.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA2038.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL720.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL721.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL722.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL723.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL724.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL725.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA2039.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA2040.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA2041.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL726.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL727.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL728.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA2042.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA2043.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA2044.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA2045.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA2046.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA2047.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA2048.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA2049.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA2050.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA2051.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA2052.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA2053.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA2054.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA2055.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA2056.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL729.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL730.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL731.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL732.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL733.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL734.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL735.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL736.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL737.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA2057.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA2058.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA2059.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA2060.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA2061.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA2062.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA2063.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA2064.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA2065.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA2066.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA2067.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA2068.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA2069.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA2070.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA2071.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA2072.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA2073.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA2074.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA2075.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA2076.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA2077.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA2078.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA2079.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA2080.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA2081.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA2082.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "brt_L_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[79].cevr"
		;
connectAttr "brt_L_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[80].cevr"
		;
connectAttr "brt_L_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[81].cevr"
		;
connectAttr "animCurveTL744.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL745.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL746.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA2092.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA2093.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA2094.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL747.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL748.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL749.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA2095.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA2096.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA2097.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL750.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL751.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL752.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL753.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL754.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL755.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA2098.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA2099.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA2100.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA2101.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA2102.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA2103.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA2104.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA2105.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA2106.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA2107.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA2108.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA2109.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA2110.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA2111.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "brt_Thumb_Base_L_rotateX.a" "clipLibrary1.cel[0].cev[126].cevr"
		;
connectAttr "Thumb_Base_L_rotateY.a" "clipLibrary1.cel[0].cev[127].cevr"
		;
connectAttr "Thumb_Base_L_rotateZ.a" "clipLibrary1.cel[0].cev[128].cevr"
		;
connectAttr "animCurveTA2115.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA2116.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA2117.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA2118.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA2119.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA2120.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA2121.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA2122.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA2123.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA2124.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA2125.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA2126.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA2127.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA2128.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA2129.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA2130.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA2131.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA2132.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA2133.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA2134.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA2135.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA2136.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA2137.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA2138.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA2139.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA2140.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA2141.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA2142.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA2143.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA2144.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA2145.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA2146.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA2147.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "Thumb_Base_R_rotateX.a" "clipLibrary1.cel[0].cev[162].cevr"
		;
connectAttr "Thumb_Base_R_rotateY.a" "clipLibrary1.cel[0].cev[163].cevr"
		;
connectAttr "Thumb_Base_R_rotateZ.a" "clipLibrary1.cel[0].cev[164].cevr"
		;
connectAttr "animCurveTA2151.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA2152.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA2153.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of brt_jump_run_all.ma
