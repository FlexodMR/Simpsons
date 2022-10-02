//Maya ASCII 4.0 scene
//Name: mrg-m_get_out_of_car_high.ma
//Last modified: Wed, Jul 31, 2002 05:12:31 PM
requires maya "4.0";
requires "p3dSimpleShader" "17.1";
requires "p3dmayaexp" "17.9.1.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mrg_get_out_of_car_high";
	setAttr ".ihi" 0;
	setAttr ".du" 30;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL616";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTL -n "animCurveTL617";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTL -n "animCurveTL618";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -1.0931321889110071 1 -1.080541464453832 
		2 -1.0593647417583663 3 -1.0305211348025021 4 -0.99492975756413093 5 -0.95350972402114442 
		6 -0.90718014815143433 7 -0.85443022108419697 8 -0.79422248925138905 9 -0.72818609958504454 
		10 -0.65795019901719687 11 -0.58514393447987956 12 -0.51139645290512648 13 
		-0.42318516806266382 14 -0.3246924282403833 15 -0.2441047821475667 16 -0.18680363045491205 
		17 -0.13950917523516179 18 -0.10241616730067836 19 -0.075719357463824188 
		20 -0.062583606412595152 21 -0.061867404068506673 22 -0.06730594509420057 
		23 -0.072634424152318633 24 -0.077561191125744375 25 -0.085025389557218584 
		26 -0.093608404599169137 27 -0.10189162140402391 28 -0.1084564251242108 29 
		-0.11188420091215764 30 -0.1107563339202923;
createNode animCurveTL -n "animCurveTL619";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0;
createNode animCurveTL -n "animCurveTL620";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0.50990367929941149 1 0.50413383534290479 
		2 0.50176747387113507 3 0.50191428636634372 4 0.50368396431077278 5 0.50618619918666374 
		6 0.50853068247625854 7 0.51402207822653223 8 0.52403356604404461 9 0.53477761075041441 
		10 0.54246667716726027 11 0.54331323011620147 12 0.53352973441885632 13 0.49215013947885861 
		14 0.42340048953596665 15 0.36128139166598711 16 0.31401672180537621 17 0.26937558413402624 
		18 0.23067642809289776 19 0.20123770312295133 20 0.18395700907309401 21 0.17639361226073036 
		22 0.17385846182956718 23 0.17166250692331114 24 0.1677905749868786 25 0.16374894278947158 
		26 0.16013073346122564 27 0.15752907013227638 28 0.15653707593275928 29 0.15774787399280993 
		30 0.16175458744256382;
createNode animCurveTA -n "animCurveTA1816";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0 1 11.911652192620773 2 20.76390122861325 
		3 30.818594329945647 4 41.529353075781842 5 52.349799045285742 6 62.733553817621228 
		7 72.134238971952172 8 80.005476087442489 9 86.626712731437593 10 92.603123111275949 
		11 97.876918766110933 12 102.39031123509601 13 106.08551205738453 14 108.90473277212999 
		15 110.79018491848576 16 112.07062914128245 17 113.12065853056939 18 113.95123329332804 
		19 114.57331363653989 20 114.99785976718645 21 115.23583189224915 22 115.29819021870952 
		23 115.19589495354903 24 114.93990630374914 25 114.54118447629135 26 114.01068967815712 
		27 113.35938211632798 28 112.59822199778539 29 111.73816952951083 30 110.79018491848576;
createNode animCurveTU -n "animCurveTU9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTU -n "animCurveTU10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTU -n "animCurveTU11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTU -n "animCurveTU12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTU -n "animCurveTU13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTU -n "animCurveTU14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTU -n "animCurveTU15";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 30 1;
createNode animCurveTU -n "animCurveTU16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 30 1;
createNode animCurveTA -n "animCurveTA1817";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1818";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1819";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTL -n "animCurveTL621";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTL -n "animCurveTL622";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTL -n "animCurveTL623";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTL -n "animCurveTL624";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.4496212507996262 6 -0.75662610987177448 
		12 -0.75662610987177448 15 -0.025535954827770047 19 -0.089432696636962142 
		23 -0.089432696636962142 30 -0.089432696636962142;
createNode animCurveTL -n "animCurveTL625";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.2279490663618713 6 0.90425894272881668 
		12 0.90425894272881668 15 0.4605489501004143 19 0.15901539290164871 23 0.090739826238255855 
		30 0.090739826238255855;
createNode animCurveTL -n "animCurveTL626";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.4274355819015074 6 0.93682015547869968 
		12 0.93682015547869968 15 0.44068478113505544 19 0.37820686953638194 23 0.37820686953638194 
		30 0.37820686953638194;
createNode animCurveTA -n "animCurveTA1820";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -24.204848230542304 6 -4.2432371070307617 
		12 -98.648923617843252 15 -144.57627051479582 19 -160.52632885597114 23 -178.44479555013268 
		30 -178.44479555013268;
createNode animCurveTA -n "animCurveTA1821";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 71.40228518438056 12 69.202813513275643 
		15 65.395562839128075 19 64.348645467164118 23 64.348645467164133 30 64.348645467164133;
createNode animCurveTA -n "animCurveTA1822";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 3.694980397967055 12 -123.36829379451167 
		15 -185.97661956872068 19 -177.06797680878609 23 -177.06797680878609 30 -177.06797680878609;
createNode animCurveTL -n "animCurveTL627";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.1468862801970878 6 -0.60238222946220488 
		12 -0.60238222946220488 15 -0.56657059087225126 19 -0.26314392545677373 23 
		-0.26314392545677373 30 -0.26314392545677373;
createNode animCurveTL -n "animCurveTL628";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.2464696855624631 6 0.92040295007758943 
		12 0.92040295007758943 15 0.87428516625483244 19 0.17835202884694412 23 0.10074079658300666 
		30 0.10074079658300666;
createNode animCurveTL -n "animCurveTL629";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.3883743416871892 6 0.50721591034116531 
		12 0.50721591034116531 15 0.45596310793574701 19 0.10232611142150212 23 0.10232611142150212 
		30 0.10232611142150212;
createNode animCurveTA -n "animCurveTA1823";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -36.819011955683756 6 -14.868773507399556 
		12 -129.95294279235549 15 -111.04442304619364 19 20.42261469956993 23 -1.2411000500939884 
		30 -1.2411000500939884;
createNode animCurveTA -n "animCurveTA1824";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 78.632110970251233 12 77.167965108756619 
		15 63.356438976243041 19 120.91731311278465 23 120.91731311278465 30 120.91731311278465;
createNode animCurveTA -n "animCurveTA1825";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 -45.811993104511636 12 -160.88172185248797 
		15 -169.21070321642827 19 -1.2347523458486165 23 -1.2347523458486165 30 -1.2347523458486165;
createNode animCurveTA -n "animCurveTA1826";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1827";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1828";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1829";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1830";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1831";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1832";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1833";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1834";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1835";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1836";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1837";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTL -n "animCurveTL630";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTL -n "animCurveTL631";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTL -n "animCurveTL632";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 6 1 12 1 15 1 19 1 23 1 30 
		1;
createNode animCurveTL -n "animCurveTL633";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 -0.034660776702225261 12 
		-0.034660776702225261 15 -0.034660776702225261 19 -0.037136546583753045 23 
		0 30 0;
createNode animCurveTL -n "animCurveTL634";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0.43236842264083392 12 0.43236842264083392 
		15 0.43236842264083392 19 0.46325188044122045 23 0 30 0;
createNode animCurveTL -n "animCurveTL635";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 6 1.022596790343715 12 1.022596790343715 
		15 1.022596790343715 19 1.024210846778379 23 1 30 1;
createNode animCurveTL -n "animCurveTL636";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.3318677670487873 6 -1.1053045647051232 
		12 -0.62308333677920003 15 -0.29741626348840255 19 -0.092256153986443989 
		23 -0.088497483916374534 30 -0.134945062126369;
createNode animCurveTL -n "animCurveTL637";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.4718651042148105 6 1.4156349662069949 
		12 1.6431944548966531 15 1.3215637109676022 19 1.0042914624088184 23 0.78136680815198978 
		30 0.98054198902067657;
createNode animCurveTL -n "animCurveTL638";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.62126454755213167 6 0.61959169386474788 
		12 0.65005043602501089 15 0.44018376302120749 19 0.24518719055505916 23 0.20915289303639795 
		30 0.19708112465487385;
createNode animCurveTA -n "animCurveTA1838";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -47.088616656908457 6 -8.5215539741489525 
		15 -173.50714453433415 19 -178.32017754444556 23 -166.43086150798464 30 -181.75712390568867;
createNode animCurveTA -n "animCurveTA1839";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.0975263990809516 6 64.297551090209751 
		15 70.802999435899054 19 66.138701672266848 23 62.337764729766747 30 64.721581426356707;
createNode animCurveTA -n "animCurveTA1840";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.53932213336905688 6 7.2379445755754626 
		15 -169.76006021004261 19 -184.39403302728573 23 -184.42544963716392 30 -177.47049933450054;
createNode animCurveTA -n "animCurveTA1841";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1842";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1843";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1844";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1845";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1846";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1847";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1848";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1849";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1850";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1851";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1852";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1853";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1854";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1855";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1856";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1857";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1858";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1859";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1860";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1861";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1862";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1863";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  0.29765972495079041 1;
	setAttr -s 3 ".kiy[1:2]"  0.95467203855514526 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1864";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1865";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1866";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTL -n "animCurveTL639";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.5198069948790518 30 -0.5198069948790518;
createNode animCurveTL -n "animCurveTL640";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.72394202659893114 30 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL641";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.36439499068905612 30 0.36439499068905612;
createNode animCurveTA -n "animCurveTA1867";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.7976222737965317 30 7.7976222737965317;
createNode animCurveTA -n "animCurveTA1868";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 30.409274105849079 30 30.409274105849079;
createNode animCurveTA -n "animCurveTA1869";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 64.859940280210893 30 64.859940280210893;
createNode animCurveTL -n "animCurveTL642";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.43524234076486068 30 0.43524234076486068;
createNode animCurveTL -n "animCurveTL643";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.82665738350180629 30 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL644";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.27773886459742925 30 0.27773886459742925;
createNode animCurveTA -n "animCurveTA1870";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1871";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -28.652637602052774 30 -28.652637602052774;
createNode animCurveTA -n "animCurveTA1872";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -64.676908227303443 30 -64.676908227303443;
createNode animCurveTL -n "animCurveTL645";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -3.3854287601577617 6 -2.4349248254141824 
		12 -0.56755409218319386 15 0.35397463560481596 19 0.098360475681949555 23 
		0.29595672445326199 30 -0.050511575999421014;
createNode animCurveTL -n "animCurveTL646";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 3.2951827277525036 6 3.2093367745582122 
		12 3.4122146419506736 15 3.2564957716833374 19 2.4111560171549664 23 1.8829969684963612 
		30 2.2282359333804407;
createNode animCurveTL -n "animCurveTL647";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.1357561097544726 6 1.9552649608274724 
		12 2.3812097276119903 15 1.5194852025327452 19 1.0699235023236144 23 1.0054687400889841 
		30 0.90766395158927293;
createNode animCurveTA -n "animCurveTA1873";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 26.279373069154861 6 94.50353046674239 
		12 135.05490232368319 15 166.51822196318827 19 162.32893465452503 23 148.03334928765904 
		30 134.17061414787904;
createNode animCurveTA -n "animCurveTA1874";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 55.316964386970021 6 47.821496893446991 
		12 37.198790080116289 15 15.597091313553811 19 31.247716093360385 23 26.000739835660212 
		30 26.248045553149087;
createNode animCurveTA -n "animCurveTA1875";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 77.201572122121533 6 127.18655955196871 
		12 144.40156807522339 15 176.6423145983199 19 151.48901628428615 23 133.7501270587309 
		30 107.36817778262002;
createNode animCurveTL -n "animCurveTL648";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.1478091564096489 6 -1.8272835982773392 
		12 -1.5789447819403624 19 -0.64049215874667531 23 -0.10793197317211226 30 
		-0.5502285468745024;
createNode animCurveTL -n "animCurveTL649";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 3.2428528854844094 6 3.6623579277286518 
		12 3.9320850284055178 19 2.5422114258273414 23 1.9213561063299229 30 2.2040502209682593;
createNode animCurveTL -n "animCurveTL650";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.2087400184371315 6 0.58555684336640568 
		12 0.82369496811445486 19 -0.19481803584731275 23 -0.27712113122985266 30 
		-0.0047861638845576957;
createNode animCurveTA -n "animCurveTA1876";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 59.007910131897091 6 28.288672191279669 
		12 83.227159798924291 19 -69.811818503132187 23 -65.210455689578708 30 -72.079170570901539;
createNode animCurveTA -n "animCurveTA1877";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -71.601588453715067 6 -4.9966382067771757 
		12 63.127065524947852 19 64.373524147310476 23 46.734600736444989 30 25.431493559211866;
createNode animCurveTA -n "animCurveTA1878";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -90.779043014820601 6 17.196389197003594 
		12 43.378083526117628 19 -64.412062541150092 23 -70.638430011880061 30 -92.331283509628591;
createNode animCurveTL -n "animCurveTL651";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.017571725225418895 6 0.31054502397108613 
		12 0.31054502397108613 15 0.31054502397108613 19 0.31054502397108613 23 0.31054502397108613 
		30 0.31054502397108613;
createNode animCurveTL -n "animCurveTL652";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.54560785950824164 6 -0.55640530640609931 
		12 -0.55640530640609931 15 -0.55640530640609931 19 -0.55640530640609931 23 
		-0.55640530640609931 30 -0.55640530640609931;
createNode animCurveTL -n "animCurveTL653";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.64724218630287966 6 -0.57914122395678103 
		12 -0.57914122395678103 15 -0.57914122395678103 19 -0.57914122395678103 23 
		-0.57914122395678103 30 -0.57914122395678103;
createNode animCurveTL -n "animCurveTL654";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.22996541113775407 6 -0.37736680843384973 
		12 -0.37736680843384973 15 -0.37736680843384973 19 -0.047646009069586132 
		23 -0.047646009069586132 30 -0.047646009069586132;
createNode animCurveTL -n "animCurveTL655";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.71572892866406468 6 -0.54343311259648019 
		12 -0.54343311259648019 15 -0.54343311259648019 19 -0.70977769184901862 23 
		-0.70977769184901862 30 -0.70977769184901862;
createNode animCurveTL -n "animCurveTL656";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.86045149817799893 6 -0.97043124551903082 
		12 -0.97043124551903082 15 -0.97043124551903082 19 -0.64237249774344829 23 
		-0.64237249774344829 30 -0.64237249774344829;
createNode animCurveTA -n "animCurveTA1879";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.061808866237340665 6 -0.061808866237337522 
		12 -0.061808866237337522 15 -0.061808866237337522 19 -0.061808866237337522 
		23 -0.061808866237337522 30 -0.061808866237340665;
createNode animCurveTA -n "animCurveTA1880";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -59.058178941076754 6 -59.058178941076754 
		12 -59.058178941076754 15 -59.058178941076754 19 -59.058178941076754 23 -59.058178941076754 
		30 -59.058178941076754;
createNode animCurveTA -n "animCurveTA1881";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 16.579147429757857 6 16.579147429757843 
		12 16.579147429757843 15 16.579147429757843 19 16.579147429757843 23 16.579147429757843 
		30 16.57914742975785;
createNode animCurveTA -n "animCurveTA1882";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 12.253734489678925 6 12.253734489678925 
		12 12.253734489678925 15 12.253734489678925 19 12.253734489678925 23 12.253734489678925 
		30 12.253734489678925;
createNode animCurveTA -n "animCurveTA1883";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -65.746751280844975 6 -65.746751280844961 
		12 -65.746751280844961 15 -65.746751280844961 19 -65.746751280844961 23 -65.746751280844961 
		30 -65.746751280844975;
createNode animCurveTA -n "animCurveTA1884";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA1885";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 15.711328223519065 6 15.711328223519057 
		12 15.711328223519057 15 15.711328223519057 19 15.711328223519057 23 15.711328223519057 
		30 15.711328223519061;
createNode animCurveTA -n "animCurveTA1886";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.5572674112203657 6 8.5572674112203622 
		12 8.5572674112203622 15 8.5572674112203622 19 8.5572674112203622 23 8.5572674112203622 
		30 8.5572674112203657;
createNode animCurveTA -n "animCurveTA1887";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA1888";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA1889";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA1890";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA1891";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA1892";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA1893";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 8.2533422302317216 30 8.2533422302317216;
createNode animCurveTA -n "animCurveTA1894";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 23.263402056531085 30 23.263402056531085;
createNode animCurveTA -n "animCurveTA1895";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 20.166277752815617 30 20.166277752815617;
createNode animCurveTA -n "animCurveTA1896";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA1897";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA1898";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 33.429092416277157 6 33.429092416277157 
		12 33.429092416277157 15 33.429092416277157 19 33.429092416277157 23 33.429092416277157 
		30 33.429092416277157;
createNode animCurveTA -n "animCurveTA1899";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1900";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1901";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1902";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1903";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1904";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 30 13.994403295754109;
createNode animCurveTA -n "animCurveTA1905";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1906";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "animCurveTA1907";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 30 13.994403295754109;
createNode animCurveTA -n "animCurveTA1908";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA1909";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA1910";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 17.254116939558369 6 17.254116939558369 
		12 17.254116939558369 15 17.254116939558369 19 17.254116939558369 23 17.254116939558369 
		30 17.254116939558369;
createNode animCurveTA -n "animCurveTA1911";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA1912";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA1913";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA1914";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -2.3937906322123035 6 19.510072961584843 
		12 25.890727135803381 15 18.627666657111309 19 4.673284826683159 23 -5.1244257875627879 
		30 -0.71009266045615982;
createNode animCurveTA -n "animCurveTA1915";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.7843868968348546 6 -9.3825260607702123 
		12 2.3049251976124192 15 3.546263523020015 19 4.9375706220930464 23 9.141120159675431 
		30 -0.39065484564574865;
createNode animCurveTA -n "animCurveTA1916";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 13.23227595374661 6 20.30642936059165 
		12 8.347150333684521 15 3.2185257670674128 19 5.1436031948885814 23 11.9633245790804 
		30 8.1445984161934568;
	setAttr -s 7 ".kit[2:6]"  1 9 9 9 9;
	setAttr -s 7 ".kot[2:6]"  1 9 9 9 9;
	setAttr -s 7 ".kix[2:6]"  0.48331466317176819 0.97247004508972168 
		0.86790001392364502 0.98995089530944824 0.96154278516769409;
	setAttr -s 7 ".kiy[2:6]"  -0.87544667720794678 -0.23302790522575378 
		0.49673888087272644 0.14141155779361725 -0.27465513348579407;
	setAttr -s 7 ".kox[2:6]"  0.48331478238105774 0.97247004508972168 
		0.86790001392364502 0.98995089530944824 0.96154278516769409;
	setAttr -s 7 ".koy[2:6]"  -0.875446617603302 -0.23302790522575378 
		0.49673888087272644 0.14141155779361725 -0.27465513348579407;
createNode animCurveTA -n "animCurveTA1917";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 -7.1097278539792699 12 -7.1097278539792699 
		15 -7.1097278539792699 19 -7.1097278539792699 23 -9.4930924441262015 30 0;
createNode animCurveTA -n "animCurveTA1918";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 -4.3462802692132101 
		30 0;
createNode animCurveTA -n "animCurveTA1919";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 -24.059161620117205 
		30 0;
createNode animCurveTA -n "animCurveTA1920";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.7103260003138816 6 -5.9862614705266992 
		12 -8.4757225690489832 15 -11.543926798884067 19 -0.96879310801463325 23 
		-4.0292350178916774 30 2.0270270270270276;
createNode animCurveTA -n "animCurveTA1921";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -3.6938159239902002 6 -2.7936151489449426 
		12 -1.1477434634438117 15 -4.0406450302336587 19 3.6699062068098405 23 -4.6007755972558266 
		30 2.4108692476260059;
createNode animCurveTA -n "animCurveTA1922";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 14.572231982957494 6 12.739831483800881 
		12 14.696180294034731 15 17.382604922704356 19 29.40037223169206 23 24.721147746370409 
		30 13.0432985235726;
createNode animCurveTA -n "animCurveTA1923";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.2796212519697256 6 1.8903601258661931 
		12 1.8903601258661931 15 0.18300343148149126 19 -1.4672032523553795 23 -1.4672032523553795 
		30 0;
createNode animCurveTA -n "animCurveTA1924";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -2.2209313171847875 6 -2.5597289571479034 
		12 -2.5597289571479034 15 -2.5597289571479047 19 -3.0842593602314001 23 -3.0842593602314001 
		30 0;
createNode animCurveTA -n "animCurveTA1925";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.0401232256568242 6 2.016811087403604 
		12 2.016811087403604 15 0.71813315916180298 19 -2.0736047826525068 23 -2.0736047826525068 
		30 -10.382821061592265;
createNode animCurveTA -n "animCurveTA1926";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA1927";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA1928";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.080064458283051 6 27.080064458283051 
		12 27.080064458283051 15 27.080064458283051 19 27.080064458283051 23 27.080064458283051 
		30 27.080064458283051;
createNode animCurveTA -n "animCurveTA1929";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 10.42375496696849 30 10.42375496696849;
createNode animCurveTA -n "animCurveTA1930";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 27.7228482558439 30 27.7228482558439;
createNode animCurveTA -n "animCurveTA1931";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 21.576484776388231 30 21.576484776388231;
createNode animCurveTA -n "animCurveTA1932";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA1933";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA1934";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.911632519594587 6 27.911632519594587 
		12 27.911632519594587 15 27.911632519594587 19 27.911632519594587 23 27.911632519594587 
		30 27.911632519594587;
createNode animCurveTA -n "animCurveTA1935";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  5 0 11 0 19 0 26 0 30 0;
createNode animCurveTA -n "animCurveTA1936";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  5 0 11 0 19 0 26 0 30 0;
createNode animCurveTA -n "animCurveTA1937";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  5 24.358684443344277 11 35.177881291721548 
		19 7.3629024675517076 26 17.874564710049984 30 0;
createNode animCurveTA -n "animCurveTA1938";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  5 0 11 0 19 0 26 0 30 0;
createNode animCurveTA -n "animCurveTA1939";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  5 0 11 0 19 0 26 0 30 0;
createNode animCurveTA -n "animCurveTA1940";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  5 24.358684443344277 11 35.177881291721548 
		19 7.3629024675517076 26 17.874564710049984 30 0;
createNode animCurveTA -n "animCurveTA1941";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  5 0 11 0 19 0 26 0 30 0;
createNode animCurveTA -n "animCurveTA1942";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  5 0 11 0 19 0 26 0 30 0;
createNode animCurveTA -n "animCurveTA1943";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  5 24.358684443344277 11 35.177881291721548 
		19 7.3629024675517076 26 17.874564710049984 30 0;
createNode clipLibrary -n "clipLibrary2";
	setAttr -s 177 ".cel[0].cev";
	setAttr ".cd[0].cm" -type "characterMapping" 177 "Extra_Attributes.translateX" 
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
		2 118 "Middle_L.rotateZ" 2 119 "hair_1.rotateX" 2 120 "hair_1.rotateY" 
		2 121 "hair_1.rotateZ" 2 122 "hair_2.rotateX" 2 123 "hair_2.rotateY" 
		2 124 "hair_2.rotateZ" 2 125 "hair_3.rotateX" 2 126 "hair_3.rotateY" 
		2 127 "hair_3.rotateZ" 2 128  ;
	setAttr ".cd[0].cim" -type "Int32Array" 177 0 1 2 3
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
		 158 159 160 161 162 163 164 165 166 167 168
		 169 170 171 172 173 174 175 176 ;
createNode lightLinker -n "lightLinker1";
	setAttr ".ihi" 0;
	setAttr -s 22 ".lnk";
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
	setAttr ".outf" 23;
	setAttr ".an" yes;
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
	setAttr -s 3 ".sol";
connectAttr "mrg_get_out_of_car_high.st" "clipLibrary2.st[0]";
connectAttr "mrg_get_out_of_car_high.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL616.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL617.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "animCurveTL618.a" "clipLibrary2.cel[0].cev[2].cevr";
connectAttr "animCurveTL619.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "animCurveTL620.a" "clipLibrary2.cel[0].cev[4].cevr";
connectAttr "animCurveTA1816.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "animCurveTU9.a" "clipLibrary2.cel[0].cev[6].cevr";
connectAttr "animCurveTU10.a" "clipLibrary2.cel[0].cev[7].cevr";
connectAttr "animCurveTU11.a" "clipLibrary2.cel[0].cev[8].cevr";
connectAttr "animCurveTU12.a" "clipLibrary2.cel[0].cev[9].cevr";
connectAttr "animCurveTU13.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU14.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU15.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU16.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA1817.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA1818.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA1819.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL621.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL622.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL623.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL624.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL625.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL626.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA1820.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA1821.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA1822.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL627.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL628.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL629.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA1823.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA1824.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA1825.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA1826.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA1827.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA1828.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA1829.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA1830.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA1831.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTA1832.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTA1833.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTA1834.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTA1835.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTA1836.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTA1837.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL630.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL631.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL632.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTL633.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTL634.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTL635.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTL636.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTL637.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTL638.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA1838.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA1839.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA1840.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA1841.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA1842.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA1843.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA1844.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA1845.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA1846.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA1847.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA1848.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA1849.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA1850.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA1851.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA1852.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA1853.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA1854.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA1855.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA1856.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA1857.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA1858.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA1859.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA1860.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTA1861.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTA1862.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTA1863.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA1864.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA1865.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA1866.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL639.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL640.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL641.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA1867.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA1868.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA1869.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL642.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL643.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL644.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA1870.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA1871.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA1872.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL645.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL646.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL647.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA1873.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA1874.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA1875.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL648.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL649.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL650.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTA1876.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTA1877.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTA1878.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTL651.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTL652.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTL653.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTL654.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTL655.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTL656.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA1879.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA1880.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA1881.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA1882.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA1883.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA1884.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA1885.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA1886.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA1887.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA1888.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA1889.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA1890.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA1891.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA1892.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA1893.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA1894.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA1895.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA1896.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA1897.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA1898.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA1899.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA1900.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA1901.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA1902.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA1903.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA1904.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA1905.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA1906.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA1907.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA1908.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA1909.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA1910.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA1911.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA1912.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA1913.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA1914.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA1915.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA1916.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA1917.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA1918.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA1919.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA1920.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA1921.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA1922.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA1923.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA1924.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA1925.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA1926.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA1927.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA1928.a" "clipLibrary2.cel[0].cev[161].cevr";
connectAttr "animCurveTA1929.a" "clipLibrary2.cel[0].cev[162].cevr";
connectAttr "animCurveTA1930.a" "clipLibrary2.cel[0].cev[163].cevr";
connectAttr "animCurveTA1931.a" "clipLibrary2.cel[0].cev[164].cevr";
connectAttr "animCurveTA1932.a" "clipLibrary2.cel[0].cev[165].cevr";
connectAttr "animCurveTA1933.a" "clipLibrary2.cel[0].cev[166].cevr";
connectAttr "animCurveTA1934.a" "clipLibrary2.cel[0].cev[167].cevr";
connectAttr "animCurveTA1935.a" "clipLibrary2.cel[0].cev[168].cevr";
connectAttr "animCurveTA1936.a" "clipLibrary2.cel[0].cev[169].cevr";
connectAttr "animCurveTA1937.a" "clipLibrary2.cel[0].cev[170].cevr";
connectAttr "animCurveTA1938.a" "clipLibrary2.cel[0].cev[171].cevr";
connectAttr "animCurveTA1939.a" "clipLibrary2.cel[0].cev[172].cevr";
connectAttr "animCurveTA1940.a" "clipLibrary2.cel[0].cev[173].cevr";
connectAttr "animCurveTA1941.a" "clipLibrary2.cel[0].cev[174].cevr";
connectAttr "animCurveTA1942.a" "clipLibrary2.cel[0].cev[175].cevr";
connectAttr "animCurveTA1943.a" "clipLibrary2.cel[0].cev[176].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[1].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[8].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[13].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[21].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[22].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[23].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[24].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[25].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[26].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[27].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[28].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[29].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[30].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[31].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[32].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[33].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[34].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[35].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[36].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[37].llnk";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of mrg-m_get_out_of_car_high.ma
