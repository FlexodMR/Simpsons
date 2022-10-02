//Maya ASCII 4.0 scene
//Name: lsa_jump_dash_all.ma
//Last modified: Fri, Oct 11, 2002 03:00:07 PM
requires maya "4.0";
requires "p3dmayaexp" "18.6";
requires "p3dSimpleShader" "18.6";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "lsa_jump_dash_allSource";
	setAttr ".ihi" 0;
	setAttr ".du" 38;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL756";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL757";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 0.013223370898418536 1 0.013223370898418536 
		2 0.013223370898418536 3 0.013223370898418536 4 0.013223370898418536 5 0.013223370898418536 
		6 0.013223370898418536 7 0.013223370898418536 8 0.013223370898418536 9 0.013223370898418536 
		10 0.013223370898418536 11 0.013223370898418536 12 0.013223370898418536 13 
		0.013223370898418536 14 0.013223370898418536 15 0.013227177330614156 16 0.013233521384273517 
		17 0.01323479019500539 18 0.013223370898418536 19 0.012837291384559664 20 
		0.013101565074642448 21 0.01539575535255667 22 0.018286082591634643 23 0.019625397708399377 
		24 0.018897051240781539 25 0.017313083428700891 26 0.015319379741664117 27 
		0.0133618256491779 28 0.01188630662074891 29 0.011119697576843455 30 0.010810198668574434 
		31 0.010685683211418417 32 0.010474024520851983 33 0.009903095912351707 34 
		0.0087007707013941563 35 0.0065949222034559088 36 0.0033373427596970488 37 
		-0.00092684996781074104 38 -0.005879794682223485 39 -0.011203630086697206 
		40 -0.016580494884387939 41 -0.021692527778451688 42 -0.026221867472044483 
		43 -0.029850652668322365 44 -0.032261022070441341 45 -0.033135114381557439;
createNode animCurveTL -n "animCurveTL759";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 4.9740765977202308 1 4.9769364460867314 
		2 4.9937991776513977 3 5.0370895721119719 4 5.1048342701152443 5 5.1990066363335812 
		6 5.3379515365030885 7 5.5262115489459935 8 5.7451371863226894 9 5.9782852158765332 
		10 6.2092124048508843 11 6.4365661486707202 12 6.6681054079118676 13 6.901054297543971 
		14 7.1326369325366707 15 7.3721632090557634 16 7.6177635580039018 17 7.8498928964559926 
		18 8.0490061414869398 19 8.142124260327499 20 8.1891780262336145 21 8.2910920721677623 
		22 8.3991730163803293 23 8.4688134629158771 24 8.491820871282334 25 8.4953653317286673 
		26 8.4878833944109822 27 8.4778116094853857 28 8.4735865271079884 29 8.475436925791886 
		30 8.477778398553717 31 8.4803277173048972 32 8.4828016539568427 33 8.484916980420973 
		34 8.4863904686087057 35 8.4869388904314516 36 8.4866755415469033 37 8.4859561843731957 
		38 8.4848612909624297 39 8.4834713333666993 40 8.4818667836381039 41 8.4801281138287408 
		42 8.4783357959907057 43 8.4765703021760981 44 8.4749121044370117 45 8.4734416748255477;
createNode animCurveTA -n "animCurveTA2154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0;
createNode animCurveTU -n "animCurveTU153";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU154";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU155";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU156";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_FK_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  38 1;
createNode animCurveTU -n "lsa_Hoop_Root_IK_FK_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  38 1;
createNode animCurveTU -n "animCurveTU159";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 1 45 1;
	setAttr -s 3 ".kot[0:2]"  1 3 3;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTU -n "animCurveTU160";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 1 45 1;
	setAttr -s 3 ".kot[0:2]"  1 3 3;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2155";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2156";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2157";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL761";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL762";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL763";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL764";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.19763288944005308 3 -0.22809301424382589 
		6 -0.23107466025851106 10 -0.26880221423853956 13 -0.18012552442529514 20 
		-0.22659690697677989 22 -0.2317732285397984 27 -0.2317732285397984 29 -0.18714516942762646 
		32 -0.2233542531468036;
	setAttr -s 10 ".kit[1:9]"  9 9 9 9 3 3 3 
		3 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 3 3 
		3 3 3;
	setAttr -s 10 ".kox[0:9]"  1 0.059698775410652161 0.057223182171583176 
		0.045749355107545853 0.078733831644058228 1 1 1 1 1;
	setAttr -s 10 ".koy[0:9]"  0 -0.99821645021438599 -0.99836140871047974 
		0.99895292520523071 0.99689567089080811 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL765";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.36956228769602462 3 0.13800000000000001 
		6 0.45964862677960389 10 1.8299572176459744 13 1.6468005955148659 20 0.20712684860372185 
		22 0.10721832705451574 27 0.10721832705451574 29 0.21583413844942467 32 0.14962124006309727;
	setAttr -s 10 ".kit[1:9]"  9 9 9 9 3 3 3 
		3 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 3 3 
		3 3 3;
	setAttr -s 10 ".kox[0:9]"  1 0.022195454686880112 0.0013790722005069256 
		0.001965484581887722 0.0020540200639516115 1 1 1 1 1;
	setAttr -s 10 ".koy[0:9]"  0 0.99975365400314331 0.99999904632568359 
		0.99999809265136719 -0.99999791383743286 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL766";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 11.083276311928465 3 11.391786216253763 
		6 12.452615643348995 10 14.704479154699694 13 16.793230766796142 20 19.244557190972021 
		22 19.407685704169218 27 19.407685704169218 29 19.587205316144772 32 19.777139716418635;
	setAttr -s 10 ".kit[1:9]"  9 9 9 9 3 3 3 
		3 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 3 3 
		3 3 3;
	setAttr -s 10 ".kox[0:9]"  1 0.0014605567557737231 0.00070436130044981837 
		0.0005375581094995141 0.00073420157423242927 1 1 1 1 1;
	setAttr -s 10 ".koy[0:9]"  0 0.99999892711639404 0.9999997615814209 
		0.99999988079071045 0.99999970197677612 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2158";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 68.750149689121002 3 66.753537441737635 
		6 35.302889577616533 10 -47.175238702182462 13 -23.868119743285551 20 -45.627760894416291 
		22 2.6744316620370898 27 2.6744316620370898 29 24.244549408443024 32 -2.1378751225324386;
	setAttr -s 10 ".kit[1:9]"  9 9 9 9 3 3 3 
		3 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 3 3 
		3 3 3;
	setAttr -s 10 ".kox[0:9]"  1 0.32410979270935059 0.11654570698738098 
		0.22038352489471436 0.99673348665237427 1 1 1 1 1;
	setAttr -s 10 ".koy[0:9]"  0 -0.94601947069168091 -0.99318534135818481 
		-0.97541332244873047 0.080761075019836426 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2159";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 -3.5256945963156894 6 0 10 
		0 13 14.011600024750983 20 -0.43608925488945727 22 -0.45386286897071376 27 
		-0.45386286897071376 32 0;
	setAttr -s 9 ".kit[1:8]"  9 9 9 9 3 3 3 
		3;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 3 3 
		3 3;
	setAttr -s 9 ".kox[0:8]"  1 1 0.96694034337997437 0.69032192230224609 
		0.99973940849304199 1 1 1 1;
	setAttr -s 9 ".koy[0:8]"  0 0 0.25500279664993286 0.72350233793258667 
		-0.022827630862593651 0 0 0 0;
createNode animCurveTA -n "animCurveTA2160";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 4.8238895241523405 6 0 10 
		0 13 13.116251782146879 20 -3.0130697931149304 22 -3.1358729647033394 27 
		-3.1358729647033394 32 0;
	setAttr -s 9 ".kit[1:8]"  9 9 9 9 3 3 3 
		3;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 3 3 
		3 3;
	setAttr -s 9 ".kox[0:8]"  1 1 0.94063949584960938 0.71382260322570801 
		0.98778283596038818 1 1 1 1;
	setAttr -s 9 ".koy[0:8]"  0 0 -0.3394072949886322 0.70032656192779541 
		-0.1558365523815155 0 0 0 0;
createNode animCurveTL -n "animCurveTL767";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.19697756422115981 3 0.21272156446259907 
		4 0.23561928002289681 5 0.26511851857202784 6 0.27978032926064766 12 0.21511888352517475 
		14 0.19633879469749435 18 0.35194285972146366 20 0.28178543541046364 22 0.21594587158542247;
	setAttr -s 10 ".kit[0:9]"  3 3 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 3 9 9 9 9 9 
		9 9 9;
createNode animCurveTL -n "animCurveTL768";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.13800000000000001 3 0.1380615615975922 
		4 0.24745278999338202 5 0.32963362328939477 6 0.26740068424655106 12 2.0882647480439824 
		14 2.4157970918561129 18 1.0936631002636534 20 0.74479324492596188 22 0.13800000000000001;
	setAttr -s 10 ".kit[0:9]"  3 3 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 3 9 9 9 9 9 
		9 9 9;
createNode animCurveTL -n "animCurveTL769";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 11.336616651963634 3 11.318238259942266 
		4 11.430158053499616 5 11.524355622836028 6 11.576901820832189 12 15.438228598327846 
		14 16.659417148335994 18 18.433964397513435 20 19.204766912655362 22 19.860445204467013;
	setAttr -s 10 ".kit[0:9]"  3 3 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 3 9 9 9 9 9 
		9 9 9;
createNode animCurveTA -n "animCurveTA2161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 5 55.323470847353462 6 
		86.108267527194343 14 -52.255426907359578 20 -48.908992857674974 22 -1.1333774065517455;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kox[0:6]"  1 0.17009316384792328 0.066392421722412109 
		0.15777668356895447 0.19426156580448151 0.28635492920875549 0.079696930944919586;
	setAttr -s 7 ".koy[0:6]"  0 0.98542797565460205 0.99779361486434937 
		-0.98747479915618896 -0.9809497594833374 0.95812362432479858 0.9968191385269165;
createNode animCurveTA -n "animCurveTA2162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 14 0 20 0 22 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 14 0 20 0 22 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2164";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2165";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2166";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2167";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2168";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2169";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTA -n "animCurveTA2171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTA -n "animCurveTA2172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTA -n "animCurveTA2173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTA -n "animCurveTA2174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTA -n "animCurveTA2175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTL -n "animCurveTL770";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 35 0 45 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  1 1 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL771";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 35 0 45 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  1 1 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL772";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 3 1 6 1 10 1 14 1 18 1 20 1 
		23 1 35 1 45 1;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  1 1 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL773";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 35 0 45 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  1 1 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL774";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 35 0 45 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  1 1 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL775";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 3 1 6 1 10 1 14 1 18 1 20 1 
		23 1 35 1 45 1;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  1 1 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL776";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.03051835782609956 3 0.03051835782609956 
		6 0.03051835782609956 13 0.025228685364579846 20 0.065457878523700178 23 
		0.042500442655740364 28 0.017116076452902133 32 0.014617223670348017 36 -0.035207998541519063;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  1 1 0.53313380479812622 0.13238848745822906 
		0.18949653208255768 0.055079013109207153 0.10697420686483383 0.050898369401693344 
		0.026750620454549789;
	setAttr -s 9 ".koy[0:8]"  0 0 -0.84603095054626465 0.99119788408279419 
		0.98188138008117676 -0.99848198890686035 -0.99426180124282837 -0.99870383739471436 
		-0.99964213371276855;
createNode animCurveTL -n "animCurveTL777";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.76074829734573723 3 0.59726134361187688 
		6 0.92714697341349084 13 2.4722984504092613 20 0.90027255509550042 23 0.69338121252249996 
		28 0.73738126651052338 32 0.76627928180037064 36 0.92850496763879731;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  1 0.012018457986414433 0.0017777398461475968 
		0.17108690738677979 0.0018737957580015063 0.016368644312024117 0.041118547320365906 
		0.013951211236417294 0.008218720555305481;
	setAttr -s 9 ".koy[0:8]"  0 0.99992775917053223 0.99999839067459106 
		-0.98525595664978027 -0.99999827146530151 -0.99986600875854492 0.99915426969528198 
		0.99990266561508179 0.99996620416641235;
createNode animCurveTL -n "animCurveTL778";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 11.479724090761808 3 11.625152402116516 
		6 12.319514918004916 13 15.69302581735494 20 18.761379777108509 23 19.490493325678617 
		28 19.783466156160717 32 19.840943130688355 36 19.855685571068829;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  1 0.0023815387394279242 0.00081942864926531911 
		0.0007244276930578053 0.00087777763837948442 0.0026090333703905344 0.0085601136088371277 
		0.036899365484714508 0.090074151754379272;
	setAttr -s 9 ".koy[0:8]"  0 0.99999713897705078 0.99999964237213135 
		0.9999997615814209 0.99999964237213135 0.9999966025352478 0.99996334314346313 
		0.99931895732879639 0.99593508243560791;
createNode animCurveTA -n "animCurveTA2176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 40.92583813237421 3 31.660816129923894 
		6 15.777772212346544 13 -41.510587153305856 20 -44.566313284619632 23 17.332745687058708 
		28 16.134307530096347 32 10.307216569984554 36 -0.62843630316474508;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kox[0:8]"  1 0.41464897990226746 0.25255066156387329 
		0.40510627627372742 0.30871337652206421 0.24409486353397369 0.92566442489624023 
		0.67363822460174561 1;
	setAttr -s 9 ".koy[0:8]"  0 -0.90998142957687378 -0.96758365631103516 
		-0.91426962614059448 0.95115512609481812 0.96975135803222656 -0.37834563851356506 
		-0.73906129598617554 0;
createNode animCurveTA -n "animCurveTA2177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 20 0 23 0 28 0 32 0 
		36 -5.8284402688137167;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.93432658910751343 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 -0.35641807317733765 
		0;
createNode animCurveTA -n "animCurveTA2178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 20 0 23 0 28 0 32 0 
		36 -1.295636019309746;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.99642384052276611 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 -0.084495924413204193 
		0;
createNode animCurveTA -n "animCurveTA2179";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2180";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2181";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.0984482521620249 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2182";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 18.588300303494186 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2183";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2184";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2185";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -22.686733334985114 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2186";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2187";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2188";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0579251312417479e-005 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2189";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2190";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2191";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.0984482535121209 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2192";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 18.588300300216805 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2193";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2194";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2195";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -22.686733333057838 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2196";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2197";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2198";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0579251312417479e-005 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2199";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2200";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2201";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2202";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2203";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2204";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "lsa_Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  38 -0.43524234076486068;
createNode animCurveTL -n "lsa_Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  38 -0.82665738350180629;
createNode animCurveTL -n "lsa_Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  38 0.27773886459742925;
createNode animCurveTA -n "animCurveTA2205";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA2206";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA2207";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTL -n "lsa_Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  38 0.5198069948790518;
createNode animCurveTL -n "lsa_Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  38 -0.72394202659893114;
createNode animCurveTL -n "lsa_Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  38 0.36439499068905612;
createNode animCurveTA -n "animCurveTA2208";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA2209";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA2210";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTL -n "animCurveTL779";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.82210850521844403 3 -0.82210850521844403 
		6 -0.97184961979027418 10 -1.1718044234402016 14 -1.1400525673786615 18 -1.2016659747238192 
		20 -0.81366721158659117 23 -0.7596020228373821 35 -0.89872828252831027 45 
		-0.97384023505055983;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 0.0133551936596632 0.0066723152995109558 
		0.01585187204182148 0.088947050273418427 0.006127611268311739 0.0037701667752116919 
		0.058680005371570587 0.034209772944450378 1;
	setAttr -s 10 ".koy[0:9]"  0 -0.99991083145141602 -0.99997776746749878 
		-0.99987435340881348 -0.9960363507270813 0.99998122453689575 0.99999290704727173 
		-0.99827682971954346 -0.99941468238830566 0;
createNode animCurveTL -n "animCurveTL780";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1.1590792946011756 3 0.97841196865210966 
		6 1.6080624664332752 10 3.1348592425850685 14 3.4753304731806303 18 1.9537649449079231 
		20 0.81017725342659119 23 0.50816079545363169 35 1.0739666612215788 45 1.2525965505547216;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 0.0044544655829668045 0.0010820259340107441 
		0.0014281098265200853 0.0022577873896807432 0.00075042567914351821 0.0011529197217896581 
		0.018951110541820526 0.0098503828048706055 1;
	setAttr -s 10 ".koy[0:9]"  0 0.99999010562896729 0.99999940395355225 
		0.99999898672103882 -0.99999743700027466 -0.99999970197677612 -0.99999934434890747 
		0.99982041120529175 0.99995148181915283 0;
createNode animCurveTL -n "animCurveTL781";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 14.916013395362574 3 16.892726491040602 
		6 17.879027689646549 10 20.405456219331132 14 23.168533931098754 18 27.613442687449439 
		20 28.272387981611473 23 29.469551459414937 35 29.177886629830248 45 28.538805738673254;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kox[0:9]"  1 0.00067498814314603806 0.00066425063414499164 
		0.00050414277939125896 0.00036995997652411461 0.00039186069625429809 0.0008979354752227664 
		0.0055217351764440536 0.0078787421807646751 0.0052157528698444366;
	setAttr -s 10 ".koy[0:9]"  0 0.9999997615814209 0.9999997615814209 
		0.99999988079071045 0.99999994039535522 0.99999994039535522 0.99999958276748657 
		0.9999847412109375 -0.99996894598007202 -0.99998641014099121;
createNode animCurveTA -n "animCurveTA2211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 7.3566619347615223 3 7.3566619347615223 
		6 -9.115993314220681 10 -53.526448559502647 14 -47.059647053956937 18 -37.019643503638562 
		20 50.79177939302059 23 -6.5497694085259983 35 -15.275628486635982 45 -12.222987645962956;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 0.57106173038482666 0.21447509527206421 
		0.37352699041366577 0.67928344011306763 0.11631284654140472 0.29905837774276733 
		0.39782580733299255 0.99100726842880249 1;
	setAttr -s 10 ".koy[0:9]"  0 -0.8209071159362793 -0.97672945261001587 
		-0.92761927843093872 0.73387604951858521 0.99321264028549194 0.95423483848571777 
		-0.91746097803115845 -0.13380806148052216 0;
createNode animCurveTA -n "animCurveTA2212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 18.103084532249603 3 18.103084532249603 
		6 26.324117884677346 10 0.68575199927652142 14 -14.301886806446765 18 19.123992616034641 
		20 55.228058117531276 23 24.767806780562221 35 10.573544209344728 45 -19.681044208515029;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 0.81252700090408325 0.60888254642486572 
		0.35201451182365417 0.63805437088012695 0.16261525452136993 0.8608851432800293 
		0.53997606039047241 0.68694692850112915 1;
	setAttr -s 10 ".koy[0:9]"  0 0.5829235315322876 -0.79326039552688599 
		-0.93599456548690796 0.76999127864837646 0.98668956756591797 0.50879937410354614 
		-0.84168040752410889 -0.7267075777053833 0;
createNode animCurveTA -n "animCurveTA2213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 27.384539512019494 3 27.384539512019494 
		6 34.555108709452107 10 -11.770728249697619 14 14.362827790077391 18 -2.6573598343657179 
		20 82.33092823712218 23 45.231945695514959 35 46.811115809066436 45 65.119655550709012;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 0.84771233797073364 0.32312056422233582 
		0.60339820384979248 0.85882806777954102 0.1662498414516449 0.19555364549160004 
		0.62779068946838379 0.90386295318603516 1;
	setAttr -s 10 ".koy[0:9]"  0 0.53045618534088135 -0.94635778665542603 
		-0.7974400520324707 0.5122639536857605 0.98608368635177612 0.98069298267364502 
		-0.77838218212127686 0.42782217264175415 0;
createNode animCurveTL -n "animCurveTL782";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.82023325218162457 3 0.82023325218162457 
		6 0.92343519692143572 10 0.99585238270003718 14 1.0436758100744674 18 1.0497263370156622 
		20 0.98753484054318963 23 0.86306372125613096 35 0.88698380505404006 45 0.75854111686822778;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 0.019375842064619064 0.013285155408084393 
		0.022172302007675171 0.049437724053859711 0.03560202568769455 0.0089284088462591171 
		0.049664627760648727 0.069988220930099487 1;
	setAttr -s 10 ".koy[0:9]"  0 0.99981224536895752 0.99991172552108765 
		0.99975419044494629 0.99877721071243286 -0.99936604499816895 -0.99996012449264526 
		-0.99876594543457031 -0.99754780530929565 0;
createNode animCurveTL -n "animCurveTL783";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.99498110733416445 3 0.81431378138509825 
		6 1.6654512116023781 10 3.9750009289279586 14 4.4965439441444026 18 2.0922824559685056 
		20 0.98041083757176228 23 0.45197248438154064 35 1.0031289439571389 45 1.1932952672205326;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 0.0029829684644937515 0.00073823588900268078 
		0.00094192090909928083 0.001416390179656446 0.00056880660122260451 0.001016067573800683 
		0.21494445204734802 0.0098917428404092789 1;
	setAttr -s 10 ".koy[0:9]"  0 0.99999552965164185 0.99999970197677612 
		0.99999958276748657 -0.99999898672103882 -0.99999982118606567 -0.99999946355819702 
		0.97662627696990967 0.9999510645866394 0;
createNode animCurveTL -n "animCurveTL784";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 14.921596563371637 3 16.898309659049666 
		6 17.877242090081179 10 20.230965574779081 14 24.194631589919727 18 27.632459411812242 
		20 28.533813336486293 23 29.461789023254404 35 29.217256809829088 45 28.779943388989846;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kox[0:9]"  1 0.00067667098483070731 0.00070014211814850569 
		0.00042211526306346059 0.00036028758040629327 0.00046091634430922568 0.00091108016204088926 
		0.0073156985454261303 0.010754500515758991 0.0076220771297812462;
	setAttr -s 10 ".koy[0:9]"  0 0.9999997615814209 0.9999997615814209 
		0.99999994039535522 0.99999994039535522 0.99999988079071045 0.99999958276748657 
		0.99997323751449585 -0.99994218349456787 -0.99997097253799438;
createNode animCurveTA -n "animCurveTA2214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 8.9282143981625879 3 8.9282143981625879 
		6 -9.0703748831085189 10 -90.107119238195125 14 -111.29859300439365 18 -42.111366262800331 
		20 -8.6956122072065014 23 41.99478438900978 35 5.2157101296799437 45 -5.7993291745893361;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 0.5370592474937439 0.13377895951271057 
		0.14781665802001953 0.30333882570266724 0.11099433898925781 0.11281381547451019 
		0.89954972267150879 0.66025662422180176 1;
	setAttr -s 10 ".koy[0:9]"  0 -0.84354454278945923 -0.99101120233535767 
		-0.98901480436325073 0.95288276672363281 0.99382102489471436 0.99361616373062134 
		0.43681842088699341 -0.75104010105133057 0;
createNode animCurveTA -n "animCurveTA2215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 23.419278912510141 3 23.419278912510141 
		6 -40.501771671985914 10 -8.2000151923474469 14 -20.34541942815466 18 -60.001824694137696 
		20 -62.182869075925943 23 -35.152233517104122 35 -36.60764546449181 45 -1.2282640104712745;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 0.17645739018917084 0.38943296670913696 
		0.60408151149749756 0.28289985656738281 0.26416739821434021 0.35870945453643799 
		0.74597972631454468 0.77805668115615845 1;
	setAttr -s 10 ".koy[0:9]"  0 -0.98430830240249634 -0.92105484008789063 
		0.79692256450653076 -0.95914947986602783 -0.9644768238067627 0.93344926834106445 
		0.66596865653991699 0.62819409370422363 0;
createNode animCurveTA -n "animCurveTA2216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -3.9073136135656541 3 -3.9073136135656541 
		6 -16.843539022083927 10 61.376263996514069 14 61.038367355983226 18 4.7498895095808065 
		20 -60.86370447129287 23 -65.276690851317866 35 -35.601526191623421 45 -60.456694896838378;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 0.66307920217514038 0.20062029361724854 
		0.19251047074794769 0.26050302386283875 0.09359036386013031 0.13511621952056885 
		0.75003749132156372 0.99348437786102295 1;
	setAttr -s 10 ".koy[0:9]"  0 -0.74854922294616699 0.97966909408569336 
		0.98129492998123169 -0.96547305583953857 -0.99561077356338501 -0.99082976579666138 
		0.66139531135559082 0.11396819353103638 0;
createNode animCurveTL -n "animCurveTL785";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 -0.075007643271199492 6 -0.075007643271199492 
		10 0.9094728084084841 14 -0.075007643271199492 18 0.42754810371064994 20 
		0.48608220680805114 23 0.48608220680805114 35 0.48865623708605266 45 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 0.026654474437236786 0.0023701097816228867 
		1 0.0055332831107079983 0.0035644688177853823 0.028461895883083344 0.8890995979309082 
		0.015084895305335522 1;
	setAttr -s 10 ".koy[0:9]"  0 -0.9996446967124939 0.99999719858169556 
		0 -0.99998468160629272 0.99999362230300903 0.99959486722946167 0.45771381258964539 
		-0.99988621473312378 0;
createNode animCurveTL -n "animCurveTL786";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 -0.0015683274246280649 6 
		-0.0015683274246280649 10 -0.37952433986942874 14 -0.0015683274246280649 
		18 -0.90633634765029925 20 -1.2341020444288966 23 -1.2341020444288966 35 
		-1.3362930736062528 45 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 0.78691071271896362 0.0061734397895634174 
		1 0.005061829462647438 0.0016226716106757522 0.0050848671235144138 0.048869512975215912 
		0.0059421369805932045 1;
	setAttr -s 10 ".koy[0:9]"  0 -0.61706686019897461 -0.99998092651367188 
		0 -0.99998718500137329 -0.99999868869781494 -0.99998706579208374 -0.99880516529083252 
		0.99998235702514648 0;
createNode animCurveTL -n "animCurveTL787";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1 3 -0.99523236489475697 6 -0.99523236489475697 
		10 -1.0709579685788884 14 -0.99523236489475697 18 -1.1683884895498287 20 
		-0.9993623657977142 23 -0.9993623657977142 35 -0.91725258962026146 45 -1;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 0.38683673739433289 0.030798386782407761 
		1 0.027359684929251671 0.43584561347961426 0.0098599297925829887 0.060781501233577728 
		0.99624115228652954 1;
	setAttr -s 10 ".koy[0:9]"  0 0.92214822769165039 -0.99952560663223267 
		0 -0.99962568283081055 -0.90002143383026123 0.99995136260986328 0.99815112352371216 
		-0.086623281240463257 0;
createNode animCurveTL -n "animCurveTL788";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.10167917362943303 3 -0.046699535373194809 
		6 -0.046699535373194809 10 -0.046699535373194809 14 -0.046699535373194809 
		18 -0.52663227176926597 20 -0.57597564774320764 23 -0.57597564774320764 35 
		-0.57555789187053286 45 -0.10167917362943303;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 0.036353059113025665 1 1 0.0055562485940754414 
		0.0037787188775837421 0.033757656812667847 0.99652779102325439 0.015459648333489895 
		1;
	setAttr -s 10 ".koy[0:9]"  0 0.99933898448944092 0 0 -0.99998456239700317 
		-0.99999284744262695 -0.99943006038665771 0.083261065185070038 0.99988049268722534 
		0;
createNode animCurveTL -n "animCurveTL789";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.40762644910266188 3 5.9724781342803249e-005 
		6 5.9724781342803249e-005 10 5.9724781342803249e-005 14 5.9724781342803249e-005 
		18 -0.54533960262259329 20 -0.75601350916139098 23 -0.75601350916139098 35 
		-0.82335937465046505 45 -0.40762644910266188;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 0.0049056750722229481 1 1 0.004889325238764286 
		0.0026452371384948492 0.0079108728095889091 0.074039831757545471 0.021044721826910973 
		1;
	setAttr -s 10 ".koy[0:9]"  0 0.99998795986175537 0 0 -0.99998801946640015 
		-0.99999648332595825 -0.99996870756149292 -0.99725526571273804 0.99977850914001465 
		0;
createNode animCurveTL -n "animCurveTL790";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.93129112588482243 3 -1.0033873591439757 
		6 -1.0033873591439757 10 -1.0033873591439757 14 -1.0033873591439757 18 -0.69781241262917137 
		20 -0.54077942611803975 23 -0.54077942611803975 35 -0.48593958088934258 45 
		-0.93129112588482243;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 0.027730030938982964 1 1 0.0087263863533735275 
		0.0043232748284935951 0.010612883605062962 0.090797968208789825 0.018775470554828644 
		1;
	setAttr -s 10 ".koy[0:9]"  0 -0.99961543083190918 0 0 0.99996191263198853 
		0.99999064207077026 0.99994367361068726 0.99586933851242065 -0.99982374906539917 
		0;
createNode animCurveTA -n "animCurveTA2217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -10.587124207154311 3 46.171822403643489 
		6 -22.78039507191296 21 -24.185229702245927 25 -58.282919861543412 30 -22.78039507191296 
		37 12.253734489678925;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 3;
	setAttr -s 7 ".kox[0:6]"  1 0.68483006954193115 0.43901106715202332 
		0.7147940993309021 0.9966767430305481 0.30901166796684265 1;
	setAttr -s 7 ".koy[0:6]"  0 -0.72870278358459473 -0.89848166704177856 
		-0.69933497905731201 0.081458352506160736 0.95105826854705811 0;
createNode animCurveTA -n "animCurveTA2218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -60.592711499848903 3 -21.447120207264081 
		6 -59.78589307060367 21 50.616863605016633 25 -52.552655764034682 30 -59.78589307060367 
		37 -65.746751280844975;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 3;
	setAttr -s 7 ".kox[0:6]"  1 0.99753051996231079 0.43055915832519531 
		0.98070639371871948 0.15383782982826233 0.86664366722106934 1;
	setAttr -s 7 ".koy[0:6]"  0 0.070234313607215881 0.90256237983703613 
		0.19548648595809937 -0.98809611797332764 -0.49892762303352356 0;
createNode animCurveTA -n "animCurveTA2219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.15003680417244974 3 -62.992152333300986 
		6 34.574435665981952 21 10.449253707916377 25 83.28470249590417 30 34.574435665981952 
		37 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 3;
	setAttr -s 7 ".kox[0:6]"  1 0.31337940692901611 0.4239465594291687 
		0.59741145372390747 0.58026450872421265 0.2653181254863739 1;
	setAttr -s 7 ".koy[0:6]"  0 0.94962799549102783 0.90568721294403076 
		0.80193483829498291 0.81442809104919434 -0.96416091918945313 0;
createNode animCurveTA -n "animCurveTA2220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 52.350458715167015 3 47.461809804954534 
		6 -4.3077020824181265 10 -55.418442081943084 22 20.397481682160219 27 -66.604099500534048 
		31 -4.3077020824181265 37 -0.061808866237340665;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 0.19823691248893738 0.1288638710975647 
		0.77764350175857544 0.94546329975128174 0.57112085819244385 0.2758762538433075 
		1;
	setAttr -s 8 ".koy[0:7]"  0 -0.98015415668487549 -0.99166226387023926 
		0.62870550155639648 -0.32572859525680542 -0.82086598873138428 0.96119314432144165 
		0;
createNode animCurveTA -n "animCurveTA2221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -49.562109142955329 3 -32.227511792878673 
		6 -49.658336589859132 10 40.922135689191023 22 56.775444084754902 27 -41.775093537705629 
		31 -49.658336589859132 37 -59.058178941076754;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 0.99996471405029297 0.17978459596633911 
		0.2759573757648468 0.36545157432556152 0.15943127870559692 0.74146997928619385 
		1;
	setAttr -s 8 ".koy[0:7]"  0 -0.0083971330896019936 0.98370599746704102 
		0.96116989850997925 -0.93083035945892334 -0.9872090220451355 -0.67098605632781982 
		0;
createNode animCurveTA -n "animCurveTA2222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -64.60878798864384 3 -63.299510281091955 
		6 45.957278122761899 10 19.242186243835771 22 18.012588533016029 27 77.939664981283713 
		31 45.957278122761899 37 16.57914742975785;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 0.1030886247754097 0.15988324582576752 
		0.73795449733734131 0.48402327299118042 0.52392059564590454 0.29718935489654541 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0.99467217922210693 0.98713594675064087 
		-0.6748504638671875 0.87505513429641724 0.85176712274551392 -0.95481854677200317 
		0;
createNode animCurveTA -n "animCurveTA2223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 72.938873120018542 3 73.532946642668335 
		6 64.255341242982553 21 13.891858918547939 25 1.8225065714146671 30 64.255341242982553 
		37 8.5572674112203639;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 3;
	setAttr -s 7 ".kox[0:6]"  1 0.79701334238052368 0.49938616156578064 
		0.50250834226608276 0.32299989461898804 0.95943254232406616 1;
	setAttr -s 7 ".koy[0:6]"  0 -0.60396164655685425 -0.8663794994354248 
		-0.86457234621047974 0.94639897346496582 0.28193825483322144 0;
createNode animCurveTA -n "animCurveTA2224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 59.305463658789549 3 78.398801718513837 
		6 72.208811687058059 22 26.10300309527651 27 0.81064164353487722 32 72.208811687058059 
		38 15.711328223519061;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 3;
	setAttr -s 7 ".kox[0:6]"  1 0.66402435302734375 0.57008630037307739 
		0.48975628614425659 0.38269954919815063 0.81566357612609863 1;
	setAttr -s 7 ".koy[0:6]"  0 0.7477109432220459 -0.82158482074737549 
		-0.87185937166213989 0.92387282848358154 0.57852649688720703 0;
createNode animCurveTA -n "animCurveTA2225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -17.955810303398234 3 -5.0283522467414592 
		6 72.79493678537078 10 72.79493678537078 14 72.79493678537078 18 72.79493678537078 
		22 7.5044499862116671 23 -28.651940189735168 25 -40.823311830799966 26 -32.1114567107821 
		30 9.0783236888701992 37 0;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kox[0:11]"  1 0.1252758800983429 0.16930679976940155 
		1 1 0.22785791754722595 0.093716725707054138 0.11773213744163513 0.85605460405349731 
		0.18795198202133179 0.54747754335403442 1;
	setAttr -s 12 ".koy[0:11]"  0 0.99212193489074707 0.98556339740753174 
		0 0 -0.97369438409805298 -0.99559891223907471 -0.9930453896522522 -0.51688539981842041 
		0.9821782112121582 0.83682036399841309 0;
createNode animCurveTA -n "animCurveTA2226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 10.082003051124259 3 33.009681214774616 
		6 35.224795679311441 10 35.224795679311441 14 35.224795679311441 18 35.224795679311441 
		22 35.224795679311441 23 69.923513948353317 25 -15.973678670012339 26 26.064356333352936 
		30 39.598760728341013 37 0;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kox[0:11]"  1 0.41472098231315613 0.98654967546463013 
		1 1 1 0.26534116268157959 0.11121491342782974 0.12953521311283112 0.16935303807258606 
		0.62754988670349121 1;
	setAttr -s 12 ".koy[0:11]"  0 0.90994864702224731 0.1634615957736969 
		0 0 0 0.96415460109710693 -0.99379640817642212 -0.99157482385635376 0.98555546998977661 
		-0.7785763144493103 0;
createNode animCurveTA -n "animCurveTA2227";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -4.7201893288928654 3 40.275991096737059 
		6 56.771965155298119 10 56.771965155298119 14 56.771965155298119 18 56.771965155298119 
		22 56.771965155298119 23 12.647264013980807 25 -20.498948019723205 26 -26.892408600476696 
		30 42.18387634272657 37 0;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kox[0:11]"  1 0.18319770693778992 0.62962859869003296 
		1 1 1 0.21151943504810333 0.073946215212345123 0.14340923726558685 0.1506054699420929 
		0.61562144756317139 1;
	setAttr -s 12 ".koy[0:11]"  0 0.98307609558105469 0.77689623832702637 
		0 0 0 -0.97737377882003784 -0.99726223945617676 -0.98966348171234131 0.9885939359664917 
		0.78804200887680054 0;
createNode animCurveTA -n "animCurveTA2228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 20.127263792592359 3 -33.636490799689732 
		6 59.556508727470074 22 -33.712304801154588 24 -77.728649757480355 27 -37.752050963320123 
		33 59.556508727470074 39 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 0.27907872200012207 0.99999779462814331 
		0.24290919303894043 0.92097902297973633 0.12423462420701981 0.51893550157546997 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0.96026819944381714 -0.002089264802634716 
		-0.97004902362823486 -0.3896121084690094 0.9922528862953186 0.85481339693069458 
		0;
createNode animCurveTA -n "animCurveTA2229";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 11.615881410206432 3 29.328994901054315 
		6 36.028288837490415 22 38.835263373386958 24 48.949140492095843 27 -14.756803116194448 
		33 36.028288837490415 39 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 0.4249153733253479 0.96735626459121704 
		0.93606662750244141 0.17542183399200439 0.79934543371200562 0.84078437089920044 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0.90523308515548706 0.2534203827381134 
		0.35182282328605652 -0.98449337482452393 -0.600871741771698 0.54137015342712402 
		0;
createNode animCurveTA -n "animCurveTA2230";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.3215928107553504 3 -22.622358173865795 
		6 13.094680882304901 22 14.908842632329584 24 -62.874093096769329 27 -37.199070607759779 
		33 13.094680882304901 39 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 0.66778475046157837 0.69509303569793701 
		0.4122738242149353 0.18025808036327362 0.22068224847316742 0.52453851699829102 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0.74435442686080933 0.71891981363296509 
		-0.91105997562408447 -0.9836193323135376 0.97534573078155518 0.85138672590255737 
		0;
createNode animCurveTA -n "animCurveTA2231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 143.15000228576875 3 143.15000228576875 
		6 143.15000228576875 10 143.15000228576875 14 143.15000228576875 18 143.15000228576875 
		20 143.15000228576875 23 143.15000228576875 35 143.15000228576875 45 10.423754966968501;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 0.30180636048316956 
		1;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 -0.95336925983428955 
		0;
createNode animCurveTA -n "animCurveTA2232";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 53.910048648242871 3 53.910048648242878 
		6 53.910048648242878 10 53.910048648242878 14 53.910048648242878 18 53.910048648242878 
		20 53.910048648242878 23 53.910048648242878 35 53.910048648242878 45 27.722848255843903;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 0.84866362810134888 
		1;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 -0.52893292903900146 
		0;
createNode animCurveTA -n "animCurveTA2233";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 43.127820754253491 3 43.127820754253513 
		6 43.127820754253513 10 43.127820754253513 14 43.127820754253513 18 43.127820754253513 
		20 43.127820754253513 23 43.127820754253513 35 43.127820754253513 45 21.576484776388227;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 0.88978129625320435 
		1;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 -0.45638716220855713 
		0;
createNode animCurveTA -n "animCurveTA2234";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 35 0 45 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2235";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 35 0 45 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2236";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 86.382238158606057 3 59.219502482153104 
		6 59.219502482153104 10 59.219502482153104 14 59.219502482153104 18 59.219502482153104 
		20 59.219502482153104 23 59.219502482153104 35 59.219502482153104 45 27.080064458283051;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 0.38869693875312805 1 1 1 1 1 
		1 0.79427695274353027 1;
	setAttr -s 10 ".koy[0:9]"  0 -0.92136567831039429 0 0 0 0 
		0 0 -0.6075558066368103 0;
createNode animCurveTA -n "animCurveTA2237";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2238";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2239";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2240";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 26.541511232508352 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2241";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 41.530156331423342 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2242";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 52.545459146006969 45 13.994403295754109;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2243";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 37.39895318822164 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2244";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 69.699093005590768 45 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2245";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 37.87925340126155 45 13.994403295754109;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2246";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 35 0 45 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2247";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 35 0 45 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2248";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 95.284705327631698 3 66.672206829852314 
		6 66.672206829852314 10 66.672206829852314 14 66.672206829852314 18 66.672206829852314 
		20 66.672206829852314 23 66.672206829852314 35 66.672206829852314 45 27.911632519594587;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 0.37178659439086914 1 1 1 1 1 
		1 0.73501491546630859 1;
	setAttr -s 10 ".koy[0:9]"  0 -0.92831820249557495 0 0 0 0 
		0 0 -0.6780509352684021 0;
createNode animCurveTA -n "animCurveTA2249";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 35 0 45 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2250";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 35 0 45 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2251";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 35 0 45 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2252";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 -1.3600558986621039 6 -0.16135188088572175 
		10 0.17531458053368568 20 -0.96615235111188802 23 -1.7222213883462014 37 
		-0.65073001024951671;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 3;
	setAttr -s 7 ".kox[0:6]"  1 0.99990087747573853 0.99346977472305298 
		0.99954730272293091 0.99709218740463257 0.99995279312133789 1;
	setAttr -s 7 ".koy[0:6]"  0 -0.014079212211072445 0.11409547924995422 
		-0.030085843056440353 -0.076204493641853333 0.0097145270556211472 0;
createNode animCurveTA -n "animCurveTA2253";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 -1.7348136322083922 6 -2.1983501567531918 
		10 -2.1972812590348823 20 -2.0209018830060801 23 -1.4323683570519787 37 -4.2368721935960938;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 3;
	setAttr -s 7 ".kox[0:6]"  1 0.98209112882614136 0.99940222501754761 
		0.99997800588607788 0.99952578544616699 0.99767893552780151 1;
	setAttr -s 7 ".koy[0:6]"  0 -0.1884065568447113 -0.034571819007396698 
		0.0066364039666950703 0.030793655663728714 -0.06809331476688385 0;
createNode animCurveTA -n "animCurveTA2254";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 7.1280947740371978 3 18.025996084384893 
		6 -15.880312516295612 10 -24.642075184185245 20 2.9642347691857585 23 27.667160626694486 
		37 2.6995264082587447;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 3;
	setAttr -s 7 ".kox[0:6]"  1 0.44581100344657898 0.29899296164512634 
		0.81739044189453125 0.42879307270050049 0.99996674060821533 1;
	setAttr -s 7 ".koy[0:6]"  0 -0.89512711763381958 -0.95425528287887573 
		0.57608407735824585 0.90340274572372437 -0.0081527279689908028 0;
createNode animCurveTA -n "animCurveTA2255";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 -0.33189533623938133 
		14 0 20 0 25 0 36 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 0.99969196319580078 1 0.99984902143478394 
		1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 -0.024818066507577896 0 0.01737537607550621 
		0 0 0;
createNode animCurveTA -n "animCurveTA2256";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 -1.1735662387112367 
		14 0 20 0 25 0 36 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 0.99616920948028564 1 0.99811738729476929 
		1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 -0.087446272373199463 0 0.061332102864980698 
		0 0 0;
createNode animCurveTA -n "animCurveTA2257";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 14.508952910281577 6 14.508952910281577 
		10 15.356381606004456 14 14.508952910281577 20 1.3591123210895373 22 -20.269558753487079 
		25 32.826078405640018 30 68.721349296732328 36 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		1 9 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		1 9 3;
	setAttr -s 10 ".kix[7:9]"  0.23107355833053589 0.53904938697814941 
		1;
	setAttr -s 10 ".kiy[7:9]"  0.97293627262115479 -0.84227418899536133 
		0;
	setAttr -s 10 ".kox[0:9]"  1 0.61980152130126953 0.99799704551696777 
		1 0.80657345056533813 0.40221649408340454 0.29039320349693298 0.23107351362705231 
		0.53904938697814941 1;
	setAttr -s 10 ".koy[0:9]"  0 0.78475862741470337 0.063260555267333984 
		0 -0.59113389253616333 -0.91554456949234009 0.95690739154815674 0.97293627262115479 
		-0.84227418899536133 0;
createNode animCurveTA -n "animCurveTA2258";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0.6205628187730865 6 3.5615739804694475 
		10 1.2859540278637445 14 0.56168829250648056 18 3.6375267832064915 20 2.2239744454617516 
		23 2.2239744454617516 31 4.747822869067849 37 -4.0198472869727979;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 0.95493936538696289 0.99876374006271362 
		0.98126488924026489 0.98836219310760498 0.98964172601699829 0.98922085762023926 
		0.99286097288131714 0.97380131483078003 1;
	setAttr -s 10 ".koy[0:9]"  0 0.2968008816242218 0.049709614366292953 
		-0.19266356527805328 0.15211890637874603 0.14355924725532532 -0.14643125236034393 
		0.11927726119756699 -0.2274005115032196 0;
createNode animCurveTA -n "animCurveTA2259";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 6.1534707642816313 6 5.0593482146838156 
		10 6.0499001423546632 14 6.1591023145083348 18 5.005087459058303 20 5.8970685922674964 
		23 5.8970685922674964 31 4.1882713219045913 37 -9.1335573833666519;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 0.91480457782745361 0.99997001886367798 
		0.99741953611373901 0.99767005443572998 0.99973863363265991 0.9956657886505127 
		0.99670833349227905 0.87170809507369995 1;
	setAttr -s 10 ".koy[0:9]"  0 0.40389668941497803 -0.0077468319796025753 
		0.071793004870414734 -0.0682234987616539 -0.022860780358314514 0.093003198504447937 
		-0.081070825457572937 -0.49002555012702942 0;
createNode animCurveTA -n "animCurveTA2260";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -18.722937869975638 3 -32.810404800085166 
		6 -3.3664805278333754 10 -26.556600069591706 14 -33.359394152338098 18 -2.5006014476938456 
		20 -17.691452850314786 23 -17.691452850314786 31 10.187734121095215 37 -2.2752136084709531;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 0.59805464744567871 0.90579509735107422 
		0.45391318202018738 0.53613877296447754 0.59033578634262085 0.53220194578170776 
		0.6018146276473999 0.86631947755813599 1;
	setAttr -s 10 ".koy[0:9]"  0 0.80145531892776489 0.42371600866317749 
		-0.89104592800140381 0.84412986040115356 0.80715775489807129 -0.84661746025085449 
		0.79863578081130981 0.49949032068252563 0;
createNode animCurveTA -n "animCurveTA2261";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 -0.70293507907658626 6 -0.70293507907658626 
		10 -0.83690971216531951 20 -1.0060464437170478 23 -0.26862115475572979 37 
		-1.8903601258661935;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 3;
	setAttr -s 7 ".kox[0:6]"  1 0.99812382459640503 0.99994981288909912 
		0.99993574619293213 0.99973815679550171 0.99962925910949707 1;
	setAttr -s 7 ".koy[0:6]"  0 -0.061227567493915558 -0.010020776651799679 
		-0.011335610412061214 0.022882867604494095 -0.027226701378822327 0;
createNode animCurveTA -n "animCurveTA2262";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 1.2717523854678625 6 1.2717523854678625 
		10 1.187886020951028 20 1.0909109433137727 23 1.4594355426723329 37 2.5597289571479038;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 3;
	setAttr -s 7 ".kox[0:6]"  1 0.99389785528182983 0.99998033046722412 
		0.99997711181640625 0.99994021654129028 0.99897825717926025 1;
	setAttr -s 7 ".koy[0:6]"  0 0.11030410975217819 -0.006273066159337759 
		-0.0067632994614541531 0.010936499573290348 0.045193266123533249 0;
createNode animCurveTA -n "animCurveTA2263";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 10.789123571196804 6 10.789123571196804 
		10 4.553091335708821 20 -3.3284025074410919 23 28.928530085622626 37 2.0168110874036049;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 3;
	setAttr -s 7 ".kox[0:6]"  1 0.72807198762893677 0.90625691413879395 
		0.88430571556091309 0.71358281373977661 0.98671752214431763 1;
	setAttr -s 7 ".koy[0:6]"  0 0.68550068140029907 -0.42272728681564331 
		-0.46690836548805237 0.70057088136672974 0.16244547069072723 0;
createNode animCurveTA -n "animCurveTA2264";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 35 0 45 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2265";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 35 0 45 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2266";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 85.281921116584812 3 61.824373247854581 
		6 61.824373247854581 10 61.824373247854581 14 61.824373247854581 18 61.824373247854581 
		20 61.824373247854581 23 61.824373247854581 35 61.824373247854581 45 33.429092416277157;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 0.43893253803253174 1 1 1 1 1 
		1 0.82853883504867554 1;
	setAttr -s 10 ".koy[0:9]"  0 -0.89851999282836914 0 0 0 0 
		0 0 -0.55993157625198364 0;
createNode animCurveTA -n "animCurveTA2267";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -122.90211145181451 3 -122.90211145181451 
		6 -122.90211145181451 10 -122.90211145181451 14 -122.90211145181451 18 -122.90211145181451 
		20 -122.90211145181451 23 -122.90211145181451 35 -122.90211145181451 45 8.2533422302317234;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 0.30508631467819214 
		1;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0.95232468843460083 
		0;
createNode animCurveTA -n "animCurveTA2268";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 38.578337509358107 3 38.578337509358107 
		6 38.578337509358107 10 38.578337509358107 14 38.578337509358107 18 38.578337509358107 
		20 38.578337509358107 23 38.578337509358107 35 38.578337509358107 45 23.263402056531085;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 0.93953418731689453 
		1;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 -0.34245514869689941 
		0;
createNode animCurveTA -n "animCurveTA2269";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 45.467643381850571 3 45.467643381850564 
		6 45.467643381850564 10 45.467643381850564 14 45.467643381850564 18 45.467643381850564 
		20 45.467643381850564 23 45.467643381850564 35 45.467643381850564 45 20.166277752815617;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 0.85667127370834351 
		1;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 -0.51586270332336426 
		0;
createNode animCurveTA -n "animCurveTA2270";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 35 0 45 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2271";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 35 0 45 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2272";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 77.470348806333035 3 50.17101925731437 
		6 50.17101925731437 10 50.17101925731437 14 50.17101925731437 18 50.17101925731437 
		20 50.17101925731437 23 50.17101925731437 35 50.17101925731437 45 17.254116939558369;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  1 0.38704407215118408 1 1 1 1 1 
		1 0.78719478845596313 1;
	setAttr -s 10 ".koy[0:9]"  0 -0.92206120491027832 0 0 0 0 
		0 0 -0.61670446395874023 0;
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
	setAttr ".o" 38;
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
	setAttr -s 102 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".top" 479;
	setAttr ".rght" 639;
	setAttr ".fs" 1;
	setAttr ".ef" 10;
select -ne :defaultRenderQuality;
	setAttr ".eaa" 1;
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
connectAttr "lsa_jump_dash_allSource.st" "clipLibrary1.st[0]";
connectAttr "lsa_jump_dash_allSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL756.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL757.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL759.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA2154.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU153.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU154.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU155.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU156.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "lsa_Hoop_Root_IK_FK_RArm.a" "clipLibrary1.cel[0].cev[10].cevr"
		;
connectAttr "lsa_Hoop_Root_IK_FK_LArm.a" "clipLibrary1.cel[0].cev[11].cevr"
		;
connectAttr "animCurveTU159.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU160.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA2155.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA2156.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA2157.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL761.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL762.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL763.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL764.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL765.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL766.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA2158.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA2159.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA2160.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL767.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL768.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL769.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA2161.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA2162.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA2163.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA2164.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA2165.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA2166.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA2167.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA2168.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA2169.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA2170.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA2171.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA2172.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA2173.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA2174.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA2175.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL770.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL771.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL772.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL773.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL774.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL775.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL776.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL777.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL778.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA2176.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA2177.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA2178.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA2179.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA2180.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA2181.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA2182.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA2183.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA2184.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA2185.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA2186.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA2187.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA2188.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA2189.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA2190.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA2191.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA2192.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA2193.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA2194.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA2195.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA2196.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA2197.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA2198.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA2199.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA2200.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA2201.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA2202.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA2203.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA2204.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "lsa_Right_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[82].cevr"
		;
connectAttr "lsa_Right_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[83].cevr"
		;
connectAttr "lsa_Right_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[84].cevr"
		;
connectAttr "animCurveTA2205.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA2206.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA2207.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "lsa_Left_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[88].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[89].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[90].cevr"
		;
connectAttr "animCurveTA2208.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA2209.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA2210.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL779.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL780.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL781.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA2211.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA2212.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA2213.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL782.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL783.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL784.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA2214.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA2215.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA2216.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL785.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL786.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL787.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL788.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL789.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL790.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA2217.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA2218.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA2219.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA2220.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA2221.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA2222.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA2223.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA2224.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA2225.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA2226.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA2227.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA2228.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA2229.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA2230.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA2231.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA2232.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA2233.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA2234.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA2235.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA2236.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA2237.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA2238.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA2239.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA2240.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA2241.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA2242.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA2243.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA2244.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA2245.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA2246.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA2247.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA2248.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA2249.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA2250.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA2251.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA2252.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA2253.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA2254.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA2255.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA2256.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA2257.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA2258.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA2259.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA2260.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA2261.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA2262.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA2263.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA2264.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA2265.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA2266.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA2267.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA2268.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA2269.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA2270.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA2271.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA2272.a" "clipLibrary1.cel[0].cev[167].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[3].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[4].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[5].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[5].olnk";
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
// End of lsa_jump_dash_all.ma
