//Maya ASCII 4.0 scene
//Name: frk_idle_pants.ma
//Last modified: Tue, Jun 18, 2002 03:17:07 PM
requires maya "4.0";
requires "p3dmayaexp" "17.6";
requires "p3dSimpleShader" "17.1";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "frk_idle_pantsSource";
	setAttr ".ihi" 0;
	setAttr ".du" 52;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL329";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "animCurveTL330";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "animCurveTL332";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 52 0;
createNode animCurveTA -n "animCurveTA905";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 52 0;
createNode animCurveTU -n "animCurveTU61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU62";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU63";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU64";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU65";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU66";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU67";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU68";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "animCurveTA906";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA907";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA908";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL334";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL335";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL336";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL337";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.26454016861507795 5 -0.26454016861507795 
		10 -0.26454016861507795 18 -0.26454016861507795 22 -0.26454016861507795 26 
		-0.26454016861507795 29 -0.26454016861507795 32 -0.26389742356597751 41 -0.26389742356597751 
		47 -0.26454016861507795 52 -0.26454016861507795;
	setAttr -s 11 ".kit[7:10]"  3 3 9 9;
	setAttr -s 11 ".kot[7:10]"  3 3 9 9;
createNode animCurveTL -n "animCurveTL338";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.17851775438963227 5 0.17851775438963227 
		10 0.17430255666982239 18 0.17851547649206567 22 0.17851547649206567 26 0.17851547649206567 
		29 0.17851547649206567 32 0.23259272363542771 41 0.23259272363542771 47 0.17851547649206567 
		52 0.17858519755493099;
	setAttr -s 11 ".kit[7:10]"  3 3 9 9;
	setAttr -s 11 ".kot[7:10]"  3 3 9 9;
createNode animCurveTL -n "animCurveTL339";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.069399499434282919 5 -0.069399499434282919 
		10 -0.064904406754016042 18 -0.064904406754016042 22 -0.064904406754016042 
		26 -0.064904406754016042 29 -0.064904406754016042 32 -0.009598963151982871 
		41 -0.009598963151982871 47 -0.064904406754016042 52 -0.069471420911812867;
	setAttr -s 11 ".kit[7:10]"  3 3 9 9;
	setAttr -s 11 ".kot[7:10]"  3 3 9 9;
createNode animCurveTA -n "animCurveTA909";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 10 0 18 0 22 0 26 0 29 
		0 32 19.442808156946793 41 19.442808156946793 47 0 52 0;
	setAttr -s 11 ".kit[7:10]"  3 3 9 9;
	setAttr -s 11 ".kot[7:10]"  3 3 9 9;
createNode animCurveTA -n "animCurveTA910";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -25.948901905116401 5 -25.948901905116401 
		10 -25.948901905116401 18 -25.948901905116401 22 -25.948901905116401 26 -25.948901905116401 
		29 -25.948901905116401 32 -25.742756939382335 41 -25.742756939382335 47 -25.948901905116401 
		52 -25.948901905116401;
	setAttr -s 11 ".kit[7:10]"  3 3 9 9;
	setAttr -s 11 ".kot[7:10]"  3 3 9 9;
createNode animCurveTA -n "animCurveTA911";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 10 0 18 0 22 0 26 0 29 
		0 32 -7.305811913380456 41 -7.305811913380456 47 0 52 0;
	setAttr -s 11 ".kit[7:10]"  3 3 9 9;
	setAttr -s 11 ".kot[7:10]"  3 3 9 9;
createNode animCurveTL -n "animCurveTL340";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.21594587158542247 5 0.21594587158542247 
		10 0.21594587158542247 18 0.21594587158542247 22 0.21594587158542247 26 0.21594587158542247 
		29 0.21594587158542247 32 0.21020952350838179 41 0.21020952350838179 47 0.21594587158542247 
		52 0.21594587158542247;
createNode animCurveTL -n "animCurveTL341";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.17851739571999301 5 0.17851739571999301 
		10 0.1743021980001831 18 0.17851511782242641 22 0.17851511782242641 26 0.17851511782242641 
		29 0.17851511782242641 32 0.23259236496578847 41 0.23259236496578847 47 0.17851511782242641 
		52 0.17858483888529172;
createNode animCurveTL -n "animCurveTL342";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.0037107902112311088 5 -0.0037107902112311088 
		10 0.00078430246903575811 18 0.00078430246903575811 22 0.00078430246903575811 
		26 0.00078430246903575811 29 0.00078430246903575811 32 0.043958731571106267 
		41 0.043958731571106267 47 0.00078430246903575811 52 -0.0037827116887610523;
createNode animCurveTA -n "animCurveTA912";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 10 0 18 0 22 0 26 0 29 
		0 32 14.685176199147218 41 14.685176199147218 47 0 52 0;
createNode animCurveTA -n "animCurveTA913";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 10 0 18 0 22 0 26 0 29 
		0 32 0 41 0 47 0 52 0;
createNode animCurveTA -n "animCurveTA914";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 10 0 18 0 22 0 26 0 29 
		0 32 0 41 0 47 0 52 0;
createNode animCurveTA -n "animCurveTA915";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA916";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA917";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA918";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA919";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA920";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL343";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 10 0 18 0 22 0 26 0 29 
		0 32 0 41 0 47 0 52 0;
createNode animCurveTL -n "animCurveTL344";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 10 0 18 0 22 0 26 0 29 
		0 32 0 41 0 47 0 52 0;
createNode animCurveTL -n "animCurveTL345";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 5 1 10 1 18 1 22 1 26 1 29 
		1 32 1 41 1 47 1 52 1;
createNode animCurveTL -n "animCurveTL346";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 10 0 18 0 22 0 26 0 29 
		0 32 0 41 0 47 0 52 0;
createNode animCurveTL -n "animCurveTL347";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 10 0 18 0 22 0 26 0 29 
		0 32 0 41 0 47 0 52 0;
createNode animCurveTL -n "animCurveTL348";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 5 1 10 1 18 1 22 1 26 1 29 
		1 32 1 41 1 47 1 52 1;
createNode animCurveTL -n "animCurveTL349";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.076472881617957691 5 -0.076472881617957691 
		10 -0.076472881617957691 18 -0.076472881617957691 22 -0.076472881617957691 
		26 -0.076472881617957691 29 -0.076472881617957691 32 -0.076472881617957691 
		41 -0.076472881617957691 47 -0.076472881617957691 52 -0.076472881617957691;
createNode animCurveTL -n "animCurveTL350";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.98962243235746672 5 0.98962243235746672 
		10 0.98063818392602498 18 0.75912775207696281 22 0.75912775207696281 26 0.80973922831750966 
		29 0.93397186668091448 32 1.0433935346733056 41 1.0433935346733056 47 0.96888790396286339 
		52 0.98976618033679664;
	setAttr -s 11 ".kit[7:10]"  1 1 9 9;
	setAttr -s 11 ".kot[7:10]"  1 1 9 9;
	setAttr -s 11 ".kix[7:10]"  0.29381239414215088 0.3505689799785614 
		0.068213805556297302 0.079574666917324066;
	setAttr -s 11 ".kiy[7:10]"  0.95586311817169189 -0.93653690814971924 
		-0.99767071008682251 0.99682891368865967;
	setAttr -s 11 ".kox[7:10]"  0.29381421208381653 0.35056918859481812 
		0.068213805556297302 0.079574666917324066;
	setAttr -s 11 ".koy[7:10]"  0.95586252212524414 -0.93653684854507446 
		-0.99767071008682251 0.99682891368865967;
createNode animCurveTL -n "animCurveTL351";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.0262671373231235 5 -0.0262671373231235 
		10 0 18 0 22 0 26 0.0099810059211026276 29 0.024772338507243665 32 0.021374404915634488 
		41 0.021374404915634488 47 0.0180861033476537 52 -0.026687411494488465;
createNode animCurveTA -n "animCurveTA921";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.62843630316474508 5 -0.62843630316474508 
		10 2.2834578093678095 18 2.2834578093678095 22 2.2834578093678095 26 1.4715268068377925 
		29 0.26828725437392986 32 -0.62843630316474508 41 -0.62843630316474508 47 
		6.5597635145794184 52 -0.67502660535343884;
createNode animCurveTA -n "animCurveTA922";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -5.8284402688137158 5 -5.8284402688137158 
		10 -5.7554675804449573 18 -5.7554675804449573 22 -5.7554675804449573 26 -5.7758147447808961 
		29 -5.8059681851447031 32 -5.8284402688137158 41 -5.8284402688137158 47 -5.6582054051558153 
		52 -5.8296078317491693;
createNode animCurveTA -n "animCurveTA923";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.2956360193097458 5 -1.2956360193097458 
		10 -1.5895571095161831 18 -1.5895571095161831 22 -1.5895571095161831 26 -1.5076023271815482 
		29 -1.3861495976653087 32 -1.2956360193097458 41 -1.2956360193097458 47 -1.9079171106475681 
		52 -1.290933282119572;
createNode animCurveTA -n "animCurveTA924";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA925";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA926";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA927";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA928";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA929";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA930";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA931";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA932";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA933";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA934";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA935";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA936";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA937";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA938";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA939";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA940";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA941";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA942";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA943";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA944";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 10 0 18 0 22 0 26 0 29 
		0 32 -9.2779567853168281 41 -9.2779567853168281 47 0 52 0;
createNode animCurveTA -n "animCurveTA945";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 10 0 18 0 22 0 26 0 29 
		0 32 -1.5141195787781474 41 -1.5141195787781474 47 0 52 0;
createNode animCurveTA -n "animCurveTA946";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 10 0 18 0 22 0 26 0 29 
		0 32 -17.420788293248407 41 -17.420788293248407 47 0 52 0;
createNode animCurveTA -n "animCurveTA947";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 10 0 18 0 22 0 26 0 29 
		0 32 -0.54615808046855885 41 -0.54615808046855885 47 0 52 0;
createNode animCurveTA -n "animCurveTA948";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 10 0 18 0 22 0 26 0 29 
		0 32 -0.35304168149830378 41 -0.35304168149830378 47 0 52 0;
createNode animCurveTA -n "animCurveTA949";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 10 0 18 0 22 0 26 0 29 
		0 32 -14.041365944820749 41 -14.041365944820749 47 0 52 0;
createNode animCurveTL -n "animCurveTL352";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.43524234076486068 5 -0.43524234076486068 
		10 -0.43524234076486068 18 -0.43524234076486068 22 -0.43524234076486068 26 
		-0.43524234076486068 29 -0.43524234076486068 32 -0.43524234076486068 41 -0.43524234076486068 
		47 -0.43524234076486068 52 -0.43524234076486068;
createNode animCurveTL -n "animCurveTL353";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.82665738350180629 5 -0.82665738350180629 
		10 -0.82665738350180629 18 -0.82665738350180629 22 -0.82665738350180629 26 
		-0.82665738350180629 29 -0.82665738350180629 32 -0.82665738350180629 41 -0.82665738350180629 
		47 -0.82665738350180629 52 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL354";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.27773886459742925 5 0.27773886459742925 
		10 0.27773886459742925 18 0.27773886459742925 22 0.27773886459742925 26 0.27773886459742925 
		29 0.27773886459742925 32 0.27773886459742925 41 0.27773886459742925 47 0.27773886459742925 
		52 0.27773886459742925;
createNode animCurveTA -n "animCurveTA950";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.8121934161072303e-015 5 -1.8121934161072303e-015 
		10 0 18 0 22 0 26 0 29 0 32 0 41 0 47 0 52 -1.8121934161072303e-015;
createNode animCurveTA -n "animCurveTA951";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 28.652637602052774 5 28.652637602052774 
		10 28.652637602052774 18 28.652637602052774 22 28.652637602052774 26 28.652637602052774 
		29 28.652637602052774 32 28.652637602052774 41 28.652637602052774 47 28.652637602052774 
		52 28.652637602052774;
createNode animCurveTA -n "animCurveTA952";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 64.676908227303443 5 64.676908227303443 
		10 64.676908227303443 18 64.676908227303443 22 64.676908227303443 26 64.676908227303443 
		29 64.676908227303443 32 64.676908227303443 41 64.676908227303443 47 64.676908227303443 
		52 64.676908227303443;
createNode animCurveTL -n "animCurveTL355";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.5198069948790518 5 0.5198069948790518 
		10 0.5198069948790518 18 0.5198069948790518 22 0.5198069948790518 26 0.5198069948790518 
		29 0.5198069948790518 32 0.5198069948790518 41 0.5198069948790518 47 0.5198069948790518 
		52 0.5198069948790518;
createNode animCurveTL -n "animCurveTL356";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.72394202659893114 5 -0.72394202659893114 
		10 -0.72394202659893114 18 -0.72394202659893114 22 -0.72394202659893114 26 
		-0.72394202659893114 29 -0.72394202659893114 32 -0.72394202659893114 41 -0.72394202659893114 
		47 -0.72394202659893114 52 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL357";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.36439499068905612 5 0.36439499068905612 
		10 0.36439499068905612 18 0.36439499068905612 22 0.36439499068905612 26 0.36439499068905612 
		29 0.36439499068905612 32 0.36439499068905612 41 0.36439499068905612 47 0.36439499068905612 
		52 0.36439499068905612;
createNode animCurveTA -n "animCurveTA953";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 7.7976222737965299 5 7.7976222737965299 
		10 7.7976222737965299 18 7.7976222737965299 22 7.7976222737965299 26 7.7976222737965299 
		29 7.7976222737965299 32 7.7976222737965299 41 7.7976222737965299 47 7.7976222737965299 
		52 7.7976222737965299;
createNode animCurveTA -n "animCurveTA954";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -30.409274105849079 5 -30.409274105849079 
		10 -30.409274105849079 18 -30.409274105849079 22 -30.409274105849079 26 -30.409274105849079 
		29 -30.409274105849079 32 -30.409274105849079 41 -30.409274105849079 47 -30.409274105849079 
		52 -30.409274105849079;
createNode animCurveTA -n "animCurveTA955";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -64.859940280210878 5 -64.859940280210878 
		10 -64.859940280210878 18 -64.859940280210878 22 -64.859940280210878 26 -64.859940280210878 
		29 -64.859940280210878 32 -64.859940280210878 41 -64.859940280210878 47 -64.859940280210878 
		52 -64.859940280210878;
createNode animCurveTL -n "animCurveTL358";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.74395448430240918 5 -0.74395448430240918 
		10 -0.53434788570594915 18 -0.53434788570594915 22 -0.53434788570594915 26 
		-0.58818990283902051 29 -0.39064090471538715 32 -0.57552967895221696 41 -0.57552967895221696 
		47 -0.69528686369743042 52 -0.7473081899501044;
createNode animCurveTL -n "animCurveTL359";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.6261063624852916 5 1.6261063624852916 
		10 1.7001010719041316 18 1.3195553490014917 22 1.3021742430776879 26 1.4089188028007704 
		29 1.5954218765726689 32 1.7928847186140733 41 1.7928847186140733 47 1.6801947006739775 
		52 1.6249224471404611;
createNode animCurveTL -n "animCurveTL360";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.097994651149805143 5 -0.097994651149805143 
		10 0.45474604965567494 18 0.33673520778907767 22 0.37187554064903644 26 0.3500157377415094 
		29 0.41971679364741704 32 0.41812891356497167 41 0.41812891356497167 47 0.417752161672994 
		52 -0.10683850182263126;
createNode animCurveTA -n "animCurveTA956";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 5.4739599453216474 5 5.4739599453216474 
		10 73.443133043686572 18 73.443133043686572 22 73.443133043686572 26 56.727903475688066 
		29 64.380599359556214 32 73.443133043686572 41 73.443133043686572 47 42.567321958187165 
		52 4.3864531704674157;
createNode animCurveTA -n "animCurveTA957";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 8.5874521608419823 5 8.5874521608419823 
		10 38.979986723394404 18 38.979986723394404 22 38.979986723394404 26 51.151281108641399 
		29 45.578924904606403 32 38.979986723394404 41 38.979986723394404 47 24.033769547059098 
		52 8.1011716189321721;
createNode animCurveTA -n "animCurveTA958";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 74.754744621954103 5 74.754744621954103 
		10 124.98321315946127 18 124.98321315946127 22 124.98321315946127 26 115.68053484129005 
		29 119.93955902018169 32 124.98321315946127 41 124.98321315946127 47 102.26584300810023 
		52 73.951089145308501;
createNode animCurveTL -n "animCurveTL361";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.49536680144018153 5 0.49536680144018153 
		10 0.40911115441648038 18 0.19133420157827224 22 0.11547874114694967 26 0.091989727290005555 
		29 0.33073567826824229 32 0.23677686699793907 41 0.23677686699793907 47 0.40237227325976255 
		52 0.49674689168865876;
createNode animCurveTL -n "animCurveTL362";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.5784845703735852 5 1.5784845703735852 
		10 1.5648273417456751 18 1.3362063738504413 22 1.3612271654517267 26 1.4572441565098542 
		29 1.6278805578677782 32 1.8148508825807266 41 1.8148508825807266 47 1.8563012095892071 
		52 1.5787030860255331;
createNode animCurveTL -n "animCurveTL363";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.14314299916678522 5 0.14314299916678522 
		10 0.54539791768990031 18 0.36736304761027094 22 0.37118872287868804 26 0.47983838711380855 
		29 0.38565565514814076 32 0.43073580607773027 41 0.43073580607773027 47 0.53290721768497884 
		52 0.13670692043622562;
createNode animCurveTA -n "animCurveTA959";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 16.226511010665405 5 16.226511010665405 
		10 55.18812132669747 18 80.519597779948526 22 80.519597779948526 26 83.48519833697749 
		29 82.127464133851234 32 80.519597779948526 41 80.519597779948526 47 99.50717972844933 
		52 15.603125221219486;
createNode animCurveTA -n "animCurveTA960";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -8.513966085499284 5 -8.513966085499284 
		10 -27.832875552975224 18 -40.393354773039377 22 -40.393354773039377 26 -41.863832231090441 
		29 -41.190606858852846 32 -40.393354773039377 41 -40.393354773039377 47 -48.870110169369639 
		52 -8.2048635278001374;
createNode animCurveTA -n "animCurveTA961";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -68.213989601412422 5 -68.213989601412422 
		10 -102.38770804514763 18 -124.60626432508943 22 -124.60626432508943 26 -127.20742972693802 
		29 -126.0165440466653 32 -124.60626432508943 41 -124.60626432508943 47 -156.87817788026064 
		52 -67.667210098448578;
createNode animCurveTL -n "animCurveTL364";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 10 1.2291513513378414 18 
		1.2291513513378414 22 1.2291513513378414 26 1.2266340237612954 29 1.2229034749684093 
		32 1.2201232547425354 41 1.2201232547425354 47 0.61647849895710405 52 -0.019666421448341881;
createNode animCurveTL -n "animCurveTL365";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 10 0.12832141112741458 
		18 0.12832141112741458 22 0.12832141112741458 26 0.18296777076291279 29 0.26395083717461448 
		32 0.32430409097218393 41 0.32430409097218393 47 0.16385762459568459 52 -0.0020531426164265153;
createNode animCurveTL -n "animCurveTL366";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1 5 -1 10 -0.59463107983153618 
		18 -0.59463107983153618 22 -0.59463107983153618 26 -0.60429664887012391 29 
		-0.61862052034644965 32 -0.62929549588554434 41 -0.62929549588554434 47 -0.8126981435168763 
		52 -1.0064859027300839;
createNode animCurveTL -n "animCurveTL367";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.10167917362943303 5 -0.10167917362943303 
		10 -1.3135053331638864 18 -1.3135053331638864 22 -1.3135053331638864 26 -1.3206520244223319 
		29 -1.3312430496009997 32 -1.3391360921630093 41 -1.3391360921630093 47 -0.72691565135414726 
		52 -0.082289954538271565;
createNode animCurveTL -n "animCurveTL368";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.40762644910266188 5 -0.40762644910266188 
		10 -0.30829327817045199 18 -0.30829327817045199 22 -0.30829327817045199 26 
		-0.15315230502859475 29 0.076758552128260382 32 0.24810139285191044 41 0.24810139285191044 
		47 -0.076313924726897617 52 -0.40921577991665387;
createNode animCurveTL -n "animCurveTL369";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.93129112588482243 5 -0.93129112588482243 
		10 -0.054078464509174862 18 -0.054078464509174862 22 -0.054078464509174862 
		26 -0.081519006415020967 29 -0.1221844664236639 32 -0.15249071390707453 41 
		-0.15249071390707453 47 -0.53779504873757977 52 -0.94532652821748009;
createNode animCurveTA -n "animCurveTA962";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 12.253734489678925 5 12.253734489678925 
		10 12.253734489678925 18 12.253734489678925 22 12.253734489678925 26 12.253734489678925 
		29 12.253734489678925 32 12.253734489678925 41 12.253734489678925 47 12.253734489678925 
		52 12.253734489678925;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA963";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -65.746751280844961 5 -65.746751280844961 
		10 -65.746751280844961 18 -65.746751280844961 22 -65.746751280844961 26 -65.746751280844961 
		29 -65.746751280844961 32 -65.746751280844961 41 -65.746751280844961 47 -65.746751280844961 
		52 -65.746751280844961;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA964";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 3.871449260799477e-015 5 3.871449260799477e-015 
		10 0 18 0 22 0 26 0 29 0 32 0 41 0 47 0 52 3.871449260799477e-015;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA965";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.061808866237337522 5 -0.061808866237337522 
		10 -0.061808866237337522 18 -0.061808866237337522 22 -0.061808866237337522 
		26 -0.061808866237337522 29 -0.061808866237337522 32 -0.061808866237337522 
		41 -0.061808866237337522 47 -0.061808866237337522 52 -0.061808866237337522;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA966";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -59.058178941076754 5 -59.058178941076754 
		10 -59.058178941076754 18 -59.058178941076754 22 -59.058178941076754 26 -59.058178941076754 
		29 -59.058178941076754 32 -59.058178941076754 41 -59.058178941076754 47 -59.058178941076754 
		52 -59.058178941076754;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA967";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 16.579147429757843 5 16.579147429757843 
		10 16.579147429757843 18 16.579147429757843 22 16.579147429757843 26 16.579147429757843 
		29 16.579147429757843 32 16.579147429757843 41 16.579147429757843 47 16.579147429757843 
		52 16.579147429757843;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA968";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 8.5572674112203622 5 8.5572674112203622 
		10 8.5572674112203622 18 8.5572674112203622 22 8.5572674112203622 26 8.5572674112203622 
		29 8.5572674112203622 32 8.5572674112203622 41 8.5572674112203622 47 8.5572674112203622 
		52 8.5572674112203622;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA969";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 15.711328223519057 5 15.711328223519057 
		10 15.711328223519057 18 15.711328223519057 22 15.711328223519057 26 15.711328223519057 
		29 15.711328223519057 32 15.711328223519057 41 15.711328223519057 47 15.711328223519057 
		52 15.711328223519057;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA970";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 10 0 18 0 22 0 26 0 29 
		0 32 0 41 0 47 0 52 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA971";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 10 0 18 0 22 0 26 0 29 
		0 32 0 41 0 47 0 52 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA972";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 10 0 18 0 22 0 26 0 29 
		0 32 0 41 0 47 0 52 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA973";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 10 0 18 0 22 0 26 0 29 
		0 32 0 41 0 47 0 52 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA974";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 10 0 18 0 22 0 26 0 29 
		0 32 0 41 0 47 0 52 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA975";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 10 0 18 0 22 0 26 0 29 
		0 32 0 41 0 47 0 52 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA976";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 10.423754966968488 5 10.423754966968488 
		10 -10.042642518243632 18 -10.042642518243632 22 -10.042642518243632 26 -10.042642518243632 
		29 -10.042642518243632 32 -10.042642518243632 41 -10.042642518243632 47 0.082919385268106688 
		52 10.751217316967907;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA977";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 27.722848255843903 5 27.722848255843903 
		10 67.483899424111712 18 67.483899424111712 22 67.483899424111712 26 67.483899424111712 
		29 67.483899424111712 32 67.483899424111712 41 67.483899424111712 47 47.812485393359069 
		52 27.086671416879817;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA978";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 21.576484776388227 5 21.576484776388227 
		10 -2.3821113810293326 18 -2.3821113810293326 22 -2.3821113810293326 26 -2.3821113810293326 
		29 -2.3821113810293326 32 -2.3821113810293326 41 -2.3821113810293326 47 9.4711838491755564 
		52 21.959822311539664;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA979";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 10 0 18 0 22 0 26 0 29 
		0 32 0 41 0 47 0 52 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA980";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 10 0 18 0 22 0 26 0 29 
		0 32 0 41 0 47 0 52 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA981";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 27.080064458283051 5 27.080064458283051 
		10 68.806548295537937 18 68.806548295537937 22 68.806548295537937 26 68.806548295537937 
		29 68.806548295537937 32 68.806548295537937 41 68.806548295537937 47 48.162753787078891 
		52 26.41244064903189;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA982";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA983";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA984";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA985";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA986";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA987";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.994403295754109;
createNode animCurveTA -n "animCurveTA988";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA989";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA990";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.994403295754109;
createNode animCurveTA -n "animCurveTA991";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 10 0 18 0 22 0 26 0 29 
		0 32 0 41 0 47 0 52 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA992";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 10 0 18 0 22 0 26 0 29 
		0 32 0 41 0 47 0 52 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA993";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 27.911632519594587 5 27.911632519594587 
		10 23.762201585862794 18 23.762201585862794 22 23.762201585862794 26 23.762201585862794 
		29 23.762201585862794 32 23.762201585862794 41 23.762201585862794 47 25.815094370662738 
		52 27.978023413254771;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA994";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 10 0 18 0 22 0 26 0 29 
		0 32 0 41 0 47 0 52 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA995";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 10 0 18 0 22 0 26 0 29 
		0 32 0 41 0 47 0 52 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA996";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 10 0 18 0 22 0 26 0 29 
		0 32 0 41 0 47 0 52 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA997";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.65073001024951671 5 -0.65073001024951671 
		10 -0.85205673513420865 18 -0.85205673513420865 22 -0.69824288190026618 26 
		-2.137807717091377 29 9.2447171304003533 32 -0.65073001024951671 41 -0.65073001024951671 
		47 0.0052766306658766525 52 -0.64750878271380508;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA998";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -4.2368721935960929 5 -4.2368721935960929 
		10 -4.4824356438276256 18 -4.4824356438276256 22 -4.2967580092602597 26 -4.4139645518889346 
		29 -4.3124939462968808 32 -4.2368721935960929 41 -4.2368721935960929 47 -3.2503479029010873 
		52 -4.2329431781603661;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA999";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 8.7398866450636881 5 8.7398866450636881 
		10 11.149228329510798 18 11.149228329510798 22 9.3197689690317418 26 10.477425324389802 
		29 9.4818481869998674 32 8.7398866450636881 41 8.7398866450636881 47 -2.9223119552169439 
		52 8.7013371744964463;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA1000";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 10 14.556169822445678 18 
		14.411386115943483 22 15.007874752635418 26 14.660973923362297 29 14.538415195668952 
		32 14.396058100854695 41 14.396058100854695 47 7.6331168157054901 52 -0.23289873488134796;
createNode animCurveTA -n "animCurveTA1001";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 10 -6.4843968302229653 
		18 -6.8254049878696845 22 -4.0136081584707606 26 -2.008194499669739 29 -1.2265799566813611 
		32 -1.3027246497252756 41 -1.3027246497252756 47 -1.5220949242056527 52 0.10375035544599852;
createNode animCurveTA -n "animCurveTA1002";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -15.452965173287611 5 -15.452965173287611 
		10 6.2018789973120478 18 6.9936154384392628 22 0.52626657581994407 26 -6.1505462763315597 
		29 -9.5790847152270491 32 -11.742565001551627 41 -11.742565001551627 47 -5.4928937419916668 
		52 -15.799442677400892;
createNode animCurveTA -n "animCurveTA1003";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 4.8714700432790456 5 4.8714700432790456 
		10 7.7917475793415498 18 7.7917475793415498 22 7.7917475793415498 26 7.7917475793415498 
		29 7.7917475793415498 32 7.7917475793415498 41 7.7917475793415498 47 6.3469671234661975 
		52 4.8247456035968037;
createNode animCurveTA -n "animCurveTA1004";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 11.783606204137085 5 11.783606204137085 
		10 6.2255540206998301 18 6.2255540206998301 22 6.2255540206998301 26 6.2255540206998301 
		29 6.2255540206998301 32 6.2255540206998301 41 6.2255540206998301 47 8.9753491700735193 
		52 11.872535041724658;
createNode animCurveTA -n "animCurveTA1005";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 7.5423825101935913 5 7.5423825101935913 
		10 7.0867899148581373 18 7.0867899148581373 22 7.0867899148581373 26 7.0867899148581373 
		29 7.0867899148581373 32 7.0867899148581373 41 7.0867899148581373 47 7.3121901582025073 
		52 7.5496719923507234;
createNode animCurveTA -n "animCurveTA1006";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.8903601258661931 5 -1.8903601258661931 
		10 -1.846828506825525 18 -1.846828506825525 22 -1.8963865993043814 26 -3.2165885834129959 
		29 -0.093552693032818102 32 -1.8903601258661931 41 -1.8903601258661931 47 
		-1.7922009771277529 52 -1.891056631814841;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA1007";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 2.5597289571479034 5 2.5597289571479034 
		10 2.4306376561676961 18 2.4306376561676961 22 2.5768652482138079 26 2.4666325193809691 
		29 2.5199750364723319 32 2.5597289571479034 41 2.5597289571479034 47 2.2529557761319139 
		52 2.5617944179084264;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA1008";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 2.016811087403604 5 2.016811087403604 
		10 3.3212955778048432 18 3.3212955778048432 22 1.8428625437363186 26 2.9575627850232817 
		29 2.418529665047247 32 2.016811087403604 41 2.016811087403604 47 2.4133471415587984 
		52 1.9959393366420761;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 1 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 1 
		9 9 9 9;
	setAttr -s 11 ".kix[6:10]"  0.99629849195480347 0.99984639883041382 
		0.99990421533584595 0.9999995231628418 0.99904602766036987;
	setAttr -s 11 ".kiy[6:10]"  -0.08596096932888031 -0.017525589093565941 
		0.013840393163263798 -0.00099349254742264748 -0.043669134378433228;
	setAttr -s 11 ".kox[6:10]"  0.99629849195480347 0.99984639883041382 
		0.99990421533584595 0.9999995231628418 0.99904602766036987;
	setAttr -s 11 ".koy[6:10]"  -0.085960984230041504 -0.017525589093565941 
		0.013840393163263798 -0.00099349254742264748 -0.043669134378433228;
createNode animCurveTA -n "animCurveTA1009";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 10 0 18 0 22 0 26 0 29 
		0 32 0 41 0 47 0 52 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA1010";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 10 0 18 0 22 0 26 0 29 
		0 32 0 41 0 47 0 52 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA1011";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 33.429092416277157 5 33.429092416277157 
		10 95.568222600944239 18 95.568222600944239 22 95.568222600944239 26 95.568222600944239 
		29 95.568222600944239 32 95.568222600944239 41 95.568222600944239 47 64.825459371953428 
		52 32.434866355441102;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA1012";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 8.2533422302317216 5 8.2533422302317216 
		10 -52.527908164123822 18 -52.527908164123822 22 -52.527908164123822 26 -52.527908164123822 
		29 -52.527908164123822 32 -52.527908164123822 41 -52.527908164123822 47 -22.456943619512501 
		52 9.225842191500945;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA1013";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 23.263402056531085 5 23.263402056531085 
		10 72.535726142846599 18 72.535726142846599 22 72.535726142846599 26 72.535726142846599 
		29 72.535726142846599 32 72.535726142846599 41 72.535726142846599 47 48.158697266603234 
		52 22.475044902978311;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA1014";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 20.166277752815617 5 20.166277752815617 
		10 -39.953960298963814 18 -39.953960298963814 22 -39.953960298963814 26 -39.953960298963814 
		29 -39.953960298963814 32 -39.953960298963814 41 -39.953960298963814 47 -10.210025421458587 
		52 21.128201590371358;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA1015";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 10 0 18 0 22 0 26 0 29 
		0 32 0 41 0 47 0 52 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA1016";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 10 0 18 0 22 0 26 0 29 
		0 32 0 41 0 47 0 52 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTA -n "animCurveTA1017";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 17.254116939558369 5 17.254116939558369 
		10 45.068550055624691 18 45.068550055624691 22 45.068550055624691 26 45.068550055624691 
		29 45.068550055624691 32 45.068550055624691 41 45.068550055624691 47 31.307615093760447 
		52 16.809086021314162;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode clipLibrary -n "clipLibrary1";
	setAttr -s 160 ".cel[0].cev";
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
	setAttr ".ihi" 0;
	setAttr -s 20 ".lnk";
select -ne :time1;
	setAttr ".o" 17;
select -ne :renderPartition;
	setAttr -s 20 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 20 ".s";
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
	setAttr -s 108 ".gn";
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
connectAttr "frk_idle_pantsSource.st" "clipLibrary1.st[0]";
connectAttr "frk_idle_pantsSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL329.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL330.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL332.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTA905.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU61.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU62.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU63.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU64.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU65.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU66.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU67.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU68.a" "clipLibrary1.cel[0].cev[13].cevr";
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
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of frk_idle_pants.ma
