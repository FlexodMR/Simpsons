//Maya ASCII 4.0 scene
//Name: lsa_get_out_of_car_high_driver.ma
//Last modified: Fri, Oct 11, 2002 02:58:17 PM
requires maya "4.0";
requires "p3dmayaexp" "18.6";
requires "p3dSimpleShader" "18.6";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "lsa_get_out_of_car_high_driverSource";
	setAttr ".ihi" 0;
	setAttr ".du" 30;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL1231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTL -n "animCurveTL1232";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTL -n "animCurveTL1233";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -1.0849761522975041 1 -1.0625277408865474 
		2 -0.99972489112148666 3 -0.91154025350166368 4 -0.81294647852641999 5 -0.71891621669509831 
		6 -0.64442211850703968 7 -0.59145540911773242 8 -0.54843621299866219 9 -0.50998052962316831 
		10 -0.47070435846459041 11 -0.42522369899626761 12 -0.36815455069153957 13 
		-0.26814577611656448 14 -0.14331905150565821 15 -0.062499596834395994 16 
		-0.049515373697861902 17 -0.068293779600146237 18 -0.097809188380342832 19 
		-0.11703597387754551 20 -0.12133116703578957 21 -0.12158714711040913 22 -0.12008131040744636 
		23 -0.11909105323294339 24 -0.12007992825363158 25 -0.12232524125584554 26 
		-0.12482501822503266 27 -0.12657728514664016 28 -0.12658006800611532 29 -0.12383139278890548 
		30 -0.11732928548045783;
createNode animCurveTL -n "animCurveTL1234";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0;
createNode animCurveTL -n "animCurveTL1235";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0.48984849604313591 1 0.49295369866812866 
		2 0.49815627736492174 3 0.50408636991830169 4 0.50937411411305444 5 0.51264964773396626 
		6 0.51254310856582341 7 0.5121573300712815 8 0.51320876871101317 9 0.51224799676683064 
		10 0.50582558652054599 11 0.49049211025397121 12 0.46279814024891858 13 0.38886022932023223 
		14 0.27927805066964434 15 0.19732685715929787 16 0.16254922270173242 17 0.14631075234975471 
		18 0.13962124567592452 19 0.13349050225280179 20 0.12789662045741501 21 0.12684254551480251 
		22 0.12737534726953853 23 0.12654209556619747 24 0.12340558292541962 25 0.11937962109038484 
		26 0.11503780873947646 27 0.11095374455107783 28 0.10770102720357226 29 0.10585325537534318 
		30 0.10598402774477389;
createNode animCurveTA -n "animCurveTA3547";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0 1 2.7712005157678101 2 10.218753269864841 
		3 21.043585072481488 4 33.946622733808141 5 47.6287930640352 6 60.791022873353086 
		7 72.134238971952172 8 80.005476087442489 9 86.626712731437593 10 92.603123111275949 
		11 97.876918766110933 12 102.39031123509601 13 106.08551205738453 14 108.90473277212999 
		15 110.79018491848576 16 112.07062914128245 17 113.12065853056939 18 113.95123329332804 
		19 114.57331363653989 20 114.99785976718645 21 115.23583189224915 22 115.29819021870952 
		23 115.19589495354903 24 114.93990630374914 25 114.54118447629135 26 114.01068967815712 
		27 113.35938211632798 28 112.59822199778539 29 111.73816952951083 30 110.79018491848576;
createNode animCurveTU -n "animCurveTU17";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTU -n "animCurveTU18";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTU -n "animCurveTU19";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTU -n "animCurveTU20";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTU -n "animCurveTU21";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTU -n "animCurveTU22";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTU -n "animCurveTU23";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 30 1;
createNode animCurveTU -n "animCurveTU24";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 30 1;
createNode animCurveTA -n "animCurveTA3548";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3549";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3550";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTL -n "animCurveTL1236";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTL -n "animCurveTL1237";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTL -n "animCurveTL1238";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTL -n "animCurveTL1239";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -2.7239713357678643 6 -1.6613877290312453 
		12 -0.95579556625848594 15 0.13038708826804987 19 -0.21594587158542247 23 
		-0.21594587158542247 30 -0.21594587158542247;
createNode animCurveTL -n "animCurveTL1240";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.3644614825362704 6 1.7236745837384495 
		12 1.6535390184723893 15 1.001806518710681 19 0.23105976343909335 23 0.14164087599529637 
		30 0.14164087599529637;
	setAttr -s 7 ".kit[5:6]"  3 9;
	setAttr -s 7 ".kot[5:6]"  3 9;
createNode animCurveTL -n "animCurveTL1241";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.7939370303188074 6 1.6289704736610506 
		12 1.4835782452222117 15 0.48669223335250289 19 0.44052353268102978 23 0.48428229143983942 
		30 0.48428229143983942;
createNode animCurveTA -n "animCurveTA3551";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -27.647037481197408 6 -1.6245559154144846 
		12 -98.648923617843252 15 -135.08543617433844 19 -169.048211218012 23 -171.83932330268107 
		30 -171.83932330268107;
createNode animCurveTA -n "animCurveTA3552";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.6471102606573038 6 33.658783037948005 
		12 69.202813513275643 15 56.780741339184488 19 69.249994910671361 23 68.169561768861598 
		30 68.169561768861598;
createNode animCurveTA -n "animCurveTA3553";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -7.7922141916432537 6 6.8168172273151395 
		12 -123.36829379451167 15 -178.0097109456247 19 -183.58467400889313 23 -170.56724895848305 
		30 -170.56724895848305;
createNode animCurveTL -n "animCurveTL1242";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -2.2856607953032229 6 -1.2226628650071876 
		12 -1.1237936702150706 15 -0.67279308231273705 19 -0.45767329698442788 23 
		-0.42471957076167488 30 -0.42471957076167488;
createNode animCurveTL -n "animCurveTL1243";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.381084848324742 6 1.6673560950121395 
		12 1.5351822968118796 15 1.1890974130070411 19 0.42138243474603998 23 0.14164123466493578 
		30 0.14164123466493578;
	setAttr -s 7 ".kit[5:6]"  3 3;
	setAttr -s 7 ".kot[5:6]"  3 3;
createNode animCurveTL -n "animCurveTL1244";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.801244371336878 6 1.0500082588287662 
		12 0.93139632063352173 15 0.45596310793574701 19 0.18960595071350941 23 0.04295041053611711 
		30 0.04295041053611711;
createNode animCurveTA -n "animCurveTA3554";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -28.33147073208438 6 -14.868773507399556 
		12 -129.95294279235549 15 -104.61282655098202 19 20.42261469956993 23 -3.1220038384960587 
		30 -3.1220038384960587;
createNode animCurveTA -n "animCurveTA3555";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 10.113681911874204 6 78.632110970251233 
		12 77.167965108756619 15 59.174870718837056 19 120.91731311278465 23 113.32682153040034 
		30 113.32682153040034;
createNode animCurveTA -n "animCurveTA3556";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -3.6896128937020114 6 -45.811993104511636 
		12 -160.88172185248797 15 -164.32116342231345 19 -1.2347523458486165 23 -4.5212018102435731 
		30 -4.5212018102435731;
createNode animCurveTA -n "animCurveTA3557";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3558";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3559";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3560";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3561";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3562";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3563";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3564";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3565";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3566";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3567";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3568";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTL -n "animCurveTL1245";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTL -n "animCurveTL1246";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTL -n "animCurveTL1247";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 6 1 12 1 15 1 19 1 23 1 30 
		1;
createNode animCurveTL -n "animCurveTL1248";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 -0.034660776702225261 12 
		-0.034660776702225261 15 -0.034660776702225261 19 -0.037136546583753045 23 
		0 30 0;
createNode animCurveTL -n "animCurveTL1249";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0.43236842264083392 12 0.43236842264083392 
		15 0.43236842264083392 19 0.46325188044122045 23 0 30 0;
createNode animCurveTL -n "animCurveTL1250";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 6 1.022596790343715 12 1.022596790343715 
		15 1.022596790343715 19 1.024210846778379 23 1 30 1;
createNode animCurveTL -n "animCurveTL1251";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -2.5040279595091715 6 -1.487268636320489 
		12 -0.84966778891871164 15 -0.14424348184978855 19 -0.27010856435616892 23 
		-0.27485150377841289 30 -0.27078550131278833;
createNode animCurveTL -n "animCurveTL1252";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.6614994502053553 6 2.3677091613827397 
		12 2.2809999970960235 15 1.7232515623566733 19 1.0010526182667008 23 0.71953450501365268 
		30 0.95473100313980441;
createNode animCurveTL -n "animCurveTL1253";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.1305265350009219 6 1.1829036717395498 
		12 1.0680967322075994 15 0.45541274473419691 19 0.30808414476402368 23 0.2920478433389147 
		30 0.2446016607575533;
createNode animCurveTA -n "animCurveTA3569";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -19.504876398732133 6 -43.60093415730892 
		12 -148.56017694126103 15 -172.64738219863489 19 -178.32017754444556 23 -164.6957625380733 
		30 -181.18618296711085;
createNode animCurveTA -n "animCurveTA3570";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 69.990829128852255 12 74.659537822064337 
		15 52.378684692527266 19 47.384674013975918 23 49.574855699002413 30 73.584725781050324;
createNode animCurveTA -n "animCurveTA3571";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 -22.241174303419008 12 -150.82505898719899 
		15 -175.09000486188117 19 -177.96257061233209 23 -181.77516513600506 30 -178.96129049071283;
createNode animCurveTA -n "animCurveTA3572";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3573";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3574";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3575";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3576";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3577";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3578";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3579";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3580";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3581";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3582";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3583";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3584";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3585";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3586";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3587";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3588";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3589";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3590";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3591";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3592";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3593";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3594";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  0.29765972495079041 1;
	setAttr -s 3 ".kiy[1:2]"  0.95467203855514526 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA3595";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3596";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3597";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTL -n "animCurveTL1254";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.5198069948790518 30 -0.5198069948790518;
createNode animCurveTL -n "animCurveTL1255";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.72394202659893114 30 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL1256";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.36439499068905612 30 0.36439499068905612;
createNode animCurveTA -n "animCurveTA3598";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.7976222737965317 30 7.7976222737965317;
createNode animCurveTA -n "animCurveTA3599";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 30.409274105849079 30 30.409274105849079;
createNode animCurveTA -n "animCurveTA3600";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 64.859940280210893 30 64.859940280210893;
createNode animCurveTL -n "animCurveTL1257";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.43524234076486068 30 0.43524234076486068;
createNode animCurveTL -n "animCurveTL1258";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.82665738350180629 30 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL1259";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.27773886459742925 30 0.27773886459742925;
createNode animCurveTA -n "animCurveTA3601";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3602";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -28.652637602052774 30 -28.652637602052774;
createNode animCurveTA -n "animCurveTA3603";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -64.676908227303443 30 -64.676908227303443;
createNode animCurveTL -n "animCurveTL1260";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -4.5650504642976548 6 -1.7219867919718053 
		12 -0.58861973702343862 15 0.35098138118127542 19 0.31437136557875472 23 
		0.1893510352415263 30 -0.076245805012821452;
createNode animCurveTL -n "animCurveTL1261";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 3.8006025697972157 6 3.5159496427290038 
		12 3.1698199432128087 15 3.2061533740685118 19 2.1674850212791243 23 1.0603249062614366 
		30 1.1932952672205326;
createNode animCurveTL -n "animCurveTL1262";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.7686455822002116 6 2.329261268336472 
		12 1.9997121228472208 15 1.413743603244497 19 1.3526521780395544 23 1.2560521214181848 
		30 1.0370477783765644;
createNode animCurveTA -n "animCurveTA3604";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -26.203413720634714 6 112.59422255064509 
		12 135.05490232368319 15 113.9559122050107 19 119.4969719567365 23 142.62940656438087 
		30 89.903823884388046;
createNode animCurveTA -n "animCurveTA3605";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 14.791961579779635 6 58.714561745195532 
		12 37.198790080116289 15 24.105889513620941 19 39.774148246065337 23 25.630890987615381 
		30 32.504234509361467;
createNode animCurveTA -n "animCurveTA3606";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 45.895436695401969 6 166.60827380301541 
		12 144.40156807522339 15 224.37664344922476 19 169.03339264937395 23 177.75343970687922 
		30 86.65282174900733;
createNode animCurveTL -n "animCurveTL1263";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -2.790531447591571 6 -1.8374559761087152 
		12 -1.5525915632509533 15 -0.51771215385149338 19 -1.0426625506025762 23 
		-1.0758634811057812 30 -0.61294164802918749;
	setAttr -s 7 ".kit[2:6]"  1 9 9 9 9;
	setAttr -s 7 ".kot[2:6]"  1 9 9 9 9;
	setAttr -s 7 ".kix[2:6]"  0.0039321952499449253 0.0045757526531815529 
		0.0047776224091649055 0.0085323592647910118 0.0050403838977217674;
	setAttr -s 7 ".kiy[2:6]"  0.9999922513961792 0.99998950958251953 
		-0.9999886155128479 0.99996358156204224 0.99998730421066284;
	setAttr -s 7 ".kox[2:6]"  0.003932182677090168 0.0045757526531815529 
		0.0047776224091649055 0.0085323592647910118 0.0050403838977217674;
	setAttr -s 7 ".koy[2:6]"  0.9999922513961792 0.99998950958251953 
		-0.9999886155128479 0.99996358156204224 0.99998730421066284;
createNode animCurveTL -n "animCurveTL1264";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 3.7466536474163434 6 3.2204895971971199 
		12 3.2204895971971199 15 3.0023373374033362 19 2.0858781576746996 23 1.1961596609270233 
		30 1.2525965505547216;
createNode animCurveTL -n "animCurveTL1265";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.750436070454791 6 0.78555917897637584 
		12 0.5577665893083702 15 -0.35234126537893351 19 -0.31189470654151014 23 
		-0.33562249572696728 30 -0.43766142688412474;
	setAttr -s 7 ".kit[1:6]"  1 1 9 9 9 9;
	setAttr -s 7 ".kot[1:6]"  1 1 9 9 9 9;
	setAttr -s 7 ".kix[1:6]"  0.0076791467145085335 0.0051132696680724621 
		0.0026830271817743778 0.15751035511493683 0.029142124578356743 0.022861113771796227;
	setAttr -s 7 ".kiy[1:6]"  -0.99997043609619141 -0.99998694658279419 
		-0.99999642372131348 0.98751735687255859 -0.99957525730133057 -0.99973863363265991;
	setAttr -s 7 ".kox[1:6]"  0.0076791495084762573 0.005113258957862854 
		0.0026830271817743778 0.15751035511493683 0.029142124578356743 0.022861113771796227;
	setAttr -s 7 ".koy[1:6]"  -0.99997043609619141 -0.99998694658279419 
		-0.99999642372131348 0.98751735687255859 -0.99957525730133057 -0.99973863363265991;
createNode animCurveTA -n "animCurveTA3607";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -33.734888782993913 6 -25.417937437394155 
		12 -25.417937437394155 15 78.6625245028455 19 43.967138196032678 23 130.58941958009308 
		30 243.64247564816833;
createNode animCurveTA -n "animCurveTA3608";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -14.870586397896906 6 27.853915614770944 
		12 27.853915614770944 15 27.600328353803796 19 43.18621000293053 23 57.432684509120577 
		30 20.532869880126128;
createNode animCurveTA -n "animCurveTA3609";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -30.592169336881899 6 -1.1753101973625051 
		12 -1.1753101973625051 15 127.01948419350366 19 108.31315155321009 23 164.8145574092332 
		30 265.8551275245099;
createNode animCurveTL -n "animCurveTL1266";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.31054502397108613 6 0.31054502397108613 
		12 0.31054502397108613 15 0.31054502397108613 19 0.31054502397108613 23 0.31054502397108613 
		30 0.31054502397108613;
createNode animCurveTL -n "animCurveTL1267";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.55640530640609931 6 -0.55640530640609931 
		12 -0.55640530640609931 15 -0.55640530640609931 19 -0.55640530640609931 23 
		-0.55640530640609931 30 -0.55640530640609931;
createNode animCurveTL -n "animCurveTL1268";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.57914122395678103 6 -0.57914122395678103 
		12 -0.57914122395678103 15 -0.57914122395678103 19 -0.57914122395678103 23 
		-0.57914122395678103 30 -0.57914122395678103;
createNode animCurveTL -n "animCurveTL1269";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.063331173333856433 6 -0.37736680843384973 
		12 -0.37736680843384973 15 -0.37736680843384973 19 -0.047646009069586132 
		23 -0.047646009069586132 30 -0.047646009069586132;
createNode animCurveTL -n "animCurveTL1270";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.69960805773293522 6 -0.54343311259648019 
		12 -0.54343311259648019 15 -0.54343311259648019 19 -0.70977769184901862 23 
		-0.70977769184901862 30 -0.70977769184901862;
createNode animCurveTL -n "animCurveTL1271";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.66762598980258558 6 -0.97043124551903082 
		12 -0.97043124551903082 15 -0.97043124551903082 19 -0.64237249774344829 23 
		-0.64237249774344829 30 -0.64237249774344829;
createNode animCurveTA -n "animCurveTA3610";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.061808866237340665 6 -0.061808866237337522 
		12 -0.061808866237337522 15 -0.061808866237337522 19 -0.061808866237337522 
		23 -0.061808866237337522 30 -0.061808866237340665;
createNode animCurveTA -n "animCurveTA3611";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -59.058178941076754 6 -59.058178941076754 
		12 -59.058178941076754 15 -59.058178941076754 19 -59.058178941076754 23 -59.058178941076754 
		30 -59.058178941076754;
createNode animCurveTA -n "animCurveTA3612";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 16.579147429757857 6 16.579147429757843 
		12 16.579147429757843 15 16.579147429757843 19 16.579147429757843 23 16.579147429757843 
		30 16.57914742975785;
createNode animCurveTA -n "animCurveTA3613";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 12.253734489678925 6 12.253734489678925 
		12 12.253734489678925 15 12.253734489678925 19 12.253734489678925 23 12.253734489678925 
		30 12.253734489678925;
createNode animCurveTA -n "animCurveTA3614";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -65.746751280844975 6 -65.746751280844961 
		12 -65.746751280844961 15 -65.746751280844961 19 -65.746751280844961 23 -65.746751280844961 
		30 -65.746751280844975;
createNode animCurveTA -n "animCurveTA3615";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA3616";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 15.711328223519065 6 15.711328223519057 
		12 15.711328223519057 15 15.711328223519057 19 15.711328223519057 23 15.711328223519057 
		30 15.711328223519061;
createNode animCurveTA -n "animCurveTA3617";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.5572674112203657 6 8.5572674112203622 
		12 8.5572674112203622 15 8.5572674112203622 19 8.5572674112203622 23 8.5572674112203622 
		30 8.5572674112203657;
createNode animCurveTA -n "animCurveTA3618";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA3619";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA3620";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA3621";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA3622";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA3623";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA3624";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 19.002497950056895 30 19.002497950056895;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA3625";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 23.263402056531078 6 23.263402056531085 
		12 23.263402056531085 15 23.263402056531085 19 23.263402056531085 23 23.263402056531085 
		30 28.612774017129329;
createNode animCurveTA -n "animCurveTA3626";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 20.166277752815624 6 20.166277752815617 
		12 20.166277752815617 15 20.166277752815617 19 20.166277752815617 23 20.166277752815617 
		30 17.632837226638049;
createNode animCurveTA -n "animCurveTA3627";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA3628";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA3629";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 33.429092416277157 6 33.429092416277157 
		12 33.429092416277157 15 33.429092416277157 19 33.429092416277157 23 33.429092416277157 
		30 33.429092416277157;
createNode animCurveTA -n "animCurveTA3630";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3631";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3632";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3633";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3634";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3635";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 30 13.994403295754109;
createNode animCurveTA -n "animCurveTA3636";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3637";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA3638";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 30 13.994403295754109;
createNode animCurveTA -n "animCurveTA3639";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA3640";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA3641";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 17.254116939558369 6 17.254116939558369 
		12 17.254116939558369 15 17.254116939558369 19 17.254116939558369 23 17.254116939558369 
		30 17.254116939558369;
createNode animCurveTA -n "animCurveTA3642";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA3643";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA3644";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA3645";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.3731006602189257 6 20.366496729169029 
		12 25.890727135803381 15 12.127424507599908 19 4.673284826683159 23 1.9577379242441693 
		30 0.65073001024951671;
createNode animCurveTA -n "animCurveTA3646";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.38374158911587314 6 1.1313888543542436 
		12 2.3049251976124192 15 3.546263523020015 19 4.9375706220930464 23 5.5934575306199017 
		30 4.2368721935960938;
createNode animCurveTA -n "animCurveTA3647";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.96901743689791275 6 16.15457756926455 
		12 8.347150333684521 15 -8.2411431930903927 19 5.1436031948885814 23 8.1712083063342735 
		30 2.6995264082587447;
	setAttr -s 7 ".kit[2:6]"  1 9 9 9 9;
	setAttr -s 7 ".kot[2:6]"  1 9 9 9 9;
	setAttr -s 7 ".kix[2:6]"  0.48331466317176819 0.97247004508972168 
		0.68138056993484497 0.9933006763458252 0.92548531293869019;
	setAttr -s 7 ".kiy[2:6]"  -0.87544667720794678 -0.23302790522575378 
		0.73192936182022095 -0.11555840075016022 -0.37878343462944031;
	setAttr -s 7 ".kox[2:6]"  0.48331478238105774 0.97247004508972168 
		0.68138056993484497 0.9933006763458252 0.92548531293869019;
	setAttr -s 7 ".koy[2:6]"  -0.875446617603302 -0.23302790522575378 
		0.73192936182022095 -0.11555840075016022 -0.37878343462944031;
createNode animCurveTA -n "animCurveTA3648";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.2144674450583466 6 -7.1097278539792699 
		12 -7.1097278539792699 15 -7.1097278539792699 19 -7.1097278539792699 23 -7.1097278539792699 
		30 0;
createNode animCurveTA -n "animCurveTA3649";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 5.3642380392152518 6 0 12 0 15 
		0 19 0 23 0 30 0;
createNode animCurveTA -n "animCurveTA3650";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -3.2584064202075558 6 0 12 0 
		15 0 19 0 23 0 30 0;
createNode animCurveTA -n "animCurveTA3651";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -4.969070171519375 6 -8.2366350078582773 
		12 -8.4757225690489832 15 -7.3518879835207844 19 -0.96879310801463325 23 
		-3.9419577869899456 30 0;
createNode animCurveTA -n "animCurveTA3652";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.9904681746768538 6 -7.4797257149309191 
		12 -1.1477434634438117 15 -4.3084796178036697 19 3.6699062068098405 23 -6.189897527785976 
		30 0;
createNode animCurveTA -n "animCurveTA3653";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 14.780225156536888 6 7.3690439204730236 
		12 14.696180294034731 15 35.05266870362145 19 29.40037223169206 23 35.921830900787498 
		30 6.6786334979782902;
createNode animCurveTA -n "animCurveTA3654";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -2.211833892135727 6 1.8903601258661931 
		12 1.8903601258661931 15 -11.450820214559736 19 -1.4672032523553795 23 -1.4672032523553795 
		30 1.8903601258661935;
createNode animCurveTA -n "animCurveTA3655";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.7086730360615545 6 -2.5597289571479034 
		12 -2.5597289571479034 15 -2.5597289571479047 19 -3.0842593602314001 23 -3.0842593602314001 
		30 -2.5597289571479038;
createNode animCurveTA -n "animCurveTA3656";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.7082804953288218 6 2.016811087403604 
		12 2.016811087403604 15 2.0168110874036151 19 -2.0736047826525068 23 -2.0736047826525068 
		30 2.0168110874036049;
createNode animCurveTA -n "animCurveTA3657";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA3658";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA3659";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.080064458283051 6 27.080064458283051 
		12 27.080064458283051 15 27.080064458283051 19 27.080064458283051 23 27.080064458283051 
		30 27.080064458283051;
createNode animCurveTA -n "animCurveTA3660";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -177.04830761929054 30 -177.04830761929054;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA3661";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.7228482558439 6 27.722848255843903 
		12 27.722848255843903 15 27.722848255843903 19 27.722848255843903 23 27.722848255843903 
		30 27.804554996454378;
createNode animCurveTA -n "animCurveTA3662";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 21.576484776388227 6 21.576484776388227 
		12 21.576484776388227 15 21.576484776388227 19 21.576484776388227 23 21.576484776388227 
		30 29.452980944098744;
createNode animCurveTA -n "animCurveTA3663";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA3664";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA3665";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.911632519594587 6 27.911632519594587 
		12 27.911632519594587 15 27.911632519594587 19 27.911632519594587 23 27.911632519594587 
		30 27.911632519594587;
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
	setAttr ".o" 1;
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
connectAttr "lsa_get_out_of_car_high_driverSource.st" "clipLibrary1.st[0]"
		;
connectAttr "lsa_get_out_of_car_high_driverSource.du" "clipLibrary1.du[0]"
		;
connectAttr "animCurveTL1231.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL1232.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL1233.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL1234.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL1235.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA3547.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU17.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU18.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU19.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU20.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU21.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU22.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU23.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU24.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA3548.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA3549.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA3550.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL1236.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL1237.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL1238.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL1239.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL1240.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL1241.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA3551.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA3552.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA3553.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL1242.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL1243.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL1244.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA3554.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA3555.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA3556.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA3557.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA3558.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA3559.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA3560.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA3561.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA3562.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA3563.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA3564.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA3565.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA3566.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA3567.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA3568.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL1245.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL1246.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL1247.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL1248.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL1249.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL1250.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL1251.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL1252.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL1253.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA3569.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA3570.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA3571.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA3572.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA3573.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA3574.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA3575.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA3576.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA3577.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA3578.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA3579.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA3580.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA3581.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA3582.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA3583.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA3584.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA3585.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA3586.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA3587.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA3588.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA3589.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA3590.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA3591.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA3592.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA3593.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA3594.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA3595.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA3596.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA3597.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL1254.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL1255.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL1256.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA3598.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA3599.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA3600.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL1257.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL1258.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL1259.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA3601.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA3602.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA3603.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL1260.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL1261.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL1262.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA3604.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA3605.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA3606.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL1263.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL1264.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL1265.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA3607.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA3608.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA3609.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL1266.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL1267.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL1268.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL1269.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL1270.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL1271.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA3610.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA3611.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA3612.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA3613.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA3614.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA3615.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA3616.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA3617.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA3618.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA3619.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA3620.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA3621.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA3622.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA3623.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA3624.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA3625.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA3626.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA3627.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA3628.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA3629.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA3630.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA3631.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA3632.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA3633.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA3634.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA3635.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA3636.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA3637.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA3638.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA3639.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA3640.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA3641.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA3642.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA3643.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA3644.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA3645.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA3646.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA3647.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA3648.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA3649.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA3650.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA3651.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA3652.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA3653.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA3654.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA3655.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA3656.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA3657.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA3658.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA3659.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA3660.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA3661.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA3662.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA3663.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA3664.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA3665.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of lsa_get_out_of_car_high_driver.ma
