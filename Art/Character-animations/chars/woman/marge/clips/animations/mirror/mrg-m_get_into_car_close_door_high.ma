//Maya ASCII 4.0 scene
//Name: mrg-m_get_into_car_close_door_high.ma
//Last modified: Wed, Jul 31, 2002 05:07:36 PM
requires maya "4.0";
requires "p3dSimpleShader" "17.1";
requires "p3dmayaexp" "17.9.1.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mrg_get_into_car_close_door_high";
	setAttr ".ihi" 0;
	setAttr ".du" 12;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL329";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTL -n "animCurveTL330";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTL -n "animCurveTL331";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -1.0931321889110071 1 -1.076656865506485 
		2 -1.0218956915813222 3 -0.95294589914582528 4 -0.89390472021030198 5 -0.86886938678505921 
		6 -0.8773691428313275 7 -0.90025310152603411 8 -0.93359829870303246 9 -0.97348177019617599 
		10 -1.0159805518393172 11 -1.05717167946631 12 -1.0931321889110071;
createNode animCurveTL -n "animCurveTL332";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0;
createNode animCurveTL -n "animCurveTL333";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.50990367929941149 1 0.50773109543553563 
		2 0.50924061365088025 3 0.51259433494638773 4 0.51595436032300113 5 0.5174827907816627 
		6 0.51719553583345634 7 0.51642215712461759 8 0.51529523385881737 9 0.51394734523972585 
		10 0.51251107047101396 11 0.51111898875635231 12 0.50990367929941149;
createNode animCurveTA -n "animCurveTA965";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0;
createNode animCurveTU -n "animCurveTU65";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTU -n "animCurveTU66";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTU -n "animCurveTU67";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTU -n "animCurveTU68";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTU -n "animCurveTU69";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTU -n "animCurveTU70";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTU -n "animCurveTU71";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 12 1;
createNode animCurveTU -n "animCurveTU72";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 12 1;
createNode animCurveTA -n "animCurveTA966";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA967";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA968";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTL -n "animCurveTL334";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTL -n "animCurveTL335";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTL -n "animCurveTL336";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTL -n "animCurveTL337";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.4496212507996262 5 -1.4639815613644618 
		12 -1.4496212507996262;
createNode animCurveTL -n "animCurveTL338";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.2279490663618713 5 1.3102926386178941 
		12 1.2279490663618713;
createNode animCurveTL -n "animCurveTL339";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.4274355819015074 5 1.4192359250534907 
		12 1.4274355819015074;
createNode animCurveTA -n "animCurveTA969";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -24.204848230542304 5 -6.5046911724775329 
		12 -24.204848230542304;
createNode animCurveTA -n "animCurveTA970";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 -3.3090781707350478 12 0;
createNode animCurveTA -n "animCurveTA971";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 -4.2722871456273142 12 0;
createNode animCurveTL -n "animCurveTL340";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.1468862801970878 5 -1.1574067408122657 
		12 -1.1468862801970878;
createNode animCurveTL -n "animCurveTL341";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.2464696855624631 5 1.2638806898773334 
		12 1.2464696855624631;
createNode animCurveTL -n "animCurveTL342";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.3883743416871892 5 1.430750031861709 
		12 1.3883743416871892;
createNode animCurveTA -n "animCurveTA972";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -36.819011955683756 5 0 12 -36.819011955683756;
createNode animCurveTA -n "animCurveTA973";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA974";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA975";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA976";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA977";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA978";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA979";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA980";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA981";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA982";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA983";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA984";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA985";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA986";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTL -n "animCurveTL343";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTL -n "animCurveTL344";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTL -n "animCurveTL345";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 5 1 12 1;
createNode animCurveTL -n "animCurveTL346";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 -0.034660776702225261 12 
		0;
createNode animCurveTL -n "animCurveTL347";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0.43236842264083392 12 0;
createNode animCurveTL -n "animCurveTL348";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 5 1.022596790343715 12 1;
createNode animCurveTL -n "animCurveTL349";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.3318677670487873 5 -1.0586268904836689 
		12 -1.3318677670487873;
createNode animCurveTL -n "animCurveTL350";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.4718651042148105 5 1.4015676832698238 
		12 1.4718651042148105;
createNode animCurveTL -n "animCurveTL351";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.62126454755213167 5 0.63049890583787194 
		12 0.62126454755213167;
createNode animCurveTA -n "animCurveTA987";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -47.088616656908457 5 -23.365719603278006 
		12 -47.088616656908457;
createNode animCurveTA -n "animCurveTA988";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.0975263990809512 5 -6.005028934714626 
		12 2.0975263990809512;
createNode animCurveTA -n "animCurveTA989";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.53932213336905677 5 -28.290632722821218 
		12 -0.53932213336905677;
createNode animCurveTA -n "animCurveTA990";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA991";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA992";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA993";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA994";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA995";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA996";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA997";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA998";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA999";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA1000";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA1001";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA1002";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA1003";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA1004";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA1005";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA1006";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA1007";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA1008";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA1009";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA1010";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA1011";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA1012";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA1013";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA1014";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA1015";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTL -n "animCurveTL352";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.5198069948790518 12 -0.5198069948790518;
createNode animCurveTL -n "animCurveTL353";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.72394202659893114 12 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL354";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.36439499068905612 12 0.36439499068905612;
createNode animCurveTA -n "animCurveTA1016";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.7976222737965317 12 7.7976222737965317;
createNode animCurveTA -n "animCurveTA1017";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 30.409274105849079 12 30.409274105849079;
createNode animCurveTA -n "animCurveTA1018";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 64.859940280210893 12 64.859940280210893;
createNode animCurveTL -n "animCurveTL355";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.43524234076486068 12 0.43524234076486068;
createNode animCurveTL -n "animCurveTL356";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.82665738350180629 12 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL357";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.27773886459742925 12 0.27773886459742925;
createNode animCurveTA -n "animCurveTA1019";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA1020";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -28.652637602052774 12 -28.652637602052774;
createNode animCurveTA -n "animCurveTA1021";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -64.676908227303443 12 -64.676908227303443;
createNode animCurveTL -n "animCurveTL358";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -3.3854287601577617 5 -2.4682734494582483 
		12 -3.3854287601577617;
createNode animCurveTL -n "animCurveTL359";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 3.2951827277525036 5 3.3179787446213234 
		12 3.2951827277525036;
createNode animCurveTL -n "animCurveTL360";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.1357561097544726 5 0.94272374486668986 
		12 1.1357561097544726;
createNode animCurveTA -n "animCurveTA1022";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 26.279373069154861 5 0.48624313243752088 
		12 26.279373069154861;
createNode animCurveTA -n "animCurveTA1023";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 55.316964386970028 5 23.744418226598494 
		12 55.316964386970028;
createNode animCurveTA -n "animCurveTA1024";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 77.201572122121547 5 2.4702772298422251 
		12 77.201572122121547;
createNode animCurveTL -n "animCurveTL361";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.1478091564096489 5 -0.5099299555228195 
		12 -2.1478091564096489;
createNode animCurveTL -n "animCurveTL362";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 3.2428528854844094 5 3.4486860791485805 
		12 3.2428528854844094;
createNode animCurveTL -n "animCurveTL363";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.2087400184371315 5 1.7273544412033031 
		12 1.2087400184371315;
createNode animCurveTA -n "animCurveTA1025";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 59.007910131897077 5 -32.318402203478271 
		12 59.007910131897077;
createNode animCurveTA -n "animCurveTA1026";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -71.601588453715053 5 -22.509929029446681 
		12 -71.601588453715053;
createNode animCurveTA -n "animCurveTA1027";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -90.779043014820601 5 30.298008427764341 
		12 -90.779043014820601;
createNode animCurveTL -n "animCurveTL364";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.017571725225418895 5 0.31054502397108613 
		12 0.017571725225418895;
createNode animCurveTL -n "animCurveTL365";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.54560785950824164 5 -0.55640530640609931 
		12 -0.54560785950824164;
createNode animCurveTL -n "animCurveTL366";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.64724218630287966 5 -0.57914122395678103 
		12 -0.64724218630287966;
createNode animCurveTL -n "animCurveTL367";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.22996541113775407 5 -0.37736680843384973 
		12 -0.22996541113775407;
createNode animCurveTL -n "animCurveTL368";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.71572892866406468 5 -0.54343311259648019 
		12 -0.71572892866406468;
createNode animCurveTL -n "animCurveTL369";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.86045149817799893 5 -0.97043124551903082 
		12 -0.86045149817799893;
createNode animCurveTA -n "animCurveTA1028";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.061808866237340665 5 -0.061808866237337522 
		12 -0.061808866237340665;
createNode animCurveTA -n "animCurveTA1029";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -59.058178941076754 5 -59.058178941076754 
		12 -59.058178941076754;
createNode animCurveTA -n "animCurveTA1030";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 16.57914742975785 5 16.579147429757843 
		12 16.57914742975785;
createNode animCurveTA -n "animCurveTA1031";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 12.253734489678925 5 12.253734489678925 
		12 12.253734489678925;
createNode animCurveTA -n "animCurveTA1032";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -65.746751280844975 5 -65.746751280844961 
		12 -65.746751280844975;
createNode animCurveTA -n "animCurveTA1033";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA1034";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 15.711328223519061 5 15.711328223519057 
		12 15.711328223519061;
createNode animCurveTA -n "animCurveTA1035";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.5572674112203657 5 8.5572674112203622 
		12 8.5572674112203657;
createNode animCurveTA -n "animCurveTA1036";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA1037";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA1038";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA1039";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA1040";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA1041";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA1042";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.2533422302317216 5 8.2533422302317216 
		12 8.2533422302317216;
createNode animCurveTA -n "animCurveTA1043";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 23.263402056531085 5 23.263402056531085 
		12 23.263402056531085;
createNode animCurveTA -n "animCurveTA1044";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 20.166277752815617 5 20.166277752815617 
		12 20.166277752815617;
createNode animCurveTA -n "animCurveTA1045";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA1046";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA1047";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 33.429092416277157 5 33.429092416277157 
		12 33.429092416277157;
createNode animCurveTA -n "animCurveTA1048";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA1049";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA1050";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA1051";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA1052";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA1053";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 12 13.994403295754109;
createNode animCurveTA -n "animCurveTA1054";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA1055";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA1056";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 12 13.994403295754109;
createNode animCurveTA -n "animCurveTA1057";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA1058";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA1059";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 17.254116939558369 5 17.254116939558369 
		12 17.254116939558369;
createNode animCurveTA -n "animCurveTA1060";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA1061";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA1062";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA1063";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.3937906322123035 5 -11.37102964548717 
		12 -2.3937906322123035;
createNode animCurveTA -n "animCurveTA1064";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.7843868968348546 5 0.57536973090558297 
		12 1.7843868968348546;
createNode animCurveTA -n "animCurveTA1065";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.23227595374661 5 21.192869117571593 
		12 13.23227595374661;
createNode animCurveTA -n "animCurveTA1066";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 20.076803070551748 12 0;
createNode animCurveTA -n "animCurveTA1067";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA1068";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA1069";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.71032600031388182 2 -9.1363047254819136 
		5 14.440340165075353 8 22.800539567792701 12 -0.71032600031388182;
createNode animCurveTA -n "animCurveTA1070";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -3.6938159239902002 2 -54.690812545837638 
		5 -64.623568825737593 8 -57.214949884604614 12 -3.6938159239902002;
createNode animCurveTA -n "animCurveTA1071";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 14.572231982957494 2 4.0120210850120408 
		5 -48.473970196825235 8 -35.308394988407393 12 14.572231982957494;
createNode animCurveTA -n "animCurveTA1072";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.2796212519697261 5 11.266439246406184 
		12 2.2796212519697261;
createNode animCurveTA -n "animCurveTA1073";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.2209313171847884 5 -8.2514393232251884 
		12 -2.2209313171847884;
createNode animCurveTA -n "animCurveTA1074";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.0401232256568225 5 4.6912887305040609 
		12 8.0401232256568225;
createNode animCurveTA -n "animCurveTA1075";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA1076";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA1077";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.080064458283051 5 27.080064458283051 
		12 27.080064458283051;
createNode animCurveTA -n "animCurveTA1078";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 10.423754966968488 5 10.423754966968488 
		12 10.423754966968488;
createNode animCurveTA -n "animCurveTA1079";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.7228482558439 5 27.722848255843903 
		12 27.7228482558439;
createNode animCurveTA -n "animCurveTA1080";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 21.576484776388224 5 21.576484776388227 
		12 21.576484776388224;
createNode animCurveTA -n "animCurveTA1081";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA1082";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA1083";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.911632519594587 5 27.911632519594587 
		12 27.911632519594587;
createNode animCurveTA -n "animCurveTA1084";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 12 0;
createNode animCurveTA -n "animCurveTA1085";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 12 0;
createNode animCurveTA -n "animCurveTA1086";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 10.472974637232472 12 0;
createNode animCurveTA -n "animCurveTA1087";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 12 0;
createNode animCurveTA -n "animCurveTA1088";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 12 0;
createNode animCurveTA -n "animCurveTA1089";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 10.472974637232472 12 0;
createNode animCurveTA -n "animCurveTA1090";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 12 0;
createNode animCurveTA -n "animCurveTA1091";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 12 0;
createNode animCurveTA -n "animCurveTA1092";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 10.472974637232472 12 0;
createNode clipLibrary -n "clipLibrary2";
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
	setAttr -s 22 ".lnk";
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
	setAttr -s 3 ".sol";
connectAttr "mrg_get_into_car_close_door_high.st" "clipLibrary2.st[0]";
connectAttr "mrg_get_into_car_close_door_high.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL329.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL330.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "animCurveTL331.a" "clipLibrary2.cel[0].cev[2].cevr";
connectAttr "animCurveTL332.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "animCurveTL333.a" "clipLibrary2.cel[0].cev[4].cevr";
connectAttr "animCurveTA965.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "animCurveTU65.a" "clipLibrary2.cel[0].cev[6].cevr";
connectAttr "animCurveTU66.a" "clipLibrary2.cel[0].cev[7].cevr";
connectAttr "animCurveTU67.a" "clipLibrary2.cel[0].cev[8].cevr";
connectAttr "animCurveTU68.a" "clipLibrary2.cel[0].cev[9].cevr";
connectAttr "animCurveTU69.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU70.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU71.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU72.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA966.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA967.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA968.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL334.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL335.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL336.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL337.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL338.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL339.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA969.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA970.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA971.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL340.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL341.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL342.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA972.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA973.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA974.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA975.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA976.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA977.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA978.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA979.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA980.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTA981.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTA982.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTA983.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTA984.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTA985.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTA986.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL343.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL344.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL345.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTL346.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTL347.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTL348.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTL349.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTL350.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTL351.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA987.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA988.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA989.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA990.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA991.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA992.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA993.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA994.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA995.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA996.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA997.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA998.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA999.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA1000.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA1001.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA1002.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA1003.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA1004.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA1005.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA1006.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA1007.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA1008.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA1009.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTA1010.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTA1011.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTA1012.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA1013.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA1014.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA1015.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL352.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL353.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL354.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA1016.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA1017.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA1018.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL355.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL356.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL357.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA1019.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA1020.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA1021.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL358.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL359.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL360.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA1022.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA1023.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA1024.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL361.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL362.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL363.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTA1025.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTA1026.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTA1027.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTL364.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTL365.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTL366.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTL367.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTL368.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTL369.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA1028.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA1029.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA1030.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA1031.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA1032.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA1033.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA1034.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA1035.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA1036.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA1037.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA1038.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA1039.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA1040.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA1041.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA1042.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA1043.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA1044.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA1045.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA1046.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA1047.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA1048.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA1049.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA1050.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA1051.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA1052.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA1053.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA1054.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA1055.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA1056.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA1057.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA1058.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA1059.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA1060.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA1061.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA1062.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA1063.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA1064.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA1065.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA1066.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA1067.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA1068.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA1069.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA1070.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA1071.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA1072.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA1073.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA1074.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA1075.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA1076.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA1077.a" "clipLibrary2.cel[0].cev[161].cevr";
connectAttr "animCurveTA1078.a" "clipLibrary2.cel[0].cev[162].cevr";
connectAttr "animCurveTA1079.a" "clipLibrary2.cel[0].cev[163].cevr";
connectAttr "animCurveTA1080.a" "clipLibrary2.cel[0].cev[164].cevr";
connectAttr "animCurveTA1081.a" "clipLibrary2.cel[0].cev[165].cevr";
connectAttr "animCurveTA1082.a" "clipLibrary2.cel[0].cev[166].cevr";
connectAttr "animCurveTA1083.a" "clipLibrary2.cel[0].cev[167].cevr";
connectAttr "animCurveTA1084.a" "clipLibrary2.cel[0].cev[168].cevr";
connectAttr "animCurveTA1085.a" "clipLibrary2.cel[0].cev[169].cevr";
connectAttr "animCurveTA1086.a" "clipLibrary2.cel[0].cev[170].cevr";
connectAttr "animCurveTA1087.a" "clipLibrary2.cel[0].cev[171].cevr";
connectAttr "animCurveTA1088.a" "clipLibrary2.cel[0].cev[172].cevr";
connectAttr "animCurveTA1089.a" "clipLibrary2.cel[0].cev[173].cevr";
connectAttr "animCurveTA1090.a" "clipLibrary2.cel[0].cev[174].cevr";
connectAttr "animCurveTA1091.a" "clipLibrary2.cel[0].cev[175].cevr";
connectAttr "animCurveTA1092.a" "clipLibrary2.cel[0].cev[176].cevr";
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
// End of mrg-m_get_into_car_close_door_high.ma
