//Maya ASCII 4.0 scene
//Name: mrg-m_get_out_of_car_close_door_high.ma
//Last modified: Wed, Jul 31, 2002 05:11:31 PM
requires maya "4.0";
requires "p3dSimpleShader" "17.1";
requires "p3dmayaexp" "17.9.1.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mrg_get_out_of_car_close_door_high";
	setAttr ".ihi" 0;
	setAttr ".du" 15;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL616";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTL -n "animCurveTL617";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTL -n "animCurveTL618";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -0.1107563339202923 1 -0.10259609618476362 
		2 -0.087543307498893844 3 -0.068104174650871083 4 -0.046784904428883438 5 
		-0.026091703621119011 6 -0.0037561448502587773 7 0.021892576418633496 8 0.047451819133795613 
		9 0.069518942243465373 10 0.084691304695880584 11 0.091118373259358829 12 
		0.091068575354344719 13 0.087317710907266519 14 0.082641579844552449 15 0.079815982092630827;
createNode animCurveTL -n "animCurveTL619";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0;
createNode animCurveTL -n "animCurveTL620";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0.16175458744256382 1 0.17586590974017072 
		2 0.20045115841539007 3 0.22569439270577221 4 0.24177967184886714 5 0.23889105508222525 
		6 0.20840324359621604 7 0.15686019778167637 8 0.097199865676857219 9 0.04236019532000964 
		10 0.0052791347493846823 11 -0.010389991026224297 12 -0.013272480369701703 
		13 -0.008848320300313085 14 -0.0025974978373240103 15 0;
createNode animCurveTA -n "animCurveTA1816";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 110.79018491848576 1 109.28377827337316 
		2 106.66628393584153 3 102.82539846238069 4 97.648818409480484 5 91.024240333630729 
		6 83.312110310880414 7 75.016399916404779 8 66.240093955383088 9 57.086177232994643 
		10 47.657634554418649 11 38.05745072483441 12 28.388610549421156 13 18.754098833358174 
		14 7.011331930912533 15 0;
createNode animCurveTU -n "animCurveTU121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTU -n "animCurveTU122";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTU -n "animCurveTU123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTU -n "animCurveTU124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTU -n "animCurveTU125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTU -n "animCurveTU126";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTU -n "animCurveTU127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 15 1;
createNode animCurveTU -n "animCurveTU128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 15 1;
createNode animCurveTA -n "animCurveTA1817";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1818";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1819";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTL -n "animCurveTL621";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTL -n "animCurveTL622";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTL -n "animCurveTL623";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTL -n "animCurveTL624";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.089432696636962142 5 -0.089432696636962142 
		10 -0.081145716287402372 15 -0.072059567379697237;
createNode animCurveTL -n "animCurveTL625";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.090739826238255855 5 0.090739826238255855 
		10 0.13523126348040804 15 0.10860528941614173;
createNode animCurveTL -n "animCurveTL626";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.37820686953638194 5 0.37820686953638194 
		10 0.25525541732193702 15 0.00088390886240813306;
createNode animCurveTA -n "animCurveTA1820";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -178.44479555013268 5 -178.44479555013268 
		10 -181.80605354237352 15 -177.25592113587427;
createNode animCurveTA -n "animCurveTA1821";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 64.348645467164133 5 64.348645467164133 
		10 168.85834103705059 15 175.61546731834773;
createNode animCurveTA -n "animCurveTA1822";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -177.06797680878609 5 -177.06797680878609 
		10 -175.44809965660656 15 -181.17543117470936;
createNode animCurveTL -n "animCurveTL627";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.26314392545677373 5 -0.040468794369370543 
		10 0.21764441145149604 15 0.17655026201706334;
createNode animCurveTL -n "animCurveTL628";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.10074079658300666 5 0.19104471982861476 
		10 0.10983571210126375 15 0.10676264329452093;
createNode animCurveTL -n "animCurveTL629";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.10232611142150212 5 -0.057536084883982923 
		10 -0.064904406754016042 15 -0.073147264740539078;
createNode animCurveTA -n "animCurveTA1823";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.2411000500939884 5 17.224717313701184 
		10 -0.82760133680696057 15 0;
createNode animCurveTA -n "animCurveTA1824";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 120.91731311278465 5 113.5567084791402 
		10 9.1503138867726932 15 25.948901905116408;
createNode animCurveTA -n "animCurveTA1825";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.2347523458486165 5 -8.5771229115663807 
		10 -2.0095494526916142 15 0;
createNode animCurveTA -n "animCurveTA1826";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1827";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1828";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1829";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1830";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1831";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1832";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1833";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1834";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1835";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1836";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1837";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTL -n "animCurveTL630";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
createNode animCurveTL -n "animCurveTL631";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
createNode animCurveTL -n "animCurveTL632";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 5 1 10 1 15 1.1269999742507935;
createNode animCurveTL -n "animCurveTL633";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
createNode animCurveTL -n "animCurveTL634";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
createNode animCurveTL -n "animCurveTL635";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 5 1 10 1 15 1.1269999742507935;
createNode animCurveTL -n "animCurveTL636";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.134945062126369 5 -0.031790024475427482 
		10 0.10318753762627872 15 0.097247464600251146;
createNode animCurveTL -n "animCurveTL637";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.98054198902067657 5 0.97651016190422446 
		10 0.96334271220060108 15 0.9825577053607899;
createNode animCurveTL -n "animCurveTL638";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.19708112465487385 5 0.2910638798563408 
		10 0.0064320760855255035 15 0;
createNode animCurveTA -n "animCurveTA1838";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -181.75712390568867 5 -173.77848169373451 
		10 -176.27925567030778 15 -183.51561099071532;
createNode animCurveTA -n "animCurveTA1839";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 64.721581426356707 5 97.406970196070944 
		10 180.3787826440234 15 179.22286324223975;
createNode animCurveTA -n "animCurveTA1840";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -177.47049933450054 5 -177.46420467386454 
		10 -181.51466885897165 15 -180.18367849931823;
createNode animCurveTA -n "animCurveTA1841";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1842";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1843";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1844";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1845";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1846";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1847";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1848";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1849";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1850";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1851";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1852";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1853";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1854";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1855";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1856";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1857";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1858";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1859";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1860";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1861";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1862";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1863";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1864";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1865";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1866";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTL -n "animCurveTL639";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.5198069948790518 15 -0.5198069948790518;
createNode animCurveTL -n "animCurveTL640";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.72394202659893114 15 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL641";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.36439499068905612 15 0.36439499068905612;
createNode animCurveTA -n "animCurveTA1867";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.7976222737965317 15 7.7976222737965317;
createNode animCurveTA -n "animCurveTA1868";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 30.409274105849079 15 30.409274105849079;
createNode animCurveTA -n "animCurveTA1869";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 64.859940280210893 15 64.859940280210893;
createNode animCurveTL -n "animCurveTL642";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.43524234076486068 15 0.43524234076486068;
createNode animCurveTL -n "animCurveTL643";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.82665738350180629 15 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL644";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.27773886459742925 15 0.27773886459742925;
createNode animCurveTA -n "animCurveTA1870";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1871";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -28.652637602052774 15 -28.652637602052774;
createNode animCurveTA -n "animCurveTA1872";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -64.676908227303443 15 -64.676908227303443;
createNode animCurveTL -n "animCurveTL645";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.050511575999421014 5 0.51088742949305455 
		10 -0.50463972766786358 15 -0.25368378509166484;
createNode animCurveTL -n "animCurveTL646";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.2282359333804407 5 2.5464026137780782 
		10 2.352008141793438 15 2.2026421011163611;
createNode animCurveTL -n "animCurveTL647";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.90766395158927293 5 1.303024768786373 
		10 0.39302303060277383 15 0.0085295933619701902;
createNode animCurveTA -n "animCurveTA1873";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 134.17061414787904 5 268.12374740508557 
		10 160.6499754081286 15 202.0446286644393;
createNode animCurveTA -n "animCurveTA1874";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 26.248045553149087 5 26.025942501031299 
		10 117.28355991241089 15 155.57968670712754;
createNode animCurveTA -n "animCurveTA1875";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 107.36817778262002 5 199.66117837666883 
		10 169.05884783548848 15 242.75973862908975;
createNode animCurveTL -n "animCurveTL648";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.5502285468745024 5 -0.018906252437835933 
		10 0.77123605466896106 15 0.68473570483005786;
createNode animCurveTL -n "animCurveTL649";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.2040502209682593 5 2.1843244375921667 
		10 2.2041880843231096 15 2.1983664203382185;
createNode animCurveTL -n "animCurveTL650";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.0047861638845576957 5 0.017435409807179548 
		10 0.16254235272357093 15 -0.1558733356690748;
createNode animCurveTA -n "animCurveTA1876";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -72.079170570901539 5 -38.21340003185616 
		10 30.300253718764463 15 16.631444046006173;
createNode animCurveTA -n "animCurveTA1877";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 25.431493559211866 5 25.841835758420178 
		10 0.78493955617316402 15 -9.487856524246375;
createNode animCurveTA -n "animCurveTA1878";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -92.331283509628591 5 -69.57763508696155 
		10 -54.471726640864887 15 -62.805960165937073;
createNode animCurveTL -n "animCurveTL651";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.31054502397108613 5 0.31054502397108613 
		10 -0.10212800844106709 15 -0.062337280601809833;
createNode animCurveTL -n "animCurveTL652";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.55640530640609931 5 -0.55640530640609931 
		10 -0.54102419393306622 15 -0.40762644910266188;
createNode animCurveTL -n "animCurveTL653";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.57914122395678103 5 -0.57914122395678103 
		10 -0.90946735956948177 15 -0.93129112588482243;
createNode animCurveTL -n "animCurveTL654";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.047646009069586132 5 -0.11422262436484759 
		10 -0.047646009069586132 15 0.245189189189189;
createNode animCurveTL -n "animCurveTL655";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.70977769184901862 5 -0.50446781311246858 
		10 -0.70977769184901862 15 0;
createNode animCurveTL -n "animCurveTL656";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.64237249774344829 5 -1.0973961480223062 
		10 -0.64237249774344829 15 -1;
createNode animCurveTA -n "animCurveTA1879";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.061808866237340665 5 -0.061808866237340665 
		10 -0.061808866237340665 15 -0.061808866237340665;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1880";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -59.058178941076754 5 -59.058178941076754 
		10 -59.058178941076754 15 -59.058178941076754;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1881";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 16.57914742975785 5 16.57914742975785 
		10 16.57914742975785 15 16.57914742975785;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1882";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 12.253734489678925 5 12.253734489678925 
		10 12.253734489678925 15 12.253734489678925;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1883";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -65.746751280844975 5 -65.746751280844975 
		10 -65.746751280844975 15 -65.746751280844975;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1884";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1885";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 15.711328223519061 5 15.711328223519061 
		10 15.711328223519061 15 15.711328223519061;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1886";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.5572674112203657 5 8.5572674112203657 
		10 8.5572674112203657 15 8.5572674112203657;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1887";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1888";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1889";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1890";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1891";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1892";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1893";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.2533422302317216 5 0 10 -0.63135743097763675 
		15 8.2533422302317216;
	setAttr -s 4 ".kit[1:3]"  1 9 1;
	setAttr -s 4 ".kot[1:3]"  1 9 5;
	setAttr -s 4 ".kix[1:3]"  1 0.9179534912109375 0.44846197962760925;
	setAttr -s 4 ".kiy[1:3]"  0 0.3966880738735199 0.89380192756652832;
	setAttr -s 4 ".kox[1:3]"  1 0.9179534912109375 0;
	setAttr -s 4 ".koy[1:3]"  0 0.3966880738735199 0;
createNode animCurveTA -n "animCurveTA1894";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 23.263402056531085 5 0 10 2.3085835447869996 
		15 23.263402056531085;
	setAttr -s 4 ".kit[1:3]"  1 9 1;
	setAttr -s 4 ".kot[1:3]"  1 9 5;
	setAttr -s 4 ".kix[1:3]"  1 0.6345285177230835 0.24806150794029236;
	setAttr -s 4 ".kiy[1:3]"  0 0.77289944887161255 0.96874427795410156;
	setAttr -s 4 ".kox[1:3]"  1 0.6345285177230835 0;
	setAttr -s 4 ".koy[1:3]"  0 0.77289944887161255 0;
createNode animCurveTA -n "animCurveTA1895";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 20.166277752815617 5 0 10 0.86266758031628532 
		15 20.166277752815617;
	setAttr -s 4 ".kit[1:3]"  1 9 1;
	setAttr -s 4 ".kot[1:3]"  1 9 5;
	setAttr -s 4 ".kix[1:3]"  1 0.68762511014938354 0.25065043568611145;
	setAttr -s 4 ".kiy[1:3]"  0 0.72606593370437622 0.96807765960693359;
	setAttr -s 4 ".kox[1:3]"  1 0.68762511014938354 0;
	setAttr -s 4 ".koy[1:3]"  0 0.72606593370437622 0;
createNode animCurveTA -n "animCurveTA1896";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1897";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1898";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 33.429092416277157 5 33.429092416277157 
		10 33.429092416277157 15 33.429092416277157;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1899";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1900";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1901";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1902";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1903";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1904";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 15 13.994403295754109;
createNode animCurveTA -n "animCurveTA1905";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1906";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1907";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 15 13.994403295754109;
createNode animCurveTA -n "animCurveTA1908";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1909";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1910";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 17.254116939558369 5 17.254116939558369 
		10 17.254116939558369 15 17.254116939558369;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1911";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1912";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1913";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1914";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.71009266045615982 5 -9.5815078686446284 
		10 -9.5688162172274307 15 -0.71009266045615982;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.96683573722839355;
	setAttr -s 4 ".kiy[3]"  -0.25539907813072205;
createNode animCurveTA -n "animCurveTA1915";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.39065484564574865 5 -1.2656233054394754 
		10 7.0846265600455363 15 -0.39065484564574865;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.77934092283248901;
	setAttr -s 4 ".kiy[3]"  -0.62660008668899536;
createNode animCurveTA -n "animCurveTA1916";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.1445984161934568 5 -2.5098739063770856 
		10 -8.3067314352119279 15 8.1445984161934568;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.72107517719268799;
	setAttr -s 4 ".kiy[3]"  0.69285678863525391;
createNode animCurveTA -n "animCurveTA1917";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1918";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1919";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1920";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.0270270270270276 5 39.573436635723134 
		10 13.881739004174225 15 2.0270270270270276;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.94779270887374878;
	setAttr -s 4 ".kiy[3]"  0.31888717412948608;
createNode animCurveTA -n "animCurveTA1921";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.4108692476260059 5 28.272424111075768 
		10 18.464229156998559 15 2.4108692476260059;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.88834899663925171;
	setAttr -s 4 ".kiy[3]"  -0.45916891098022461;
createNode animCurveTA -n "animCurveTA1922";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 13.0432985235726 5 32.11651765391268 
		10 16.979509496058029 15 13.0432985235726;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.66957646608352661;
	setAttr -s 4 ".kiy[3]"  0.74274313449859619;
createNode animCurveTA -n "animCurveTA1923";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 1.8903601258661935 10 -9.8971004586292839 
		15 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.93981879949569702;
	setAttr -s 4 ".kiy[3]"  -0.34167328476905823;
createNode animCurveTA -n "animCurveTA1924";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 -2.5597289571479038 10 -0.40783862799678089 
		15 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.92042249441146851;
	setAttr -s 4 ".kiy[3]"  0.3909250795841217;
createNode animCurveTA -n "animCurveTA1925";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -10.382821061592265 5 2.0168110874036049 
		10 2.6909656336528314 15 -10.382821061592265;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.41705331206321716;
	setAttr -s 4 ".kiy[3]"  -0.9088820219039917;
createNode animCurveTA -n "animCurveTA1926";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1927";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1928";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.080064458283051 5 27.080064458283051 
		10 27.080064458283051 15 27.080064458283051;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1929";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 10.42375496696849 5 0 10 -0.90415047241420232 
		15 10.42375496696849;
	setAttr -s 4 ".kit[1:3]"  1 9 1;
	setAttr -s 4 ".kot[1:3]"  1 9 5;
	setAttr -s 4 ".kix[1:3]"  1 0.87777304649353027 0.3636193573474884;
	setAttr -s 4 ".kiy[1:3]"  0 0.47907671332359314 0.93154764175415039;
	setAttr -s 4 ".kox[1:3]"  1 0.87777304649353027 0;
	setAttr -s 4 ".koy[1:3]"  0 0.47907671332359314 0;
createNode animCurveTA -n "animCurveTA1930";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.7228482558439 5 0 10 2.8124094762730083 
		15 27.7228482558439;
	setAttr -s 4 ".kit[1:3]"  1 9 1;
	setAttr -s 4 ".kot[1:3]"  1 9 5;
	setAttr -s 4 ".kix[1:3]"  1 0.56731796264648438 0.21119317412376404;
	setAttr -s 4 ".kiy[1:3]"  0 0.82349884510040283 0.9774443507194519;
	setAttr -s 4 ".kox[1:3]"  1 0.56731796264648438 0;
	setAttr -s 4 ".koy[1:3]"  0 0.82349884510040283 0;
createNode animCurveTA -n "animCurveTA1931";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 21.576484776388231 5 0 10 0.56241550808605079 
		15 21.576484776388231;
	setAttr -s 4 ".kit[1:3]"  1 9 1;
	setAttr -s 4 ".kot[1:3]"  1 9 5;
	setAttr -s 4 ".kix[1:3]"  1 0.66280168294906616 0.22734682261943817;
	setAttr -s 4 ".kiy[1:3]"  0 0.74879497289657593 0.97381383180618286;
	setAttr -s 4 ".kox[1:3]"  1 0.66280168294906616 0;
	setAttr -s 4 ".koy[1:3]"  0 0.74879497289657593 0;
createNode animCurveTA -n "animCurveTA1932";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1933";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1934";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.911632519594587 5 27.911632519594587 
		10 27.911632519594587 15 27.911632519594587;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1935";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 15 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1936";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 15 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1937";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 7.9420670842661147 15 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1938";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 15 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1939";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 15 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1940";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 7.9420670842661147 15 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1941";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 15 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1942";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 15 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1943";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 7.9420670842661147 15 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
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
connectAttr "mrg_get_out_of_car_close_door_high.st" "clipLibrary2.st[0]";
connectAttr "mrg_get_out_of_car_close_door_high.du" "clipLibrary2.du[0]"
		;
connectAttr "animCurveTL616.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL617.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "animCurveTL618.a" "clipLibrary2.cel[0].cev[2].cevr";
connectAttr "animCurveTL619.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "animCurveTL620.a" "clipLibrary2.cel[0].cev[4].cevr";
connectAttr "animCurveTA1816.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "animCurveTU121.a" "clipLibrary2.cel[0].cev[6].cevr";
connectAttr "animCurveTU122.a" "clipLibrary2.cel[0].cev[7].cevr";
connectAttr "animCurveTU123.a" "clipLibrary2.cel[0].cev[8].cevr";
connectAttr "animCurveTU124.a" "clipLibrary2.cel[0].cev[9].cevr";
connectAttr "animCurveTU125.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU126.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU127.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU128.a" "clipLibrary2.cel[0].cev[13].cevr";
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
// End of mrg-m_get_out_of_car_close_door_high.ma
