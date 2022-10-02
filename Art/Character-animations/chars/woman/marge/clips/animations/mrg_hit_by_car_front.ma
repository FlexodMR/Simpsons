//Maya ASCII 4.0 scene
//Name: mrg_hit_by_car_front.ma
//Last modified: Tue, Oct 01, 2002 05:19:38 PM
requires maya "4.0";
requires "p3dmayaexp" "18.5";
requires "p3dSimpleShader" "18.5";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mrg_hit_by_car_frontSource";
	setAttr ".ihi" 0;
	setAttr ".du" 29;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL461";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 20 0 22 0 25 0 29 0;
	setAttr -s 5 ".kit[1:4]"  1 9 1 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL462";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 20 0 22 0 25 0 29 0;
	setAttr -s 5 ".kit[1:4]"  1 9 1 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 0.028229074592631024 1 0.014615396780140913 
		2 0.0010017187207176669 3 -0.0071897567988619135 4 -0.0060474902449005538 
		5 0.00051697855861315787 6 0.0061912333619272598 7 0.0079542595026319326 
		8 0.008435287955917312 9 0.0085755413755319292 10 0.0084352879559173536 11 
		0.0084352879559173536 12 0.0084352879559173536 13 0.0084352879559173536 14 
		0.0084352879559173536 15 0.0084352879559173536 16 0.0084352879559173536 17 
		0.0084352879559173536 18 0.0084352879559173536 19 0.0084352879559173536 20 
		0.0087477060259871578 21 0.0090601240960569637 22 0.0084352879559173536 23 
		0.0058913122382331738 24 0.0024100822961101091 25 0 26 -0.00067783566541107314 
		27 -0.00060252059147650942 28 -0.00022594522180369078 29 0;
createNode animCurveTL -n "Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 -0.10303600802813305 1 -0.10054603091999907 
		2 -0.098056053723178091 3 -0.11513598842495253 4 -0.14357474999095041 5 -0.191583425260167 
		6 -0.30336518402993568 7 -0.59283531655895583 8 -0.90714947349599828 9 -1.0563439095064369 
		10 -1.1357281109312609 11 -1.1660882302918931 12 -1.1810305461386714 13 -1.219168643547496 
		14 -1.263966049991667 15 -1.3239014260065158 16 -1.4025813879246309 17 -1.4925043407629601 
		18 -1.5854866280833784 19 -1.6733445934477602 20 -1.7545387556743952 21 -1.8314725867140704 
		22 -1.9018768598274074 23 -1.9681459716369307 24 -2.0278855237313365 25 -2.0716430968205 
		26 -2.0963927423606994 27 -2.1099050573569973 28 -2.1189224408424403 29 -2.1301872918500773;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0;
createNode animCurveTU -n "animCurveTU73";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 20 0 22 0 25 0 29 0;
	setAttr -s 5 ".kit[0:4]"  9 3 3 3 9;
	setAttr -s 5 ".kot[0:4]"  9 3 3 3 9;
createNode animCurveTU -n "animCurveTU74";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 20 0 22 0 25 0 29 0;
	setAttr -s 5 ".kit[0:4]"  9 3 3 3 9;
	setAttr -s 5 ".kot[0:4]"  9 3 3 3 9;
createNode animCurveTU -n "animCurveTU75";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 20 0 22 0 25 0 29 0;
	setAttr -s 5 ".kit[0:4]"  9 3 3 3 9;
	setAttr -s 5 ".kot[0:4]"  9 3 3 3 9;
createNode animCurveTU -n "animCurveTU76";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 20 0 22 0 25 0 29 0;
	setAttr -s 5 ".kit[0:4]"  9 3 3 3 9;
	setAttr -s 5 ".kot[0:4]"  9 3 3 3 9;
createNode animCurveTU -n "animCurveTU77";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 20 1 22 1 25 0 29 0;
	setAttr -s 5 ".kit[0:4]"  9 3 3 3 9;
	setAttr -s 5 ".kot[0:4]"  9 3 3 3 9;
createNode animCurveTU -n "animCurveTU78";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 20 1 22 1 25 0 29 0;
	setAttr -s 5 ".kit[0:4]"  9 3 3 3 9;
	setAttr -s 5 ".kot[0:4]"  9 3 3 3 9;
createNode animCurveTU -n "animCurveTU79";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 20 0 22 0 25 1 29 1;
	setAttr -s 5 ".kit[0:4]"  9 3 3 3 9;
	setAttr -s 5 ".kot[0:4]"  9 3 3 3 9;
createNode animCurveTU -n "animCurveTU80";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 20 0 22 0 25 1 29 1;
	setAttr -s 5 ".kit[0:4]"  9 3 3 3 9;
	setAttr -s 5 ".kot[0:4]"  9 3 3 3 9;
createNode animCurveTA -n "animCurveTA1346";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[0:3]"  9 3 3 9;
	setAttr -s 4 ".kot[0:3]"  9 3 3 9;
createNode animCurveTA -n "animCurveTA1347";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[0:3]"  9 3 3 9;
	setAttr -s 4 ".kot[0:3]"  9 3 3 9;
createNode animCurveTA -n "animCurveTA1348";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[0:3]"  9 3 3 9;
	setAttr -s 4 ".kot[0:3]"  9 3 3 9;
createNode animCurveTL -n "animCurveTL466";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 20 0 22 0 25 0 29 0;
	setAttr -s 5 ".kit[0:4]"  9 3 3 3 9;
	setAttr -s 5 ".kot[0:4]"  9 3 3 3 9;
createNode animCurveTL -n "animCurveTL467";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 20 0 22 0 25 0 29 0;
	setAttr -s 5 ".kit[0:4]"  9 3 3 3 9;
	setAttr -s 5 ".kot[0:4]"  9 3 3 3 9;
createNode animCurveTL -n "animCurveTL468";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 20 0 22 0 25 0 29 0;
	setAttr -s 5 ".kit[0:4]"  9 3 3 3 9;
	setAttr -s 5 ".kot[0:4]"  9 3 3 3 9;
createNode animCurveTL -n "animCurveTL469";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.090256021184643917 3 -0.056716516245055415 
		6 -0.056716516245055415 8 -0.058650962300570389 10 -0.030508388871712495 
		12 -0.032851228927927169 15 -0.032851228927927169 19 -0.032851228927927169 
		22 -0.032851228927927169 25 -0.097869444841495443 29 -0.097869444841495443;
	setAttr -s 11 ".kit[1:10]"  3 3 9 9 9 9 9 
		9 9 9;
	setAttr -s 11 ".kot[1:10]"  3 3 9 9 9 9 9 
		9 9 9;
createNode animCurveTL -n "animCurveTL470";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.41649668871748402 3 0.10241439201530513 
		6 0.10241439201530513 8 0.82436831477848671 10 0.85846263527632216 12 0.15647149946462452 
		15 0.20711662159526661 19 0.75561436097006285 22 0.23047628819108906 25 0.095951083708606652 
		29 0.095951083708606652;
	setAttr -s 11 ".kit[1:10]"  3 3 9 9 9 9 9 
		9 9 9;
	setAttr -s 11 ".kot[1:10]"  3 3 9 9 9 9 9 
		9 9 9;
createNode animCurveTL -n "animCurveTL471";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.57233528532084232 3 -0.17170965338128064 
		6 -0.17170965338128064 8 -0.29716212204421927 10 -0.79439028735450035 12 
		-0.86566430399986505 15 -0.88529725045268393 19 -1.2237860300835322 22 -1.6044193122822195 
		25 -1.8121650471879951 29 -1.8142641225004779;
	setAttr -s 11 ".kit[1:10]"  3 3 9 9 9 9 9 
		9 3 9;
	setAttr -s 11 ".kot[1:10]"  3 3 9 9 9 9 9 
		9 3 9;
createNode animCurveTA -n "animCurveTA1349";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 68.750149689121017 3 0 6 0 8 
		-33.630440768693376 10 -89.675227039431803 12 -27.595959067019745 15 0.21801381617811239 
		19 -22.535152420394311 22 -22.535152420394311 25 -20.431608270131136 29 -3.3595522507325413;
	setAttr -s 11 ".kit[2:10]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 11 ".kot[2:10]"  3 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA1350";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 0 12 0 15 0 
		19 0 22 0 25 -4.9396511688497009 29 -4.9396511688497009;
createNode animCurveTA -n "animCurveTA1351";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 0 12 0 15 0 
		19 0 22 0 25 1.4972445100027123 29 1.4972445100027125;
createNode animCurveTL -n "animCurveTL472";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.12458561027363557 3 0.12458561027363557 
		6 0.12458561027363557 8 0.15726485462611536 10 0.15726485462611536 12 0.186268946989182 
		15 0.186268946989182 19 0.186268946989182 22 0.186268946989182 25 0.18647005802231295 
		29 0.18647005802231295;
	setAttr -s 11 ".kit[1:10]"  3 3 9 9 9 9 9 
		9 9 9;
	setAttr -s 11 ".kot[1:10]"  3 3 9 9 9 9 9 
		9 9 9;
createNode animCurveTL -n "animCurveTL473";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.1083286823262673 3 0.1083286823262673 
		6 0.1083286823262673 8 0.10673958356382562 10 0.62538371675171667 12 0.1428608755924749 
		15 0.20169509437231989 19 0.2976209154711506 22 0.15618033265450812 25 0.10138242431350594 
		29 0.10138242431350594;
	setAttr -s 11 ".kit[1:10]"  3 3 9 9 9 9 9 
		9 3 3;
	setAttr -s 11 ".kot[1:10]"  3 3 9 9 9 9 9 
		9 3 3;
createNode animCurveTL -n "animCurveTL474";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.28682072862451763 3 -0.28682072862451763 
		6 -0.28682072862451763 8 -0.51026007640341087 10 -0.71218762028331128 12 
		-0.93506317000219807 15 -1.0898314196340497 19 -1.7797736081439053 22 -1.9868320859392419 
		25 -1.8744226996739233 29 -1.8645091655791894;
	setAttr -s 11 ".kit[1:10]"  3 3 9 9 9 9 9 
		9 3 3;
	setAttr -s 11 ".kot[1:10]"  3 3 9 9 9 9 9 
		9 3 3;
createNode animCurveTA -n "animCurveTA1352";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 -3.9320360584068554 
		10 -39.225251334374214 12 5.4760876434928472 15 5.6175156500276104 19 25.211350838126936 
		22 1.4415482405103193 25 -17.095029905043305 29 -0.022973885644723264;
	setAttr -s 11 ".kit[1:10]"  3 3 9 9 9 9 9 
		9 9 9;
	setAttr -s 11 ".kot[1:10]"  3 3 9 9 9 9 9 
		9 9 9;
createNode animCurveTA -n "animCurveTA1353";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 0 12 0 15 0 
		19 0 22 0 25 -4.688255881576846 29 -4.6882558815768478;
	setAttr -s 11 ".kit[1:10]"  3 3 9 9 9 9 9 
		9 9 9;
	setAttr -s 11 ".kot[1:10]"  3 3 9 9 9 9 9 
		9 9 9;
createNode animCurveTA -n "animCurveTA1354";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 0 12 0 15 0 
		19 0 22 0 25 -0.16613472175511146 29 -0.16613472175511138;
	setAttr -s 11 ".kit[1:10]"  3 3 9 9 9 9 9 
		9 9 9;
	setAttr -s 11 ".kot[1:10]"  3 3 9 9 9 9 9 
		9 9 9;
createNode animCurveTA -n "animCurveTA1355";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA1356";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA1357";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA1358";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA1359";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA1360";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA1361";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA1362";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA1363";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA1364";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA1365";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA1366";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL475";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 0 12 0 15 0 
		19 0 22 0 25 0.097525253246257507 29 0.07853697459455973;
createNode animCurveTL -n "animCurveTL476";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 0 12 0 15 0 
		19 0 22 0 25 0.0053172365169878253 29 -0.0016591218045410986;
createNode animCurveTL -n "animCurveTL477";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.1269999742507935 3 1.1269999742507935 
		6 1.1269999742507935 8 1.1269999742507935 10 1.1269999742507935 12 1.1269999742507935 
		15 1.1269999742507935 19 1.1269999742507935 22 1.1269999742507935 25 1.1491032715205272 
		29 1.1201031468602305;
createNode animCurveTL -n "animCurveTL478";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 0 12 0 15 0 
		19 0 22 0 25 0.25149653438272224 29 0.25149653438272224;
createNode animCurveTL -n "animCurveTL479";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 0 12 0 15 0 
		19 0 22 0 25 0.00073995887775373751 29 0.00073995887775373751;
createNode animCurveTL -n "animCurveTL480";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.1269999742507935 3 1.1269999742507935 
		6 1.1269999742507935 8 1.1269999742507935 10 1.1269999742507935 12 1.1269999742507935 
		15 1.1269999742507935 19 1.1269999742507935 22 1.1269999742507935 25 1.106375388034134 
		29 1.106375388034134;
createNode animCurveTL -n "animCurveTL481";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.034394188484190708 3 -0.0087599701394426976 
		6 0.0075433732870337456 8 0.010277520183037759 10 0.010277520183037809 12 
		0.010277520183037809 15 0.010277520183037809 19 0.010277520183037809 22 0.010277520183037809 
		25 0 29 0;
createNode animCurveTL -n "animCurveTL482";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.93793428325425909 3 0.77235509527932511 
		6 0.95399641438602578 8 0.60629653664293193 10 0.39090432639659783 12 0.39090432639659783 
		15 0.63658748227607598 19 0.78926234627278735 22 0.64808380660664311 25 0.14683906152594559 
		29 0.19391502175755118;
createNode animCurveTL -n "animCurveTL483";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.12553864878387783 3 -0.14028121517788419 
		6 -0.36961889362786693 8 -1.1052671908309886 10 -1.3837664634022604 12 -1.4389627643013077 
		15 -1.6130360572444478 19 -2.0387961765160934 22 -2.3172389507837519 25 -2.5240814363293613 
		29 -2.5954114429824364;
createNode animCurveTA -n "animCurveTA1367";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 20.950825280283908 3 23.686988860744673 
		6 -20.451217483196501 8 -65.585535993622102 10 -117.84381686362197 12 -122.35138681083153 
		15 -99.171606951449704 19 -68.522598721536568 22 -55.788555672989702 25 -72.541652515313785 
		29 -94.463031014815542;
createNode animCurveTA -n "animCurveTA1368";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 9.3491547302982809 6 11.948637237067912 
		8 11.948637237067988 10 11.948637237067988 12 10.620611419255114 15 5.7219641580000298 
		19 5.7219641580000413 22 6.9024315516114836 25 10.339902534407132 29 21.641902216209711;
createNode animCurveTA -n "animCurveTA1369";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 -1.2514383035388716 6 -1.4726187357019873 
		8 -1.4726187357019895 10 -1.4726187357019895 12 -1.349740717833591 15 -0.6680190778623567 
		19 -0.32396062783084129 22 -0.4468386456992412 25 -1.2601559128696818 29 
		-3.6044218574730369;
createNode animCurveTA -n "animCurveTA1370";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA1371";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA1372";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 4.0984482521620249 
		29 4.0984482521620249;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  0.81333768367767334 1;
	setAttr -s 4 ".kiy[2:3]"  0.58179193735122681 0;
	setAttr -s 4 ".kox[1:3]"  0.81333768367767334 0.95608192682266235 
		1;
	setAttr -s 4 ".koy[1:3]"  0.58179193735122681 0.29309955239295959 
		0;
createNode animCurveTA -n "animCurveTA1373";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 18.588300303494186 
		29 18.588300303494186;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  0.29456019401550293 1;
	setAttr -s 4 ".kiy[2:3]"  0.95563292503356934 0;
	setAttr -s 4 ".kox[1:3]"  0.29456019401550293 0.58388584852218628 
		1;
	setAttr -s 4 ".koy[1:3]"  0.95563292503356934 0.81183576583862305 
		0;
createNode animCurveTA -n "animCurveTA1374";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA1375";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA1376";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 -22.686733334985114 
		29 -22.686733334985114;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  0.24486361443996429 1;
	setAttr -s 4 ".kiy[2:3]"  -0.96955752372741699 0;
	setAttr -s 4 ".kox[1:3]"  0.24486361443996429 0.50769364833831787 
		1;
	setAttr -s 4 ".koy[1:3]"  -0.96955752372741699 -0.86153769493103027 
		0;
createNode animCurveTA -n "animCurveTA1377";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA1378";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA1379";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 1.0579251312417479e-005 
		29 1.0579251312417479e-005;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA1380";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA1381";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA1382";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 4.0984482535121209 
		29 4.0984482535121209;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  0.81333768367767334 1;
	setAttr -s 4 ".kiy[2:3]"  0.58179193735122681 0;
	setAttr -s 4 ".kox[1:3]"  0.81333768367767334 0.95608192682266235 
		1;
	setAttr -s 4 ".koy[1:3]"  0.58179193735122681 0.29309955239295959 
		0;
createNode animCurveTA -n "animCurveTA1383";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 18.588300300216805 
		29 18.588300300216805;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  0.29456019401550293 1;
	setAttr -s 4 ".kiy[2:3]"  0.95563292503356934 0;
	setAttr -s 4 ".kox[1:3]"  0.29456019401550293 0.58388584852218628 
		1;
	setAttr -s 4 ".koy[1:3]"  0.95563292503356934 0.81183576583862305 
		0;
createNode animCurveTA -n "animCurveTA1384";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA1385";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA1386";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 -22.686733333057838 
		29 -22.686733333057838;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  0.24486361443996429 1;
	setAttr -s 4 ".kiy[2:3]"  -0.96955752372741699 0;
	setAttr -s 4 ".kox[1:3]"  0.24486361443996429 0.50769364833831787 
		1;
	setAttr -s 4 ".koy[1:3]"  -0.96955752372741699 -0.86153769493103027 
		0;
createNode animCurveTA -n "animCurveTA1387";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA1388";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA1389";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 1.0579251312417479e-005 
		29 1.0579251312417479e-005;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA1390";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA1391";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA1392";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 2.4782236286598103 
		29 2.4782236286598103;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  0.91782385110855103 1;
	setAttr -s 4 ".kiy[2:3]"  0.39698782563209534 0;
	setAttr -s 4 ".kox[1:3]"  0.91782385110855103 0.98324930667877197 
		1;
	setAttr -s 4 ".koy[1:3]"  0.39698782563209534 0.18226560950279236 
		0;
createNode animCurveTA -n "animCurveTA1393";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA1394";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA1395";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL490";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.3705977767760478 8 -1.3705977767760478 
		10 -1.3705977767760478 20 -1.0582657732708078 22 -1.1433813107054158 25 -0.77018858354478514 
		29 -0.80521726511750047;
createNode animCurveTL -n "animCurveTL491";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.1618658070195953 8 2.1618658070195953 
		10 2.1618658070195953 20 2.8595670189945235 22 2.4155263876575375 25 0.31414400201799764 
		29 0.16011791453845547;
createNode animCurveTL -n "animCurveTL492";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.12044246479037771 8 -0.12044246479037771 
		10 -3.5494374483355489 20 -5.0199346723288194 22 -5.4588173087038969 25 -5.7430446782243996 
		29 -5.7325240078653286;
createNode animCurveTA -n "animCurveTA1402";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 8 0 10 0.42860825122569929 
		20 17.096435248538612 22 0.42860825122569929 25 -179.55392776172391 29 -120.6667236884293;
createNode animCurveTA -n "animCurveTA1403";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 8 0 10 0.1077988974958692 20 
		-10.713911718895186 22 0.10779889749586917 25 116.96279219127334 29 102.95625951926647;
createNode animCurveTA -n "animCurveTA1404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 8 0 10 14.114108295498545 20 
		30.918260889009879 22 14.114108295498545 25 -167.34049544866542 29 -117.50644899099053;
createNode animCurveTL -n "animCurveTL493";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.3705978542308779 8 1.3705978542308779 
		10 1.3705978542308779 20 1.3705978542308779 22 0.97302263959083324 25 0.40893690716992881 
		29 0.40893690716992881;
createNode animCurveTL -n "animCurveTL494";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.1618621235956237 8 2.1618621235956237 
		10 2.1618621235956237 20 2.6066653898001708 22 2.3961841717461092 25 0.18904845089899255 
		29 0.18904845089899255;
createNode animCurveTL -n "animCurveTL495";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.12044250833667494 8 -0.12044250833667494 
		10 -3.5494374918818461 20 -4.9444369715033103 22 -4.8710930203474136 25 -6.6319940166888465 
		29 -6.7839922585441483;
createNode animCurveTA -n "animCurveTA1405";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 8 0 10 0 20 -0.57622929826857183 
		22 0 25 6.2222396109735723 29 6.2222396109735723;
createNode animCurveTA -n "animCurveTA1406";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 8 0 10 0 20 1.5373684001708721 
		22 0 25 -16.600812933991165 29 -16.600812933991165;
createNode animCurveTA -n "animCurveTA1407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 8 0 10 0 20 0.59237296711405096 
		22 0 25 -6.3965619146530344 29 -6.3965619146530344;
createNode animCurveTL -n "animCurveTL496";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 8 0 10 0 20 0 22 0 25 0.20583112500852868 
		29 1.5351542341385696;
	setAttr -s 7 ".kit[3:6]"  1 9 9 9;
	setAttr -s 7 ".kot[3:6]"  1 9 9 9;
	setAttr -s 7 ".kix[3:6]"  1 0.0080969873815774918 0.0015199322951957583 
		0.0010030160192400217;
	setAttr -s 7 ".kiy[3:6]"  0 0.99996721744537354 0.99999886751174927 
		0.9999995231628418;
	setAttr -s 7 ".kox[3:6]"  1 0.0080969873815774918 0.0015199322951957583 
		0.0010030160192400217;
	setAttr -s 7 ".koy[3:6]"  0 0.99996721744537354 0.99999886751174927 
		0.9999995231628418;
createNode animCurveTL -n "animCurveTL497";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 8 0 10 0 20 0 22 0 25 1.0559234230556687 
		29 -0.86667752871238668;
	setAttr -s 7 ".kit[3:6]"  1 9 9 9;
	setAttr -s 7 ".kot[3:6]"  1 9 9 9;
	setAttr -s 7 ".kix[3:6]"  1 0.0015783952549099922 0.0026922642719000578 
		0.000693504698574543;
	setAttr -s 7 ".kiy[3:6]"  0 0.99999874830245972 -0.9999963641166687 
		-0.9999997615814209;
	setAttr -s 7 ".kox[3:6]"  1 0.0015783952549099922 0.0026922642719000578 
		0.000693504698574543;
	setAttr -s 7 ".koy[3:6]"  0 0.99999874830245972 -0.9999963641166687 
		-0.9999997615814209;
createNode animCurveTL -n "animCurveTL498";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1 8 -1 10 -1 20 -1 22 -1 25 
		-2.7266002347845419 29 -1.1105508292219248;
	setAttr -s 7 ".kit[3:6]"  1 9 9 9;
	setAttr -s 7 ".kot[3:6]"  1 9 9 9;
	setAttr -s 7 ".kix[3:6]"  1 0.00096528761787340045 0.021101729944348335 
		0.0008250568644143641;
	setAttr -s 7 ".kiy[3:6]"  0 -0.9999995231628418 -0.99977731704711914 
		0.99999964237213135;
	setAttr -s 7 ".kox[3:6]"  1 0.00096528761787340045 0.021101729944348335 
		0.0008250568644143641;
	setAttr -s 7 ".koy[3:6]"  0 -0.9999995231628418 -0.99977731704711914 
		0.99999964237213135;
createNode animCurveTL -n "animCurveTL499";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 8 0 10 0 20 0 22 0 25 -0.59788775323863297 
		29 0.61323488484053001;
	setAttr -s 7 ".kit[3:6]"  1 9 9 9;
	setAttr -s 7 ".kot[3:6]"  1 9 9 9;
	setAttr -s 7 ".kix[3:6]"  1 0.0027875802479684353 0.0038049311842769384 
		0.0011009060544893146;
	setAttr -s 7 ".kiy[3:6]"  0 -0.9999961256980896 0.99999278783798218 
		0.99999940395355225;
	setAttr -s 7 ".kox[3:6]"  1 0.0027875802479684353 0.0038049311842769384 
		0.0011009060544893146;
	setAttr -s 7 ".koy[3:6]"  0 -0.9999961256980896 0.99999278783798218 
		0.99999940395355225;
createNode animCurveTL -n "animCurveTL500";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 8 0 10 0 20 0 22 0 25 -1.6361478719279683 
		29 0.30801779867030882;
	setAttr -s 7 ".kit[3:6]"  1 9 9 9;
	setAttr -s 7 ".kot[3:6]"  1 9 9 9;
	setAttr -s 7 ".kix[3:6]"  1 0.0010186523431912065 0.0075751026161015034 
		0.00068581232335418463;
	setAttr -s 7 ".kiy[3:6]"  0 -0.99999946355819702 0.99997133016586304 
		0.9999997615814209;
	setAttr -s 7 ".kox[3:6]"  1 0.0010186523431912065 0.0075751026161015034 
		0.00068581232335418463;
	setAttr -s 7 ".koy[3:6]"  0 -0.99999946355819702 0.99997133016586304 
		0.9999997615814209;
createNode animCurveTL -n "animCurveTL501";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1 8 -1 10 -1 20 -1 22 -1 25 
		-2.2967427684127548 29 -2.1649829693683946;
	setAttr -s 7 ".kit[3:6]"  1 9 9 9;
	setAttr -s 7 ".kot[3:6]"  1 9 9 9;
	setAttr -s 7 ".kix[3:6]"  1 0.0012852705549448729 0.0020028864964842796 
		0.010118904523551464;
	setAttr -s 7 ".kiy[3:6]"  0 -0.99999916553497314 -0.99999797344207764 
		0.99994879961013794;
	setAttr -s 7 ".kox[3:6]"  1 0.0012852705549448729 0.0020028864964842796 
		0.010118904523551464;
	setAttr -s 7 ".koy[3:6]"  0 -0.99999916553497314 -0.99999797344207764 
		0.99994879961013794;
createNode animCurveTA -n "animCurveTA1408";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 4.7921462321675188 3 -35.280552173416005 
		6 -55.670009807431882 8 -8.3722158444725974 10 -8.3722158444725974 12 6.8619270713577576 
		15 11.910122171492144 19 8.719760997765631 22 -0.86682362046053785 25 80.425561779386882 
		29 80.425561779386882;
createNode animCurveTA -n "animCurveTA1409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -53.856694228597611 3 2.5816969024663949 
		6 -13.611207391781139 8 -23.977773843939502 10 -23.977773843939502 12 26.271568733472723 
		15 34.847436509543812 19 -19.172371927598537 22 -36.420165432649057 25 -30.44506412614497 
		29 -30.44506412614497;
createNode animCurveTA -n "animCurveTA1410";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.098529366997784 3 53.251722291748415 
		6 27.497501682495685 8 33.682233492227084 10 33.682233492227084 12 -28.478653283920352 
		15 -57.340025714492775 19 -15.284065710194218 22 -37.142136265893669 25 -71.256105225350495 
		29 -71.256105225350495;
createNode animCurveTA -n "animCurveTA1411";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 17.196782419487917 3 -29.573411147573808 
		6 -8.563012295375076 8 -25.419177015304644 10 -25.419177015304644 12 35.50840155485146 
		15 26.194228625572833 19 30.531553251488187 22 -13.873454918735659 25 43.141146641774462 
		29 43.141146641774462;
createNode animCurveTA -n "animCurveTA1412";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -60.10188422410716 3 2.3677661369630982 
		6 20.507370224920166 8 -41.133378951685579 10 -41.133378951685579 12 18.534260088769848 
		15 1.6125065100282923 19 -38.582935464452937 22 -57.65471620728129 25 -34.275123249513904 
		29 -34.275123249513904;
createNode animCurveTA -n "animCurveTA1413";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -21.001041665835174 3 84.877951062747869 
		6 107.09766021769482 8 27.16586626679436 10 27.16586626679436 12 2.2170566423766038 
		15 -44.957460230307618 19 -32.931696609933702 22 5.2163725894863555 25 -49.798186726856571 
		29 -49.798186726856571;
createNode animCurveTA -n "animCurveTA1414";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 59.468287502559065 3 89.911651693682515 
		6 32.789921414575325 8 39.038962484432531 10 39.038962484432531 12 12.874514918270977 
		15 12.874514918270977 19 60.256622455879089 22 79.642588495982807 25 23.279099769107543 
		29 23.279099769107543;
createNode animCurveTA -n "animCurveTA1415";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 59.305463658789549 3 60.185649943194235 
		6 3.2573665005240873 8 63.89762232629036 10 63.89762232629036 12 18.197981956320611 
		15 45.248375301206067 19 45.248375301206067 22 87.940749370014572 25 21.701008910528319 
		29 21.701008910528319;
createNode animCurveTA -n "animCurveTA1416";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 18.476235154862632 3 -25.061733991251923 
		6 22.425089944480888 8 22.425089944480884 10 -54.236822617544803 12 -54.236822617544803 
		15 23.823134639673615 19 23.823134639673615 22 23.823134639673619 25 -11.431503848920924 
		29 -11.431503848920924;
createNode animCurveTA -n "animCurveTA1417";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 10.082003051124275 3 10.082003051124259 
		6 28.721836935985287 8 28.721836935985294 10 -21.870691107419798 12 -21.870691107419802 
		15 -6.0806429538034328 19 -6.0806429538034328 22 -6.0806429538034346 25 56.613259276433965 
		29 56.613259276433965;
createNode animCurveTA -n "animCurveTA1418";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -4.720189328892868 3 -4.7201893288928662 
		6 7.6266657808874898 8 7.6266657808874898 10 15.410846653408852 12 15.410846653408855 
		15 10.96112701689211 19 10.96112701689211 22 10.961127016892112 25 13.131642679464067 
		29 13.131642679464067;
createNode animCurveTA -n "animCurveTA1419";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 20.127263792592359 3 -13.555270109330269 
		6 -18.847227132200882 8 2.0447427744579891 10 2.0447427744579891 12 75.75473903343277 
		15 24.991091773627126 19 24.991091773627126 22 24.991091773627126 25 -35.828077252198852 
		29 -35.828077252198852;
createNode animCurveTA -n "animCurveTA1420";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 11.615881410206432 3 11.615881410206432 
		6 44.709551992010134 8 5.5429207840541235 10 5.5429207840541235 12 -8.1079546283831778 
		15 -8.107954628383192 19 -8.107954628383192 22 -8.1079546283831938 25 7.8286751959834691 
		29 7.8286751959834691;
createNode animCurveTA -n "animCurveTA1421";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.3215928107553504 3 0.32159281075535068 
		6 -10.402617814119608 8 34.868956102818473 10 34.868956102818473 12 -15.142398251678113 
		15 -15.142398251678118 19 -15.142398251678118 22 -15.142398251678118 25 -17.722466912710736 
		29 -17.722466912710736;
createNode animCurveTA -n "animCurveTA1422";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -33.352561559544277 3 11.093319219895511 
		6 -32.123718040735945 8 -32.123718040735959 10 -32.123718040735959 12 -32.123718040735945 
		15 -32.123718040735945 19 -32.123718040735945 22 -32.123718040735959 25 -36.628454700917274 
		29 -36.628454700917274;
createNode animCurveTA -n "animCurveTA1423";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 39.646570824829801 3 59.959644693642325 
		6 19.407819173437478 8 19.407819173437481 10 19.407819173437481 12 19.407819173437478 
		15 19.407819173437478 19 19.407819173437478 22 19.407819173437481 25 15.180891733866945 
		29 15.180891733866945;
createNode animCurveTA -n "animCurveTA1424";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 11.057385060550727 3 48.106469618696913 
		6 4.4751336445171193 8 4.4751336445171193 10 4.4751336445171193 12 4.4751336445171193 
		15 4.4751336445171193 19 4.4751336445171193 22 4.4751336445171193 25 -0.072787087017037025 
		29 -0.072787087017037025;
createNode animCurveTA -n "animCurveTA1425";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 0 12 0 15 0 
		19 0 22 0 25 0 29 0;
createNode animCurveTA -n "animCurveTA1426";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 0 12 0 15 0 
		19 0 22 0 25 0 29 0;
createNode animCurveTA -n "animCurveTA1427";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 72.57093380156806 3 67.810939637714412 
		6 -11.433734901667266 8 -11.43373490166727 10 -11.43373490166727 12 -11.433734901667266 
		15 -11.433734901667266 19 -11.433734901667266 22 -11.43373490166727 25 -19.69381977483518 
		29 16.091928124335652;
createNode animCurveTA -n "animCurveTA1428";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA1429";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA1430";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA1431";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 29 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1432";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 29 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1433";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 29 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1434";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 29 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1435";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 29 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1436";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 29 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1437";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 0 12 0 15 0 
		19 0 22 0 25 0 29 0;
createNode animCurveTA -n "animCurveTA1438";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 0 12 0 15 0 
		19 0 22 0 25 0 29 0;
createNode animCurveTA -n "animCurveTA1439";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 72.677699265164733 3 -9.6043099083038648 
		6 -9.6043099083038648 8 -9.6043099083038648 10 -9.6043099083038648 12 -9.6043099083038648 
		15 -9.6043099083038648 19 -9.6043099083038648 22 -9.6043099083038648 25 -14.841309524368915 
		29 14.532113898241397;
createNode animCurveTA -n "animCurveTA1440";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.2945941069882385 3 1.2945941069882381 
		6 3.1198943483277444 8 3.1198943483277448 10 3.1198943483277448 12 3.1198943483277444 
		15 3.1198943483277444 19 3.1198943483277444 22 3.1198943483277444 25 3.1198943483277448 
		29 0;
createNode animCurveTA -n "animCurveTA1441";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 3.3208811165553156 3 3.3208811165553147 
		6 1.7238169885910806 8 1.7238169885910808 10 1.7238169885910808 12 1.7238169885910806 
		15 1.7238169885910806 19 1.7238169885910806 22 1.723816988591081 25 1.7238169885910808 
		29 0;
createNode animCurveTA -n "animCurveTA1442";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -27.52582447785997 3 -27.525824477859967 
		6 12.268388134198538 8 12.268388134198538 10 12.268388134198538 12 12.268388134198538 
		15 12.268388134198538 19 12.268388134198538 22 12.268388134198538 25 12.268388134198538 
		29 0;
createNode animCurveTA -n "animCurveTA1443";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 6.308963718970988 6 6.9103069920743438 
		8 6.2649641345144991 10 6.2649641345144991 12 4.3792227256952083 15 -6.174601823043262 
		19 5.5003912180703773 22 0.41771815725513101 25 4.3455899438596957 29 21.857236856166011;
createNode animCurveTA -n "animCurveTA1444";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 5.7322064377030788 6 4.9896665793491746 
		8 5.7802940471161621 10 5.7802940471161621 12 7.3112839305619053 15 5.3349485649520059 
		19 7.3427228592247538 22 1.4517181918272679 25 -2.0211929929175145 29 2.424565788311519;
createNode animCurveTA -n "animCurveTA1445";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 2.8319513947347925 3 21.713029036968567 
		6 28.142527379210097 8 21.274336518663386 10 21.274336518663386 12 4.8458125891459387 
		15 -18.053793752528659 19 5.3515714667445593 22 16.50991249947349 25 9.1303904739519428 
		29 22.217726072149194;
createNode animCurveTA -n "animCurveTA1446";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 0 12 0 15 0 
		19 0 22 0 25 0 29 -11.623795089125478;
createNode animCurveTA -n "animCurveTA1447";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 0 12 0 15 0 
		19 0 22 0 25 0 29 -5.1801351848586021;
createNode animCurveTA -n "animCurveTA1448";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 15.545129367555202 
		10 0 12 14.898647627575579 15 14.898647627575579 19 14.898647627575579 22 
		14.898647627575579 25 0 29 27.974704293083807;
createNode animCurveTA -n "animCurveTA1449";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 14.794623739018833 6 14.794623739018833 
		8 22.334659718447345 10 22.334659718447345 12 22.338466481041845 15 11.456752355681559 
		19 3.5955899922493053 22 3.5955899922493062 25 4.5948127575308497 29 23.086919043348587;
createNode animCurveTA -n "animCurveTA1450";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 22.395186436807986 6 22.395186436807986 
		8 14.888605045675133 10 14.888605045675133 12 14.882720778967039 15 24.202881440026243 
		19 4.6959726176734558 22 4.6959726176734575 25 6.2727765341536816 29 8.6912145029969565;
createNode animCurveTA -n "animCurveTA1451";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -8.5537919350489524 3 -0.5621560964572182 
		6 -0.5621560964572182 8 28.394145862336995 10 28.394145862336995 12 28.408964454747306 
		15 -3.2783717394768646 19 10.032621196260985 22 10.032621196260987 25 27.984443909870059 
		29 22.489414651394924;
createNode animCurveTA -n "animCurveTA1452";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 22.078247600383854 6 18.977509968842877 
		8 20.941119161468873 10 10.848910062280098 12 11.98685505624049 15 13.464379261934385 
		19 0.82664351209015052 22 0.8266435120901503 25 7.1522494975013187 29 7.2864915402669999;
createNode animCurveTA -n "animCurveTA1453";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 -9.6389434643346714 6 -14.961349670392833 
		8 -11.985276261935251 10 -9.6857689857774609 12 -8.2276460027505074 15 -5.4447707464457205 
		19 -5.4419935515154378 22 -5.4419935515154378 25 -1.4349096479040127 29 -0.33252079700716181;
createNode animCurveTA -n "animCurveTA1454";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -8.6139304882271457 3 7.1941842949003796 
		6 21.659909015129006 8 13.249280848849958 10 7.3113462838181782 12 0.012452880661499691 
		15 -12.349286551846278 19 5.8122340998814881 22 5.8122340998814881 25 26.122606478441046 
		29 17.435740369561156;
createNode animCurveTA -n "animCurveTA1455";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 0 12 0 15 0 
		19 0 22 0 25 0 29 0;
createNode animCurveTA -n "animCurveTA1456";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 0 12 0 15 0 
		19 0 22 0 25 0 29 0;
createNode animCurveTA -n "animCurveTA1457";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 72.677699265164733 3 21.472939016776969 
		6 21.472939016776969 8 21.472939016776973 10 21.472939016776973 12 21.472939016776969 
		15 21.472939016776969 19 21.472939016776969 22 21.472939016776973 25 16.736721183175977 
		29 30.900736939420714;
createNode animCurveTA -n "animCurveTA1458";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.043585476863095891 3 26.194612819039175 
		6 -15.564086868905925 8 -15.564086868905928 10 -15.564086868905928 12 -15.564086868905925 
		15 -15.564086868905925 19 -15.564086868905925 22 -15.564086868905928 25 -19.916813043140671 
		29 -19.916813043140671;
createNode animCurveTA -n "animCurveTA1459";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 28.449471067828945 3 42.116293762219605 
		6 5.9119201843313247 8 5.9119201843313265 10 5.9119201843313265 12 5.9119201843313247 
		15 5.9119201843313247 19 5.9119201843313247 22 5.9119201843313265 25 2.1381503000571311 
		29 2.1381503000571311;
createNode animCurveTA -n "animCurveTA1460";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 15.739680343212559 3 51.312599966148291 
		6 -0.89181587725581968 8 -0.89181587725581979 10 -0.89181587725581979 12 
		-0.89181587725581968 15 -0.89181587725581968 19 -0.89181587725581968 22 -0.89181587725581979 
		25 -6.3333534086058831 29 -6.3333534086058831;
createNode animCurveTA -n "animCurveTA1461";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 0 12 0 15 0 
		19 0 22 0 25 0 29 0;
createNode animCurveTA -n "animCurveTA1462";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 0 12 0 15 0 
		19 0 22 0 25 0 29 0;
createNode animCurveTA -n "animCurveTA1463";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 72.57093380156806 3 55.749331591600708 
		6 21.151890972437133 8 21.151890972437133 10 21.151890972437133 12 21.151890972437133 
		15 21.151890972437133 19 21.151890972437133 22 21.151890972437133 25 17.545620107018433 
		29 -15.187381016197607;
createNode animCurveTA -n "hair_1_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 7 0 10 0 13 0 16 0 19 0 
		23 0 29 0;
createNode animCurveTA -n "hair_1_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 7 0 10 0 13 0 16 0 19 0 
		23 0 29 0;
createNode animCurveTA -n "hair_1_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 13.54162096512753 7 -32.093879481538387 
		10 -56.820373987649887 13 -13.006821093684387 16 22.877477448204946 19 27.795788533948745 
		23 -13.894025174296294 29 0;
createNode animCurveTA -n "hair_2_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 7 0 10 0 13 0 16 0 19 0 
		23 0 29 0;
createNode animCurveTA -n "hair_2_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 7 0 10 0 13 0 16 0 19 0 
		23 0 29 0;
createNode animCurveTA -n "hair_2_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 13.54162096512753 7 -32.093879481538387 
		10 -56.820373987649887 13 -13.006821093684387 16 22.877477448204946 19 27.795788533948745 
		23 -13.894025174296294 29 0;
createNode animCurveTA -n "hair_3_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 7 0 10 0 13 0 16 0 19 0 
		23 0 29 0;
createNode animCurveTA -n "hair_3_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 7 0 10 0 13 0 16 0 19 0 
		23 0 29 0;
createNode animCurveTA -n "hair_3_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 13.54162096512753 7 -32.093879481538387 
		10 -56.820373987649887 13 -13.006821093684387 16 22.877477448204946 19 27.795788533948745 
		23 -13.894025174296294 29 0;
createNode clipLibrary -n "clipLibrary1";
	setAttr -s 165 ".cel[0].cev";
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
	setAttr ".o" 23;
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
connectAttr "mrg_hit_by_car_frontSource.st" "clipLibrary1.st[0]";
connectAttr "mrg_hit_by_car_frontSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL461.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL462.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU73.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU74.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU75.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU76.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU77.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU78.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU79.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU80.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA1346.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA1347.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA1348.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL466.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL467.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL468.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL469.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL470.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL471.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA1349.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA1350.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA1351.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL472.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL473.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL474.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA1352.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA1353.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA1354.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA1355.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA1356.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA1357.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA1358.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA1359.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA1360.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA1361.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA1362.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA1363.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA1364.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA1365.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA1366.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL475.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL476.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL477.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL478.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL479.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL480.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL481.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL482.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL483.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA1367.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA1368.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA1369.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA1370.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA1371.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA1372.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA1373.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA1374.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA1375.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA1376.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA1377.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA1378.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA1379.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA1380.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA1381.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA1382.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA1383.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA1384.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA1385.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA1386.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA1387.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA1388.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA1389.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA1390.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA1391.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA1392.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA1393.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA1394.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA1395.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL490.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL491.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL492.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA1402.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA1403.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA1404.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL493.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL494.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL495.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA1405.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA1406.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA1407.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL496.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL497.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL498.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL499.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL500.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL501.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA1408.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA1409.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA1410.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA1411.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA1412.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA1413.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA1414.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA1415.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA1416.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA1417.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA1418.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1419.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1420.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1421.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA1422.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1423.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1424.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1425.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1426.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1427.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1428.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1429.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1430.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA1431.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA1432.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA1433.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA1434.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA1435.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA1436.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1437.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1438.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1439.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1440.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1441.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1442.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1443.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1444.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1445.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1446.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1447.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1448.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1449.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1450.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1451.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1452.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1453.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1454.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1455.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1456.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1457.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA1458.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA1459.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA1460.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA1461.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA1462.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA1463.a" "clipLibrary1.cel[0].cev[167].cevr";
connectAttr "hair_1_rotateX.a" "clipLibrary1.cel[0].cev[168].cevr";
connectAttr "hair_1_rotateY.a" "clipLibrary1.cel[0].cev[169].cevr";
connectAttr "hair_1_rotateZ.a" "clipLibrary1.cel[0].cev[170].cevr";
connectAttr "hair_2_rotateX.a" "clipLibrary1.cel[0].cev[171].cevr";
connectAttr "hair_2_rotateY.a" "clipLibrary1.cel[0].cev[172].cevr";
connectAttr "hair_2_rotateZ.a" "clipLibrary1.cel[0].cev[173].cevr";
connectAttr "hair_3_rotateX.a" "clipLibrary1.cel[0].cev[174].cevr";
connectAttr "hair_3_rotateY.a" "clipLibrary1.cel[0].cev[175].cevr";
connectAttr "hair_3_rotateZ.a" "clipLibrary1.cel[0].cev[176].cevr";
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
// End of mrg_hit_by_car_front.ma
