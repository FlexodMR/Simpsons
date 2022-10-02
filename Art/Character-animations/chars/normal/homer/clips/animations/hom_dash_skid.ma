//Maya ASCII 4.0 scene
//Name: hom_dash_skid.ma
//Last modified: Wed, Jul 17, 2002 05:31:31 PM
requires maya "4.0";
requires "p3dSimpleShader" "17.1";
requires "p3dmayaexp" "17.9.1.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "hom_dash_skidSource";
	setAttr ".ihi" 0;
	setAttr ".du" 27;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL434";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL435";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0.020522575400564586 1 0.020522575400564586 
		2 0.020522575400564586 3 0.020522575400564586 4 0.020522575400564586 5 0.020522575400564586 
		6 0.021033506662792637 7 0.022157555439694342 8 0.023281604216596048 9 0.023792535478824095 
		10 0.023077231711704824 11 0.020522575400564586 12 0.015322507818244117 13 
		0.0078063112135318127 14 -0.00093612046432451777 15 -0.0098148932660770492 
		16 -0.017740113242477998 17 -0.023621886444279538 18 -0.027792523261285135 
		19 -0.03137958584084357 20 -0.034486057870024983 21 -0.037214923035899516 
		22 -0.039669165025537301 23 -0.041951767526008495 24 -0.044165714224383222 
		25 -0.046413988807731614 26 -0.048799574963123843 27 -0.051425456377630012;
createNode animCurveTL -n "Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 4.4188476827208376 1 4.7631451355986352 
		2 5.1197434798604098 3 5.4701913854958297 4 5.7960375224945651 5 6.078830560846284 
		6 6.3261274905691396 7 6.5554992024204743 8 6.7635152174987505 9 6.9467450569024196 
		10 7.1017582417299456 11 7.225124293079781 12 7.3063636963192051 13 7.3461249323006585 
		14 7.3576695153503398 15 7.3542589597944517 16 7.3491547799591928 17 7.3556184901707677 
		18 7.3717074309472679 19 7.3867598741421778 20 7.4009587310848008 21 7.4144869131044349 
		22 7.4275273315303787 23 7.4402628976919312 24 7.4528765229183911 25 7.4655511185390573 
		26 7.4784695958832303 27 7.4918148662802047;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0;
createNode animCurveTU -n "animCurveTU89";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU90";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU91";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU92";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU93";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 11 1 17 0;
	setAttr -s 3 ".kit[1:2]"  3 9;
	setAttr -s 3 ".kot[2]"  9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.1961161345243454;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.98058068752288818;
	setAttr -s 3 ".kox[0:2]"  1 1 0.1961161345243454;
	setAttr -s 3 ".koy[0:2]"  0 0 -0.98058068752288818;
createNode animCurveTU -n "animCurveTU94";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 11 1 17 0;
	setAttr -s 3 ".kit[1:2]"  3 9;
	setAttr -s 3 ".kot[2]"  9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.1961161345243454;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.98058068752288818;
	setAttr -s 3 ".kox[0:2]"  1 1 0.1961161345243454;
	setAttr -s 3 ".koy[0:2]"  0 0 -0.98058068752288818;
createNode animCurveTU -n "animCurveTU95";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 17 1;
	setAttr -s 3 ".kit[1:2]"  3 9;
	setAttr -s 3 ".kot[2]"  9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.1961161345243454;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.98058068752288818;
	setAttr -s 3 ".kox[0:2]"  1 1 0.1961161345243454;
	setAttr -s 3 ".koy[0:2]"  0 0 0.98058068752288818;
createNode animCurveTU -n "animCurveTU96";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 17 1;
	setAttr -s 3 ".kit[1:2]"  3 9;
	setAttr -s 3 ".kot[2]"  9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.1961161345243454;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.98058068752288818;
	setAttr -s 3 ".kox[0:2]"  1 1 0.1961161345243454;
	setAttr -s 3 ".koy[0:2]"  0 0 0.98058068752288818;
createNode animCurveTA -n "animCurveTA1233";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1234";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1235";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL439";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL440";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL441";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL442";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.19763288944005308 5 -0.19763288944005308 
		11 -0.265 17 -0.26454016861507795 27 -0.26454016861507795;
	setAttr -s 5 ".kit[0:4]"  1 3 3 9 9;
	setAttr -s 5 ".kot[0:4]"  1 3 3 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 0.99630379676818848 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0.085899703204631805 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 0.99630379676818848 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0.085899703204631805 0;
createNode animCurveTL -n "animCurveTL443";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.36956228769602462 5 0.13800000000000001 
		11 0.13800000000000001 17 0.13806192026723146 27 0.13806192026723146;
	setAttr -s 5 ".kit[0:4]"  1 3 3 9 9;
	setAttr -s 5 ".kot[0:4]"  1 3 3 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 0.99993258714675903 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0.011609268374741077 0;
	setAttr -s 5 ".kox[0:4]"  0.012136206962168217 1 1 0.99993258714675903 
		1;
	setAttr -s 5 ".koy[0:4]"  -0.99992632865905762 0 0 0.011609268374741077 
		0;
createNode animCurveTL -n "animCurveTL444";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 6.1746560971741182 5 9.2250424584561994 
		11 11.076000000000002 17 11.075894561865759 27 11.075894561865759;
	setAttr -s 5 ".kit[2:4]"  3 9 9;
	setAttr -s 5 ".kot[2:4]"  3 9 9;
createNode animCurveTA -n "animCurveTA1236";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 68.750149689121017 5 0.59917317027913031 
		11 0.0028357814165884052 17 0 27 0;
	setAttr -s 5 ".kit[2:4]"  3 9 9;
	setAttr -s 5 ".kot[2:4]"  3 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99140387773513794 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 -0.13083696365356445 0 -9.2800728452857584e-005 
		0;
	setAttr -s 5 ".kox[0:4]"  0.21876128017902374 0.99140387773513794 
		1 1 1;
	setAttr -s 5 ".koy[0:4]"  -0.97577840089797974 -0.130837082862854 
		0 -9.2800728452857584e-005 0;
createNode animCurveTA -n "animCurveTA1237";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 -9.4308912150219033 11 -24.544498931403165 
		17 -25.948901905116401 27 -25.948901905116401;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.65026146173477173 0.81125181913375854 
		0.99894553422927856 1;
	setAttr -s 5 ".kiy[0:4]"  0 -0.75971049070358276 -0.58469688892364502 
		-0.045910518616437912 0;
	setAttr -s 5 ".kox[0:4]"  1 0.65026146173477173 0.81125181913375854 
		0.99894553422927856 1;
	setAttr -s 5 ".koy[0:4]"  0 -0.75971049070358276 -0.58469688892364502 
		-0.045910518616437912 0;
createNode animCurveTA -n "animCurveTA1238";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 27 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL445";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.19697756422115981 5 0.19697756422115981 
		11 0.21391660883027969 17 0.21594587158542247 27 0.21594587158542247;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.21156267821788788 0.20634004473686218 
		0.93463242053985596 1;
	setAttr -s 5 ".kiy[0:4]"  0 0.97736442089080811 0.97848033905029297 
		0.35561525821685791 0;
	setAttr -s 5 ".kox[0:4]"  1 0.21156267821788788 0.20634004473686218 
		0.93463242053985596 1;
	setAttr -s 5 ".koy[0:4]"  0 0.97736442089080811 0.97848033905029297 
		0.35561525821685791 0;
createNode animCurveTL -n "animCurveTL446";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.11742628606129618 5 0.35700193468720687 
		11 0.13800000000000001 17 0.1380615615975922 27 0.1380615615975922;
	setAttr -s 5 ".kit[0:4]"  1 9 3 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 3 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.17545624077320099 1 0.99993336200714111 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0.98448723554611206 0 0.011542030610144138 
		0;
	setAttr -s 5 ".kox[0:4]"  0.011130101047456264 0.17545624077320099 
		1 0.99993336200714111 1;
	setAttr -s 5 ".koy[0:4]"  0.99993807077407837 0.98448723554611206 
		0 0.011542030610144138 0;
createNode animCurveTL -n "animCurveTL447";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 6.4279964372092886 5 8.904025838494432 
		11 11.142000000000001 17 11.141583271088809 27 11.141583271088809;
	setAttr -s 5 ".kit[2:4]"  3 9 9;
	setAttr -s 5 ".kot[2:4]"  3 9 9;
createNode animCurveTA -n "animCurveTA1239";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 77.194699757699198 11 0 17 
		0 27 0;
	setAttr -s 5 ".kit[0:4]"  1 9 3 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 3 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  0.19415989518165588 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0.98096990585327148 0 0 0 0;
createNode animCurveTA -n "animCurveTA1240";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 27 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1241";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 27 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1242";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1243";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1244";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1245";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1246";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1247";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL448";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 27 0;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL449";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 27 0;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL450";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 17 1 27 1;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL451";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 27 0;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL452";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 27 0;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL453";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 17 1 27 1;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL454";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.03051835782609956 5 0.03051835782609956 
		11 0.03051835782609956 17 -0.035127227892371694 27 -0.076472881617957691;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 0.060820464044809341 0.049786500632762909 
		0.080360390245914459;
	setAttr -s 5 ".kiy[0:4]"  0 0 -0.99814873933792114 -0.99875986576080322 
		-0.9967658519744873;
	setAttr -s 5 ".kox[0:4]"  1 1 0.060820464044809341 0.049786500632762909 
		0.080360390245914459;
	setAttr -s 5 ".koy[0:4]"  0 0 -0.99814873933792114 -0.99875986576080322 
		-0.9967658519744873;
createNode animCurveTL -n "animCurveTL455";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.76074829734573723 5 0.87580142571340613 
		11 0.80155073784893016 17 0.77595666885568149 27 0.93105416142265018;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.089503243565559387 0.040030084550380707 
		0.041148070245981216 0.021486895158886909;
	setAttr -s 5 ".kiy[0:4]"  0 0.99598652124404907 -0.99919849634170532 
		0.99915307760238647 0.99976915121078491;
	setAttr -s 5 ".kox[0:4]"  0.023171473294496536 0.089503243565559387 
		0.040030084550380707 0.041148070245981216 0.021486895158886909;
	setAttr -s 5 ".koy[0:4]"  0.99973148107528687 0.99598652124404907 
		-0.99919849634170532 0.99915307760238647 0.99976915121078491;
createNode animCurveTL -n "animCurveTL456";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 6.5711038760074629 5 9.0396026131804454 
		11 10.744213346059254 17 10.938266408275936 27 11.140798968619775;
createNode animCurveTA -n "animCurveTA1248";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 40.92583813237421 5 -19.052632504459879 
		11 -27.904315542353093 17 27.356941175969908 21 34.542567116508373 27 -0.62843630316474308;
	setAttr -s 6 ".kit[0:5]"  1 9 1 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 1 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.29192644357681274 0.91952955722808838 
		0.29246503114700317 0.56369245052337646 0.30978477001190186;
	setAttr -s 6 ".kiy[0:5]"  0 -0.95644080638885498 0.39302083849906921 
		0.95627623796463013 -0.82598471641540527 -0.95080667734146118;
	setAttr -s 6 ".kox[0:5]"  0.24685567617416382 0.29192644357681274 
		0.91952943801879883 0.29246503114700317 0.56369245052337646 0.30978477001190186;
	setAttr -s 6 ".koy[0:5]"  -0.96905225515365601 -0.95644080638885498 
		0.39302107691764832 0.95627623796463013 -0.82598471641540527 -0.95080667734146118;
createNode animCurveTA -n "animCurveTA1249";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 11 -0.7875706006790737 
		17 -1.3336767971708379 21 -7.1589407526995954 27 -5.8284402688137158;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99929803609848022 0.99831110239028931 
		0.94860619306564331 0.97340607643127441 0.99332684278488159;
	setAttr -s 6 ".kiy[0:5]"  0 -0.037461958825588226 -0.058094348758459091 
		-0.31645897030830383 -0.22908651828765869 0.11533326655626297;
	setAttr -s 6 ".kox[0:5]"  1 0.99929803609848022 0.99831110239028931 
		0.94860619306564331 0.97340607643127441 0.99332684278488159;
	setAttr -s 6 ".koy[0:5]"  0 -0.037461958825588226 -0.058094348758459091 
		-0.31645897030830383 -0.22908651828765869 0.11533326655626297;
createNode animCurveTA -n "animCurveTA1250";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 11 0 17 2.397105334169336 
		21 -0.093078022043665776 27 -1.2956360193097458;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 0.99457460641860962 0.9999881386756897 
		0.9818158745765686 0.99453854560852051;
	setAttr -s 6 ".kiy[0:5]"  0 0 0.10402598977088928 -0.0048734960146248341 
		-0.1898355633020401 -0.10436984896659851;
	setAttr -s 6 ".kox[0:5]"  1 1 0.99457460641860962 0.9999881386756897 
		0.9818158745765686 0.99453854560852051;
	setAttr -s 6 ".koy[0:5]"  0 0 0.10402598977088928 -0.0048734960146248341 
		-0.1898355633020401 -0.10436984896659851;
createNode animCurveTA -n "animCurveTA1251";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1252";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1253";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.0984482521620249 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 0.9921267032623291;
	setAttr -s 2 ".kiy[0:1]"  0 -0.12523804605007172;
	setAttr -s 2 ".kox[0:1]"  0.99567562341690063 0.9921267032623291;
	setAttr -s 2 ".koy[0:1]"  -0.092898376286029816 -0.12523804605007172;
createNode animCurveTA -n "animCurveTA1254";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 18.588300303494186 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 0.86783546209335327;
	setAttr -s 2 ".kiy[0:1]"  0 -0.49685168266296387;
	setAttr -s 2 ".kox[0:1]"  0.92093789577484131 0.86783546209335327;
	setAttr -s 2 ".koy[0:1]"  -0.38970935344696045 -0.49685168266296387;
createNode animCurveTA -n "animCurveTA1255";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1256";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1257";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -22.686733334985114 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 0.81971311569213867;
	setAttr -s 2 ".kiy[0:1]"  0 0.57277435064315796;
	setAttr -s 2 ".kox[0:1]"  0.88849818706512451 0.81971311569213867;
	setAttr -s 2 ".koy[0:1]"  0.45888015627861023 0.57277435064315796;
createNode animCurveTA -n "animCurveTA1258";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1259";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1260";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0579251312417479e-005 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1261";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1262";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1263";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.0984482535121209 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 0.9921267032623291;
	setAttr -s 2 ".kiy[0:1]"  0 -0.12523804605007172;
	setAttr -s 2 ".kox[0:1]"  0.99567562341690063 0.9921267032623291;
	setAttr -s 2 ".koy[0:1]"  -0.092898376286029816 -0.12523804605007172;
createNode animCurveTA -n "animCurveTA1264";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 18.588300300216805 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 0.86783546209335327;
	setAttr -s 2 ".kiy[0:1]"  0 -0.49685168266296387;
	setAttr -s 2 ".kox[0:1]"  0.92093789577484131 0.86783546209335327;
	setAttr -s 2 ".koy[0:1]"  -0.38970935344696045 -0.49685168266296387;
createNode animCurveTA -n "animCurveTA1265";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1266";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1267";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -22.686733333057838 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 0.81971311569213867;
	setAttr -s 2 ".kiy[0:1]"  0 0.57277435064315796;
	setAttr -s 2 ".kox[0:1]"  0.88849818706512451 0.81971311569213867;
	setAttr -s 2 ".koy[0:1]"  0.45888015627861023 0.57277435064315796;
createNode animCurveTA -n "animCurveTA1268";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1269";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1270";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0579251312417479e-005 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1271";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1272";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1273";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1274";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1275";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1276";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL463";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.98071836797454492 17 -1.0545587743711824 
		27 -0.98071836797454492;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.045096471905708313;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99898260831832886;
	setAttr -s 3 ".kox[0:2]"  0.022681878879666328 1 0.045096471905708313;
	setAttr -s 3 ".koy[0:2]"  0.99974274635314941 0 0.99898260831832886;
createNode animCurveTL -n "animCurveTL464";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.6432964864655397 17 1.7097786725250712 
		27 1.6432964864655397;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.050075836479663849;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.99874544143676758;
	setAttr -s 3 ".kox[0:2]"  0.019910994917154312 1 0.050075836479663849;
	setAttr -s 3 ".koy[0:2]"  -0.99980175495147705 0 -0.99874544143676758;
createNode animCurveTL -n "animCurveTL465";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 18.44400685050341 17 18.788532465563765 
		27 18.154583356411589;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  0 0.031081277877092361 0.0052579725161194801;
	setAttr -s 3 ".kiy[0:2]"  0 -0.99951684474945068 -0.99998617172241211;
	setAttr -s 3 ".kox[0:2]"  0.020323170349001884 0.031081277877092361 
		0.0052579725161194801;
	setAttr -s 3 ".koy[0:2]"  0.99979346990585327 -0.99951684474945068 
		-0.99998617172241211;
createNode animCurveTA -n "animCurveTA1283";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 5.4739599453216465 17 -23.215155221440387 
		27 5.4739599453216465;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.55414795875549316;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.83241820335388184;
	setAttr -s 3 ".kox[0:2]"  0.44413837790489197 1 0.55414795875549316;
	setAttr -s 3 ".koy[0:2]"  0.89595818519592285 0 0.83241820335388184;
createNode animCurveTA -n "animCurveTA1284";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.587452160841984 17 61.150033373848167 
		27 8.5874521608419823;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.34150499105453491;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.93987995386123657;
	setAttr -s 3 ".kox[0:2]"  0.62243831157684326 1 0.34150499105453491;
	setAttr -s 3 ".koy[0:2]"  0.78266888856887817 0 -0.93987995386123657;
createNode animCurveTA -n "animCurveTA1285";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 74.754744621954103 17 21.965069321055285 
		27 74.754744621954103;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.34020623564720154;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.94035083055496216;
	setAttr -s 3 ".kox[0:2]"  0.80162584781646729 1 0.34020623564720154;
	setAttr -s 3 ".koy[0:2]"  0.59782606363296509 0 0.94035083055496216;
createNode animCurveTL -n "animCurveTL466";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.76309120872911718 17 0.50539491221969979 
		27 0.76309120872911718;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.012934040278196335;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99991637468338013;
	setAttr -s 3 ".kox[0:2]"  0.0464349165558815 1 0.012934040278196335;
	setAttr -s 3 ".koy[0:2]"  -0.99892133474349976 0 0.99991637468338013;
createNode animCurveTL -n "animCurveTL467";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.6150490657878991 17 1.386381188267146 
		27 1.6150490657878991;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.014575633220374584;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99989378452301025;
	setAttr -s 3 ".kox[0:2]"  0.017886213958263397 1 0.014575633220374584;
	setAttr -s 3 ".koy[0:2]"  -0.99984002113342285 0 0.99989378452301025;
createNode animCurveTL -n "animCurveTL468";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 18.685144500819998 17 18.613604598678169 
		27 18.395721006728181;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  0 0.031081277877092361 0.015296898782253265;
	setAttr -s 3 ".kiy[0:2]"  0 -0.99951684474945068 -0.99988299608230591;
	setAttr -s 3 ".kox[0:2]"  0.020324043929576874 0.031081277877092361 
		0.015296898782253265;
	setAttr -s 3 ".koy[0:2]"  0.99979346990585327 -0.99951684474945068 
		-0.99988299608230591;
createNode animCurveTA -n "animCurveTA1286";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 16.226511010665419 17 29.692924059912436 
		27 16.226511010665412;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.81726908683776855;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.57625621557235718;
	setAttr -s 3 ".kox[0:2]"  0.55218648910522461 1 0.81726908683776855;
	setAttr -s 3 ".koy[0:2]"  0.8337206244468689 0 -0.57625621557235718;
createNode animCurveTA -n "animCurveTA1287";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -8.5139660854992876 17 -43.992679725815719 
		27 -8.5139660854992858;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.47399726510047913;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.88052630424499512;
	setAttr -s 3 ".kox[0:2]"  0.76185369491577148 1 0.47399726510047913;
	setAttr -s 3 ".koy[0:2]"  -0.64774918556213379 0 0.88052630424499512;
createNode animCurveTA -n "animCurveTA1288";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -68.213989601412422 17 -86.792833269625262 
		27 -68.213989601412422;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.71679288148880005;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.69728612899780273;
	setAttr -s 3 ".kox[0:2]"  0.92121309041976929 1 0.71679288148880005;
	setAttr -s 3 ".koy[0:2]"  -0.38905835151672363 0 0.69728612899780273;
createNode animCurveTL -n "animCurveTL469";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0.23460570977805109 27 0;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.014206801541149616;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.99989908933639526;
	setAttr -s 3 ".kox[0:2]"  0.010879687033593655 1 0.014206801541149616;
	setAttr -s 3 ".koy[0:2]"  0.99994081258773804 0 -0.99989908933639526;
createNode animCurveTL -n "animCurveTL470";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 -1.6762431933535973 27 0;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.0019885697402060032;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99999803304672241;
	setAttr -s 3 ".kox[0:2]"  0.66441696882247925 1 0.0019885697402060032;
	setAttr -s 3 ".koy[0:2]"  0.74736207723617554 0 0.99999803304672241;
createNode animCurveTL -n "animCurveTL471";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 17 -1.0785826799401677 27 
		-1;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.042380057275295258;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99910157918930054;
	setAttr -s 3 ".kox[0:2]"  0.72355979681015015 1 0.042380057275295258;
	setAttr -s 3 ".koy[0:2]"  -0.69026172161102295 0 0.99910157918930054;
createNode animCurveTL -n "animCurveTL472";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.10167917362943303 17 -0.13039089605054222 
		27 -0.101679173629433;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.11532201617956161;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99332815408706665;
	setAttr -s 3 ".kox[0:2]"  0.010923698544502258 1 0.11532201617956161;
	setAttr -s 3 ".koy[0:2]"  -0.99994033575057983 0 0.99332815408706665;
createNode animCurveTL -n "animCurveTL473";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.40762644910266188 17 -1.0837274221759037 
		27 -0.40762644910266188;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.0049301697872579098;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99998784065246582;
	setAttr -s 3 ".kox[0:2]"  0.019269425421953201 1 0.0049301697872579098;
	setAttr -s 3 ".koy[0:2]"  0.99981433153152466 0 0.99998784065246582;
createNode animCurveTL -n "animCurveTL474";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.93129112588482243 17 -0.80618040863792262 
		27 -0.93129112588482243;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.026633614674210548;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.99964523315429688;
	setAttr -s 3 ".kox[0:2]"  0.12598463892936707 1 0.026633614674210548;
	setAttr -s 3 ".koy[0:2]"  -0.99203217029571533 0 -0.99964523315429688;
createNode animCurveTA -n "animCurveTA1289";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -10.587124207154311 5 6.5222453545706891 
		11 -29.318709219068381 17 12.253734489678918 27 12.253734489678918;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.74639570713043213 0.97012346982955933 
		0.59226185083389282 1;
	setAttr -s 5 ".kiy[0:4]"  0 -0.66550236940383911 0.24261176586151123 
		0.80574560165405273 0;
	setAttr -s 5 ".kox[0:4]"  0.6660800576210022 0.74639570713043213 
		0.97012346982955933 0.59226185083389282 1;
	setAttr -s 5 ".koy[0:4]"  0.74588024616241455 -0.66550236940383911 
		0.24261176586151123 0.80574560165405273 0;
createNode animCurveTA -n "animCurveTA1290";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -60.592711499848903 5 -11.270701110865538 
		11 0.2591761412191334 17 -65.746751280844961 27 -65.746751280844961;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.32633832097053528 0.38778427243232727 
		0.42011731863021851 1;
	setAttr -s 5 ".kiy[0:4]"  0 0.94525301456451416 -0.92175012826919556 
		-0.90746980905532837 0;
	setAttr -s 5 ".kox[0:4]"  0.29590529203414917 0.32633832097053528 
		0.38778427243232727 0.42011731863021851 1;
	setAttr -s 5 ".koy[0:4]"  0.95521730184555054 0.94525301456451416 
		-0.92175012826919556 -0.90746980905532837 0;
createNode animCurveTA -n "animCurveTA1291";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.15003680417244974 5 -43.024026870863949 
		11 -52.267096591786228 17 0 27 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.37386897206306458 0.47014358639717102 
		0.50471627712249756 1;
	setAttr -s 5 ".kiy[0:4]"  0 -0.92748153209686279 0.88258993625640869 
		0.86328524351119995 0;
	setAttr -s 5 ".kox[0:4]"  0.33568814396858215 0.37386897206306458 
		0.47014358639717102 0.50471627712249756 1;
	setAttr -s 5 ".koy[0:4]"  -0.94197320938110352 -0.92748153209686279 
		0.88258993625640869 0.86328524351119995 0;
createNode animCurveTA -n "animCurveTA1292";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 52.350458715167015 5 -26.845686876069546 
		11 -41.702520768547579 17 -0.061808866237340665 27 -0.061808866237340665;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.21799618005752563 0.65014845132827759 
		0.59163087606430054 1;
	setAttr -s 5 ".kiy[0:4]"  0 -0.97594964504241943 0.75980716943740845 
		0.80620896816253662 0;
	setAttr -s 5 ".kox[0:4]"  0.18943136930465698 0.21799618005752563 
		0.65014845132827759 0.59163087606430054 1;
	setAttr -s 5 ".koy[0:4]"  -0.98189395666122437 -0.97594964504241943 
		0.75980716943740845 0.80620896816253662 0;
createNode animCurveTA -n "animCurveTA1293";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -49.562109142955329 5 -2.6900261896817361 
		11 -5.6360269321212852 17 -59.058178941076754 27 -59.058178941076754;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.43146094679832458 0.37664151191711426 
		0.49651622772216797 1;
	setAttr -s 5 ".kiy[0:4]"  0 0.90213161706924438 -0.92635911703109741 
		-0.8680274486541748 0;
	setAttr -s 5 ".kox[0:4]"  0.30991971492767334 0.43146094679832458 
		0.37664151191711426 0.49651622772216797 1;
	setAttr -s 5 ".koy[0:4]"  0.95076274871826172 0.90213161706924438 
		-0.92635911703109741 -0.8680274486541748 0;
createNode animCurveTA -n "animCurveTA1294";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -64.60878798864384 5 45.29300271475654 
		11 21.122073063033287 17 16.57914742975785 27 16.57914742975785;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.23800915479660034 0.62381875514984131 
		0.98912894725799561 1;
	setAttr -s 5 ".kiy[0:4]"  0 0.97126293182373047 -0.78156900405883789 
		-0.14705072343349457 0;
	setAttr -s 5 ".kox[0:4]"  0.13769866526126862 0.23800915479660034 
		0.62381875514984131 0.98912894725799561 1;
	setAttr -s 5 ".koy[0:4]"  0.9904741644859314 0.97126293182373047 
		-0.78156900405883789 -0.14705072343349457 0;
createNode animCurveTA -n "animCurveTA1295";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 72.938873120018542 5 64.703387914621587 
		11 22.807758850356816 17 8.5572674112203639 27 8.5572674112203639;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.38650333881378174 0.37791857123374939 
		0.90629440546035767 1;
	setAttr -s 5 ".kiy[0:4]"  0 -0.92228800058364868 -0.92583882808685303 
		-0.42264696955680847 0;
	setAttr -s 5 ".kox[0:4]"  0.88026899099349976 0.38650333881378174 
		0.37791857123374939 0.90629440546035767 1;
	setAttr -s 5 ".koy[0:4]"  -0.47447493672370911 -0.92228800058364868 
		-0.92583882808685303 -0.42264696955680847 0;
createNode animCurveTA -n "animCurveTA1296";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 59.305463658789549 5 16.132257338928927 
		11 78.15412211170387 17 15.711328223519065 27 15.711328223519065;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.74433177709579468 0.99983137845993042 
		0.43956026434898376 1;
	setAttr -s 5 ".kiy[0:4]"  0 0.66781002283096313 -0.018363399431109428 
		-0.89821308851242065 0;
	setAttr -s 5 ".kox[0:4]"  0.33362135291099548 0.74433177709579468 
		0.99983137845993042 0.43956026434898376 1;
	setAttr -s 5 ".koy[0:4]"  -0.94270718097686768 0.66781002283096313 
		-0.018363399431109428 -0.89821308851242065 0;
createNode animCurveTA -n "animCurveTA1297";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -17.955810303398234 5 -15.503254262547973 
		11 -12.849758238864569 17 0 27 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.97171127796173096 0.82828861474990845 
		0.92181503772735596 1;
	setAttr -s 5 ".kiy[0:4]"  0 0.23617200553417206 0.56030172109603882 
		0.38763001561164856 0;
	setAttr -s 5 ".kox[0:4]"  0.98736047744750977 0.97171127796173096 
		0.82828861474990845 0.92181503772735596 1;
	setAttr -s 5 ".koy[0:4]"  0.15849053859710693 0.23617200553417206 
		0.56030172109603882 0.38763001561164856 0;
createNode animCurveTA -n "animCurveTA1298";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 10.082003051124259 5 8.8433563691173394 
		11 7.3461064996816994 17 0 27 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99162662029266357 0.93295466899871826 
		0.97229880094528198 1;
	setAttr -s 5 ".kiy[0:4]"  0 -0.12913791835308075 -0.35999384522438049 
		-0.2337413877248764 0;
	setAttr -s 5 ".kox[0:4]"  0.99672996997833252 0.99162662029266357 
		0.93295466899871826 0.97229880094528198 1;
	setAttr -s 5 ".koy[0:4]"  -0.080804146826267242 -0.12913791835308075 
		-0.35999384522438049 -0.2337413877248764 0;
createNode animCurveTA -n "animCurveTA1299";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -4.7201893288928654 5 -4.1402801121403421 
		11 -3.439298162041589 17 0 27 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99814647436141968 0.98407095670700073 
		0.99372571706771851 1;
	setAttr -s 5 ".kiy[0:4]"  0 0.060857266187667847 0.17777615785598755 
		0.11184459924697876 0;
	setAttr -s 5 ".kox[0:4]"  0.99928051233291626 0.99814647436141968 
		0.98407095670700073 0.99372571706771851 1;
	setAttr -s 5 ".koy[0:4]"  0.037927661091089249 0.060857266187667847 
		0.17777615785598755 0.11184459924697876 0;
createNode animCurveTA -n "animCurveTA1300";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 20.127263792592359 5 20.531700085875865 
		11 17.390126284086964 17 0 27 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99161911010742188 0.74482381343841553 
		0.8691171407699585 1;
	setAttr -s 5 ".kiy[0:4]"  0 -0.12919551134109497 -0.66726118326187134 
		-0.49460634589195251 0;
	setAttr -s 5 ".kox[0:4]"  0.99964982271194458 0.99161911010742188 
		0.74482381343841553 0.8691171407699585 1;
	setAttr -s 5 ".koy[0:4]"  0.026461025699973106 -0.12919551134109497 
		-0.66726118326187134 -0.49460634589195251 0;
createNode animCurveTA -n "animCurveTA1301";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 11.615881410206432 5 10.18878668450802 
		11 8.4637449952978283 17 0 27 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.988930344581604 0.91376906633377075 
		0.96371704339981079 1;
	setAttr -s 5 ".kiy[0:4]"  0 -0.14838044345378876 -0.4062340259552002 
		-0.26692593097686768 0;
	setAttr -s 5 ".kox[0:4]"  0.9956662654876709 0.988930344581604 
		0.91376906633377075 0.96371704339981079 1;
	setAttr -s 5 ".koy[0:4]"  -0.09299834817647934 -0.14838044345378876 
		-0.4062340259552002 -0.26692593097686768 0;
createNode animCurveTA -n "animCurveTA1302";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.3215928107553504 5 0.28208281983201922 
		11 0.23432397832006235 17 0 27 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99999135732650757 0.99992424249649048 
		0.99997061491012573 1;
	setAttr -s 5 ".kiy[0:4]"  0 -0.004153951071202755 -0.012307252734899521 
		-0.007668009027838707 0;
	setAttr -s 5 ".kox[0:4]"  0.99999666213989258 0.99999135732650757 
		0.99992424249649048 0.99997061491012573 1;
	setAttr -s 5 ".koy[0:4]"  -0.0025859142187982798 -0.004153951071202755 
		-0.012307252734899521 -0.007668009027838707 0;
createNode animCurveTA -n "animCurveTA1303";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 10.967667985987504 5 10.967667985987509 
		11 10.967667985987509 17 10.423754966968493 27 10.423754966968493;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 1 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 0.99971848726272583 0.99984163045883179 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 -0.023726001381874084 -0.017796693369746208 
		0;
	setAttr -s 5 ".kox[0:4]"  1 1 0.99971848726272583 0.99984163045883179 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 -0.023726001381874084 -0.017796693369746208 
		0;
createNode animCurveTA -n "animCurveTA1304";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 53.910048648242871 5 53.910048648242878 
		11 53.910048648242878 17 27.7228482558439 27 27.7228482558439;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 1 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 0.65857803821563721 0.75931990146636963 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 -0.75251245498657227 -0.65071749687194824 
		0;
	setAttr -s 5 ".kox[0:4]"  1 1 0.65857803821563721 0.75931990146636963 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 -0.75251245498657227 -0.65071749687194824 
		0;
createNode animCurveTA -n "animCurveTA1305";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 43.127820754253491 5 43.127820754253513 
		11 43.127820754253513 17 21.576484776388227 27 21.576484776388227;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 1 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 0.72849881649017334 0.81720519065856934 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 -0.68504709005355835 -0.57634687423706055 
		0;
	setAttr -s 5 ".kox[0:4]"  1 1 0.72849881649017334 0.81720519065856934 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 -0.68504709005355835 -0.57634687423706055 
		0;
createNode animCurveTA -n "animCurveTA1306";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 27 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1307";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 27 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1308";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 86.382238158606057 5 79.613939213760304 
		11 70.77971168444968 17 27.080064458283047 27 27.080064458283047;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.80281245708465576 0.39986294507980347 
		0.57305943965911865 1;
	setAttr -s 5 ".kiy[0:4]"  0 -0.59623157978057861 -0.91657495498657227 
		-0.81951379776000977 0;
	setAttr -s 5 ".kox[0:4]"  0.9143064022064209 0.80281245708465576 
		0.39986294507980347 0.57305943965911865 1;
	setAttr -s 5 ".koy[0:4]"  -0.4050232470035553 -0.59623157978057861 
		-0.91657495498657227 -0.81951379776000977 0;
createNode animCurveTA -n "animCurveTA1309";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1310";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1311";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1312";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 26.541511232508348 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 0.77422481775283813;
	setAttr -s 2 ".kiy[0:1]"  0 -0.63291066884994507;
	setAttr -s 2 ".kox[0:1]"  1 0.77422481775283813;
	setAttr -s 2 ".koy[0:1]"  0 -0.63291066884994507;
createNode animCurveTA -n "animCurveTA1313";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 41.530156331423342 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 0.61590522527694702;
	setAttr -s 2 ".kiy[0:1]"  0 -0.78782027959823608;
	setAttr -s 2 ".kox[0:1]"  1 0.61590522527694702;
	setAttr -s 2 ".koy[0:1]"  0 -0.78782027959823608;
createNode animCurveTA -n "animCurveTA1314";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 52.545459146006955 17 13.994403295754111;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 0.64417707920074463;
	setAttr -s 2 ".kiy[0:1]"  0 -0.76487636566162109;
	setAttr -s 2 ".kox[0:1]"  1 0.64417707920074463;
	setAttr -s 2 ".koy[0:1]"  0 -0.76487636566162109;
createNode animCurveTA -n "animCurveTA1315";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 37.39895318822164 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 0.65556657314300537;
	setAttr -s 2 ".kiy[0:1]"  0 -0.75513738393783569;
	setAttr -s 2 ".kox[0:1]"  1 0.65556657314300537;
	setAttr -s 2 ".koy[0:1]"  0 -0.75513738393783569;
createNode animCurveTA -n "animCurveTA1316";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 69.699093005590768 17 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 0.42225915193557739;
	setAttr -s 2 ".kiy[0:1]"  0 -0.90647518634796143;
	setAttr -s 2 ".kox[0:1]"  1 0.42225915193557739;
	setAttr -s 2 ".koy[0:1]"  0 -0.90647518634796143;
createNode animCurveTA -n "animCurveTA1317";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 37.87925340126155 17 13.994403295754111;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 0.80551350116729736;
	setAttr -s 2 ".kiy[0:1]"  0 -0.59257739782333374;
	setAttr -s 2 ".kox[0:1]"  1 0.80551350116729736;
	setAttr -s 2 ".koy[0:1]"  0 -0.59257739782333374;
createNode animCurveTA -n "animCurveTA1318";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 27 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1319";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 27 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1320";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 95.284705327631698 5 90.754620314643489 
		11 80.550585000381275 17 27.91163251959459 27 27.91163251959459;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.81871521472930908 0.34261852502822876 
		0.50205188989639282 1;
	setAttr -s 5 ".kiy[0:4]"  0 -0.57419979572296143 -0.93947458267211914 
		-0.86483746767044067 0;
	setAttr -s 5 ".kox[0:4]"  0.95874661207199097 0.81871521472930908 
		0.34261852502822876 0.50205188989639282 1;
	setAttr -s 5 ".koy[0:4]"  -0.2842620313167572 -0.57419979572296143 
		-0.93947458267211914 -0.86483746767044067 0;
createNode animCurveTA -n "animCurveTA1321";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 27 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 1 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1322";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 27 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 1 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1323";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 27 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 1 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1324";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 -0.80444315775703867 11 -0.68921145621496227 
		17 -2.0909400436807926 21 -1.5248240557546424 27 -0.6507300102495166;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.9994623064994812 0.99842822551727295 
		0.99904423952102661 0.99716877937316895 0.99710339307785034;
	setAttr -s 6 ".kiy[0:5]"  0 -0.032788749784231186 -0.056045785546302795 
		-0.043710757046937943 0.075195722281932831 0.076058149337768555;
	setAttr -s 6 ".kox[0:5]"  0.99861681461334229 0.9994623064994812 
		0.99842822551727295 0.99904423952102661 0.99716877937316895 0.99710339307785034;
	setAttr -s 6 ".koy[0:5]"  -0.052577856928110123 -0.032788749784231186 
		-0.056045785546302795 -0.043710757046937943 0.075195722281932831 0.076058149337768555;
createNode animCurveTA -n "animCurveTA1325";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 -0.60472186283169338 11 -1.3344464943638261 
		17 -4.2319210453524185 21 -3.6133281879584058 27 -4.2368721935960929;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99798870086669922 0.98770636320114136 
		0.99295628070831299 0.99999994039535522 0.99852281808853149;
	setAttr -s 6 ".kiy[0:5]"  0 -0.063391752541065216 -0.15632075071334839 
		-0.11848149448633194 -0.00025924152578227222 -0.054334104061126709;
	setAttr -s 6 ".kox[0:5]"  0.999217689037323 0.99798870086669922 
		0.98770636320114136 0.99295628070831299 0.99999994039535522 0.99852281808853149;
	setAttr -s 6 ".koy[0:5]"  -0.039547991007566452 -0.063391752541065216 
		-0.15632075071334839 -0.11848149448633194 -0.00025924152578227222 -0.054334104061126709;
createNode animCurveTA -n "animCurveTA1326";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 7.1280947740371978 5 2.2124383659318805 
		11 -5.0186679783197166 17 26.041202151909953 21 39.848957946302498 27 8.7398866450636863;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.86571252346038818 0.6932036280632019 
		0.39165911078453064 0.74111795425415039 0.3456500768661499;
	setAttr -s 6 ".kiy[0:5]"  0 -0.5005415678024292 0.72074180841445923 
		0.92011040449142456 -0.6713748574256897 -0.93836349248886108;
	setAttr -s 6 ".kox[0:5]"  0.95194518566131592 0.86571252346038818 
		0.6932036280632019 0.39165911078453064 0.74111795425415039 0.3456500768661499;
	setAttr -s 6 ".koy[0:5]"  -0.3062683641910553 -0.5005415678024292 
		0.72074180841445923 0.92011040449142456 -0.6713748574256897 -0.93836349248886108;
createNode animCurveTA -n "animCurveTA1327";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 27 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1328";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 27 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1329";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 27 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1330";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0.50986500056630668 11 0.87215714273867373 
		17 0.51796104952671496 21 2.359880013212853 27 4.8714700432790465;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99913936853408813 0.99999994039535522 
		0.99697977304458618 0.9749901294708252 0.97681272029876709;
	setAttr -s 6 ".kiy[0:5]"  0 0.041478853672742844 0.00035325676435604692 
		0.077661722898483276 0.22224822640419006 0.21409547328948975;
	setAttr -s 6 ".kox[0:5]"  0.9994436502456665 0.99913936853408813 
		0.99999994039535522 0.99697977304458618 0.9749901294708252 0.97681272029876709;
	setAttr -s 6 ".koy[0:5]"  0.033352021127939224 0.041478853672742844 
		0.00035325676435604692 0.077661722898483276 0.22224822640419006 0.21409547328948975;
createNode animCurveTA -n "animCurveTA1331";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0.51774709160700405 11 2.477928535257151 
		17 12.727334526427551 21 11.01042138930752 27 11.783606204137087;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99311572313308716 0.88256889581680298 
		0.91302508115768433 0.99878138303756714 0.99773144721984863;
	setAttr -s 6 ".kiy[0:5]"  0 0.1171371266245842 0.47018307447433472 
		0.40790337324142456 -0.049353282898664474 0.067320041358470917;
	setAttr -s 6 ".kox[0:5]"  0.99942636489868164 0.99311572313308716 
		0.88256889581680298 0.91302508115768433 0.99878138303756714 0.99773144721984863;
	setAttr -s 6 ".koy[0:5]"  0.03386702761054039 0.1171371266245842 
		0.47018307447433472 0.40790337324142456 -0.049353282898664474 0.067320041358470917;
createNode animCurveTA -n "animCurveTA1332";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -18.722937869975638 5 -18.050704330054927 
		11 -23.781039275327831 17 -12.760842210164803 21 23.025252990452728 27 7.5423825101935931;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.97221827507019043 0.97438168525695801 
		0.37779498100280762 0.68516826629638672 0.59490442276000977;
	setAttr -s 6 ".kiy[0:5]"  0 -0.23407618701457977 0.22490072250366211 
		0.92588925361633301 0.72838479280471802 -0.80379647016525269;
	setAttr -s 6 ".kox[0:5]"  0.99903351068496704 0.97221827507019043 
		0.97438168525695801 0.37779498100280762 0.68516826629638672 0.59490442276000977;
	setAttr -s 6 ".koy[0:5]"  0.043955061584711075 -0.23407618701457977 
		0.22490072250366211 0.92588925361633301 0.72838479280471802 -0.80379647016525269;
createNode animCurveTA -n "animCurveTA1333";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 -0.28780339846407804 11 -0.32417139403198059 
		17 -1.8903601258661935 27 -1.8903601258661935;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99988096952438354 0.99756419658660889 
		0.99868911504745483 1;
	setAttr -s 5 ".kiy[0:4]"  0 -0.015428685583174229 -0.069754406809806824 
		-0.051186222583055496 0;
	setAttr -s 5 ".kox[0:4]"  0.99982261657714844 0.99988096952438354 
		0.99756419658660889 0.99868911504745483 1;
	setAttr -s 5 ".koy[0:4]"  -0.018833348527550697 -0.015428685583174229 
		-0.069754406809806824 -0.051186222583055496 0;
createNode animCurveTA -n "animCurveTA1334";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0.26458471463537331 11 0.79616802841599899 
		17 2.5597289571479038 27 2.5597289571479038;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99928265810012817 0.99502295255661011 
		0.99833875894546509 1;
	setAttr -s 5 ".kiy[0:4]"  0 0.037870321422815323 0.099646128714084625 
		0.057616524398326874 0;
	setAttr -s 5 ".kox[0:4]"  0.99985009431838989 0.99928265810012817 
		0.99502295255661011 0.99833875894546509 1;
	setAttr -s 5 ".koy[0:4]"  0.017314434051513672 0.037870321422815323 
		0.099646128714084625 0.057616524398326874 0;
createNode animCurveTA -n "animCurveTA1335";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 -10.713314820003864 11 5.3226666611229376 
		17 2.0168110874036045 27 2.0168110874036045;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.96937167644500732 0.87419402599334717 
		0.99419897794723511 1;
	setAttr -s 5 ".kiy[0:4]"  0 0.24559839069843292 0.48557677865028381 
		-0.1075562909245491 0;
	setAttr -s 5 ".kox[0:4]"  0.81877589225769043 0.96937167644500732 
		0.87419402599334717 0.99419897794723511 1;
	setAttr -s 5 ".koy[0:4]"  -0.57411324977874756 0.24559839069843292 
		0.48557677865028381 -0.1075562909245491 0;
createNode animCurveTA -n "animCurveTA1336";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 27 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1337";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 27 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1338";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 85.281921116584812 5 79.775929340324637 
		11 72.029582107124057 17 33.429092416277157 27 33.429092416277157;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.84578245878219604 0.4432620108127594 
		0.62069076299667358 1;
	setAttr -s 5 ".kiy[0:4]"  0 -0.5335279107093811 -0.8963921070098877 
		-0.78405547142028809 0;
	setAttr -s 5 ".kox[0:4]"  0.94077754020690918 0.84578245878219604 
		0.4432620108127594 0.62069076299667358 1;
	setAttr -s 5 ".koy[0:4]"  -0.33902454376220703 -0.5335279107093811 
		-0.8963921070098877 -0.78405547142028809 0;
createNode animCurveTA -n "animCurveTA1339";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 22.827732383502713 5 22.82773238350271 
		11 22.82773238350271 17 8.2533422302317216 27 8.2533422302317216;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 1 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 0.84382802248001099 0.90259569883346558 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 -0.53661364316940308 -0.43048924207687378 
		0;
	setAttr -s 5 ".kox[0:4]"  1 1 0.84382802248001099 0.90259569883346558 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 -0.53661364316940308 -0.43048924207687378 
		0;
createNode animCurveTA -n "animCurveTA1340";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 38.578337509358107 5 38.578337509358107 
		11 38.578337509358107 17 23.263402056531085 27 23.263402056531085;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 1 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 0.83144599199295044 0.89400476217269897 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 -0.55560559034347534 -0.44805741310119629 
		0;
	setAttr -s 5 ".kox[0:4]"  1 1 0.83144599199295044 0.89400476217269897 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 -0.55560559034347534 -0.44805741310119629 
		0;
createNode animCurveTA -n "animCurveTA1341";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 45.467643381850571 5 45.467643381850564 
		11 45.467643381850564 17 20.166277752815617 27 20.166277752815617;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 1 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 0.6713416576385498 0.77024328708648682 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 -0.74114799499511719 -0.63775014877319336 
		0;
	setAttr -s 5 ".kox[0:4]"  1 1 0.6713416576385498 0.77024328708648682 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 -0.74114799499511719 -0.63775014877319336 
		0;
createNode animCurveTA -n "animCurveTA1342";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 27 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1343";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 27 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1344";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 77.470348806333035 5 70.994338622177807 
		11 62.002918112729986 17 17.254116939558365 27 17.254116939558365;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.80528426170349121 0.39228156208992004 
		0.56393134593963623 1;
	setAttr -s 5 ".kiy[0:4]"  0 -0.59288895130157471 -0.91984516382217407 
		-0.82582169771194458 0;
	setAttr -s 5 ".kox[0:4]"  0.92071032524108887 0.80528426170349121 
		0.39228156208992004 0.56393134593963623 1;
	setAttr -s 5 ".koy[0:4]"  -0.39024665951728821 -0.59288895130157471 
		-0.91984516382217407 -0.82582169771194458 0;
createNode clipLibrary -n "clipLibrary2";
	setAttr -s 150 ".cel[0].cev";
	setAttr ".cd[0].cm" -type "characterMapping" 162 "Extra_Attributes.translateX" 
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
		2 15 "Left_Ball_Hoop.rotateZ" 2 16 "Right_Knee_Hoop.translateX" 
		1 15 "Right_Knee_Hoop.translateY" 1 16 "Right_Knee_Hoop.translateZ" 
		1 17 "Left_Knee_Hoop.translateX" 1 18 "Left_Knee_Hoop.translateY" 
		1 19 "Left_Knee_Hoop.translateZ" 1 20 "Character_Hoop.translateX" 
		1 21 "Character_Hoop.translateY" 1 22 "Character_Hoop.translateZ" 
		1 23 "Character_Hoop.rotateX" 2 17 "Character_Hoop.rotateY" 
		2 18 "Character_Hoop.rotateZ" 2 19 "R_Hip_Fk.rotateX" 2 
		20 "R_Hip_Fk.rotateY" 2 21 "R_Hip_Fk.rotateZ" 2 22 "R_Knee_Fk.rotateZ" 
		2 23 "R_Ankle_Fk.rotateX" 2 24 "R_Ankle_Fk.rotateY" 2 
		25 "R_Ankle_Fk.rotateZ" 2 26 "R_Ball_Fk.rotateX" 2 27 "R_Ball_Fk.rotateY" 
		2 28 "R_Ball_Fk.rotateZ" 2 29 "L_Hip_Fk.rotateX" 2 
		30 "L_Hip_Fk.rotateY" 2 31 "L_Hip_Fk.rotateZ" 2 32 "L_Knee_Fk.rotateZ" 
		2 33 "L_Ankle_Fk.rotateX" 2 34 "L_Ankle_Fk.rotateY" 2 
		35 "L_Ankle_Fk.rotateZ" 2 36 "L_Ball_Fk.rotateX" 2 37 "L_Ball_Fk.rotateY" 
		2 38 "L_Ball_Fk.rotateZ" 2 39 "R_Ball_IK_Fk.rotateX" 2 
		40 "R_Ball_IK_Fk.rotateY" 2 41 "R_Ball_IK_Fk.rotateZ" 2 
		42 "L_Ball_IK_Fk.rotateX" 2 43 "L_Ball_IK_Fk.rotateY" 2 
		44 "L_Ball_IK_Fk.rotateZ" 2 45 "Right_Arm_Hoop.translateX" 1 
		24 "Right_Arm_Hoop.translateY" 1 25 "Right_Arm_Hoop.translateZ" 
		1 26 "Right_Arm_Hoop.rotateX" 2 46 "Right_Arm_Hoop.rotateY" 
		2 47 "Right_Arm_Hoop.rotateZ" 2 48 "Left_Arm_Hoop.translateX" 
		1 27 "Left_Arm_Hoop.translateY" 1 28 "Left_Arm_Hoop.translateZ" 
		1 29 "Left_Arm_Hoop.rotateX" 2 49 "Left_Arm_Hoop.rotateY" 
		2 50 "Left_Arm_Hoop.rotateZ" 2 51 "Right_Arm_World.translateX" 
		1 30 "Right_Arm_World.translateY" 1 31 "Right_Arm_World.translateZ" 
		1 32 "Right_Arm_World.rotateX" 2 52 "Right_Arm_World.rotateY" 
		2 53 "Right_Arm_World.rotateZ" 2 54 "Left_Arm_World.translateX" 
		1 33 "Left_Arm_World.translateY" 1 34 "Left_Arm_World.translateZ" 
		1 35 "Left_Arm_World.rotateX" 2 55 "Left_Arm_World.rotateY" 
		2 56 "Left_Arm_World.rotateZ" 2 57 "Left_Elbow_Hoop.translateX" 
		1 36 "Left_Elbow_Hoop.translateY" 1 37 "Left_Elbow_Hoop.translateZ" 
		1 38 "Right_Elbow_Hoop.translateX" 1 39 "Right_Elbow_Hoop.translateY" 
		1 40 "Right_Elbow_Hoop.translateZ" 1 41 "R_FK_Shoulder.rotateX" 
		2 58 "R_FK_Shoulder.rotateY" 2 59 "R_FK_Shoulder.rotateZ" 
		2 60 "L_FK_Shoulder.rotateX" 2 61 "L_FK_Shoulder.rotateY" 
		2 62 "L_FK_Shoulder.rotateZ" 2 63 "R_FK_Elbow.rotateZ" 
		2 64 "L_FK_Elbow.rotateZ" 2 65 "R_FK_Wrist.rotateX" 2 
		66 "R_FK_Wrist.rotateY" 2 67 "R_FK_Wrist.rotateZ" 2 68 "L_FK_Wrist.rotateX" 
		2 69 "L_FK_Wrist.rotateY" 2 70 "L_FK_Wrist.rotateZ" 2 
		71 "Thumb_Base_L.rotateX" 2 72 "Thumb_Base_L.rotateY" 2 
		73 "Thumb_Base_L.rotateZ" 2 74 "Middle_Base_L.rotateX" 2 
		75 "Middle_Base_L.rotateY" 2 76 "Middle_Base_L.rotateZ" 2 
		77 "Pelvis.rotateX" 2 78 "Pelvis.rotateY" 2 79 "Pelvis.rotateZ" 
		2 80 "Thumb_R.rotateX" 2 81 "Thumb_R.rotateY" 2 82 "Thumb_R.rotateZ" 
		2 83 "Thumb_L.rotateX" 2 84 "Thumb_L.rotateY" 2 85 "Thumb_L.rotateZ" 
		2 86 "Middle_R.rotateX" 2 87 "Middle_R.rotateY" 2 
		88 "Middle_R.rotateZ" 2 89 "Jaw.rotateX" 2 90 "Jaw.rotateY" 
		2 91 "Jaw.rotateZ" 2 92 "Spine_2.rotateX" 2 93 "Spine_2.rotateY" 
		2 94 "Spine_2.rotateZ" 2 95 "Neck.rotateX" 2 96 "Neck.rotateY" 
		2 97 "Neck.rotateZ" 2 98 "Head.rotateX" 2 99 "Head.rotateY" 
		2 100 "Head.rotateZ" 2 101 "Spine_1.rotateX" 2 102 "Spine_1.rotateY" 
		2 103 "Spine_1.rotateZ" 2 104 "Middle_Base_R.rotateX" 2 
		105 "Middle_Base_R.rotateY" 2 106 "Middle_Base_R.rotateZ" 2 
		107 "Thumb_Base_R.rotateX" 2 108 "Thumb_Base_R.rotateY" 2 
		109 "Thumb_Base_R.rotateZ" 2 110 "Middle_L.rotateX" 2 111 "Middle_L.rotateY" 
		2 112 "Middle_L.rotateZ" 2 113  ;
	setAttr ".cd[0].cim" -type "Int32Array" 162 0 1 2 3
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
		 158 159 160 161 ;
createNode lightLinker -n "lightLinker1";
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
select -ne :initialShadingGroup;
	setAttr -k on ".nds";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
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
connectAttr "hom_dash_skidSource.st" "clipLibrary2.st[0]";
connectAttr "hom_dash_skidSource.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL434.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL435.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary2.cel[0].cev[2].cevr"
		;
connectAttr "Motion_Root_translateY.a" "clipLibrary2.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary2.cel[0].cev[4].cevr"
		;
connectAttr "Motion_Root_rotateY.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "animCurveTU89.a" "clipLibrary2.cel[0].cev[6].cevr";
connectAttr "animCurveTU90.a" "clipLibrary2.cel[0].cev[7].cevr";
connectAttr "animCurveTU91.a" "clipLibrary2.cel[0].cev[8].cevr";
connectAttr "animCurveTU92.a" "clipLibrary2.cel[0].cev[9].cevr";
connectAttr "animCurveTU93.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU94.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU95.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU96.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA1233.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA1234.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA1235.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL439.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL440.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL441.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL442.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL443.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL444.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA1236.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA1237.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA1238.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL445.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL446.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL447.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA1239.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA1240.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA1241.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA1242.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA1243.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA1244.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA1245.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA1246.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA1247.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTL448.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTL449.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTL450.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTL451.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTL452.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTL453.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL454.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL455.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL456.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTA1248.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTA1249.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTA1250.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTA1251.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTA1252.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTA1253.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA1254.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA1255.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA1256.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA1257.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA1258.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA1259.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA1260.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA1261.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA1262.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA1263.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA1264.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA1265.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA1266.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA1267.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA1268.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA1269.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA1270.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA1271.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA1272.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA1273.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA1274.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA1275.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA1276.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTL463.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL464.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL465.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA1283.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA1284.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA1285.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL466.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL467.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL468.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA1286.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA1287.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA1288.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL469.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL470.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL471.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTL472.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTL473.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTL474.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTA1289.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTA1290.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTA1291.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTA1292.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTA1293.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTA1294.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA1295.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA1296.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA1297.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA1298.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA1299.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA1300.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA1301.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA1302.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA1303.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA1304.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA1305.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA1306.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA1307.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA1308.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA1309.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA1310.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA1311.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA1312.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA1313.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA1314.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA1315.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA1316.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA1317.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA1318.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA1319.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA1320.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA1321.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA1322.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA1323.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA1324.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA1325.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA1326.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA1327.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA1328.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA1329.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA1330.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA1331.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA1332.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA1333.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA1334.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA1335.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA1336.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA1337.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA1338.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA1339.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA1340.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA1341.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA1342.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA1343.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA1344.a" "clipLibrary2.cel[0].cev[161].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[2].olnk";
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
// End of hom_dash_skid.ma
