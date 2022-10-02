//Maya ASCII 4.0 scene
//Name: lsa_surf_cycle.ma
//Last modified: Tue, Mar 04, 2003 04:43:22 PM
requires maya "4.0";
requires "p3dmayaexp" "2.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "lsa_surf_cycleSource";
	setAttr ".ihi" 0;
	setAttr ".st" 4;
	setAttr ".du" 82;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 91 ".ktv[0:90]"  0 -0.033135114381557439 1 -0.00018226765976220684 
		2 0.020018618783977715 3 -0.020574682111491972 4 -0.061167983006961649 5 
		-0.060433364942326213 6 -0.058405414823831291 7 -0.055347988764593924 8 -0.051524942877731184 
		9 -0.047200133276360107 10 -0.042637416073597771 11 -0.038100647382561234 
		12 -0.033853683316367525 13 -0.030160379988133732 14 -0.027284593510976892 
		15 -0.025490179998014059 16 -0.024452209225534146 17 -0.023672322960559603 
		18 -0.023154235302307816 19 -0.022901660349996175 20 -0.02291831220284208 
		21 -0.023207904960062913 22 -0.023774152720876067 23 -0.024620769584498929 
		24 -0.025751469650148892 25 -0.027169967017043356 26 -0.028879975784399697 
		27 -0.030885210051435314 28 -0.033189383917367594 29 -0.037778870223447225 
		30 -0.04546797670353115 31 -0.054502319795746122 32 -0.063127515938218914 
		33 -0.0695891815690763 34 -0.072132933126445031 35 -0.071807208743078596 
		36 -0.070917376752702835 37 -0.069594448894903072 38 -0.067969436909264602 
		39 -0.066173352535372723 40 -0.064337207512812786 41 -0.062592013581170058 
		42 -0.061068782480029872 43 -0.059898525948977537 44 -0.059212255727598348 
		45 -0.058821565150227073 46 -0.058450439202756652 47 -0.058098477102109705 
		48 -0.057765278065208849 49 -0.057450441308976724 50 -0.057153566050335933 
		51 -0.05687425150620911 52 -0.056612096893518864 53 -0.056366701429187822 
		54 -0.056137664330138615 55 -0.055924584813293862 56 -0.055727062095576159 
		57 -0.055544695393908161 58 -0.055377083925212463 59 -0.055223826906411713 
		60 -0.055084523554428506 61 -0.054958773086185485 62 -0.054846174718605249 
		63 -0.054746327668610449 64 -0.054658831153123685 65 -0.054583284389067573 
		66 -0.054519286593364746 67 -0.054466436982937835 68 -0.05442433477470944 
		69 -0.054392579185602204 70 -0.054370769432538726 71 -0.054358504732441644 
		72 -0.054355384302233571 73 -0.054361007358837136 74 -0.054374973119174948 
		75 -0.054396880800169647 76 -0.054426329618743836 77 -0.054462918791820136 
		78 -0.05450624753632119 79 -0.054828145261338709 80 -0.055599529256444839 
		81 -0.056668630559282777 82 -0.057883680207495715 83 -0.059092909238726864 
		84 -0.060144548690619429 85 -0.060886829600816629 86 -0.061167983006961649 
		87 -0.026002101768214152 88 0.0091637794705333453 89 -0.0066983087190777505 
		90 -0.033135114381557439;
createNode animCurveTL -n "animCurveTL150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 91 ".ktv[0:90]"  0 0 1 -0.021212078445493811 2 -0.042734221651329854 
		3 -0.069350185130300321 4 -0.085468443302659694 5 -0.085543457503672968 6 
		-0.084949257875992029 7 -0.083813369726468176 8 -0.082263318361952692 9 -0.080426629089296903 
		10 -0.078430827215352134 11 -0.076403438046969627 12 -0.074471986891000722 
		13 -0.07276399905429673 14 -0.071406999843708921 15 -0.070528514566088635 
		16 -0.070000331284345685 17 -0.069602896388638424 18 -0.069326722676690808 
		19 -0.069162322946226817 20 -0.069100209994970407 21 -0.069130896620645588 
		22 -0.069244895620976299 23 -0.069432719793686537 24 -0.06968488193650027 
		25 -0.069991894847141481 26 -0.070344271323334137 27 -0.070732524162802207 
		28 -0.071147166163269687 29 -0.071964134869017496 30 -0.073360792855295898 
		31 -0.075029790466282817 32 -0.076663778046156233 33 -0.077955405939094113 
		34 -0.078597324489274381 35 -0.07876353161214987 36 -0.078839482929496787 
		37 -0.078835015344978207 38 -0.07875996576225712 39 -0.078624171084996641 
		40 -0.07843746821685979 41 -0.078209694061509613 42 -0.077950685522609184 
		43 -0.077670279503821535 44 -0.077378312908809699 45 -0.077084622641236764 
		46 -0.076799045604765775 47 -0.076531418703059753 48 -0.076291578839781771 
		49 -0.076089362918594861 50 -0.075934607843162111 51 -0.075837150517146512 
		52 -0.075806827844211166 53 -0.07585347672801912 54 -0.075986934072233406 
		55 -0.076217036780517056 56 -0.076553621756533158 57 -0.077006525903944759 
		58 -0.07758558612641489 59 -0.08338338354867196 60 -0.09736197475227755 61 
		-0.11633541324745027 62 -0.13711775254440867 63 -0.15652304615337131 64 -0.17136534758455685 
		65 -0.17845871034818378 66 -0.18046914967186406 67 -0.1821724358261701 68 
		-0.18354717912019325 69 -0.18457198986302498 70 -0.18522547836375666 71 -0.18548625493147966 
		72 -0.18533292987528543 73 -0.18474411350426537 74 -0.18369841612751078 75 
		-0.18217444805411317 76 -0.18015081959316395 77 -0.17760614105375438 78 -0.17451902274497597 
		79 -0.16970658335191666 80 -0.16227239479833647 81 -0.15262463408774862 82 
		-0.14117147822366641 83 -0.12832110420960313 84 -0.11448168904907208 85 -0.1000614097455865 
		86 -0.085468443302659694 87 -0.067939752729452935 88 -0.046146149177029701 
		89 -0.02264658186175655 90 0;
createNode animCurveTA -n "animCurveTA444";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTU -n "animCurveTU31";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTU -n "animCurveTU32";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTU -n "animCurveTU33";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTU -n "animCurveTU34";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTU -n "animCurveTU35";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.01 0 0.015 0 2 1 88 1 90 
		0;
	setAttr -s 6 ".kit[1:5]"  1 1 2 2 1;
	setAttr -s 6 ".kot[3:5]"  2 2 5;
	setAttr -s 6 ".kix[1:5]"  1 1 0.066022299230098724 1 0.06651894748210907;
	setAttr -s 6 ".kiy[1:5]"  0 0 0.99781817197799683 0 -0.99778515100479126;
createNode animCurveTU -n "animCurveTU36";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.01 0 0.015 0 2 1 88 1 90 
		0;
	setAttr -s 6 ".kit[1:5]"  1 1 2 2 1;
	setAttr -s 6 ".kot[3:5]"  2 2 5;
	setAttr -s 6 ".kix[1:5]"  1 1 0.066022299230098724 1 0.06651894748210907;
	setAttr -s 6 ".kiy[1:5]"  0 0 0.99781817197799683 0 -0.99778515100479126;
createNode animCurveTU -n "animCurveTU37";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 0.01 1 0.015 1 90 1;
	setAttr -s 4 ".kit[1:3]"  1 1 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTU -n "animCurveTU38";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 0.01 1 0.015 1 90 1;
	setAttr -s 4 ".kit[1:3]"  1 1 1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA445";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA446";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA447";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.26454016861507795 0.01 -0.26454016861507795 
		0.015 -0.26454016861507795 2 -0.28506222142401838 4 -0.35571755133160105 
		86 -0.35571755133160105 88 -0.24501610066973545 90 -0.26454016861507795;
	setAttr -s 8 ".kit[1:7]"  1 1 9 3 3 3 9;
	setAttr -s 8 ".kot[4:7]"  3 3 3 9;
	setAttr -s 8 ".kix[1:7]"  1 1 0.014567124657332897 1 1 1 
		0.034126017242670059;
	setAttr -s 8 ".kiy[1:7]"  0 0 -0.9998939037322998 0 0 0 -0.99941754341125488;
createNode animCurveTL -n "animCurveTL156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.13806192026723146 0.01 0.13806192026723146 
		0.015 0.13806192026723146 2 0.22892848500851956 4 0.13806192026723146 86 
		0.13806192026723146 88 0.20968595550119573 90 0.13806192026723146;
	setAttr -s 8 ".kit[1:7]"  1 1 9 3 3 9 9;
	setAttr -s 8 ".kot[4:7]"  3 3 9 9;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 0.0093074636533856392;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 -0.99995666742324829;
createNode animCurveTL -n "animCurveTL157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.064904406754016042 0.01 -0.064904406754016042 
		0.015 -0.064904406754016042 2 -0.30088901384033412 4 -0.53687362092665336 
		86 -0.53687362092665336 88 -0.30088901384033473 90 -0.064904406754016042;
	setAttr -s 8 ".kit[1:7]"  1 1 9 3 3 9 9;
	setAttr -s 8 ".kot[4:7]"  3 3 9 9;
	setAttr -s 8 ".kix[1:7]"  1 1 0.0028144379612058401 1 1 0.0028250315226614475 
		0.0028250331524759531;
	setAttr -s 8 ".kiy[1:7]"  0 0 -0.99999606609344482 0 0 0.99999600648880005 
		0.99999600648880005;
createNode animCurveTA -n "animCurveTA448";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 0.01 0 0.015 0 2 5.8349626657630393 
		4 0 86 0 88 3.8141590756386852 90 0;
	setAttr -s 8 ".kit[1:7]"  1 1 9 3 3 9 9;
	setAttr -s 8 ".kot[4:7]"  3 3 9 9;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 0.70762175321578979;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 -0.70659142732620239;
createNode animCurveTA -n "animCurveTA449";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -13.717778871715202 0.01 -13.717778871715202 
		0.015 -13.717778871715204 2 -37.605791906356473 4 -49.262681907596487 86 
		-49.262681907596487 88 -37.605791906356473 90 -13.717778871715202;
	setAttr -s 8 ".kit[1:7]"  1 1 9 3 3 9 9;
	setAttr -s 8 ".kot[4:7]"  3 3 9 9;
	setAttr -s 8 ".kix[1:7]"  1 1 0.20937192440032959 1 1 0.21012528240680695 
		0.15789531171321869;
	setAttr -s 8 ".kiy[1:7]"  0 0 -0.97783607244491577 0 0 0.97767448425292969 
		0.98745584487915039;
createNode animCurveTA -n "animCurveTA450";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.21594587158542247 0.01 0.21594587158542247 
		0.015 0.21594587158542247 90 0.21594587158542247;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.1380615615975922 0.01 0.1380615615975922 
		0.015 0.1380615615975922 90 0.1380615615975922;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.00078430246903575811 0.01 0.00078430246903575811 
		0.015 0.00078430246903575811 90 0.00078430246903575811;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA451";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA452";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA453";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA454";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA455";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA456";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA457";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA458";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA459";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA460";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA461";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA462";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA463";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA464";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA465";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 0.01 1 0.015 1 90 1;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL165";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 0.01 1 0.015 1 90 1;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.076472881617957691 0.01 -0.076472881617957691 
		0.015 -0.076472881617957691 2 0.04620118243123434 4 -0.14117023618618219 
		15 -0.058829056539895952 28 -0.076598130854754698 34 -0.1664763607638228 
		44 -0.13665659247306428 78 -0.12579554629828532 86 -0.14117023618618219 88 
		0.021149183749708516 90 -0.076472881617957691;
	setAttr -s 13 ".kit[1:12]"  1 1 3 3 9 9 3 
		9 9 3 3 9;
	setAttr -s 13 ".kot[3:12]"  3 3 9 9 3 9 9 
		3 3 9;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 0.12295247614383698 0.058732546865940094 
		1 0.33916106820106506 0.95175796747207642 1 1 0.0068289018236100674;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0.99241256713867188 -0.99827373027801514 
		0 0.94072830677032471 -0.30684974789619446 0 0 -0.99997669458389282;
createNode animCurveTL -n "animCurveTL168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.96147551361829786 0.01 0.96147551361829786 
		0.015 0.96147551361829786 2 0.96163509060425201 4 0.82137463137772326 15 
		0.83641511842792116 28 0.82864552192895558 34 0.79420064463698781 58 0.79556203298468531 
		65 0.73738422638772583 78 0.74265029828434193 86 0.82137463137772326 88 0.97132065844087967 
		90 0.96147551361829786;
	setAttr -s 14 ".kit[1:13]"  1 1 3 1 9 9 9 
		9 1 1 9 3 9;
	setAttr -s 14 ".kot[3:13]"  3 1 9 9 9 9 1 
		1 9 3 9;
	setAttr -s 14 ".kix[1:13]"  1 1 1 0.93071568012237549 0.7400246262550354 
		0.14836707711219788 0.28933688998222351 0.17893698811531067 0.16778795421123505 
		0.12577579915523529 0.0145754748955369 1 0.067560590803623199;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 -0.36574351787567139 0.67257976531982422 
		-0.98893237113952637 -0.95722734928131104 -0.9838605523109436 -0.98582309484481812 
		0.99205869436264038 0.99989378452301025 0 -0.99771517515182495;
	setAttr -s 14 ".kox[4:13]"  0.93071573972702026 0.7400246262550354 
		0.14836707711219788 0.28933688998222351 0.17893698811531067 0.16778729856014252 
		0.12577785551548004 0.0145754748955369 1 0.067560590803623199;
	setAttr -s 14 ".koy[4:13]"  -0.36574342846870422 0.67257976531982422 
		-0.98893237113952637 -0.95722734928131104 -0.9838605523109436 -0.98582321405410767 
		0.99205845594406128 0.99989378452301025 0 -0.99771517515182495;
createNode animCurveTL -n "animCurveTL169";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 0.01 0 0.015 0 2 -0.098626763008750715 
		4 -0.19725352601750135 15 -0.16277350616616132 28 -0.16420129874322029 34 
		-0.18139559809402336 58 -0.17906059640486777 65 -0.4118667487608233 78 -0.40277430199204028 
		86 -0.19725352601750135 90 0;
	setAttr -s 13 ".kit[1:12]"  1 1 9 1 9 9 9 
		1 1 1 9 9;
	setAttr -s 13 ".kot[4:12]"  1 9 9 9 1 1 1 
		9 9;
	setAttr -s 13 ".kix[1:12]"  1 1 0.0067339898087084293 0.30429726839065552 
		0.23524835705757141 0.32198578119277954 0.55832064151763916 0.21837787330150604 
		0.066812232136726379 0.042876046150922775 0.0099306311458349228 0.0067593376152217388;
	setAttr -s 13 ".kiy[1:12]"  0 0 -0.99997735023498535 -0.95257711410522461 
		0.97193527221679688 -0.94674450159072876 -0.82962524890899658 -0.97586429119110107 
		-0.99776554107666016 0.99908041954040527 0.99995070695877075 0.99997717142105103;
	setAttr -s 13 ".kox[4:12]"  0.30429661273956299 0.23524835705757141 
		0.32198578119277954 0.55832064151763916 0.2183775007724762 0.066813014447689056 
		0.042875565588474274 0.0099306311458349228 0.0067593376152217388;
	setAttr -s 13 ".koy[4:12]"  -0.95257735252380371 0.97193527221679688 
		-0.94674450159072876 -0.82962524890899658 -0.97586435079574585 -0.99776554107666016 
		0.99908041954040527 0.99995070695877075 0.99997717142105103;
createNode animCurveTA -n "animCurveTA466";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.62843630316474508 0.01 -0.62843630316474508 
		0.015 -0.62843630316474508 2 3.7673560642985522 4 8.1631484317618508 28 10.254469930357642 
		34 30.663574413833398 44 25.804652780540717 58 22.023332381118081 65 -3.3290116293532686 
		78 -3.8277088660935199 86 8.1631484317618508 88 4.8151900145700317 90 -0.62843630316474508;
	setAttr -s 14 ".kit[1:13]"  1 1 9 9 1 3 9 
		1 1 9 3 9 9;
	setAttr -s 14 ".kot[5:13]"  1 3 9 1 1 9 3 
		9 9;
	setAttr -s 14 ".kix[1:13]"  1 1 0.65450888872146606 0.99157428741455078 
		0.99644863605499268 1 0.98269355297088623 0.95380079746246338 0.95150578022003174 
		0.96131467819213867 1 0.65591377019882202 0.57438868284225464;
	setAttr -s 14 ".kiy[1:13]"  0 0 0.7560543417930603 0.12953945994377136 
		0.084202788770198822 0 -0.1852385550737381 -0.30043977499008179 -0.30763080716133118 
		0.27545243501663208 0 -0.75483584403991699 -0.81858271360397339;
	setAttr -s 14 ".kox[5:13]"  0.99644863605499268 1 0.98269355297088623 
		0.95380079746246338 0.95150578022003174 0.96131467819213867 1 0.65591377019882202 
		0.57438868284225464;
	setAttr -s 14 ".koy[5:13]"  0.084202788770198822 0 -0.1852385550737381 
		-0.3004397451877594 -0.30763077735900879 0.27545243501663208 0 -0.75483584403991699 
		-0.81858271360397339;
createNode animCurveTA -n "animCurveTA467";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -5.8284402688137158 0.01 -5.8284402688137158 
		0.015 -5.8284402688137167 2 -19.342912103131244 4 -32.857383937448802 15 
		-34.832921439185995 44 -34.718352956800473 58 -34.343763229164828 65 -32.412735242144258 
		78 -32.349132607743371 86 -32.857383937448802 88 -22.564384256663356 90 -5.8284402688137158;
	setAttr -s 13 ".kit[1:12]"  1 1 9 1 9 9 9 
		9 9 3 9 9;
	setAttr -s 13 ".kot[4:12]"  1 9 9 9 9 9 3 
		9 9;
	setAttr -s 13 ".kix[1:12]"  1 1 0.27103924751281738 0.99224293231964111 
		0.99970340728759766 0.99998223781585693 0.99835175275802612 0.99863934516906738 
		0.99993854761123657 1 0.27198413014411926 0.22251266241073608;
	setAttr -s 13 ".kiy[1:12]"  0 0 -0.96256828308105469 -0.12431397289037704 
		-0.024352801963686943 0.0059562348760664463 0.057391848415136337 0.052148256450891495 
		-0.011085866950452328 0 0.96230173110961914 0.9749298095703125;
	setAttr -s 13 ".kox[4:12]"  0.99224293231964111 0.99970340728759766 
		0.99998223781585693 0.99835175275802612 0.99863934516906738 0.99993854761123657 
		1 0.27198413014411926 0.22251266241073608;
	setAttr -s 13 ".koy[4:12]"  -0.12431397289037704 -0.024352801963686943 
		0.0059562348760664463 0.057391848415136337 0.052148256450891495 -0.011085866950452328 
		0 0.96230173110961914 0.9749298095703125;
createNode animCurveTA -n "animCurveTA468";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -1.2956360193097458 0.01 -1.2956360193097458 
		0.015 -1.295636019309746 2 2.0964156767327 4 -0.55953262722486363 15 1.5693118990374362 
		28 1.6162686262622823 34 0.9856864241967811 58 0.70644132730044507 65 7.8331772047027179 
		78 7.3374414294221664 86 -0.55953262722486363 88 3.4309695310892505 90 -1.2956360193097458;
	setAttr -s 14 ".kit[1:13]"  1 1 3 3 9 9 9 
		1 1 1 3 3 9;
	setAttr -s 14 ".kot[3:13]"  3 3 9 9 9 1 1 
		1 3 3 9;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 0.99887526035308838 0.9998706579208374 
		0.99987393617630005 0.99997806549072266 0.99924421310424805 0.99737948179244995 
		1 1 0.62854397296905518;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0.047415230423212051 -0.016081372275948524 
		-0.015877479687333107 0.0066263703629374504 0.038871608674526215 -0.072347238659858704 
		0 0 -0.77777403593063354;
	setAttr -s 14 ".kox[8:13]"  0.99997806549072266 0.99924421310424805 
		0.99737948179244995 1 1 0.62854397296905518;
	setAttr -s 14 ".koy[8:13]"  0.0066263657063245773 0.038871604949235916 
		-0.072347268462181091 0 0 -0.77777403593063354;
createNode animCurveTA -n "animCurveTA469";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA470";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA471";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA472";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA473";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA474";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA475";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA476";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA477";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA478";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA479";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA480";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA481";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA482";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA483";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA484";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA485";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA486";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA487";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA488";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA489";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA490";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA491";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA492";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA493";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA494";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.43524234076486068 0.01 -0.43524234076486068 
		0.015 -0.43524234076486068 90 -0.43524234076486068;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.82665738350180629 0.01 -0.82665738350180629 
		0.015 -0.82665738350180629 90 -0.82665738350180629;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.27773886459742925 0.01 0.27773886459742925 
		0.015 0.27773886459742925 90 0.27773886459742925;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA495";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.8121934161072303e-015 0.01 
		0 0.015 1.8121934161072299e-015 90 -1.8121934161072303e-015;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA496";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 28.652637602052774 0.01 28.652637602052774 
		0.015 28.652637602052774 90 28.652637602052774;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA497";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 64.676908227303443 0.01 64.676908227303443 
		0.015 64.676908227303443 90 64.676908227303443;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.5198069948790518 0.01 0.5198069948790518 
		0.015 0.5198069948790518 90 0.5198069948790518;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.72394202659893114 0.01 -0.72394202659893114 
		0.015 -0.72394202659893114 90 -0.72394202659893114;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.36439499068905612 0.01 0.36439499068905612 
		0.015 0.36439499068905612 90 0.36439499068905612;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA498";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 7.7976222737965299 0.01 7.7976222737965299 
		0.015 7.7976222737965317 90 7.7976222737965299;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA499";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -30.409274105849079 0.01 -30.409274105849079 
		0.015 -30.409274105849079 90 -30.409274105849079;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA500";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -64.859940280210878 0.01 -64.859940280210878 
		0.015 -64.859940280210893 90 -64.859940280210878;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.97384023505055983 0.01 -0.97384023505055983 
		0.015 -0.97384023505055983 90 -0.97384023505055983;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.2525748803373358 0.01 1.2525965505547216 
		0.015 1.2525965505547216 90 1.2525748803373358;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[1:3]"  0.22482451796531677 1 0.9999997615814209;
	setAttr -s 4 ".kiy[1:3]"  0.97439926862716675 0 -0.00072246073978021741;
	setAttr -s 4 ".kox[0:3]"  0.22482451796531677 0.22482451796531677 
		0.9999997615814209 0.9999997615814209;
	setAttr -s 4 ".koy[0:3]"  0.97439926862716675 0.97439926862716675 
		-0.00072242069290950894 -0.00072246073978021741;
createNode animCurveTL -n "animCurveTL178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.097994651149805143 0.01 -0.097994651149805143 
		0.015 -0.097994651149805143 90 -0.097994651149805143;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA501";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -12.222987645962959 0.01 -12.222987645962959 
		0.015 -12.222987645962959 90 -12.222987645962959;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA502";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -19.681044208515026 0.01 -19.681044208515026 
		0.015 -19.681044208515026 90 -19.681044208515026;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA503";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 65.119655550709041 0.01 65.119655550709041 
		0.015 65.119655550709027 90 65.119655550709041;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.75854111686822778 0.01 0.75854111686822778 
		0.015 0.75854111686822778 90 0.75854111686822778;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.1932952672205326 0.01 1.1932952672205326 
		0.015 1.1932952672205326 90 1.1932952672205326;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.14314299916678522 0.01 0.14314299916678522 
		0.015 0.14314299916678522 90 0.14314299916678522;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA504";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -5.7993291745893352 0.01 -5.7993291745893352 
		0.015 -5.7993291745893352 90 -5.7993291745893352;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA505";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.228264010471275 0.01 -1.228264010471275 
		0.015 -1.228264010471275 90 -1.228264010471275;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA506";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -60.456694896838378 0.01 -60.456694896838378 
		0.015 -60.456694896838378 90 -60.456694896838378;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1 0.01 -1 0.015 -1 90 -1;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.10167917362943303 0.01 -0.10167917362943303 
		0.015 -0.10167917362943303 90 -0.10167917362943303;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL186";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.40762644910266188 0.01 -0.40762644910266188 
		0.015 -0.40762644910266188 90 -0.40762644910266188;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL187";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.93129112588482243 0.01 -0.93129112588482243 
		0.015 -0.93129112588482243 90 -0.93129112588482243;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA507";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 12.253734489678925 0.01 12.253734489678925 
		0.015 12.253734489678925 2 9.4834033481363331 4 8.2177404699034255 15 9.2570121798958276 
		20 15.575464766472939 28 9.1879214843925858 34 25.407491941000998 44 16.59496224278497 
		50 9.4765292180073821 58 -2.0318718362250481 65 -4.4115243831887927 78 -4.8705114038716273 
		86 8.2177404699034255 88 8.8230339135692155 90 12.253734489678925;
	setAttr -s 17 ".kit[1:16]"  1 1 9 1 1 9 3 
		3 9 9 1 9 1 1 1 9;
	setAttr -s 17 ".kot[4:16]"  1 1 9 3 3 9 9 
		1 9 1 1 1 9;
	setAttr -s 17 ".kix[1:16]"  1 1 0.88346356153488159 0.99758034944534302 
		0.98215532302856445 0.9999961256980896 1 1 0.8867301344871521 0.82052427530288696 
		0.97719359397888184 0.9972500205039978 0.99717956781387329 0.96447223424911499 
		0.9819568395614624 0.74397635459899902;
	setAttr -s 17 ".kiy[1:16]"  0 0 -0.46849986910820007 -0.069523006677627563 
		0.18807151913642883 -0.0027827434241771698 0 0 -0.46228745579719543 -0.57161164283752441 
		-0.21235032379627228 -0.074111044406890869 0.07505306601524353 0.26418426632881165 
		0.18910510838031769 0.66820597648620605;
	setAttr -s 17 ".kox[4:16]"  0.99758034944534302 0.98215532302856445 
		0.9999961256980896 1 1 0.8867301344871521 0.82052427530288696 0.97719359397888184 
		0.9972500205039978 0.99717956781387329 0.96447223424911499 0.9819568395614624 
		0.74397635459899902;
	setAttr -s 17 ".koy[4:16]"  -0.069523006677627563 0.18807153403759003 
		-0.0027827434241771698 0 0 -0.46228745579719543 -0.57161164283752441 -0.2123502790927887 
		-0.074111044406890869 0.075053058564662933 0.26418432593345642 0.18910524249076843 
		0.66820597648620605;
createNode animCurveTA -n "animCurveTA508";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -65.746751280844961 0.01 -65.746751280844961 
		0.015 -65.746751280844975 2 -56.298623360224234 4 -49.911896702227253 15 
		-23.467037971694179 20 -30.296462653453009 28 -21.808034999072838 34 -48.784496311709937 
		44 -43.812121918780392 50 -38.157924622049208 58 -31.632186850385704 65 -43.951523132598929 
		78 -13.153163855269101 86 -49.911896702227253 88 -54.776206542500574 90 -65.746751280844961;
	setAttr -s 17 ".kit[1:16]"  1 1 9 9 3 3 3 
		3 9 9 3 3 3 9 9 9;
	setAttr -s 17 ".kot[5:16]"  3 3 3 3 9 9 3 
		3 3 9 9 9;
	setAttr -s 17 ".kix[1:16]"  1 1 0.43319636583328247 0.60317456722259521 
		1 1 1 1 0.94451797008514404 0.91002917289733887 1 1 1 0.41704019904136658 
		0.43451952934265137 0.32881847023963928;
	setAttr -s 17 ".kiy[1:16]"  0 0 0.90129959583282471 0.79760921001434326 
		0 0 0 0 0.32845968008041382 0.41454422473907471 0 0 0 -0.90888804197311401 
		-0.90066242218017578 -0.94439315795898438;
createNode animCurveTA -n "animCurveTA509";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 3.871449260799477e-015 0.01 0 
		0.015 0 2 -3.9568604227408253 4 -7.913720845481655 15 2.5763616173048267 
		20 30.840594792347719 28 0.82651721371711151 34 -55.575209982063171 44 -42.873301550713407 
		50 -30.617846822363504 58 -10.657326823823098 65 -8.3845381412022402 78 16.960601744925402 
		86 -7.913720845481655 88 -2.6460357625042557 90 3.871449260799477e-015;
	setAttr -s 17 ".kit[1:16]"  1 1 9 3 1 3 9 
		3 1 9 1 1 3 3 9 9;
	setAttr -s 17 ".kot[4:16]"  3 1 3 9 3 1 9 
		1 1 3 3 9 9;
	setAttr -s 17 ".kix[1:16]"  1 1 0.6931769847869873 1 0.65358990430831909 
		1 0.29558566212654114 1 0.71279758214950562 0.63865202665328979 0.8774259090423584 
		0.88881367444992065 1 1 0.69452875852584839 0.82202959060668945;
	setAttr -s 17 ".kiy[1:16]"  0 0 -0.72076743841171265 0 0.75684887170791626 
		0 -0.95531624555587769 0 0.7013697624206543 0.76949566602706909 0.47971218824386597 
		0.45826876163482666 0 0 0.71946489810943604 0.56944471597671509;
	setAttr -s 17 ".kox[5:16]"  0.65358996391296387 1 0.29558566212654114 
		1 0.71279752254486084 0.63865202665328979 0.8774259090423584 0.88881361484527588 
		1 1 0.69452875852584839 0.82202959060668945;
	setAttr -s 17 ".koy[5:16]"  0.75684881210327148 0 -0.95531624555587769 
		0 0.70136988162994385 0.76949566602706909 0.47971215844154358 0.45826888084411621 
		0 0 0.71946489810943604 0.56944471597671509;
createNode animCurveTA -n "animCurveTA510";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -0.061808866237337522 0.01 -0.061808866237337522 
		0.015 -0.061808866237340665 2 -0.61859518871512587 4 -1.1753815111929145 
		15 -3.1987420508348015 20 -3.7632811963182338 28 -4.3380270899092084 34 -2.4959177344207695 
		44 -8.6135632376991698 50 -11.682397926341839 58 -16.618505899327999 65 -5.0500604488709193 
		78 1.985518139518442 86 -1.1753815111929145 88 -0.75131748198700699 90 -0.061808866237337522;
	setAttr -s 17 ".kit[1:16]"  1 1 9 9 9 9 3 
		3 9 9 3 9 3 3 9 9;
	setAttr -s 17 ".kot[7:16]"  3 3 9 9 3 9 3 
		3 9 9;
	setAttr -s 17 ".kix[1:16]"  1 1 0.98946481943130493 0.99464362859725952 
		0.9964330792427063 0.99894887208938599 1 1 0.95766091346740723 0.95798850059509277 
		1 0.89903491735458374 1 1 0.98954242467880249 0.98409521579742432;
	setAttr -s 17 ".kiy[1:16]"  0 0 -0.14477355778217316 -0.10336349904537201 
		-0.084386743605136871 -0.045838553458452225 0 0 -0.28789860010147095 -0.28680658340454102 
		0 0.43787693977355957 0 0 0.14424195885658264 0.17764182388782501;
createNode animCurveTA -n "animCurveTA511";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -59.058178941076754 0.01 -59.058178941076754 
		0.015 -59.058178941076754 2 -46.981338937539668 4 -34.904498934002582 15 
		-17.093298463633779 20 7.8147962882741551 28 -18.989172070519427 34 -33.596649204383326 
		44 -35.640704514580797 50 -31.846046033804225 58 -25.685082167399059 65 -23.935235471296902 
		78 -35.610124219380538 86 -34.904498934002582 88 -44.102558261993693 90 -59.058178941076754;
	setAttr -s 17 ".kit[1:16]"  1 1 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 17 ".kix[1:16]"  1 1 0.30053207278251648 0.63899081945419312 
		0.58179235458374023 0.99709725379943848 0.5424271821975708 0.87809276580810547 
		0.99836307764053345 0.93714636564254761 0.96392405033111572 0.96786093711853027 
		0.96457445621490479 0.91373747587203979 0.30156061053276062 0.24746012687683105;
	setAttr -s 17 ".kiy[1:16]"  0 0 0.95377171039581299 0.76921433210372925 
		0.81333738565444946 -0.076138123869895935 -0.84010279178619385 -0.4784904420375824 
		0.057194579392671585 0.348936527967453 0.26617738604545593 -0.25148609280586243 
		-0.26381078362464905 -0.40630507469177246 -0.95344698429107666 -0.96889805793762207;
createNode animCurveTA -n "animCurveTA512";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 16.579147429757843 0.01 16.579147429757843 
		0.015 16.57914742975785 2 18.395806168160469 4 20.212464906563095 15 22.023202634917855 
		20 22.966083372437062 28 22.445622779949719 34 -12.826527769058702 44 7.6016437439236295 
		50 12.658192617174421 58 18.267097427050533 65 65.356469087076547 78 11.810282402082345 
		86 20.212464906563095 88 18.828846761320442 90 16.579147429757843;
	setAttr -s 17 ".kit[1:16]"  1 1 9 9 9 1 1 
		3 9 1 1 3 3 9 1 9;
	setAttr -s 17 ".kot[6:16]"  1 1 3 9 1 1 3 
		3 9 1 9;
	setAttr -s 17 ".kix[1:16]"  1 1 0.90243977308273315 0.98949527740478516 
		0.99596446752548218 0.99431240558624268 0.93165737390518188 1 0.76797491312026978 
		0.96952724456787109 0.8191637396812439 1 1 0.93862593173980713 0.87657332420349121 
		0.86165755987167358;
	setAttr -s 17 ".kiy[1:16]"  0 0 0.43081605434417725 0.14456528425216675 
		0.089748308062553406 0.10650303959846497 -0.36333802342414856 0 0.6404799222946167 
		0.24498362839221954 0.57355970144271851 0 0 0.34493675827980042 -0.48126831650733948 
		-0.50749009847640991;
	setAttr -s 17 ".kox[6:16]"  0.99431240558624268 0.93165737390518188 
		1 0.76797491312026978 0.96952724456787109 0.8191637396812439 1 1 0.93862593173980713 
		0.87657332420349121 0.86165755987167358;
	setAttr -s 17 ".koy[6:16]"  0.10650303959846497 -0.36333811283111572 
		0 0.6404799222946167 0.24498361349105835 0.57355970144271851 0 0 0.34493675827980042 
		-0.48126834630966187 -0.50749009847640991;
createNode animCurveTA -n "animCurveTA513";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 8.5572674112203622 0.01 8.5572674112203622 
		0.015 8.5572674112203639 2 21.262985874243515 4 33.968704337266672 15 22.396140245412013 
		28 19.522046611287347 34 16.788107691459974 44 33.441990537707063 58 36.812503815220907 
		65 21.809146431882997 78 22.172078807098572 86 33.968704337266672 88 24.291673700052041 
		90 8.5572674112203622;
	setAttr -s 15 ".kit[1:14]"  1 1 9 3 9 9 3 
		9 9 9 9 3 9 9;
	setAttr -s 15 ".kot[4:14]"  3 9 9 3 9 9 9 
		9 3 9 9;
	setAttr -s 15 ".kix[1:14]"  1 1 0.28691065311431885 1 0.95375019311904907 
		0.98826766014099121 1 0.91637104749679565 0.96041762828826904 0.93376106023788452 
		0.95698529481887817 1 0.28790125250816345 0.23591028153896332;
	setAttr -s 15 ".kiy[1:14]"  0 0 0.95795732736587524 0 -0.30060029029846191 
		-0.15273204445838928 0 0.40033003687858582 -0.27856424450874329 -0.35789701342582703 
		0.29013648629188538 0 -0.95766007900238037 -0.97177481651306152;
createNode animCurveTA -n "animCurveTA514";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 15.711328223519057 0.01 15.711328223519057 
		0.015 15.711328223519061 2 15.711328223519057 4 15.711328223519057 15 15.711328223519057 
		28 15.816953942387549 34 16.921014337897741 44 21.870231437475912 58 22.4709438793614 
		65 21.634664644859928 78 20.965795093832813 86 15.711328223519057 88 15.711328223519057 
		90 15.711328223519057;
	setAttr -s 15 ".kit[1:14]"  1 1 9 9 3 1 9 
		1 9 9 1 1 9 9;
	setAttr -s 15 ".kot[5:14]"  3 1 9 1 9 9 1 
		1 9 9;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 0.99991613626480103 0.98093873262405396 
		0.99699884653091431 0.99998277425765991 0.99922454357147217 0.99891084432601929 
		0.99986451864242554 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0.012952154502272606 
		0.19431714713573456 0.077416196465492249 -0.0058733499608933926 -0.039374146610498428 
		-0.046659089624881744 -0.01645992137491703 0 0;
	setAttr -s 15 ".kox[6:14]"  0.99991613626480103 0.98093873262405396 
		0.99699884653091431 0.99998277425765991 0.99922454357147217 0.99891084432601929 
		0.99986451864242554 1 1;
	setAttr -s 15 ".koy[6:14]"  0.012952158227562904 0.19431714713573456 
		0.077416189014911652 -0.0058733499608933926 -0.039374146610498428 -0.046659074723720551 
		-0.016459960490465164 0 0;
createNode animCurveTA -n "animCurveTA515";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 0.01 0 0.015 0 2 10.333874418428595 
		4 20.667748836857186 15 22.178348569780354 28 20.009404618297953 34 11.18763015563176 
		44 9.9944039843299457 58 11.501974485221934 65 14.014749130950376 78 14.980453207752666 
		86 20.667748836857186 88 12.797181054427281 90 0;
	setAttr -s 15 ".kit[1:14]"  1 1 9 1 9 1 1 
		9 9 9 1 3 9 9;
	setAttr -s 15 ".kot[4:14]"  1 9 1 1 9 9 9 
		1 3 9 9;
	setAttr -s 15 ".kix[1:14]"  1 1 0.34555965662002563 0.99235802888870239 
		0.99989688396453857 0.97090411186218262 0.98763328790664673 0.99997645616531372 
		0.99501347541809082 0.99587905406951904 0.98966598510742188 1 0.34670427441596985 
		0.28601258993148804;
	setAttr -s 15 ".kiy[1:14]"  0 0 0.93839681148529053 0.12339194864034653 
		-0.014361361972987652 -0.23946867883205414 -0.15678153932094574 0.0068577681668102741 
		0.099740520119667053 0.090691082179546356 0.14339177310466766 0 -0.93797451257705688 
		-0.95822584629058838;
	setAttr -s 15 ".kox[4:14]"  0.99235802888870239 0.99989688396453857 
		0.97090411186218262 0.98763328790664673 0.99997645616531372 0.99501347541809082 
		0.99587905406951904 0.98966598510742188 1 0.34670427441596985 0.28601258993148804;
	setAttr -s 15 ".koy[4:14]"  0.12339189648628235 -0.014361361972987652 
		-0.23946867883205414 -0.15678152441978455 0.0068577681668102741 0.099740520119667053 
		0.090691082179546356 0.14339175820350647 0 -0.93797451257705688 -0.95822584629058838;
createNode animCurveTA -n "animCurveTA516";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 0.01 0 0.015 0 2 28.570259815804267 
		4 38.204828656187232 15 40.334672460876959 28 37.683790268659322 34 29.788831713746166 
		44 28.607260437471606 58 29.999787091664441 65 -0.58816144429597439 78 1.4295299506304056 
		86 38.204828656187232 88 30.866871465866208 90 0;
	setAttr -s 15 ".kit[1:14]"  1 1 9 1 9 9 9 
		9 1 1 9 3 9 9;
	setAttr -s 15 ".kot[4:14]"  1 9 9 9 9 1 1 
		9 3 9 9;
	setAttr -s 15 ".kix[1:14]"  1 1 0.19537122547626495 0.96664363145828247 
		0.99993538856506348 0.96026957035064697 0.95860666036605835 0.99998939037322998 
		0.99662649631500244 0.92789077758789063 0.71878373622894287 1 0.19607841968536377 
		0.1228114515542984;
	setAttr -s 15 ".kiy[1:14]"  0 0 0.98072934150695801 0.25612515211105347 
		-0.011366560123860836 -0.2790740430355072 -0.28473374247550964 0.0046022837050259113 
		-0.082071200013160706 -0.3728521466255188 0.69523370265960693 0 -0.98058819770812988 
		-0.99243003129959106;
	setAttr -s 15 ".kox[4:14]"  0.96664363145828247 0.99993538856506348 
		0.96026957035064697 0.95860666036605835 0.99998939037322998 0.99662643671035767 
		0.92789077758789063 0.71878373622894287 1 0.19607841968536377 0.1228114515542984;
	setAttr -s 15 ".koy[4:14]"  0.25612515211105347 -0.011366560123860836 
		-0.2790740430355072 -0.28473374247550964 0.0046022837050259113 -0.082071259617805481 
		-0.37285205721855164 0.69523370265960693 0 -0.98058819770812988 -0.99243003129959106;
createNode animCurveTA -n "animCurveTA517";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 0.01 0 0.015 0 2 10.59202880688799 
		4 21.18405761377598 15 22.732394098500514 28 18.317534820300974 34 0.93316544473314222 
		44 -1.4161031517161866 58 1.4536736763508038 65 2.4443599856653666 78 4.5571264923489831 
		86 21.18405761377598 88 13.116872181549299 90 0;
	setAttr -s 15 ".kit[1:14]"  1 1 9 1 3 1 1 
		9 9 9 1 3 9 9;
	setAttr -s 15 ".kot[4:14]"  1 3 1 1 9 9 9 
		1 3 9 9;
	setAttr -s 15 ".kix[1:14]"  1 1 0.33811092376708984 0.97474485635757446 
		1 0.89901828765869141 0.94348293542861938 0.99993550777435303 0.99539953470230103 
		0.99671560525894165 0.98434478044509888 1 0.33923739194869995 0.27959293127059937;
	setAttr -s 15 ".kiy[1:14]"  0 0 0.94110625982284546 0.22332155704498291 
		0 -0.43791106343269348 -0.33142110705375671 0.011354995891451836 0.095811180770397186 
		0.080981358885765076 0.1762537807226181 0 -0.94070076942443848 -0.96011865139007568;
	setAttr -s 15 ".kox[4:14]"  0.97474479675292969 1 0.89901828765869141 
		0.94348287582397461 0.99993550777435303 0.99539953470230103 0.99671560525894165 
		0.98434478044509888 1 0.33923739194869995 0.27959293127059937;
	setAttr -s 15 ".koy[4:14]"  0.22332160174846649 0 -0.43791112303733826 
		-0.33142119646072388 0.011354995891451836 0.095811180770397186 0.080981358885765076 
		0.1762537956237793 0 -0.94070076942443848 -0.96011865139007568;
createNode animCurveTA -n "animCurveTA518";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 0.01 0 0.015 0 2 5.1144783173107431 
		4 10.228956634621486 15 5.1237462639851508 28 5.292944495532355 34 11.100650643641991 
		44 26.46213875407879 58 26.842336680787238 65 20.934023267729891 78 19.477916800293421 
		86 10.228956634621486 88 6.3336268652942165 90 0;
	setAttr -s 15 ".kit[1:14]"  1 1 9 3 9 9 9 
		1 9 1 1 9 9 9;
	setAttr -s 15 ".kot[4:14]"  3 9 9 9 1 9 1 
		1 9 9 9;
	setAttr -s 15 ".kix[1:14]"  1 1 0.59693717956542969 1 0.99425166845321655 
		0.98670512437820435 0.82201802730560303 0.97175902128219604 0.99063414335250854 
		0.99172735214233398 0.98003977537155151 0.82375979423522949 0.59838056564331055 
		0.51643741130828857;
	setAttr -s 15 ".kiy[1:14]"  0 0 0.8022879958152771 0 -0.10706806182861328 
		0.16252072155475616 0.56946146488189697 0.2359754890203476 -0.13654309511184692 
		-0.1283622533082962 -0.19880153238773346 -0.56693899631500244 -0.80121201276779175 
		-0.85632491111755371;
	setAttr -s 15 ".kox[8:14]"  0.97175902128219604 0.99063414335250854 
		0.99172735214233398 0.98003977537155151 0.82375979423522949 0.59838056564331055 
		0.51643741130828857;
	setAttr -s 15 ".koy[8:14]"  0.2359754741191864 -0.13654309511184692 
		-0.12836229801177979 -0.19880151748657227 -0.56693899631500244 -0.80121201276779175 
		-0.85632491111755371;
createNode animCurveTA -n "animCurveTA519";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 0.01 0 0.015 0 2 23.003104735265232 
		4 35.001262994439145 15 5.3738338507065606 28 9.9050244294523253 34 37.046187790719991 
		44 34.178898217176538 58 33.260019667354229 65 31.872434686018561 78 32.225064719794013 
		86 35.001262994439145 88 25.863129966437413 90 0;
	setAttr -s 15 ".kit[1:14]"  1 1 9 3 1 1 1 
		9 9 9 9 1 9 9;
	setAttr -s 15 ".kot[4:14]"  3 1 1 1 9 9 9 
		9 1 9 9;
	setAttr -s 15 ".kix[1:14]"  1 1 0.2124781459569931 1 0.99132722616195679 
		0.87739020586013794 0.98345422744750977 0.99660587310791016 0.99835050106048584 
		0.99963313341140747 0.99697089195251465 0.98762023448944092 0.21324163675308228 
		0.14610496163368225;
	setAttr -s 15 ".kiy[1:14]"  0 0 0.9771658182144165 0 -0.13141681253910065 
		0.47977742552757263 0.18115690350532532 -0.082321017980575562 -0.057412832975387573 
		-0.027085116133093834 0.077775627374649048 -0.15686389803886414 -0.97699952125549316 
		-0.98926907777786255;
	setAttr -s 15 ".kox[5:14]"  0.99132722616195679 0.87739020586013794 
		0.98345422744750977 0.99660587310791016 0.99835050106048584 0.99963313341140747 
		0.99697089195251465 0.98762023448944092 0.21324163675308228 0.14610496163368225;
	setAttr -s 15 ".koy[5:14]"  -0.13141679763793945 0.47977745532989502 
		0.18115690350532532 -0.082321017980575562 -0.057412832975387573 -0.027085116133093834 
		0.077775627374649048 -0.15686389803886414 -0.97699952125549316 -0.98926907777786255;
createNode animCurveTA -n "animCurveTA520";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 0.01 0 0.015 0 2 -1.6809725716646498 
		4 -3.3619451433292999 15 -9.3959719411685612 28 -8.8527916152521637 34 -3.6484443136986853 
		44 0.81050310873776865 58 0.94083871391774943 65 -0.64466623935022505 78 
		-1.0509763914997385 86 -3.3619451433292999 88 -2.0816693639080746 90 0;
	setAttr -s 15 ".kit[1:14]"  1 1 9 9 9 9 9 
		1 9 9 9 3 9 9;
	setAttr -s 15 ".kot[8:14]"  1 9 9 9 3 9 9;
	setAttr -s 15 ".kix[1:14]"  1 1 0.91472935676574707 0.95495843887329102 
		0.9929012656211853 0.98768758773803711 0.95346182584762573 0.99899780750274658 
		0.99934244155883789 0.99864315986633301 0.99771279096603394 1 0.91528886556625366 
		0.8780708909034729;
	setAttr -s 15 ".kiy[1:14]"  0 0 -0.40406712889671326 -0.29673966765403748 
		-0.11894132196903229 0.15643922984600067 0.30151379108428955 0.044758930802345276 
		-0.036258280277252197 -0.052074845880270004 -0.067595705389976501 0 0.4027981162071228 
		0.47853061556816101;
	setAttr -s 15 ".kox[8:14]"  0.99899780750274658 0.99934244155883789 
		0.99864315986633301 0.99771279096603394 1 0.91528886556625366 0.8780708909034729;
	setAttr -s 15 ".koy[8:14]"  0.044758938252925873 -0.036258280277252197 
		-0.052074845880270004 -0.067595705389976501 0 0.4027981162071228 0.47853061556816101;
createNode animCurveTA -n "animCurveTA521";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 10.423754966968488 0.01 10.423754966968488 
		0.015 10.423754966968488 90 10.423754966968488;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA522";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.722848255843903 0.01 27.722848255843903 
		0.015 27.7228482558439 90 27.722848255843903;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA523";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 21.576484776388227 0.01 21.576484776388227 
		0.015 21.576484776388224 90 21.576484776388227;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA524";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA525";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA526";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.080064458283051 0.01 27.080064458283051 
		0.015 27.080064458283051 90 27.080064458283051;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA527";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA528";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA529";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA530";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA531";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA532";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 13.994403295754109 0.01 13.994403295754109 
		0.015 13.994403295754109 90 13.994403295754109;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA533";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA534";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA535";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 13.994403295754109 0.01 13.994403295754109 
		0.015 13.994403295754109 90 13.994403295754109;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA536";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA537";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA538";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.911632519594587 0.01 27.911632519594587 
		0.015 27.911632519594587 90 27.911632519594587;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA539";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA540";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA541";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA542";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -0.65073001024951671 0.01 -0.65073001024951671 
		0.015 -0.65073001024951671 2 3.5622945088949787 4 5.3105076416265797 20 5.1318440400099066 
		28 5.6956104377242962 34 24.084700273209869 44 15.772731632955809 58 13.092610931105305 
		65 9.7707575704246938 78 9.3814641367403357 86 5.3105076416265797 88 4.5665617083130847 
		90 -0.65073001024951671;
	setAttr -s 15 ".kit[1:14]"  1 1 9 9 9 1 3 
		1 9 9 9 9 1 9;
	setAttr -s 15 ".kot[6:14]"  1 3 1 9 9 9 9 
		1 9;
	setAttr -s 15 ".kix[1:14]"  1 1 0.78725552558898926 0.99895936250686646 
		0.99996471405029297 0.9980347752571106 1 0.99001079797744751 0.98898720741271973 
		0.99531334638595581 0.99387311935424805 0.96965968608856201 0.9484257698059082 
		0.59073054790496826;
	setAttr -s 15 ".kiy[1:14]"  0 0 0.61662685871124268 0.045608833432197571 
		0.0084013435989618301 0.062662184238433838 0 -0.14099165797233582 -0.14800082147121429 
		-0.096702255308628082 -0.11052727699279785 -0.24445869028568268 -0.31699934601783752 
		-0.80686891078948975;
	setAttr -s 15 ".kox[6:14]"  0.9980347752571106 1 0.99001079797744751 
		0.98898720741271973 0.99531334638595581 0.99387311935424805 0.96965968608856201 
		0.9484257698059082 0.59073054790496826;
	setAttr -s 15 ".koy[6:14]"  0.062662146985530853 0 -0.1409916877746582 
		-0.14800082147121429 -0.096702255308628082 -0.11052727699279785 -0.24445869028568268 
		-0.31699931621551514 -0.80686891078948975;
createNode animCurveTA -n "animCurveTA543";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -4.2368721935960929 0.01 -4.2368721935960929 
		0.015 -4.2368721935960938 2 -3.9290041099742545 4 -11.477029515678778 15 
		-11.613721983890489 20 0.96799063370428051 28 -0.92706367146855473 34 -18.836761768293762 
		44 -12.684382166691938 58 -10.120612454051164 65 1.9028818126295344 78 2.1565435917883913 
		86 -11.477029515678778 88 -3.8556169754324929 90 -4.2368721935960929;
	setAttr -s 16 ".kit[0:15]"  9 1 1 3 1 1 3 
		1 3 1 1 1 1 3 3 9;
	setAttr -s 16 ".kot[0:15]"  9 9 9 3 1 1 3 
		1 3 1 1 1 1 3 3 9;
	setAttr -s 16 ".kix[1:15]"  1 1 1 0.97117042541503906 0.95533609390258789 
		1 0.979522705078125 1 0.98789685964584351 0.98789340257644653 0.95827490091323853 
		0.98969793319702148 1 1 0.9950556755065918;
	setAttr -s 16 ".kiy[1:15]"  0 0 0 -0.23838616907596588 0.29552140831947327 
		0 -0.20133380591869354 0 0.15511217713356018 0.15513423085212708 0.28584828972816467 
		-0.14317116141319275 0 0 -0.099318824708461761;
	setAttr -s 16 ".kox[4:15]"  0.97117042541503906 0.95533609390258789 
		1 0.979522705078125 1 0.98789685964584351 0.98789340257644653 0.95827490091323853 
		0.98969793319702148 1 1 0.9950556755065918;
	setAttr -s 16 ".koy[4:15]"  -0.23838618397712708 0.29552140831947327 
		0 -0.20133376121520996 0 0.15511217713356018 0.15513420104980469 0.28584828972816467 
		-0.14317114651203156 0 0 -0.099318824708461761;
createNode animCurveTA -n "animCurveTA544";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 2.6995264082587447 0.01 2.6995264082587447 
		0.015 2.6995264082587447 2 5.0712756884700285 4 -3.2442027620621738 15 -4.1657322909547609 
		28 -4.139600459012204 34 -1.6540791407441089 44 -1.4343495935861026 58 -0.26423605368739117 
		65 -8.9377197165418814 78 -8.499993463840342 86 -3.2442027620621738 90 2.6995264082587447;
	setAttr -s 14 ".kit[1:13]"  1 1 9 1 9 9 1 
		9 3 1 9 9 9;
	setAttr -s 14 ".kot[4:13]"  1 9 9 1 9 3 1 
		9 9 9;
	setAttr -s 14 ".kix[1:13]"  1 1 0.7881348729133606 0.99282175302505493 
		0.99980926513671875 0.99761319160461426 0.99951839447021484 0.99954062700271606 
		1 0.99698865413665771 0.99007374048233032 0.89846152067184448 0.78925490379333496;
	setAttr -s 14 ".kiy[1:13]"  0 0 -0.61550253629684448 -0.11960319429636002 
		-0.019530821591615677 0.069050505757331848 0.0310321394354105 0.030307743698358536 
		0 -0.077547743916511536 0.14054891467094421 0.43905231356620789 0.61406570672988892;
	setAttr -s 14 ".kox[4:13]"  0.99282175302505493 0.99980926513671875 
		0.99761319160461426 0.99951839447021484 0.99954062700271606 1 0.99698865413665771 
		0.99007374048233032 0.89846152067184448 0.78925490379333496;
	setAttr -s 14 ".koy[4:13]"  -0.11960314959287643 -0.019530821591615677 
		0.069050505757331848 0.0310321394354105 0.030307743698358536 0 -0.077547729015350342 
		0.14054891467094421 0.43905231356620789 0.61406570672988892;
createNode animCurveTA -n "animCurveTA545";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 0.01 0 0.015 0 2 5.1818113938189763 
		4 9.7533260128008195 15 10.421587252199332 28 8.9614929098948899 34 3.8675080190353084 
		44 7.1877359063358943 58 8.3981201426210585 65 8.6462960642027209 78 8.8322930531952455 
		86 9.7533260128008195 88 6.271532556146683 90 0;
	setAttr -s 15 ".kit[1:14]"  1 1 9 1 9 1 3 
		1 1 9 1 3 9 9;
	setAttr -s 15 ".kot[4:14]"  1 9 1 3 1 1 9 
		1 3 9 9;
	setAttr -s 15 ".kix[1:14]"  1 1 0.61519235372543335 0.9981885552406311 
		0.9998508095741272 0.99009716510772705 1 0.99624067544937134 0.99954736232757568 
		0.99993538856506348 0.99979478120803833 1 0.61662852764129639 0.52017205953598022;
	setAttr -s 15 ".kiy[1:14]"  0 0 0.78837704658508301 0.060163486748933792 
		-0.017272541299462318 -0.14038358628749847 0 0.086628839373588562 0.030084278434514999 
		0.011365886777639389 0.020257065072655678 0 -0.7872542142868042 -0.85406148433685303;
	setAttr -s 15 ".kox[4:14]"  0.9981885552406311 0.9998508095741272 
		0.99009716510772705 1 0.99624067544937134 0.99954736232757568 0.99993538856506348 
		0.99979478120803833 1 0.61662852764129639 0.52017205953598022;
	setAttr -s 15 ".koy[4:14]"  0.060163505375385284 -0.017272541299462318 
		-0.14038358628749847 0 0.086628831923007965 0.030084270983934402 0.011365886777639389 
		0.020257063210010529 0 -0.7872542142868042 -0.85406148433685303;
createNode animCurveTA -n "animCurveTA546";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 0.01 0 0.015 0 2 -0.002681757134431354 
		4 -0.0053635142688627097 15 -0.0057555319252154714 28 1.8000990900151421 
		34 7.3661760028513843 44 2.1048145400237788 58 1.1687922078227837 65 -4.8556491885584236 
		78 -4.7661021936171277 86 -0.0053635142688627097 88 -0.0033210129922616304 
		90 0;
	setAttr -s 15 ".kit[1:14]"  1 1 9 9 1 9 3 
		1 1 9 9 1 9 9;
	setAttr -s 15 ".kot[5:14]"  1 9 3 1 1 9 9 
		1 9 9;
	setAttr -s 15 ".kix[1:14]"  1 1 0.9999997615814209 1 0.99999409914016724 
		0.97998166084289551 1 0.99934846162796021 0.99712872505187988 0.98814350366592407 
		0.99276679754257202 0.99980038404464722 0.9999997615814209 0.99999964237213135;
	setAttr -s 15 ".kiy[1:14]"  0 0 -0.0007047249237075448 -0.00012380190310068429 
		0.0034417184069752693 0.19908763468265533 0 -0.036092758178710938 -0.075725384056568146 
		-0.1535329669713974 0.12005877494812012 0.019978977739810944 0.00070208223769441247 
		0.00086943840142339468;
	setAttr -s 15 ".kox[5:14]"  0.99999409914016724 0.97998166084289551 
		1 0.99934846162796021 0.99712872505187988 0.98814350366592407 0.99276679754257202 
		0.99980038404464722 0.9999997615814209 0.99999964237213135;
	setAttr -s 15 ".koy[5:14]"  0.0034417156130075455 0.19908763468265533 
		0 -0.036092758178710938 -0.075725391507148743 -0.1535329669713974 0.12005877494812012 
		0.019978981465101242 0.00070208223769441247 0.00086943840142339468;
createNode animCurveTA -n "animCurveTA547";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 0.01 0 0.015 0 2 -1.6295274828170452 
		4 -3.1067610505273615 15 -3.3227021774096217 28 -1.7994427171211449 34 -20.844415925456357 
		44 -14.079296275660793 58 -10.233577139950762 65 14.027360076995071 78 13.899046823053405 
		86 -3.1067610505273615 88 -1.9816586223704493 90 0;
	setAttr -s 15 ".kit[1:14]"  1 1 9 9 9 1 3 
		9 1 9 9 3 9 9;
	setAttr -s 15 ".kot[6:14]"  1 3 9 1 9 9 3 
		9 9;
	setAttr -s 15 ".kix[1:14]"  1 1 0.92583417892456055 0.99768275022506714 
		0.99959349632263184 0.99512481689453125 1 0.97423654794692993 0.88635772466659546 
		0.84540808200836182 0.9195978045463562 1 0.92632955312728882 0.88765358924865723;
	setAttr -s 15 ".kiy[1:14]"  0 0 -0.37793001532554626 -0.06803768128156662 
		0.028509669005870819 -0.098623596131801605 0 0.22552855312824249 0.46300101280212402 
		0.53412091732025146 -0.39286115765571594 0 0.37671422958374023 0.46051180362701416;
	setAttr -s 15 ".kox[6:14]"  0.99512481689453125 1 0.97423654794692993 
		0.88635772466659546 0.84540808200836182 0.9195978045463562 1 0.92632955312728882 
		0.88765358924865723;
	setAttr -s 15 ".koy[6:14]"  -0.098623543977737427 0 0.22552855312824249 
		0.46300101280212402 0.53412091732025146 -0.39286115765571594 0 0.37671422958374023 
		0.46051180362701416;
createNode animCurveTA -n "animCurveTA548";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -4.0198472869727979 0.01 -4.0198472869727979 
		0.015 -4.019847286972797 90 -4.0198472869727979;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA549";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -9.1335573833666519 0.01 -9.1335573833666519 
		0.015 -9.1335573833666519 90 -9.1335573833666519;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA550";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -2.2752136084709536 0.01 -2.2752136084709536 
		0.015 -2.2752136084709536 90 -2.2752136084709536;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA551";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -1.8903601258661931 0.01 -1.8903601258661931 
		0.015 -1.8903601258661935 2 0.7345884568634975 4 3.3595370395931887 15 3.7432504468190926 
		28 3.6092808366437028 34 1.5853482944266646 44 1.8810004706754819 58 2.6705848389044475 
		65 4.9995205367040159 78 5.016347425402957 86 3.3595370395931887 88 1.3603027471797497 
		90 -1.8903601258661931;
	setAttr -s 15 ".kit[1:14]"  1 1 9 1 9 1 3 
		9 1 9 9 9 9 9;
	setAttr -s 15 ".kot[4:14]"  1 9 1 3 9 1 9 
		9 9 9 9;
	setAttr -s 15 ".kix[1:14]"  1 1 0.82315832376480103 0.99972021579742432 
		0.99998515844345093 0.99984395503997803 1 0.99971985816955566 0.998973548412323 
		0.99811959266662598 0.99916505813598633 0.98216593265533447 0.82415348291397095 
		0.76155543327331543;
	setAttr -s 15 ".kiy[1:14]"  0 0 0.56781190633773804 0.023652765899896622 
		0.0054484833963215351 -0.0176658034324646 0 0.02366955578327179 0.04529750719666481 
		0.061296440660953522 -0.040856018662452698 -0.18801607191562653 -0.56636649370193481 
		-0.64809978008270264;
	setAttr -s 15 ".kox[4:14]"  0.99972021579742432 0.99998515844345093 
		0.99984395503997803 1 0.99971985816955566 0.998973548412323 0.99811959266662598 
		0.99916505813598633 0.98216593265533447 0.82415348291397095 0.76155543327331543;
	setAttr -s 15 ".koy[4:14]"  0.02365276962518692 0.0054484833963215351 
		-0.017665797844529152 0 0.02366955578327179 0.045297503471374512 0.061296440660953522 
		-0.040856018662452698 -0.18801607191562653 -0.56636649370193481 -0.64809978008270264;
createNode animCurveTA -n "animCurveTA552";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 2.5597289571479034 0.01 2.5597289571479034 
		0.015 2.5597289571479038 2 0.31013094728532187 4 -1.9394670625772585 28 -3.1933579446386116 
		34 -9.2380685453877724 58 -7.3183599465451685 65 -2.2242275171651915 86 -1.9394670625772585 
		88 -0.2261102670315096 90 2.5597289571479034;
	setAttr -s 12 ".kit[0:11]"  9 1 1 9 1 1 3 
		1 1 1 9 9;
	setAttr -s 12 ".kot[0:11]"  9 9 9 9 1 1 3 
		1 1 1 9 9;
	setAttr -s 12 ".kix[1:11]"  1 1 0.86083179712295532 0.99837470054626465 
		0.99587982892990112 1 0.9972270131111145 0.99784332513809204 0.99910157918930054 
		0.8616674542427063 0.80794447660446167;
	setAttr -s 12 ".kiy[1:11]"  0 0 -0.50888955593109131 -0.05699041485786438 
		-0.090682774782180786 0 0.074419952929019928 0.065640375018119812 0.042380262166261673 
		0.50747334957122803 0.58925867080688477;
	setAttr -s 12 ".kox[4:11]"  0.99837470054626465 0.99587982892990112 
		1 0.9972270131111145 0.99784332513809204 0.99910157918930054 0.8616674542427063 
		0.80794447660446167;
	setAttr -s 12 ".koy[4:11]"  -0.056990437209606171 -0.090682759881019592 
		0 0.074419945478439331 0.065640382468700409 0.042380265891551971 0.50747334957122803 
		0.58925867080688477;
createNode animCurveTA -n "animCurveTA553";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 2.016811087403604 0.01 2.016811087403604 
		0.015 2.0168110874036049 2 2.5519110715007973 4 3.0870110555979906 15 3.1652316520993669 
		28 2.5538960277507328 34 4.5935393633409669 44 2.0461605511040264 58 2.7816836608965252 
		65 3.3927759815506584 78 3.4084640033536067 86 3.0870110555979906 88 2.6794639324182694 
		90 2.016811087403604;
	setAttr -s 15 ".kit[1:14]"  1 1 9 9 9 3 3 
		3 1 9 9 9 9 9;
	setAttr -s 15 ".kot[6:14]"  3 3 3 1 9 9 9 
		9 9;
	setAttr -s 15 ".kix[1:14]"  1 1 0.99025779962539673 0.99969500303268433 
		0.99993234872817993 1 1 1 0.99881547689437866 0.99986541271209717 0.99997091293334961 
		0.99927228689193726 0.99032968282699585 0.98528337478637695;
	setAttr -s 15 ".kiy[1:14]"  0 0 0.13924625515937805 0.024695074185729027 
		-0.011629979126155376 0 0 0 0.048658184707164764 0.016406862065196037 -0.007623499259352684 
		-0.038142580538988113 -0.13873414695262909 -0.170928955078125;
	setAttr -s 15 ".kox[9:14]"  0.99881547689437866 0.99986541271209717 
		0.99997091293334961 0.99927228689193726 0.99032968282699585 0.98528337478637695;
	setAttr -s 15 ".koy[9:14]"  0.048658188432455063 0.016406862065196037 
		-0.007623499259352684 -0.038142580538988113 -0.13873414695262909 -0.170928955078125;
createNode animCurveTA -n "animCurveTA554";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA555";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA556";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 33.429092416277157 0.01 33.429092416277157 
		0.015 33.429092416277157 90 33.429092416277157;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA557";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.2533422302317216 0.01 8.2533422302317216 
		0.015 8.2533422302317216 90 8.2533422302317216;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA558";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 23.263402056531085 0.01 23.263402056531085 
		0.015 23.263402056531085 90 23.263402056531085;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA559";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 20.166277752815617 0.01 20.166277752815617 
		0.015 20.166277752815617 90 20.166277752815617;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA560";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA561";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 90 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA562";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 17.254116939558369 0.01 17.254116939558369 
		0.015 17.254116939558369 90 17.254116939558369;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
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
	setAttr ".o" 49;
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
connectAttr "lsa_surf_cycleSource.st" "clipLibrary2.st[0]";
connectAttr "lsa_surf_cycleSource.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL147.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL148.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary2.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL150.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary2.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA444.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "animCurveTU31.a" "clipLibrary2.cel[0].cev[6].cevr";
connectAttr "animCurveTU32.a" "clipLibrary2.cel[0].cev[7].cevr";
connectAttr "animCurveTU33.a" "clipLibrary2.cel[0].cev[8].cevr";
connectAttr "animCurveTU34.a" "clipLibrary2.cel[0].cev[9].cevr";
connectAttr "animCurveTU35.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU36.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU37.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU38.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA445.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA446.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA447.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL152.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL153.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL154.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL155.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL156.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL157.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA448.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA449.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA450.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL158.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL159.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL160.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA451.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA452.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA453.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA454.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA455.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA456.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA457.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA458.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA459.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTA460.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTA461.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTA462.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTA463.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTA464.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTA465.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL161.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL162.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL163.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTL164.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTL165.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTL166.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTL167.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTL168.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTL169.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA466.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA467.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA468.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA469.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA470.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA471.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA472.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA473.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA474.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA475.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA476.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA477.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA478.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA479.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA480.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA481.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA482.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA483.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA484.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA485.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA486.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA487.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA488.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTA489.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTA490.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTA491.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA492.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA493.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA494.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL170.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL171.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL172.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA495.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA496.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA497.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL173.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL174.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL175.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA498.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA499.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA500.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL176.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL177.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL178.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA501.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA502.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA503.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL179.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL180.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL181.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTA504.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTA505.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTA506.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTL182.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTL183.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTL184.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTL185.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTL186.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTL187.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA507.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA508.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA509.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA510.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA511.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA512.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA513.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA514.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA515.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA516.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA517.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA518.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA519.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA520.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA521.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA522.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA523.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA524.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA525.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA526.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA527.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA528.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA529.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA530.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA531.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA532.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA533.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA534.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA535.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA536.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA537.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA538.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA539.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA540.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA541.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA542.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA543.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA544.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA545.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA546.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA547.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA548.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA549.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA550.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA551.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA552.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA553.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA554.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA555.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA556.a" "clipLibrary2.cel[0].cev[161].cevr";
connectAttr "animCurveTA557.a" "clipLibrary2.cel[0].cev[162].cevr";
connectAttr "animCurveTA558.a" "clipLibrary2.cel[0].cev[163].cevr";
connectAttr "animCurveTA559.a" "clipLibrary2.cel[0].cev[164].cevr";
connectAttr "animCurveTA560.a" "clipLibrary2.cel[0].cev[165].cevr";
connectAttr "animCurveTA561.a" "clipLibrary2.cel[0].cev[166].cevr";
connectAttr "animCurveTA562.a" "clipLibrary2.cel[0].cev[167].cevr";
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
// End of lsa_surf_cycle.ma
