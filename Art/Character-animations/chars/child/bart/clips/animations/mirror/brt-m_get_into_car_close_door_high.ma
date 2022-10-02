//Maya ASCII 4.0 scene
//Name: brt-m_get_into_car_close_door_high.ma
//Last modified: Mon, Jul 29, 2002 03:10:08 PM
requires maya "4.0";
requires "p3dSimpleShader" "17.1";
requires "p3dmayaexp" "17.9.1.0";
requires "p3dDeformer" "17.1.1.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "brt_get_into_car_close_door_high";
	setAttr ".ihi" 0;
	setAttr ".du" 11;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL780";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTL -n "animCurveTL781";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTL -n "animCurveTL782";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -1.1017435676056555 1 -1.0498258252526969 
		2 -0.93077467544592307 3 -0.7897839151081163 4 -0.67204734116205866 5 -0.62275875053053231 
		6 -0.64715149737244515 7 -0.71145964747076718 8 -0.80237806518437416 9 -0.90660161487214086 
		10 -1.0108251608929428 11 -1.1017435676056555;
createNode animCurveTL -n "animCurveTL783";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0;
createNode animCurveTL -n "animCurveTL784";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.53707690078183523 1 0.53227475125395385 
		2 0.52361930791576738 3 0.51393720544909549 4 0.50605507853575793 5 0.50279956185757435 
		6 0.50454516716898778 7 0.50914721749685865 8 0.51565356443163279 9 0.52311205956375639 
		10 0.53057055448367518 11 0.53707690078183523;
createNode animCurveTA -n "animCurveTA2238";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0;
createNode animCurveTU -n "animCurveTU153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTU -n "animCurveTU154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTU -n "animCurveTU155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTU -n "animCurveTU156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTU -n "animCurveTU157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTU -n "animCurveTU158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTU -n "animCurveTU159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 11 1;
createNode animCurveTU -n "animCurveTU160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 11 1;
createNode animCurveTA -n "animCurveTA2239";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2240";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2241";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTL -n "animCurveTL785";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTL -n "animCurveTL786";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTL -n "animCurveTL787";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTL -n "animCurveTL788";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.7067620222896518 5 -2.0265987355345594 
		11 -2.7067620222896518;
createNode animCurveTL -n "animCurveTL789";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.3397579865098717 5 2.3426796094004652 
		11 2.3397579865098717;
createNode animCurveTL -n "animCurveTL790";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.7463370961711713 5 1.4333447243398911 
		11 1.7463370961711713;
createNode animCurveTA -n "animCurveTA2242";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -27.647037481197401 5 30.7227137734269 
		11 -27.647037481197401;
createNode animCurveTA -n "animCurveTA2243";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.6471102606573034 5 -23.559044833361053 
		11 -1.6471102606573034;
createNode animCurveTA -n "animCurveTA2244";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -7.7922141916432519 5 -15.013213858909364 
		11 -7.7922141916432519;
createNode animCurveTL -n "animCurveTL791";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.2684514818250019 5 -1.5394582886391421 
		11 -2.2684514818250019;
createNode animCurveTL -n "animCurveTL792";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.3563813522983428 5 2.2146718429531851 
		11 2.3563813522983428;
createNode animCurveTL -n "animCurveTL793";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.7857730582679947 5 1.5753762720477491 
		11 1.7857730582679947;
createNode animCurveTA -n "animCurveTA2245";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -28.33147073208438 5 30.693473148004159 
		11 -28.33147073208438;
createNode animCurveTA -n "animCurveTA2246";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 10.113681911874204 5 -19.287234896979506 
		11 10.113681911874204;
createNode animCurveTA -n "animCurveTA2247";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -3.6896128937020114 5 -34.331821279448754 
		11 -3.6896128937020114;
createNode animCurveTA -n "animCurveTA2248";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2249";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2250";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2251";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2252";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2253";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2254";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2255";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2256";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2257";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2258";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2259";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTL -n "animCurveTL794";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTL -n "animCurveTL795";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTL -n "animCurveTL796";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 5 1 11 1;
createNode animCurveTL -n "animCurveTL797";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 -0.034660776702225261 11 
		0;
createNode animCurveTL -n "animCurveTL798";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0.43236842264083392 11 0;
createNode animCurveTL -n "animCurveTL799";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 5 1.022596790343715 11 1;
createNode animCurveTL -n "animCurveTL800";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.4868186460309505 5 -1.4056701743799815 
		11 -2.4868186460309505;
createNode animCurveTL -n "animCurveTL801";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.700287576050838 5 2.7047448676097749 
		11 2.700287576050838;
createNode animCurveTL -n "animCurveTL802";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.2122719755191118 5 1.1349023152102036 
		11 1.2122719755191118;
createNode animCurveTA -n "animCurveTA2260";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -26.004389268796523 5 -12.662850904412618 
		11 -26.004389268796523;
createNode animCurveTA -n "animCurveTA2261";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 -2.9461983826611342 11 0;
createNode animCurveTA -n "animCurveTA2262";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 -23.379622524262416 11 0;
createNode animCurveTA -n "animCurveTA2263";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2264";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2265";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2266";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2267";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2268";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2269";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2270";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2271";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2272";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2273";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2274";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2275";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2276";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2277";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2278";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2279";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2280";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2281";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2282";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2283";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2284";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2285";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2286";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2287";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2288";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTL -n "animCurveTL803";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.5198069948790518 11 -0.5198069948790518;
createNode animCurveTL -n "animCurveTL804";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.72394202659893114 11 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL805";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.36439499068905612 11 0.36439499068905612;
createNode animCurveTA -n "animCurveTA2289";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.7976222737965317 11 7.7976222737965317;
createNode animCurveTA -n "animCurveTA2290";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 30.409274105849079 11 30.409274105849079;
createNode animCurveTA -n "animCurveTA2291";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 64.859940280210893 11 64.859940280210893;
createNode animCurveTL -n "animCurveTL806";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.43524234076486068 11 0.43524234076486068;
createNode animCurveTL -n "animCurveTL807";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.82665738350180629 11 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL808";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.27773886459742925 11 0.27773886459742925;
createNode animCurveTA -n "animCurveTA2292";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2293";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -28.652637602052774 11 -28.652637602052774;
createNode animCurveTA -n "animCurveTA2294";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -64.676908227303443 11 -64.676908227303443;
createNode animCurveTL -n "animCurveTL809";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -3.931605807385496 5 -2.7061480999602638 
		11 -3.931605807385496;
createNode animCurveTL -n "animCurveTL810";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 3.5323712155812759 5 4.2730802276713886 
		11 3.5323712155812759;
createNode animCurveTL -n "animCurveTL811";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.8970414092731005 5 1.6879074399120366 
		11 1.8970414092731005;
createNode animCurveTA -n "animCurveTA2295";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -26.203413720634714 5 18.07051120818576 
		11 -26.203413720634714;
createNode animCurveTA -n "animCurveTA2296";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 14.791961579779635 5 27.042197631862905 
		11 14.791961579779635;
createNode animCurveTA -n "animCurveTA2297";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 45.895436695401962 5 44.163945774207242 
		11 45.895436695401962;
createNode animCurveTL -n "animCurveTL812";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.4602374361275703 5 -0.5099299555228195 
		11 -2.4602374361275703;
createNode animCurveTL -n "animCurveTL813";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 3.4231722557013233 5 3.8151598175362609 
		11 3.4231722557013233;
createNode animCurveTL -n "animCurveTL814";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.7944971222828583 5 2.0786415129687987 
		11 1.7944971222828583;
createNode animCurveTA -n "animCurveTA2298";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -33.734888782993906 5 -32.318402203478271 
		11 -33.734888782993906;
createNode animCurveTA -n "animCurveTA2299";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -14.870586397896902 5 -22.509929029446681 
		11 -14.870586397896902;
createNode animCurveTA -n "animCurveTA2300";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -30.592169336881899 5 30.298008427764341 
		11 -30.592169336881899;
createNode animCurveTL -n "animCurveTL815";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.31054502397108613 5 0.31054502397108613 
		11 0.31054502397108613;
createNode animCurveTL -n "animCurveTL816";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.55640530640609931 5 -0.55640530640609931 
		11 -0.55640530640609931;
createNode animCurveTL -n "animCurveTL817";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.57914122395678103 5 -0.57914122395678103 
		11 -0.57914122395678103;
createNode animCurveTL -n "animCurveTL818";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.063331173333856433 5 -0.37736680843384973 
		11 -0.063331173333856433;
createNode animCurveTL -n "animCurveTL819";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.69960805773293522 5 -0.54343311259648019 
		11 -0.69960805773293522;
createNode animCurveTL -n "animCurveTL820";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.66762598980258558 5 -0.97043124551903082 
		11 -0.66762598980258558;
createNode animCurveTA -n "animCurveTA2301";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.061808866237340665 5 -0.061808866237337522 
		11 -0.061808866237340665;
createNode animCurveTA -n "animCurveTA2302";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -59.058178941076754 5 -59.058178941076754 
		11 -59.058178941076754;
createNode animCurveTA -n "animCurveTA2303";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 16.57914742975785 5 16.579147429757843 
		11 16.57914742975785;
createNode animCurveTA -n "animCurveTA2304";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 12.253734489678925 5 12.253734489678925 
		11 12.253734489678925;
createNode animCurveTA -n "animCurveTA2305";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -65.746751280844975 5 -65.746751280844961 
		11 -65.746751280844975;
createNode animCurveTA -n "animCurveTA2306";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTA -n "animCurveTA2307";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 15.711328223519061 5 15.711328223519057 
		11 15.711328223519061;
createNode animCurveTA -n "animCurveTA2308";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.5572674112203657 5 8.5572674112203622 
		11 8.5572674112203657;
createNode animCurveTA -n "animCurveTA2309";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTA -n "animCurveTA2310";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTA -n "animCurveTA2311";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTA -n "animCurveTA2312";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTA -n "animCurveTA2313";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTA -n "animCurveTA2314";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTA -n "animCurveTA2315";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -364.07092315035499 5 -184.57169410760673 
		11 -364.07092315035499;
createNode animCurveTA -n "animCurveTA2316";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 23.263402056531095 5 23.263402056531085 
		11 23.263402056531095;
createNode animCurveTA -n "animCurveTA2317";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 20.166277752815628 5 20.166277752815617 
		11 20.166277752815628;
createNode animCurveTA -n "animCurveTA2318";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTA -n "animCurveTA2319";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTA -n "animCurveTA2320";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 33.429092416277157 5 33.429092416277157 
		11 33.429092416277157;
createNode animCurveTA -n "animCurveTA2321";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2322";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2323";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2324";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2325";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2326";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 11 13.994403295754109;
createNode animCurveTA -n "animCurveTA2327";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2328";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA2329";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 11 13.994403295754109;
createNode animCurveTA -n "animCurveTA2330";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTA -n "animCurveTA2331";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTA -n "animCurveTA2332";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 17.254116939558369 5 17.254116939558369 
		11 17.254116939558369;
createNode animCurveTA -n "animCurveTA2333";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTA -n "animCurveTA2334";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTA -n "animCurveTA2335";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTA -n "animCurveTA2336";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.373100660218926 5 -11.37102964548717 
		11 1.373100660218926;
createNode animCurveTA -n "animCurveTA2337";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.38374158911587308 5 0.57536973090558297 
		11 -0.38374158911587308;
createNode animCurveTA -n "animCurveTA2338";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.96901743689791298 5 21.192869117571593 
		11 0.96901743689791298;
createNode animCurveTA -n "animCurveTA2339";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.2144674450583466 5 20.076803070551748 
		11 2.2144674450583466;
createNode animCurveTA -n "animCurveTA2340";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 5.3642380392152509 5 0 11 5.3642380392152509;
createNode animCurveTA -n "animCurveTA2341";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -3.2584064202075544 5 0 11 -3.2584064202075544;
createNode animCurveTA -n "animCurveTA2342";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -4.9690701715193732 5 16.399518942919972 
		11 -4.9690701715193732;
createNode animCurveTA -n "animCurveTA2343";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.9904681746768529 5 -34.525938596521542 
		11 2.9904681746768529;
createNode animCurveTA -n "animCurveTA2344";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 14.780225156536881 5 -32.501680130080977 
		11 14.780225156536881;
createNode animCurveTA -n "animCurveTA2345";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.211833892135727 5 11.266439246406184 
		11 -2.211833892135727;
createNode animCurveTA -n "animCurveTA2346";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.7086730360615547 5 -8.2514393232251884 
		11 -1.7086730360615547;
createNode animCurveTA -n "animCurveTA2347";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.7082804953288213 5 4.6912887305040609 
		11 2.7082804953288213;
createNode animCurveTA -n "animCurveTA2348";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTA -n "animCurveTA2349";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTA -n "animCurveTA2350";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.080064458283051 5 27.080064458283051 
		11 27.080064458283051;
createNode animCurveTA -n "animCurveTA2351";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -369.87334395712912 5 -182.40128137086998 
		11 -369.87334395712912;
createNode animCurveTA -n "animCurveTA2352";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.722848255843903 5 27.722848255843903 
		11 27.722848255843903;
createNode animCurveTA -n "animCurveTA2353";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 21.576484776388227 5 21.576484776388227 
		11 21.576484776388227;
createNode animCurveTA -n "animCurveTA2354";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTA -n "animCurveTA2355";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTA -n "animCurveTA2356";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.911632519594587 5 27.911632519594587 
		11 27.911632519594587;
createNode clipLibrary -n "clipLibrary2";
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
	setAttr ".top" 478;
	setAttr ".rght" 638;
	setAttr ".fs" 1;
	setAttr ".ef" 10;
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
connectAttr "brt_get_into_car_close_door_high.st" "clipLibrary2.st[0]";
connectAttr "brt_get_into_car_close_door_high.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL780.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL781.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "animCurveTL782.a" "clipLibrary2.cel[0].cev[2].cevr";
connectAttr "animCurveTL783.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "animCurveTL784.a" "clipLibrary2.cel[0].cev[4].cevr";
connectAttr "animCurveTA2238.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "animCurveTU153.a" "clipLibrary2.cel[0].cev[6].cevr";
connectAttr "animCurveTU154.a" "clipLibrary2.cel[0].cev[7].cevr";
connectAttr "animCurveTU155.a" "clipLibrary2.cel[0].cev[8].cevr";
connectAttr "animCurveTU156.a" "clipLibrary2.cel[0].cev[9].cevr";
connectAttr "animCurveTU157.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU158.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU159.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU160.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA2239.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA2240.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA2241.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL785.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL786.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL787.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL788.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL789.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL790.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA2242.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA2243.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA2244.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL791.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL792.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL793.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA2245.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA2246.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA2247.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA2248.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA2249.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA2250.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA2251.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA2252.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA2253.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTA2254.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTA2255.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTA2256.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTA2257.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTA2258.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTA2259.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL794.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL795.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL796.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTL797.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTL798.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTL799.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTL800.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTL801.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTL802.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA2260.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA2261.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA2262.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA2263.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA2264.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA2265.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA2266.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA2267.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA2268.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA2269.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA2270.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA2271.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA2272.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA2273.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA2274.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA2275.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA2276.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA2277.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA2278.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA2279.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA2280.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA2281.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA2282.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTA2283.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTA2284.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTA2285.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA2286.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA2287.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA2288.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL803.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL804.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL805.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA2289.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA2290.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA2291.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL806.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL807.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL808.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA2292.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA2293.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA2294.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL809.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL810.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL811.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA2295.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA2296.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA2297.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL812.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL813.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL814.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTA2298.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTA2299.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTA2300.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTL815.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTL816.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTL817.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTL818.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTL819.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTL820.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA2301.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA2302.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA2303.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA2304.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA2305.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA2306.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA2307.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA2308.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA2309.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA2310.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA2311.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA2312.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA2313.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA2314.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA2315.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA2316.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA2317.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA2318.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA2319.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA2320.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA2321.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA2322.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA2323.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA2324.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA2325.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA2326.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA2327.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA2328.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA2329.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA2330.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA2331.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA2332.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA2333.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA2334.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA2335.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA2336.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA2337.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA2338.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA2339.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA2340.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA2341.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA2342.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA2343.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA2344.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA2345.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA2346.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA2347.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA2348.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA2349.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA2350.a" "clipLibrary2.cel[0].cev[161].cevr";
connectAttr "animCurveTA2351.a" "clipLibrary2.cel[0].cev[162].cevr";
connectAttr "animCurveTA2352.a" "clipLibrary2.cel[0].cev[163].cevr";
connectAttr "animCurveTA2353.a" "clipLibrary2.cel[0].cev[164].cevr";
connectAttr "animCurveTA2354.a" "clipLibrary2.cel[0].cev[165].cevr";
connectAttr "animCurveTA2355.a" "clipLibrary2.cel[0].cev[166].cevr";
connectAttr "animCurveTA2356.a" "clipLibrary2.cel[0].cev[167].cevr";
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
// End of brt-m_get_into_car_close_door_high.ma
