//Maya ASCII 4.0 scene
//Name: hom_idle_sleep.ma
//Last modified: Wed, Jul 03, 2002 02:09:43 PM
requires maya "4.0";
requires "p3dmayaexp" "17.7";
requires "p3dSimpleShader" "17.1";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "hom_idle_sleepSource";
	setAttr ".ihi" 0;
	setAttr ".du" 75;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL126";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 76 ".ktv[0:75]"  0 -0.05999433615776268 1 -0.059996264999825744 
		2 -0.06000481200202408 3 -0.060024117878371461 4 -0.060058323342881637 5 
		-0.060111569109568344 6 -0.060187995892445327 7 -0.060291744405526385 8 -0.060426955362825198 
		9 -0.06059776947835558 10 -0.060808327466131254 11 -0.061043029539266221 
		12 -0.061288915074787703 13 -0.061554083532579393 14 -0.061846634372524946 
		15 -0.062174667054508026 16 -0.062546281038412296 17 -0.06296957578412142 
		18 -0.063452650751519055 19 -0.064003605400488869 20 -0.064630539190914535 
		21 -0.065356495775169485 22 -0.066185877742512625 23 -0.067098822958155765 
		24 -0.0680754692873108 25 -0.069095954595189552 26 -0.070140416747003886 
		27 -0.071188993607965642 28 -0.07222182304328667 29 -0.073219042918178809 
		30 -0.074160791097853909 31 -0.075098291482074683 32 -0.076080599567794449 
		33 -0.077084600616011148 34 -0.078087179887722652 35 -0.079065222643926847 
		36 -0.079995614145621632 37 -0.080855239653804908 38 -0.081620984429474533 
		39 -0.082269733733628433 40 -0.082778372827264482 41 -0.083177188129099258 
		42 -0.083506976268741387 43 -0.083760387823526877 44 -0.083930073370791725 
		45 -0.084008683487871993 46 -0.083988868752103651 47 -0.083863279740822722 
		48 -0.083624567031365213 49 -0.083265381201067135 50 -0.082778372827264482 
		51 -0.082339876671921206 52 -0.081794906025627626 53 -0.08063912925865932 
		54 -0.078368214741291908 55 -0.074477830843801038 56 -0.067834000854153781 
		57 -0.058772945883571695 58 -0.048995631037211933 59 -0.040203021420231702 
		60 -0.03409608213778819 61 -0.03096838149496246 62 -0.029685942749839881 
		63 -0.029808413437084104 64 -0.030895441091358802 65 -0.032506673247327617 
		66 -0.03467483351269985 67 -0.037575374512193685 68 -0.040982037305986124 
		69 -0.044668562954254185 70 -0.048408692517174855 71 -0.051976167054925158 
		72 -0.055144727627682091 73 -0.05768811529562265 74 -0.059380071118923849 
		75 -0.05999433615776268;
createNode animCurveTL -n "animCurveTL127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 76 ".ktv[0:75]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 
		0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 
		0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0;
createNode animCurveTL -n "animCurveTL128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 76 ".ktv[0:75]"  0 0 1 0.0001656437289063937 2 0.00066478305830626634 
		3 0.0015007302022206558 4 0.0026767973746706 5 0.0041962967896771357 6 0.0060625406612613009 
		7 0.0082788412034441334 8 0.010848510630246671 9 0.01377486115568995 10 0.017061204993795012 
		11 0.020568856149348013 12 0.024217331980462335 13 0.028097249731149798 14 
		0.032299226645422285 15 0.036913879967291639 16 0.042031826940769713 17 0.047743684809868354 
		18 0.054140070818599409 19 0.061311602210974744 20 0.06934889623100618 21 
		0.077475679376741435 22 0.084904126037228009 23 0.091707489764279213 24 0.097959024109708415 
		25 0.103731982625329 26 0.10909961886295422 27 0.11413518637439753 28 0.11891193871147218 
		29 0.12350312942599159 30 0.12798201206976909 31 0.13239595895739101 32 0.13669532142010168 
		33 0.14080782153470142 34 0.1446611813779905 35 0.14818312302676925 36 0.15130136855783799 
		37 0.15394364004799704 38 0.15603765957404669 39 0.15751114921278728 40 0.1582918310410191 
		41 0.15879585305277988 42 0.15932936346154417 43 0.15965508467326736 44 0.15953573909390492 
		45 0.15873404912941222 46 0.15701273718574474 47 0.15413452566885782 48 0.14986213698470702 
		49 0.14395829353924763 50 0.13618571773843516 51 0.12238705741228709 52 0.1009456023509417 
		53 0.075435037900535809 54 0.049429049407206209 55 0.026501322217089597 56 
		0.0049245572925822861 57 -0.017683702647849381 58 -0.038732509623963469 59 
		-0.055630915655518046 60 -0.065787972762271205 61 -0.066841816796632939 62 
		-0.060519746534559812 63 -0.050364558381129437 64 -0.039919048741419369 65 
		-0.032726014020507205 66 -0.028257134875478266 67 -0.023708601200470671 68 
		-0.01920997325614127 69 -0.014890811303146909 70 -0.010880675602144434 71 
		-0.0073091264137906909 72 -0.0043057239987425331 73 -0.0020000286176567982 
		74 -0.00052160053119033639 75 0;
createNode animCurveTA -n "animCurveTA340";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 76 ".ktv[0:75]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 
		0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 
		0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0;
createNode animCurveTU -n "animCurveTU25";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU26";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU27";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU28";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU29";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU30";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU31";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU32";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "animCurveTA341";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA342";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA343";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.26454016861507795 10 -0.26454016861507795;
createNode animCurveTL -n "animCurveTL133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.13806192026723146 10 0.13806192026723146;
createNode animCurveTL -n "animCurveTL134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.064904406754016042 10 -0.064904406754016042;
createNode animCurveTA -n "animCurveTA344";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 0;
createNode animCurveTA -n "animCurveTA345";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -25.948901905116401 10 -25.948901905116401;
createNode animCurveTA -n "animCurveTA346";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 0;
createNode animCurveTL -n "animCurveTL135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.21594587158542247 10 0.21594587158542247;
createNode animCurveTL -n "animCurveTL136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.1380615615975922 10 0.1380615615975922;
createNode animCurveTL -n "animCurveTL137";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.00078430246903575811 10 0.00078430246903575811;
createNode animCurveTA -n "animCurveTA347";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 0;
createNode animCurveTA -n "animCurveTA348";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 0;
createNode animCurveTA -n "animCurveTA349";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 0;
createNode animCurveTA -n "animCurveTA350";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA351";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA352";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA353";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA354";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA355";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 0;
createNode animCurveTL -n "animCurveTL139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 0;
createNode animCurveTL -n "animCurveTL140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 10 1;
createNode animCurveTL -n "animCurveTL141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 0;
createNode animCurveTL -n "animCurveTL142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 0;
createNode animCurveTL -n "animCurveTL143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 10 1;
createNode animCurveTL -n "animCurveTL144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.076472881617957691 10 -0.077510450577787937 
		20 -0.082382502899185306 30 -0.094530413394472781 40 -0.10551497209837005 
		50 -0.10551497209837005 55 -0.094934533925054979 60 -0.043461196838692956 
		65 -0.041435227627147742 75 -0.076472881617957691;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTL -n "animCurveTL145";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.93105416142265018 10 0.92548391357028192 
		20 0.90171952150157231 30 0.8695733675052435 40 0.84302946206546825 50 0.82072102099389144 
		55 0.80352511026278484 60 0.77362191636179378 65 0.90694700170593323 75 0.93105416142265018;
	setAttr -s 10 ".kit[0:9]"  3 1 1 9 9 9 1 
		1 1 3;
	setAttr -s 10 ".kot[0:9]"  3 1 1 9 9 9 1 
		1 1 3;
	setAttr -s 10 ".kix[1:9]"  0.20215055346488953 0.094292275607585907 
		0.11286526173353195 0.13521242141723633 0.12556657195091248 0.07353200763463974 
		0.086782045662403107 0.022651661187410355 1;
	setAttr -s 10 ".kiy[1:9]"  -0.97935444116592407 -0.99554455280303955 
		-0.99361032247543335 -0.99081665277481079 -0.99208521842956543 -0.99729287624359131 
		0.99622732400894165 0.99974340200424194 0;
	setAttr -s 10 ".kox[1:9]"  0.20215040445327759 0.094292871654033661 
		0.11286526173353195 0.13521242141723633 0.12556657195091248 0.073533810675144196 
		0.086782142519950867 0.02265189029276371 1;
	setAttr -s 10 ".koy[1:9]"  -0.97935450077056885 -0.99554449319839478 
		-0.99361032247543335 -0.99081665277481079 -0.99208521842956543 -0.99729269742965698 
		0.99622732400894165 0.99974340200424194 0;
createNode animCurveTL -n "animCurveTL146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0.021747378057809821 20 
		0.088396843293074276 30 0.16313462044988594 40 0.2017695874566876 50 0.17359162443737475 
		55 0.033780396724410099 60 -0.083857846842491118 65 -0.041714814369090275 
		75 0;
	setAttr -s 10 ".kit[0:9]"  3 9 1 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 1 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kix[2:9]"  0.030749475583434105 0.058701682835817337 
		0.53757607936859131 0.0297506432980299 0.012946439906954765 0.04410993680357933 
		0.059519004076719284 1;
	setAttr -s 10 ".kiy[2:9]"  0.99952709674835205 0.99827557802200317 
		0.84321528673171997 -0.99955737590789795 -0.9999161958694458 -0.99902665615081787 
		0.99822717905044556 0;
	setAttr -s 10 ".kox[2:9]"  0.030749518424272537 0.058701682835817337 
		0.53757607936859131 0.0297506432980299 0.012946439906954765 0.04410993680357933 
		0.059519004076719284 1;
	setAttr -s 10 ".koy[2:9]"  0.99952709674835205 0.99827557802200317 
		0.84321528673171997 -0.99955737590789795 -0.9999161958694458 -0.99902665615081787 
		0.99822717905044556 0;
createNode animCurveTA -n "animCurveTA356";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.62843630316474508 10 -2.5749677877124504 
		20 -9.4378195495877168 30 -25.031334842728704 40 -34.559585835188777 50 -28.67481033651713 
		55 -0.5788449320490332 60 13.752375450121095 65 13.752375450121095 75 -0.62843630316474508;
	setAttr -s 10 ".kit[0:9]"  3 9 9 1 1 1 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 1 1 1 9 
		9 9 3;
	setAttr -s 10 ".kix[3:9]"  0.78453117609024048 0.99070048332214355 
		0.71001267433166504 0.41047832369804382 0.79985374212265015 0.89371645450592041 
		1;
	setAttr -s 10 ".kiy[3:9]"  -0.62008941173553467 -0.13606065511703491 
		0.70418888330459595 0.91187036037445068 0.60019499063491821 -0.44863227009773254 
		0;
	setAttr -s 10 ".kox[3:9]"  0.78453117609024048 0.99070048332214355 
		0.71001273393630981 0.41047832369804382 0.79985374212265015 0.89371645450592041 
		1;
	setAttr -s 10 ".koy[3:9]"  -0.62008935213088989 -0.13606064021587372 
		0.70418888330459595 0.91187036037445068 0.60019499063491821 -0.44863227009773254 
		0;
createNode animCurveTA -n "animCurveTA357";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -5.8284402688137158 10 -5.8421154033918477 
		20 -5.9496391851146777 30 -6.6020412121665073 40 -6.7532714809142282 50 -6.7532714809142256 
		55 -6.7532714809142194 60 -6.7532714809142025 65 -6.5962246633684849 75 -5.8284402688137158;
	setAttr -s 10 ".kit[0:9]"  3 9 1 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 1 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kix[2:9]"  0.99989789724349976 0.99977874755859375 
		0.99999219179153442 1 1 0.99996620416641235 0.99947929382324219 1;
	setAttr -s 10 ".kiy[2:9]"  -0.014290528371930122 -0.021034389734268188 
		-0.0039591682143509388 0 0 0.0082226749509572983 0.032265890389680862 0;
	setAttr -s 10 ".kox[2:9]"  0.99989789724349976 0.99977874755859375 
		0.99999219179153442 1 1 0.99996620416641235 0.99947929382324219 1;
	setAttr -s 10 ".koy[2:9]"  -0.014290528371930122 -0.021034389734268188 
		-0.0039591682143509388 0 0 0.0082226749509572983 0.032265890389680862 0;
createNode animCurveTA -n "animCurveTA358";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1.2956360193097458 10 -1.3448912759936786 
		20 -1.7084685955077483 30 -3.0536516732448225 40 -3.2780792138219303 50 -3.2780792138219312 
		55 -3.2780792138219419 60 -3.2780792138219468 65 -2.9663742963537505 75 -1.2956360193097458;
	setAttr -s 10 ".kit[0:9]"  3 1 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 1 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kix[1:9]"  0.99996685981750488 0.9990009069442749 
		0.99915677309036255 0.99998271465301514 1 1 0.99986684322357178 0.99761420488357544 
		1;
	setAttr -s 10 ".kiy[1:9]"  -0.0081440955400466919 -0.044690545648336411 
		-0.041057661175727844 -0.005875397939234972 0 0 0.016318658366799355 0.069035224616527557 
		0;
	setAttr -s 10 ".kox[1:9]"  0.99996685981750488 0.9990009069442749 
		0.99915677309036255 0.99998271465301514 1 1 0.99986684322357178 0.99761420488357544 
		1;
	setAttr -s 10 ".koy[1:9]"  -0.0081440955400466919 -0.044690545648336411 
		-0.041057661175727844 -0.005875397939234972 0 0 0.016318658366799355 0.069035224616527557 
		0;
createNode animCurveTA -n "animCurveTA359";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA360";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA361";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA362";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA363";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA364";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA365";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA366";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA367";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA368";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA369";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA370";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA371";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA372";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA373";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA374";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA375";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA376";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA377";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA378";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA379";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA380";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA381";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA382";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA383";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA384";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.43524234076486068;
createNode animCurveTL -n "animCurveTL148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.27773886459742925;
createNode animCurveTA -n "animCurveTA385";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.8121934161072303e-015;
createNode animCurveTA -n "animCurveTA386";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 28.652637602052774;
createNode animCurveTA -n "animCurveTA387";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 64.676908227303443;
createNode animCurveTL -n "animCurveTL150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.5198069948790518;
createNode animCurveTL -n "animCurveTL151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.36439499068905612;
createNode animCurveTA -n "animCurveTA388";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 7.7976222737965299;
createNode animCurveTA -n "animCurveTA389";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -30.409274105849079;
createNode animCurveTA -n "animCurveTA390";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -64.859940280210878;
createNode animCurveTL -n "animCurveTL153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.11516728567985 10 -1.1237079099253884 
		20 -1.0921190433580363 30 -0.91707504367965742 40 -0.91707504367965742 48 
		-0.99440155650249407 54 -1.2461415006728755 58 -1.3131519562418903 63 -1.3326426662713546 
		68 -1.2856677091157585 75 -1.11516728567985;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.680120084755256 10 1.6698061245599711 
		20 1.5714870067077993 30 1.2700155988954083 40 1.0570172223877115 48 0.93026630059246174 
		54 1.8248952896117172 58 1.884885102462567 63 1.8548736805061383 68 1.7728939382913071 
		75 1.680120084755256;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 1 1 1 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 1 1 1 
		9 9 9 3;
	setAttr -s 11 ".kix[4:10]"  0.018794985488057137 0.024472344666719437 
		0.0091019691899418831 0.099574729800224304 0.029751075431704521 0.022883377969264984 
		1;
	setAttr -s 11 ".kiy[4:10]"  -0.99982333183288574 0.99970048666000366 
		0.9999585747718811 0.99503010511398315 -0.99955731630325317 -0.99973815679550171 
		0;
	setAttr -s 11 ".kox[4:10]"  0.01879517175257206 0.024472124874591827 
		0.0091020576655864716 0.099574729800224304 0.029751075431704521 0.022883377969264984 
		1;
	setAttr -s 11 ".koy[4:10]"  -0.99982333183288574 0.99970048666000366 
		0.9999585747718811 0.99503010511398315 -0.99955731630325317 -0.99973815679550171 
		0;
createNode animCurveTL -n "animCurveTL155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.12935294465776678 10 -0.20009461366166345 
		20 -0.37266836292250993 30 -0.35446600685779589 40 -0.4354100795598263 48 
		-0.66133835228740823 54 -0.47306456674729619 58 0.22061184918033561 63 0.11550966178292843 
		68 -0.088539984545121714 75 -0.12935294465776678;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		1 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		1 9 9 3;
	setAttr -s 11 ".kix[7:10]"  0.0093846581876277924 0.010781561955809593 
		0.016333512961864471 1;
	setAttr -s 11 ".kiy[7:10]"  0.99995595216751099 -0.99994188547134399 
		-0.99986660480499268 0;
	setAttr -s 11 ".kox[7:10]"  0.0093846702948212624 0.010781561955809593 
		0.016333512961864471 1;
	setAttr -s 11 ".koy[7:10]"  0.99995595216751099 -0.99994188547134399 
		-0.99986660480499268 0;
createNode animCurveTA -n "animCurveTA391";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 5.4739599453216474 10 10.451553201263691 
		20 28.440620857879189 30 28.440620857879189 40 28.440620857879189 48 9.0508619777456119 
		54 -77.563454898385032 58 -72.222964109462509 63 65.943108027796939 68 16.331012985645938 
		75 5.4739599453216474;
	setAttr -s 11 ".kit[4:10]"  1 1 9 9 9 9 9;
	setAttr -s 11 ".kot[4:10]"  1 1 9 9 9 9 9;
	setAttr -s 11 ".kix[4:10]"  0.98344200849533081 0.45618075132369995 
		0.22875945270061493 0.11892659217119217 0.21082432568073273 0.35440734028816223 
		0.77626383304595947;
	setAttr -s 11 ".kiy[4:10]"  -0.18122296035289764 -0.88988715410232544 
		-0.97348296642303467 0.99290305376052856 0.97752398252487183 -0.93509113788604736 
		-0.63040816783905029;
	setAttr -s 11 ".kox[4:10]"  0.98344206809997559 0.45618072152137756 
		0.22875945270061493 0.11892659217119217 0.21082432568073273 0.35440734028816223 
		0.77626383304595947;
	setAttr -s 11 ".koy[4:10]"  -0.18122284114360809 -0.88988715410232544 
		-0.97348296642303467 0.99290305376052856 0.97752398252487183 -0.93509113788604736 
		-0.63040816783905029;
createNode animCurveTA -n "animCurveTA392";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 8.5874521608419823 10 6.7115307311627275 
		20 -2.594118425399393 30 -2.594118425399393 40 -2.594118425399393 48 6.3165083655771017 
		54 67.762966646931815 58 75.183047778445953 63 67.302179628894081 68 27.89287945834722 
		75 8.5874521608419823;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 1 1 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 1 1 
		9 9 9 3;
	setAttr -s 11 ".kix[5:10]"  0.56655824184417725 0.44158020615577698 
		0.99964088201522827 0.37447386980056763 0.36361473798751831 1;
	setAttr -s 11 ".kiy[5:10]"  0.82402169704437256 0.89722180366516113 
		-0.02679787389934063 -0.92723745107650757 -0.93154942989349365 0;
	setAttr -s 11 ".kox[5:10]"  0.5665581226348877 0.44158011674880981 
		0.99964088201522827 0.37447386980056763 0.36361473798751831 1;
	setAttr -s 11 ".koy[5:10]"  0.82402181625366211 0.89722180366516113 
		-0.02679787389934063 -0.92723745107650757 -0.93154942989349365 0;
createNode animCurveTA -n "animCurveTA393";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 74.754744621954103 10 74.754744621954103 
		20 73.688987425811604 30 73.688987425811604 40 73.688987425811604 48 67.385856397376315 
		54 -4.8035682432463815 58 -36.29157957906834 63 71.758304365318111 68 76.463348096431702 
		75 74.754744621954103;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 1 9 
		9 1 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 1 9 
		9 1 9 3;
	setAttr -s 11 ".kix[5:10]"  0.65941458940505981 0.18116351962089539 
		0.21905501186847687 0.45065599679946899 0.99156099557876587 1;
	setAttr -s 11 ".kiy[5:10]"  -0.75177949666976929 -0.98345297574996948 
		0.97571253776550293 0.89269769191741943 0.12964101135730743 0;
	setAttr -s 11 ".kox[5:10]"  0.65941458940505981 0.18116351962089539 
		0.21905501186847687 0.45065605640411377 0.99156099557876587 1;
	setAttr -s 11 ".koy[5:10]"  -0.75177949666976929 -0.98345297574996948 
		0.97571253776550293 0.89269769191741943 0.12964101135730743 0;
createNode animCurveTL -n "animCurveTL156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.80629961042890586 10 0.85765289531894184 
		20 0.90873654790897296 30 0.77244601536257751 40 0.77244601536257751 50 0.88175201741218756 
		55 1.2123814548982876 60 1.3455566036132973 65 0.93730192768617626 70 0.82348862614523544 
		75 0.80629961042890586;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.6227248042492379 10 1.6064113886072695 
		20 1.549382281590137 30 1.2385829880646007 40 0.99758562719489807 50 0.97009589763658033 
		55 2.2067247372406884 60 2.6435031426534459 65 1.940282801895453 70 1.6891160256727629 
		75 1.6227248042492379;
	setAttr -s 11 ".kit[4:10]"  1 1 9 9 9 9 3;
	setAttr -s 11 ".kot[4:10]"  1 1 9 9 9 9 3;
	setAttr -s 11 ".kix[4:10]"  0.013292238116264343 0.011125717312097549 
		0.001991939963772893 0.012509564869105816 0.0034926214721053839 0.010496191680431366 
		1;
	setAttr -s 11 ".kiy[4:10]"  -0.99991166591644287 0.99993813037872314 
		0.99999803304672241 -0.99992173910140991 -0.99999392032623291 -0.99994492530822754 
		0;
	setAttr -s 11 ".kox[4:10]"  0.013292256742715836 0.011125663295388222 
		0.001991939963772893 0.012509564869105816 0.0034926214721053839 0.010496191680431366 
		1;
	setAttr -s 11 ".koy[4:10]"  -0.99991166591644287 0.99993813037872314 
		0.99999803304672241 -0.99992173910140991 -0.99999392032623291 -0.99994492530822754 
		0;
createNode animCurveTL -n "animCurveTL158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.1889487664083056 10 0.086868737451894495 
		20 -0.37737711426830239 30 -0.45320164313309491 40 -0.35241063532445899 50 
		-0.51157586499581487 55 -0.95302055249896755 60 0.033368573704377132 65 0.92927470369525722 
		70 0.48682095521112217 75 0.1889487664083056;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 1 
		1 1 1 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 1 
		1 1 1 3;
	setAttr -s 11 ".kix[6:10]"  0.040941130369901657 0.00060381757793948054 
		0.023782938718795776 0.0023053416516631842 1;
	setAttr -s 11 ".kiy[6:10]"  0.99916154146194458 0.99999982118606567 
		0.999717116355896 -0.99999731779098511 0;
	setAttr -s 11 ".kox[6:10]"  0.040941067039966583 0.00060383853269740939 
		0.023783108219504356 0.0023053840268403292 1;
	setAttr -s 11 ".koy[6:10]"  0.99916154146194458 0.99999982118606567 
		0.999717116355896 -0.99999731779098511 0;
createNode animCurveTA -n "animCurveTA394";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 16.226511010665405 10 16.226511010665405 
		20 30.844225586034106 30 30.844225586034106 40 30.844225586034106 50 5.8474526758138268 
		55 -65.020410093456647 60 -118.29125467854826 65 -104.25560296681064 70 -7.2337534062920739 
		75 16.226511010665405;
	setAttr -s 11 ".kit[4:10]"  1 1 9 9 1 1 3;
	setAttr -s 11 ".kot[4:10]"  1 1 9 9 1 1 3;
	setAttr -s 11 ".kix[4:10]"  0.97764068841934204 0.30521634221076965 
		0.15205974876880646 0.43767330050468445 0.20193420350551605 0.1539810448884964 
		1;
	setAttr -s 11 ".kiy[4:10]"  -0.21028237044811249 -0.95228302478790283 
		-0.98837131261825562 -0.89913409948348999 0.97939908504486084 0.98807382583618164 
		0;
	setAttr -s 11 ".kox[4:10]"  0.97764068841934204 0.3052164614200592 
		0.15205974876880646 0.43767330050468445 0.20193424820899963 0.1539810448884964 
		1;
	setAttr -s 11 ".koy[4:10]"  -0.21028229594230652 -0.95228302478790283 
		-0.98837131261825562 -0.89913409948348999 0.97939908504486084 0.98807382583618164 
		0;
createNode animCurveTA -n "animCurveTA395";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -8.513966085499284 10 -8.513966085499284 
		20 -8.5139660854993 30 -8.5139660854993 40 -8.5139660854993 50 -3.4106164811630593 
		55 16.815411066523811 60 -31.454765548684801 65 -63.039375309772417 70 -34.126146701259152 
		75 -8.513966085499284;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[10]"  3;
createNode animCurveTA -n "animCurveTA396";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -68.213989601412422 10 -68.213989601412422 
		20 -68.213989601412408 30 -68.213989601412408 40 -68.213989601412408 50 -68.213989601412408 
		55 -9.8688589866775427 60 31.215504503533861 65 55.133742304495456 70 -45.384932999980585 
		75 -68.213989601412422;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[10]"  3;
createNode animCurveTL -n "animCurveTL159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 10 0 20 0 30 -0.12296787740818095 
		40 0.20955767771220302 50 0.11497835717957604 55 -0.33405233443014432 60 
		0.91664620866807855 65 1.0039245360014908 70 0.1143915273540442 75 0;
createNode animCurveTL -n "animCurveTL160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 10 0 20 0 30 -0.011740969663524179 
		40 0.073665207271586305 50 -0.0096143547002238792 55 0.023712465191470553 
		60 -1.1184281807713823 65 -0.60092058517231994 70 -0.76602563729593343 75 
		0;
createNode animCurveTL -n "animCurveTL161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1 10 -1 20 -1 30 -0.9869074961682478 
		40 -1.022211092272244 50 -0.99593409106823649 55 -1.4325926144914474 60 -0.41978021668313659 
		65 -0.18371051446196737 70 -0.68268221349313807 75 -1;
createNode animCurveTL -n "animCurveTL162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.10167917362943303 10 -0.10167917362943303 
		20 -0.10167917362943303 30 -0.25712878790424332 40 -0.23989665093847826 47 
		-0.1166523903910064 52 -0.76388425912182245 57 -0.7590433941722009 62 -0.83908419500216558 
		75 -0.10167917362943303;
createNode animCurveTL -n "animCurveTL163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.40762644910266188 10 -0.40762644910266188 
		20 -0.40762644910266188 30 -0.41877268032158571 40 -0.44899470347786546 47 
		-0.074144511268611255 52 -0.030102506779285072 57 -0.9855830801785912 62 
		-0.83848697609640777 75 -0.40762644910266188;
createNode animCurveTL -n "animCurveTL164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.93129112588482243 10 -0.93129112588482243 
		20 -0.93129112588482243 30 -0.93240701767641099 40 -1.3132285227907337 47 
		-1.2286490925458011 52 -1.1186704139947885 57 -0.43656615152225087 62 -0.56997499478265012 
		75 -0.93129112588482243;
createNode animCurveTA -n "animCurveTA397";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 12.253734489678925;
createNode animCurveTA -n "animCurveTA398";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -65.746751280844961;
createNode animCurveTA -n "animCurveTA399";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.871449260799477e-015;
createNode animCurveTA -n "animCurveTA400";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.061808866237337522;
createNode animCurveTA -n "animCurveTA401";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -59.058178941076754;
createNode animCurveTA -n "animCurveTA402";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 16.579147429757843;
createNode animCurveTA -n "animCurveTA403";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 8.5572674112203622;
createNode animCurveTA -n "animCurveTA404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 15.711328223519057;
createNode animCurveTA -n "animCurveTA405";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA406";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA408";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA410";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA411";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 10.423754966968488 10 10.423754966968488;
createNode animCurveTA -n "animCurveTA412";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 27.722848255843903 10 27.722848255843903;
createNode animCurveTA -n "animCurveTA413";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 21.576484776388227 10 21.576484776388227;
createNode animCurveTA -n "animCurveTA414";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 0;
createNode animCurveTA -n "animCurveTA415";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 0;
createNode animCurveTA -n "animCurveTA416";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 27.080064458283051 10 27.080064458283051;
createNode animCurveTA -n "animCurveTA417";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA418";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA419";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA420";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA421";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA422";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.994403295754109;
createNode animCurveTA -n "animCurveTA423";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA424";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA425";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.994403295754109;
createNode animCurveTA -n "animCurveTA426";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 0;
createNode animCurveTA -n "animCurveTA427";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 0;
createNode animCurveTA -n "animCurveTA428";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 27.911632519594587 10 27.911632519594587;
createNode animCurveTA -n "animCurveTA429";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 0;
createNode animCurveTA -n "animCurveTA430";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 0;
createNode animCurveTA -n "animCurveTA431";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 0;
createNode animCurveTA -n "animCurveTA432";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.65073001024951671 10 -0.65073001024951671 
		20 -0.65073001024951671 30 -0.65073001024951671 40 -0.65073001024951671 50 
		-0.65073001024951671 55 -0.65073001024951671 60 -0.65073001024951671 75 -0.65073001024951671;
createNode animCurveTA -n "animCurveTA433";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -4.2368721935960929 10 -4.2368721935960929 
		20 -4.2368721935960929 30 -4.2368721935960929 40 -4.2368721935960929 50 -4.2368721935960929 
		55 -4.2368721935960929 60 -4.2368721935960929 75 -4.2368721935960929;
createNode animCurveTA -n "animCurveTA434";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 8.7398866450636881 10 8.7398866450636881 
		20 17.88950003825661 30 27.439809871778227 40 13.361903954268939 50 -16.328195825936863 
		55 -23.838682493694325 60 10.344428410473213 75 8.7398866450636881;
createNode animCurveTA -n "animCurveTA435";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 2.6725545121602785 20 17.238814586462365 
		30 37.214353310190276 50 42.841655480807411 60 11.147551491132845 75 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA436";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 -0.96998239476574932 20 
		-5.6378373802040969 30 -6.3768715857399085 50 -5.5916477423580977 60 -1.0713841032216989 
		75 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA437";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 -0.29793850927084498 20 
		-1.7379746450057332 30 -1.9738426315118194 50 -1.8000451677704967 60 -0.59546261754022023 
		75 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA438";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 4.8714700432790332 10 3.4988886885013422 
		20 -5.2928049100500125 30 -32.824424698979612 40 -50.801788242244719 50 -30.939767918993667 
		55 -19.057411848407767 60 -6.129895347427027 65 5.057706485093493 75 4.8714700432790332;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA439";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 11.783606204137099 10 9.8128189340248078 
		20 -0.93197857722863153 30 -0.93197857722863153 40 -10.7039708727121 50 -2.3028958043696117 
		55 3.007532439860702 60 7.9281001937525826 65 9.3940510802359736 75 11.783606204137099;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA440";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 7.5423825101936588 10 13.138004723433113 
		20 43.005932160651888 30 40.174104579994371 40 29.247329475303172 50 -39.919591134027385 
		55 -52.764187534733146 60 -41.326474965797651 65 33.033655490402865 75 7.5423825101936588;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA441";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1.8903601258661931 10 -1.8903601258661931 
		20 -2.2044657045127183 30 -2.2044657045127183 40 -2.2044657045127183 50 -2.3900199951598253 
		55 -2.3900199951598253 60 -2.3900199951598253 75 -1.8903601258661931;
createNode animCurveTA -n "animCurveTA442";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.5597289571479034 10 2.5597289571479034 
		20 2.2948258972394084 30 2.2948258972394084 40 2.2948258972394084 50 2.1008714211290114 
		55 2.1008714211290114 60 2.1008714211290114 75 2.5597289571479034;
createNode animCurveTA -n "animCurveTA443";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.016811087403604 10 2.016811087403604 
		20 -5.3895244055873706 30 -13.877076042390797 40 -15.095950143279879 50 -19.931481846100741 
		55 -8.0407785233570728 60 19.162162438385344 75 2.016811087403604;
createNode animCurveTA -n "animCurveTA444";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 0;
createNode animCurveTA -n "animCurveTA445";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 0;
createNode animCurveTA -n "animCurveTA446";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 33.429092416277157 10 33.429092416277157;
createNode animCurveTA -n "animCurveTA447";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 8.2533422302317216 10 8.2533422302317216;
createNode animCurveTA -n "animCurveTA448";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 23.263402056531085 10 23.263402056531085;
createNode animCurveTA -n "animCurveTA449";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 20.166277752815617 10 20.166277752815617;
createNode animCurveTA -n "animCurveTA450";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 0;
createNode animCurveTA -n "animCurveTA451";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 0;
createNode animCurveTA -n "animCurveTA452";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 17.254116939558369 10 17.254116939558369;
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
connectAttr "hom_idle_sleepSource.st" "clipLibrary1.st[0]";
connectAttr "hom_idle_sleepSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL124.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL125.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL126.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL127.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL128.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA340.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU25.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU26.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU27.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU28.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU29.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU30.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU31.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU32.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA341.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA342.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA343.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL129.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL130.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL131.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL132.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL133.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL134.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA344.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA345.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA346.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL135.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL136.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL137.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA347.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA348.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA349.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA350.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA351.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA352.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA353.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA354.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA355.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTL138.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTL139.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTL140.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTL141.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTL142.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTL143.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL144.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL145.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL146.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTA356.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTA357.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTA358.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTA359.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTA360.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTA361.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA362.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA363.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA364.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA365.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA366.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA367.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA368.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA369.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA370.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA371.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA372.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA373.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA374.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA375.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA376.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA377.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA378.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA379.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA380.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA381.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA382.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA383.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA384.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTL147.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTL148.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTL149.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA385.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA386.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA387.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL150.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL151.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL152.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA388.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA389.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA390.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL153.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL154.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL155.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA391.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA392.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA393.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL156.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL157.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL158.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA394.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA395.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA396.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL159.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL160.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL161.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTL162.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTL163.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTL164.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTA397.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTA398.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTA399.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTA400.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTA401.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTA402.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA403.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA404.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA405.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA406.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA407.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA408.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA409.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA410.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA411.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA412.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA413.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA414.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA415.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA416.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA417.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA418.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA419.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA420.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA421.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA422.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA423.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA424.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA425.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA426.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA427.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA428.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA429.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA430.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA431.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA432.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA433.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA434.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA435.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA436.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA437.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA438.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA439.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA440.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA441.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA442.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA443.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA444.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA445.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA446.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA447.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA448.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA449.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA450.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA451.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA452.a" "clipLibrary1.cel[0].cev[161].cevr";
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
// End of hom_idle_sleep.ma
