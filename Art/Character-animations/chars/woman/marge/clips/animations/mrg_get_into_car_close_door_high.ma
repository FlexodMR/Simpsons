//Maya ASCII 4.0 scene
//Name: mrg_get_into_car_close_door_high.ma
//Last modified: Tue, Oct 01, 2002 05:15:14 PM
requires maya "4.0";
requires "p3dmayaexp" "18.5";
requires "p3dDeformer" "18.3";
requires "p3dSimpleShader" "18.5";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mrg_get_into_car_close_door_highSource";
	setAttr ".ihi" 0;
	setAttr ".du" 12;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL288";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTL -n "animCurveTL289";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1.0931321889110071 1 1.076656865506485 
		2 1.0218956915813222 3 0.95294589914582528 4 0.89390472021030198 5 0.86886938678505921 
		6 0.8773691428313275 7 0.90025310152603411 8 0.93359829870303246 9 0.97348177019617599 
		10 1.0159805518393172 11 1.05717167946631 12 1.0931321889110071;
createNode animCurveTL -n "Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.50990367929941149 1 0.50773109543553563 
		2 0.50924061365088025 3 0.51259433494638773 4 0.51595436032300113 5 0.5174827907816627 
		6 0.51719553583345634 7 0.51642215712461759 8 0.51529523385881737 9 0.51394734523972585 
		10 0.51251107047101396 11 0.51111898875635231 12 0.50990367929941149;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0;
createNode animCurveTU -n "animCurveTU57";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTU -n "animCurveTU58";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTU -n "animCurveTU59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTU -n "animCurveTU60";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTU -n "animCurveTU61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTU -n "animCurveTU62";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTU -n "animCurveTU63";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 1;
createNode animCurveTU -n "animCurveTU64";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 1;
createNode animCurveTA -n "animCurveTA838";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA839";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA840";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTL -n "animCurveTL293";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTL -n "animCurveTL294";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTL -n "animCurveTL295";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTL -n "animCurveTL296";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.1468862801970878 5 1.1574067408122657 
		12 1.1468862801970878;
createNode animCurveTL -n "animCurveTL297";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.2464696855624631 5 1.2638806898773334 
		12 1.2464696855624631;
createNode animCurveTL -n "animCurveTL298";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.3883743416871892 5 1.430750031861709 
		12 1.3883743416871892;
createNode animCurveTA -n "animCurveTA841";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -36.819011955683756 5 0 12 -36.819011955683756;
createNode animCurveTA -n "animCurveTA842";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA843";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTL -n "animCurveTL299";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.4496212507996262 5 1.4639815613644618 
		12 1.4496212507996262;
createNode animCurveTL -n "animCurveTL300";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.2279490663618713 5 1.3102926386178941 
		12 1.2279490663618713;
createNode animCurveTL -n "animCurveTL301";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.4274355819015074 5 1.4192359250534907 
		12 1.4274355819015074;
createNode animCurveTA -n "animCurveTA844";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -24.204848230542304 5 -6.5046911724775329 
		12 -24.204848230542304;
createNode animCurveTA -n "animCurveTA845";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 3.3090781707350478 12 0;
createNode animCurveTA -n "animCurveTA846";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 4.2722871456273142 12 0;
createNode animCurveTA -n "animCurveTA847";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA848";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA849";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA850";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA851";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA852";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA853";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA854";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA855";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA856";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA857";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA858";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTL -n "animCurveTL302";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0.034660776702225261 12 0;
createNode animCurveTL -n "animCurveTL303";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0.43236842264083392 12 0;
createNode animCurveTL -n "animCurveTL304";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 5 1.022596790343715 12 1;
createNode animCurveTL -n "animCurveTL305";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTL -n "animCurveTL306";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTL -n "animCurveTL307";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 5 1 12 1;
createNode animCurveTL -n "animCurveTL308";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.3318677670487873 5 1.0586268904836689 
		12 1.3318677670487873;
createNode animCurveTL -n "animCurveTL309";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.4718651042148105 5 1.4015676832698238 
		12 1.4718651042148105;
createNode animCurveTL -n "animCurveTL310";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.62126454755213167 5 0.63049890583787194 
		12 0.62126454755213167;
createNode animCurveTA -n "animCurveTA859";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -47.088616656908457 5 -23.365719603278006 
		12 -47.088616656908457;
createNode animCurveTA -n "animCurveTA860";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.0975263990809512 5 6.005028934714626 
		12 -2.0975263990809512;
createNode animCurveTA -n "animCurveTA861";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.53932213336905677 5 28.290632722821218 
		12 0.53932213336905677;
createNode animCurveTA -n "animCurveTA862";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA863";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA864";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA865";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA866";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA867";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA868";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA869";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA870";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA871";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA872";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA873";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA874";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA875";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA876";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA877";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA878";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA879";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA880";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA881";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA882";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA883";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA884";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA885";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA886";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA887";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTL -n "animCurveTL311";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 -0.43524234076486068;
createNode animCurveTL -n "animCurveTL312";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL313";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0.27773886459742925;
createNode animCurveTA -n "animCurveTA888";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA889";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 28.652637602052774;
createNode animCurveTA -n "animCurveTA890";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 64.676908227303443;
createNode animCurveTL -n "animCurveTL314";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0.5198069948790518;
createNode animCurveTL -n "animCurveTL315";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL316";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0.36439499068905612;
createNode animCurveTA -n "animCurveTA891";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 7.7976222737965317;
createNode animCurveTA -n "animCurveTA892";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 -30.409274105849079;
createNode animCurveTA -n "animCurveTA893";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 -64.859940280210893;
createNode animCurveTL -n "animCurveTL317";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.1478091564096489 5 0.5099299555228195 
		12 2.1478091564096489;
createNode animCurveTL -n "animCurveTL318";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 3.2428528854844094 5 3.4486860791485805 
		12 3.2428528854844094;
createNode animCurveTL -n "animCurveTL319";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.2087400184371315 5 1.7273544412033031 
		12 1.2087400184371315;
createNode animCurveTA -n "animCurveTA894";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 59.007910131897077 5 -32.318402203478271 
		12 59.007910131897077;
createNode animCurveTA -n "animCurveTA895";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 71.601588453715053 5 22.509929029446681 
		12 71.601588453715053;
createNode animCurveTA -n "animCurveTA896";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 90.779043014820601 5 -30.298008427764341 
		12 90.779043014820601;
createNode animCurveTL -n "animCurveTL320";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 3.3854287601577617 5 2.4682734494582483 
		12 3.3854287601577617;
createNode animCurveTL -n "animCurveTL321";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 3.2951827277525036 5 3.3179787446213234 
		12 3.2951827277525036;
createNode animCurveTL -n "animCurveTL322";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.1357561097544726 5 0.94272374486668986 
		12 1.1357561097544726;
createNode animCurveTA -n "animCurveTA897";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 26.279373069154861 5 0.48624313243752088 
		12 26.279373069154861;
createNode animCurveTA -n "animCurveTA898";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -55.316964386970028 5 -23.744418226598494 
		12 -55.316964386970028;
createNode animCurveTA -n "animCurveTA899";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -77.201572122121547 5 -2.4702772298422251 
		12 -77.201572122121547;
createNode animCurveTL -n "animCurveTL323";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.22996541113775407 5 0.37736680843384973 
		12 0.22996541113775407;
createNode animCurveTL -n "animCurveTL324";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.71572892866406468 5 -0.54343311259648019 
		12 -0.71572892866406468;
createNode animCurveTL -n "animCurveTL325";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.86045149817799893 5 -0.97043124551903082 
		12 -0.86045149817799893;
createNode animCurveTL -n "animCurveTL326";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.017571725225418895 5 -0.31054502397108613 
		12 -0.017571725225418895;
createNode animCurveTL -n "animCurveTL327";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.54560785950824164 5 -0.55640530640609931 
		12 -0.54560785950824164;
createNode animCurveTL -n "animCurveTL328";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.64724218630287966 5 -0.57914122395678103 
		12 -0.64724218630287966;
createNode animCurveTA -n "animCurveTA900";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 12.253734489678925 5 12.253734489678925 
		12 12.253734489678925;
createNode animCurveTA -n "animCurveTA901";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -65.746751280844975 5 -65.746751280844961 
		12 -65.746751280844975;
createNode animCurveTA -n "animCurveTA902";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA903";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.061808866237340665 5 -0.061808866237337522 
		12 -0.061808866237340665;
createNode animCurveTA -n "animCurveTA904";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -59.058178941076754 5 -59.058178941076754 
		12 -59.058178941076754;
createNode animCurveTA -n "animCurveTA905";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 16.57914742975785 5 16.579147429757843 
		12 16.57914742975785;
createNode animCurveTA -n "animCurveTA906";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.5572674112203639 5 8.5572674112203622 
		12 8.5572674112203639;
createNode animCurveTA -n "animCurveTA907";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 15.711328223519061 5 15.711328223519057 
		12 15.711328223519061;
createNode animCurveTA -n "animCurveTA908";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA909";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA910";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA911";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA912";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA913";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA914";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 10.423754966968488 5 10.423754966968488 
		12 10.423754966968488;
createNode animCurveTA -n "animCurveTA915";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.7228482558439 5 27.722848255843903 
		12 27.7228482558439;
createNode animCurveTA -n "animCurveTA916";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 21.576484776388224 5 21.576484776388227 
		12 21.576484776388224;
createNode animCurveTA -n "animCurveTA917";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA918";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA919";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.080064458283051 5 27.080064458283051 
		12 27.080064458283051;
createNode animCurveTA -n "animCurveTA920";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA921";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA922";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA923";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA924";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA925";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 13.994403295754109;
createNode animCurveTA -n "animCurveTA926";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA927";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA928";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 13.994403295754109;
createNode animCurveTA -n "animCurveTA929";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA930";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA931";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.911632519594587 5 27.911632519594587 
		12 27.911632519594587;
createNode animCurveTA -n "animCurveTA932";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA933";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA934";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA935";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.3937906322123035 5 11.37102964548717 
		12 2.3937906322123035;
createNode animCurveTA -n "animCurveTA936";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.7843868968348546 5 -0.57536973090558297 
		12 -1.7843868968348546;
createNode animCurveTA -n "animCurveTA937";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.23227595374661 5 21.192869117571593 
		12 13.23227595374661;
createNode animCurveTA -n "animCurveTA938";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 -20.076803070551748 12 0;
createNode animCurveTA -n "animCurveTA939";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA940";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA941";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.71032600031388182 2 9.1363047254819136 
		5 -14.440340165075353 8 -22.800539567792701 12 0.71032600031388182;
createNode animCurveTA -n "animCurveTA942";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 3.6938159239902002 2 54.690812545837638 
		5 64.623568825737593 8 57.214949884604614 12 3.6938159239902002;
createNode animCurveTA -n "animCurveTA943";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 14.572231982957494 2 4.0120210850120399 
		5 -48.473970196825235 8 -35.308394988407393 12 14.572231982957494;
createNode animCurveTA -n "animCurveTA944";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.2796212519697261 5 -11.266439246406184 
		12 -2.2796212519697261;
createNode animCurveTA -n "animCurveTA945";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.2209313171847884 5 8.2514393232251884 
		12 2.2209313171847884;
createNode animCurveTA -n "animCurveTA946";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.0401232256568225 5 4.6912887305040609 
		12 8.0401232256568225;
createNode animCurveTA -n "animCurveTA947";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA948";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA949";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 33.429092416277157 5 33.429092416277157 
		12 33.429092416277157;
createNode animCurveTA -n "animCurveTA950";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.2533422302317216 5 8.2533422302317216 
		12 8.2533422302317216;
createNode animCurveTA -n "animCurveTA951";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 23.263402056531085 5 23.263402056531085 
		12 23.263402056531085;
createNode animCurveTA -n "animCurveTA952";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 20.166277752815617 5 20.166277752815617 
		12 20.166277752815617;
createNode animCurveTA -n "animCurveTA953";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA954";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA955";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 17.254116939558369 5 17.254116939558369 
		12 17.254116939558369;
createNode animCurveTA -n "animCurveTA956";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 12 0;
createNode animCurveTA -n "animCurveTA957";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 12 0;
createNode animCurveTA -n "animCurveTA958";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 10.472974637232472 12 0;
createNode animCurveTA -n "animCurveTA959";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 12 0;
createNode animCurveTA -n "animCurveTA960";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 12 0;
createNode animCurveTA -n "animCurveTA961";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 10.472974637232472 12 0;
createNode animCurveTA -n "animCurveTA962";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 12 0;
createNode animCurveTA -n "animCurveTA963";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 12 0;
createNode animCurveTA -n "animCurveTA964";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 10.472974637232472 12 0;
createNode clipLibrary -n "clipLibrary1";
	setAttr -s 177 ".cel[0].cev";
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
	setAttr -s 177 ".lnk";
select -ne :time1;
	setAttr ".o" 12;
select -ne :renderPartition;
	setAttr -s 177 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 177 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 91 ".u";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 91 ".tx";
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
	setAttr -s 2712 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".top" 478;
	setAttr ".rght" 638;
	setAttr ".fs" 1;
	setAttr ".ef" 10;
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
connectAttr "mrg_get_into_car_close_door_highSource.st" "clipLibrary1.st[0]"
		;
connectAttr "mrg_get_into_car_close_door_highSource.du" "clipLibrary1.du[0]"
		;
connectAttr "animCurveTL288.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL289.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU57.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU58.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU59.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU60.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU61.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU62.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU63.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU64.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA838.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA839.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA840.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL293.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL294.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL295.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL296.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL297.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL298.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA841.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA842.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA843.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL299.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL300.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL301.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA844.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA845.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA846.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA847.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA848.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA849.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA850.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA851.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA852.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA853.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA854.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA855.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA856.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA857.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA858.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL302.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL303.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL304.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL305.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL306.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL307.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL308.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL309.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL310.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA859.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA860.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA861.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA862.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA863.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA864.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA865.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA866.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA867.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA868.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA869.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA870.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA871.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA872.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA873.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA874.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA875.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA876.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA877.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA878.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA879.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA880.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA881.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA882.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA883.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA884.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA885.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA886.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA887.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL311.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL312.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL313.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA888.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA889.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA890.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL314.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL315.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL316.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA891.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA892.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA893.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL317.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL318.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL319.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA894.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA895.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA896.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL320.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL321.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL322.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA897.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA898.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA899.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL323.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL324.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL325.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL326.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL327.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL328.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA900.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA901.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA902.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA903.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA904.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA905.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA906.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA907.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA908.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA909.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA910.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA911.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA912.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA913.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA914.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA915.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA916.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA917.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA918.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA919.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA920.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA921.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA922.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA923.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA924.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA925.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA926.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA927.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA928.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA929.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA930.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA931.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA932.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA933.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA934.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA935.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA936.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA937.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA938.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA939.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA940.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA941.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA942.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA943.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA944.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA945.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA946.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA947.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA948.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA949.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA950.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA951.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA952.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA953.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA954.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA955.a" "clipLibrary1.cel[0].cev[167].cevr";
connectAttr "animCurveTA956.a" "clipLibrary1.cel[0].cev[168].cevr";
connectAttr "animCurveTA957.a" "clipLibrary1.cel[0].cev[169].cevr";
connectAttr "animCurveTA958.a" "clipLibrary1.cel[0].cev[170].cevr";
connectAttr "animCurveTA959.a" "clipLibrary1.cel[0].cev[171].cevr";
connectAttr "animCurveTA960.a" "clipLibrary1.cel[0].cev[172].cevr";
connectAttr "animCurveTA961.a" "clipLibrary1.cel[0].cev[173].cevr";
connectAttr "animCurveTA962.a" "clipLibrary1.cel[0].cev[174].cevr";
connectAttr "animCurveTA963.a" "clipLibrary1.cel[0].cev[175].cevr";
connectAttr "animCurveTA964.a" "clipLibrary1.cel[0].cev[176].cevr";
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
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[38].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[39].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[40].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[41].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[42].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[43].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[44].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[45].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[46].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[47].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[48].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[49].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[50].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[51].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[52].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[53].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[54].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[55].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[56].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[57].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[58].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[59].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[60].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[61].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[62].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[63].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[64].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[65].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[66].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[67].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[68].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[69].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[70].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[71].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[72].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[73].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[74].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[75].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[76].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[77].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[78].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[79].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[80].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[81].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[82].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[83].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[84].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[85].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[86].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[87].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[88].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[89].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[90].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[91].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[92].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[93].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[94].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[95].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[96].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[97].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[98].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[99].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[100].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[101].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[102].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[103].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[104].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[105].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[106].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[107].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[108].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[109].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[110].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[111].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[112].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[113].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[114].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[115].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[116].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[117].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[118].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[119].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[120].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[121].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[122].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[123].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[124].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[125].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[126].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[127].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[128].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[129].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[130].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[131].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[132].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[133].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[134].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[135].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[136].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[137].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[138].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[139].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[140].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[141].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[142].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[143].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[144].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[145].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[146].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[147].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[148].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[149].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[150].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[151].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[152].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[153].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[154].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[155].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[156].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[157].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[158].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[159].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[160].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[161].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[162].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[163].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[164].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[165].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[166].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[167].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[168].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[169].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[170].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[171].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[172].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[173].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[174].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[175].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[176].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[176].olnk";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of mrg_get_into_car_close_door_high.ma
