//Maya ASCII 4.0 scene
//Name: mlh_hit_by_car_back.ma
//Last modified: Tue, Jun 25, 2002 01:43:04 PM
requires maya "4.0";
requires "p3dSimpleShader" "17.1";
requires "p3dmayaexp" "17.7";
requires "p3dDeformer" "17.1.0.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mlh_hit_by_car_backSource";
	setAttr ".ihi" 0;
	setAttr ".du" 26;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL317";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL318";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0.014912437301453059 1 0.013782030683115011 
		2 0.011521217441606176 3 0.0098256074971845037 4 0.0094488052797954206 5 
		0.0096372063884899613 6 0.0098256074971845037 7 0.0098256074971845037 8 0.0098256074971845037 
		9 0.0098256074971845037 10 0.0098256074971845037 11 0.0098256074971845037 
		12 0.0098256074971845037 13 0.0098256074971845037 14 0.0098256074971845037 
		15 0.0098256074971845037 16 0.0098256074971845037 17 0.0098256074971845037 
		18 0.0098256074971845037 19 0.0098256074971845037 20 0.0098256074971845037 
		21 0.0076986186535714894 22 0.005571629809958476 23 0.0098256074971845037 
		24 0.028968507166591519 25 0.054492373432743192 26 0.067254306571311165;
createNode animCurveTL -n "Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0.026254147867437072 1 0.069105808298076443 
		2 0.12149557509315008 3 0.19794006686185128 4 0.32473967665860537 5 0.4755940161475487 
		6 0.58611853185244134 7 0.63352989265650028 8 0.65149308715248522 9 0.6602960414284702 
		10 0.68022668157252908 11 0.71863667431476397 12 0.76480674737888021 13 0.81191841834335665 
		14 0.86078943960796017 15 0.91060205964898289 16 0.95208454015969213 17 0.9812819949618512 
		18 1.004002729614087 19 1.0256197934149609 20 1.0515062356630336 21 1.0796601138377233 
		22 1.1122199707441904 23 1.1607695836696121 24 1.2345001339062873 25 1.3242204408136862 
		26 1.4139407387797422;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0;
createNode animCurveTU -n "animCurveTU65";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTU -n "animCurveTU66";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTU -n "animCurveTU67";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTU -n "animCurveTU68";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTU -n "animCurveTU69";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 26 1;
	setAttr -s 2 ".kit[0:1]"  3 1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU70";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 26 1;
	setAttr -s 2 ".kit[0:1]"  3 1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU71";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[0:1]"  3 1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU72";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[0:1]"  3 1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA927";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[0:1]"  3 1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA928";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[0:1]"  3 1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA929";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[0:1]"  3 1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL322";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[0:1]"  3 1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL323";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[0:1]"  3 1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL324";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[0:1]"  3 1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL325";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.19763288944005308 3 -0.24210781675721296 
		6 -0.13747837339481045 10 -0.22542660156474811 13 -0.22542660156474811 16 
		-0.14565775071049758 20 -0.29804414671624174 23 -0.36108719875169565 26 -0.18720350650219833;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  0.027973722666501999;
	setAttr -s 9 ".kiy[8]"  0.99960863590240479;
	setAttr -s 9 ".kox[0:8]"  0.029965974390506744 0.033229351043701172 
		0.13852924108505249 0.026521427556872368 0.025064565241336823 0.032115235924720764 
		0.010830443352460861 0.018040984869003296 0;
	setAttr -s 9 ".koy[0:8]"  -0.99955093860626221 0.99944776296615601 
		0.99035835266113281 -0.99964827299118042 0.99968582391738892 -0.99948418140411377 
		-0.99994134902954102 0.99983721971511841 0;
createNode animCurveTL -n "animCurveTL326";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.41096769948180967 3 0.25881356584366216 
		6 0.59773772961557259 10 1.1686970108286903 13 1.3593930208618739 16 0.60164098190882953 
		20 0.38622351023780432 23 0.58045794689479757 26 0.22548302246149554;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  0.0087627070024609566 0.010707741603255272 
		0.0025644225534051657 0.0030634885188192129 0.0035269663203507662 0.0023976569063961506 
		0.10948881506919861 0.012441452592611313 0;
	setAttr -s 9 ".koy[0:8]"  -0.99996161460876465 0.99994266033172607 
		0.99999672174453735 0.99999529123306274 -0.99999380111694336 -0.99999713897705078 
		-0.993988037109375 -0.99992257356643677 0;
createNode animCurveTL -n "animCurveTL327";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.34271856858817051 3 0.65374896416217998 
		6 1.8188203403606895 10 2.1410425309065348 13 2.0713645489492167 16 2.6498339189880555 
		20 2.8349147266880204 23 3.031403703382034 26 3.6172656116863173;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  0.001338058733381331 0.0009252663585357368 
		0.0015688431449234486 0.0092389117926359177 0.0039308536797761917 0.0030558863654732704 
		0.0061149750836193562 0.0025563894305378199 0.0017068847082555294;
	setAttr -s 9 ".koy[0:8]"  0.99999910593032837 0.99999958276748657 
		0.99999874830245972 0.99995732307434082 0.9999922513961792 0.99999535083770752 
		0.99998128414154053 0.99999672174453735 0.99999856948852539;
createNode animCurveTA -n "animCurveTA930";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 68.750149689121002 3 14.794077428140255 
		6 24.788488237156894 10 -71.368064289740971 13 -105.78227055944849 16 -58.242721384875814 
		20 -16.618499285660299 23 -16.618499285660299 26 -14.120925422142024;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  0.14018805325031281 0.25223428010940552 
		0.15332643687725067 0.10185652226209641 0.65767467021942139 0.14828024804592133 
		0.30579772591590881 0.97706198692321777 0;
	setAttr -s 9 ".koy[0:8]"  -0.99012488126754761 -0.96766620874404907 
		-0.98817557096481323 -0.99479907751083374 0.75330209732055664 0.9889453649520874 
		0.95209652185440063 0.21295499801635742 0;
createNode animCurveTA -n "animCurveTA931";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 7.5012435233160621 3 11.816849367420613 
		6 31.439586139532359 10 3.2873600474623235 13 -12.860816377971501 16 17.17450965240165 
		20 27.425513876946702 23 27.425513876946702 26 10.41569297971105;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  0.87067687511444092 0.43177387118339539 
		0.84303444623947144 0.28891167044639587 0.63645756244659424 0.31496033072471619 
		0.79356551170349121 0.55871987342834473 0;
	setAttr -s 9 ".koy[0:8]"  0.49185541272163391 0.9019818902015686 
		-0.53785961866378784 -0.95735573768615723 0.77131175994873047 0.94910484552383423 
		0.60848486423492432 -0.82935643196105957 0;
createNode animCurveTA -n "animCurveTA932";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 1.1479613694776927 6 16.496370774489311 
		10 -25.966392145809365 13 -22.976089567985834 16 -22.8972604899818 20 -0.10635660128359627 
		23 -0.10635660128359625 26 -0.92396648882032695;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  0.98889744281768799 0.57050806283950806 
		0.44222739338874817 0.32079219818115234 0.96595406532287598 0.5046689510345459 
		0.50596821308135986 0.99746429920196533 0;
	setAttr -s 9 ".koy[0:8]"  0.14859946072101593 0.82129198312759399 
		-0.89690297842025757 -0.94714957475662231 0.25871366262435913 0.86331295967102051 
		0.86255216598510742 -0.071169003844261169 0;
createNode animCurveTL -n "animCurveTL328";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.27370329528033366 3 0.27370329528033366 
		6 0.33973853217801209 8 0.28870326199672919 10 0.22823438669321672 13 0.22823438669321672 
		16 0.22823438669321672 18 0.18972781692274282 20 0.14180032936688033 23 0.075853895981002437 
		26 0.31408772304664229;
	setAttr -s 11 ".kit[0:10]"  3 3 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[0:10]"  3 3 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[10]"  0.011022995226085186;
	setAttr -s 11 ".kiy[10]"  -0.99993926286697388;
createNode animCurveTL -n "animCurveTL329";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.15883169784708112 3 0.15883169784708112 
		6 0.56676402275093585 8 0.73484256381026103 10 1.3426312148878752 13 1.4561352484333767 
		16 1.1619715940794213 18 0.70172245629781826 20 0.36974525430073824 23 0.90192851020002618 
		26 0.20816951937424563;
	setAttr -s 11 ".kit[0:10]"  3 3 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[0:10]"  3 3 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
createNode animCurveTL -n "animCurveTL330";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.089378228552998554 3 -0.0021586530292308568 
		6 1.2759723812768622 8 1.882485956229381 10 1.9127116460759686 13 1.9127116460759686 
		16 1.9687628901171921 18 2.6759483594032676 20 2.823855566440995 23 3.1287730327571657 
		26 3.5011609638421071;
	setAttr -s 11 ".kit[0:10]"  3 1 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 1 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kix[1:10]"  0.0028732912614941597 0.00088433967903256416 
		0.0020939975511282682 0.055057093501091003 0.035658940672874451 0.0021836771629750729 
		0.0015592832351103425 0.0036805756390094757 0.0029528646264225245 0.0026853624731302261;
	setAttr -s 11 ".kiy[1:10]"  0.9999958872795105 0.99999958276748657 
		0.99999779462814331 0.99848318099975586 0.99936401844024658 0.99999761581420898 
		0.99999880790710449 0.99999320507049561 0.9999956488609314 0.99999642372131348;
	setAttr -s 11 ".kox[1:10]"  0.0028732749633491039 0.00088433967903256416 
		0.0020939975511282682 0.055057093501091003 0.035658940672874451 0.0021836771629750729 
		0.0015592832351103425 0.0036805756390094757 0.0029528646264225245 0.0026853624731302261;
	setAttr -s 11 ".koy[1:10]"  0.9999958872795105 0.99999958276748657 
		0.99999779462814331 0.99848318099975586 0.99936401844024658 0.99999761581420898 
		0.99999880790710449 0.99999320507049561 0.9999956488609314 0.99999642372131348;
createNode animCurveTA -n "animCurveTA933";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 54.737521101086955 8 
		-4.4363356239241982 10 -78.720615258300938 13 -129.75606004715453 16 -129.75606004715453 
		18 -76.086187650408164 20 -22.416315253661804 23 -22.416315253661804 26 -47.030685128504309;
	setAttr -s 11 ".kit[0:10]"  3 3 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[0:10]"  3 3 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[10]"  0.66625487804412842;
	setAttr -s 11 ".kiy[10]"  0.74572408199310303;
createNode animCurveTA -n "animCurveTA934";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -32.597249886621299 3 -32.597249886621299 
		6 -26.728054330475754 8 -15.001682599375897 10 -1.3192355238031612 13 18.242484995860604 
		16 18.242484995860604 18 -5.9505862429829026 20 -30.143657481826406 23 -30.143657481826406 
		26 -21.733570087519645;
	setAttr -s 11 ".kit[0:10]"  3 3 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[0:10]"  3 3 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[10]"  0.41406980156898499;
	setAttr -s 11 ".kiy[10]"  0.91024512052536011;
createNode animCurveTA -n "animCurveTA935";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 -18.335633901643401 8 
		2.0376536296097818 10 23.865459759320778 13 15.711459605750282 16 15.711459605750282 
		18 19.024202942731709 20 22.336946279713132 23 22.336946279713128 26 -0.22301602594868686;
	setAttr -s 11 ".kit[0:10]"  3 3 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[0:10]"  3 3 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[10]"  0.49176925420761108;
	setAttr -s 11 ".kiy[10]"  -0.87072557210922241;
createNode animCurveTA -n "animCurveTA936";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA937";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA938";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA939";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA940";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA941";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA942";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA943";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA944";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA945";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA946";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA947";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL331";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 -0.42053383394304489 
		10 -0.42053383394304489 13 -0.42053383394304489 16 -0.42053383394304489 20 
		-0.42053383394304489 23 -0.42053383394304489 26 -0.40864513999961338;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 0.004755806177854538 0.0055484175682067871 
		1 1 1 1 0.1658959835767746 0;
	setAttr -s 9 ".koy[0:8]"  0 -0.99998867511749268 -0.99998462200164795 
		0 0 0 0 0.98614323139190674 0;
createNode animCurveTL -n "animCurveTL332";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0.82095713402937753 10 
		0.82095713402937753 13 0.82095713402937753 16 0.82095713402937753 20 0.82095713402937753 
		23 0.82095713402937753 26 0.011617857068574339;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 0.0024361736141145229 0.0028421995230019093 
		1 1 1 1 0.0024711438454687595 0;
	setAttr -s 9 ".koy[0:8]"  0 0.99999701976776123 0.99999594688415527 
		0 0 0 0 -0.99999696016311646 0;
createNode animCurveTL -n "animCurveTL333";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 3 1 6 0.66125572348608719 10 
		0.66125572348608719 13 0.66125572348608719 16 0.66125572348608719 20 0.66125572348608719 
		23 0.66125572348608719 26 0.94963589092223599;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 0.0059040556661784649 0.0068880217149853706 
		1 1 1 1 0.0069351233541965485 0;
	setAttr -s 9 ".koy[0:8]"  0 -0.99998259544372559 -0.99997627735137939 
		0 0 0 0 0.99997597932815552 0;
createNode animCurveTL -n "animCurveTL334";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.61286360265336515 3 0.61286360265336515 
		6 0.61286360265336515 10 0.61286360265336515 13 0.61286360265336515 16 0.61286360265336515 
		20 0.61286360265336515 23 0.61286360265336515 26 0.81996708794027429;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.0096565578132867813 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0.99995338916778564 
		0;
createNode animCurveTL -n "animCurveTL335";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 10 0 13 0 16 0 20 0 
		23 0 26 0.039118356651539815;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.051060199737548828 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0.99869555234909058 
		0;
createNode animCurveTL -n "animCurveTL336";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 3 1 6 1 10 1 13 1 16 1 20 1 
		23 1 26 0.79745410839398134;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.0098738241940736771 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 -0.99995124340057373 
		0;
createNode animCurveTL -n "animCurveTL337";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.03051835782609956 3 0.020108141908409895 
		6 0.020108141908409895 10 0.020108141908409895 13 0.020108141908409895 16 
		0.020108141908409895 20 0.020108141908409895 23 0.020108141908409895 26 0.13763618594322471;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 0.18866866827011108 1 1 1 1 1 
		0.017014751210808754 0;
	setAttr -s 9 ".koy[0:8]"  0 -0.98204082250595093 0 0 0 0 
		0 0.99985522031784058 0;
createNode animCurveTL -n "animCurveTL338";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.80215370913152206 3 0.82212533888456119 
		6 1.0200989186958103 10 0.95182457422104294 13 0.77081199092174024 16 0.47077297870106793 
		20 0.70200289341499256 23 0.79157576116988881 26 0.32171679166808637;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 0.0091762319207191467 0.017987428233027458 
		0.0093596205115318298 0.004157522227615118 0.033890765160322189 0.0072732274420559406 
		0.0052591254934668541 0;
	setAttr -s 9 ".koy[0:8]"  0 0.99995791912078857 0.99983823299407959 
		-0.99995619058609009 -0.99999135732650757 -0.99942553043365479 0.99997353553771973 
		-0.99998617172241211 0;
createNode animCurveTL -n "animCurveTL339";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.053729210245175789 3 0.40508507539699345 
		6 1.1994937327808917 10 1.3920864075698709 13 1.6615940315932769 16 1.9484445158042498 
		20 2.1519113815963928 23 2.3755192254608888 26 2.8936349262487839;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  0.0037947956006973982 0.0017455567140132189 
		0.0023640564177185297 0.0050493446178734303 0.0035947838332504034 0.0047587687149643898 
		0.0054634436964988708 0.0026964126154780388 0.0019300675485283136;
	setAttr -s 9 ".koy[0:8]"  0.99999278783798218 0.99999845027923584 
		0.99999719858169556 0.99998724460601807 0.99999356269836426 0.99998867511749268 
		0.99998509883880615 0.9999963641166687 0.99999815225601196;
createNode animCurveTA -n "animCurveTA948";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 20.950825280283908 3 -0.4038887399101036 
		6 -55.13305056460004 10 -102.11192764085396 13 -131.59814912200312 16 -133.7214535728273 
		20 -93.031950677326506 23 -103.24382667394195 26 -86.635327210264862;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  0.33683505654335022 0.14893242716789246 
		0.13032397627830505 0.17222562432289124 0.34081780910491943 0.32753008604049683 
		0.40170267224311829 0.87317126989364624 0;
	setAttr -s 9 ".koy[0:8]"  -0.94156366586685181 -0.98884737491607666 
		-0.99147146940231323 -0.985057532787323 -0.94012933969497681 0.94484072923660278 
		0.91577017307281494 0.48741355538368225 0;
createNode animCurveTA -n "animCurveTA949";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 10 -5.5966252963327214 
		13 -3.7633166027251224 16 -3.7633166027251224 20 -6.4065588952267545 23 -6.4065588952267118 
		26 1.4335928156981164;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 0.92243379354476929 0.9625893235206604 
		0.9874427318572998 0.98100954294204712 0.98100954294204712 0.8253180980682373 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 -0.38615530729293823 -0.27096450328826904 
		0.15797737240791321 -0.19395938515663147 -0.19395938515663147 0.56466805934906006 
		0;
createNode animCurveTA -n "animCurveTA950";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 10 2.2604456030586588 
		13 4.7207081288866775 16 4.7207081288866792 20 6.7606231417705933 23 6.7606231417705986 
		26 0.88505153303575668;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 0.98600518703460693 0.94294089078903198 
		0.97771966457366943 0.98855829238891602 0.98855829238891602 0.88984644412994385 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0.16671468317508698 0.3329600989818573 
		0.20991484820842743 0.15083944797515869 0.15083944797515869 -0.45626017451286316 
		0;
createNode animCurveTA -n "animCurveTA951";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA952";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA953";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.0984482521620249 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.88119691610336304;
	setAttr -s 2 ".kiy[0:1]"  0 -0.47274935245513916;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA954";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 18.588300303494186 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.38012999296188354;
	setAttr -s 2 ".kiy[0:1]"  0 -0.92493307590484619;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA955";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA956";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA957";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -22.686733334985114 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.31912851333618164;
	setAttr -s 2 ".kiy[0:1]"  0 0.94771146774291992;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA958";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA959";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA960";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0579251312417477e-005 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA961";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA962";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA963";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.0984482535121209 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.88119691610336304;
	setAttr -s 2 ".kiy[0:1]"  0 -0.47274935245513916;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA964";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 18.588300300216801 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.38012999296188354;
	setAttr -s 2 ".kiy[0:1]"  0 -0.92493307590484619;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA965";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA966";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA967";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -22.686733333057838 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.31912851333618164;
	setAttr -s 2 ".kiy[0:1]"  0 0.94771146774291992;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA968";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA969";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA970";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0579251312417477e-005 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA971";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA972";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA973";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA974";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA975";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA976";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 1.0579251312417481e-005;
createNode animCurveTL -n "animCurveTL340";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.99214331096561381 26 -0.99214331096561381;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL341";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.033841737269357866 26 -0.033841737269357866;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL342";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.027201153963313806 26 -0.027201153963313806;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA977";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 3.1805546814635164e-015 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA978";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.016273151455886e-014 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA979";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 5.3764496942944332e-016 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL343";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.99214413619678865 26 0.99214413619678865;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL344";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.033851474715545553 26 -0.033851474715545553;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL345";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.0272011762672867 26 -0.0272011762672867;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA980";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 6.3611093629270264e-015 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA981";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.5281705937149269e-014 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA982";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.5365128437888133e-014 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL346";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1.3705977767760478 3 -1.3705977767760478 
		6 -1.3705977767760478 10 -1.3705977767760478 13 -1.3705977767760478 16 -1.3705977767760478 
		20 -1.3705977767760478 23 -1.3705977767760478 26 -1.2355216250307488;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  0.0021732256282120943;
	setAttr -s 9 ".kiy[8]"  -0.99999761581420898;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.01480483915656805 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0.99989038705825806 
		0;
createNode animCurveTL -n "animCurveTL347";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.1618658070195953 3 2.1618658070195953 
		6 2.1618658070195953 10 2.1618658070195953 13 2.1618658070195953 16 2.1618658070195953 
		20 2.1618658070195953 23 2.1618658070195953 26 0.35282942294141956;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  0.076726622879505157;
	setAttr -s 9 ".kiy[8]"  0.99705219268798828;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.0011055603390559554 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 -0.99999940395355225 
		0;
createNode animCurveTL -n "animCurveTL348";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.12044246479037771 3 -0.12044246479037771 
		6 -0.12044246479037771 10 -0.12044246479037771 13 -0.12044246479037771 16 
		-0.12044246479037771 20 -0.12044246479037771 23 -0.12044246479037771 26 -0.48416228445127502;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  0.00054209731752052903;
	setAttr -s 9 ".kiy[8]"  0.99999988079071045;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.0054986551403999329 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 -0.99998486042022705 
		0;
createNode animCurveTA -n "animCurveTA983";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 10 0 13 0 16 0 20 0 
		23 0 26 -50.361592792450381;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  0.18344172835350037;
	setAttr -s 9 ".kiy[8]"  -0.98303055763244629;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.22186668217182159 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 -0.97507703304290771 
		0;
createNode animCurveTA -n "animCurveTA984";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 10 0 13 0 16 0 20 0 
		23 0 26 10.054523309489301;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  0.30863013863563538;
	setAttr -s 9 ".kiy[8]"  -0.95118212699890137;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.75167351961135864 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0.65953540802001953 
		0;
createNode animCurveTA -n "animCurveTA985";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 10 0 13 0 16 0 20 0 
		23 0 26 2.6526871509000869;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  0.68271809816360474;
	setAttr -s 9 ".kiy[8]"  0.7306818962097168;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.97423696517944336 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0.22552673518657684 
		0;
createNode animCurveTL -n "animCurveTL349";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.3705978542308779 3 1.3705978542308779 
		6 1.3705978542308779 10 1.3705978542308779 13 1.3705978542308779 16 1.3705978542308779 
		20 1.3705978542308779 23 1.3705978542308779 26 1.5863752002046139;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  0.0042447648011147976;
	setAttr -s 9 ".kiy[8]"  0.99999099969863892;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.0092684151604771614 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0.99995702505111694 
		0;
createNode animCurveTL -n "animCurveTL350";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.1618621235956237 3 2.1618621235956237 
		6 2.1618621235956237 10 2.1618621235956237 13 2.1618621235956237 16 2.1618621235956237 
		20 2.1618621235956237 23 2.1618621235956237 26 0.12980859841378997;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.00098422553855925798 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 -0.9999995231628418 
		0;
createNode animCurveTL -n "animCurveTL351";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.12044250833667494 3 -0.12044250833667494 
		6 -0.12044250833667494 10 -0.12044250833667494 13 -0.12044250833667494 16 
		-0.12044250833667494 20 -0.12044250833667494 23 -0.12044250833667494 26 -0.90890894826263036;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  0.00046055440907366574;
	setAttr -s 9 ".kiy[8]"  0.99999988079071045;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.0025365615729242563 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 -0.99999678134918213 
		0;
createNode animCurveTA -n "animCurveTA986";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 10 0 13 0 16 0 20 0 
		23 0 26 -31.327774861751749;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.34352269768714905 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 -0.93914437294006348 
		0;
createNode animCurveTA -n "animCurveTA987";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 10 0 13 0 16 0 20 0 
		23 0 26 1.5331587519928691;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.99116808176040649 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0.13261169195175171 
		0;
createNode animCurveTA -n "animCurveTA988";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 10 0 13 0 16 0 20 0 
		23 0 26 -2.315047826080785;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.98019689321517944 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 -0.19802530109882355 
		0;
createNode animCurveTL -n "animCurveTL352";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 10 0 13 0 16 0 20 0 
		23 0 26 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 1 0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL353";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 10 0 13 0 16 0 20 0 
		23 0 26 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 1 0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL354";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1 3 -1 6 -1 10 -1 13 -1 16 -1 
		20 -1 23 -1 26 -1;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 1 0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL355";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 10 0 13 0 16 0 20 0 
		23 0 26 -0.44472090212388388;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  0.0029981222469359636;
	setAttr -s 9 ".kiy[8]"  -0.99999552965164185;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.0044971569441258907 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 -0.99998986721038818 
		0;
createNode animCurveTL -n "animCurveTL356";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 10 0 13 0 16 0 20 0 
		23 0 26 1.2439946116996796;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  0.001071815611794591;
	setAttr -s 9 ".kiy[8]"  0.99999940395355225;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.0016077219042927027 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0.99999868869781494 
		0;
createNode animCurveTL -n "animCurveTL357";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1 3 -1 6 -1 10 -1 13 -1 16 -1 
		20 -1 23 -1 26 -2.3149332509255429;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  0.0010139928199350834;
	setAttr -s 9 ".kiy[8]"  -0.99999946355819702;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.0015209880657494068 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 -0.99999886751174927 
		0;
createNode animCurveTA -n "animCurveTA989";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -10.587124207154311 3 31.113013035328205 
		6 12.229735217996575 10 5.1901093599951746 13 25.91285291092742 16 29.320714794050424 
		20 11.009734387540538 23 16.440273005552591 26 42.110642172497506;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  0.18020032346248627 0.44880223274230957 
		0.4583573043346405 0.69884943962097168 0.42896881699562073 0.66775542497634888 
		0.72014319896697998 0.34572997689247131 0.21783803403377533;
	setAttr -s 9 ".koy[0:8]"  0.98362994194030762 0.89363110065460205 
		-0.88876801729202271 0.71526879072189331 0.90331929922103882 -0.74438077211380005 
		-0.69382542371749878 0.93833404779434204 0.97598493099212646;
createNode animCurveTA -n "animCurveTA990";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -60.592711499848917 3 14.578035687742375 
		6 39.521922353408108 10 35.448421734678668 13 25.579961425282651 16 1.0133423041627958 
		20 26.611727161051519 23 23.791808097542749 26 12.514229277923404;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  0.10110700130462646 0.11371784657239914 
		0.53939622640609741 0.69212037324905396 0.31575149297714233 0.99703520536422729 
		0.50617372989654541 0.63075637817382813 0.45294618606567383;
	setAttr -s 9 ".koy[0:8]"  0.99487555027008057 0.99351310729980469 
		0.84205210208892822 -0.72178208827972412 -0.94884192943572998 0.076947085559368134 
		0.86243152618408203 -0.77598094940185547 -0.89153784513473511;
createNode animCurveTA -n "animCurveTA991";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.15003680417244822 3 -27.513240480133739 
		6 -33.52589178300768 10 -61.602189641128071 13 -22.130491917286768 16 -12.080719682294061 
		20 -49.292988708204547 23 -36.58612147779322 26 -5.9960825349172318;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  0.26890328526496887 0.32473015785217285 
		0.36510646343231201 0.76104706525802612 0.22544081509113312 0.44159653782844543 
		0.47891926765441895 0.25585520267486572 0.18410062789916992;
	setAttr -s 9 ".koy[0:8]"  -0.96316719055175781 -0.94580668210983276 
		-0.93096578121185303 0.6486966609954834 0.97425687313079834 -0.89721375703811646 
		-0.87785893678665161 0.96671509742736816 0.98290741443634033;
createNode animCurveTA -n "animCurveTA992";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 15.193242356562449 3 17.082033969113084 
		6 21.222927398188862 10 -4.4635642762164824 13 7.0045636647412026 16 12.952160105263085 
		20 7.0672374492145895 23 16.088033120928912 26 10.390256956112333;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  0.97076916694641113 0.88496434688568115 
		0.52724570035934448 0.6850121021270752 0.54966479539871216 0.99998903274536133 
		0.97357571125030518 0.96043217182159424 0.70907193422317505;
	setAttr -s 9 ".koy[0:8]"  0.24001516401767731 0.4656587541103363 
		-0.84971284866333008 -0.72853171825408936 0.83538532257080078 0.0046879365108907223 
		0.22836458683013916 0.27851396799087524 -0.70513617992401123;
createNode animCurveTA -n "animCurveTA993";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -57.561344427126045 3 4.5951376436364413 
		6 36.017713301890574 10 21.565971779724993 13 20.90933203282216 16 17.939974706247689 
		20 20.889074598437304 23 15.211209177350053 26 22.023776296695758;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  1 0.12154637277126312 0.61881667375564575 
		0.66268253326416016 0.95340770483016968 0.99999886751174927 0.97979837656021118 
		0.9951331615447998 0.64365452527999878;
	setAttr -s 9 ".koy[0:8]"  0 0.99258577823638916 0.78553545475006104 
		-0.74890041351318359 -0.30168485641479492 -0.00151525076944381 -0.19998781383037567 
		0.098539479076862335 0.7653161883354187;
createNode animCurveTA -n "animCurveTA994";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -21.45100553352173 3 -39.310652561672477 
		6 -27.857730357079244 10 -67.85393009858528 13 -36.867193246208942 16 -19.116571020146324 
		20 -36.691501217379631 23 -8.1582109145282722 26 -25.868705912860996;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0.079021528363227844 0.87284356355667114 
		0.42415693402290344 0.82926905155181885 0.22887924313545227 0.99991363286972046 
		0.7733878493309021 0.72700494527816772 0.3078063428401947;
	setAttr -s 9 ".kiy[0:8]"  0.99687290191650391 -0.48800006508827209 
		-0.90558868646621704 -0.55884957313537598 0.97345483303070068 0.013140599243342876 
		0.63393318653106689 0.68663221597671509 -0.95144903659820557;
	setAttr -s 9 ".kox[0:8]"  0.079021535813808441 0.87284356355667114 
		0.42415693402290344 0.82926905155181885 0.22887924313545227 0.99991363286972046 
		0.7733878493309021 0.72700494527816772 0.3078063428401947;
	setAttr -s 9 ".koy[0:8]"  0.99687290191650391 -0.48800006508827209 
		-0.90558868646621704 -0.55884957313537598 0.97345483303070068 0.013140599243342876 
		0.63393318653106689 0.68663221597671509 -0.95144903659820557;
createNode animCurveTA -n "animCurveTA995";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 72.938873120018542 3 32.659488694302063 
		6 9.8893756008299842 10 9.8893756008299842 13 9.8893756008299842 16 9.8893756008299842 
		20 9.8893756008299842 23 48.321001904122703 26 9.342304586567403;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  0.18633937835693359 0.17881913483142853 
		0.50631177425384521 1 1 1 0.32855337858200073 0.99886232614517212 0;
	setAttr -s 9 ".koy[0:8]"  -0.98248541355133057 -0.98388195037841797 
		-0.8623504638671875 0 0 0 0.94448542594909668 -0.047686640173196793 0;
createNode animCurveTA -n "animCurveTA996";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 59.305463658789549 3 40.59533267172813 
		6 15.722616812416319 10 15.722616812416319 13 15.722616812416319 16 15.722616812416319 
		20 72.697162596941297 23 72.697162596941297 26 14.326926958980691;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  0.37800934910774231 0.25428545475006104 
		0.47344118356704712 1 1 0.22844408452510834 0.22844408452510834 0.19264128804206848 
		0;
	setAttr -s 9 ".koy[0:8]"  -0.92580175399780273 -0.96712923049926758 
		-0.88082540035247803 0 0 0.97355705499649048 0.97355705499649048 -0.9812692403793335 
		0;
createNode animCurveTA -n "animCurveTA997";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -17.955810303398234 3 -17.955810303398234 
		6 -17.955810303398234 10 -17.955810303398234 13 -17.955810303398234 16 -17.955810303398234 
		20 -17.955810303398234 23 -17.955810303398234 26 32.145951579643636;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.22296024858951569 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0.97482752799987793 
		0;
createNode animCurveTA -n "animCurveTA998";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 10.082003051124259 3 10.082003051124259 
		6 10.082003051124259 10 10.082003051124259 13 10.082003051124259 16 10.082003051124259 
		20 10.082003051124259 23 10.082003051124259 26 2.4180200242859677;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.83122760057449341 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 -0.55593222379684448 
		0;
createNode animCurveTA -n "animCurveTA999";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -4.7201893288928654 3 -4.7201893288928654 
		6 -4.7201893288928654 10 -4.7201893288928654 13 -4.7201893288928654 16 -4.7201893288928654 
		20 -4.7201893288928654 23 -4.7201893288928654 26 -14.0814753787794;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.77443361282348633 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 -0.63265520334243774 
		0;
createNode animCurveTA -n "animCurveTA1000";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 20.127263792592359 3 20.127263792592359 
		6 20.127263792592359 10 20.127263792592359 13 20.127263792592359 16 20.127263792592359 
		20 20.127263792592359 23 20.127263792592359 26 71.390818193217257;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.21815039217472076 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0.97591519355773926 
		0;
createNode animCurveTA -n "animCurveTA1001";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 11.615881410206432 3 11.615881410206432 
		6 11.615881410206432 10 11.615881410206432 13 11.615881410206432 16 11.615881410206432 
		20 11.615881410206432 23 11.615881410206432 26 -9.2933896978321879;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.48059982061386108 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 -0.87694001197814941 
		0;
createNode animCurveTA -n "animCurveTA1002";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.32159281075535023 3 0.32159281075535023 
		6 0.32159281075535023 10 0.32159281075535023 13 0.32159281075535023 16 0.32159281075535023 
		20 0.32159281075535023 23 0.3215928107553504 26 10.87922428714811;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.73544448614120483 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0.67758500576019287 
		0;
createNode animCurveTA -n "animCurveTA1003";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 11.093319219895511 3 11.093319219895511 
		6 11.093319219895511 10 11.093319219895511 13 11.093319219895511 16 11.093319219895511 
		20 11.093319219895511 23 11.09331921989552 26 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.7184826135635376 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 -0.69554489850997925 
		0;
createNode animCurveTA -n "animCurveTA1004";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 59.959644693642325 3 59.959644693642325 
		6 59.959644693642325 10 59.959644693642325 13 59.959644693642325 16 59.959644693642325 
		20 59.959644693642325 23 59.959644693642325 26 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.18771705031394958 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 -0.98222315311431885 
		0;
createNode animCurveTA -n "animCurveTA1005";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 48.106469618696913 3 48.106469618696913 
		6 48.106469618696913 10 48.106469618696913 13 48.106469618696913 16 48.106469618696913 
		20 48.106469618696913 23 48.10646961869692 26 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.2317207008600235 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 -0.97278237342834473 
		0;
createNode animCurveTA -n "animCurveTA1006";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 10 0 13 0 16 0 20 0 
		23 0 26 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 1 0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1007";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 10 0 13 0 16 0 20 0 
		23 0 26 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 1 0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1008";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 86.382238158606057 3 86.382238158606057 
		6 86.382238158606057 10 86.382238158606057 13 86.382238158606057 16 86.382238158606057 
		20 86.382238158606057 23 86.382238158606057 26 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.13150434195995331 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 -0.99131560325622559 
		0;
createNode animCurveTA -n "animCurveTA1009";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1010";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1011";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1012";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 27.705218915343313 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1013";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 43.35103828268312 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1014";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 54.23572299800319 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1015";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 39.038703285259977 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1016";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 72.755037061650995 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1017";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 38.926480273156798 26 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1018";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 10 0 13 0 16 0 20 0 
		23 0 26 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 1 0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1019";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 10 0 13 0 16 0 20 0 
		23 0 26 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 1 0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1020";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 95.284705327631698 3 95.284705327631698 
		6 95.284705327631698 10 95.284705327631698 13 95.284705327631698 16 95.284705327631698 
		20 95.284705327631698 23 95.284705327631698 26 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.11940193176269531 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 -0.99284601211547852 
		0;
createNode animCurveTA -n "animCurveTA1021";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.2945941069882381 3 1.2945941069882381 
		6 1.2945941069882381 10 1.2945941069882381 13 1.2945941069882381 16 1.2945941069882381 
		20 1.2945941069882381 23 1.2945941069882385 26 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  0.97087478637695313;
	setAttr -s 9 ".kiy[8]"  -0.2395874410867691;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.99367880821228027 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 -0.11226052045822144 
		0;
createNode animCurveTA -n "animCurveTA1022";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 3.3208811165553147 3 3.3208811165553147 
		6 3.3208811165553147 10 3.3208811165553147 13 3.3208811165553147 16 3.3208811165553147 
		20 3.3208811165553147 23 3.3208811165553156 26 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  0.92818254232406616;
	setAttr -s 9 ".kiy[8]"  -0.37212517857551575;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.96048009395599365 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 -0.27834862470626831 
		0;
createNode animCurveTA -n "animCurveTA1023";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -27.525824477859967 3 -27.525824477859967 
		6 -27.525824477859967 10 -27.525824477859967 13 -27.525824477859967 16 -27.525824477859967 
		20 -27.525824477859967 23 -27.52582447785997 26 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  0.26727947592735291;
	setAttr -s 9 ".kiy[8]"  0.96361905336380005;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.38433137536048889 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0.92319518327713013 
		0;
createNode animCurveTA -n "animCurveTA1024";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 10 0 13 0.90195671173744607 
		16 1.4516219601031872 20 1.7862813319379107 23 1.6657712567779686 26 -4.6297048981494955;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 0.99773192405700684 0.99207162857055664 
		0.99781942367553711 0.99987173080444336 0.87254303693771362 0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0.067313186824321747 0.1256735622882843 
		0.066003084182739258 0.016016274690628052 -0.48853722214698792 0;
createNode animCurveTA -n "animCurveTA1025";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 10 0 13 -0.65849296950392311 
		16 -1.1682453172182652 20 0.53009569882411045 23 -0.83493349690370655 26 
		0.35757313242625977;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 0.99878919124603271 0.99484342336654663 
		0.99607110023498535 0.99968934059143066 0.99988669157028198 0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 -0.049195520579814911 -0.10142292827367783 
		0.088556922972202301 0.024923920631408691 -0.01505372766405344 0;
createNode animCurveTA -n "animCurveTA1026";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.97510462353592209 3 -19.782342815839208 
		6 -34.602718840400804 10 0.048220448127066051 13 10.622195211672377 16 17.67339534887013 
		20 -37.668770214373616 23 5.4687864433870299 26 -8.3596211209238493;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  0.37633460760116577 0.32255280017852783 
		0.55899548530578613 0.28348478674888611 0.5450817346572876 0.26680737733840942 
		0.73853731155395508 0.36413362622261047 0;
	setAttr -s 9 ".koy[0:8]"  -0.92648380994796753 -0.94655150175094604 
		0.82917070388793945 0.95897674560546875 0.83838289976119995 -0.96374988555908203 
		-0.67421263456344604 0.93134671449661255 0;
createNode animCurveTA -n "animCurveTA1027";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 10 0 13 0 16 0 20 0 
		23 0 26 0.040577927395231195;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.99999374151229858 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0.0035410700365900993 
		0;
createNode animCurveTA -n "animCurveTA1028";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 10 0 13 0 16 0 20 0 
		23 0 26 -0.76977674774379068;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.99775129556655884 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 -0.067024640738964081 
		0;
createNode animCurveTA -n "animCurveTA1029";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 10 0 13 0 16 0 20 0 
		23 0 26 10.949080790025388;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.72301524877548218 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0.69083207845687866 
		0;
createNode animCurveTA -n "animCurveTA1030";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 10 1.4427679171734242 
		13 -0.48476658487032082 16 -0.62986657309648353 20 -1.4419631114234375 23 
		-6.1173381622742768 26 -27.138591323308027;
	setAttr -s 9 ".kit[7:8]"  1 1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		1 5;
	setAttr -s 9 ".kix[7:8]"  0.54932695627212524 1;
	setAttr -s 9 ".kiy[7:8]"  -0.83560746908187866 0;
	setAttr -s 9 ".kox[0:8]"  1 1 0.99422717094421387 0.99934321641921997 
		0.98403346538543701 0.99744665622711182 0.92510181665420532 0.54932689666748047 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0.10729578882455826 -0.036236640065908432 
		-0.1779835969209671 -0.071415320038795471 -0.379719078540802 -0.83560752868652344 
		0;
createNode animCurveTA -n "animCurveTA1031";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 10 1.9989850115282259 
		13 -1.3134052525818398 16 -1.4460386290219238 20 -1.5759280740348289 23 -14.247383164029355 
		26 -61.310693300052847;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 0.98900532722473145 0.99520885944366455 
		0.95765876770019531 0.99980723857879639 0.72227495908737183 0.18839871883392334 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0.14787977933883667 -0.097771793603897095 
		-0.28790578246116638 -0.019632875919342041 -0.69160598516464233 -0.98209261894226074 
		0;
createNode animCurveTA -n "animCurveTA1032";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -18.616622641828219 3 -35.066490153726463 
		6 -38.590254861796701 10 -24.087543587769879 13 12.800062951477008 16 14.641387307512337 
		20 -11.233363112341278 23 -7.6858810790320815 26 16.177650372523711;
	setAttr -s 9 ".kit[7:8]"  1 1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		1 5;
	setAttr -s 9 ".kix[7:8]"  0.4689103364944458 1;
	setAttr -s 9 ".kiy[7:8]"  0.88324576616287231 0;
	setAttr -s 9 ".kox[0:8]"  0.42120194435119629 0.49763268232345581 
		0.77280402183532715 0.25176671147346497 0.28372222185134888 0.48611831665039063 
		0.51372289657592773 0.46891045570373535 0;
	setAttr -s 9 ".koy[0:8]"  -0.90696686506271362 -0.86738783121109009 
		0.63464468717575073 0.96778792142868042 0.95890653133392334 -0.87389302253723145 
		-0.8579561710357666 0.88324570655822754 0;
createNode animCurveTA -n "animCurveTA1033";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 10 0 13 0.80733886412932376 
		16 1.6339297082043851 20 1.6339297082043851 23 1.6342289321852119 26 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 0.99818158149719238 0.9899868369102478 
		0.99809408187866211 1 0.9899868369102478 0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0.060278993099927902 0.1411595344543457 
		0.061711009591817856 2.2381902454071678e-005 -0.1411595344543457 0;
createNode animCurveTA -n "animCurveTA1034";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 10 0 13 -0.11469244032343262 
		16 -0.31848867807364534 20 -0.31848867807364534 23 0.31694931995559761 26 
		0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 0.99996322393417358 0.99961400032043457 
		0.99988383054733276 0.99887233972549438 0.99961400032043457 0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 -0.0085786590352654457 -0.027782652527093887 
		-0.015242152847349644 0.047477051615715027 0.027782652527093887 0;
createNode animCurveTA -n "animCurveTA1035";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 5.671986885245901 3 -14.137529257929708 
		6 -25.043376569289276 10 -2.5552993311091203 13 5.1635725348268222 16 13.220480101610095 
		20 13.220480101610095 23 -8.7794103979753988 26 -9.9115268575895001;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  0.35981562733650208 0.34954231977462769 
		0.75580799579620361 0.40471488237380981 0.58769732713699341 0.85648798942565918 
		0.51931697130203247 0.44389933347702026 0;
	setAttr -s 9 ".koy[0:8]"  -0.93302345275878906 -0.93692058324813843 
		0.65479332208633423 0.91444295644760132 0.80908083915710449 0.51616698503494263 
		-0.85458171367645264 -0.89607667922973633 0;
createNode animCurveTA -n "animCurveTA1036";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 10 0 13 0 16 0 20 0 
		23 0 26 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 1 0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1037";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 10 0 13 0 16 0 20 0 
		23 0 26 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 1 0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1038";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 85.281921116584812 3 85.281921116584812 
		6 85.281921116584812 10 85.281921116584812 13 85.281921116584812 16 85.281921116584812 
		20 85.281921116584812 23 85.281921116584812 26 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.13317112624645233 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 -0.99109303951263428 
		0;
createNode animCurveTA -n "animCurveTA1039";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 26.194612819039175 3 26.194612819039175 
		6 26.194612819039175 10 26.194612819039175 13 26.194612819039175 16 26.194612819039175 
		20 26.194612819039175 23 26.194612819039182 26 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.40078982710838318 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 -0.91617000102996826 
		0;
createNode animCurveTA -n "animCurveTA1040";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 42.116293762219605 3 42.116293762219605 
		6 42.116293762219605 10 42.116293762219605 13 42.116293762219605 16 42.116293762219605 
		20 42.116293762219605 23 42.116293762219598 26 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.2625393271446228 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 -0.96492129564285278 
		0;
createNode animCurveTA -n "animCurveTA1041";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 51.312599966148291 3 51.312599966148291 
		6 51.312599966148291 10 51.312599966148291 13 51.312599966148291 16 51.312599966148291 
		20 51.312599966148291 23 51.312599966148298 26 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.21795178949832916 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 -0.97595953941345215 
		0;
createNode animCurveTA -n "animCurveTA1042";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 10 0 13 0 16 0 20 0 
		23 0 26 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 1 0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1043";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 10 0 13 0 16 0 20 0 
		23 0 26 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 1 0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1044";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 77.470348806333021 3 77.470348806333021 
		6 77.470348806333021 10 77.470348806333021 13 77.470348806333021 16 77.470348806333021 
		20 77.470348806333021 23 77.470348806333035 26 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.14632458984851837 
		0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 -0.98923665285110474 
		0;
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
	setAttr -s 24 ".lnk";
select -ne :time1;
	setAttr ".o" 26;
select -ne :renderPartition;
	setAttr -s 24 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 24 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 4 ".u";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 4 ".tx";
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
	setAttr -s 678 ".gn";
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
connectAttr "mlh_hit_by_car_backSource.st" "clipLibrary1.st[0]";
connectAttr "mlh_hit_by_car_backSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL317.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL318.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU65.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU66.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU67.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU68.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU69.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU70.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU71.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU72.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA927.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA928.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA929.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL322.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL323.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL324.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL325.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL326.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL327.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA930.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA931.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA932.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL328.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL329.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL330.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA933.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA934.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA935.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA936.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA937.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA938.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA939.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA940.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA941.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA942.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA943.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA944.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA945.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA946.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA947.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL331.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL332.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL333.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL334.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL335.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL336.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL337.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL338.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL339.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA948.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA949.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA950.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA951.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA952.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA953.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA954.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA955.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA956.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA957.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA958.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA959.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA960.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA961.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA962.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA963.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA964.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA965.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA966.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA967.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA968.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA969.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA970.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA971.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA972.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA973.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA974.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA975.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA976.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL340.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL341.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL342.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA977.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA978.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA979.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL343.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL344.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL345.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA980.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA981.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA982.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL346.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL347.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL348.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA983.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA984.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA985.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL349.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL350.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL351.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA986.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA987.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA988.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL352.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL353.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL354.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL355.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL356.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL357.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA989.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA990.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA991.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA992.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA993.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA994.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA995.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA996.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA997.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA998.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA999.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1000.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1001.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1002.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA1003.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1004.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1005.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1006.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1007.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1008.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1009.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1010.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1011.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA1012.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA1013.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA1014.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA1015.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA1016.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA1017.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1018.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1019.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1020.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1021.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1022.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1023.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1024.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1025.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1026.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1027.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1028.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1029.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1030.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1031.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1032.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1033.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1034.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1035.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1036.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1037.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1038.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA1039.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA1040.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA1041.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA1042.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA1043.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA1044.a" "clipLibrary1.cel[0].cev[167].cevr";
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
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[21].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[22].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[23].llnk";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of mlh_hit_by_car_back.ma
