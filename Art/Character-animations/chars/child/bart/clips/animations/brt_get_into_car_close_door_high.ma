//Maya ASCII 4.0 scene
//Name: brt_get_into_car_close_door_high.ma
//Last modified: Tue, May 27, 2003 01:41:03 PM
requires maya "4.0";
requires "p3dDeformer" "2.0";
requires "p3dmayaexp" "2.0.3.0";
requires "p3dSimpleShader" "2.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "brt_get_into_car_close_door_highSource";
	setAttr ".ihi" 0;
	setAttr ".du" 11;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL903";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTL -n "animCurveTL904";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.101 11 1.101;
createNode animCurveTL -n "Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.058 11 1.058;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.444 11 0.444;
createNode animCurveTA -n "brt_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTU -n "animCurveTU178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTU -n "animCurveTU179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTU -n "animCurveTU180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTU -n "animCurveTU181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTU -n "animCurveTU182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTU -n "animCurveTU183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 11 1;
createNode animCurveTU -n "animCurveTU184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 11 1;
createNode animCurveTA -n "animCurveTA2596";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2597";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2598";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTL -n "animCurveTL908";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTL -n "animCurveTL909";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTL -n "animCurveTL910";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTL -n "animCurveTL911";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.2684514818250019 5 1.5394582886391421 
		11 2.2684514818250019;
createNode animCurveTL -n "animCurveTL912";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.3563813522983428 5 2.2146718429531851 
		11 2.3563813522983428;
createNode animCurveTL -n "animCurveTL913";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.7857730582679947 5 1.5753762720477491 
		11 1.7857730582679947;
createNode animCurveTA -n "animCurveTA2599";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -28.33147073208438 5 30.693473148004159 
		11 -28.33147073208438;
createNode animCurveTA -n "animCurveTA2600";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -10.113681911874204 5 19.287234896979506 
		11 -10.113681911874204;
createNode animCurveTA -n "animCurveTA2601";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 3.6896128937020114 5 34.331821279448754 
		11 3.6896128937020114;
createNode animCurveTL -n "animCurveTL914";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.7067620222896518 5 2.0265987355345594 
		11 2.7067620222896518;
createNode animCurveTL -n "animCurveTL915";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.3397579865098717 5 2.3426796094004652 
		11 2.3397579865098717;
createNode animCurveTL -n "animCurveTL916";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.7463370961711713 5 1.4333447243398911 
		11 1.7463370961711713;
createNode animCurveTA -n "animCurveTA2602";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -27.647037481197401 5 30.7227137734269 
		11 -27.647037481197401;
createNode animCurveTA -n "animCurveTA2603";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.6471102606573034 5 23.559044833361053 
		11 1.6471102606573034;
createNode animCurveTA -n "animCurveTA2604";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.7922141916432519 5 15.013213858909364 
		11 7.7922141916432519;
createNode animCurveTA -n "animCurveTA2605";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2606";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2607";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2608";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2609";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2610";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2611";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2612";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2613";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2614";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2615";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2616";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTL -n "animCurveTL917";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0.034660776702225261 11 0;
createNode animCurveTL -n "animCurveTL918";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0.43236842264083392 11 0;
createNode animCurveTL -n "animCurveTL919";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 5 1.022596790343715 11 1;
createNode animCurveTL -n "animCurveTL920";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTL -n "animCurveTL921";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTL -n "animCurveTL922";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 5 1 11 1;
createNode animCurveTL -n "animCurveTL923";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.4868186460309505 5 1.4056701743799815 
		11 2.4868186460309505;
createNode animCurveTL -n "animCurveTL924";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.700287576050838 5 2.7047448676097749 
		11 2.700287576050838;
createNode animCurveTL -n "animCurveTL925";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.2122719755191118 5 1.1349023152102036 
		11 1.2122719755191118;
createNode animCurveTA -n "animCurveTA2617";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -26.004389268796523 5 -12.662850904412618 
		11 -26.004389268796523;
createNode animCurveTA -n "animCurveTA2618";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 2.9461983826611342 11 0;
createNode animCurveTA -n "animCurveTA2619";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 23.379622524262416 11 0;
createNode animCurveTA -n "animCurveTA2620";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2621";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2622";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2623";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2624";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2625";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2626";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2627";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2628";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2629";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2630";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2631";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2632";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2633";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2634";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2635";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2636";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2637";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2638";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2639";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2640";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2641";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2642";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2643";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2644";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2645";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTL -n "animCurveTL926";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.43524234076486068 11 -0.43524234076486068;
createNode animCurveTL -n "animCurveTL927";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.82665738350180629 11 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL928";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.27773886459742925 11 0.27773886459742925;
createNode animCurveTA -n "animCurveTA2646";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2647";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 28.652637602052774 11 28.652637602052774;
createNode animCurveTA -n "animCurveTA2648";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 64.676908227303443 11 64.676908227303443;
createNode animCurveTL -n "animCurveTL929";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.5198069948790518 11 0.5198069948790518;
createNode animCurveTL -n "animCurveTL930";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.72394202659893114 11 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL931";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.36439499068905612 11 0.36439499068905612;
createNode animCurveTA -n "animCurveTA2649";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.7976222737965317 11 7.7976222737965317;
createNode animCurveTA -n "animCurveTA2650";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -30.409274105849079 11 -30.409274105849079;
createNode animCurveTA -n "animCurveTA2651";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -64.859940280210893 11 -64.859940280210893;
createNode animCurveTL -n "animCurveTL932";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.4602374361275703 5 0.5099299555228195 
		11 2.4602374361275703;
createNode animCurveTL -n "animCurveTL933";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 3.4231722557013233 5 3.8151598175362609 
		11 3.4231722557013233;
createNode animCurveTL -n "animCurveTL934";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.7944971222828583 5 2.0786415129687987 
		11 1.7944971222828583;
createNode animCurveTA -n "animCurveTA2652";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -33.734888782993906 5 -32.318402203478271 
		11 -33.734888782993906;
createNode animCurveTA -n "animCurveTA2653";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 14.870586397896902 5 22.509929029446681 
		11 14.870586397896902;
createNode animCurveTA -n "animCurveTA2654";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 30.592169336881899 5 -30.298008427764341 
		11 30.592169336881899;
createNode animCurveTL -n "animCurveTL935";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 3.931605807385496 5 2.7061480999602638 
		11 3.931605807385496;
createNode animCurveTL -n "animCurveTL936";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 3.5323712155812759 5 4.2730802276713886 
		11 3.5323712155812759;
createNode animCurveTL -n "animCurveTL937";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.8970414092731005 5 1.6879074399120366 
		11 1.8970414092731005;
createNode animCurveTA -n "animCurveTA2655";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -26.203413720634714 5 18.07051120818576 
		11 -26.203413720634714;
createNode animCurveTA -n "animCurveTA2656";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -14.791961579779635 5 -27.042197631862905 
		11 -14.791961579779635;
createNode animCurveTA -n "animCurveTA2657";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -45.895436695401962 5 -44.163945774207242 
		11 -45.895436695401962;
createNode animCurveTL -n "animCurveTL938";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.063331173333856433 5 0.37736680843384973 
		11 0.063331173333856433;
createNode animCurveTL -n "animCurveTL939";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.69960805773293522 5 -0.54343311259648019 
		11 -0.69960805773293522;
createNode animCurveTL -n "animCurveTL940";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.66762598980258558 5 -0.97043124551903082 
		11 -0.66762598980258558;
createNode animCurveTL -n "animCurveTL941";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.31054502397108613 5 -0.31054502397108613 
		11 -0.31054502397108613;
createNode animCurveTL -n "animCurveTL942";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.55640530640609931 5 -0.55640530640609931 
		11 -0.55640530640609931;
createNode animCurveTL -n "animCurveTL943";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.57914122395678103 5 -0.57914122395678103 
		11 -0.57914122395678103;
createNode animCurveTA -n "animCurveTA2658";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 12.253734489678925 5 12.253734489678925 
		11 12.253734489678925;
createNode animCurveTA -n "animCurveTA2659";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -65.746751280844975 5 -65.746751280844961 
		11 -65.746751280844975;
createNode animCurveTA -n "animCurveTA2660";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTA -n "animCurveTA2661";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.061808866237340665 5 -0.061808866237337522 
		11 -0.061808866237340665;
createNode animCurveTA -n "animCurveTA2662";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -59.058178941076754 5 -59.058178941076754 
		11 -59.058178941076754;
createNode animCurveTA -n "animCurveTA2663";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 16.57914742975785 5 16.579147429757843 
		11 16.57914742975785;
createNode animCurveTA -n "animCurveTA2664";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.5572674112203657 5 8.5572674112203622 
		11 8.5572674112203657;
createNode animCurveTA -n "animCurveTA2665";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 15.711328223519061 5 15.711328223519057 
		11 15.711328223519061;
createNode animCurveTA -n "animCurveTA2666";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTA -n "animCurveTA2667";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTA -n "animCurveTA2668";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTA -n "animCurveTA2669";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTA -n "animCurveTA2670";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTA -n "animCurveTA2671";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTA -n "animCurveTA2672";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -369.87334395712912 5 -182.40128137086998 
		11 -369.87334395712912;
createNode animCurveTA -n "animCurveTA2673";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.722848255843903 5 27.722848255843903 
		11 27.722848255843903;
createNode animCurveTA -n "animCurveTA2674";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 21.576484776388227 5 21.576484776388227 
		11 21.576484776388227;
createNode animCurveTA -n "animCurveTA2675";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTA -n "animCurveTA2676";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTA -n "animCurveTA2677";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.080064458283051 5 27.080064458283051 
		11 27.080064458283051;
createNode animCurveTA -n "animCurveTA2678";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2679";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2680";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2681";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2682";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2683";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 11 13.994403295754109;
createNode animCurveTA -n "animCurveTA2684";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2685";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2686";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 11 13.994403295754109;
createNode animCurveTA -n "animCurveTA2687";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTA -n "animCurveTA2688";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTA -n "animCurveTA2689";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.911632519594587 5 27.911632519594587 
		11 27.911632519594587;
createNode animCurveTA -n "animCurveTA2690";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTA -n "animCurveTA2691";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTA -n "animCurveTA2692";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTA -n "animCurveTA2693";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.373100660218926 5 11.37102964548717 
		11 -1.373100660218926;
createNode animCurveTA -n "animCurveTA2694";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.38374158911587308 5 -0.57536973090558297 
		11 0.38374158911587308;
createNode animCurveTA -n "animCurveTA2695";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.96901743689791298 5 21.192869117571593 
		11 0.96901743689791298;
createNode animCurveTA -n "animCurveTA2696";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.2144674450583466 5 -20.076803070551748 
		11 -2.2144674450583466;
createNode animCurveTA -n "animCurveTA2697";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -5.3642380392152509 5 0 11 -5.3642380392152509;
createNode animCurveTA -n "animCurveTA2698";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -3.2584064202075544 5 0 11 -3.2584064202075544;
createNode animCurveTA -n "animCurveTA2699";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 4.9690701715193732 5 -16.399518942919972 
		11 4.9690701715193732;
createNode animCurveTA -n "animCurveTA2700";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.9904681746768529 5 34.525938596521542 
		11 -2.9904681746768529;
createNode animCurveTA -n "animCurveTA2701";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 14.780225156536881 5 -32.501680130080977 
		11 14.780225156536881;
createNode animCurveTA -n "animCurveTA2702";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.211833892135727 5 -11.266439246406184 
		11 2.211833892135727;
createNode animCurveTA -n "animCurveTA2703";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.7086730360615547 5 8.2514393232251884 
		11 1.7086730360615547;
createNode animCurveTA -n "animCurveTA2704";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.7082804953288213 5 4.6912887305040609 
		11 2.7082804953288213;
createNode animCurveTA -n "animCurveTA2705";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTA -n "animCurveTA2706";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTA -n "animCurveTA2707";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 33.429092416277157 5 33.429092416277157 
		11 33.429092416277157;
createNode animCurveTA -n "animCurveTA2708";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -364.07092315035499 5 -184.57169410760673 
		11 -364.07092315035499;
createNode animCurveTA -n "animCurveTA2709";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 23.263402056531095 5 23.263402056531085 
		11 23.263402056531095;
createNode animCurveTA -n "animCurveTA2710";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 20.166277752815628 5 20.166277752815617 
		11 20.166277752815628;
createNode animCurveTA -n "animCurveTA2711";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTA -n "animCurveTA2712";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTA -n "animCurveTA2713";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 17.254116939558369 5 17.254116939558369 
		11 17.254116939558369;
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
connectAttr "brt_get_into_car_close_door_highSource.st" "clipLibrary1.st[0]"
		;
connectAttr "brt_get_into_car_close_door_highSource.du" "clipLibrary1.du[0]"
		;
connectAttr "animCurveTL903.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL904.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "brt_Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr"
		;
connectAttr "animCurveTU177.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU178.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU179.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU180.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU181.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU182.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU183.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU184.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA2596.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA2597.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA2598.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL908.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL909.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL910.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL911.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL912.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL913.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA2599.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA2600.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA2601.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL914.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL915.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL916.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA2602.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA2603.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA2604.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA2605.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA2606.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA2607.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA2608.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA2609.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA2610.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA2611.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA2612.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA2613.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA2614.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA2615.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA2616.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL917.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL918.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL919.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL920.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL921.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL922.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL923.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL924.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL925.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA2617.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA2618.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA2619.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA2620.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA2621.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA2622.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA2623.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA2624.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA2625.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA2626.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA2627.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA2628.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA2629.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA2630.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA2631.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA2632.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA2633.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA2634.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA2635.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA2636.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA2637.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA2638.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA2639.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA2640.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA2641.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA2642.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA2643.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA2644.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA2645.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL926.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL927.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL928.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA2646.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA2647.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA2648.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL929.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL930.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL931.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA2649.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA2650.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA2651.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL932.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL933.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL934.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA2652.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA2653.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA2654.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL935.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL936.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL937.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA2655.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA2656.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA2657.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL938.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL939.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL940.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL941.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL942.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL943.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA2658.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA2659.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA2660.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA2661.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA2662.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA2663.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA2664.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA2665.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA2666.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA2667.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA2668.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA2669.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA2670.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA2671.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA2672.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA2673.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA2674.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA2675.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA2676.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA2677.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA2678.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA2679.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA2680.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA2681.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA2682.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA2683.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA2684.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA2685.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA2686.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA2687.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA2688.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA2689.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA2690.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA2691.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA2692.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA2693.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA2694.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA2695.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA2696.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA2697.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA2698.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA2699.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA2700.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA2701.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA2702.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA2703.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA2704.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA2705.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA2706.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA2707.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA2708.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA2709.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA2710.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA2711.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA2712.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA2713.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of brt_get_into_car_close_door_high.ma
