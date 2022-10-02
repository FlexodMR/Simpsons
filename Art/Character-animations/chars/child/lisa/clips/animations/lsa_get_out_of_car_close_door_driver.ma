//Maya ASCII 4.0 scene
//Name: lsa_get_out_of_car_close_door_driver.ma
//Last modified: Fri, Oct 11, 2002 02:57:20 PM
requires maya "4.0";
requires "p3dmayaexp" "18.6";
requires "p3dSimpleShader" "18.6";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "lsa_get_out_of_car_close_door_driverSource";
	setAttr ".ihi" 0;
	setAttr ".du" 13;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL657";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTL -n "animCurveTL658";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.080255895459921484 1 0.11354326184585765 
		2 0.1382467252421096 3 0.11447251680844135 4 0.077099309857342729 5 0.050879765014927684 
		6 0.026298161511480449 7 -0.0041457804130193088 8 -0.021745738182881513 9 
		-0.015413036705137136 10 -0.001724448667775933 11 0.014285873887156986 12 
		0.027583778917616479 13 0.033135114381557439;
createNode animCurveTL -n "lsa_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.38327682551190984 1 0.43401890844225127 
		2 0.47551497856459612 3 0.44415534669227003 4 0.3651701355018605 5 0.21630949773327815 
		6 0.076403632589739687 7 0.039311952757835292 8 0.037697013554961661 9 0.026791048958554761 
		10 0.016569005198587908 11 0.0080302423813283352 12 0.0021741206130432857 
		13 0;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 88.879633345488045 1 68.484999181445502 
		2 43.290879102686773 3 29.657928171958574 4 18.743373542065953 5 6.8291450765766983 
		6 -5.0982101752959474 7 -20.845587790180371 8 -29.750727835533954 9 -25.051486327229721 
		10 -16.102976634170002 11 -5.9461708848276125 12 2.3779587923245757 13 5.8284402688137176;
createNode animCurveTU -n "animCurveTU129";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTU -n "animCurveTU130";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTU -n "animCurveTU131";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTU -n "animCurveTU132";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTU -n "animCurveTU133";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTU -n "animCurveTU134";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTU -n "animCurveTU135";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 1;
createNode animCurveTU -n "animCurveTU136";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 1;
createNode animCurveTA -n "animCurveTA1900";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1901";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1902";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTL -n "animCurveTL662";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTL -n "animCurveTL663";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTL -n "animCurveTL664";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTL -n "animCurveTL665";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.16956905984264883 2 0.16956905984264883 
		4 0.16956905984264883 6 -0.021785915323025682 8 -0.17220374723958892 13 -0.21594587158542247;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL666";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.14204015966021652 2 0.14204015966021652 
		4 0.14204015966021652 6 0.19672321009207999 8 0.1704775518535192 13 0.1380615615975922;
	setAttr -s 6 ".kit[4:5]"  1 3;
	setAttr -s 6 ".kot[4:5]"  1 3;
	setAttr -s 6 ".kix[4:5]"  0.024994779378175735 1;
	setAttr -s 6 ".kiy[4:5]"  -0.99968749284744263 0;
	setAttr -s 6 ".kox[4:5]"  0.024994693696498871 1;
	setAttr -s 6 ".koy[4:5]"  -0.99968761205673218 0;
createNode animCurveTL -n "animCurveTL667";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.097427438237216 2 1.097427438237216 
		4 1.097427438237216 6 0.53447966462689123 8 0.00078430246903575811 13 0.00078430246903575811;
	setAttr -s 6 ".kit[4:5]"  3 3;
	setAttr -s 6 ".kot[4:5]"  3 3;
createNode animCurveTA -n "animCurveTA1903";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -375.98082634113621 2 -358.98230662052481 
		4 -359.71051472936074 6 -343.78760382719003 8 -356.30510582348501 13 -356.30510582348501;
createNode animCurveTA -n "animCurveTA1904";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 91.029007103502906 2 73.836695331369143 
		4 20.608876894982568 6 7.2373826617214316 8 5.066135686458634 13 5.066135686458634;
	setAttr -s 6 ".kit[3:5]"  1 9 9;
	setAttr -s 6 ".kot[3:5]"  1 9 9;
	setAttr -s 6 ".kix[3:5]"  0.82231223583221436 0.98706698417663574 
		1;
	setAttr -s 6 ".kiy[3:5]"  -0.56903654336929321 -0.16030845046043396 
		0;
	setAttr -s 6 ".kox[3:5]"  0.82231229543685913 0.98706698417663574 
		1;
	setAttr -s 6 ".koy[3:5]"  -0.56903648376464844 -0.16030845046043396 
		0;
createNode animCurveTA -n "animCurveTA1905";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -371.277986539952 2 -357.05120942584182 
		4 -357.96910308770822 6 -365.87510879708043 8 -359.77428349194275 13 -359.77428349194275;
createNode animCurveTL -n "animCurveTL668";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.12723102470459602 2 0.12723102470459602 
		4 0.24360216318209543 6 0.26418930332320417 8 0.26454489187170815 13 0.26454016861507795;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL669";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.14229740369520921 2 0.26464619784256393 
		4 0.23393607116551451 6 0.14575839546380617 8 0.14060593950573494 13 0.13806192026723146;
	setAttr -s 6 ".kit[3:5]"  1 3 3;
	setAttr -s 6 ".kot[3:5]"  1 3 3;
	setAttr -s 6 ".kix[3:5]"  0.04480530321598053 1 1;
	setAttr -s 6 ".kiy[3:5]"  -0.99899572134017944 0 0;
	setAttr -s 6 ".kox[3:5]"  0.044805452227592468 1 1;
	setAttr -s 6 ".koy[3:5]"  -0.99899572134017944 0 0;
createNode animCurveTL -n "animCurveTL670";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.72810231057739006 2 0.72810231057739006 
		4 0.31612415574650882 6 -0.064904406754016042 8 -0.0649 13 -0.064904406754016042;
	setAttr -s 6 ".kit[3:5]"  3 9 3;
	setAttr -s 6 ".kot[3:5]"  3 9 3;
createNode animCurveTA -n "animCurveTA1906";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 174.08624265487845 2 27.919884125044984 
		4 35.946713855059755 6 0 8 -0.16069276704424185 13 0;
	setAttr -s 6 ".kit[4:5]"  3 3;
	setAttr -s 6 ".kot[4:5]"  3 3;
createNode animCurveTA -n "animCurveTA1907";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 77.361573251038095 2 58.491392042885806 
		4 25.948901905116429 6 25.948901905116401 8 25.948901905116401 13 13.717778871715204;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1908";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 172.73088895567136 2 -0.46945470598764205 
		4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[1:5]"  3 9 9 9 3;
	setAttr -s 6 ".kot[1:5]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1909";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1910";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1911";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1912";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1913";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1914";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1915";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1916";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1917";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1918";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1919";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1920";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTL -n "animCurveTL671";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL672";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL673";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 2 1 4 1 6 1 8 1 13 1;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL674";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL675";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL676";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 2 1 4 1 6 1 8 1 13 1;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL677";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.1852234316132543 2 0.31906108220330981 
		4 0.17793831425034851 6 0.060693805637101549 8 -0.050187219594454789 13 0.076472881617957691;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL678";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.9704149019867897 2 0.94398942485075565 
		4 0.92500695028803281 6 0.86345686750096806 8 0.89728606343677331 13 0.96147551361829786;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL679";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.88456864722919493 2 1.0974460581182048 
		4 0.84278002547624742 6 0.17633275331227244 8 0.087001337063247239 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1921";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -39.237566114937849 2 14.115305953338238 
		4 6.4405715946507085 6 5.4190830080024321 8 5.0053970193082282 13 -0.62843630316474508;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1922";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 88.879633345488045 2 43.290879102686773 
		4 18.743373542065957 6 -5.0982101752959457 8 -29.750727835533947 13 5.8284402688137167;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1923";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -31.471029442794819 2 -0.95679763148460284 
		4 5.1634214270386511 6 0.54358275456367999 8 2.9563955936336086 13 1.295636019309746;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1924";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1925";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1926";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1927";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1928";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1929";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1930";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1931";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1932";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1933";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1934";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1935";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1936";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1937";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1938";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1939";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1940";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1941";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1942";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1943";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1944";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1945";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1946";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1947";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1948";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1949";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTL -n "animCurveTL680";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 -0.5198069948790518;
createNode animCurveTL -n "animCurveTL681";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL682";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0.36439499068905612;
createNode animCurveTA -n "animCurveTA1950";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 7.7976222737965317;
createNode animCurveTA -n "animCurveTA1951";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 30.409274105849079;
createNode animCurveTA -n "animCurveTA1952";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 64.859940280210893;
createNode animCurveTL -n "animCurveTL683";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0.43524234076486068;
createNode animCurveTL -n "animCurveTL684";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL685";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0.27773886459742925;
createNode animCurveTA -n "animCurveTA1953";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1954";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 -28.652637602052774;
createNode animCurveTA -n "animCurveTA1955";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 -64.676908227303443;
createNode animCurveTL -n "animCurveTL686";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.2896700025539603 2 0.041499285372137956 
		4 -0.82415140002192244 8 -0.7246466247099308 13 -0.75854111686822778;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL687";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.178034196031452 2 1.1669775377221685 
		4 1.2110162669307252 8 1.0846904346086543 13 1.1932952672205326;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL688";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.1032474700393866 2 2.1841601514734879 
		4 1.1962120303937906 8 -0.22551934719481975 13 0.14314299916678522;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1956";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -273.44301664312098 2 -331.05077504175671 
		4 -360.48048668641269 8 -370.25422163460297 13 -5.7993291745893343;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1957";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.753397523637741 2 21.279751825887256 
		4 -11.969566747283121 8 -22.154462477712006 13 1.228264010471275;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1958";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -266.95918275971843 2 -292.70861874789227 
		4 -294.1325728969278 8 -301.66325059509711 13 60.456694896838378;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL689";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.24094058915794578 2 1.7221422667524373 
		4 1.3323014620167721 6 0.43660350743874704 8 -0.52518242666326953 10 0.37243238315162608 
		13 0.97384023505055983;
	setAttr -s 7 ".kit[1:6]"  1 9 9 9 9 3;
	setAttr -s 7 ".kot[1:6]"  1 9 9 9 9 3;
	setAttr -s 7 ".kix[1:6]"  0.02194344624876976 0.0010371780954301357 
		0.00071781669976189733 0.020773293450474739 0.0011118347756564617 1;
	setAttr -s 7 ".kiy[1:6]"  0.99975919723510742 -0.99999946355819702 
		-0.9999997615814209 -0.99978423118591309 0.99999940395355225 0;
	setAttr -s 7 ".kox[1:6]"  0.021943425759673119 0.0010371780954301357 
		0.00071781669976189733 0.020773293450474739 0.0011118347756564617 1;
	setAttr -s 7 ".koy[1:6]"  0.99975919723510742 -0.99999946355819702 
		-0.9999997615814209 -0.99978423118591309 0.99999940395355225 0;
createNode animCurveTL -n "animCurveTL690";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.2199203723443715 2 1.8477354389376743 
		4 2.000722860929494 6 1.6863799048594967 8 1.7036999239077313 10 1.253450943065554 
		13 1.2525965505547216;
	setAttr -s 7 ".kit[1:6]"  1 9 9 9 9 3;
	setAttr -s 7 ".kot[1:6]"  1 9 9 9 9 3;
	setAttr -s 7 ".kix[1:6]"  0.0024925624020397663 0.0082630431279540062 
		0.0044889459386467934 0.003079782472923398 0.0036946195177733898 1;
	setAttr -s 7 ".kiy[1:6]"  0.99999690055847168 -0.9999658465385437 
		-0.99998992681503296 -0.99999523162841797 -0.99999314546585083 0;
	setAttr -s 7 ".kox[1:6]"  0.0024924995377659798 0.0082630431279540062 
		0.0044889459386467934 0.003079782472923398 0.0036946195177733898 1;
	setAttr -s 7 ".koy[1:6]"  0.99999690055847168 -0.9999658465385437 
		-0.99998992681503296 -0.99999523162841797 -0.99999314546585083 0;
createNode animCurveTL -n "animCurveTL691";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.43635608522085506 2 1.6884859120338664 
		4 1.7626452836903677 6 1.0837845319729029 8 1.0130435086491647 10 0.62057618753547905 
		13 -0.097994651149805143;
	setAttr -s 7 ".kit[1:6]"  1 1 9 9 9 3;
	setAttr -s 7 ".kot[1:6]"  1 1 9 9 9 3;
	setAttr -s 7 ".kix[1:6]"  0.0009852823568508029 0.002672695554792881 
		0.0017787193646654487 0.0028784624300897121 0.0015000967541709542 1;
	setAttr -s 7 ".kiy[1:6]"  0.9999995231628418 -0.99999642372131348 
		-0.99999839067459106 -0.99999582767486572 -0.99999886751174927 0;
	setAttr -s 7 ".kox[1:6]"  0.00098529178649187088 0.0026727032382041216 
		0.0017787193646654487 0.0028784624300897121 0.0015000967541709542 1;
	setAttr -s 7 ".koy[1:6]"  0.9999995231628418 -0.99999642372131348 
		-0.99999839067459106 -0.99999582767486572 -0.99999886751174927 0;
createNode animCurveTA -n "animCurveTA1959";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 261.7260243159331 2 300.7132934556962 
		4 300.7132934556962 6 331.0235222266287 8 443.72550828566489 10 332.7484343274316 
		13 -12.222987645962956;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTA -n "animCurveTA1960";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 45.008042607101586 2 -12.133442627944801 
		4 -12.133442627944801 6 -71.917845588531208 8 -56.700050392933925 10 -37.954865401716468 
		13 19.681044208515029;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTA -n "animCurveTA1961";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 265.6340570691703 2 351.40187982778605 
		4 351.40187982778605 6 324.66609436312882 8 216.84978862256523 10 324.44998118340629 
		13 -65.119655550709012;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTL -n "animCurveTL692";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.31054502397108613 2 0.31054502397108613 
		4 0.679929438736388 6 0.50398116548755967 8 0.30493038065203715 13 0.10167917362943303;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL693";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.55640530640609931 2 -0.55640530640609931 
		4 -0.58260810733110913 6 -0.39863743916248945 8 -0.3874265124899427 13 -0.40762644910266188;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL694";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.57914122395678103 2 -0.57914122395678103 
		4 -0.66309486839399645 6 -0.7761129410128248 8 -0.85665445141535856 13 -0.93129112588482243;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL695";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.66768647579175422 2 -0.66768647579175422 
		4 -0.17523930523423681 6 -0.145692475481941 8 -0.076454516312516679 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL696";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.67301253925255977 2 -0.67301253925255977 
		4 -0.00072435787012014696 6 0.039612935291223068 8 0.024818445825645647 13 
		0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL697";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.49850301940481012 2 -0.49850301940481012 
		4 -0.80201435285893019 6 -0.82022503115751455 8 -0.90413945525160533 13 -1;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1962";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.061808866237340665 2 -0.061808866237337522 
		4 -0.061808866237337522 6 -0.061808866237337522 8 -0.061808866237339083 13 
		-0.061808866237340665;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1963";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -59.058178941076754 2 -59.058178941076754 
		4 -59.058178941076754 6 -59.058178941076754 8 -59.058178941076754 13 -59.058178941076754;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1964";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 16.57914742975785 2 16.579147429757843 
		4 16.579147429757843 6 16.579147429757843 8 16.579147429757846 13 16.57914742975785;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1965";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 12.253734489678925 2 12.253734489678925 
		4 12.253734489678925 6 12.253734489678925 8 12.253734489678925 13 12.253734489678925;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1966";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -65.746751280844975 2 -65.746751280844961 
		4 -65.746751280844961 6 -65.746751280844961 8 -65.746751280844975 13 -65.746751280844975;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1967";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1968";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 15.711328223519061 2 15.711328223519057 
		4 15.711328223519057 6 15.711328223519057 8 15.711328223519057 13 15.711328223519061;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1969";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.5572674112203657 2 8.5572674112203622 
		4 8.5572674112203622 6 8.5572674112203622 8 8.5572674112203622 13 8.5572674112203657;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1970";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1971";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1972";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1973";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1974";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1975";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1976";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -121.24398976748977 13 8.2533422302317234;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTA -n "animCurveTA1977";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 28.612774017129329 13 23.263402056531085;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTA -n "animCurveTA1978";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 17.632837226638049 13 20.166277752815617;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTA -n "animCurveTA1979";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1980";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1981";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 33.429092416277157 2 33.429092416277157 
		4 33.429092416277157 6 33.429092416277157 8 33.429092416277157 13 33.429092416277157;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1982";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1983";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1984";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1985";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1986";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1987";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 13.994403295754109;
createNode animCurveTA -n "animCurveTA1988";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1989";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1990";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 13.994403295754109;
createNode animCurveTA -n "animCurveTA1991";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1992";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1993";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 17.254116939558369 2 17.254116939558369 
		4 17.254116939558369 6 17.254116939558369 8 17.254116939558369 13 17.254116939558369;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1994";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1995";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1996";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1997";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.65073001024951671 2 -29.379259171673748 
		4 -36.515129098508311 6 -24.809666427741885 8 -12.942987686442743 13 0.65073001024951671;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1998";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 4.2368721935960938 2 0.29710718013218351 
		4 8.0193793976003676 6 15.976289169045954 8 11.835960743668345 13 4.2368721935960938;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1999";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.6995264082587447 2 0.96586030651003341 
		4 6.365537851650819 6 -3.7088419425485806 8 0.78667949609524512 13 2.6995264082587447;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA2000";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 -3.9388735369945089 4 0 6 
		0.23633240840109546 8 0.14770774612807708 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA2001";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 1.8242021628094227 4 0 6 
		-0.10945212443573141 8 -0.068407573498613802 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA2002";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 -3.4768422591718746 4 0 6 
		0.20861051990451415 8 0.13038156631091305 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA2003";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0.16788504588939113 4 -1.2821508722957302 
		6 -9.3414390941578826 8 1.0260892085911693 13 4.0198472869727979;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA2004";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 -28.177964601171336 4 -34.592236725841374 
		6 -16.101570746525564 8 -6.7940238405294489 13 9.1335573833666519;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA2005";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 6.6786334979782902 2 -11.997228454314529 
		4 -9.0177477062694198 6 10.782989100949166 8 -6.5386371988712124 13 -2.2752136084709531;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA2006";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.8903601258661935 2 0.26401146988271113 
		4 10.620934651579155 6 -0.63894688216937967 8 3.5810552572110996 13 1.8903601258661935;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA2007";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.5597289571479038 2 12.173202612054125 
		4 4.2675310995034259 6 -5.1850848311064954 8 -1.8377920809524408 13 -2.5597289571479038;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA2008";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.0168110874036049 2 5.8044567186189209 
		4 -2.5690730322880704 6 -14.743474393487343 8 1.018742769217841 13 2.0168110874036049;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA2009";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA2010";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA2011";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.080064458283051 2 27.080064458283051 
		4 27.080064458283051 6 27.080064458283051 8 27.080064458283051 13 27.080064458283051;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA2012";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 143.71460997127252 13 10.423754966968481;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTA -n "animCurveTA2013";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 27.804554996454378 13 27.7228482558439;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTA -n "animCurveTA2014";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 29.452980944098744 13 21.576484776388224;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTA -n "animCurveTA2015";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA2016";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA2017";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.911632519594587 2 27.911632519594587 
		4 27.911632519594587 6 27.911632519594587 8 27.911632519594587 13 27.911632519594587;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
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
connectAttr "lsa_get_out_of_car_close_door_driverSource.st" "clipLibrary1.st[0]"
		;
connectAttr "lsa_get_out_of_car_close_door_driverSource.du" "clipLibrary1.du[0]"
		;
connectAttr "animCurveTL657.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL658.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "lsa_Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU129.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU130.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU131.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU132.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU133.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU134.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU135.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU136.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA1900.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA1901.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA1902.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL662.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL663.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL664.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL665.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL666.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL667.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA1903.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA1904.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA1905.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL668.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL669.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL670.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA1906.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA1907.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA1908.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA1909.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA1910.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA1911.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA1912.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA1913.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA1914.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA1915.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA1916.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA1917.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA1918.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA1919.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA1920.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL671.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL672.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL673.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL674.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL675.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL676.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL677.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL678.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL679.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA1921.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA1922.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA1923.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA1924.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA1925.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA1926.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA1927.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA1928.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA1929.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA1930.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA1931.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA1932.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA1933.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA1934.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA1935.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA1936.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA1937.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA1938.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA1939.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA1940.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA1941.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA1942.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA1943.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA1944.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA1945.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA1946.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA1947.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA1948.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA1949.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL680.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL681.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL682.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA1950.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA1951.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA1952.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL683.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL684.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL685.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA1953.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA1954.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA1955.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL686.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL687.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL688.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA1956.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA1957.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA1958.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL689.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL690.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL691.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA1959.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA1960.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA1961.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL692.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL693.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL694.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL695.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL696.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL697.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA1962.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA1963.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA1964.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA1965.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA1966.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA1967.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA1968.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA1969.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA1970.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA1971.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA1972.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1973.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1974.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1975.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA1976.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1977.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1978.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1979.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1980.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1981.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1982.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1983.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1984.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA1985.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA1986.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA1987.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA1988.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA1989.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA1990.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1991.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1992.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1993.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1994.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1995.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1996.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1997.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1998.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1999.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA2000.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA2001.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA2002.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA2003.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA2004.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA2005.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA2006.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA2007.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA2008.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA2009.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA2010.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA2011.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA2012.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA2013.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA2014.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA2015.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA2016.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA2017.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of lsa_get_out_of_car_close_door_driver.ma
