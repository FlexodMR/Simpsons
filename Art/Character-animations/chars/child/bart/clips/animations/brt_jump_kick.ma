//Maya ASCII 4.0 scene
//Name: brt_jump_kick.ma
//Last modified: Thu, Jan 30, 2003 11:44:10 AM
requires maya "4.0";
requires "p3dDeformer" "18.3";
requires "p3dmayaexp" "18.5";
requires "p3dSimpleShader" "18.5";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "brt_jump_kickSource";
	setAttr ".ihi" 0;
	setAttr ".du" 13;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL42";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL43";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL44";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.012346964984057468;
createNode animCurveTL -n "animCurveTL45";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL46";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.011006172978493224;
createNode animCurveTA -n "animCurveTA120";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU15";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA122";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL47";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL48";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL49";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL50";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.21781475934341438 1 -0.19267350099177946 
		2 -0.16505824575187689 3 -0.14239098746170162 4 -0.13209371995924851 5 -0.13345598006701806 
		6 -0.13989606739856422 7 -0.15002911997846244 8 -0.16247027583128806 9 -0.17583467298161645 
		10 -0.18873744945402307 11 -0.19979374327308327 12 -0.19979374327308327 13 
		-0.19979374327308327;
createNode animCurveTL -n "animCurveTL51";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.39188312614727422 1 0.34516386003160798 
		2 0.32423454215187747 3 0.30912074840633053 4 0.27984805469321333 5 0.23308769492991868 
		6 0.17752826166990437 7 0.11122136876551121 8 0.032218630069084278 9 -0.0614283405670372 
		10 -0.17166792929050809 11 -0.30044852224898738 12 -0.067960443965280504 
		13 0.13264132823488928;
createNode animCurveTL -n "animCurveTL52";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.085973028533894436 1 -0.096691415522724422 
		2 -0.10839656706642434 3 -0.11812818762307942 4 -0.12292598165077485 5 -0.12307332061382864 
		6 -0.12119534528878431 7 -0.11784441410206546 8 -0.11357288548009567 9 -0.10893311784929852 
		10 -0.10447746963609759 11 -0.10075829926691648 12 -0.10075829926691648 13 
		-0.10075829926691648;
createNode animCurveTA -n "animCurveTA124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 61.815895473092404 1 55.929884383244655 
		2 49.840798006771344 3 43.624789584159856 4 37.358012355897507 5 31.116619562471605 
		6 24.976764444369461 7 19.01460024207838 8 13.306280196085678 9 7.9279575468786811 
		10 2.9557855349447002 11 -1.5340825992289608 12 -3.9097067264901808 13 -3.6457484901278208;
createNode animCurveTA -n "animCurveTA125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.81761384796513126 1 0.05324600611345584 
		2 -0.7111218105113426 3 -1.4754896075152413 4 -2.2398573905042101 5 -3.0042251650842182 
		6 -3.7685929368612445 7 -4.5329607114412562 8 -5.2973284944302206 9 -6.0616962914341199 
		10 -6.8260641080589233 11 -7.5904319499105881 12 -7.5904319499105979 13 -7.5904319499105917;
createNode animCurveTA -n "animCurveTA126";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 11.892155744783048 1 10.811050641013329 
		2 9.7299455588809121 3 8.6488404935775041 4 7.5677354402948271 5 6.4866303942245773 
		6 5.4055253505584746 7 4.3244203044882257 8 3.2433152512055439 9 2.1622101859021368 
		10 1.0811051037697195 11 -2.5067736672634844e-017 12 -5.0135473345269712e-017 
		13 -5.01354733452697e-017;
createNode animCurveTL -n "animCurveTL53";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.19897468481156591 1 0.43344529002503879 
		2 0.69103662429815627 3 0.90238646162318281 4 0.99813257599238359 5 0.93754547299007229 
		6 0.76502930612024711 7 0.5389223212546983 8 0.31756276426521679 9 0.015272864067943885 
		10 -0.19910596337856348 11 -0.12413350483646766 12 0.055113063698537385 13 
		0.19897468481156591;
createNode animCurveTL -n "animCurveTL54";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.19020387109596079 1 0.1530408118443872 
		2 0.53584351431393129 3 0.89692552442352647 4 1.1750081302840307 5 1.35532190126577 
		6 1.4615219466832441 7 1.4899663645635617 8 1.4370132529338366 9 1.2687083629261497 
		10 0.99298336875987514 11 0.66902525309305172 12 0.35602099858372221 13 0.11315758788992783;
createNode animCurveTL -n "animCurveTL55";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.1007581867042607 1 -0.013035918839611985 
		2 0.073628838704036567 3 0.16240859433599542 4 0.25647585646557508 5 0.38530586073298062 
		6 0.53766352943330142 7 0.65565590095817416 8 0.68139001369923535 9 0.59252096528114184 
		10 0.43112814505317382 11 0.23595502899390275 12 0.045745093081900591 13 
		-0.1007581867042607;
createNode animCurveTA -n "animCurveTA127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 44.31362578475084 1 25.828187361193422 
		2 5.2358898986717515 3 -16.199151484323174 4 -37.21282166930034 5 -56.541005537768733 
		6 -72.919587971237405 7 -85.084453851215329 8 -91.771488059211507 9 -86.706485019522489 
		10 -68.734886722735169 11 -44.272049399794113 12 -19.733329281643865 13 -1.5340825992289544;
createNode animCurveTA -n "animCurveTA128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -10.069845463045164 1 -8.5942260323847854 
		2 -7.0834184101079458 3 -5.5585354787369132 4 -4.0406901207939478 5 -2.5509952188013334 
		6 -1.1105636552813245 7 0.25949168724380411 8 1.5380579262517753 9 2.6736883271518272 
		10 3.6470998244905677 11 4.4854250394517949 12 5.2157965932193262 13 5.8653471069769614;
createNode animCurveTA -n "animCurveTA129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -16.74142672730401 1 -9.884873738209631 
		2 -2.2439896126879395 3 5.7106269734939179 4 13.508377344568801 5 20.678662824769596 
		6 26.75088473832913 7 31.254444409480282 8 33.718743162455951 9 31.806901315354711 
		10 25.089105412295392 11 15.955356116541097 12 6.7956540913549324 13 -1.2489426308625251e-017;
createNode animCurveTA -n "animCurveTA130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA137";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL56";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 4 -0.52356691216394102;
createNode animCurveTL -n "animCurveTL57";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 4 -0.14989048923108939;
createNode animCurveTL -n "animCurveTL58";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 4 0.56450320321165504;
createNode animCurveTL -n "animCurveTL59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL60";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "animCurveTL62";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.028495691328967589 1 -0.02716365362872011 
		2 -0.025731383379659949 3 -0.02421470677316255 4 -0.022629450000603332 5 
		-0.020991439253357735 6 -0.019316500722801184 7 -0.017620460600309112 8 -0.015919145077256957 
		9 -0.01422838034502014 10 -0.012563992594974099 11 -0.010941808018494261 
		12 -0.0093776528069560629 13 -0.0078873531517349299;
createNode animCurveTL -n "animCurveTL63";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.96918941900356215 1 0.96918941900356292 
		2 0.96918941900356292 3 0.96918941900356259 4 0.96918941900356215 5 0.96918941900356259 
		6 0.96918941900356259 7 0.96918941900356259 8 0.96918941900356292 9 0.96918941900356259 
		10 0.96918941900356292 11 0.96918941900356259 12 0.9691894190035627 13 0.96918941900356292;
createNode animCurveTL -n "animCurveTL64";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.025401263250792984 1 -0.028816033579617581 
		2 -0.032487756964257 3 -0.036375861872053848 4 -0.040439776770350752 5 -0.044638930126490325 
		6 -0.048932750407815181 7 -0.053280666081667948 8 -0.057642105615391251 9 
		-0.061976497476327677 10 -0.066243270131819867 11 -0.070401852049210442 12 
		-0.074411671695842035 13 -0.078232157539057212;
createNode animCurveTA -n "animCurveTA142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -2.487748405724366 1 -2.2639314106951542 
		2 -2.0401144078932729 3 -1.7690845727338911 4 -1.5204863438797878 5 -1.3670392826710527 
		6 -1.2661432485388235 7 -1.175198100914234 8 -1.0516036992284206 9 -0.85275990291251824 
		10 -0.53606657139766323 11 -0.058923564114991216 12 0.62126925950436285 13 
		1.5471120400292626;
createNode animCurveTA -n "animCurveTA143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0.25333533245909334 2 0.50667065630030117 
		3 0.62182307466123488 4 0.61683688584269458 5 0.60260358321522478 6 0.58021106252105326 
		7 0.5507472195024059 8 0.51529994990151007 9 0.47495714946059331 10 0.4308067139218818 
		11 0.38393653902760316 12 0.33543452051998379 13 0.28638855414125097;
createNode animCurveTA -n "animCurveTA144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 1 7.8875027146765628 2 15.775005323778366 
		3 19.360233763265605 4 19.204990599979471 5 18.761841933871761 6 18.064659000568579 
		7 17.147313035695948 8 16.043675274879966 9 14.787616953746676 10 13.413009307922167 
		11 11.953723573032486 12 10.443630984703702 13 8.9166027785618933;
createNode animCurveTA -n "animCurveTA145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -32.384275978337953;
createNode animCurveTA -n "animCurveTA146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.70864834584946501;
createNode animCurveTA -n "animCurveTA147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.8828303308528316;
createNode animCurveTA -n "animCurveTA148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 8.3905148505663032;
createNode animCurveTA -n "animCurveTA149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -3.9270382826366852;
createNode animCurveTA -n "animCurveTA150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.0002313879170239069;
createNode animCurveTA -n "animCurveTA151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -12.067569721914007;
createNode animCurveTA -n "animCurveTA152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.5044939868890123e-005;
createNode animCurveTA -n "animCurveTA155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -32.384043432290923;
createNode animCurveTA -n "animCurveTA156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.7086489030849682;
createNode animCurveTA -n "animCurveTA157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.8828306846003731;
createNode animCurveTA -n "animCurveTA158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 8.3905148506080582;
createNode animCurveTA -n "animCurveTA159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -3.927081978016147;
createNode animCurveTA -n "animCurveTA160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.838851329449858e-007;
createNode animCurveTA -n "animCurveTA161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -12.067569722157153;
createNode animCurveTA -n "animCurveTA162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.5071230941373042e-005;
createNode animCurveTA -n "animCurveTA165";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.5044939868890123e-005;
createNode animCurveTA -n "animCurveTA168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA169";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.5071230941373042e-005;
createNode animCurveTL -n "animCurveTL65";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.99999847794082519;
createNode animCurveTL -n "animCurveTL66";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -4.2764297558738764e-016;
createNode animCurveTL -n "animCurveTL67";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.012139325813195843;
createNode animCurveTA -n "animCurveTA171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 9.5416640443905503e-015;
createNode animCurveTA -n "animCurveTA172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.6281747985426208e-014;
createNode animCurveTA -n "animCurveTA173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.5280123116775972e-015;
createNode animCurveTL -n "animCurveTL68";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99999945546674651;
createNode animCurveTL -n "animCurveTL69";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -4.2500828984594127e-016;
createNode animCurveTL -n "animCurveTL70";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.012139321127644518;
createNode animCurveTA -n "animCurveTA174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 9.5416640443905503e-015;
createNode animCurveTA -n "animCurveTA175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.6281747985426208e-014;
createNode animCurveTA -n "animCurveTA176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.5280123116775972e-015;
createNode animCurveTL -n "animCurveTL71";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.4592482512335383;
createNode animCurveTL -n "animCurveTL72";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.156877751797786;
createNode animCurveTL -n "animCurveTL73";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.001744739531608719;
createNode animCurveTA -n "animCurveTA177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL74";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.4592480700724053;
createNode animCurveTL -n "animCurveTL75";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.1568771257434891;
createNode animCurveTL -n "animCurveTL76";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.0017447383560332686;
createNode animCurveTA -n "animCurveTA180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL77";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL78";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL79";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1;
createNode animCurveTL -n "animCurveTL80";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL81";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL82";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1;
createNode animCurveTA -n "animCurveTA183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 16.731429386214135 4 -23.094974436907144 
		14 9.606834214221152 15 10.059739444428828 17 10.740206323469121;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -25.731657648284862 4 41.625127327848901 
		14 54.574621900341768 15 17.318480441785812 17 -70.361731369658798 20 -64.12055870932069;
	setAttr -s 6 ".kit[4:5]"  3 3;
	setAttr -s 6 ".kot[4:5]"  3 3;
createNode animCurveTA -n "animCurveTA185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.7613930366230486 4 58.94812371060214 
		14 17.387967245661585 15 12.353865677018696 17 0.3261477231134815;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA186";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 -59.971206707319745 14 0 
		15 0;
	setAttr -s 4 ".kit[2:3]"  3 9;
	setAttr -s 4 ".kot[2:3]"  3 9;
createNode animCurveTA -n "animCurveTA187";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -29.294807596153543 4 30.453374077694217 
		14 58.997499814500493 15 19.257833261004112 17 -74.994837611668757 20 -65.311834426001226;
	setAttr -s 6 ".kit[4:5]"  3 3;
	setAttr -s 6 ".kot[4:5]"  3 3;
createNode animCurveTA -n "animCurveTA188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.0597808782407443 14 -1.0597808782407443 
		15 -1.0597808782407443;
	setAttr -s 3 ".kit[1:2]"  3 9;
	setAttr -s 3 ".kot[1:2]"  3 9;
createNode animCurveTA -n "animCurveTA189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.248227116322052 4 40.566110526360482 
		15 1.248227116322052;
createNode animCurveTA -n "animCurveTA190";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.2482271173120236 4 37.012963294955561 
		15 1.2482271173120236;
createNode animCurveTA -n "animCurveTA191";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.75141680280634504 15 -0.50790658794091392 
		16 -0.50908690955229685 19 -0.40247875134847838 22 -0.36709733573844139;
	setAttr -s 5 ".kit[3:4]"  3 3;
	setAttr -s 5 ".kot[3:4]"  3 3;
createNode animCurveTA -n "animCurveTA192";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -51.548523540692663 15 50.134751933900823 
		16 43.853930675444552 19 -25.744269138944972 22 -9.0486275539282897;
	setAttr -s 5 ".kit[3:4]"  3 3;
	setAttr -s 5 ".kot[3:4]"  3 3;
createNode animCurveTA -n "animCurveTA193";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 4.2480741217708982 15 3.2284146598656092 
		16 3.2837715622228258 19 3.8096828381286532 22 3.6925969293824865;
	setAttr -s 5 ".kit[3:4]"  3 3;
	setAttr -s 5 ".kot[3:4]"  3 3;
createNode animCurveTA -n "animCurveTA194";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.57241191138432757 15 -0.54925360302453508 
		16 -0.54917808077234109 19 -0.50935549755524523 22 -0.36709733573838266;
	setAttr -s 5 ".kit[3:4]"  3 3;
	setAttr -s 5 ".kot[3:4]"  3 3;
createNode animCurveTA -n "animCurveTA195";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -46.399658386353131 15 56.475385100283894 
		16 48.577103756933795 19 -44.622935880523521 22 -9.0486275539282826;
	setAttr -s 5 ".kit[3:4]"  3 3;
	setAttr -s 5 ".kot[3:4]"  3 3;
createNode animCurveTA -n "animCurveTA196";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 4.0433304815855253 15 3.1565940009934996 
		16 3.2238122385570027 19 3.992657224839208 22 3.692596928848892;
	setAttr -s 5 ".kit[3:4]"  3 3;
	setAttr -s 5 ".kot[3:4]"  3 3;
createNode animCurveTA -n "animCurveTA197";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 44.329806040211842;
createNode animCurveTA -n "animCurveTA198";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.7279029152413283;
createNode animCurveTA -n "animCurveTA199";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 12.811735915032374;
createNode animCurveTA -n "animCurveTA200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -11.117540570592482;
createNode animCurveTA -n "animCurveTA201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.91177011360845972;
createNode animCurveTA -n "animCurveTA202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 12.970331010713402;
createNode animCurveTA -n "animCurveTA203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 8.3848495590963843;
createNode animCurveTA -n "animCurveTA209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 8.3848495590963843;
createNode animCurveTA -n "animCurveTA212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.4931336274179972;
createNode animCurveTA -n "animCurveTA215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.075758775194190942;
createNode animCurveTA -n "animCurveTA219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.3343512509319313;
createNode animCurveTA -n "animCurveTA220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -8.6188967922406352;
createNode animCurveTA -n "animCurveTA221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 24 0;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 24 0;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -8.3336649453113179 14 -20.926861927662031 
		15 -18.276852656831711 19 3.5716592424569042 24 0;
	setAttr -s 5 ".kit[1:4]"  1 9 1 3;
	setAttr -s 5 ".kot[1:4]"  1 9 1 3;
	setAttr -s 5 ".kix[1:4]"  0.99891942739486694 0.36317601799964905 
		0.98919218778610229 1;
	setAttr -s 5 ".kiy[1:4]"  0.04647492989897728 0.9317205548286438 
		-0.14662487804889679 0;
	setAttr -s 5 ".kox[1:4]"  0.99891942739486694 0.36317601799964905 
		0.98919218778610229 1;
	setAttr -s 5 ".koy[1:4]"  0.046474970877170563 0.9317205548286438 
		-0.1466248482465744 0;
createNode animCurveTA -n "animCurveTA224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA227";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.075758775194190942;
createNode animCurveTA -n "animCurveTA228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.3343512509319313;
createNode animCurveTA -n "animCurveTA229";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -8.6186721328538134;
createNode animCurveTA -n "animCurveTA230";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -11.117540570592482;
createNode animCurveTA -n "animCurveTA231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.91177011360845972;
createNode animCurveTA -n "animCurveTA232";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 12.970331010713402;
createNode animCurveTA -n "animCurveTA233";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 44.329806040211842;
createNode animCurveTA -n "animCurveTA234";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.7279029152413283;
createNode animCurveTA -n "animCurveTA235";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 12.811735915032374;
createNode animCurveTA -n "animCurveTA236";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA237";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA238";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.4931336274179972;
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
connectAttr "brt_jump_kickSource.st" "clipLibrary1.st[0]";
connectAttr "brt_jump_kickSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL42.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL43.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL44.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL45.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL46.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA120.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU9.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU10.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU11.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU12.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU13.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU14.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU15.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU16.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA121.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA122.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA123.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL47.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL48.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL49.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL50.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL51.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL52.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA124.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA125.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA126.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL53.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL54.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL55.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA127.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA128.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA129.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA130.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA131.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA132.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA133.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA134.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA135.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA136.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA137.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA138.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA139.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA140.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA141.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL56.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL57.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL58.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL59.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL60.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL61.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL62.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL63.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL64.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA142.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA143.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA144.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA145.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA146.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA147.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA148.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA149.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA150.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA151.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA152.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA153.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA154.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA155.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA156.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA157.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA158.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA159.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA160.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA161.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA162.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA163.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA164.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA165.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA166.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA167.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA168.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA169.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA170.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL65.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL66.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL67.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA171.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA172.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA173.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL68.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL69.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL70.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA174.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA175.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA176.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL71.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL72.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL73.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA177.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA178.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA179.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL74.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL75.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL76.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA180.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA181.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA182.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL77.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL78.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL79.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL80.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL81.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL82.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA183.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA184.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA185.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA186.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA187.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA188.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA189.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA190.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA191.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA192.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA193.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA194.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA195.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA196.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA197.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA198.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA199.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA200.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA201.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA202.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA203.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA204.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA205.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA206.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA207.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA208.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA209.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA210.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA211.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA212.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA213.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA214.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA215.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA216.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA217.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA218.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA219.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA220.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA221.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA222.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA223.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA224.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA225.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA226.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA227.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA228.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA229.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA230.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA231.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA232.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA233.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA234.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA235.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA236.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA237.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA238.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of brt_jump_kick.ma
