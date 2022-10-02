//Maya ASCII 4.0 scene
//Name: hom_get_into_car_close_door_high.ma
//Last modified: Tue, Jul 23, 2002 01:51:16 PM
requires maya "4.0";
requires "p3dmayaexp" "17.9.1.0";
requires "p3dSimpleShader" "17.1";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "hom_get_into_car_close_door_highSource";
	setAttr ".ihi" 0;
	setAttr ".du" 12;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL329";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTL -n "animCurveTL330";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTL -n "animCurveTL331";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1.1049215982034806 1 1.100371908694626 
		2 1.0622841790015123 3 1.0105057542736737 4 0.96488397966064532 5 0.94526620031196129 
		6 0.95131727921567799 7 0.96760864560858839 8 0.99134749401333344 9 1.0197410189525542 
		10 1.0499964149488916 11 1.0793208765249866 12 1.1049215982034806;
createNode animCurveTL -n "animCurveTL332";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0;
createNode animCurveTL -n "animCurveTL333";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.61375752807398076 1 0.61375752807398076 
		2 0.61375752807398076 3 0.61375752807398076 4 0.61375752807398076 5 0.61375752807398076 
		6 0.61375752807398076 7 0.61375752807398076 8 0.61375752807398076 9 0.61375752807398076 
		10 0.61375752807398076 11 0.61375752807398076 12 0.61375752807398076;
createNode animCurveTA -n "animCurveTA905";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0;
createNode animCurveTU -n "animCurveTU65";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTU -n "animCurveTU66";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTU -n "animCurveTU67";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTU -n "animCurveTU68";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTU -n "animCurveTU69";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTU -n "animCurveTU70";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTU -n "animCurveTU71";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 1;
createNode animCurveTU -n "animCurveTU72";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 1;
createNode animCurveTA -n "animCurveTA906";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA907";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA908";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTL -n "animCurveTL334";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTL -n "animCurveTL335";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTL -n "animCurveTL336";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTL -n "animCurveTL337";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.4091301774705804 5 1.4091301774705804 
		12 1.4091301774705804;
createNode animCurveTL -n "animCurveTL338";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.2638806898773334 5 1.2638806898773334 
		12 1.2638806898773334;
createNode animCurveTL -n "animCurveTL339";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.430750031861709 5 1.430750031861709 
		12 1.430750031861709;
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
createNode animCurveTL -n "animCurveTL340";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.9332537429790313 5 1.9332537429790313 
		12 1.9332537429790313;
createNode animCurveTL -n "animCurveTL341";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.3102926386178941 5 1.3102926386178941 
		12 1.3102926386178941;
createNode animCurveTL -n "animCurveTL342";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.4192359250534907 5 1.4192359250534907 
		12 1.4192359250534907;
createNode animCurveTA -n "animCurveTA912";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -6.5046911724775329 5 -6.5046911724775329 
		12 -6.5046911724775329;
createNode animCurveTA -n "animCurveTA913";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 3.3090781707350478 5 3.3090781707350478 
		12 3.3090781707350478;
createNode animCurveTA -n "animCurveTA914";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 4.2722871456273142 5 4.2722871456273142 
		12 4.2722871456273142;
createNode animCurveTA -n "animCurveTA915";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA916";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA917";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA918";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA919";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA920";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTL -n "animCurveTL343";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.034660776702225261 5 0.034660776702225261 
		12 0.034660776702225261;
createNode animCurveTL -n "animCurveTL344";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.43236842264083392 5 0.43236842264083392 
		12 0.43236842264083392;
createNode animCurveTL -n "animCurveTL345";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.022596790343715 5 1.022596790343715 
		12 1.022596790343715;
createNode animCurveTL -n "animCurveTL346";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTL -n "animCurveTL347";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTL -n "animCurveTL348";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 5 1 12 1;
createNode animCurveTL -n "animCurveTL349";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.6430877726404629 5 1.4056701743799815 
		12 1.6430877726404629;
createNode animCurveTL -n "animCurveTL350";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.8165283848315497 5 1.8165283848315497 
		12 1.8165283848315497;
createNode animCurveTL -n "animCurveTL351";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.91269596990779223 5 0.91269596990779223 
		12 0.91269596990779223;
createNode animCurveTA -n "animCurveTA921";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -22.015891406447029 5 -12.662850904412618 
		12 -22.015891406447029;
createNode animCurveTA -n "animCurveTA922";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.3737820963010432 5 2.9461983826611342 
		12 -1.3737820963010432;
createNode animCurveTA -n "animCurveTA923";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.04386055886445716 5 23.379622524262416 
		12 -0.04386055886445716;
createNode animCurveTA -n "animCurveTA924";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA925";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA926";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA927";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA928";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA929";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA930";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA931";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA932";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA933";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA934";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA935";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA936";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA937";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA938";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA939";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA940";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA941";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA942";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA943";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA944";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA945";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA946";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA947";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA948";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA949";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTL -n "animCurveTL352";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 -0.43524234076486068;
createNode animCurveTL -n "animCurveTL353";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL354";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0.27773886459742925;
createNode animCurveTA -n "animCurveTA950";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA951";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 28.652637602052774;
createNode animCurveTA -n "animCurveTA952";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 64.676908227303443;
createNode animCurveTL -n "animCurveTL355";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0.5198069948790518;
createNode animCurveTL -n "animCurveTL356";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL357";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0.36439499068905612;
createNode animCurveTA -n "animCurveTA953";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 7.7976222737965299;
createNode animCurveTA -n "animCurveTA954";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 -30.409274105849079;
createNode animCurveTA -n "animCurveTA955";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 -64.859940280210878;
createNode animCurveTL -n "animCurveTL358";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.8068573853041325 5 0.77072708169342274 
		12 1.8068573853041325;
createNode animCurveTL -n "animCurveTL359";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 3.1644413576129944 5 3.4366811343504309 
		12 3.1644413576129944;
createNode animCurveTL -n "animCurveTL360";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.5030626595891841 5 2.082204774845231 
		12 1.5030626595891841;
createNode animCurveTA -n "animCurveTA956";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.1807744810933176 5 -32.318402203478271 
		12 -2.1807744810933176;
createNode animCurveTA -n "animCurveTA957";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 33.611906574651975 5 22.509929029446681 
		12 33.611906574651975;
createNode animCurveTA -n "animCurveTA958";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 58.701760039742901 5 -30.298008427764341 
		12 58.701760039742901;
createNode animCurveTL -n "animCurveTL361";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 3.576063470533156 5 2.9611732426158608 
		12 3.576063470533156;
createNode animCurveTL -n "animCurveTL362";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 3.1500943872743385 5 3.7667770375855198 
		12 3.1500943872743385;
createNode animCurveTL -n "animCurveTL363";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.4810695043531394 5 1.7643389560619624 
		12 1.4810695043531394;
createNode animCurveTA -n "animCurveTA959";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 14.341505413034501 5 18.07051120818576 
		12 14.341505413034501;
createNode animCurveTA -n "animCurveTA960";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -44.172784492399941 5 -27.042197631862905 
		12 -44.172784492399941;
createNode animCurveTA -n "animCurveTA961";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -63.810826203087203 5 -44.163945774207242 
		12 -63.810826203087203;
createNode animCurveTL -n "animCurveTL364";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.37736680843384973 5 0.37736680843384973 
		12 0.37736680843384973;
createNode animCurveTL -n "animCurveTL365";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.54343311259648019 5 -0.54343311259648019 
		12 -0.54343311259648019;
createNode animCurveTL -n "animCurveTL366";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.97043124551903082 5 -0.97043124551903082 
		12 -0.97043124551903082;
createNode animCurveTL -n "animCurveTL367";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.31054502397108613 5 -0.31054502397108613 
		12 -0.31054502397108613;
createNode animCurveTL -n "animCurveTL368";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.55640530640609931 5 -0.55640530640609931 
		12 -0.55640530640609931;
createNode animCurveTL -n "animCurveTL369";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.57914122395678103 5 -0.57914122395678103 
		12 -0.57914122395678103;
createNode animCurveTA -n "animCurveTA962";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 12.253734489678925 5 12.253734489678925 
		12 12.253734489678925;
createNode animCurveTA -n "animCurveTA963";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -65.746751280844961 5 -65.746751280844961 
		12 -65.746751280844961;
createNode animCurveTA -n "animCurveTA964";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA965";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.061808866237337522 5 -0.061808866237337522 
		12 -0.061808866237337522;
createNode animCurveTA -n "animCurveTA966";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -59.058178941076754 5 -59.058178941076754 
		12 -59.058178941076754;
createNode animCurveTA -n "animCurveTA967";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 16.579147429757843 5 16.579147429757843 
		12 16.579147429757843;
createNode animCurveTA -n "animCurveTA968";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.5572674112203622 5 8.5572674112203622 
		12 8.5572674112203622;
createNode animCurveTA -n "animCurveTA969";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 15.711328223519057 5 15.711328223519057 
		12 15.711328223519057;
createNode animCurveTA -n "animCurveTA970";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA971";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA972";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
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
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA976";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 10.423754966968488 5 10.423754966968488 
		12 10.423754966968488;
createNode animCurveTA -n "animCurveTA977";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.722848255843903 5 27.722848255843903 
		12 27.722848255843903;
createNode animCurveTA -n "animCurveTA978";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 21.576484776388227 5 21.576484776388227 
		12 21.576484776388227;
createNode animCurveTA -n "animCurveTA979";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA980";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA981";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.080064458283051 5 27.080064458283051 
		12 27.080064458283051;
createNode animCurveTA -n "animCurveTA982";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA983";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA984";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA985";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA986";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA987";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 13.994403295754109;
createNode animCurveTA -n "animCurveTA988";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA989";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA990";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 13.994403295754109;
createNode animCurveTA -n "animCurveTA991";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA992";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA993";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.911632519594587 5 27.911632519594587 
		12 27.911632519594587;
createNode animCurveTA -n "animCurveTA994";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA995";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA996";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA997";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 11.37102964548717 12 0;
createNode animCurveTA -n "animCurveTA998";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 -0.57536973090558297 12 0;
createNode animCurveTA -n "animCurveTA999";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 10.842908218073994 5 21.192869117571593 
		12 10.842908218073994;
createNode animCurveTA -n "animCurveTA1000";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 -20.076803070551748 12 0;
createNode animCurveTA -n "animCurveTA1001";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA1002";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA1003";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0.31225290500201935 12 0;
createNode animCurveTA -n "animCurveTA1004";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 50.537608392187529 12 0;
createNode animCurveTA -n "animCurveTA1005";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 21.122873819731893 5 -12.328363412893864 
		12 21.122873819731893;
createNode animCurveTA -n "animCurveTA1006";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 -11.266439246406184 12 0;
createNode animCurveTA -n "animCurveTA1007";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 8.2514393232251884 12 0;
createNode animCurveTA -n "animCurveTA1008";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 4.6912887305040609 12 0;
createNode animCurveTA -n "animCurveTA1009";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA1010";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA1011";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 33.429092416277157 5 33.429092416277157 
		12 33.429092416277157;
createNode animCurveTA -n "animCurveTA1012";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.2533422302317216 5 8.2533422302317216 
		12 8.2533422302317216;
createNode animCurveTA -n "animCurveTA1013";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 23.263402056531085 5 23.263402056531085 
		12 23.263402056531085;
createNode animCurveTA -n "animCurveTA1014";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 20.166277752815617 5 20.166277752815617 
		12 20.166277752815617;
createNode animCurveTA -n "animCurveTA1015";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA1016";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 12 0;
createNode animCurveTA -n "animCurveTA1017";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 17.254116939558369 5 17.254116939558369 
		12 17.254116939558369;
createNode clipLibrary -n "clipLibrary1";
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
connectAttr "hom_get_into_car_close_door_highSource.st" "clipLibrary1.st[0]"
		;
connectAttr "hom_get_into_car_close_door_highSource.du" "clipLibrary1.du[0]"
		;
connectAttr "animCurveTL329.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL330.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL331.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL332.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL333.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA905.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU65.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU66.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU67.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU68.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU69.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU70.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU71.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU72.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA906.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA907.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA908.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL334.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL335.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL336.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL337.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL338.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL339.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA909.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA910.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA911.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL340.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL341.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL342.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA912.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA913.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA914.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA915.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA916.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA917.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA918.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA919.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA920.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTL343.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTL344.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTL345.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTL346.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTL347.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTL348.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL349.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL350.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL351.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTA921.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTA922.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTA923.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTA924.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTA925.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTA926.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA927.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA928.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA929.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA930.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA931.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA932.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA933.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA934.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA935.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA936.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA937.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA938.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA939.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA940.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA941.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA942.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA943.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA944.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA945.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA946.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA947.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA948.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA949.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTL352.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTL353.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTL354.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA950.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA951.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA952.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL355.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL356.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL357.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA953.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA954.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA955.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL358.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL359.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL360.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA956.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA957.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA958.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL361.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL362.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL363.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA959.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA960.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA961.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL364.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL365.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL366.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTL367.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTL368.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTL369.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTA962.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTA963.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTA964.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTA965.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTA966.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTA967.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA968.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA969.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA970.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA971.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA972.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA973.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA974.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA975.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA976.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA977.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA978.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA979.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA980.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA981.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA982.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA983.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA984.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA985.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA986.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA987.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA988.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA989.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA990.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA991.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA992.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA993.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA994.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA995.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA996.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA997.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA998.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA999.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1000.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1001.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1002.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1003.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1004.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1005.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1006.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1007.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1008.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1009.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1010.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1011.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1012.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1013.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1014.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1015.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1016.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1017.a" "clipLibrary1.cel[0].cev[161].cevr";
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
// End of hom_get_into_car_close_door_high.ma
