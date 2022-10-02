//Maya ASCII 4.0 scene
//Name: brt_dash_skid.ma
//Last modified: Tue, May 27, 2003 01:38:02 PM
requires maya "4.0";
requires "p3dDeformer" "2.0";
requires "p3dmayaexp" "2.0.3.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "brt_dash_skidSource";
	setAttr ".ihi" 0;
	setAttr ".du" 26;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL592";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL593";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0.013520649960726747 1 0.013590621552027671 
		2 0.013730564734629514 3 0.013835522121580894 4 0.013800536325930432 5 0.013520649960726747 
		6 0.013197227927476114 7 0.012961895008810197 8 0.012605083639465695 9 0.011917226254179309 
		10 0.010688755287687739 11 0.0087101031747276823 12 0.0057264714845495024 
		13 0.001854554571672284 14 -0.0025579759512641986 15 -0.0071634484716201719 
		16 -0.011614191376755857 17 -0.015562533054031484 18 -0.018998475896257014 
		19 -0.02210545227228251 20 -0.024825935533528343 21 -0.02710239903141488 
		22 -0.029109851245759238 23 -0.030953527475842683 24 -0.032471241302281774 
		25 -0.033500806305693083 26 -0.033880036066693167;
createNode animCurveTL -n "animCurveTL595";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 3.6733541448654354 1 3.798908363271873 
		2 3.9269903690121009 3 4.0538084875314313 4 4.1755710442751726 5 4.2884863646886355 
		6 4.3949294594960513 7 4.4986754912647386 8 4.5980330132046365 9 4.6913105785256857 
		10 4.7768167404378259 11 4.8528600521509944 12 4.9209644793039589 13 4.9827879727959203 
		14 5.0368400637274666 15 5.0816302831991838 16 5.1156681623116613 17 5.1374632321654872 
		18 5.1498461993152356 19 5.155723394166059 20 5.1537178402488122 21 5.1424525610943466 
		22 5.1211026617142092 23 5.0938419519962661 24 5.0667915229065068 25 5.0460724654109255 
		26 5.0378058704755109;
createNode animCurveTA -n "animCurveTA1690";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0;
createNode animCurveTU -n "animCurveTU121";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU122";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU123";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU124";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU125";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 11 1 17 0 26 0;
	setAttr -s 4 ".kit[2:3]"  1 3;
	setAttr -s 4 ".kot[1:3]"  1 9 3;
	setAttr -s 4 ".kix[2:3]"  0.1961161345243454 1;
	setAttr -s 4 ".kiy[2:3]"  -0.98058068752288818 0;
	setAttr -s 4 ".kox[1:3]"  1 0.44721359014511108 1;
	setAttr -s 4 ".koy[1:3]"  0 -0.89442718029022217 0;
createNode animCurveTU -n "animCurveTU126";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 11 1 17 0 26 0;
	setAttr -s 4 ".kit[2:3]"  1 3;
	setAttr -s 4 ".kot[1:3]"  1 9 3;
	setAttr -s 4 ".kix[2:3]"  0.1961161345243454 1;
	setAttr -s 4 ".kiy[2:3]"  -0.98058068752288818 0;
	setAttr -s 4 ".kox[1:3]"  1 0.44721359014511108 1;
	setAttr -s 4 ".koy[1:3]"  0 -0.89442718029022217 0;
createNode animCurveTU -n "animCurveTU127";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 11 0 17 1 26 1;
	setAttr -s 4 ".kit[2:3]"  1 3;
	setAttr -s 4 ".kot[1:3]"  1 9 3;
	setAttr -s 4 ".kix[2:3]"  0.1961161345243454 1;
	setAttr -s 4 ".kiy[2:3]"  0.98058068752288818 0;
	setAttr -s 4 ".kox[1:3]"  1 0.44721359014511108 1;
	setAttr -s 4 ".koy[1:3]"  0 0.89442718029022217 0;
createNode animCurveTU -n "animCurveTU128";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 11 0 17 1 26 1;
	setAttr -s 4 ".kit[2:3]"  1 3;
	setAttr -s 4 ".kot[1:3]"  1 9 3;
	setAttr -s 4 ".kix[2:3]"  0.1961161345243454 1;
	setAttr -s 4 ".kiy[2:3]"  0.98058068752288818 0;
	setAttr -s 4 ".kox[1:3]"  1 0.44721359014511108 1;
	setAttr -s 4 ".koy[1:3]"  0 0.89442718029022217 0;
createNode animCurveTA -n "animCurveTA1691";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1692";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1693";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL597";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL598";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL599";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL600";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.19763288944005308 5 -0.19763288944005308 
		11 -0.265 17 -0.265 26 -0.265;
	setAttr -s 5 ".kit[1:4]"  9 3 3 3;
	setAttr -s 5 ".kot[1:4]"  9 3 3 3;
createNode animCurveTL -n "animCurveTL601";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.4651589669894417 5 0.21835495773015978 
		11 0.21835495773015978 17 0.21841687799739123 26 0.21854541072049752;
	setAttr -s 5 ".kit[1:4]"  9 3 9 3;
	setAttr -s 5 ".kot[1:4]"  9 3 9 3;
createNode animCurveTL -n "animCurveTL602";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 7.8949240517087116 5 9.5914777493632855 
		11 11.298478569479309 17 11.298373131345068 26 11.306262117058028;
	setAttr -s 5 ".kit[2:4]"  3 9 3;
	setAttr -s 5 ".kot[2:4]"  3 9 3;
createNode animCurveTA -n "animCurveTA1694";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 68.750149689121017 5 0.59917317027913031 
		11 0.0028357814165884052 17 0 26 0;
	setAttr -s 5 ".kit[1:4]"  9 3 9 3;
	setAttr -s 5 ".kot[1:4]"  9 3 9 3;
createNode animCurveTA -n "animCurveTA1695";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 -9.4308912150219033 11 -24.544498931403165 
		17 -25.948901905116401 26 -25.948901905116401;
	setAttr -s 5 ".kit[1:4]"  9 1 3 3;
	setAttr -s 5 ".kot[1:4]"  9 1 3 3;
	setAttr -s 5 ".kix[2:4]"  0.9351116418838501 1 1;
	setAttr -s 5 ".kiy[2:4]"  -0.35435321927070618 0 0;
	setAttr -s 5 ".kox[2:4]"  0.93511158227920532 1 1;
	setAttr -s 5 ".koy[2:4]"  -0.35435336828231812 0 0;
createNode animCurveTA -n "animCurveTA1696";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "animCurveTL603";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.19697756422115981 5 0.19697756422115981 
		11 0.21391660883027969 17 0.21594587158542247 26 0.21594587158542247;
	setAttr -s 5 ".kit[1:4]"  9 1 3 3;
	setAttr -s 5 ".kot[1:4]"  9 1 3 3;
	setAttr -s 5 ".kix[2:4]"  0.31432661414146423 1 1;
	setAttr -s 5 ".kiy[2:4]"  0.94931489229202271 0 0;
	setAttr -s 5 ".kox[2:4]"  0.31432878971099854 1 1;
	setAttr -s 5 ".koy[2:4]"  0.9493141770362854 0 0;
createNode animCurveTL -n "animCurveTL604";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.21302296535471346 5 0.35700193468720687 
		11 0.219 17 0.219 26 0.21854505205085809;
	setAttr -s 5 ".kit[1:4]"  9 3 9 3;
	setAttr -s 5 ".kot[1:4]"  9 3 9 3;
createNode animCurveTL -n "animCurveTL605";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.1482643917438846 5 9.6213166819847995 
		11 11.372 17 11.372 26 11.371950826281079;
	setAttr -s 5 ".kit[2:4]"  3 9 3;
	setAttr -s 5 ".kot[2:4]"  3 9 3;
createNode animCurveTA -n "animCurveTA1697";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 77.194699757699198 11 0 17 
		0 26 0;
	setAttr -s 5 ".kit[1:4]"  9 3 9 3;
	setAttr -s 5 ".kot[1:4]"  9 3 9 3;
createNode animCurveTA -n "animCurveTA1698";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1699";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1700";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1701";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1702";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1703";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1704";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1705";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1706";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1707";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1708";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1709";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1710";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1711";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTL -n "animCurveTL606";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTL -n "animCurveTL607";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTL -n "animCurveTL608";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 17 1 26 1;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTL -n "animCurveTL609";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTL -n "animCurveTL610";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTL -n "animCurveTL611";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 17 1 26 1;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTL -n "animCurveTL612";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.03051835782609956 5 0.03051835782609956 
		11 0.019660152889151288 17 -0.035127227892371694 21 -0.06117462651492199 
		26 -0.076472881617957691;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL613";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.85634497663915499 5 0.87580142571340613 
		11 0.80155073784893016 17 0.77595666885568149 21 0.86311471154718467 26 0.95473100313980441;
	setAttr -s 6 ".kit[0:5]"  3 9 1 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 1 9 9 3;
	setAttr -s 6 ".kix[2:5]"  0.023345001041889191 0.054065030068159103 
		0.016778569668531418 1;
	setAttr -s 6 ".kiy[2:5]"  -0.99972748756408691 0.99853742122650146 
		0.99985921382904053 0;
	setAttr -s 6 ".kox[2:5]"  0.023345088586211205 0.054065030068159103 
		0.016778569668531418 1;
	setAttr -s 6 ".koy[2:5]"  -0.99972748756408691 0.99853742122650146 
		0.99985921382904053 0;
createNode animCurveTL -n "animCurveTL614";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.2913718305420581 5 9.6798276554806897 
		11 10.953713022799654 17 11.596109779712759 21 11.607371525709091 26 11.371166523812045;
	setAttr -s 6 ".kit[3:5]"  1 1 3;
	setAttr -s 6 ".kot[3:5]"  1 1 3;
	setAttr -s 6 ".kix[3:5]"  0.0097300074994564056 0.0090296287089586258 
		1;
	setAttr -s 6 ".kiy[3:5]"  0.99995267391204834 -0.99995923042297363 
		0;
	setAttr -s 6 ".kox[3:5]"  0.0097299953922629356 0.009029630571603775 
		1;
	setAttr -s 6 ".koy[3:5]"  0.99995267391204834 -0.99995923042297363 
		0;
createNode animCurveTA -n "animCurveTA1712";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 40.92583813237421 5 -19.052632504459879 
		11 -37.303343321821266 17 27.356941175969908 21 34.542567116508373 26 -0.62843630316474508;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1713";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 11 -6.8119923368400155 
		17 -1.3336767971708379 21 -7.1589407526995954 26 -5.8284402688137167;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1714";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 11 -1.3708009580244251 
		17 2.397105334169336 21 -0.09307802204366579 26 -1.295636019309746;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1715";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1716";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1717";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 4.0984482521620249 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  0.9921267032623291 1;
	setAttr -s 3 ".kiy[1:2]"  -0.12523804605007172 0;
createNode animCurveTA -n "animCurveTA1718";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 18.588300303494186 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  0.86783546209335327 1;
	setAttr -s 3 ".kiy[1:2]"  -0.49685168266296387 0;
createNode animCurveTA -n "animCurveTA1719";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1720";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1721";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -22.686733334985114 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  0.81971311569213867 1;
	setAttr -s 3 ".kiy[1:2]"  0.57277435064315796 0;
createNode animCurveTA -n "animCurveTA1722";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1723";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1724";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.0579251312417479e-005 17 0 
		26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1725";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1726";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1727";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 4.0984482535121209 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  0.9921267032623291 1;
	setAttr -s 3 ".kiy[1:2]"  -0.12523804605007172 0;
createNode animCurveTA -n "animCurveTA1728";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 18.588300300216805 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  0.86783546209335327 1;
	setAttr -s 3 ".kiy[1:2]"  -0.49685168266296387 0;
createNode animCurveTA -n "animCurveTA1729";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1730";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1731";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -22.686733333057838 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  0.81971311569213867 1;
	setAttr -s 3 ".kiy[1:2]"  0.57277435064315796 0;
createNode animCurveTA -n "animCurveTA1732";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1733";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1734";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.0579251312417479e-005 17 0 
		26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1735";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1736";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1737";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1738";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1739";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1740";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL615";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.99632412003841098 26 -0.43524234076486068;
createNode animCurveTL -n "animCurveTL616";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL617";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.055643269750833751 26 0.27773886459742925;
createNode animCurveTA -n "animCurveTA1741";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1742";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 28.652637602052774;
createNode animCurveTA -n "animCurveTA1743";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 64.676908227303443;
createNode animCurveTL -n "animCurveTL618";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.99632500444243621 26 0.5198069948790518;
createNode animCurveTL -n "animCurveTL619";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL620";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.055643118286704089 26 0.36439499068905612;
createNode animCurveTA -n "animCurveTA1744";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 7.7976222737965317;
createNode animCurveTA -n "animCurveTA1745";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 -30.409274105849079;
createNode animCurveTA -n "animCurveTA1746";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 -64.859940280210893;
createNode animCurveTL -n "animCurveTL621";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.98071836797454492 17 -0.74928297019494983 
		21 -0.7806620138907221 26 -0.8448236677023373;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL622";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.6432964864655397 17 0.95442222204840943 
		21 0.80001297522815185 26 1.0304014029588007;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL623";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 18.44400685050341 17 15.896886873762037 
		21 15.514476575820241 26 14.608859366488785;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA1747";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 5.4739599453216465 17 -23.215155221440387 
		21 -11.25151871842851 26 5.4739599453216465;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA1748";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.587452160841984 17 61.150033373848167 
		21 39.23093229188126 26 8.5874521608419823;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA1749";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 74.754744621954103 17 21.965069321055285 
		21 43.978870818275098 26 74.754744621954103;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL624";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.76309120872911718 17 0.76492831190465937 
		21 0.69544896485659824 26 0.61083301393139333;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL625";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.6150490657878991 17 0.76441091840393405 
		21 0.68628519988432568 26 1.0211562878106184;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL626";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 18.685144500819998 17 15.684536589817151 
		21 15.467393233140784 26 14.849997016805375;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA1750";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 16.226511010665419 17 29.692924059912436 
		21 24.077300511255238 26 16.226511010665412;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA1751";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -8.5139660854992876 17 -43.992679725815719 
		21 -29.197715464284588 26 -8.5139660854992858;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA1752";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -68.213989601412422 17 -86.792833269625262 
		21 -79.045277062304677 26 -68.213989601412422;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL627";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0.23460570977805109 26 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTL -n "animCurveTL628";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 -1.6762431933535973 26 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTL -n "animCurveTL629";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 17 -1.0785826799401677 26 
		-1;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTL -n "animCurveTL630";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.10167917362943303 17 -0.13039089605054222 
		26 -0.10167917362943303;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTL -n "animCurveTL631";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.40762644910266188 17 -1.0837274221759037 
		26 -0.40762644910266188;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTL -n "animCurveTL632";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.93129112588482243 17 -0.80618040863792262 
		26 -0.93129112588482243;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTA -n "animCurveTA1753";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -61.548597514581118 5 6.5222453545706891 
		11 -29.318709219068381 17 12.253734489678918 26 12.253734489678925;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1754";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -19.836142380516254 5 -11.270701110865538 
		11 0.2591761412191334 17 -65.746751280844961 26 -65.746751280844975;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1755";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 54.297189229305751 5 -43.024026870863949 
		11 -52.267096591786228 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1756";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 38.697579055586992 5 -26.845686876069546 
		11 -41.702520768547579 17 -0.061808866237340665 26 -0.061808866237340665;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1757";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -37.496909778286962 5 -2.6900261896817361 
		11 -5.6360269321212852 17 -59.058178941076754 26 -59.058178941076754;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1758";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -75.695552325189681 5 45.29300271475654 
		11 21.122073063033287 17 16.57914742975785 26 16.57914742975785;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1759";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 72.938873120018542 5 64.703387914621587 
		11 22.807758850356816 17 8.5572674112203657 26 8.5572674112203639;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1760";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 59.305463658789549 5 16.132257338928927 
		11 78.15412211170387 17 15.711328223519065 26 15.711328223519061;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1761";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -17.955810303398234 5 -15.503254262547973 
		11 -12.849758238864569 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1762";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 10.082003051124259 5 8.8433563691173394 
		11 7.3461064996816994 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1763";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -4.7201893288928654 5 -4.1402801121403421 
		11 -3.439298162041589 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1764";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 20.127263792592359 5 20.531700085875865 
		11 17.390126284086964 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1765";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 11.615881410206432 5 10.18878668450802 
		11 8.4637449952978283 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1766";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.3215928107553504 5 0.28208281983201922 
		11 0.23432397832006235 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1767";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 137.05048270924209 5 138.74506461883382 
		11 138.74506461883382 17 138.20115159981481 26 143.71460997127255;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1768";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 53.910048648242871 5 53.910048648242878 
		11 53.910048648242878 17 27.7228482558439 26 27.804554996454378;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1769";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 43.127820754253506 5 43.127820754253513 
		11 43.127820754253513 17 21.576484776388227 26 29.452980944098748;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1770";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1771";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1772";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 86.382238158606057 5 79.613939213760304 
		11 70.77971168444968 17 27.080064458283047 26 27.080064458283051;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1773";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1774";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1775";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1776";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 26.541511232508348 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  0.77422481775283813 1;
	setAttr -s 3 ".kiy[1:2]"  -0.63291066884994507 0;
createNode animCurveTA -n "animCurveTA1777";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 41.530156331423342 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  0.61590522527694702 1;
	setAttr -s 3 ".kiy[1:2]"  -0.78782027959823608 0;
createNode animCurveTA -n "animCurveTA1778";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 52.545459146006955 17 13.994403295754111 
		26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  0.64417707920074463 1;
	setAttr -s 3 ".kiy[1:2]"  -0.76487636566162109 0;
createNode animCurveTA -n "animCurveTA1779";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 37.39895318822164 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  0.65556657314300537 1;
	setAttr -s 3 ".kiy[1:2]"  -0.75513738393783569 0;
createNode animCurveTA -n "animCurveTA1780";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 69.699093005590768 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  0.42225915193557739 1;
	setAttr -s 3 ".kiy[1:2]"  -0.90647518634796143 0;
createNode animCurveTA -n "animCurveTA1781";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 37.87925340126155 17 13.994403295754111 
		26 13.994403295754109;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[1:2]"  0.80551350116729736 1;
	setAttr -s 3 ".kiy[1:2]"  -0.59257739782333374 0;
createNode animCurveTA -n "animCurveTA1782";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1783";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1784";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 95.284705327631698 5 90.754620314643489 
		11 80.550585000381275 17 27.91163251959459 26 27.911632519594587;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1785";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1786";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1787";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1788";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 -0.80444315775703867 11 -0.68921145621496227 
		17 -2.0909400436807926 21 -1.5248240557546424 26 -0.65073001024951671;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1789";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 -0.60472186283169338 11 -1.3344464943638261 
		17 -4.2319210453524185 21 -3.6133281879584058 26 -4.2368721935960938;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1790";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.98998735715740716 5 2.2124383659318805 
		11 -5.0186679783197166 17 26.041202151909953 21 39.848957946302498 26 2.6995264082587442;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1791";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1792";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1793";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1794";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0.50986500056630668 11 0.87215714273867373 
		17 0.51796104952671496 21 2.359880013212853 26 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1795";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0.51774709160700405 11 2.477928535257151 
		17 12.727334526427551 21 11.01042138930752 26 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1796";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -19.490201297085612 5 -18.050704330054927 
		11 -23.781039275327831 17 -12.760842210164803 21 23.025252990452728 26 6.6786334979782902;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1797";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 -0.28780339846407804 11 -0.32417139403198059 
		17 -1.8903601258661935 26 -1.8903601258661935;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1798";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0.26458471463537331 11 0.79616802841599899 
		17 2.5597289571479038 26 2.5597289571479038;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1799";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.4398976982097267 5 -10.713314820003864 
		11 5.3226666611229376 17 2.0168110874036045 26 2.0168110874036049;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1800";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1801";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1802";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 85.281921116584812 5 79.775929340324637 
		11 72.029582107124057 17 33.429092416277157 26 33.429092416277157;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1803";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 -131.741032595093 4 -131.06259433908869 
		10 -131.06259433908869 16 -130.92237157864577 25 -139.02414703822734;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1804";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 38.578337509358107 5 38.578337509358107 
		11 38.578337509358107 17 23.263402056531085 26 28.612774017129329;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1805";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 45.467643381850564 5 45.467643381850564 
		11 45.467643381850564 17 20.166277752815617 26 17.632837226638049;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1806";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1807";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1808";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 77.470348806333035 5 70.994338622177807 
		11 62.002918112729986 17 17.254116939558365 26 17.254116939558369;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
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
	setAttr -s 21 ".lnk";
select -ne :time1;
	setAttr ".o" 0;
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
connectAttr "brt_dash_skidSource.st" "clipLibrary1.st[0]";
connectAttr "brt_dash_skidSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL592.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL593.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL595.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA1690.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU121.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU122.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU123.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU124.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU125.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU126.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU127.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU128.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA1691.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA1692.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA1693.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL597.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL598.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL599.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL600.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL601.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL602.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA1694.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA1695.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA1696.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL603.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL604.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL605.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA1697.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA1698.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA1699.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA1700.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA1701.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA1702.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA1703.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA1704.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA1705.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA1706.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA1707.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA1708.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA1709.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA1710.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA1711.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL606.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL607.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL608.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL609.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL610.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL611.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL612.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL613.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL614.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA1712.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA1713.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA1714.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA1715.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA1716.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA1717.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA1718.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA1719.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA1720.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA1721.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA1722.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA1723.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA1724.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA1725.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA1726.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA1727.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA1728.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA1729.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA1730.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA1731.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA1732.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA1733.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA1734.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA1735.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA1736.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA1737.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA1738.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA1739.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA1740.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL615.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL616.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL617.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA1741.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA1742.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA1743.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL618.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL619.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL620.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA1744.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA1745.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA1746.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL621.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL622.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL623.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA1747.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA1748.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA1749.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL624.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL625.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL626.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA1750.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA1751.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA1752.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL627.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL628.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL629.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL630.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL631.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL632.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA1753.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA1754.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA1755.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA1756.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA1757.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA1758.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA1759.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA1760.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA1761.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA1762.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA1763.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1764.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1765.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1766.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA1767.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1768.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1769.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1770.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1771.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1772.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1773.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1774.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1775.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA1776.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA1777.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA1778.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA1779.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA1780.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA1781.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1782.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1783.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1784.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1785.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1786.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1787.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1788.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1789.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1790.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1791.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1792.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1793.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1794.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1795.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1796.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1797.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1798.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1799.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1800.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1801.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1802.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA1803.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA1804.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA1805.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA1806.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA1807.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA1808.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of brt_dash_skid.ma
