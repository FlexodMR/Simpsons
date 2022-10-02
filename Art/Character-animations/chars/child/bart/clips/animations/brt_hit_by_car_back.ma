//Maya ASCII 4.0 scene
//Name: brt_hit_by_car_back.ma
//Last modified: Tue, May 27, 2003 01:46:29 PM
requires maya "4.0";
requires "p3dDeformer" "2.0";
requires "p3dmayaexp" "2.0.3.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "brt_hit_by_car_backSource";
	setAttr ".ihi" 0;
	setAttr ".du" 28;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL516";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTL -n "animCurveTL517";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  0 -0.014638358985086029 1 -0.011589871736251112 
		2 -0.0045468149689648187 3 0.0033372038479451607 4 0.0089085772456511461 
		5 0.010403620889426589 6 0.0096560990675388699 7 0.0089085772456511461 8 
		0.0089085772456511461 9 0.0089085772456511461 10 0.0089085772456511461 11 
		0.0089085772456511461 12 0.0089085772456511461 13 0.0089085772456511461 14 
		0.0089085772456511461 15 0.0089085772456511461 16 0.0089085772456511461 17 
		0.0089085772456511461 18 0.0089085772456511461 19 0.0089085772456511461 20 
		0.0089085772456511461 21 0.0089085772456511461 22 0.0091913892243459545 23 
		0.0094742012030407628 24 0.0089085772456511461 25 0.0068007442299469209 26 
		0.0038179616707622556 27 0.0011533425876092452 28 0;
createNode animCurveTL -n "animCurveTL519";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  0 -0.12350388119421643 1 -0.034201981799559696 
		2 0.056067557353762204 3 0.15542169168062289 4 0.27197737659589594 5 0.38512037103992802 
		6 0.47067722373196541 7 0.53141571323822112 8 0.56696820732980158 9 0.58408087802447384 
		10 0.59619221025844171 11 0.61674068896790868 12 0.65156585244478793 13 0.69342684296846757 
		14 0.73614155145636528 15 0.78045140895213172 16 0.82561498520641241 17 0.86322587919711591 
		18 0.88732167881353885 19 0.9039608093956899 20 0.92276812609754788 21 0.9533684840730916 
		22 1.0111251805125974 23 1.0841436670507585 24 1.141162030508178 25 1.1718846357360093 
		26 1.1913571565583321 27 1.2063296432551405 28 1.2235521461064287;
createNode animCurveTA -n "animCurveTA1521";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0;
createNode animCurveTU -n "animCurveTU89";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU90";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU91";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU92";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU93";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 22 1 28 0;
createNode animCurveTU -n "animCurveTU94";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 22 1 28 0;
createNode animCurveTU -n "animCurveTU95";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22 0 28 1;
createNode animCurveTU -n "animCurveTU96";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22 0 28 1;
createNode animCurveTA -n "animCurveTA1522";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA1523";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA1524";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTL -n "animCurveTL521";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTL -n "animCurveTL522";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTL -n "animCurveTL523";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTL -n "animCurveTL524";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.19763288944005308 4 -0.24210781675721296 
		7 -0.13747837339481045 11 -0.22542660156474811 14 -0.19318808783394859 17 
		-0.14565775071049758 21 -0.29804414671624174 24 -0.36108719875169565 28 -0.34830366363129989;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 1;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  0.011751288548111916;
	setAttr -s 9 ".kiy[8]"  -0.9999309778213501;
createNode animCurveTL -n "animCurveTL525";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.189 4 0.400932222275177 7 0.84295067368071119 
		11 1.1272915990429055 14 1.3194867733715478 17 0.56023557012304448 21 0.21436648584620618 
		24 0.53905253510901252 28 0.19118070920231398;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 1;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  0.18448953330516815;
	setAttr -s 9 ".kiy[8]"  0.98283445835113525;
createNode animCurveTL -n "animCurveTL526";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.016937958703582542 4 0.8915598713619205 
		7 1.8188203403606895 11 2.1410425309065348 14 2.0868725765275777 17 2.6498339189880555 
		21 2.6969180753357263 24 3.0936805056017871 28 3.4176453638424111;
	setAttr -s 9 ".kit[0:8]"  1 1 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  1 1 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kix[0:8]"  0.0023277259897440672 0.0011739517794921994 
		0.0018674363382160664 0.0087044406682252884 0.0039308536797761917 0.0038248235359787941 
		0.0052569988183677197 0.0032374535221606493 1;
	setAttr -s 9 ".kiy[0:8]"  0.99999731779098511 0.9999992847442627 
		0.99999827146530151 0.99996209144592285 0.9999922513961792 0.99999266862869263 
		0.99998617172241211 0.99999475479125977 0;
	setAttr -s 9 ".kox[0:8]"  0.0023277259897440672 0.0011739437468349934 
		0.0018674363382160664 0.0087044406682252884 0.0039308536797761917 0.0038248235359787941 
		0.0052569988183677197 0.0032374535221606493 1;
	setAttr -s 9 ".koy[0:8]"  0.99999731779098511 0.9999992847442627 
		0.99999827146530151 0.99996209144592285 0.9999922513961792 0.99999266862869263 
		0.99998617172241211 0.99999475479125977 0;
createNode animCurveTA -n "animCurveTA1525";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -31.548014841396494 4 14.488187578520165 
		7 24.788488237156894 11 -71.368064289740971 14 -105.78227055944849 17 -54.271957394479657 
		21 -14.723750193251565 24 -14.328442023394233 28 -3.3595522507325399;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  0.5878368616104126;
	setAttr -s 9 ".kiy[8]"  0.80897951126098633;
createNode animCurveTA -n "animCurveTA1526";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 -2.5414320847346819 7 1.9825091275481663 
		11 3.2873600474623235 14 -5.4338506887813001 17 3.1011002853600314 21 2.8039525211835108 
		24 -3.5247329257624509 28 -4.9396511688497027;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 1;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[8]"  0.4419214129447937;
	setAttr -s 9 ".kiy[8]"  -0.89705377817153931;
createNode animCurveTA -n "animCurveTA1527";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 -2.6042404176137595 7 1.5469927162132961 
		11 2.9369051055627744 14 1.6019360334738475 17 5.8239783624880967 21 6.9845953168403723 
		24 -1.4392753896246064 28 1.4972445100027127;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTL -n "animCurveTL527";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.19697756422115981 4 0.27370329528033366 
		7 0.33973853217801209 11 0.22888015862218061 14 0.26274579546099303 17 0.18280823516668573 
		19 0.18972781692274282 21 0.14180032936688033 24 0.17018309113946561 28 0.17018309113946561;
	setAttr -s 10 ".kit[0:9]"  3 1 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 1 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[1:9]"  0.011175433173775673 0.051986061036586761 
		0.030291981995105743 0.043369542807340622 0.022819485515356064 0.032496880739927292 
		0.084966130554676056 0.081933125853538513 1;
	setAttr -s 10 ".kiy[1:9]"  0.99993753433227539 -0.99864780902862549 
		-0.99954110383987427 -0.99905908107757568 -0.99973958730697632 -0.99947184324264526 
		-0.99638384580612183 0.99663782119750977 0;
	setAttr -s 10 ".kox[1:9]"  0.011175517924129963 0.051986061036586761 
		0.030291981995105743 0.043369542807340622 0.022819485515356064 0.032496880739927292 
		0.084966130554676056 0.081933125853538513 1;
	setAttr -s 10 ".koy[1:9]"  0.99993753433227539 -0.99864780902862549 
		-0.99954110383987427 -0.99905908107757568 -0.99973958730697632 -0.99947184324264526 
		-0.99638384580612183 0.99663782119750977 0;
createNode animCurveTL -n "animCurveTL528";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.49095526767731257 4 0.31769973963334347 
		7 0.65947310317437913 11 1.445175347149078 14 1.4016662370819406 17 1.0890727362319748 
		19 0.66031704451203355 21 0.23155828389957286 24 0.76828648888167383 28 0.19600000000000001;
	setAttr -s 10 ".kit[0:9]"  3 9 9 1 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 9 9 1 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[3:9]"  0.0081654731184244156 0.0056162704713642597 
		0.0022481477353721857 0.0015548794763162732 0.015434626489877701 0.065479137003421783 
		0.0023298291489481926;
	setAttr -s 10 ".kiy[3:9]"  0.99996668100357056 -0.99998420476913452 
		-0.99999749660491943 -0.99999880790710449 0.99988085031509399 -0.99785393476486206 
		-0.99999725818634033;
	setAttr -s 10 ".kox[3:9]"  0.0081654870882630348 0.0056162704713642597 
		0.0022481477353721857 0.0015548794763162732 0.015434626489877701 0.065479137003421783 
		0.0023298291489481926;
	setAttr -s 10 ".koy[3:9]"  0.99996668100357056 -0.99998420476913452 
		-0.99999749660491943 -0.99999880790710449 0.99988085031509399 -0.99785393476486206 
		-0.99999725818634033;
createNode animCurveTL -n "animCurveTL529";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.9148890580743142 4 0.153810965070202 
		7 1.7265876518139691 11 1.9049684401884768 14 1.9640504377497843 17 2.058975822482167 
		19 2.6759483594032676 21 2.6537568168186225 24 3.2613390307069996 28 3.3534073140376282;
	setAttr -s 10 ".kit[0:9]"  1 9 1 9 9 9 1 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  1 9 1 9 9 9 1 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0.0020834864117205143 0.00088334397878497839 
		0.0018343782285228372 0.0098256263881921768 0.012985295616090298 0.0023411531001329422 
		0.021777689456939697 0.0028470898978412151 0.003334979759529233 0.014480487443506718;
	setAttr -s 10 ".kiy[0:9]"  0.99999785423278809 0.99999958276748657 
		0.99999833106994629 0.99995172023773193 0.99991565942764282 0.99999725818634033 
		0.99976283311843872 0.99999594688415527 0.99999445676803589 0.99989515542984009;
	setAttr -s 10 ".kox[0:9]"  0.0020834878087043762 0.00088334397878497839 
		0.0018343839328736067 0.0098256263881921768 0.012985295616090298 0.0023411531001329422 
		0.021777680143713951 0.0028470898978412151 0.003334979759529233 0.014480487443506718;
	setAttr -s 10 ".koy[0:9]"  0.99999785423278809 0.99999958276748657 
		0.99999833106994629 0.99995172023773193 0.99991565942764282 0.99999725818634033 
		0.99976283311843872 0.99999594688415527 0.99999445676803589 0.99989515542984009;
createNode animCurveTA -n "animCurveTA1528";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 72.51831712904297 4 69.969833211572407 
		7 2.5276119076420684 11 -79.20527113856545 14 -129.75606004715453 17 -132.91031134883636 
		19 -76.086187650408164 21 -19.545270519438901 24 -35.04537918922324 28 -0.022973885644718712;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
createNode animCurveTA -n "animCurveTA1529";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 -3.8053840712955784 7 -14.436634263570912 
		11 3.5447499005307077 14 18.242484995860604 17 -4.5266611375027175 19 -5.9505862429829026 
		21 0.82057431609454234 24 -3.1954429688207933 28 -4.6882558815768451;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 9;
createNode animCurveTA -n "animCurveTA1530";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 -2.714797706271729 7 6.8395746012858769 
		11 -0.68597577682095234 14 15.711459605750282 17 -9.7630592494187347 19 19.024202942731709 
		21 2.3746822001659003 24 -8.0997791344947849 28 -0.16613472175511113;
	setAttr -s 10 ".kit[0:9]"  3 1 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 1 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[1:9]"  0.99034780263900757 0.98868030309677124 
		0.83322179317474365 0.78387093544006348 0.94476515054702759 0.53267121315002441 
		0.33208173513412476 0.98241496086120605 0.69362431764602661;
	setAttr -s 10 ".kiy[1:9]"  0.13860441744327545 0.15003769099712372 
		0.55293887853622437 -0.62092375755310059 0.32774814963340759 0.84632223844528198 
		-0.94325059652328491 -0.18671058118343353 0.7203369140625;
	setAttr -s 10 ".kox[1:9]"  0.99034780263900757 0.98868030309677124 
		0.83322179317474365 0.78387093544006348 0.94476515054702759 0.53267121315002441 
		0.33208173513412476 0.98241496086120605 0.69362431764602661;
	setAttr -s 10 ".koy[1:9]"  0.13860444724559784 0.15003769099712372 
		0.55293887853622437 -0.62092375755310059 0.32774814963340759 0.84632223844528198 
		-0.94325059652328491 -0.18671058118343353 0.7203369140625;
createNode animCurveTA -n "animCurveTA1531";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA1532";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA1533";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA1534";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA1535";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA1536";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA1537";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA1538";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA1539";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA1540";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA1541";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA1542";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTL -n "animCurveTL530";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 7 -0.42053383394304489 
		11 -0.42053383394304489 14 -0.42053383394304489 17 -0.42053383394304489 21 
		-0.42053383394304489 24 -0.42053383394304489 28 -0.22333560679749456;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTL -n "animCurveTL531";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 7 0.82095713402937753 11 
		0.82095713402937753 14 0.82095713402937753 17 0.82095713402937753 21 0.82095713402937753 
		24 0.82095713402937753 28 0.0047180449320975452;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTL -n "animCurveTL532";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 4 1 7 0.66125572348608719 11 
		0.66125572348608719 14 0.66125572348608719 17 0.66125572348608719 21 0.66125572348608719 
		24 0.66125572348608719 28 1.0196125091168922;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTL -n "animCurveTL533";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0.61286360265336515 7 0.61286360265336515 
		11 0.040290671043843242 14 0.61286360265336515 17 0.042367882840052128 21 
		-0.042433963932874422 24 -0.070592534934367984 28 0.22315575876557758;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTL -n "animCurveTL534";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 7 0 11 0.033554882152466624 
		14 0 17 0.033963073052493145 21 0.028751749392535435 24 -0.024721446982595121 
		28 0.00065657399703637602;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTL -n "animCurveTL535";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 4 1 7 1 11 0.98660991142880716 
		14 1 17 0.89712700791585009 21 1.0002475761034655 24 1.0039970786293355 28 
		0.98169956815627235;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTL -n "animCurveTL536";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.033041213165890024 4 0.020108141908409895 
		7 0.020108141908409895 11 0.020108141908409895 14 0.020108141908409895 17 
		0.020108141908409895 21 0.020108141908409895 24 0.020108141908409895 28 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTL -n "animCurveTL537";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.86191433053168653 4 0.78071992709877647 
		7 1.0901975381229903 11 0.91041916243525822 14 0.72940657913595541 17 0.42936756691528288 
		21 0.66059748162920784 24 0.7501703493841041 28 0.37858032454604201;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTL -n "animCurveTL538";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.2787688202967567 4 0.61389821670312961 
		7 1.1994937327808917 11 1.3920864075698709 14 1.6615940315932769 17 1.9484445158042498 
		21 2.1519113815963928 24 2.5757926790329368 28 2.7617608859212668;
	setAttr -s 9 ".kit[0:8]"  1 1 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  1 1 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0.0016135455807670951 0.001154976082034409 
		0.0029984044376760721 0.0050493446178734303 0.0035947838332504034 0.0047587687149643898 
		0.0037193337921053171 0.0038260526489466429 0.0071695004589855671;
	setAttr -s 9 ".kiy[0:8]"  0.99999868869781494 0.99999934434890747 
		0.99999552965164185 0.99998724460601807 0.99999356269836426 0.99998867511749268 
		0.99999308586120605 0.99999266862869263 0.99997431039810181;
	setAttr -s 9 ".kox[0:8]"  0.0016135441837832332 0.0011550072813406587 
		0.0029984044376760721 0.0050493446178734303 0.0035947838332504034 0.0047587687149643898 
		0.0037193337921053171 0.0038260526489466429 0.0071695004589855671;
	setAttr -s 9 ".koy[0:8]"  0.99999868869781494 0.99999934434890747 
		0.99999552965164185 0.99998724460601807 0.99999356269836426 0.99998867511749268 
		0.99999308586120605 0.99999266862869263 0.99997431039810181;
createNode animCurveTA -n "animCurveTA1543";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 20.950825280283915 4 -0.4038887399101036 
		7 -55.13305056460004 11 -102.11192764085396 14 -131.59814912200312 17 -133.7214535728273 
		21 -93.031950677326506 24 -60.337347847987054 28 -51.320485913586609;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1544";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -7.5734518508549122 4 0 7 0 11 
		-5.5966252963327214 14 -3.7633166027251224 17 -3.7633166027251224 21 -6.4065588952267545 
		24 -9.2833393694372166 28 0.88499592456957299;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1545";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 7 0 11 2.2604456030586588 
		14 4.7207081288866775 17 4.7207081288866792 21 6.7606231417705933 24 0.61819385981743147 
		28 0.88511203159019147;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1546";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA1547";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA1548";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 4.0984482521620249;
createNode animCurveTA -n "animCurveTA1549";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 18.588300303494186;
createNode animCurveTA -n "animCurveTA1550";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA1551";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA1552";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 -22.686733334985114;
createNode animCurveTA -n "animCurveTA1553";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA1554";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA1555";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 1.0579251312417479e-005;
createNode animCurveTA -n "animCurveTA1556";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA1557";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA1558";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 4.0984482535121209;
createNode animCurveTA -n "animCurveTA1559";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 18.588300300216805;
createNode animCurveTA -n "animCurveTA1560";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA1561";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA1562";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 -22.686733333057838;
createNode animCurveTA -n "animCurveTA1563";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA1564";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA1565";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 1.0579251312417479e-005;
createNode animCurveTA -n "animCurveTA1566";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA1567";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA1568";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 2.4782236286598103;
createNode animCurveTA -n "animCurveTA1569";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA1570";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA1571";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTL -n "animCurveTL539";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.99214331096561381 28 -0.69163884744780491;
createNode animCurveTL -n "animCurveTL540";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.033841737269357866 28 0.24376503020897994;
createNode animCurveTL -n "animCurveTL541";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.027201153963313806 28 0.44841910314659961;
createNode animCurveTA -n "animCurveTA1572";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 -70.759742713658738;
createNode animCurveTA -n "animCurveTA1573";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 26.623081280451803;
createNode animCurveTA -n "animCurveTA1574";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 -49.096653183739235;
createNode animCurveTL -n "animCurveTL542";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.99214413619678865 28 0.71012400136723108;
createNode animCurveTL -n "animCurveTL543";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.033851474715545553 28 0.47076628974155943;
createNode animCurveTL -n "animCurveTL544";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.0272011762672867 28 0.075519476331700294;
createNode animCurveTA -n "animCurveTA1575";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 -78.56043550230747;
createNode animCurveTA -n "animCurveTA1576";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 -29.584258420035471;
createNode animCurveTA -n "animCurveTA1577";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 60.925944603873425;
createNode animCurveTL -n "animCurveTL545";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1.3705977767760478 4 -1.3705977767760478 
		7 -1.3705977767760478 11 -1.3705977767760478 14 -1.3705977767760478 17 -1.3705977767760478 
		21 -1.3705977767760478 24 -1.3705977767760478 28 -0.69415268877966596;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTL -n "animCurveTL546";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.1618658070195953 4 2.1618658070195953 
		7 2.1618658070195953 11 2.1618658070195953 14 2.1618658070195953 17 2.1618658070195953 
		21 2.1618658070195953 24 2.1618658070195953 28 0.25677228768617871;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTL -n "animCurveTL547";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.12044246479037771 4 -0.12044246479037771 
		7 -0.12044246479037771 11 -0.12044246479037771 14 -0.12044246479037771 17 
		-0.12044246479037771 21 3.2283535038902382 24 3.2283535038902382 28 3.2283535038902382;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA1578";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		24 0 28 -9.821242700822749;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1579";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		24 0 28 8.8589084522817085;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1580";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		24 0 28 4.296053949957793;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTL -n "animCurveTL548";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.3705978542308779 4 1.3705978542308779 
		7 1.3705978542308779 11 1.3705978542308779 14 1.3705978542308779 17 1.3705978542308779 
		21 1.3705978542308779 24 1.3705978542308779 28 0.83980188004008882;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTL -n "animCurveTL549";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.1618621235956237 4 2.1618621235956237 
		7 2.1618621235956237 11 2.1618621235956237 14 2.1618621235956237 17 2.1618621235956237 
		21 2.1618621235956237 24 2.1618621235956237 28 0.18904845089899242;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTL -n "animCurveTL550";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.12044250833667494 4 -0.12044250833667494 
		7 -0.12044250833667494 11 -0.12044250833667494 14 -0.12044250833667494 17 
		-0.12044250833667494 21 3.228353460343941 24 3.228353460343941 28 3.228353460343941;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA1581";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		24 0 28 -47.334284439592871;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1582";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		24 0 28 37.043101738907687;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1583";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		24 0 28 -52.740024725895559;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTL -n "animCurveTL551";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		24 0 28 0.99925943057965894;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTL -n "animCurveTL552";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		24 0 28 -1.1241231302067372;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTL -n "animCurveTL553";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1 4 -1 7 -1 11 -1 14 -1 17 -1 
		21 -1 24 -1 28 -2.0075305717115923;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTL -n "animCurveTL554";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		24 0 28 -0.59788775323863297;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTL -n "animCurveTL555";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		24 0 28 -1.6361478719279683;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTL -n "animCurveTL556";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1 4 -1 7 -1 11 -1 14 -1 17 -1 
		21 -1 24 -1 28 -2.2967427684127548;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1584";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 52.637219839343985 4 31.113013035328205 
		7 12.229735217996575 11 5.1901093599951746 14 25.91285291092742 17 29.320714794050424 
		21 11.009734387540538 24 16.440273005552591 28 80.425561779386882;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1585";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -24.4809671714325 4 14.578035687742375 
		7 39.521922353408108 11 35.448421734678668 14 25.579961425282651 17 1.0133423041627958 
		21 26.611727161051519 24 23.791808097542749 28 -30.44506412614497;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1586";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -64.344364641857069 4 -27.513240480133739 
		7 -33.52589178300768 11 -61.602189641128071 14 -22.130491917286768 17 -12.080719682294061 
		21 -49.292988708204547 24 -36.58612147779322 28 -71.256105225350495;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1587";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -53.609443747430014 4 17.082033969113084 
		7 21.222927398188862 11 -4.4635642762164824 14 7.0045636647412026 17 12.952160105263085 
		21 7.0672374492145895 24 16.088033120928912 28 43.141146641774469;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1588";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -25.279137940425244 4 4.5951376436364413 
		7 36.017713301890574 11 21.565971779724993 14 20.90933203282216 17 17.939974706247689 
		21 20.889074598437304 24 15.211209177350053 28 -34.275123249513904;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1589";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 57.594080128123665 4 -39.310652561672477 
		7 -27.857730357079244 11 -67.85393009858528 14 -36.867193246208942 17 -19.116571020146324 
		21 -36.691501217379631 24 -8.1582109145282722 28 -49.798186726856585;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1590";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 59.468287502559065 4 32.659488694302063 
		7 9.8893756008299842 11 9.8893756008299842 14 9.8893756008299842 17 9.8893756008299842 
		21 9.8893756008299842 24 48.321001904122703 28 23.279099769107546;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1591";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 59.305463658789549 4 40.59533267172813 
		7 15.722616812416319 11 15.722616812416319 14 15.722616812416319 17 15.722616812416319 
		21 72.697162596941297 24 72.697162596941297 28 21.701008910528312;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1592";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 18.476235154862632 4 -17.955810303398234 
		7 -17.955810303398234 11 -17.955810303398234 14 -17.955810303398234 17 -17.955810303398234 
		21 -17.955810303398234 24 -17.955810303398234 28 -11.431503848920926;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1593";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 10.082003051124275 4 10.082003051124259 
		7 10.082003051124259 11 10.082003051124259 14 10.082003051124259 17 10.082003051124259 
		21 10.082003051124259 24 10.082003051124259 28 56.613259276433958;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1594";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -4.720189328892868 4 -4.7201893288928654 
		7 -4.7201893288928654 11 -4.7201893288928654 14 -4.7201893288928654 17 -4.7201893288928654 
		21 -4.7201893288928654 24 -4.7201893288928654 28 13.131642679464065;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1595";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -11.342548829337776 4 20.127263792592359 
		7 20.127263792592359 11 20.127263792592359 14 20.127263792592359 17 20.127263792592359 
		21 20.127263792592359 24 20.127263792592359 28 -35.82807725219886;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1596";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 11.615881410206436 4 11.615881410206432 
		7 11.615881410206432 11 11.615881410206432 14 11.615881410206432 17 11.615881410206432 
		21 11.615881410206432 24 11.615881410206432 28 7.8286751959834726;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1597";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.32159281075535007 4 0.32159281075535023 
		7 0.32159281075535023 11 0.32159281075535023 14 0.32159281075535023 17 0.32159281075535023 
		21 0.32159281075535023 24 0.3215928107553504 28 -17.722466912710736;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "Thumb_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 146.72760480633303 28 146.72760480633303;
createNode animCurveTA -n "Thumb_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 15.180891733866945 28 15.180891733866945;
createNode animCurveTA -n "Thumb_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.072787087017034596 28 -0.072787087017034596;
createNode animCurveTA -n "animCurveTA1601";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		24 0 28 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1602";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		24 0 28 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1603";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 101.15442879205187 4 86.382238158606057 
		7 86.382238158606057 11 86.382238158606057 14 86.382238158606057 17 86.382238158606057 
		21 86.382238158606057 24 86.382238158606057 28 -19.69381977483518;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1604";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA1605";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA1606";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "Thumb_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 27.70521891534332 28 27.70521891534332;
createNode animCurveTA -n "Thumb_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 43.35103828268312 28 43.35103828268312;
createNode animCurveTA -n "Thumb_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 54.235722998003197 28 54.235722998003197;
createNode animCurveTA -n "Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 39.038703285259942 28 39.038703285259942;
createNode animCurveTA -n "Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 72.755037061650981 28 72.755037061650981;
createNode animCurveTA -n "Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 38.926480273156763 28 38.926480273156763;
createNode animCurveTA -n "animCurveTA1613";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		24 0 28 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1614";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		24 0 28 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1615";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 81.622987204614233 4 95.284705327631698 
		7 95.284705327631698 11 95.284705327631698 14 95.284705327631698 17 95.284705327631698 
		21 95.284705327631698 24 95.284705327631698 28 -14.841309524368913;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1616";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.2945941069882385 4 1.2945941069882381 
		7 1.2945941069882381 11 1.2945941069882381 14 1.2945941069882381 17 1.2945941069882381 
		21 1.2945941069882381 24 1.2945941069882385 28 3.1198943483277448;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1617";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 3.3208811165553165 4 3.3208811165553147 
		7 3.3208811165553147 11 3.3208811165553147 14 3.3208811165553147 17 3.3208811165553147 
		21 3.3208811165553147 24 3.3208811165553156 28 1.7238169885910806;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1618";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -27.525824477859977 4 -27.525824477859967 
		7 -27.525824477859967 11 -27.525824477859967 14 -27.525824477859967 17 -27.525824477859967 
		21 -27.525824477859967 24 -27.52582447785997 28 12.268388134198542;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1619";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -8.7597363552835983 4 0 7 0 11 
		0 14 0.90195671173744607 17 1.4516219601031872 21 1.7862813319379107 24 1.6657712567779686 
		28 4.5487561292321326;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1620";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 7 0 11 0 14 -0.65849296950392311 
		17 -1.1682453172182652 21 0.53009569882411045 24 -0.83493349690370655 28 
		-1.5083553877193403;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1621";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -8.9349579591731985 4 -19.782342815839208 
		7 -34.602718840400804 11 0.048220448127066051 14 10.622195211672377 17 17.67339534887013 
		21 -37.668770214373616 24 5.4687864433870299 28 2.5406155081875585;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1622";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		24 0 28 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1623";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		24 0 28 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1624";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		24 0 28 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1625";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.0069973893860033e-016 4 0 7 
		0 11 1.4427679171734242 14 -2.2933374170147838 17 -0.62986657309648353 21 
		-1.4419631114234375 24 -6.1173381622742768 28 3.9837240428089089;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		1 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		1 3;
	setAttr -s 9 ".kix[7:8]"  0.54932695627212524 1;
	setAttr -s 9 ".kiy[7:8]"  -0.83560746908187866 0;
	setAttr -s 9 ".kox[7:8]"  0.54932689666748047 1;
	setAttr -s 9 ".koy[7:8]"  -0.83560752868652344 0;
createNode animCurveTA -n "animCurveTA1626";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -9.2427148064678804 4 0 7 0 11 
		1.9989850115282259 14 0.058035737467464307 17 -1.4460386290219238 21 -1.5759280740348289 
		24 -14.247383164029355 28 6.6766338754328318;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1627";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -10.062830706779263 4 -35.066490153726463 
		7 -38.590254861796701 11 -24.087543587769879 14 29.242902762139309 17 22.207535616859467 
		21 13.508478467086709 24 -7.6858810790320815 28 22.569305093982326;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		1 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		1 3;
	setAttr -s 9 ".kix[7:8]"  0.4689103364944458 1;
	setAttr -s 9 ".kiy[7:8]"  0.88324576616287231 0;
	setAttr -s 9 ".kox[7:8]"  0.46891045570373535 1;
	setAttr -s 9 ".koy[7:8]"  0.88324570655822754 0;
createNode animCurveTA -n "animCurveTA1628";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 7 0 11 0 14 0.80733886412932376 
		17 1.6339297082043851 21 1.6339297082043851 24 1.6342289321852119 28 7.1522494975013169;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1629";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 7 0 11 0 14 -0.11469244032343262 
		17 -0.31848867807364534 21 -0.31848867807364534 24 0.31694931995559761 28 
		-1.434909647904012;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1630";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 5.671986885245901 4 -14.137529257929708 
		7 -25.043376569289276 11 -2.5552993311091203 14 5.1635725348268222 17 13.220480101610095 
		21 13.220480101610095 24 -8.7794103979753988 28 26.122606478441043;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1631";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		24 0 28 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1632";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		24 0 28 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1633";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 90.838361755940937 4 85.281921116584812 
		7 85.281921116584812 11 85.281921116584812 14 85.281921116584812 17 85.281921116584812 
		21 85.281921116584812 24 85.281921116584812 28 16.736721183175977;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "Thumb_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 163.43924646410963 28 163.43924646410963;
createNode animCurveTA -n "Thumb_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.1381503000571307 28 2.1381503000571307;
createNode animCurveTA -n "Thumb_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -6.3333534086058823 28 -6.3333534086058823;
createNode animCurveTA -n "animCurveTA1637";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		24 0 28 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1638";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		24 0 28 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1639";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 86.611733534295581 4 77.470348806333021 
		7 77.470348806333021 11 77.470348806333021 14 77.470348806333021 17 77.470348806333021 
		21 77.470348806333021 24 77.470348806333035 28 17.545620107018433;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
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
	setAttr ".o" 28;
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
connectAttr "brt_hit_by_car_backSource.st" "clipLibrary1.st[0]";
connectAttr "brt_hit_by_car_backSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL516.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL517.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL519.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA1521.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU89.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU90.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU91.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU92.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU93.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU94.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU95.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU96.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA1522.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA1523.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA1524.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL521.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL522.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL523.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL524.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL525.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL526.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA1525.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA1526.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA1527.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL527.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL528.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL529.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA1528.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA1529.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA1530.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA1531.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA1532.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA1533.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA1534.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA1535.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA1536.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA1537.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA1538.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA1539.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA1540.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA1541.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA1542.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL530.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL531.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL532.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL533.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL534.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL535.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL536.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL537.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL538.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA1543.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA1544.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA1545.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA1546.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA1547.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA1548.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA1549.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA1550.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA1551.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA1552.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA1553.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA1554.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA1555.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA1556.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA1557.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA1558.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA1559.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA1560.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA1561.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA1562.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA1563.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA1564.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA1565.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA1566.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA1567.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA1568.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA1569.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA1570.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA1571.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL539.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL540.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL541.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA1572.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA1573.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA1574.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL542.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL543.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL544.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA1575.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA1576.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA1577.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL545.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL546.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL547.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA1578.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA1579.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA1580.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL548.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL549.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL550.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA1581.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA1582.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA1583.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL551.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL552.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL553.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL554.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL555.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL556.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA1584.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA1585.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA1586.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA1587.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA1588.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA1589.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA1590.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA1591.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA1592.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA1593.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA1594.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1595.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1596.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1597.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "Thumb_Base_L_rotateX.a" "clipLibrary1.cel[0].cev[126].cevr"
		;
connectAttr "Thumb_Base_L_rotateY.a" "clipLibrary1.cel[0].cev[127].cevr"
		;
connectAttr "Thumb_Base_L_rotateZ.a" "clipLibrary1.cel[0].cev[128].cevr"
		;
connectAttr "animCurveTA1601.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1602.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1603.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1604.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1605.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1606.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "Thumb_R_rotateX.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "Thumb_R_rotateY.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "Thumb_R_rotateZ.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "Thumb_L_rotateX.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "Thumb_L_rotateY.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "Thumb_L_rotateZ.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1613.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1614.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1615.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1616.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1617.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1618.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1619.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1620.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1621.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1622.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1623.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1624.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1625.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1626.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1627.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1628.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1629.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1630.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1631.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1632.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1633.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "Thumb_Base_R_rotateX.a" "clipLibrary1.cel[0].cev[162].cevr"
		;
connectAttr "Thumb_Base_R_rotateY.a" "clipLibrary1.cel[0].cev[163].cevr"
		;
connectAttr "Thumb_Base_R_rotateZ.a" "clipLibrary1.cel[0].cev[164].cevr"
		;
connectAttr "animCurveTA1637.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA1638.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA1639.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of brt_hit_by_car_back.ma
