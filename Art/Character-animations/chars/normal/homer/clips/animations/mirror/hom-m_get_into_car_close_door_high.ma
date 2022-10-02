//Maya ASCII 4.0 scene
//Name: hom-m_get_into_car_close_door_high.ma
//Last modified: Tue, Jul 23, 2002 11:52:44 AM
requires maya "4.0";
requires "p3dmayaexp" "17.9.1.0";
requires "p3dSimpleShader" "17.1";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "hom_get_into_car_close_door_high";
	setAttr ".ihi" 0;
	setAttr ".du" 12;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL288";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTL -n "animCurveTL289";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTL -n "animCurveTL290";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -1.1049215982034806 1 -1.100371908694626 
		2 -1.0622841790015123 3 -1.0105057542736737 4 -0.96488397966064532 5 -0.94526620031196129 
		6 -0.95131727921567799 7 -0.96760864560858839 8 -0.99134749401333344 9 -1.0197410189525542 
		10 -1.0499964149488916 11 -1.0793208765249866 12 -1.1049215982034806;
createNode animCurveTL -n "animCurveTL291";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0;
createNode animCurveTL -n "animCurveTL292";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.61375752807398076 1 0.61375752807398076 
		2 0.61375752807398076 3 0.61375752807398076 4 0.61375752807398076 5 0.61375752807398076 
		6 0.61375752807398076 7 0.61375752807398076 8 0.61375752807398076 9 0.61375752807398076 
		10 0.61375752807398076 11 0.61375752807398076 12 0.61375752807398076;
createNode animCurveTA -n "animCurveTA792";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0;
createNode animCurveTU -n "animCurveTU57";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTU -n "animCurveTU58";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTU -n "animCurveTU59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTU -n "animCurveTU60";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTU -n "animCurveTU61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTU -n "animCurveTU62";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTU -n "animCurveTU63";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 12 1;
createNode animCurveTU -n "animCurveTU64";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 12 1;
createNode animCurveTA -n "animCurveTA793";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA794";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA795";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTL -n "animCurveTL293";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTL -n "animCurveTL294";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTL -n "animCurveTL295";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTL -n "animCurveTL296";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.9332537429790313 5 -1.9332537429790313 
		12 -1.9332537429790313;
createNode animCurveTL -n "animCurveTL297";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.3102926386178941 5 1.3102926386178941 
		12 1.3102926386178941;
createNode animCurveTL -n "animCurveTL298";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.4192359250534907 5 1.4192359250534907 
		12 1.4192359250534907;
createNode animCurveTA -n "animCurveTA796";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -6.5046911724775329 5 -6.5046911724775329 
		12 -6.5046911724775329;
createNode animCurveTA -n "animCurveTA797";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -3.3090781707350478 5 -3.3090781707350478 
		12 -3.3090781707350478;
createNode animCurveTA -n "animCurveTA798";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -4.2722871456273142 5 -4.2722871456273142 
		12 -4.2722871456273142;
createNode animCurveTL -n "animCurveTL299";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.4091301774705804 5 -1.4091301774705804 
		12 -1.4091301774705804;
createNode animCurveTL -n "animCurveTL300";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.2638806898773334 5 1.2638806898773334 
		12 1.2638806898773334;
createNode animCurveTL -n "animCurveTL301";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.430750031861709 5 1.430750031861709 
		12 1.430750031861709;
createNode animCurveTA -n "animCurveTA799";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA800";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA801";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA802";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA803";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA804";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA805";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA806";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA807";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTL -n "animCurveTL302";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTL -n "animCurveTL303";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTL -n "animCurveTL304";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 5 1 12 1;
createNode animCurveTL -n "animCurveTL305";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.034660776702225261 5 -0.034660776702225261 
		12 -0.034660776702225261;
createNode animCurveTL -n "animCurveTL306";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.43236842264083392 5 0.43236842264083392 
		12 0.43236842264083392;
createNode animCurveTL -n "animCurveTL307";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.022596790343715 5 1.022596790343715 
		12 1.022596790343715;
createNode animCurveTL -n "animCurveTL308";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.6430877726404629 5 -1.4056701743799815 
		12 -1.6430877726404629;
createNode animCurveTL -n "animCurveTL309";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.8165283848315497 5 1.8165283848315497 
		12 1.8165283848315497;
createNode animCurveTL -n "animCurveTL310";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.91269596990779223 5 0.91269596990779223 
		12 0.91269596990779223;
createNode animCurveTA -n "animCurveTA808";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -22.015891406447029 5 -12.662850904412618 
		12 -22.015891406447029;
createNode animCurveTA -n "animCurveTA809";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.3737820963010432 5 -2.9461983826611342 
		12 1.3737820963010432;
createNode animCurveTA -n "animCurveTA810";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.04386055886445716 5 -23.379622524262416 
		12 0.04386055886445716;
createNode animCurveTA -n "animCurveTA811";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA812";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA813";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA814";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA815";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA816";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA817";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA818";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA819";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA820";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA821";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA822";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA823";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA824";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA825";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA826";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA827";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA828";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA829";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA830";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA831";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA832";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA833";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA834";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA835";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA836";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTL -n "animCurveTL311";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.5198069948790518 12 -0.5198069948790518;
createNode animCurveTL -n "animCurveTL312";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.72394202659893114 12 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL313";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.36439499068905612 12 0.36439499068905612;
createNode animCurveTA -n "animCurveTA837";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.7976222737965299 12 7.7976222737965299;
createNode animCurveTA -n "animCurveTA838";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 30.409274105849079 12 30.409274105849079;
createNode animCurveTA -n "animCurveTA839";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 64.859940280210878 12 64.859940280210878;
createNode animCurveTL -n "animCurveTL314";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.43524234076486068 12 0.43524234076486068;
createNode animCurveTL -n "animCurveTL315";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.82665738350180629 12 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL316";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.27773886459742925 12 0.27773886459742925;
createNode animCurveTA -n "animCurveTA840";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA841";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -28.652637602052774 12 -28.652637602052774;
createNode animCurveTA -n "animCurveTA842";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -64.676908227303443 12 -64.676908227303443;
createNode animCurveTL -n "animCurveTL317";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -3.576063470533156 5 -2.9611732426158608 
		12 -3.576063470533156;
createNode animCurveTL -n "animCurveTL318";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 3.1500943872743385 5 3.7667770375855198 
		12 3.1500943872743385;
createNode animCurveTL -n "animCurveTL319";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.4810695043531394 5 1.7643389560619624 
		12 1.4810695043531394;
createNode animCurveTA -n "animCurveTA843";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 14.341505413034501 5 18.07051120818576 
		12 14.341505413034501;
createNode animCurveTA -n "animCurveTA844";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 44.172784492399941 5 27.042197631862905 
		12 44.172784492399941;
createNode animCurveTA -n "animCurveTA845";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 63.810826203087203 5 44.163945774207242 
		12 63.810826203087203;
createNode animCurveTL -n "animCurveTL320";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.8068573853041325 5 -0.77072708169342274 
		12 -1.8068573853041325;
createNode animCurveTL -n "animCurveTL321";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 3.1644413576129944 5 3.4366811343504309 
		12 3.1644413576129944;
createNode animCurveTL -n "animCurveTL322";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.5030626595891841 5 2.082204774845231 
		12 1.5030626595891841;
createNode animCurveTA -n "animCurveTA846";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.1807744810933176 5 -32.318402203478271 
		12 -2.1807744810933176;
createNode animCurveTA -n "animCurveTA847";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -33.611906574651975 5 -22.509929029446681 
		12 -33.611906574651975;
createNode animCurveTA -n "animCurveTA848";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -58.701760039742901 5 30.298008427764341 
		12 -58.701760039742901;
createNode animCurveTL -n "animCurveTL323";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.31054502397108613 5 0.31054502397108613 
		12 0.31054502397108613;
createNode animCurveTL -n "animCurveTL324";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.55640530640609931 5 -0.55640530640609931 
		12 -0.55640530640609931;
createNode animCurveTL -n "animCurveTL325";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.57914122395678103 5 -0.57914122395678103 
		12 -0.57914122395678103;
createNode animCurveTL -n "animCurveTL326";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.37736680843384973 5 -0.37736680843384973 
		12 -0.37736680843384973;
createNode animCurveTL -n "animCurveTL327";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.54343311259648019 5 -0.54343311259648019 
		12 -0.54343311259648019;
createNode animCurveTL -n "animCurveTL328";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.97043124551903082 5 -0.97043124551903082 
		12 -0.97043124551903082;
createNode animCurveTA -n "animCurveTA849";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.061808866237337522 5 -0.061808866237337522 
		12 -0.061808866237337522;
createNode animCurveTA -n "animCurveTA850";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -59.058178941076754 5 -59.058178941076754 
		12 -59.058178941076754;
createNode animCurveTA -n "animCurveTA851";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 16.579147429757843 5 16.579147429757843 
		12 16.579147429757843;
createNode animCurveTA -n "animCurveTA852";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 12.253734489678925 5 12.253734489678925 
		12 12.253734489678925;
createNode animCurveTA -n "animCurveTA853";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -65.746751280844961 5 -65.746751280844961 
		12 -65.746751280844961;
createNode animCurveTA -n "animCurveTA854";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA855";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 15.711328223519057 5 15.711328223519057 
		12 15.711328223519057;
createNode animCurveTA -n "animCurveTA856";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.5572674112203622 5 8.5572674112203622 
		12 8.5572674112203622;
createNode animCurveTA -n "animCurveTA857";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA858";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA859";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA860";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA861";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA862";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA863";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.2533422302317216 5 8.2533422302317216 
		12 8.2533422302317216;
createNode animCurveTA -n "animCurveTA864";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 23.263402056531085 5 23.263402056531085 
		12 23.263402056531085;
createNode animCurveTA -n "animCurveTA865";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 20.166277752815617 5 20.166277752815617 
		12 20.166277752815617;
createNode animCurveTA -n "animCurveTA866";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA867";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA868";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 33.429092416277157 5 33.429092416277157 
		12 33.429092416277157;
createNode animCurveTA -n "animCurveTA869";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA870";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA871";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA872";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA873";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA874";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 12 13.994403295754109;
createNode animCurveTA -n "animCurveTA875";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA876";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA877";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 12 13.994403295754109;
createNode animCurveTA -n "animCurveTA878";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA879";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA880";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 17.254116939558369 5 17.254116939558369 
		12 17.254116939558369;
createNode animCurveTA -n "animCurveTA881";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA882";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA883";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA884";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 -11.37102964548717 12 0;
createNode animCurveTA -n "animCurveTA885";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0.57536973090558297 12 0;
createNode animCurveTA -n "animCurveTA886";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 10.842908218073994 5 21.192869117571593 
		12 10.842908218073994;
createNode animCurveTA -n "animCurveTA887";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 20.076803070551748 12 0;
createNode animCurveTA -n "animCurveTA888";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA889";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA890";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 -0.31225290500201935 12 0;
createNode animCurveTA -n "animCurveTA891";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 -50.537608392187529 12 0;
createNode animCurveTA -n "animCurveTA892";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 21.122873819731893 5 -12.328363412893864 
		12 21.122873819731893;
createNode animCurveTA -n "animCurveTA893";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 11.266439246406184 12 0;
createNode animCurveTA -n "animCurveTA894";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 -8.2514393232251884 12 0;
createNode animCurveTA -n "animCurveTA895";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 4.6912887305040609 12 0;
createNode animCurveTA -n "animCurveTA896";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA897";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA898";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.080064458283051 5 27.080064458283051 
		12 27.080064458283051;
createNode animCurveTA -n "animCurveTA899";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 10.423754966968488 5 10.423754966968488 
		12 10.423754966968488;
createNode animCurveTA -n "animCurveTA900";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.722848255843903 5 27.722848255843903 
		12 27.722848255843903;
createNode animCurveTA -n "animCurveTA901";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 21.576484776388227 5 21.576484776388227 
		12 21.576484776388227;
createNode animCurveTA -n "animCurveTA902";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA903";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA904";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.911632519594587 5 27.911632519594587 
		12 27.911632519594587;
createNode clipLibrary -n "clipLibrary3";
	setAttr -s 162 ".cel[0].cev";
createNode clipLibrary -n "clipLibrary4";
	setAttr -s 162 ".cel[0].cev";
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
connectAttr "hom_get_into_car_close_door_high.st" "clipLibrary3.st[0]";
connectAttr "hom_get_into_car_close_door_high.du" "clipLibrary3.du[0]";
connectAttr "animCurveTL288.a" "clipLibrary3.cel[0].cev[0].cevr";
connectAttr "animCurveTL289.a" "clipLibrary3.cel[0].cev[1].cevr";
connectAttr "animCurveTL290.a" "clipLibrary3.cel[0].cev[2].cevr";
connectAttr "animCurveTL291.a" "clipLibrary3.cel[0].cev[3].cevr";
connectAttr "animCurveTL292.a" "clipLibrary3.cel[0].cev[4].cevr";
connectAttr "animCurveTA792.a" "clipLibrary3.cel[0].cev[5].cevr";
connectAttr "animCurveTU57.a" "clipLibrary3.cel[0].cev[6].cevr";
connectAttr "animCurveTU58.a" "clipLibrary3.cel[0].cev[7].cevr";
connectAttr "animCurveTU59.a" "clipLibrary3.cel[0].cev[8].cevr";
connectAttr "animCurveTU60.a" "clipLibrary3.cel[0].cev[9].cevr";
connectAttr "animCurveTU61.a" "clipLibrary3.cel[0].cev[10].cevr";
connectAttr "animCurveTU62.a" "clipLibrary3.cel[0].cev[11].cevr";
connectAttr "animCurveTU63.a" "clipLibrary3.cel[0].cev[12].cevr";
connectAttr "animCurveTU64.a" "clipLibrary3.cel[0].cev[13].cevr";
connectAttr "animCurveTA793.a" "clipLibrary3.cel[0].cev[14].cevr";
connectAttr "animCurveTA794.a" "clipLibrary3.cel[0].cev[15].cevr";
connectAttr "animCurveTA795.a" "clipLibrary3.cel[0].cev[16].cevr";
connectAttr "animCurveTL293.a" "clipLibrary3.cel[0].cev[17].cevr";
connectAttr "animCurveTL294.a" "clipLibrary3.cel[0].cev[18].cevr";
connectAttr "animCurveTL295.a" "clipLibrary3.cel[0].cev[19].cevr";
connectAttr "animCurveTL296.a" "clipLibrary3.cel[0].cev[20].cevr";
connectAttr "animCurveTL297.a" "clipLibrary3.cel[0].cev[21].cevr";
connectAttr "animCurveTL298.a" "clipLibrary3.cel[0].cev[22].cevr";
connectAttr "animCurveTA796.a" "clipLibrary3.cel[0].cev[23].cevr";
connectAttr "animCurveTA797.a" "clipLibrary3.cel[0].cev[24].cevr";
connectAttr "animCurveTA798.a" "clipLibrary3.cel[0].cev[25].cevr";
connectAttr "animCurveTL299.a" "clipLibrary3.cel[0].cev[26].cevr";
connectAttr "animCurveTL300.a" "clipLibrary3.cel[0].cev[27].cevr";
connectAttr "animCurveTL301.a" "clipLibrary3.cel[0].cev[28].cevr";
connectAttr "animCurveTA799.a" "clipLibrary3.cel[0].cev[29].cevr";
connectAttr "animCurveTA800.a" "clipLibrary3.cel[0].cev[30].cevr";
connectAttr "animCurveTA801.a" "clipLibrary3.cel[0].cev[31].cevr";
connectAttr "animCurveTA802.a" "clipLibrary3.cel[0].cev[32].cevr";
connectAttr "animCurveTA803.a" "clipLibrary3.cel[0].cev[33].cevr";
connectAttr "animCurveTA804.a" "clipLibrary3.cel[0].cev[34].cevr";
connectAttr "animCurveTA805.a" "clipLibrary3.cel[0].cev[35].cevr";
connectAttr "animCurveTA806.a" "clipLibrary3.cel[0].cev[36].cevr";
connectAttr "animCurveTA807.a" "clipLibrary3.cel[0].cev[37].cevr";
connectAttr "animCurveTL302.a" "clipLibrary3.cel[0].cev[38].cevr";
connectAttr "animCurveTL303.a" "clipLibrary3.cel[0].cev[39].cevr";
connectAttr "animCurveTL304.a" "clipLibrary3.cel[0].cev[40].cevr";
connectAttr "animCurveTL305.a" "clipLibrary3.cel[0].cev[41].cevr";
connectAttr "animCurveTL306.a" "clipLibrary3.cel[0].cev[42].cevr";
connectAttr "animCurveTL307.a" "clipLibrary3.cel[0].cev[43].cevr";
connectAttr "animCurveTL308.a" "clipLibrary3.cel[0].cev[44].cevr";
connectAttr "animCurveTL309.a" "clipLibrary3.cel[0].cev[45].cevr";
connectAttr "animCurveTL310.a" "clipLibrary3.cel[0].cev[46].cevr";
connectAttr "animCurveTA808.a" "clipLibrary3.cel[0].cev[47].cevr";
connectAttr "animCurveTA809.a" "clipLibrary3.cel[0].cev[48].cevr";
connectAttr "animCurveTA810.a" "clipLibrary3.cel[0].cev[49].cevr";
connectAttr "animCurveTA811.a" "clipLibrary3.cel[0].cev[50].cevr";
connectAttr "animCurveTA812.a" "clipLibrary3.cel[0].cev[51].cevr";
connectAttr "animCurveTA813.a" "clipLibrary3.cel[0].cev[52].cevr";
connectAttr "animCurveTA814.a" "clipLibrary3.cel[0].cev[53].cevr";
connectAttr "animCurveTA815.a" "clipLibrary3.cel[0].cev[54].cevr";
connectAttr "animCurveTA816.a" "clipLibrary3.cel[0].cev[55].cevr";
connectAttr "animCurveTA817.a" "clipLibrary3.cel[0].cev[56].cevr";
connectAttr "animCurveTA818.a" "clipLibrary3.cel[0].cev[57].cevr";
connectAttr "animCurveTA819.a" "clipLibrary3.cel[0].cev[58].cevr";
connectAttr "animCurveTA820.a" "clipLibrary3.cel[0].cev[59].cevr";
connectAttr "animCurveTA821.a" "clipLibrary3.cel[0].cev[60].cevr";
connectAttr "animCurveTA822.a" "clipLibrary3.cel[0].cev[61].cevr";
connectAttr "animCurveTA823.a" "clipLibrary3.cel[0].cev[62].cevr";
connectAttr "animCurveTA824.a" "clipLibrary3.cel[0].cev[63].cevr";
connectAttr "animCurveTA825.a" "clipLibrary3.cel[0].cev[64].cevr";
connectAttr "animCurveTA826.a" "clipLibrary3.cel[0].cev[65].cevr";
connectAttr "animCurveTA827.a" "clipLibrary3.cel[0].cev[66].cevr";
connectAttr "animCurveTA828.a" "clipLibrary3.cel[0].cev[67].cevr";
connectAttr "animCurveTA829.a" "clipLibrary3.cel[0].cev[68].cevr";
connectAttr "animCurveTA830.a" "clipLibrary3.cel[0].cev[69].cevr";
connectAttr "animCurveTA831.a" "clipLibrary3.cel[0].cev[70].cevr";
connectAttr "animCurveTA832.a" "clipLibrary3.cel[0].cev[71].cevr";
connectAttr "animCurveTA833.a" "clipLibrary3.cel[0].cev[72].cevr";
connectAttr "animCurveTA834.a" "clipLibrary3.cel[0].cev[73].cevr";
connectAttr "animCurveTA835.a" "clipLibrary3.cel[0].cev[74].cevr";
connectAttr "animCurveTA836.a" "clipLibrary3.cel[0].cev[75].cevr";
connectAttr "animCurveTL311.a" "clipLibrary3.cel[0].cev[76].cevr";
connectAttr "animCurveTL312.a" "clipLibrary3.cel[0].cev[77].cevr";
connectAttr "animCurveTL313.a" "clipLibrary3.cel[0].cev[78].cevr";
connectAttr "animCurveTA837.a" "clipLibrary3.cel[0].cev[79].cevr";
connectAttr "animCurveTA838.a" "clipLibrary3.cel[0].cev[80].cevr";
connectAttr "animCurveTA839.a" "clipLibrary3.cel[0].cev[81].cevr";
connectAttr "animCurveTL314.a" "clipLibrary3.cel[0].cev[82].cevr";
connectAttr "animCurveTL315.a" "clipLibrary3.cel[0].cev[83].cevr";
connectAttr "animCurveTL316.a" "clipLibrary3.cel[0].cev[84].cevr";
connectAttr "animCurveTA840.a" "clipLibrary3.cel[0].cev[85].cevr";
connectAttr "animCurveTA841.a" "clipLibrary3.cel[0].cev[86].cevr";
connectAttr "animCurveTA842.a" "clipLibrary3.cel[0].cev[87].cevr";
connectAttr "animCurveTL317.a" "clipLibrary3.cel[0].cev[88].cevr";
connectAttr "animCurveTL318.a" "clipLibrary3.cel[0].cev[89].cevr";
connectAttr "animCurveTL319.a" "clipLibrary3.cel[0].cev[90].cevr";
connectAttr "animCurveTA843.a" "clipLibrary3.cel[0].cev[91].cevr";
connectAttr "animCurveTA844.a" "clipLibrary3.cel[0].cev[92].cevr";
connectAttr "animCurveTA845.a" "clipLibrary3.cel[0].cev[93].cevr";
connectAttr "animCurveTL320.a" "clipLibrary3.cel[0].cev[94].cevr";
connectAttr "animCurveTL321.a" "clipLibrary3.cel[0].cev[95].cevr";
connectAttr "animCurveTL322.a" "clipLibrary3.cel[0].cev[96].cevr";
connectAttr "animCurveTA846.a" "clipLibrary3.cel[0].cev[97].cevr";
connectAttr "animCurveTA847.a" "clipLibrary3.cel[0].cev[98].cevr";
connectAttr "animCurveTA848.a" "clipLibrary3.cel[0].cev[99].cevr";
connectAttr "animCurveTL323.a" "clipLibrary3.cel[0].cev[100].cevr";
connectAttr "animCurveTL324.a" "clipLibrary3.cel[0].cev[101].cevr";
connectAttr "animCurveTL325.a" "clipLibrary3.cel[0].cev[102].cevr";
connectAttr "animCurveTL326.a" "clipLibrary3.cel[0].cev[103].cevr";
connectAttr "animCurveTL327.a" "clipLibrary3.cel[0].cev[104].cevr";
connectAttr "animCurveTL328.a" "clipLibrary3.cel[0].cev[105].cevr";
connectAttr "animCurveTA849.a" "clipLibrary3.cel[0].cev[106].cevr";
connectAttr "animCurveTA850.a" "clipLibrary3.cel[0].cev[107].cevr";
connectAttr "animCurveTA851.a" "clipLibrary3.cel[0].cev[108].cevr";
connectAttr "animCurveTA852.a" "clipLibrary3.cel[0].cev[109].cevr";
connectAttr "animCurveTA853.a" "clipLibrary3.cel[0].cev[110].cevr";
connectAttr "animCurveTA854.a" "clipLibrary3.cel[0].cev[111].cevr";
connectAttr "animCurveTA855.a" "clipLibrary3.cel[0].cev[112].cevr";
connectAttr "animCurveTA856.a" "clipLibrary3.cel[0].cev[113].cevr";
connectAttr "animCurveTA857.a" "clipLibrary3.cel[0].cev[114].cevr";
connectAttr "animCurveTA858.a" "clipLibrary3.cel[0].cev[115].cevr";
connectAttr "animCurveTA859.a" "clipLibrary3.cel[0].cev[116].cevr";
connectAttr "animCurveTA860.a" "clipLibrary3.cel[0].cev[117].cevr";
connectAttr "animCurveTA861.a" "clipLibrary3.cel[0].cev[118].cevr";
connectAttr "animCurveTA862.a" "clipLibrary3.cel[0].cev[119].cevr";
connectAttr "animCurveTA863.a" "clipLibrary3.cel[0].cev[120].cevr";
connectAttr "animCurveTA864.a" "clipLibrary3.cel[0].cev[121].cevr";
connectAttr "animCurveTA865.a" "clipLibrary3.cel[0].cev[122].cevr";
connectAttr "animCurveTA866.a" "clipLibrary3.cel[0].cev[123].cevr";
connectAttr "animCurveTA867.a" "clipLibrary3.cel[0].cev[124].cevr";
connectAttr "animCurveTA868.a" "clipLibrary3.cel[0].cev[125].cevr";
connectAttr "animCurveTA869.a" "clipLibrary3.cel[0].cev[126].cevr";
connectAttr "animCurveTA870.a" "clipLibrary3.cel[0].cev[127].cevr";
connectAttr "animCurveTA871.a" "clipLibrary3.cel[0].cev[128].cevr";
connectAttr "animCurveTA872.a" "clipLibrary3.cel[0].cev[129].cevr";
connectAttr "animCurveTA873.a" "clipLibrary3.cel[0].cev[130].cevr";
connectAttr "animCurveTA874.a" "clipLibrary3.cel[0].cev[131].cevr";
connectAttr "animCurveTA875.a" "clipLibrary3.cel[0].cev[132].cevr";
connectAttr "animCurveTA876.a" "clipLibrary3.cel[0].cev[133].cevr";
connectAttr "animCurveTA877.a" "clipLibrary3.cel[0].cev[134].cevr";
connectAttr "animCurveTA878.a" "clipLibrary3.cel[0].cev[135].cevr";
connectAttr "animCurveTA879.a" "clipLibrary3.cel[0].cev[136].cevr";
connectAttr "animCurveTA880.a" "clipLibrary3.cel[0].cev[137].cevr";
connectAttr "animCurveTA881.a" "clipLibrary3.cel[0].cev[138].cevr";
connectAttr "animCurveTA882.a" "clipLibrary3.cel[0].cev[139].cevr";
connectAttr "animCurveTA883.a" "clipLibrary3.cel[0].cev[140].cevr";
connectAttr "animCurveTA884.a" "clipLibrary3.cel[0].cev[141].cevr";
connectAttr "animCurveTA885.a" "clipLibrary3.cel[0].cev[142].cevr";
connectAttr "animCurveTA886.a" "clipLibrary3.cel[0].cev[143].cevr";
connectAttr "animCurveTA887.a" "clipLibrary3.cel[0].cev[144].cevr";
connectAttr "animCurveTA888.a" "clipLibrary3.cel[0].cev[145].cevr";
connectAttr "animCurveTA889.a" "clipLibrary3.cel[0].cev[146].cevr";
connectAttr "animCurveTA890.a" "clipLibrary3.cel[0].cev[147].cevr";
connectAttr "animCurveTA891.a" "clipLibrary3.cel[0].cev[148].cevr";
connectAttr "animCurveTA892.a" "clipLibrary3.cel[0].cev[149].cevr";
connectAttr "animCurveTA893.a" "clipLibrary3.cel[0].cev[150].cevr";
connectAttr "animCurveTA894.a" "clipLibrary3.cel[0].cev[151].cevr";
connectAttr "animCurveTA895.a" "clipLibrary3.cel[0].cev[152].cevr";
connectAttr "animCurveTA896.a" "clipLibrary3.cel[0].cev[153].cevr";
connectAttr "animCurveTA897.a" "clipLibrary3.cel[0].cev[154].cevr";
connectAttr "animCurveTA898.a" "clipLibrary3.cel[0].cev[155].cevr";
connectAttr "animCurveTA899.a" "clipLibrary3.cel[0].cev[156].cevr";
connectAttr "animCurveTA900.a" "clipLibrary3.cel[0].cev[157].cevr";
connectAttr "animCurveTA901.a" "clipLibrary3.cel[0].cev[158].cevr";
connectAttr "animCurveTA902.a" "clipLibrary3.cel[0].cev[159].cevr";
connectAttr "animCurveTA903.a" "clipLibrary3.cel[0].cev[160].cevr";
connectAttr "animCurveTA904.a" "clipLibrary3.cel[0].cev[161].cevr";
connectAttr "hom_get_into_car_close_door_high.st" "clipLibrary4.st[0]";
connectAttr "hom_get_into_car_close_door_high.du" "clipLibrary4.du[0]";
connectAttr "animCurveTL288.a" "clipLibrary4.cel[0].cev[0].cevr";
connectAttr "animCurveTL289.a" "clipLibrary4.cel[0].cev[1].cevr";
connectAttr "animCurveTL290.a" "clipLibrary4.cel[0].cev[2].cevr";
connectAttr "animCurveTL291.a" "clipLibrary4.cel[0].cev[3].cevr";
connectAttr "animCurveTL292.a" "clipLibrary4.cel[0].cev[4].cevr";
connectAttr "animCurveTA792.a" "clipLibrary4.cel[0].cev[5].cevr";
connectAttr "animCurveTU57.a" "clipLibrary4.cel[0].cev[6].cevr";
connectAttr "animCurveTU58.a" "clipLibrary4.cel[0].cev[7].cevr";
connectAttr "animCurveTU59.a" "clipLibrary4.cel[0].cev[8].cevr";
connectAttr "animCurveTU60.a" "clipLibrary4.cel[0].cev[9].cevr";
connectAttr "animCurveTU61.a" "clipLibrary4.cel[0].cev[10].cevr";
connectAttr "animCurveTU62.a" "clipLibrary4.cel[0].cev[11].cevr";
connectAttr "animCurveTU63.a" "clipLibrary4.cel[0].cev[12].cevr";
connectAttr "animCurveTU64.a" "clipLibrary4.cel[0].cev[13].cevr";
connectAttr "animCurveTA793.a" "clipLibrary4.cel[0].cev[14].cevr";
connectAttr "animCurveTA794.a" "clipLibrary4.cel[0].cev[15].cevr";
connectAttr "animCurveTA795.a" "clipLibrary4.cel[0].cev[16].cevr";
connectAttr "animCurveTL293.a" "clipLibrary4.cel[0].cev[17].cevr";
connectAttr "animCurveTL294.a" "clipLibrary4.cel[0].cev[18].cevr";
connectAttr "animCurveTL295.a" "clipLibrary4.cel[0].cev[19].cevr";
connectAttr "animCurveTL296.a" "clipLibrary4.cel[0].cev[20].cevr";
connectAttr "animCurveTL297.a" "clipLibrary4.cel[0].cev[21].cevr";
connectAttr "animCurveTL298.a" "clipLibrary4.cel[0].cev[22].cevr";
connectAttr "animCurveTA796.a" "clipLibrary4.cel[0].cev[23].cevr";
connectAttr "animCurveTA797.a" "clipLibrary4.cel[0].cev[24].cevr";
connectAttr "animCurveTA798.a" "clipLibrary4.cel[0].cev[25].cevr";
connectAttr "animCurveTL299.a" "clipLibrary4.cel[0].cev[26].cevr";
connectAttr "animCurveTL300.a" "clipLibrary4.cel[0].cev[27].cevr";
connectAttr "animCurveTL301.a" "clipLibrary4.cel[0].cev[28].cevr";
connectAttr "animCurveTA799.a" "clipLibrary4.cel[0].cev[29].cevr";
connectAttr "animCurveTA800.a" "clipLibrary4.cel[0].cev[30].cevr";
connectAttr "animCurveTA801.a" "clipLibrary4.cel[0].cev[31].cevr";
connectAttr "animCurveTA802.a" "clipLibrary4.cel[0].cev[32].cevr";
connectAttr "animCurveTA803.a" "clipLibrary4.cel[0].cev[33].cevr";
connectAttr "animCurveTA804.a" "clipLibrary4.cel[0].cev[34].cevr";
connectAttr "animCurveTA805.a" "clipLibrary4.cel[0].cev[35].cevr";
connectAttr "animCurveTA806.a" "clipLibrary4.cel[0].cev[36].cevr";
connectAttr "animCurveTA807.a" "clipLibrary4.cel[0].cev[37].cevr";
connectAttr "animCurveTL302.a" "clipLibrary4.cel[0].cev[38].cevr";
connectAttr "animCurveTL303.a" "clipLibrary4.cel[0].cev[39].cevr";
connectAttr "animCurveTL304.a" "clipLibrary4.cel[0].cev[40].cevr";
connectAttr "animCurveTL305.a" "clipLibrary4.cel[0].cev[41].cevr";
connectAttr "animCurveTL306.a" "clipLibrary4.cel[0].cev[42].cevr";
connectAttr "animCurveTL307.a" "clipLibrary4.cel[0].cev[43].cevr";
connectAttr "animCurveTL308.a" "clipLibrary4.cel[0].cev[44].cevr";
connectAttr "animCurveTL309.a" "clipLibrary4.cel[0].cev[45].cevr";
connectAttr "animCurveTL310.a" "clipLibrary4.cel[0].cev[46].cevr";
connectAttr "animCurveTA808.a" "clipLibrary4.cel[0].cev[47].cevr";
connectAttr "animCurveTA809.a" "clipLibrary4.cel[0].cev[48].cevr";
connectAttr "animCurveTA810.a" "clipLibrary4.cel[0].cev[49].cevr";
connectAttr "animCurveTA811.a" "clipLibrary4.cel[0].cev[50].cevr";
connectAttr "animCurveTA812.a" "clipLibrary4.cel[0].cev[51].cevr";
connectAttr "animCurveTA813.a" "clipLibrary4.cel[0].cev[52].cevr";
connectAttr "animCurveTA814.a" "clipLibrary4.cel[0].cev[53].cevr";
connectAttr "animCurveTA815.a" "clipLibrary4.cel[0].cev[54].cevr";
connectAttr "animCurveTA816.a" "clipLibrary4.cel[0].cev[55].cevr";
connectAttr "animCurveTA817.a" "clipLibrary4.cel[0].cev[56].cevr";
connectAttr "animCurveTA818.a" "clipLibrary4.cel[0].cev[57].cevr";
connectAttr "animCurveTA819.a" "clipLibrary4.cel[0].cev[58].cevr";
connectAttr "animCurveTA820.a" "clipLibrary4.cel[0].cev[59].cevr";
connectAttr "animCurveTA821.a" "clipLibrary4.cel[0].cev[60].cevr";
connectAttr "animCurveTA822.a" "clipLibrary4.cel[0].cev[61].cevr";
connectAttr "animCurveTA823.a" "clipLibrary4.cel[0].cev[62].cevr";
connectAttr "animCurveTA824.a" "clipLibrary4.cel[0].cev[63].cevr";
connectAttr "animCurveTA825.a" "clipLibrary4.cel[0].cev[64].cevr";
connectAttr "animCurveTA826.a" "clipLibrary4.cel[0].cev[65].cevr";
connectAttr "animCurveTA827.a" "clipLibrary4.cel[0].cev[66].cevr";
connectAttr "animCurveTA828.a" "clipLibrary4.cel[0].cev[67].cevr";
connectAttr "animCurveTA829.a" "clipLibrary4.cel[0].cev[68].cevr";
connectAttr "animCurveTA830.a" "clipLibrary4.cel[0].cev[69].cevr";
connectAttr "animCurveTA831.a" "clipLibrary4.cel[0].cev[70].cevr";
connectAttr "animCurveTA832.a" "clipLibrary4.cel[0].cev[71].cevr";
connectAttr "animCurveTA833.a" "clipLibrary4.cel[0].cev[72].cevr";
connectAttr "animCurveTA834.a" "clipLibrary4.cel[0].cev[73].cevr";
connectAttr "animCurveTA835.a" "clipLibrary4.cel[0].cev[74].cevr";
connectAttr "animCurveTA836.a" "clipLibrary4.cel[0].cev[75].cevr";
connectAttr "animCurveTL311.a" "clipLibrary4.cel[0].cev[76].cevr";
connectAttr "animCurveTL312.a" "clipLibrary4.cel[0].cev[77].cevr";
connectAttr "animCurveTL313.a" "clipLibrary4.cel[0].cev[78].cevr";
connectAttr "animCurveTA837.a" "clipLibrary4.cel[0].cev[79].cevr";
connectAttr "animCurveTA838.a" "clipLibrary4.cel[0].cev[80].cevr";
connectAttr "animCurveTA839.a" "clipLibrary4.cel[0].cev[81].cevr";
connectAttr "animCurveTL314.a" "clipLibrary4.cel[0].cev[82].cevr";
connectAttr "animCurveTL315.a" "clipLibrary4.cel[0].cev[83].cevr";
connectAttr "animCurveTL316.a" "clipLibrary4.cel[0].cev[84].cevr";
connectAttr "animCurveTA840.a" "clipLibrary4.cel[0].cev[85].cevr";
connectAttr "animCurveTA841.a" "clipLibrary4.cel[0].cev[86].cevr";
connectAttr "animCurveTA842.a" "clipLibrary4.cel[0].cev[87].cevr";
connectAttr "animCurveTL317.a" "clipLibrary4.cel[0].cev[88].cevr";
connectAttr "animCurveTL318.a" "clipLibrary4.cel[0].cev[89].cevr";
connectAttr "animCurveTL319.a" "clipLibrary4.cel[0].cev[90].cevr";
connectAttr "animCurveTA843.a" "clipLibrary4.cel[0].cev[91].cevr";
connectAttr "animCurveTA844.a" "clipLibrary4.cel[0].cev[92].cevr";
connectAttr "animCurveTA845.a" "clipLibrary4.cel[0].cev[93].cevr";
connectAttr "animCurveTL320.a" "clipLibrary4.cel[0].cev[94].cevr";
connectAttr "animCurveTL321.a" "clipLibrary4.cel[0].cev[95].cevr";
connectAttr "animCurveTL322.a" "clipLibrary4.cel[0].cev[96].cevr";
connectAttr "animCurveTA846.a" "clipLibrary4.cel[0].cev[97].cevr";
connectAttr "animCurveTA847.a" "clipLibrary4.cel[0].cev[98].cevr";
connectAttr "animCurveTA848.a" "clipLibrary4.cel[0].cev[99].cevr";
connectAttr "animCurveTL323.a" "clipLibrary4.cel[0].cev[100].cevr";
connectAttr "animCurveTL324.a" "clipLibrary4.cel[0].cev[101].cevr";
connectAttr "animCurveTL325.a" "clipLibrary4.cel[0].cev[102].cevr";
connectAttr "animCurveTL326.a" "clipLibrary4.cel[0].cev[103].cevr";
connectAttr "animCurveTL327.a" "clipLibrary4.cel[0].cev[104].cevr";
connectAttr "animCurveTL328.a" "clipLibrary4.cel[0].cev[105].cevr";
connectAttr "animCurveTA849.a" "clipLibrary4.cel[0].cev[106].cevr";
connectAttr "animCurveTA850.a" "clipLibrary4.cel[0].cev[107].cevr";
connectAttr "animCurveTA851.a" "clipLibrary4.cel[0].cev[108].cevr";
connectAttr "animCurveTA852.a" "clipLibrary4.cel[0].cev[109].cevr";
connectAttr "animCurveTA853.a" "clipLibrary4.cel[0].cev[110].cevr";
connectAttr "animCurveTA854.a" "clipLibrary4.cel[0].cev[111].cevr";
connectAttr "animCurveTA855.a" "clipLibrary4.cel[0].cev[112].cevr";
connectAttr "animCurveTA856.a" "clipLibrary4.cel[0].cev[113].cevr";
connectAttr "animCurveTA857.a" "clipLibrary4.cel[0].cev[114].cevr";
connectAttr "animCurveTA858.a" "clipLibrary4.cel[0].cev[115].cevr";
connectAttr "animCurveTA859.a" "clipLibrary4.cel[0].cev[116].cevr";
connectAttr "animCurveTA860.a" "clipLibrary4.cel[0].cev[117].cevr";
connectAttr "animCurveTA861.a" "clipLibrary4.cel[0].cev[118].cevr";
connectAttr "animCurveTA862.a" "clipLibrary4.cel[0].cev[119].cevr";
connectAttr "animCurveTA863.a" "clipLibrary4.cel[0].cev[120].cevr";
connectAttr "animCurveTA864.a" "clipLibrary4.cel[0].cev[121].cevr";
connectAttr "animCurveTA865.a" "clipLibrary4.cel[0].cev[122].cevr";
connectAttr "animCurveTA866.a" "clipLibrary4.cel[0].cev[123].cevr";
connectAttr "animCurveTA867.a" "clipLibrary4.cel[0].cev[124].cevr";
connectAttr "animCurveTA868.a" "clipLibrary4.cel[0].cev[125].cevr";
connectAttr "animCurveTA869.a" "clipLibrary4.cel[0].cev[126].cevr";
connectAttr "animCurveTA870.a" "clipLibrary4.cel[0].cev[127].cevr";
connectAttr "animCurveTA871.a" "clipLibrary4.cel[0].cev[128].cevr";
connectAttr "animCurveTA872.a" "clipLibrary4.cel[0].cev[129].cevr";
connectAttr "animCurveTA873.a" "clipLibrary4.cel[0].cev[130].cevr";
connectAttr "animCurveTA874.a" "clipLibrary4.cel[0].cev[131].cevr";
connectAttr "animCurveTA875.a" "clipLibrary4.cel[0].cev[132].cevr";
connectAttr "animCurveTA876.a" "clipLibrary4.cel[0].cev[133].cevr";
connectAttr "animCurveTA877.a" "clipLibrary4.cel[0].cev[134].cevr";
connectAttr "animCurveTA878.a" "clipLibrary4.cel[0].cev[135].cevr";
connectAttr "animCurveTA879.a" "clipLibrary4.cel[0].cev[136].cevr";
connectAttr "animCurveTA880.a" "clipLibrary4.cel[0].cev[137].cevr";
connectAttr "animCurveTA881.a" "clipLibrary4.cel[0].cev[138].cevr";
connectAttr "animCurveTA882.a" "clipLibrary4.cel[0].cev[139].cevr";
connectAttr "animCurveTA883.a" "clipLibrary4.cel[0].cev[140].cevr";
connectAttr "animCurveTA884.a" "clipLibrary4.cel[0].cev[141].cevr";
connectAttr "animCurveTA885.a" "clipLibrary4.cel[0].cev[142].cevr";
connectAttr "animCurveTA886.a" "clipLibrary4.cel[0].cev[143].cevr";
connectAttr "animCurveTA887.a" "clipLibrary4.cel[0].cev[144].cevr";
connectAttr "animCurveTA888.a" "clipLibrary4.cel[0].cev[145].cevr";
connectAttr "animCurveTA889.a" "clipLibrary4.cel[0].cev[146].cevr";
connectAttr "animCurveTA890.a" "clipLibrary4.cel[0].cev[147].cevr";
connectAttr "animCurveTA891.a" "clipLibrary4.cel[0].cev[148].cevr";
connectAttr "animCurveTA892.a" "clipLibrary4.cel[0].cev[149].cevr";
connectAttr "animCurveTA893.a" "clipLibrary4.cel[0].cev[150].cevr";
connectAttr "animCurveTA894.a" "clipLibrary4.cel[0].cev[151].cevr";
connectAttr "animCurveTA895.a" "clipLibrary4.cel[0].cev[152].cevr";
connectAttr "animCurveTA896.a" "clipLibrary4.cel[0].cev[153].cevr";
connectAttr "animCurveTA897.a" "clipLibrary4.cel[0].cev[154].cevr";
connectAttr "animCurveTA898.a" "clipLibrary4.cel[0].cev[155].cevr";
connectAttr "animCurveTA899.a" "clipLibrary4.cel[0].cev[156].cevr";
connectAttr "animCurveTA900.a" "clipLibrary4.cel[0].cev[157].cevr";
connectAttr "animCurveTA901.a" "clipLibrary4.cel[0].cev[158].cevr";
connectAttr "animCurveTA902.a" "clipLibrary4.cel[0].cev[159].cevr";
connectAttr "animCurveTA903.a" "clipLibrary4.cel[0].cev[160].cevr";
connectAttr "animCurveTA904.a" "clipLibrary4.cel[0].cev[161].cevr";
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
// End of hom-m_get_into_car_close_door_high.ma
