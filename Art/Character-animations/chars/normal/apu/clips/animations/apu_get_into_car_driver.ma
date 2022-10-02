//Maya ASCII 4.0 scene
//Name: apu_get_into_car_driver.ma
//Last modified: Mon, Jan 13, 2003 10:54:02 AM
requires maya "4.0";
requires "p3dmayaexp" "2.0";
requires "p3dSimpleShader" "2.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "apu_get_into_car_driverSource";
	setAttr ".ihi" 0;
	setAttr ".st" 22;
	setAttr ".du" 23;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 1 45 1;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  22 -0.0018954191607495805 23 -0.027856768138564216 
		24 -0.063563440056626647 25 -0.089603325552759169 26 -0.096282111706585585 
		27 -0.093294112239260332 28 -0.090310157750901607 29 -0.086343385200037495 
		30 -0.082380657636274127 31 -0.091053394796346582 32 -0.10831872562349115 
		33 -0.12903194758298275 34 -0.16417173319461437 35 -0.22471675497817895 36 
		-0.34007320330977359 37 -0.49408864199126251 38 -0.62940380368108995 39 -0.7333684327855825 
		40 -0.82840003079032787 41 -0.90974096597266141 42 -0.97263360660991871 43 
		-1.0028924122555691 44 -1.0031735917509268 45 -0.99398213730509188;
	setAttr -s 24 ".kit[23]"  1;
	setAttr -s 24 ".kot[0:23]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9;
	setAttr -s 24 ".kix[23]"  0.027453232556581497;
	setAttr -s 24 ".kiy[23]"  0.99962306022644043;
	setAttr -s 24 ".kox[0:23]"  0.020571961998939514 0.010809942148625851 
		0.010796193964779377 0.020371496677398682 0.17775344848632813 0.11094377934932709 
		0.095475085079669952 0.083778664469718933 0.14014562964439392 0.025693763047456741 
		0.017551062628626823 0.01193524245172739 0.0069671510718762875 0.0037899734452366829 
		0.0024748856667429209 0.0023041630629450083 0.0027861278504133224 0.0033501284196972847 
		0.0037798509001731873 0.0046220826916396618 0.0071566207334399223 0.021824106574058533 
		0.074611440300941467 0.036241762340068817;
	setAttr -s 24 ".koy[0:23]"  -0.99978840351104736 -0.99994158744812012 
		-0.99994170665740967 -0.99979245662689209 -0.98407506942749023 0.99382668733596802 
		0.99543184041976929 0.99648439884185791 -0.99013090133666992 -0.99966984987258911 
		-0.99984598159790039 -0.99992877244949341 -0.99997574090957642 -0.99999284744262695 
		-0.99999696016311646 -0.99999731779098511 -0.9999961256980896 -0.99999439716339111 
		-0.99999284744262695 -0.99998933076858521 -0.99997437000274658 -0.99976181983947754 
		0.99721270799636841 0.99934303760528564;
createNode animCurveTL -n "animCurveTL209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
createNode animCurveTL -n "animCurveTL210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  22 -0.21319780175986533 23 -0.22604438814472932 
		24 -0.23889097452959329 25 -0.21319780175986533 26 -0.11858662868246224 27 
		0.014564300934327567 28 0.13366001886303877 29 0.21894023660315698 30 0.29016524141365646 
		31 0.35402092870630369 32 0.41960792636133099 33 0.48455632324593878 34 0.53834620625234553 
		35 0.57045766227276984 36 0.556093816851427 37 0.50942456679401393 38 0.47838015588497201 
		39 0.47964476584094684 40 0.49244859278760245 41 0.5085409021229077 42 0.51967095924483131 
		43 0.52191448947803676 44 0.52022556227931627 45 0.51967095924483131;
	setAttr -s 24 ".kit[23]"  1;
	setAttr -s 24 ".kot[0:23]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9;
	setAttr -s 24 ".kix[23]"  0.28253147006034851;
	setAttr -s 24 ".kiy[23]"  0.95925807952880859;
	setAttr -s 24 ".kox[0:23]"  0.051824722439050674 0.025938499718904495 
		0.051824722439050674 0.0055414158850908279 0.0029270180966705084 0.0026429067365825176 
		0.0032619452103972435 0.004259670153260231 0.0049352617934346199 0.0051502161659300327 
		0.0051071047782897949 0.005614500492811203 0.0077606081031262875 0.037537269294261932 
		0.010922383517026901 0.0085781840607523918 0.022380931302905083 0.047334283590316772 
		0.023064997047185898 0.024482326582074165 0.049787681549787521 0.76876115798950195 
		0.28484117984771729 0.51514524221420288;
	setAttr -s 24 ".koy[0:23]"  -0.99865615367889404 -0.99966353178024292 
		0.99865621328353882 0.99998462200164795 0.99999570846557617 0.99999648332595825 
		0.99999469518661499 0.99999094009399414 0.99998784065246582 0.99998670816421509 
		0.99998694658279419 0.9999842643737793 0.99996989965438843 0.99929523468017578 
		-0.99994033575057983 -0.99996322393417358 -0.99974954128265381 0.998879075050354 
		0.99973398447036743 0.99970024824142456 0.99875980615615845 0.63953596353530884 
		-0.95857471227645874 -0.85710293054580688;
createNode animCurveTA -n "animCurveTA566";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  22 0 25 -40.676684238026482 42 
		-40.676684238026482 45 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 2 2 2;
	setAttr -s 4 ".kix[3]"  0.13947971165180206;
	setAttr -s 4 ".kiy[3]"  0.99022495746612549;
	setAttr -s 4 ".kox[0:3]"  0.13947965204715729 1 0.13947969675064087 
		1;
	setAttr -s 4 ".koy[0:3]"  -0.99022495746612549 0 0.99022495746612549 
		0;
createNode animCurveTU -n "animCurveTU41";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU42";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU43";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU44";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU45";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU46";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU47";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 1 45 1;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU48";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 1 45 1;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA567";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA568";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA569";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 -0.29509923398875759 25 -0.29509923398875759 
		28 -0.29509923398875759 31 -0.16883926425925849 35 -0.65476031524673717 38 
		-0.65476031524673717 42 -1.545253516692622 45 -1.545253516692622;
	setAttr -s 8 ".kit[2:7]"  3 9 3 3 9 1;
	setAttr -s 8 ".kot[0:7]"  1 9 3 9 3 3 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 0.0064874524250626564 1 1 
		0.0026202616281807423 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 -0.99997895956039429 0 0 
		-0.99999654293060303 0;
createNode animCurveTL -n "animCurveTL215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0.12805349632774612 25 0.12805349632774612 
		28 0.20265792978619537 31 0.34317757391578091 35 0.79733745153385938 38 0.79733745153385938 
		42 0.79733745153385938 45 0.79733745153385938;
	setAttr -s 8 ".kit[4:7]"  3 3 9 1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 3 3 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 0.02679843083024025 0.0092965578660368919 
		0.0039236517623066902 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0.99964088201522827 0.99995678663253784 
		0.99999231100082397 0 0 0 0;
createNode animCurveTL -n "animCurveTL216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 -0.029906601247973442 25 -0.029906601247973442 
		28 0.050404972748147647 31 0.58222726948755266 35 1.3997566052705412 38 1.3997566052705412 
		42 1.6031411449878863 45 1.6031411449878863;
	setAttr -s 8 ".kit[4:7]"  3 3 9 1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 3 3 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 0.024895291775465012 0.0032672418747097254 
		0.001729222945868969 1 1 0.011471766047179699 1;
	setAttr -s 8 ".koy[0:7]"  0 0.99969005584716797 0.99999463558197021 
		0.99999850988388062 0 0 0.99993419647216797 0;
createNode animCurveTA -n "animCurveTA570";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0 25 0 28 20.160000000000068 
		31 32.504367065594906 35 0 38 0 42 0 45 0;
	setAttr -s 8 ".kit[4:7]"  3 3 9 1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 3 3 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 0.49415969848632813 0.33248534798622131 
		0.55266696214675903 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0.86937117576599121 0.94310843944549561 
		-0.83340221643447876 0 0 0 0;
createNode animCurveTA -n "animCurveTA571";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0 25 0 28 0 31 -37.300733409456001 
		35 -37.300733409455987 38 -37.300733409455987 42 -14.260733409455984 45 -14.260733409455984;
	setAttr -s 8 ".kit[4:7]"  3 3 9 1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 3 3 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 0.2936646044254303 0.33739539980888367 
		1 1 0.50188142061233521 1;
	setAttr -s 8 ".koy[0:7]"  0 0 -0.95590853691101074 -0.94136303663253784 
		0 0 0.86493641138076782 0;
createNode animCurveTA -n "animCurveTA572";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0 25 0 28 0 31 0 35 0 38 0 42 
		0 45 0;
	setAttr -s 8 ".kit[4:7]"  3 3 9 1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 3 3 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0.1853868062117425 25 0.023143508090479915 
		28 0.01355980938981983 31 0.01355980938981983 35 -0.06637581282513233 38 
		-0.23372130934164617 42 -1.0658215139714076 45 -1.0658215139714076;
	setAttr -s 8 ".kit[0:7]"  3 9 3 3 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  1 9 3 3 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 0.011638825759291649 1 1 0.0094355344772338867 
		0.0023346210364252329 0.0028041384648531675 1;
	setAttr -s 8 ".koy[0:7]"  0 -0.99993228912353516 0 0 -0.99995547533035278 
		-0.99999725818634033 -0.99999606609344482 0;
createNode animCurveTL -n "animCurveTL218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0.12805385499738539 25 0.33650706980581546 
		28 0.13494720103420277 31 0.13494720103420277 35 0.23829584539353366 38 0.74652177125858954 
		42 0.74652177125858954 45 0.74652177125858954;
	setAttr -s 8 ".kit[0:7]"  3 9 3 3 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  1 9 3 3 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 0.2786439061164856 1 1 0.0038152604829519987 
		0.0045910854823887348 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0.96039450168609619 0 0 0.9999927282333374 
		0.99998944997787476 0 0;
createNode animCurveTL -n "animCurveTL219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 -0.095595310471025249 25 -0.095595310471025249 
		28 0.83065404409555432 31 0.83065404409555432 35 0.95795892391936677 38 0.95795892391936677 
		42 1.549934236693818 45 1.549934236693818;
	setAttr -s 8 ".kit[0:7]"  3 9 3 3 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  1 9 3 3 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 0.0021592406556010246 1 1 0.018325624987483025 
		0.0039415750652551651 0.0039415750652551651 1;
	setAttr -s 8 ".koy[0:7]"  0 0.99999767541885376 0 0 0.99983209371566772 
		0.9999922513961792 0.9999922513961792 0;
createNode animCurveTA -n "animCurveTA573";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0 25 28.367884475889401 28 0 
		31 0 35 33.283533378460199 38 49.390557801780062 42 -22.297768645241412 45 
		-22.297768645241412;
	setAttr -s 8 ".kit[0:7]"  3 9 3 3 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  1 9 3 3 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 0.26127719879150391 0.23386089503765106 
		0.18332742154598236 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0.96526378393173218 -0.97227007150650024 
		-0.98305189609527588 0;
createNode animCurveTA -n "animCurveTA574";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 25.948901905116401 25 0.95721629230779137 
		28 -37.654224921697228 31 -37.654224921697228 35 -37.654224921697256 38 52.764046304601528 
		42 -11.632534303065597 45 -11.632534303065597;
	setAttr -s 8 ".kit[0:7]"  3 9 3 3 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  1 9 3 3 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 0.17731176316738129 1 1 0.14626726508140564 
		0.45698118209838867 0.20327019691467285 1;
	setAttr -s 8 ".koy[0:7]"  0 -0.98415476083755493 0 0 0.98924511671066284 
		0.88947635889053345 -0.97912269830703735 0;
createNode animCurveTA -n "animCurveTA575";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0 25 10.568374569537914 28 0 
		31 0 35 0 38 38.25756550303155 42 2.0818063674069247 45 2.0818063674069247;
	setAttr -s 8 ".kit[0:7]"  3 9 3 3 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  1 9 3 3 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 0.32988584041595459 0.98809194564819336 
		0.3466435968875885 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0.94402086734771729 0.15386445820331573 
		-0.93799692392349243 0;
createNode animCurveTA -n "animCurveTA576";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA577";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA578";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA579";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA580";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA581";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0 25 0 28 0 31 0 35 0 38 0 42 
		0.097466557943624466 45 0.097466557943624466;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 0.023932978510856628 
		0.023932978510856628 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0.99971354007720947 0.99971354007720947 
		0;
createNode animCurveTL -n "animCurveTL221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0 25 0 28 0 31 0 35 0.9130650960286848 
		38 0.9130650960286848 42 0.89926276112817349 45 0.89926276112817349;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 0.0025554865133017302 0.0025554865133017302 
		0.16668839752674103 0.16668839752674103 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0.99999672174453735 0.99999672174453735 
		-0.98600959777832031 -0.98600959777832031 0;
createNode animCurveTL -n "animCurveTL222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 1 25 1 28 1 31 1 35 0.41821553774010833 
		38 0.41821553774010833 42 0.80168990793572048 45 0.80168990793572048;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 0.0040106168016791344 0.0040106168016791344 
		0.0060846051201224327 0.0060846051201224327 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 -0.99999195337295532 -0.99999195337295532 
		0.99998146295547485 0.99998146295547485 0;
createNode animCurveTL -n "animCurveTL223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0 25 0 28 0 31 0 35 0 38 0 42 
		0.011621961304049206 45 0.011621961304049206;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 0.19684134423732758 0.19684134423732758 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0.98043537139892578 0.98043537139892578 
		0;
createNode animCurveTL -n "animCurveTL224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0 25 0 28 0 31 0 35 0 38 0 42 
		0.53592894662340362 45 0.53592894662340362;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 0.004353769589215517 
		0.004353769589215517 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0.99999052286148071 0.99999052286148071 
		0;
createNode animCurveTL -n "animCurveTL225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 1 25 1 28 1 31 1 35 1 38 1 42 
		1.1714982742260704 45 1.1714982742260704;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 0.013604319654405117 
		0.013604319654405117 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0.99990743398666382 0.99990743398666382 
		0;
createNode animCurveTL -n "animCurveTL226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 -0.0026804807853766997 25 -0.12671603064044162 
		28 -0.12771562490689248 31 -0.12876670250521513 35 -0.31779194615348405 38 
		-0.89009588852260613 42 -1.3754876745566338 45 -1.4056785302309036;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  0.033213566988706589;
	setAttr -s 8 ".kiy[7]"  0.99944829940795898;
	setAttr -s 8 ".kox[0:7]"  0.01612231507897377 0.015993457287549973 
		0.69820660352706909 0.012274845503270626 0.0030648009851574898 0.002206047996878624 
		0.0045255781151354313 0.033104460686445236;
	setAttr -s 8 ".koy[0:7]"  -0.99987000226974487 -0.99987208843231201 
		-0.71589630842208862 -0.99992465972900391 -0.99999529123306274 -0.99999755620956421 
		-0.99998974800109863 -0.99945187568664551;
createNode animCurveTL -n "animCurveTL227";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0.96427704314795082 25 0.96427704314795082 
		28 0.91631447423123891 31 0.99852211874626995 35 1.0516737555298512 38 1.2469303946910812 
		42 1.2469303946910812 45 0.96452787963755071;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  0.0082621565088629723;
	setAttr -s 8 ".kiy[7]"  -0.99996590614318848;
	setAttr -s 8 ".kox[0:7]"  1 0.041662976145744324 0.058303210884332657 
		0.017235513776540756 0.0093927234411239624 0.011949230916798115 0.0082621565088629723 
		0.0035410232376307249;
	setAttr -s 8 ".koy[0:7]"  0 -0.99913173913955688 0.99829894304275513 
		0.99985146522521973 0.99995589256286621 0.99992859363555908 -0.9999658465385437 
		-0.99999374151229858;
createNode animCurveTL -n "animCurveTL228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 -0.030690903717009235 25 -0.030690903717009235 
		28 0.45983158475970642 31 0.7714635429643526 35 1.0775459745385783 38 0.94733098476276167 
		42 1.0057239815788857 45 1.0057239815788857;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  0.13721929490566254;
	setAttr -s 8 ".kiy[7]"  0.99054074287414551;
	setAttr -s 8 ".kox[0:7]"  1 0.0040772510692477226 0.002493277657777071 
		0.0037773391231894493 0.013266400434076786 0.032470595091581345 0.039927266538143158 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0.99999171495437622 0.99999690055847168 
		0.99999284744262695 0.99991202354431152 -0.99947267770767212 0.99920260906219482 
		0;
createNode animCurveTA -n "animCurveTA582";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 -0.62843630316474508 25 -0.67166967116336995 
		28 -1.3067844058955003 31 -1.5694640744400246 35 -1.5694640744400246 38 -0.66328523044530341 
		42 -19.260233369027112 45 -19.688418588621186;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  0.65124601125717163;
	setAttr -s 8 ".kiy[7]"  0.75886666774749756;
	setAttr -s 8 ".kox[0:7]"  0.99999290704727173 0.99825245141983032 
		0.99694490432739258 0.99980700016021729 0.9977107048034668 0.60290932655334473 
		0.57494556903839111 0.99721920490264893;
	setAttr -s 8 ".koy[0:7]"  -0.0037727963645011187 -0.059093587100505829 
		-0.078107982873916626 -0.01964460127055645 0.067626848816871643 -0.79780972003936768 
		-0.81819164752960205 -0.074524588882923126;
createNode animCurveTA -n "animCurveTA583";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 5.8284402688137158 25 5.8236328400799868 
		28 -22.982373330668185 31 -22.966818120197011 35 -22.966818120197011 38 0.86920395370528059 
		42 4.4629911654075496 45 1.6085540494966297;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  0.64261633157730103;
	setAttr -s 8 ".kiy[7]"  -0.76618808507919312;
	setAttr -s 8 ".kox[0:7]"  0.99999994039535522 0.3695780336856842 
		0.36980369687080383 0.99999934434890747 0.48918384313583374 0.43812236189842224 
		0.99847429990768433 0.89507317543029785;
	setAttr -s 8 ".koy[0:7]"  -0.00041952726314775646 -0.9291996955871582 
		-0.92910993099212646 0.0011635262053459883 0.87218070030212402 0.89891535043716431 
		0.055218879133462906 -0.44591933488845825;
createNode animCurveTA -n "animCurveTA584";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 1.2956360193097458 25 0.86972862893446434 
		28 1.4000885654487405 31 2.0730623347658552 35 2.0730623347658552 38 6.676322975968044 
		42 12.204195838859512 45 4.1348769634669011;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  0.48905429244041443;
	setAttr -s 8 ".kiy[7]"  -0.87225335836410522;
	setAttr -s 8 ".kox[0:7]"  0.99931001663208008 0.99995845556259155 
		0.99453157186508179 0.99873542785644531 0.94551986455917358 0.79700344800949097 
		0.98240649700164795 0.57894629240036011;
	setAttr -s 8 ".koy[0:7]"  -0.037141785025596619 0.0091148251667618752 
		0.10443642735481262 0.050274662673473358 0.32556432485580444 0.60397475957870483 
		-0.18675519526004791 -0.81536567211151123;
createNode animCurveTA -n "animCurveTA585";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA586";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA587";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA588";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA589";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA590";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA591";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA592";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA593";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA594";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA595";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA596";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA597";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA598";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA599";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA600";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA601";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA602";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA603";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA604";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA605";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0 25 0 28 -0.92360198805469296 
		31 -0.92360198805469296 35 0 38 0 42 0 45 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 0.99676758050918579 0.99676758050918579 
		0.99762213230133057 0.99762213230133057 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 -0.080338947474956512 -0.080338947474956512 
		0.068920992314815521 0.068920992314815521 0 0 0;
createNode animCurveTA -n "animCurveTA606";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0 25 0 28 -0.74022903683783747 
		31 -0.74022903683783747 35 0 38 0 42 0 45 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 0.99792009592056274 0.99792009592056274 
		0.99847066402435303 0.99847066402435303 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 -0.064462810754776001 -0.064462810754776001 
		0.055284325033426285 0.055284325033426285 0 0 0;
createNode animCurveTA -n "animCurveTA607";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0 25 0 28 -25.704635848806515 
		31 -25.704635848806515 35 0 38 0 42 0 45 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 0.40717294812202454 0.40717294812202454 
		0.46142348647117615 0.46142348647117615 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 -0.91335105895996094 -0.91335105895996094 
		0.88718003034591675 0.88718003034591675 0 0 0;
createNode animCurveTA -n "animCurveTA608";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0 25 0 28 0 31 0 35 0 38 0 42 
		0 45 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA609";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0 25 0 28 0 31 0 35 0 38 0 42 
		0 45 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA610";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0 25 0 28 0 31 0 35 -37.313732430097119 
		38 -37.313732430097119 42 -37.313732430097119 45 -37.313732430097119;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 0.33729124069213867 0.33729124069213867 
		1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 -0.94140034914016724 -0.94140034914016724 
		0 0 0;
createNode animCurveTL -n "animCurveTL229";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 -0.5198069948790518 25 -0.5198069948790518 
		28 -0.5198069948790518 31 -0.5198069948790518 35 -0.5198069948790518 38 -0.5198069948790518 
		42 -0.5198069948790518 45 -0.5198069948790518;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL230";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 -0.72394202659893114 25 -0.72394202659893114 
		28 -0.72394202659893114 31 -0.72394202659893114 35 -0.72394202659893114 38 
		-0.72394202659893114 42 -0.72394202659893114 45 -0.72394202659893114;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0.36439499068905612 25 0.36439499068905612 
		28 0.36439499068905612 31 0.36439499068905612 35 0.36439499068905612 38 0.36439499068905612 
		42 0.36439499068905612 45 0.36439499068905612;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA611";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 7.7976222737965299 25 7.7976222737965299 
		28 7.7976222737965299 31 7.7976222737965299 35 7.7976222737965299 38 7.7976222737965299 
		42 7.7976222737965299 45 7.7976222737965299;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA612";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 30.409274105849079 25 30.409274105849079 
		28 30.409274105849079 31 30.409274105849079 35 30.409274105849079 38 30.409274105849079 
		42 30.409274105849079 45 30.409274105849079;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA613";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 64.859940280210878 25 64.859940280210878 
		28 64.859940280210878 31 64.859940280210878 35 64.859940280210878 38 64.859940280210878 
		42 64.859940280210878 45 64.859940280210878;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL232";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0.43524234076486068 25 0.43524234076486068 
		28 0.43524234076486068 31 0.43524234076486068 35 0.43524234076486068 38 0.43524234076486068 
		42 0.43524234076486068 45 0.43524234076486068;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL233";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 -0.82665738350180629 25 -0.82665738350180629 
		28 -0.82665738350180629 31 -0.82665738350180629 35 -0.82665738350180629 38 
		-0.82665738350180629 42 -0.82665738350180629 45 -0.82665738350180629;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL234";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0.27773886459742925 25 0.27773886459742925 
		28 0.27773886459742925 31 0.27773886459742925 35 0.27773886459742925 38 0.27773886459742925 
		42 0.27773886459742925 45 0.27773886459742925;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA614";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0 25 0 28 0 31 0 35 0 38 0 42 
		0 45 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA615";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 -28.652637602052774 25 -28.652637602052774 
		28 -28.652637602052774 31 -28.652637602052774 35 -28.652637602052774 38 -28.652637602052774 
		42 -28.652637602052774 45 -28.652637602052774;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA616";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 -64.676908227303443 25 -64.676908227303443 
		28 -64.676908227303443 31 -64.676908227303443 35 -64.676908227303443 38 -64.676908227303443 
		42 -64.676908227303443 45 -64.676908227303443;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL235";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 -0.64347170757879468 25 -0.66770200152283055 
		28 -1.3416997612532253 31 -1.3416997612532253 35 -1.6089381663630604 38 -2.5572387294414041 
		42 -2.9523976229651749 45 -2.7598383334303902;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  0.011612717993557453;
	setAttr -s 8 ".kiy[7]"  0.99993258714675903;
	setAttr -s 8 ".kox[0:7]"  0.040496207773685455 0.0028643817640841007 
		0.0029673560056835413 0.0087309470400214195 0.0019195839995518327 0.0017368069384247065 
		0.011516205035150051 0.0051931366324424744;
	setAttr -s 8 ".koy[0:7]"  0.99917972087860107 -0.9999958872795105 
		-0.99999558925628662 -0.99996191263198853 -0.99999815225601196 -0.99999850988388062 
		-0.99993366003036499 0.99998652935028076;
createNode animCurveTL -n "animCurveTL236";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 1.4310700844976822 25 1.8677915125568945 
		28 2.2068541196231788 31 2.2068541196231788 35 2.6269531027217918 38 2.6269531027217918 
		42 2.3020833936871901 45 1.6505969749795224;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  0.078000977635383606;
	setAttr -s 8 ".kiy[7]"  0.99695336818695068;
	setAttr -s 8 ".kox[0:7]"  0.0063766851089894772 0.0025780284777283669 
		0.0058985128998756409 0.0055541610345244408 0.0055541610345244408 0.0071821813471615314 
		0.002389831468462944 0.0015349498717114329;
	setAttr -s 8 ".koy[0:7]"  0.99997967481613159 0.99999666213989258 
		0.99998259544372559 0.99998456239700317 0.99998456239700317 -0.99997419118881226 
		-0.99999713897705078 -0.99999880790710449;
createNode animCurveTL -n "animCurveTL237";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0.1323140621875257 25 0.72599793537252511 
		28 1.0719944710859695 31 1.0719944710859695 35 1.1711318416905472 38 1.3165379280292262 
		42 1.6445391924464732 45 1.6918395574784162;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  0.018270997330546379;
	setAttr -s 8 ".kiy[7]"  -0.99983310699462891;
	setAttr -s 8 ".kox[0:7]"  0.0035761366598308086 0.0021283782552927732 
		0.0057803080417215824 0.023529848083853722 0.0095411557704210281 0.0049287467263638973 
		0.006217101588845253 0.02113676443696022;
	setAttr -s 8 ".koy[0:7]"  0.99999362230300903 0.99999773502349854 
		0.99998331069946289 0.99972313642501831 0.9999544620513916 0.99998784065246582 
		0.99998068809509277 0.99977660179138184;
createNode animCurveTA -n "animCurveTA617";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 -9.8095199935760213 25 82.780361754015217 
		28 -52.589203732700348 31 -52.589203732700348 35 -11.378184466593897 38 -11.378184466593897 
		42 -148.31337761623919 45 -2.1628124124086221;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  0.099005423486232758;
	setAttr -s 8 ".kiy[7]"  0.9950869083404541;
	setAttr -s 8 ".kox[0:7]"  0.11979132145643234 0.25874266028404236 
		0.08434922993183136 0.30857318639755249 0.30857318639755249 0.097168251872062683 
		0.82334625720977783 0.039173170924186707;
	setAttr -s 8 ".koy[0:7]"  0.99279910326004028 -0.96594631671905518 
		-0.99643623828887939 0.95120060443878174 0.95120060443878174 -0.99526798725128174 
		0.56753933429718018 0.99923241138458252;
createNode animCurveTA -n "animCurveTA618";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 6.903921154505233 25 64.714399244409293 
		28 38.151078361239179 31 38.151078361239179 35 14.695875806229425 38 14.695875806229425 
		42 67.514583468505464 45 89.015236610426285;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  0.20560318231582642;
	setAttr -s 8 ".kiy[7]"  -0.97863543033599854;
	setAttr -s 8 ".kox[0:7]"  0.3794492781162262 0.34430405497550964 
		0.39610475301742554 0.49519044160842896 0.49519044160842896 0.24537339806556702 
		0.1770443469285965 0.25749781727790833;
	setAttr -s 8 ".koy[0:7]"  0.925212562084198 0.93885821104049683 
		-0.91820532083511353 -0.86878442764282227 -0.86878442764282227 0.9694286584854126 
		0.98420286178588867 0.96627891063690186;
createNode animCurveTA -n "animCurveTA619";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 65.755594144247468 25 150.94058366645049 
		28 -13.902162642025946 31 -13.902162642025946 35 2.7285265811825434 38 2.7285265811825434 
		42 -105.03024637358891 45 33.724874337507345;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  0.10004527121782303;
	setAttr -s 8 ".kiy[7]"  0.99498289823532104;
	setAttr -s 8 ".kox[0:7]"  0.12444908916950226 0.14238908886909485 
		0.069348320364952087 0.62653541564941406 0.62653541564941406 0.12312037497758865 
		0.39604219794273376 0.041257582604885101;
	setAttr -s 8 ".koy[0:7]"  0.9922260046005249 -0.9898107647895813 
		-0.9975925087928772 0.77939295768737793 0.77939295768737793 -0.99239176511764526 
		0.91823232173919678 0.99914854764938354;
createNode animCurveTL -n "animCurveTL238";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0.59633531426150033 25 0.61791398575334433 
		28 0.53245649991305399 31 0.057764978274332357 35 -0.16309368607788433 38 
		-0.87192201433923688 42 -1.6565426802522338 45 -1.661172442671792;
	setAttr -s 8 ".kit[5:7]"  1 9 1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 1 9 
		9;
	setAttr -s 8 ".kix[5:7]"  0.00097681547049432993 0.0029563787393271923 
		0.0036240029148757458;
	setAttr -s 8 ".kiy[5:7]"  -0.9999995231628418 -0.9999956488609314 
		0.99999344348907471;
	setAttr -s 8 ".kox[0:7]"  0.0074000735767185688 0.031293950974941254 
		0.0035704558249562979 0.0033546397462487221 0.0025097974576056004 0.00097677856683731079 
		0.0029563787393271923 0.21112513542175293;
	setAttr -s 8 ".koy[0:7]"  -0.9999726414680481 -0.99951022863388062 
		-0.99999362230300903 -0.99999439716339111 -0.9999968409538269 -0.9999995231628418 
		-0.9999956488609314 -0.97745901346206665;
createNode animCurveTL -n "animCurveTL239";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 1.4073372120339553 25 1.7533677679190762 
		28 2.0265731435249639 31 2.082675008849499 35 2.1753091166963201 38 2.3208217765472545 
		42 2.3325074514422877 45 1.800573907881875;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  0.0078783454373478889;
	setAttr -s 8 ".kiy[7]"  -0.99996894598007202;
	setAttr -s 8 ".kox[0:7]"  0.0055300635285675526 0.0032297696452587843 
		0.0060732434503734112 0.015685824677348137 0.0097974091768264771 0.014841610565781593 
		0.0044849961996078491 0.0018799310782924294;
	setAttr -s 8 ".koy[0:7]"  -0.99998468160629272 0.99999475479125977 
		0.9999815821647644 0.99987697601318359 0.99995201826095581 0.99988985061645508 
		-0.99998992681503296 -0.99999821186065674;
createNode animCurveTL -n "animCurveTL240";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 -0.089888219819601295 25 -0.16371840230176168 
		28 1.4724433051892729 31 1.8476865827496334 35 2.396570350882743 38 1.9971703101830136 
		42 1.8922085972629668 45 1.9231679177171495;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  0.0042624128982424736;
	setAttr -s 8 ".kiy[7]"  0.99999094009399414;
	setAttr -s 8 ".kox[0:7]"  0.0046951496042311192 0.0012801369884982705 
		0.00099432934075593948 0.0025248974561691284 0.015607379376888275 0.0046262592077255249 
		0.03151484951376915 0.032283619046211243;
	setAttr -s 8 ".koy[0:7]"  -0.99998897314071655 0.99999916553497314 
		0.9999995231628418 0.9999968409538269 0.9998781681060791 -0.99998927116394043 
		-0.99950325489044189 0.99947875738143921;
createNode animCurveTA -n "animCurveTA620";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 -8.3720838028337159 25 -32.475854143990034 
		28 76.598559068285468 31 -198.5615092595055 35 -210.59988149686322 38 -33.650708497778012 
		42 -188.7877138060864 45 351.55477460486924;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  0.025214629247784615;
	setAttr -s 8 ".kiy[7]"  0.99968206882476807;
	setAttr -s 8 ".kox[0:7]"  0.2603360116481781 0.1336502879858017 
		0.068831823766231537 0.046499397605657578 0.080803073942661285 0.52256965637207031 
		0.034685306251049042 0.010603009723126888;
	setAttr -s 8 ".koy[0:7]"  0.96551805734634399 0.9910285472869873 
		-0.99762827157974243 -0.99891829490661621 0.99673008918762207 0.85259658098220825 
		0.99939829111099243 0.99994379281997681;
createNode animCurveTA -n "animCurveTA621";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 -7.9878122667209013 25 -33.98743093076498 
		28 -83.045321830692046 31 -62.374044575558543 35 -62.707853358103208 38 -71.735783087729487 
		42 -85.587016657444025 45 -83.443111769650912;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  0.39791557192802429;
	setAttr -s 8 ".kiy[7]"  0.91742205619812012;
	setAttr -s 8 ".kox[0:7]"  0.2515052855014801 0.15092289447784424 
		0.37433192133903503 0.54930394887924194 0.8191332221031189 0.50451385974884033 
		0.75231337547302246 0.9365808367729187;
	setAttr -s 8 ".koy[0:7]"  0.96785593032836914 -0.98854553699493408 
		-0.92729479074478149 0.83562260866165161 -0.57360327243804932 -0.8634035587310791 
		-0.65880542993545532 0.35045161843299866;
createNode animCurveTA -n "animCurveTA622";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 -70.479639319526854 25 -40.325300277159869 
		28 -135.36059262395449 31 131.17056214784589 35 136.18573576884449 38 -9.1363788531835652 
		42 145.37448079538592 45 -373.94114519411897;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  0.026811003684997559;
	setAttr -s 8 ".kiy[7]"  -0.99964052438735962;
	setAttr -s 8 ".kox[0:7]"  0.165297731757164 0.17392627894878387 
		0.06667017936706543 0.049173347651958466 0.094854436814785004 0.82411247491836548 
		0.036622457206249237 0.011032270267605782;
	setAttr -s 8 ".koy[0:7]"  0.98624372482299805 -0.98475867509841919 
		0.99777507781982422 0.99879026412963867 -0.9954911470413208 0.56642615795135498 
		-0.99932914972305298 -0.99993914365768433;
createNode animCurveTL -n "animCurveTL241";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0.1016791736294336 25 0.1016791736294336 
		28 0.1016791736294336 31 0.1016791736294336 35 0.77290696453185026 38 0.77290696453185026 
		42 0.77290696453185026 45 0.57716755259621588;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  0.011087404564023018 1 1 0.0034761957358568907 
		0.0034761957358568907 1 0.011919763870537281 0.0051087676547467709;
	setAttr -s 8 ".koy[0:7]"  -0.99993854761123657 0 0 0.99999397993087769 
		0.99999397993087769 0 -0.99992895126342773 -0.99998694658279419;
createNode animCurveTL -n "animCurveTL242";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 -0.40762644910266188 25 -0.40762644910266188 
		28 -0.40762644910266188 31 -0.40762644910266188 35 -0.71234308293286885 38 
		-0.71234308293286885 42 -0.71234308293286885 45 -0.56604158961666384;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  0.0042410353198647499 1 1 0.0076571623794734478 
		0.0076571623794734478 1 0.015946771949529648 0.0068350420333445072;
	setAttr -s 8 ".koy[0:7]"  0.99999105930328369 0 0 -0.99997067451477051 
		-0.99997067451477051 0 0.99987286329269409 0.99997663497924805;
createNode animCurveTL -n "animCurveTL243";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 -0.93129112588482243 25 -0.93129112588482243 
		28 -0.93129112588482243 31 -0.93129112588482243 35 -0.35872267288917942 38 
		-0.35872267288917942 42 -0.35872267288917942 45 -1.0663528014576997;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  0.027809206396341324 1 1 0.0040751700289547443 
		0.0040751700289547443 1 0.0032973731867969036 0.0014131664065644145;
	setAttr -s 8 ".koy[0:7]"  -0.99961322546005249 0 0 0.99999171495437622 
		0.99999171495437622 0 -0.99999457597732544 -0.99999898672103882;
createNode animCurveTL -n "animCurveTL244";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0 25 0 28 -0.20338426019301348 
		31 -0.20338426019301348 35 -0.20338426019301348 38 -0.20338426019301348 42 
		-0.20338426019301348 45 -0.3861600143950365;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 0.0098331272602081299 0.0098331272602081299 
		1 1 1 0.012765058316290379 0.0054711042903363705;
	setAttr -s 8 ".koy[0:7]"  0 -0.99995166063308716 -0.99995166063308716 
		0 0 0 -0.99991852045059204 -0.99998503923416138;
createNode animCurveTL -n "animCurveTL245";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0 25 0 28 -0.41773512668589569 
		31 -0.41773512668589569 35 -0.41773512668589569 38 -0.41773512668589569 42 
		-0.41773512668589569 45 -0.47812789423544078;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 0.0047876676544547081 0.0047876676544547081 
		1 1 1 0.038607168942689896 0.016556007787585258;
	setAttr -s 8 ".koy[0:7]"  0 -0.99998855590820313 -0.99998855590820313 
		0 0 0 -0.99925446510314941 -0.99986296892166138;
createNode animCurveTL -n "animCurveTL246";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 -1 25 -1 28 -0.84883719224141618 
		31 -0.84883719224141618 35 -0.84883719224141618 38 -0.84883719224141618 42 
		-0.84883719224141618 45 -0.91863342471776432;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 0.013229609467089176 0.013229609467089176 
		1 1 1 0.033411983400583267 0.014325953088700771;
	setAttr -s 8 ".koy[0:7]"  0 0.99991250038146973 0.99991250038146973 
		0 0 0 -0.99944168329238892 -0.99989736080169678;
createNode animCurveTA -n "animCurveTA623";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 -0.061808866237337522 25 -0.061808866237337522 
		28 -0.061808866237337522 31 -0.061808866237337522 35 -0.061808866237337522 
		38 -0.061808866237337522 42 -0.061808866237337522 45 -0.061808866237337522;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA624";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 -59.058178941076754 25 -59.058178941076754 
		28 -59.058178941076754 31 -59.058178941076754 35 -59.058178941076754 38 -59.058178941076754 
		42 -59.058178941076754 45 -59.058178941076754;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA625";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 16.579147429757843 25 16.579147429757843 
		28 16.579147429757843 31 16.579147429757843 35 16.579147429757843 38 16.579147429757843 
		42 16.579147429757843 45 16.579147429757843;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA626";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 12.253734489678925 25 12.253734489678925 
		28 12.253734489678925 31 12.253734489678925 35 12.253734489678925 38 12.253734489678925 
		42 12.253734489678925 45 12.253734489678925;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA627";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 -65.746751280844961 25 -65.746751280844961 
		28 -65.746751280844961 31 -65.746751280844961 35 -65.746751280844961 38 -65.746751280844961 
		42 -65.746751280844961 45 -65.746751280844961;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA628";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0 25 0 28 0 31 0 35 0 38 0 42 
		0 45 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA629";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 15.711328223519057 25 15.711328223519057 
		28 15.711328223519057 31 15.711328223519057 35 15.711328223519057 38 15.711328223519057 
		42 15.711328223519057 45 15.711328223519057;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA630";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 8.5572674112203622 25 8.5572674112203622 
		28 8.5572674112203622 31 8.5572674112203622 35 8.5572674112203622 38 8.5572674112203622 
		42 8.5572674112203622 45 8.5572674112203622;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA631";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0 25 0 28 0 31 0 35 0 38 0 42 
		0 45 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA632";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0 25 0 28 0 31 0 35 0 38 0 42 
		0 45 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA633";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0 25 0 28 0 31 0 35 0 38 0 42 
		0 45 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA634";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0 25 0 28 0 31 0 35 0 38 0 42 
		0 45 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA635";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0 25 0 28 0 31 0 35 0 38 0 42 
		0 45 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA636";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0 25 0 28 0 31 0 35 0 38 0 42 
		0 45 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA637";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 8.2533422302317216 25 8.2533422302317216 
		28 8.2533422302317216 31 8.2533422302317216 35 8.2533422302317216 38 8.2533422302317216 
		42 8.2533422302317216 45 8.2533422302317216;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA638";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 23.263402056531085 25 23.263402056531085 
		28 23.263402056531085 31 23.263402056531085 35 23.263402056531085 38 23.263402056531085 
		42 23.263402056531085 45 23.263402056531085;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA639";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 20.166277752815617 25 20.166277752815617 
		28 20.166277752815617 31 20.166277752815617 35 20.166277752815617 38 20.166277752815617 
		42 20.166277752815617 45 20.166277752815617;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA640";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0 25 0 28 0 31 0 35 0 38 0 42 
		0 45 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA641";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0 25 0 28 0 31 0 35 0 38 0 42 
		0 45 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA642";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 33.429092416277157 25 33.429092416277157 
		28 33.429092416277157 31 33.429092416277157 35 33.429092416277157 38 33.429092416277157 
		42 33.429092416277157 45 33.429092416277157;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA643";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA644";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA645";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA646";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA647";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA648";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 13.994403295754109 45 13.994403295754109;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA649";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA650";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA651";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  22 13.994403295754109 45 13.994403295754109;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA652";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0 25 0 28 0 31 0 35 0 38 0 42 
		0 45 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA653";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0 25 0 28 0 31 0 35 0 38 0 42 
		0 45 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA654";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 17.254116939558369 25 17.254116939558369 
		28 17.254116939558369 31 17.254116939558369 35 17.254116939558369 38 17.254116939558369 
		42 17.254116939558369 45 17.254116939558369;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA655";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0 25 0 28 0 31 0 35 0 38 0 42 
		0 45 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA656";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0 25 0 28 0 31 0 35 0 38 0 42 
		0 45 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA657";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0 25 0 28 0 31 0 35 0 38 0 42 
		0 45 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA658";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0.65073001024951671 25 0.65295831435488694 
		28 0.65073001024951671 31 0.87608285090249316 35 0.87608285090249316 38 0.87760520164235367 
		42 0.8842136688634249 45 0.87902215066922906;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  0.99944251775741577;
	setAttr -s 8 ".kiy[7]"  -0.033385980874300003;
	setAttr -s 8 ".kox[0:7]"  1 1 0.99981051683425903 0.99985796213150024 
		1 0.99999982118606567 1 0.99999958276748657;
	setAttr -s 8 ".koy[0:7]"  0.00019445622456260026 0 0.01946759968996048 
		0.016853960230946541 0.00011387156700948253 0.00060818367637693882 0.00010598754306556657 
		-0.00090609036851674318;
createNode animCurveTA -n "animCurveTA659";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 4.2368721935960929 25 6.3504312169207804 
		28 4.2368721935960929 31 1.0158911696484263 35 1.0158911696484263 38 3.5245400527371942 
		42 7.8414302887517753 45 4.7952631452849266;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  0.70469599962234497;
	setAttr -s 8 ".kiy[7]"  -0.70950937271118164;
	setAttr -s 8 ".kox[0:7]"  0.98341244459152222 1 0.90657889842987061 
		0.97218203544616699 0.98284608125686646 0.89063745737075806 0.99551314115524292 
		0.88296699523925781;
	setAttr -s 8 ".koy[0:7]"  0.18138337135314941 0 -0.42203643918037415 
		-0.23422665894031525 0.18442761898040771 0.45471414923667908 0.094623386859893799 
		-0.46943503618240356;
createNode animCurveTA -n "animCurveTA660";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 8.7398866450636881 25 8.7640349079415039 
		28 8.7398866450636881 31 7.489105379444756 35 7.489105379444756 38 7.5275273643851204 
		42 7.5942158555020089 45 7.5470594542643701;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  0.99992173910140991;
	setAttr -s 8 ".kiy[7]"  -0.012510653585195541;
	setAttr -s 8 ".kox[0:7]"  0.99999779462814331 1 0.99386763572692871 
		0.9956519603729248 0.9999958872795105 0.99996906518936157 0.99999892711639404 
		0.99996614456176758;
	setAttr -s 8 ".koy[0:7]"  0.0021073287352919579 0 -0.11057630926370621 
		-0.093151427805423737 0.0028739459812641144 0.0078620025888085365 0.001460995408706367 
		-0.0082300640642642975;
createNode animCurveTA -n "animCurveTA661";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0 25 -35.473297235032696 28 
		-31.126993833173863 31 -39.947124888156431 35 -39.947124888156431 38 -39.947124888156431 
		42 -1.2734920044837068 45 -1.2734920044837068;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  0.31747207045555115;
	setAttr -s 8 ".kiy[7]"  0.94826763868331909;
	setAttr -s 8 ".kox[0:7]"  0.30739530920982361 0.34547483921051025 
		0.93152356147766113 0.83470755815505981 1 0.32671746611595154 0.32671746611595154 
		1;
	setAttr -s 8 ".koy[0:7]"  -0.95158189535140991 -0.93842804431915283 
		-0.36368089914321899 -0.55069351196289063 0 0.94512206315994263 0.94512206315994263 
		0;
createNode animCurveTA -n "animCurveTA662";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0 25 7.9046478907059914 28 10.289441967040045 
		31 15.999267254138658 35 15.999267254138658 38 15.999267254138658 42 1.71628531942149 
		45 1.71628531942149;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  0.70252406597137451;
	setAttr -s 8 ".kiy[7]"  0.71165996789932251;
	setAttr -s 8 ".kox[0:7]"  0.82315295934677124 0.74406200647354126 
		0.8167729377746582 0.9196363091468811 1 0.68336194753646851 0.68336194753646851 
		1;
	setAttr -s 8 ".koy[0:7]"  0.56781971454620361 0.66811054944992065 
		0.57695925235748291 0.39277106523513794 0 -0.7300797700881958 -0.7300797700881958 
		0;
createNode animCurveTA -n "animCurveTA663";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 -15.452965173287611 25 3.5710550633725351 
		28 2.4213161817386912 31 8.7774676748429563 35 8.7774676748429563 38 8.7774676748429563 
		42 1.62960137906938 45 1.62960137906938;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  0.97205227613449097;
	setAttr -s 8 ".kiy[7]"  0.2347644716501236;
	setAttr -s 8 ".kox[0:7]"  0.51597636938095093 0.53970897197723389 
		0.91043514013290405 0.90312379598617554 1 0.88186699151992798 0.88186699151992798 
		1;
	setAttr -s 8 ".koy[0:7]"  0.85660278797149658 0.84185165166854858 
		0.41365185379981995 0.42938026785850525 0 -0.47149825096130371 -0.47149825096130371 
		0;
createNode animCurveTA -n "animCurveTA664";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 -4.8714700432790456 25 -4.8714700432790456 
		28 -4.8714700432790456 31 -4.8714700432790456 35 -4.8714700432790456 38 -4.8714700432790456 
		42 -4.8714700432790456 45 -4.8714700432790456;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA665";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 -11.783606204137085 25 -11.783606204137085 
		28 -11.783606204137085 31 -11.783606204137085 35 -11.783606204137085 38 -11.783606204137085 
		42 -11.783606204137085 45 -11.783606204137085;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA666";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 7.5423825101935913 25 7.5423825101935913 
		28 7.5423825101935913 31 7.5423825101935913 35 7.5423825101935913 38 7.5423825101935913 
		42 7.5423825101935913 45 7.5423825101935913;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA667";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 1.8903601258661931 25 1.8897509421034522 
		28 1.8903601258661931 31 1.8917718664635332 35 1.8917718664635332 38 1.8884943885230097 
		42 0.62561471731595086 45 0.62622119873454107;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  0.97147494554519653;
	setAttr -s 8 ".kiy[7]"  -0.23714220523834229;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 0.99999994039535522 0.99554508924484253 
		0.99557220935821533 1;
	setAttr -s 8 ".koy[0:7]"  -5.3161315008765087e-005 0 0.00017635892436373979 
		0.00010559795191511512 -0.00024515477707609534 -0.094286419451236725 -0.093999758362770081 
		0.00010585095878923312;
createNode animCurveTA -n "animCurveTA668";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 -2.5597289571479034 25 -2.1066556261897418 
		28 -2.5597289571479034 31 -3.3833994503176918 35 -3.3833994503176918 38 -0.2710175310331438 
		42 -2.9549493603592296 45 -3.8840070108449005;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  0.73266148567199707;
	setAttr -s 8 ".kiy[7]"  -0.68059325218200684;
	setAttr -s 8 ".kox[0:7]"  0.99921929836273193 1 0.99385035037994385 
		0.99810749292373657 0.97395479679107666 0.99948686361312866 0.96536809206008911 
		0.98710721731185913;
	setAttr -s 8 ".koy[0:7]"  0.039507240056991577 0 -0.11073174327611923 
		-0.061493806540966034 0.22674216330051422 0.032031547278165817 -0.26089167594909668 
		-0.16006055474281311;
createNode animCurveTA -n "animCurveTA669";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 2.016811087403604 25 2.0317747207400525 
		28 2.016811087403604 31 1.9895793152433683 35 1.9895793152433683 38 2.0923306793982204 
		42 1.9942658887701088 45 1.9840981620606046;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  0.9973829984664917;
	setAttr -s 8 ".kiy[7]"  -0.072299078106880188;
	setAttr -s 8 ".kox[0:7]"  0.99999916553497314 1 0.99999320507049561 
		0.99999791383743286 0.99997043609619141 0.99999994039535522 0.99996721744537354 
		0.99999845027923584;
	setAttr -s 8 ".koy[0:7]"  0.0013058221666142344 0 -0.0036822189576923847 
		-0.0020369277335703373 0.0076855574734508991 0.00035055485204793513 -0.0080955084413290024 
		-0.0017746000085026026;
createNode animCurveTA -n "animCurveTA670";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0 25 0 28 0 31 0 35 0 38 0 42 
		0 45 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA671";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0 25 0 28 0 31 0 35 0 38 0 42 
		0 45 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA672";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 27.080064458283051 25 27.080064458283051 
		28 27.080064458283051 31 27.080064458283051 35 27.080064458283051 38 27.080064458283051 
		42 27.080064458283051 45 27.080064458283051;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA673";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 10.423754966968488 25 10.423754966968488 
		28 10.423754966968488 31 10.423754966968488 35 10.423754966968488 38 10.423754966968488 
		42 10.423754966968488 45 10.423754966968488;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA674";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 27.722848255843903 25 27.722848255843903 
		28 27.722848255843903 31 27.722848255843903 35 27.722848255843903 38 27.722848255843903 
		42 27.722848255843903 45 27.722848255843903;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA675";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 21.576484776388227 25 21.576484776388227 
		28 21.576484776388227 31 21.576484776388227 35 21.576484776388227 38 21.576484776388227 
		42 21.576484776388227 45 21.576484776388227;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA676";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0 25 0 28 0 31 0 35 0 38 0 42 
		0 45 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA677";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 0 25 0 28 0 31 0 35 0 38 0 42 
		0 45 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA678";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  22 27.911632519594587 25 27.911632519594587 
		28 27.911632519594587 31 27.911632519594587 35 27.911632519594587 38 27.911632519594587 
		42 27.911632519594587 45 27.911632519594587;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
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
	setAttr ".o" 22;
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
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -k on ".ra";
	setAttr -k on ".clip";
	setAttr -k on ".edm";
	setAttr -k on ".edl";
	setAttr -k on ".esr";
	setAttr -k on ".ors";
	setAttr -k on ".gama";
	setAttr -k on ".left";
	setAttr -k on ".bot";
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
select -ne :characterPartition;
select -ne :hyperGraphLayout;
	setAttr ".cch" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".img" -type "string" "";
	setAttr ".ims" 1;
select -ne :ikSystem;
connectAttr "apu_get_into_car_driverSource.st" "clipLibrary1.st[0]";
connectAttr "apu_get_into_car_driverSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL206.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL207.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL208.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL209.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL210.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA566.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU41.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU42.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU43.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU44.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU45.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU46.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU47.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU48.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA567.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA568.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA569.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL211.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL212.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL213.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL214.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL215.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL216.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA570.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA571.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA572.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL217.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL218.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL219.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA573.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA574.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA575.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA576.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA577.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA578.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA579.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA580.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA581.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTL220.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTL221.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTL222.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTL223.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTL224.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTL225.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL226.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL227.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL228.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTA582.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTA583.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTA584.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTA585.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTA586.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTA587.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA588.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA589.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA590.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA591.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA592.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA593.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA594.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA595.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA596.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA597.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA598.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA599.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA600.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA601.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA602.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA603.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA604.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA605.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA606.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA607.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA608.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA609.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA610.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTL229.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTL230.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTL231.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA611.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA612.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA613.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL232.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL233.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL234.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA614.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA615.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA616.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL235.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL236.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL237.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA617.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA618.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA619.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL238.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL239.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL240.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA620.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA621.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA622.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL241.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL242.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL243.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTL244.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTL245.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTL246.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTA623.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTA624.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTA625.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTA626.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTA627.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTA628.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA629.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA630.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA631.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA632.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA633.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA634.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA635.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA636.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA637.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA638.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA639.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA640.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA641.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA642.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA643.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA644.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA645.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA646.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA647.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA648.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA649.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA650.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA651.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA652.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA653.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA654.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA655.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA656.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA657.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA658.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA659.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA660.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA661.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA662.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA663.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA664.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA665.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA666.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA667.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA668.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA669.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA670.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA671.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA672.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA673.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA674.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA675.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA676.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA677.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA678.a" "clipLibrary1.cel[0].cev[161].cevr";
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
// End of apu_get_into_car_driver.ma
