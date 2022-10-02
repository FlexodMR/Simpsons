//Maya ASCII 4.0 scene
//Name: brt_jump_dash_land.ma
//Last modified: Tue, May 27, 2003 01:50:20 PM
requires maya "4.0";
requires "p3dDeformer" "2.0";
requires "p3dmayaexp" "2.0.3.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "brt_jump_dash_landSource";
	setAttr ".ihi" 0;
	setAttr ".du" 16;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL639";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTL -n "animCurveTL640";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.013396105779132972 1 0.016148231752492213 
		2 0.018900357798424989 3 0.020066602895261108 4 0.019381097422153385 5 0.017879950289648169 
		6 0.015930248273165529 7 0.013899078148125542 8 0.012153526689948265 9 0.011554358734331456 
		10 0.011585263523282549 11 0.010547714441686149 12 0.0067431848744268523 
		13 -0.0028409282811333305 14 -0.016445523270364429 15 -0.028611569422479898 
		16 -0.033880036066693167;
createNode animCurveTL -n "brt_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 8.3732817002071602 1 8.4905338745273351 
		2 8.6077860542338005 3 8.6874603339956806 4 8.7243351778489302 5 8.7429614820799788 
		6 8.7504199897336559 7 8.7537914438547872 8 8.7601565874882006 9 8.7697681741549705 
		10 8.7771739046959887 11 8.7808969431358239 12 8.7794604534990395 13 8.7708680785550097 
		14 8.7564416423912075 15 8.7396815810093358 16 8.7240883304111012;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 37 0 38 0 39 0 40 0 41 0 42 0 
		43 0 44 0 45 0;
createNode animCurveTU -n "animCurveTU129";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTU -n "animCurveTU130";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTU -n "animCurveTU131";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTU -n "animCurveTU132";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTU -n "animCurveTU133";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTU -n "animCurveTU134";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTU -n "animCurveTU135";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 1;
createNode animCurveTU -n "animCurveTU136";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 1;
createNode animCurveTA -n "animCurveTA1804";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1805";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1806";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTL -n "animCurveTL644";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTL -n "animCurveTL645";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTL -n "animCurveTL646";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTL -n "animCurveTL647";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.265 1 -0.265 8 -0.265 12 -0.265 
		16 -0.265;
	setAttr -s 5 ".kit[0:4]"  9 3 3 3 3;
	setAttr -s 5 ".kot[0:4]"  9 3 3 3 3;
createNode animCurveTL -n "animCurveTL648";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.219 1 0.219 8 0.219 12 0.219 
		16 0.219;
	setAttr -s 5 ".kit[0:4]"  9 3 3 9 3;
	setAttr -s 5 ".kot[0:4]"  9 3 3 9 3;
createNode animCurveTL -n "animCurveTL649";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 19.630384113416781 1 19.630384113416781 
		8 19.630384113416781 12 19.641994896547875 16 19.626815306968577;
	setAttr -s 5 ".kit[1:4]"  3 9 9 9;
	setAttr -s 5 ".kot[1:4]"  3 9 9 9;
createNode animCurveTA -n "animCurveTA1807";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -80.425934965771887 1 0.75691661221243089 
		8 0.75691661221243089 12 0.24638645285560337 16 0;
	setAttr -s 5 ".kit[0:4]"  9 3 3 3 3;
	setAttr -s 5 ".kot[0:4]"  9 3 3 3 3;
createNode animCurveTA -n "animCurveTA1808";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.9756272542292108 1 -1.9756272542292108 
		8 -10.289026325370916 12 -23.696597912751002 16 -25.948901905116401;
	setAttr -s 5 ".kit[3:4]"  1 3;
	setAttr -s 5 ".kot[3:4]"  1 3;
	setAttr -s 5 ".kix[3:4]"  0.91839778423309326 1;
	setAttr -s 5 ".kiy[3:4]"  -0.39565828442573547 0;
	setAttr -s 5 ".kox[3:4]"  0.91839778423309326 1;
	setAttr -s 5 ".koy[3:4]"  -0.39565831422805786 0;
createNode animCurveTA -n "animCurveTA1809";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.5855234045840427 1 -1.5855234045840427 
		8 -1.5855234045840427 12 -0.38890264689396609 16 0;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL650";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.057707008620591894 1 0.071900878314782188 
		2 0.21594587158542247 3 0.21594587158542247 16 0.21594587158542247;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL651";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.56072762933400244 1 0.34649987715480857 
		2 0.21854505205085809 3 0.21854505205085809 16 0.21854505205085809;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL652";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 18.884878806080142 1 19.311751465418492 
		2 19.524708229903965 3 19.692504016191631 16 19.692504016191631;
createNode animCurveTA -n "animCurveTA1810";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 35.504252294104774 1 -18.82190893206327 
		2 -44.334656365936475 3 0 16 0;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1811";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 3 0 16 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1812";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 3 0 16 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1813";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1814";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1815";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1816";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1817";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1818";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1819";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1820";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1821";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1822";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1823";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1824";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTL -n "animCurveTL653";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.015626596145230928 2 0 5 0 
		12 0 16 0;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL654";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.35528238409002089 2 0 5 0 12 
		0 16 0;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL655";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.95033733164568379 2 1 5 1 12 
		1 16 1;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL656";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 12 0 16 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL657";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 12 0 16 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL658";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 3 1 12 1 16 1;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL659";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.030237240874615875 3 0.045293663343896437 
		8 0.027432533010636119 12 0.015220490840533488 16 -0.076472881617957691;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL660";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.79050576642503834 3 0.76604783552759326 
		8 0.73738126651052338 12 0.90512685595480935 16 0.95473100313980441;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL661";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 18.899890748441354 3 19.6090442281279 
		8 19.773131774447485 12 19.816703813665793 16 19.691719713722595;
createNode animCurveTA -n "animCurveTA1825";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -25.618528843527304 3 42.833149971977917 
		8 16.134307530096347 12 10.307216569984554 16 -0.62843630316474508;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kix[0:4]"  0.99660462141036987 0.34364989399909973 
		0.46723198890686035 0.67363822460174561 1;
	setAttr -s 5 ".kiy[0:4]"  0.082336336374282837 0.9390978217124939 
		-0.88413476943969727 -0.73906129598617554 0;
	setAttr -s 5 ".kox[0:4]"  0.99660462141036987 0.34364989399909973 
		0.46723198890686035 0.67363822460174561 1;
	setAttr -s 5 ".koy[0:4]"  0.082335807383060455 0.9390978217124939 
		-0.88413476943969727 -0.73906129598617554 0;
createNode animCurveTA -n "animCurveTA1826";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -6.9340771104762791 3 0 8 0 12 
		0 16 -5.8284402688137167;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1827";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 11.330280842008813 3 0 8 0 12 
		0 16 -1.295636019309746;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1828";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1829";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1830";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1831";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1832";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1833";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1834";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1835";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1836";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1837";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1838";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1839";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1840";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1841";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1842";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1843";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1844";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1845";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1846";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1847";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1848";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1849";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1850";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1851";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1852";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1853";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTL -n "animCurveTL668";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.2055120515218554 2 -0.81366721158659117 
		5 -0.8464929109144198 12 -0.9261200305478654 16 -0.8448236677023373;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL669";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.0413581373234915 2 1.0971194769927561 
		5 0.40583585351049922 12 1.1201931780648355 16 1.0304014029588007;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL670";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 23.642164076092659 2 24.945983686196314 
		5 26.194849074438203 12 25.90122173494148 16 25.370214488125772;
createNode animCurveTA -n "animCurveTA1860";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -136.88819419054479 2 50.79177939302059 
		5 -6.5497694085259983 12 -15.275628486635982 16 5.4739599453216465;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1861";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -3.1057718541972772 2 55.228058117531276 
		5 24.767806780562221 12 10.573544209344728 16 8.5874521608419823;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1862";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -18.485678530591535 2 82.33092823712218 
		5 45.231945695514959 12 46.811115809066436 16 74.754744621954103;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL671";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.045880260217626 2 0.98753484054318963 
		5 0.90197479719935769 12 0.91921307150652076 16 0.61083301393139333;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL672";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.1798756483840735 2 1.2673530611379271 
		5 0.38693164250820722 12 1.1138905446432497 16 1.0211562878106184;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL673";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 23.661180800455465 2 25.207409041071127 
		5 26.151985503860633 12 26.050502547858525 16 25.611352138442363;
createNode animCurveTA -n "animCurveTA1863";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -42.111366262800331 2 -8.6956122072064996 
		5 41.99478438900978 12 5.2157101296799437 16 16.226511010665412;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1864";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -60.001824694137696 2 -62.182869075925943 
		5 -35.152233517104122 12 -36.60764546449181 16 -8.5139660854992858;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1865";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 4.7498895095808065 2 -60.86370447129287 
		5 -65.276690851317866 12 -35.601526191623421 16 -68.213989601412422;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL674";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.48608220680805114 3 0.48608220680805114 
		12 0.48865623708605266 16 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL675";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.2341020444288966 3 -1.2341020444288966 
		12 -1.3362930736062528 16 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL676";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.9993623657977142 3 -0.9993623657977142 
		12 -0.91725258962026146 16 -1;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL677";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.57597564774320764 3 -0.57597564774320764 
		12 -0.57555789187053286 16 -0.10167917362943303;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL678";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.75601350916139098 3 -0.75601350916139098 
		12 -0.82335937465046505 16 -0.40762644910266188;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL679";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.54077942611803975 3 -0.54077942611803975 
		12 -0.48593958088934258 16 -0.93129112588482243;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1866";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -22.78039507191296 3 -22.78039507191296 
		12 -22.78039507191296 16 12.253734489678925;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1867";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -59.78589307060367 3 -59.78589307060367 
		12 -59.78589307060367 16 -65.746751280844975;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1868";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 34.574435665981952 3 34.574435665981952 
		12 34.574435665981952 16 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1869";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -4.3077020824181265 3 -4.3077020824181265 
		12 -4.3077020824181265 16 -0.061808866237340665;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1870";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -49.658336589859132 3 -49.658336589859132 
		12 -49.658336589859132 16 -59.058178941076754;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1871";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 45.957278122761899 3 45.957278122761899 
		12 45.957278122761899 16 16.57914742975785;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1872";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 64.255341242982553 3 64.255341242982553 
		12 64.255341242982553 16 8.5572674112203639;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1873";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 72.208811687058059 3 72.208811687058059 
		12 72.208811687058059 16 15.711328223519061;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1874";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 72.79493678537078 3 72.79493678537078 
		12 72.79493678537078 16 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1875";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 35.224795679311441 3 35.224795679311441 
		12 35.224795679311441 16 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1876";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 56.771965155298119 3 56.771965155298119 
		12 56.771965155298119 16 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1877";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 59.556508727470074 3 59.556508727470074 
		12 59.556508727470074 16 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1878";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 36.028288837490415 3 36.028288837490415 
		12 36.028288837490415 16 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1879";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 13.094680882304901 3 13.094680882304901 
		12 13.094680882304901 16 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1880";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 143.15000228576875 3 143.15000228576875 
		12 143.15000228576875 16 143.71460997127255;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1881";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 53.910048648242878 3 53.910048648242878 
		12 53.910048648242878 16 27.804554996454375;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1882";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 43.127820754253513 3 43.127820754253513 
		12 43.127820754253513 16 29.452980944098755;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1883";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 12 0 16 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1884";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 12 0 16 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1885";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 59.219502482153104 3 59.219502482153104 
		12 59.219502482153104 16 27.080064458283051;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1886";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1887";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1888";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1889";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1890";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1891";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1892";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1893";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA1894";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 13.994403295754109;
createNode animCurveTA -n "animCurveTA1895";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 12 0 16 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1896";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 12 0 16 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1897";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 66.672206829852314 3 66.672206829852314 
		12 66.672206829852314 16 27.911632519594587;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1898";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 12 0 16 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1899";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 12 0 16 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1900";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 12 0 16 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1901";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.76523683606661608 3 -1.7222213883462014 
		12 -0.95790877084412285 16 -0.65073001024951671;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1902";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -2.1051802249727634 3 -1.4323683570519787 
		12 -2.0457585592028154 16 -4.2368721935960938;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1903";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -2.6124919461750227 3 15.671338868114935 
		12 3.2734145594016328 16 2.6995264082587442;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1904";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 16 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTA -n "animCurveTA1905";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 16 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTA -n "animCurveTA1906";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 14.508952910281577 8 31.723814180124549 
		16 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTA -n "animCurveTA1907";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.2239744454617516 3 2.2239744454617516 
		12 4.747822869067849 16 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1908";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 5.8970685922674964 3 5.8970685922674964 
		12 4.1882713219045904 16 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1909";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -17.691452850314786 3 -17.691452850314786 
		12 10.187734121095215 16 6.6786334979782902;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1910";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.1072408194864003 3 -0.26862115475572979 
		12 1.310860797980173 16 -1.8903601258661935;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1911";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.98804510081139363 3 1.4594355426723329 
		12 -0.53947180896068248 16 2.5597289571479038;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1912";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -8.9021177919342893 3 16.932708327043077 
		12 15.545402937214334 16 2.0168110874036049;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1913";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 12 0 16 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1914";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 12 0 16 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1915";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 61.824373247854581 3 61.824373247854581 
		12 61.824373247854581 16 33.429092416277157;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1916";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -122.90211145181451 3 -122.90211145181451 
		12 -122.90211145181451 16 -121.24398976748977;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1917";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 38.578337509358107 3 38.578337509358107 
		12 38.578337509358107 16 28.612774017129329;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1918";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 45.467643381850564 3 45.467643381850564 
		12 45.467643381850564 16 17.632837226638049;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1919";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 12 0 16 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1920";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 12 0 16 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1921";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 50.17101925731437 3 50.17101925731437 
		12 50.17101925731437 16 17.254116939558369;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
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
connectAttr "brt_jump_dash_landSource.st" "clipLibrary1.st[0]";
connectAttr "brt_jump_dash_landSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL639.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL640.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "brt_Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU129.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU130.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU131.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU132.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU133.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU134.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU135.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU136.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA1804.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA1805.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA1806.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL644.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL645.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL646.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL647.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL648.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL649.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA1807.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA1808.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA1809.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL650.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL651.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL652.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA1810.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA1811.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA1812.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA1813.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA1814.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA1815.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA1816.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA1817.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA1818.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA1819.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA1820.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA1821.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA1822.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA1823.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA1824.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL653.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL654.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL655.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL656.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL657.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL658.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL659.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL660.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL661.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA1825.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA1826.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA1827.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA1828.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA1829.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA1830.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA1831.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA1832.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA1833.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA1834.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA1835.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA1836.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA1837.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA1838.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA1839.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA1840.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA1841.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA1842.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA1843.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA1844.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA1845.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA1846.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA1847.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA1848.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA1849.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA1850.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA1851.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA1852.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA1853.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL668.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL669.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL670.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA1860.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA1861.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA1862.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL671.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL672.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL673.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA1863.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA1864.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA1865.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL674.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL675.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL676.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL677.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL678.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL679.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA1866.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA1867.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA1868.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA1869.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA1870.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA1871.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA1872.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA1873.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA1874.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA1875.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA1876.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1877.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1878.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1879.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA1880.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1881.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1882.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1883.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1884.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1885.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1886.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1887.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1888.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA1889.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA1890.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA1891.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA1892.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA1893.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA1894.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1895.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1896.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1897.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1898.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1899.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1900.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1901.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1902.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1903.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1904.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1905.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1906.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1907.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1908.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1909.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1910.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1911.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1912.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1913.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1914.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1915.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA1916.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA1917.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA1918.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA1919.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA1920.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA1921.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of brt_jump_dash_land.ma
