//Maya ASCII 4.0 scene
//Name: lsa_get_out_of_car.ma
//Last modified: Fri, Oct 11, 2002 02:56:47 PM
requires maya "4.0";
requires "p3dmayaexp" "18.6";
requires "p3dSimpleShader" "18.6";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "lsa_get_out_of_carSource";
	setAttr ".ihi" 0;
	setAttr ".du" 25;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL616";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTL -n "animCurveTL617";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTL -n "animCurveTL618";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0.97885515190251315 1 0.89562855634138627 
		2 0.72982986366576841 3 0.55895523628230726 4 0.46050083659765079 5 0.43742787302296682 
		6 0.42751027070775244 7 0.41046190778603153 8 0.37971796201145863 9 0.34405453921341872 
		10 0.30619690963953167 11 0.26887034353741729 12 0.23253785058575613 13 0.19553449556368749 
		14 0.15739363136951928 15 0.11483032567103027 16 0.071129507683221987 17 
		0.03567932262523682 18 0.010715641670654918 19 -0.0089995137255264833 20 
		-0.025288772922039255 21 -0.039974765277615266 22 -0.05211713788500117 23 
		-0.061219284357818274 24 -0.069769453836110426 25 -0.080255895459921484;
createNode animCurveTL -n "animCurveTL619";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0;
createNode animCurveTL -n "animCurveTL620";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0.79517940809274079 1 0.77271817938508092 
		2 0.7368605252182765 3 0.70147257283170605 4 0.68042044946474778 5 0.69102594760251124 
		6 0.71890040043901737 7 0.73034424627701156 8 0.71544954334958877 9 0.6897999910280469 
		10 0.65793348932243567 11 0.62438793824280514 12 0.58507710545376701 13 0.54009217071238913 
		14 0.50023715216740483 15 0.46849184645702779 16 0.44187645448753449 17 0.42225560080975366 
		18 0.40967852555380452 19 0.40167438117741699 20 0.39632766072283476 21 0.39172285723230199 
		22 0.38569859162759679 23 0.37982666030414897 24 0.37779131951467959 25 0.38327682551190984;
createNode animCurveTA -n "animCurveTA1780";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 1 -5.8072379690578844 2 -14.966547385237735 
		3 -26.462254520180029 4 -39.278685645525258 5 -52.400167032913849 6 -64.811024953986333 
		7 -75.495585680383172 8 -83.438175483744871 9 -88.492992253044889 10 -91.520049699377054 
		11 -93.012397827562467 12 -93.463086642422141 13 -93.365166148777107 14 -93.211686351448378 
		15 -93.495697255257014 16 -93.917056323256347 17 -93.923790356894955 18 -93.631203368586668 
		19 -93.154599370745387 20 -92.609282375784986 21 -92.110556396119307 22 -92.183401760243413 
		23 -92.493071755785124 24 -91.865279833857286 25 -89.125739445572833;
createNode animCurveTU -n "animCurveTU9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTU -n "animCurveTU10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTU -n "animCurveTU11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTU -n "animCurveTU12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTU -n "animCurveTU13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTU -n "animCurveTU14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTU -n "animCurveTU15";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 1;
createNode animCurveTU -n "animCurveTU16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 1;
createNode animCurveTA -n "animCurveTA1781";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1782";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1783";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTL -n "animCurveTL621";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTL -n "animCurveTL622";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTL -n "animCurveTL623";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTL -n "animCurveTL624";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.0407430139147178 4 0.94689725374252132 
		7 0.94689725374252132 11 0.94689725374252132 14 0.70050947095039451 17 0.18912470714979496 
		21 -0.12723102470459602 25 -0.12723102470459602;
createNode animCurveTL -n "animCurveTL625";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.99995529262164395 4 0.87393082863301275 
		7 0.87393082863301275 11 0.87393082863301275 14 0.87393082863301275 17 0.2677051103509322 
		21 0.14229740369520921 25 0.14229740369520921;
	setAttr -s 8 ".kit[6:7]"  3 9;
	setAttr -s 8 ".kot[6:7]"  3 9;
createNode animCurveTL -n "animCurveTL626";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.4400670660903248 4 1.4008413676828351 
		7 1.4008413676828351 11 1.4008413676828351 14 1.1758031377859479 17 0.81488226883701087 
		21 0.72810231057739006 25 0.72810231057739006;
createNode animCurveTA -n "animCurveTA1784";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -28.33147073208438 4 -16.960193642026439 
		7 182.28664988247439 11 180.39459422077783 14 230.79737028052352 17 250.79806961248113 
		21 177.16347266714416 25 174.08624265487845;
createNode animCurveTA -n "animCurveTA1785";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -10.113681911874204 4 -74.92658449590833 
		7 -86.866181279295517 11 -71.535483966591897 14 -71.53548396659194 17 -64.253519059541702 
		21 -62.900395087675044 25 -77.361573251038095;
createNode animCurveTA -n "animCurveTA1786";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 3.6896128937020114 4 32.768537079786768 
		7 -174.8203434432703 11 -172.91139054662753 14 -172.91139054662756 17 -194.32374451309536 
		21 -175.9767866827282 25 -172.73088895567136;
createNode animCurveTL -n "animCurveTL627";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.4790535543793637 4 1.3285178253405563 
		7 1.3285178253405563 11 0.61915846937113006 14 0.044494792875415738 17 -0.16956905984264883 
		21 -0.16956905984264883 25 -0.16956905984264883;
createNode animCurveTL -n "animCurveTL628";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.9833319268331725 4 0.88812050520532582 
		7 0.88812050520532582 11 0.99724782237337128 14 0.66577455587194778 17 0.1461258867172662 
		21 0.1461258867172662 25 0.14204015966021652;
	setAttr -s 8 ".kit[5:7]"  1 9 9;
	setAttr -s 8 ".kot[5:7]"  1 9 9;
	setAttr -s 8 ".kix[5:7]"  0.14599704742431641 0.54656428098678589 
		0.31023740768432617;
	setAttr -s 8 ".kiy[5:7]"  -0.98928505182266235 -0.83741718530654907 
		-0.95065909624099731;
	setAttr -s 8 ".kox[5:7]"  0.14599688351154327 0.54656428098678589 
		0.31023740768432617;
	setAttr -s 8 ".koy[5:7]"  -0.98928505182266235 -0.83741718530654907 
		-0.95065909624099731;
createNode animCurveTL -n "animCurveTL629";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.4327597250722541 4 2.0547095591887636 
		7 2.0547095591887636 11 1.5898213882858157 14 1.1698190867505571 17 1.097427438237216 
		21 1.097427438237216 25 1.097427438237216;
createNode animCurveTA -n "animCurveTA1787";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -27.647037481197401 4 -63.813136993340976 
		7 -63.813136993340976 11 -132.08424864088158 14 -132.08424864088158 17 -180.00903817791644 
		21 -172.22445507695573 25 -375.98082634113621;
createNode animCurveTA -n "animCurveTA1788";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.6471102606573034 4 -61.971177657132849 
		7 -61.971177657132849 11 -70.520460291894921 14 -70.520460291894921 17 -70.52046029189485 
		21 -101.54505907997235 25 -91.029007103502906;
createNode animCurveTA -n "animCurveTA1789";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 7.7922141916432519 4 74.294373877892141 
		7 74.294373877892141 11 172.53814334752133 14 172.53814334752133 17 172.53814334752136 
		21 172.51486781013736 25 371.277986539952;
createNode animCurveTA -n "animCurveTA1790";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1791";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1792";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1793";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1794";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1795";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1796";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1797";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1798";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1799";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1800";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1801";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTL -n "animCurveTL630";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTL -n "animCurveTL631";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTL -n "animCurveTL632";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 4 1 7 1 11 1 14 1 17 1 21 1 
		25 1;
createNode animCurveTL -n "animCurveTL633";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTL -n "animCurveTL634";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTL -n "animCurveTL635";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 4 1 7 1 11 1 14 1 17 1 21 1 
		25 1;
createNode animCurveTL -n "animCurveTL636";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.2591101781206659 4 1.0627947607660375 
		7 0.94730938669320153 11 0.62052871510112151 14 0.36325042975680771 17 0.082344686784823706 
		21 -0.092258184401566301 25 -0.1852234316132543;
	setAttr -s 8 ".kit[1:7]"  1 9 9 9 9 9 9;
	setAttr -s 8 ".kot[1:7]"  1 9 9 9 9 9 9;
	setAttr -s 8 ".kix[1:7]"  0.0039665144868195057 0.0052757859230041504 
		0.0039949985221028328 0.0037161754444241524 0.0051224115304648876 0.0099658146500587463 
		0.014340801164507866;
	setAttr -s 8 ".kiy[1:7]"  -0.99999213218688965 -0.99998611211776733 
		-0.9999920129776001 -0.99999308586120605 -0.99998688697814941 -0.9999503493309021 
		-0.99989718198776245;
	setAttr -s 8 ".kox[1:7]"  0.0039664651267230511 0.0052757859230041504 
		0.0039949985221028328 0.0037161754444241524 0.0051224115304648876 0.0099658146500587463 
		0.014340801164507866;
	setAttr -s 8 ".koy[1:7]"  -0.99999213218688965 -0.99998611211776733 
		-0.9999920129776001 -0.99999308586120605 -0.99998688697814941 -0.9999503493309021 
		-0.99989718198776245;
createNode animCurveTL -n "animCurveTL637";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.2803698945022608 4 1.5800634010263139 
		7 1.4283015669350549 11 1.6065847288354993 14 1.4111637451372558 17 0.91024044336358789 
		21 0.73150521837572424 25 0.9704149019867897;
createNode animCurveTL -n "animCurveTL638";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.7693492297543687 4 1.5703495658163922 
		7 1.6855692255278485 11 1.4410315393840629 14 1.154502624559951 17 0.97452817580182205 
		21 0.90406133334029404 25 0.88456864722919493;
createNode animCurveTA -n "animCurveTA1802";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -19.504876398732133 4 3.7661810482217493 
		7 -10.469953380440861 11 -10.469953380440861 14 -13.69789386666127 17 -10.625395277676512 
		21 0.77176251165334064 25 -39.237566114937849;
createNode animCurveTA -n "animCurveTA1803";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 -58.688657075647072 7 -80.122988266435783 
		11 -91.455277056608281 14 -94.919953029879466 17 -88.999041530540595 21 -90.901435589138757 
		25 -88.879633345488045;
createNode animCurveTA -n "animCurveTA1804";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 -4.8582966844671525 7 15.12132485469952 
		11 15.12132485469952 14 17.280110661791646 17 15.46623826768727 21 6.291271291041979 
		25 31.471029442794819;
createNode animCurveTA -n "animCurveTA1805";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1806";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1807";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1808";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1809";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1810";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1811";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1812";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1813";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1814";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1815";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1816";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1817";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1818";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1819";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1820";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1821";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1822";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1823";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1824";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1825";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1826";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1827";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1828";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  11 0 14 0 17 0;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA1829";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  11 0 14 0 17 0;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA1830";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  11 0 14 -24.501661700242042 17 
		0;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kox[0:2]"  0.29982760548591614 1 1;
	setAttr -s 3 ".koy[0:2]"  -0.95399338006973267 0 0;
createNode animCurveTL -n "animCurveTL639";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 -0.43524234076486068;
createNode animCurveTL -n "animCurveTL640";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL641";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0.27773886459742925;
createNode animCurveTA -n "animCurveTA1831";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1832";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 28.652637602052774;
createNode animCurveTA -n "animCurveTA1833";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 64.676908227303443;
createNode animCurveTL -n "animCurveTL642";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0.5198069948790518;
createNode animCurveTL -n "animCurveTL643";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL644";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0.36439499068905612;
createNode animCurveTA -n "animCurveTA1834";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 7.7976222737965317;
createNode animCurveTA -n "animCurveTA1835";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 -30.409274105849079;
createNode animCurveTA -n "animCurveTA1836";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 -64.859940280210893;
createNode animCurveTL -n "animCurveTL645";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.4318854543692052 4 0.66351043477343252 
		7 0.66351043477343252 11 0.35608706388947348 14 0.35608706388947348 17 0.28143114328305574 
		21 -0.20686703802569276 25 -0.24094058915794578;
createNode animCurveTL -n "animCurveTL646";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.7241929732026566 4 2.4541694248727119 
		7 2.4541694248727119 11 2.5528019878878672 14 1.9702853507650551 17 1.2100852753851863 
		21 0.97275323814072723 25 1.2199203723443715;
createNode animCurveTL -n "animCurveTL647";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.6858977529588222 4 1.4295241378294861 
		7 1.4295241378294861 11 0.9195707105718407 14 0.68849768263945266 17 0.4839399669035872 
		21 0.37328602101973773 25 0.43635608522085506;
createNode animCurveTA -n "animCurveTA1837";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -33.734888782993906 4 6.0203811311389988 
		7 6.0203811311389988 11 6.0203811311389988 14 -68.930016188460073 17 229.53747512405812 
		21 205.14412021846877 25 261.7260243159331;
createNode animCurveTA -n "animCurveTA1838";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 14.870586397896902 4 -22.924271515195496 
		7 -22.924271515195496 11 -22.924271515195496 14 -48.885605763433382 17 -30.95189762621477 
		21 -34.518804273224596 25 -45.008042607101586;
createNode animCurveTA -n "animCurveTA1839";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 30.592169336881899 4 -22.99065666778457 
		7 -22.99065666778457 11 -22.99065666778457 14 48.767890046047938 17 -237.17798092422751 
		21 -214.87632071780322 25 -265.6340570691703;
createNode animCurveTL -n "animCurveTL648";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 4.206404471075289 4 1.5654982774620061 
		7 1.5654982774620061 11 0.60313658393764646 14 0.23438812192995465 17 -0.22676280663035264 
		21 -0.48388930974074507 25 -0.2896700025539603;
createNode animCurveTL -n "animCurveTL649";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.7781418955835293 4 2.2393114421654818 
		7 2.2393114421654818 11 2.1790050974223631 14 2.020390968200291 17 1.1452021334425275 
		21 0.91561758277467564 25 1.178034196031452;
createNode animCurveTL -n "animCurveTL650";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.7041072647042435 4 3.0323634771554704 
		7 3.0323634771554704 11 2.9772662469357636 14 2.6274596464883251 17 2.1080049762588078 
		21 1.995506276605657 25 2.1032474700393866;
createNode animCurveTA -n "animCurveTA1840";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -26.203413720634714 4 -176.4316599345523 
		7 -176.4316599345523 11 -204.64950171984853 14 -204.64950171984853 17 -214.72327328141861 
		21 -228.23223001845938 25 -273.44301664312098;
createNode animCurveTA -n "animCurveTA1841";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -14.791961579779635 4 -47.930996865134397 
		7 -47.930996865134397 11 -72.766780684505136 14 -72.766780684505136 17 -41.558302929683045 
		21 -52.970556866400599 25 -27.753397523637741;
createNode animCurveTA -n "animCurveTA1842";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -45.895436695401962 4 144.74077881333704 
		7 144.74077881333704 11 174.93586962421051 14 174.93586962421051 17 167.11776635264738 
		21 242.9300030114936 25 266.95918275971843;
createNode animCurveTL -n "animCurveTL651";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.063331173333856433 4 0.66768647579175422 
		7 0.66768647579175422 11 0.66768647579175422 14 0.66768647579175422 17 0.66768647579175422 
		21 0.66768647579175422 25 0.66768647579175422;
createNode animCurveTL -n "animCurveTL652";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.69960805773293522 4 -0.67301253925255977 
		7 -0.67301253925255977 11 -0.67301253925255977 14 -0.67301253925255977 17 
		-0.67301253925255977 21 -0.67301253925255977 25 -0.67301253925255977;
createNode animCurveTL -n "animCurveTL653";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.66762598980258558 4 -0.49850301940481012 
		7 -0.49850301940481012 11 -0.49850301940481012 14 -0.49850301940481012 17 
		-0.49850301940481012 21 -0.49850301940481012 25 -0.49850301940481012;
createNode animCurveTL -n "animCurveTL654";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.31054502397108613 4 -0.31054502397108613 
		7 -0.31054502397108613 11 -0.31054502397108613 14 -0.31054502397108613 17 
		-0.31054502397108613 21 -0.31054502397108613 25 -0.31054502397108613;
createNode animCurveTL -n "animCurveTL655";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.55640530640609931 4 -0.55640530640609931 
		7 -0.55640530640609931 11 -0.55640530640609931 14 -0.55640530640609931 17 
		-0.55640530640609931 21 -0.55640530640609931 25 -0.55640530640609931;
createNode animCurveTL -n "animCurveTL656";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.57914122395678103 4 -0.57914122395678103 
		7 -0.57914122395678103 11 -0.57914122395678103 14 -0.57914122395678103 17 
		-0.57914122395678103 21 -0.57914122395678103 25 -0.57914122395678103;
createNode animCurveTA -n "animCurveTA1843";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 12.253734489678925 4 12.253734489678925 
		7 12.253734489678925 11 12.253734489678925 14 12.253734489678925 17 12.253734489678925 
		21 12.253734489678925 25 12.253734489678925;
createNode animCurveTA -n "animCurveTA1844";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -65.746751280844975 4 -65.746751280844961 
		7 -65.746751280844961 11 -65.746751280844961 14 -65.746751280844961 17 -65.746751280844961 
		21 -65.746751280844961 25 -65.746751280844975;
createNode animCurveTA -n "animCurveTA1845";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA1846";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.061808866237340665 4 -0.061808866237337522 
		7 -0.061808866237337522 11 -0.061808866237337522 14 -0.061808866237337522 
		17 -0.061808866237337522 21 -0.061808866237337522 25 -0.061808866237340665;
createNode animCurveTA -n "animCurveTA1847";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -59.058178941076754 4 -59.058178941076754 
		7 -59.058178941076754 11 -59.058178941076754 14 -59.058178941076754 17 -59.058178941076754 
		21 -59.058178941076754 25 -59.058178941076754;
createNode animCurveTA -n "animCurveTA1848";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 16.57914742975785 4 16.579147429757843 
		7 16.579147429757843 11 16.579147429757843 14 16.579147429757843 17 16.579147429757843 
		21 16.579147429757843 25 16.57914742975785;
createNode animCurveTA -n "animCurveTA1849";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 8.5572674112203657 4 8.5572674112203622 
		7 8.5572674112203622 11 8.5572674112203622 14 8.5572674112203622 17 8.5572674112203622 
		21 8.5572674112203622 25 8.5572674112203657;
createNode animCurveTA -n "animCurveTA1850";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 15.711328223519061 4 15.711328223519057 
		7 15.711328223519057 11 15.711328223519057 14 15.711328223519057 17 15.711328223519057 
		21 15.711328223519057 25 15.711328223519061;
createNode animCurveTA -n "animCurveTA1851";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA1852";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA1853";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA1854";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA1855";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA1856";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA1857";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -177.04830761929054 25 143.71460997127252;
createNode animCurveTA -n "animCurveTA1858";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 27.7228482558439 25 27.804554996454378;
createNode animCurveTA -n "animCurveTA1859";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 21.576484776388227 25 29.452980944098744;
createNode animCurveTA -n "animCurveTA1860";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA1861";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA1862";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 27.080064458283051 4 27.080064458283051 
		7 27.080064458283051 11 27.080064458283051 14 27.080064458283051 17 27.080064458283051 
		21 27.080064458283051 25 27.080064458283051;
createNode animCurveTA -n "animCurveTA1863";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1864";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1865";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1866";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1867";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1868";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 13.994403295754109;
createNode animCurveTA -n "animCurveTA1869";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1870";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "animCurveTA1871";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 13.994403295754109;
createNode animCurveTA -n "animCurveTA1872";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA1873";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA1874";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 27.911632519594587 4 27.911632519594587 
		7 27.911632519594587 11 27.911632519594587 14 27.911632519594587 17 27.911632519594587 
		21 27.911632519594587 25 27.911632519594587;
createNode animCurveTA -n "animCurveTA1875";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA1876";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA1877";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA1878";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.373100660218926 4 -0.5125330584386516 
		7 -0.5125330584386516 11 -0.5125330584386516 14 -0.5125330584386516 17 -0.5125330584386516 
		21 -0.5125330584386516 25 -0.65073001024951671;
createNode animCurveTA -n "animCurveTA1879";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.38374158911587308 4 -1.2966697574980743 
		7 -1.2966697574980743 11 -1.2966697574980743 14 -1.2966697574980743 17 -1.2966697574980743 
		21 -1.2966697574980743 25 -4.2368721935960938;
createNode animCurveTA -n "animCurveTA1880";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.96901743689791298 4 2.3808668204454095 
		7 2.3808668204454095 11 2.3808668204454095 14 2.3808668204454095 17 2.3808668204454095 
		21 2.3808668204454095 25 2.6995264082587447;
createNode animCurveTA -n "animCurveTA1881";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -2.2144674450583466 4 3.9388735369945089 
		7 3.9388735369945089 11 3.9388735369945089 14 3.9388735369945089 17 3.9388735369945089 
		21 3.9388735369945089 25 0;
createNode animCurveTA -n "animCurveTA1882";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -5.3642380392152509 4 -1.8242021628094227 
		7 -1.8242021628094227 11 -1.8242021628094227 14 -1.8242021628094227 17 -1.8242021628094227 
		21 -1.8242021628094227 25 0;
createNode animCurveTA -n "animCurveTA1883";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -3.2584064202075544 4 -3.4768422591718746 
		7 -3.4768422591718746 11 -3.4768422591718746 14 -3.4768422591718746 17 -3.4768422591718746 
		21 -3.4768422591718746 25 0;
createNode animCurveTA -n "animCurveTA1884";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 4.9690701715193732 4 33.712015865598353 
		7 25.627726729996503 11 20.079666981784225 14 5.8608359898415125 17 3.5619792782331539 
		21 6.0801195962680348 25 0;
createNode animCurveTA -n "animCurveTA1885";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -2.9904681746768538 4 17.505701362685283 
		7 16.189361723020774 11 14.221009636577303 14 13.003644464628531 17 7.124496941251798 
		21 8.8128055601634792 25 0;
createNode animCurveTA -n "animCurveTA1886";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 14.780225156536885 4 12.510448912505932 
		7 0.82841756958153401 11 18.290548424100457 14 17.422820322901881 17 19.447287841734912 
		21 27.939444328551787 25 6.6786334979782902;
createNode animCurveTA -n "animCurveTA1887";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.211833892135727 4 -0.42646470921519353 
		7 -0.42646470921519353 11 -0.42646470921519353 14 -0.42646470921519353 17 
		-0.42646470921519353 21 -0.42646470921519353 25 -1.8903601258661935;
createNode animCurveTA -n "animCurveTA1888";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.7086730360615547 4 1.9530231234413618 
		7 1.9530231234413618 11 1.9530231234413618 14 1.9530231234413618 17 1.9530231234413618 
		21 1.9530231234413618 25 2.5597289571479038;
createNode animCurveTA -n "animCurveTA1889";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.7082804953288213 4 2.4049685598947645 
		7 2.4049685598947645 11 2.4049685598947645 14 2.4049685598947645 17 2.4049685598947645 
		21 2.4049685598947645 25 2.0168110874036049;
createNode animCurveTA -n "animCurveTA1890";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA1891";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA1892";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 33.429092416277157 4 33.429092416277157 
		7 33.429092416277157 11 33.429092416277157 14 33.429092416277157 17 33.429092416277157 
		21 33.429092416277157 25 33.429092416277157;
createNode animCurveTA -n "animCurveTA1893";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 19.002497950056888 25 -121.24398976748977;
createNode animCurveTA -n "animCurveTA1894";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 23.263402056531081 25 28.612774017129329;
createNode animCurveTA -n "animCurveTA1895";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 20.166277752815621 25 17.632837226638049;
createNode animCurveTA -n "animCurveTA1896";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA1897";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 14 0 17 0 21 0 
		25 0;
createNode animCurveTA -n "animCurveTA1898";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 17.254116939558369 4 17.254116939558369 
		7 17.254116939558369 11 17.254116939558369 14 17.254116939558369 17 17.254116939558369 
		21 17.254116939558369 25 17.254116939558369;
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
connectAttr "lsa_get_out_of_carSource.st" "clipLibrary1.st[0]";
connectAttr "lsa_get_out_of_carSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL616.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL617.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL618.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL619.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL620.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA1780.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU9.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU10.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU11.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU12.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU13.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU14.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU15.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU16.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA1781.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA1782.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA1783.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL621.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL622.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL623.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL624.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL625.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL626.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA1784.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA1785.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA1786.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL627.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL628.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL629.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA1787.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA1788.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA1789.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA1790.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA1791.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA1792.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA1793.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA1794.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA1795.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA1796.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA1797.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA1798.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA1799.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA1800.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA1801.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL630.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL631.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL632.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL633.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL634.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL635.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL636.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL637.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL638.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA1802.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA1803.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA1804.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA1805.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA1806.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA1807.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA1808.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA1809.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA1810.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA1811.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA1812.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA1813.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA1814.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA1815.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA1816.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA1817.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA1818.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA1819.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA1820.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA1821.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA1822.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA1823.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA1824.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA1825.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA1826.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA1827.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA1828.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA1829.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA1830.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL639.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL640.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL641.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA1831.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA1832.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA1833.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL642.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL643.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL644.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA1834.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA1835.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA1836.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL645.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL646.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL647.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA1837.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA1838.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA1839.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL648.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL649.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL650.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA1840.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA1841.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA1842.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL651.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL652.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL653.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL654.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL655.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL656.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA1843.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA1844.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA1845.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA1846.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA1847.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA1848.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA1849.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA1850.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA1851.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA1852.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA1853.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1854.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1855.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1856.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA1857.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1858.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1859.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1860.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1861.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1862.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1863.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1864.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1865.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA1866.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA1867.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA1868.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA1869.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA1870.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA1871.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1872.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1873.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1874.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1875.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1876.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1877.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1878.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1879.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1880.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1881.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1882.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1883.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1884.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1885.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1886.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1887.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1888.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1889.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1890.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1891.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1892.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA1893.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA1894.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA1895.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA1896.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA1897.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA1898.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of lsa_get_out_of_car.ma
