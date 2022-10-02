//Maya ASCII 4.0 scene
//Name: hom_jump_idle_in_air.ma
//Last modified: Thu, Sep 26, 2002 03:43:22 PM
requires maya "4.0";
requires "p3dmayaexp" "18.5";
requires "p3dSimpleShader" "18.5";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "hom_jump_idle_in_airSource";
	setAttr ".ihi" 0;
	setAttr ".du" 16;
	setAttr ".ci" no;
createNode animCurveTL -n "hom_Extra_Attributes_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 1;
createNode animCurveTL -n "hom_Extra_Attributes_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -0.0057715911447964122 1 -0.016151879596746976 
		2 -0.032433823967445798 3 -0.051283630742121479 4 -0.06936750640600263 5 
		-0.083351657444317842 6 -0.089902290342295771 7 -0.090871258422105652 8 -0.090763595302126771 
		9 -0.090225279702232403 10 -0.089902290342295771 11 -0.090423085415835575 
		12 -0.090943880489375378 13 -0.089902290342295771 14 -0.070571356190843038 
		15 -0.034815099877019744 16 -0.008957613720894245;
createNode animCurveTL -n "Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.011744304833960936 1 0.011335866255171476 
		2 0.011221503453110428 3 0.011303191168868321 4 0.011482904143535682 5 0.011662617118203043 
		6 0.011744304833960936 7 0.011744304833960936 8 0.011744304833960936 9 0.011744304833960936 
		10 0.011744304833960936 11 0.011744304833960936 12 0.011744304833960936 13 
		0.011744304833960936 14 0.011744304833960936 15 0.011744304833960936 16 0.011744304833960936;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0;
createNode animCurveTU -n "animCurveTU17";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTU -n "animCurveTU18";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTU -n "animCurveTU19";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTU -n "animCurveTU20";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTU -n "animCurveTU21";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTU -n "animCurveTU22";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTU -n "animCurveTU23";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 1;
createNode animCurveTU -n "animCurveTU24";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 1;
createNode animCurveTA -n "animCurveTA228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA229";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA230";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTL -n "animCurveTL88";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTL -n "animCurveTL89";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTL -n "animCurveTL90";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTL -n "Right_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -0.26454016861507795 1 -0.27381337737357558 
		2 -0.28367226266660661 3 -0.29353114808971703 4 -0.30280435723845284 5 -0.31090621370835997 
		6 -0.31725104109498431 7 -0.32021602774445207 8 -0.31988658478340015 9 -0.31823936997814023 
		10 -0.31725104109498431 11 -0.31920329554455756 12 -0.32115554999413076 13 
		-0.31725104109498431 14 -0.30358525960722899 15 -0.28406271425043644 16 -0.26454016861507795;
createNode animCurveTL -n "Right_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.25084785169522966 1 0.25579437002738636 
		2 0.25756839830696754 3 0.25934243916907979 4 0.26428899524883004 5 0.27558056918132462 
		6 0.29638966360167063 7 0.33773101224804181 8 0.39840054472370962 9 0.46324255746142734 
		10 0.51710134689395126 11 0.56760147163172292 12 0.60755702183114968 13 0.59959659124393183 
		14 0.51529102784011904 15 0.38306944880102112 16 0.25084785169522966;
createNode animCurveTL -n "Right_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -0.064904406754016042 1 -0.064904406754016042 
		2 -0.064904406754016042 3 -0.064904406754016042 4 -0.064904406754016042 5 
		-0.064904406754016042 6 -0.064904406754016042 7 -0.064904406754016042 8 -0.064904406754016042 
		9 -0.064904406754016042 10 -0.064904406754016042 11 -0.064904406754016042 
		12 -0.064904406754016042 13 -0.064904406754016042 14 -0.064904406754016042 
		15 -0.064904406754016042 16 -0.064904406754016042;
createNode animCurveTA -n "animCurveTA231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 33.524587236074879 1 35.612985476337762 
		2 37.833282592673051 3 40.053579725687982 4 42.1419780159898 5 43.966578604185727 
		6 45.395482630883009 7 46.063220451842604 8 45.989027360624867 9 45.618061904536205 
		10 45.395482630883009 11 45.835145448587305 12 46.274808266291593 13 45.395482630883009 
		14 42.317843293255031 15 37.921215654338106 16 33.524587236074879;
createNode animCurveTA -n "animCurveTA232";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -25.948901905116436 1 -25.948901905116436 
		2 -25.948901905116436 3 -25.948901905116436 4 -25.948901905116436 5 -25.948901905116436 
		6 -25.948901905116436 7 -25.948901905116436 8 -25.948901905116436 9 -25.948901905116436 
		10 -25.948901905116436 11 -25.948901905116436 12 -25.948901905116436 13 -25.948901905116436 
		14 -25.948901905116436 15 -25.948901905116436 16 -25.948901905116436;
createNode animCurveTA -n "animCurveTA233";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0;
createNode animCurveTL -n "Left_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.21594587158542247 1 0.19512565898157114 
		2 0.17299048542564471 3 0.15085531180774106 4 0.13003509901795823 5 0.11184480794639404 
		6 0.097599399483146443 7 0.090942410623052056 8 0.091682076051951431 9 0.095380403196448305 
		10 0.097599399483146443 11 0.093216196854009892 12 0.088832994224873368 13 
		0.097599399483146443 14 0.12828181793485613 15 0.17211384452188427 16 0.21594587158542247;
createNode animCurveTL -n "Left_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.22767375822264074 1 0.27350026774745734 
		2 0.32587170237833141 3 0.37824314276893345 4 0.4240696695729344 5 0.45680636344400494 
		6 0.46990830503581577 7 0.44158224902026533 8 0.37400212902370256 9 0.29657379413147261 
		10 0.2387030934289216 11 0.21254677455446847 12 0.20373388308392848 13 0.20187871500874138 
		14 0.20583858936881641 15 0.21675616736333284 16 0.22767375822264074;
createNode animCurveTL -n "Left_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.00078430246903575811 1 0.0029285487172476432 
		2 0.005208221202921328 3 0.0074878937802809568 4 0.0096321403035506663 5 
		0.011505534626954597 6 0.012972650604716892 7 0.013658245155163498 8 0.013582067982891653 
		9 0.013201182121532427 10 0.012972650604716892 11 0.013424070886456276 12 
		0.013875491168195662 13 0.012972650604716892 14 0.0098127084541350402 15 
		0.0052985053408422028 16 0.00078430246903575811;
createNode animCurveTA -n "animCurveTA234";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 24.970444786995326 1 24.970444786995326 
		2 24.970444786995326 3 24.970444786995326 4 24.970444786995326 5 24.970444786995326 
		6 24.970444786995326 7 24.970444786995326 8 24.970444786995326 9 24.970444786995326 
		10 24.970444786995326 11 24.970444786995326 12 24.970444786995326 13 24.970444786995326 
		14 24.970444786995326 15 24.970444786995326 16 24.970444786995326;
createNode animCurveTA -n "animCurveTA235";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0;
createNode animCurveTA -n "animCurveTA236";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0;
createNode animCurveTA -n "animCurveTA237";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA238";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA239";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA240";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA241";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA242";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTL -n "animCurveTL97";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 10 0 13 0 16 0;
createNode animCurveTL -n "animCurveTL98";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 10 0 13 0 16 0;
createNode animCurveTL -n "animCurveTL99";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 10 1 13 1 16 1;
createNode animCurveTL -n "animCurveTL100";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 10 0 13 0 16 0;
createNode animCurveTL -n "animCurveTL101";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 10 0 13 0 16 0;
createNode animCurveTL -n "animCurveTL102";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 10 1 13 1 16 1;
createNode animCurveTL -n "Character_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -0.0085827183160452087 1 -0.031974218817344635 
		2 -0.058413992917151221 3 -0.084853766796425631 4 -0.10824526663612849 5 
		-0.12554021861722045 6 -0.13369034892066212 7 -0.13513126527762642 8 -0.13497116346018595 
		9 -0.13417065437298359 10 -0.13369034892066212 11 -0.13446480388540891 12 
		-0.1352392588501557 13 -0.13369034892066212 14 -0.10985073385411484 15 -0.061585633711927469 
		16 -0.013320533873867947;
createNode animCurveTL -n "Character_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1.0037673698618981 1 1.0037673698618981 
		2 1.0037673698618981 3 1.0037673698618981 4 1.0037673698618981 5 1.0037673698618983 
		6 1.0037673698618981 7 1.0037673698618983 8 1.0037673698618983 9 1.0037673698618981 
		10 1.0037673698618981 11 1.0037673698618981 12 1.0037673698618983 13 1.0037673698618981 
		14 1.0037673698618983 15 1.0037673698618981 16 1.0037673698618981;
createNode animCurveTL -n "Character_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.017464518480061249 1 0.016857144675644024 
		2 0.016687080010407203 3 0.016808554771290646 4 0.017075799245234224 5 0.017343043719177803 
		6 0.017464518480061249 7 0.017464518480061249 8 0.017464518480061249 9 0.017464518480061249 
		10 0.017464518480061249 11 0.017464518480061249 12 0.017464518480061249 13 
		0.017464518480061249 14 0.017464518480061249 15 0.017464518480061249 16 0.017464518480061249;
createNode animCurveTA -n "animCurveTA243";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 3.2448832203265305 1 -0.023238332973721215 
		2 -2.7613970048812138 3 -5.0825085548106479 4 -7.0994887421767192 5 -8.9252533263941327 
		6 -10.672718066877577 7 -12.13140114301348 8 -12.965175343710829 9 -13.098489228372909 
		10 -12.45579135640301 11 -11.123369473285992 12 -9.3328599291318337 13 -7.2267328038596634 
		14 -4.6377483183104262 15 -1.2403845826361135 16 3.0603114892775696;
createNode animCurveTA -n "animCurveTA244";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -3.5649429611219068 1 -2.4308495852825813 
		2 -1.0711928651260134 3 0.2884638670454181 4 1.4225572789293335 5 2.1055240382233538 
		6 2.1118008126251007 7 0.65270638352826971 8 -2.1843036438183363 9 -5.3105873659344329 
		10 -7.6375028793397401 11 -8.855372330094724 12 -9.2972639027259252 13 -8.8386547514521716 
		14 -7.1378704326452445 15 -4.53658535946788 16 -1.9352999713253447;
createNode animCurveTA -n "animCurveTA245";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -0.67984912797240238 1 -0.85639170412309396 
		2 -0.9991708824641371 3 -1.1419500619194682 4 -1.3184926414130242 5 -1.5625620198687411 
		6 -1.9079215962105556 7 -2.5950204023951278 8 -3.569969166258006 9 -4.4250238305414609 
		10 -4.7524403379877649 11 -4.0202909628721724 12 -2.5917443015373633 13 -1.4017007798267447 
		14 -0.84129494018147633 15 -0.51939223569805792 16 -0.1974894582029042;
createNode animCurveTA -n "animCurveTA246";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA247";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA248";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA249";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA250";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA251";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA252";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA253";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA254";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA255";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA256";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA257";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA258";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA259";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA260";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA261";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA262";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA263";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA264";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA265";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA266";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA267";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA268";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA269";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA270";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA271";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTL -n "animCurveTL106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 -0.43524234076486068;
createNode animCurveTL -n "animCurveTL107";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL108";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0.27773886459742925;
createNode animCurveTA -n "animCurveTA272";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA273";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 28.652637602052774;
createNode animCurveTA -n "animCurveTA274";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 64.676908227303443;
createNode animCurveTL -n "animCurveTL109";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0.5198069948790518;
createNode animCurveTL -n "animCurveTL110";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL111";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0.36439499068905612;
createNode animCurveTA -n "animCurveTA275";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 7.7976222737965299;
createNode animCurveTA -n "animCurveTA276";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 -30.409274105849079;
createNode animCurveTA -n "animCurveTA277";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 -64.859940280210878;
createNode animCurveTL -n "Right_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -0.70451188576205159 1 -0.77420899822158273 
		2 -0.86213484566092702 3 -0.96077436999519406 4 -1.0626125131394928 5 -1.1601342170089333 
		6 -1.2458244235186247 7 -1.3176716630355136 8 -1.3794294460657492 9 -1.4322301847332435 
		10 -1.4772062911619093 11 -1.5172836128817997 12 -1.542779417272047 13 -1.5359132462301839 
		14 -1.4799709563889931 15 -1.3916666924693761 16 -1.3033624285010408;
createNode animCurveTL -n "Right_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 3.5075975506406349 1 3.5677583983146759 
		2 3.5737738251881468 3 3.5395602900564485 4 3.4790342517149795 5 3.4061121689591367 
		6 3.3347105005843223 7 3.2368414353624173 8 3.0991340406415282 9 2.9574300930813826 
		10 2.8475713693417157 11 2.801760534212014 12 2.7913238582646493 13 2.7607885268336791 
		14 2.6849640227304845 15 2.5890408243639054 16 2.4931176104641928;
createNode animCurveTL -n "Right_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.14352018801568014 1 -0.0369404616696151 
		2 -0.1500960356657354 3 -0.21426933404155676 4 -0.24778315686595534 5 -0.26896030420780725 
		6 -0.29612357613598866 7 -0.32011617666224318 8 -0.31742287668436603 9 -0.28482882660031023 
		10 -0.21911917680802873 11 -0.068785652284944793 12 0.13851494726092858 13 
		0.28724985933575331 14 0.3193862662928813 15 0.29295698462040121 16 0.26652770302658058;
createNode animCurveTA -n "animCurveTA278";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 215.1165237024444 1 238.53760454833812 
		2 263.60062553214226 3 288.66364647208979 4 312.08472718641366 5 332.22192749334681 
		6 347.43330721112204 7 352.74858852471993 8 348.54746579832977 9 341.21295711899825 
		10 337.12808057377168 11 341.24416898995577 12 347.35485194250106 13 345.10659263992113 
		14 328.26189951298329 15 303.05826431851449 16 277.85462525411754;
createNode animCurveTA -n "animCurveTA279";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -0.12912337352062189 1 -6.6936976523029523 
		2 -14.332508496402717 3 -21.97131938225483 4 -28.535893786294224 5 -32.951995184955805 
		6 -34.145387054674501 7 -28.277426720134116 8 -15.792144444917396 9 -2.0393131138076508 
		10 7.631294388411809 11 9.107157232952007 12 6.4959692692907893 13 6.7782796300450272 
		14 13.2454372554513 15 22.606093454976794 16 31.966750915084354;
createNode animCurveTA -n "animCurveTA280";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 288.86453500575789 1 285.69351168454074 
		2 281.47037070078414 3 277.24722968874192 4 274.0762062826679 5 273.00941811681588 
		6 275.09898282543958 7 283.92415179326582 8 299.11015490147514 9 315.77807752900185 
		10 329.04900505478037 11 338.63446363132215 12 345.07202868588854 13 344.7218595095386 
		14 334.10809844523624 15 316.7066029303503 16 299.30510489754761;
createNode animCurveTL -n "Left_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.7472446510762667 1 0.72977765573196096 
		2 0.72880332574319395 3 0.74045582120863129 4 0.76086930222693794 5 0.78617792889677918 
		6 0.81251586131682052 7 0.85055022952923132 8 0.90424091413609775 9 0.95966120107595854 
		10 1.0028843762873529 11 1.0236577390200226 12 1.0310002152670232 13 1.0398925310818672 
		14 1.0558448750515448 15 1.0733470586271625 16 1.0908492421584071;
createNode animCurveTL -n "Left_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 3.5042326505662973 1 3.5701962888934657 
		2 3.5927212409397349 3 3.5792082582081561 4 3.5370580922017787 5 3.4736714944236526 
		6 3.3964492163768285 7 3.2574570627171791 8 3.0483976267568518 9 2.8361268429833166 
		10 2.6875006458840431 11 2.6674886160846989 12 2.7210041609506783 13 2.7348189550790316 
		14 2.6579566231338503 15 2.5413935233510081 16 2.4248304306852448;
createNode animCurveTL -n "Left_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.037009356285120053 1 -0.059312388007305421 
		2 -0.12064864280883196 3 -0.15159787791606219 4 -0.15675856312559869 5 -0.14072916823404413 
		6 -0.10810816303800111 7 -0.015978131004320009 8 0.1431010515808992 9 0.31131497569218003 
		10 0.43084923230404543 11 0.4594957662381966 12 0.43586106479951847 13 0.4233525326873101 
		14 0.446814694986574 15 0.48140302715632177 16 0.51599135945686603;
createNode animCurveTA -n "animCurveTA281";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -131.56221088726085 1 -107.25008252407818 
		2 -80.172259464942798 3 -53.094436102227952 4 -28.782306828306918 5 -10.001566035552925 
		6 0.48209188366075945 7 -8.2967513206107188 8 -34.834051528968125 9 -63.191309579768593 
		10 -77.430026311369346 11 -62.067715617822458 12 -31.050812524639937 13 -12.584199567368731 
		14 -20.252933418133882 15 -40.471957542918233 16 -60.690984668055449;
createNode animCurveTA -n "animCurveTA282";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -9.0316336426533397 1 2.6829139381268132 
		2 16.549026119366921 3 30.41513834126971 4 42.129686044037911 5 49.541104667874244 
		6 50.497829652981459 7 36.9993027949658 8 10.038937873561009 9 -19.043871694839005 
		10 -38.909732493840295 11 -42.454495925208256 12 -36.333212365320136 13 -29.845286859699947 
		14 -25.968307437879876 15 -21.724686193010843 16 -17.481064266044974;
createNode animCurveTA -n "animCurveTA283";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 65.726168363527535 1 68.421212298200913 
		2 71.685972480388003 3 74.950732677781588 4 77.645776658074396 5 79.201388188959186 
		6 79.047851038128726 7 76.190997404365788 8 70.51910400524433 9 62.78612138664387 
		10 53.7460000944439 11 39.205128176153906 12 21.893668639994456 13 12.9512344729117 
		14 18.880704467030892 15 33.179199788873255 16 47.477696986978877;
createNode animCurveTL -n "animCurveTL118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.61523531760745109 6 1.5646465210843199 
		10 0.70885369846337054 13 0.31350426811752941 16 0.70294853030600668;
createNode animCurveTL -n "animCurveTL119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.87006811234692638 6 -0.71274605723109807 
		10 -1.5412287014031916 13 -1.1638299892002528 16 -0.52614646448452962;
createNode animCurveTL -n "animCurveTL120";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.18230531820690549 6 -0.85726522519300163 
		10 -0.60383208150038292 13 -1.3855538349694569 16 -0.61180661950124648;
createNode animCurveTL -n "animCurveTL121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.54637709585077632 6 -1.8237499191481832 
		10 -0.55644711180530215 13 -1.350349769343177 16 -0.54637709585077632;
createNode animCurveTL -n "animCurveTL122";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.45018761341892499 6 -0.42440691669835839 
		10 -0.77899571473861229 13 -0.24541741503038936 16 -0.45018761341892499;
createNode animCurveTL -n "animCurveTL123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.047149139642709344 6 -0.8436577183651186 
		10 -0.6805686873559762 13 -1.1615410534013182 16 -0.047149139642709344;
createNode animCurveTA -n "animCurveTA284";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 12.253734489678925 6 12.253734489678925 
		10 12.253734489678925 13 12.253734489678925 16 12.253734489678925;
createNode animCurveTA -n "animCurveTA285";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -65.746751280844961 6 -65.746751280844961 
		10 -65.746751280844961 13 -65.746751280844961 16 -65.746751280844961;
createNode animCurveTA -n "animCurveTA286";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 10 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA287";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.061808866237337522 6 -0.061808866237337522 
		10 -0.061808866237337522 13 -0.061808866237337522 16 -0.061808866237337522;
createNode animCurveTA -n "animCurveTA288";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -59.058178941076754 6 -59.058178941076754 
		10 -59.058178941076754 13 -59.058178941076754 16 -59.058178941076754;
createNode animCurveTA -n "animCurveTA289";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 16.579147429757843 6 16.579147429757843 
		10 16.579147429757843 13 16.579147429757843 16 16.579147429757843;
createNode animCurveTA -n "animCurveTA290";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.5572674112203622 6 8.5572674112203622 
		10 8.5572674112203622 13 8.5572674112203622 16 8.5572674112203622;
createNode animCurveTA -n "animCurveTA291";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 15.711328223519057 6 15.711328223519057 
		10 15.711328223519057 13 15.711328223519057 16 15.711328223519057;
createNode animCurveTA -n "animCurveTA292";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 10 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA293";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 10 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA294";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 10 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA295";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 10 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA296";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 10 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA297";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 10 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA298";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 10.423754966968488 6 10.423754966968488 
		10 10.423754966968488 13 10.423754966968488 16 10.423754966968488;
createNode animCurveTA -n "animCurveTA299";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.722848255843903 6 27.722848255843903 
		10 27.722848255843903 13 27.722848255843903 16 27.722848255843903;
createNode animCurveTA -n "animCurveTA300";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 21.576484776388227 6 21.576484776388227 
		10 21.576484776388227 13 21.576484776388227 16 21.576484776388227;
createNode animCurveTA -n "animCurveTA301";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 10 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA302";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 10 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA303";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.080064458283051 6 27.080064458283051 
		10 27.080064458283051 13 27.080064458283051 16 27.080064458283051;
createNode animCurveTA -n "animCurveTA304";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA305";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA306";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA307";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA308";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA309";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 13.994403295754109;
createNode animCurveTA -n "animCurveTA310";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA311";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA312";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 13.994403295754109;
createNode animCurveTA -n "animCurveTA313";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 10 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA314";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 10 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA315";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.911632519594587 6 27.911632519594587 
		10 27.911632519594587 13 27.911632519594587 16 27.911632519594587;
createNode animCurveTA -n "animCurveTA316";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 10 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA317";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 10 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA318";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 10 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA319";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 3.517811633853035 6 -8.104817758586405 
		10 -2.8141323103378069 13 -0.76031788987871074 16 -0.90073390259675012;
createNode animCurveTA -n "animCurveTA320";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.5570933253336032 6 3.6133133819609018 
		10 4.5898093244555991 13 -1.1827519209040243 16 -1.1085182498156918;
createNode animCurveTA -n "animCurveTA321";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -3.8795671182630436 6 -8.0467849340390778 
		10 -0.42770132386475629 13 7.2563608882875226 16 14.5113813073859;
	setAttr -s 5 ".kit[3:4]"  9 9;
	setAttr -s 5 ".kot[3:4]"  9 9;
	setAttr -s 5 ".kix[0:4]"  0.72034615278244019 0.98527806997299194 
		0.59058696031570435 0.60862749814987183 0.61977279186248779;
	setAttr -s 5 ".kiy[0:4]"  -0.69361478090286255 0.17095948755741119 
		0.80697399377822876 0.79345607757568359 0.78478127717971802;
	setAttr -s 5 ".kox[0:4]"  0.72034609317779541 0.98527806997299194 
		0.59058696031570435 0.60862749814987183 0.61977279186248779;
	setAttr -s 5 ".koy[0:4]"  -0.69361484050750732 0.17095951735973358 
		0.80697399377822876 0.79345607757568359 0.78478127717971802;
createNode animCurveTA -n "animCurveTA322";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 17.954716557186721 6 17.954716557186721 
		10 17.954716557186721 13 17.954716557186721 16 17.954716557186721;
createNode animCurveTA -n "animCurveTA323";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -3.2201052527817797 6 -3.2201052527817797 
		10 -3.2201052527817797 13 -3.2201052527817797 16 -3.2201052527817797;
createNode animCurveTA -n "animCurveTA324";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 3.8602612853971876 6 3.8602612853971876 
		10 3.8602612853971876 13 3.8602612853971876 16 3.8602612853971876;
createNode animCurveTA -n "animCurveTA325";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.2647416180321525 6 7.5419947976922019 
		10 5.3481400786632607 13 9.6775523577937737 16 15.601099705580166;
createNode animCurveTA -n "animCurveTA326";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 22.500375737914133 6 14.004455871956059 
		10 12.894854828258925 13 11.166055392366626 16 16.590745593759628;
createNode animCurveTA -n "animCurveTA327";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -13.248845798807032 6 2.0555028282776209 
		10 12.988511898963555 13 22.245803568216271 16 25.327067795449906;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0.923350989818573 0.58851182460784912 
		0.55209052562713623 0.68051248788833618 0.88072073459625244;
	setAttr -s 5 ".kiy[0:4]"  -0.38395696878433228 0.80848860740661621 
		0.83378422260284424 0.73273646831512451 0.47363594174385071;
	setAttr -s 5 ".kox[0:4]"  0.92335116863250732 0.58851182460784912 
		0.55209052562713623 0.68051248788833618 0.88072073459625244;
	setAttr -s 5 ".koy[0:4]"  -0.38395661115646362 0.80848860740661621 
		0.83378422260284424 0.73273646831512451 0.47363594174385071;
createNode animCurveTA -n "animCurveTA328";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.3560095647730765 6 3.2496807738085698 
		10 3.5413366073599297 13 3.2496807738085698 16 2.3560095647730765;
createNode animCurveTA -n "animCurveTA329";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 3.2127302554539172 6 2.3047494432413189 
		10 1.8247668224603051 13 2.3047494432413189 16 3.2127302554539172;
createNode animCurveTA -n "animCurveTA330";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -6.9673245889253659 6 11.440162439863288 
		10 19.521707261379131 13 11.440162439863288 16 -6.9673245889253659;
createNode animCurveTA -n "animCurveTA331";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 10 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA332";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 10 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA333";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 33.429092416277157 6 33.429092416277157 
		10 33.429092416277157 13 33.429092416277157 16 33.429092416277157;
createNode animCurveTA -n "animCurveTA334";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.2533422302317216 6 8.2533422302317216 
		10 8.2533422302317216 13 8.2533422302317216 16 8.2533422302317216;
createNode animCurveTA -n "animCurveTA335";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 23.263402056531085 6 23.263402056531085 
		10 23.263402056531085 13 23.263402056531085 16 23.263402056531085;
createNode animCurveTA -n "animCurveTA336";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 20.166277752815617 6 20.166277752815617 
		10 20.166277752815617 13 20.166277752815617 16 20.166277752815617;
createNode animCurveTA -n "animCurveTA337";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 10 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA338";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 10 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA339";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 17.254116939558369 6 17.254116939558369 
		10 17.254116939558369 13 17.254116939558369 16 17.254116939558369;
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
	setAttr ".o" 16;
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
connectAttr "hom_jump_idle_in_airSource.st" "clipLibrary1.st[0]";
connectAttr "hom_jump_idle_in_airSource.du" "clipLibrary1.du[0]";
connectAttr "hom_Extra_Attributes_translateX.a" "clipLibrary1.cel[0].cev[0].cevr"
		;
connectAttr "hom_Extra_Attributes_translateY.a" "clipLibrary1.cel[0].cev[1].cevr"
		;
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU17.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU18.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU19.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU20.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU21.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU22.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU23.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU24.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA228.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA229.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA230.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL88.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL89.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL90.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "Right_Foot_Hoop_translateX.a" "clipLibrary1.cel[0].cev[20].cevr"
		;
connectAttr "Right_Foot_Hoop_translateY.a" "clipLibrary1.cel[0].cev[21].cevr"
		;
connectAttr "Right_Foot_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[22].cevr"
		;
connectAttr "animCurveTA231.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA232.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA233.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "Left_Foot_Hoop_translateX.a" "clipLibrary1.cel[0].cev[26].cevr"
		;
connectAttr "Left_Foot_Hoop_translateY.a" "clipLibrary1.cel[0].cev[27].cevr"
		;
connectAttr "Left_Foot_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[28].cevr"
		;
connectAttr "animCurveTA234.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA235.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA236.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA237.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA238.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA239.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA240.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA241.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA242.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTL97.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTL98.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTL99.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTL100.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTL101.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTL102.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "Character_Hoop_translateX.a" "clipLibrary1.cel[0].cev[44].cevr"
		;
connectAttr "Character_Hoop_translateY.a" "clipLibrary1.cel[0].cev[45].cevr"
		;
connectAttr "Character_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[46].cevr"
		;
connectAttr "animCurveTA243.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTA244.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTA245.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTA246.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTA247.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTA248.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA249.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA250.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA251.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA252.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA253.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA254.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA255.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA256.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA257.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA258.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA259.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA260.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA261.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA262.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA263.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA264.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA265.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA266.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA267.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA268.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA269.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA270.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA271.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTL106.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTL107.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTL108.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA272.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA273.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA274.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL109.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL110.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL111.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA275.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA276.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA277.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "Right_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[88].cevr"
		;
connectAttr "Right_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[89].cevr"
		;
connectAttr "Right_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[90].cevr"
		;
connectAttr "animCurveTA278.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA279.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA280.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "Left_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[94].cevr"
		;
connectAttr "Left_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[95].cevr"
		;
connectAttr "Left_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[96].cevr"
		;
connectAttr "animCurveTA281.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA282.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA283.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL118.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL119.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL120.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTL121.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTL122.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTL123.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTA284.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTA285.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTA286.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTA287.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTA288.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTA289.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA290.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA291.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA292.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA293.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA294.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA295.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA296.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA297.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA298.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA299.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA300.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA301.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA302.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA303.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA304.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA305.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA306.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA307.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA308.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA309.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA310.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA311.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA312.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA313.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA314.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA315.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA316.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA317.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA318.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA319.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA320.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA321.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA322.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA323.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA324.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA325.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA326.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA327.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA328.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA329.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA330.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA331.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA332.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA333.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA334.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA335.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA336.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA337.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA338.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA339.a" "clipLibrary1.cel[0].cev[161].cevr";
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
// End of hom_jump_idle_in_air.ma
