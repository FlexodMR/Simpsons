//Maya ASCII 4.0 scene
//Name: brt_jump_dash_take_off.ma
//Last modified: Tue, May 27, 2003 01:50:30 PM
requires maya "4.0";
requires "p3dDeformer" "2.0";
requires "p3dmayaexp" "2.0.3.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "brt_jump_dash_take_offSource";
	setAttr ".ihi" 0;
	setAttr ".du" 6;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL639";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL640";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.013520649960726747 1 0.013520649960726747 
		2 0.013520649960726747 3 0.013520649960726747 4 0.013520649960726747 5 0.013520649960726747 
		6 0.013520649960726747;
createNode animCurveTL -n "Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 5.0859004918073536 1 5.0888246333898026 
		2 5.106066461711718 3 5.1503300821349498 4 5.2195977715489201 5 5.3158872585029453 
		6 5.4579558258487122;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0;
createNode animCurveTU -n "animCurveTU129";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU130";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU131";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU132";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU133";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 3 0;
createNode animCurveTU -n "animCurveTU134";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 3 0;
createNode animCurveTU -n "animCurveTU135";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 3 1;
createNode animCurveTU -n "animCurveTU136";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 3 1;
createNode animCurveTA -n "animCurveTA1804";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1805";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1806";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL644";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL645";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL646";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL647";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.19763288944005308 3 -0.22809301424382589 
		6 -0.33865885403713575;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTL -n "animCurveTL648";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.36956228769602462 3 0.2034451973527025 
		6 0.552082761226801;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTL -n "animCurveTL649";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 11.083276311928465 3 11.391786216253763 
		6 12.484762641388615;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1807";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 68.750149689121002 3 66.753537441737635 
		6 58.970413831872982;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1808";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 -3.5256945963156894 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1809";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 4.8238895241523405 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTL -n "animCurveTL650";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.19697756422115981 3 0.21272156446259907 
		6 0.22583374676208098;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTL -n "animCurveTL651";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.11742628606129618 3 0.1380615615975922 
		6 0.46102228363598591;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTL -n "animCurveTL652";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 11.336616651963634 3 11.318238259942266 
		6 11.683779731012811;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1810";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 86.108267527194343;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1811";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1812";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1813";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1814";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1815";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1816";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1817";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1818";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_Right_Toe_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_Right_Toe_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_Right_Toe_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_Left_Toe_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_Left_Toe_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_Left_Toe_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL653";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 1 9;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL654";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 1 9;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL655";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 3 1 6 1;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 1 9;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL656";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 1 9;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL657";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 1 9;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL658";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 3 1 6 1;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 1 9;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL659";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.03051835782609956 3 0.03051835782609956 
		6 0.03051835782609956;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTL -n "animCurveTL660";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.76074829734573723 3 0.59726134361187688 
		6 0.92714697341349084;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTL -n "animCurveTL661";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 11.479724090761808 3 11.625152402116516 
		6 12.319514918004916;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1825";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 40.92583813237421 3 31.660816129923894 
		6 15.777772212346544;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1826";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1827";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1828";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1829";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1830";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.0984482521620249;
createNode animCurveTA -n "animCurveTA1831";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 18.588300303494186;
createNode animCurveTA -n "animCurveTA1832";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1833";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1834";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -22.686733334985114;
createNode animCurveTA -n "animCurveTA1835";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1836";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1837";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0579251312417479e-005;
createNode animCurveTA -n "animCurveTA1838";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1839";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1840";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.0984482535121209;
createNode animCurveTA -n "animCurveTA1841";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 18.588300300216805;
createNode animCurveTA -n "animCurveTA1842";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1843";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1844";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -22.686733333057838;
createNode animCurveTA -n "animCurveTA1845";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1846";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1847";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0579251312417479e-005;
createNode animCurveTA -n "animCurveTA1848";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1849";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1850";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1851";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1852";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1853";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL668";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.82210850521844403 3 -0.82210850521844403 
		6 -1.0809274673815583;
createNode animCurveTL -n "animCurveTL669";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.1590792946011756 3 1.1590792946011756 
		6 1.9375146490462802;
createNode animCurveTL -n "animCurveTL670";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 14.916013395362574 3 14.916013395362574 
		6 16.254681368998476;
createNode animCurveTA -n "animCurveTA1860";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.3566619347615223 3 7.3566619347615223 
		6 -9.115993314220681;
createNode animCurveTA -n "animCurveTA1861";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 18.103084532249603 3 18.103084532249603 
		6 26.324117884677346;
createNode animCurveTA -n "animCurveTA1862";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.384539512019494 3 27.384539512019494 
		6 34.555108709452107;
createNode animCurveTL -n "animCurveTL671";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.82023325218162457 3 0.82023325218162457 
		6 0.92343519692143572;
createNode animCurveTL -n "animCurveTL672";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.99498110733416445 3 0.99498110733416445 
		6 1.9949033942153824;
createNode animCurveTL -n "animCurveTL673";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 14.921596563371637 3 14.921596563371637 
		6 16.835748093433626;
createNode animCurveTA -n "animCurveTA1863";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.9282143981625879 3 8.9282143981625879 
		6 -9.0703748831085189;
createNode animCurveTA -n "animCurveTA1864";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 23.419278912510141 3 23.419278912510141 
		6 -40.501771671985914;
createNode animCurveTA -n "animCurveTA1865";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -3.9073136135656541 3 -3.9073136135656541 
		6 -16.843539022083927;
createNode animCurveTL -n "animCurveTL674";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 -0.075007643271199492 6 -0.075007643271199492;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTL -n "animCurveTL675";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 -0.0015683274246280649 6 
		-0.0015683274246280649;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTL -n "animCurveTL676";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 3 -0.99523236489475697 6 -0.99523236489475697;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTL -n "animCurveTL677";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.10167917362943303 3 -0.046699535373194809 
		6 -0.046699535373194809;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTL -n "animCurveTL678";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.40762644910266188 3 5.9724781342803249e-005 
		6 5.9724781342803249e-005;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTL -n "animCurveTL679";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.93129112588482243 3 -1.0033873591439757 
		6 -1.0033873591439757;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1866";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -10.587124207154311 3 46.171822403643489 
		6 -22.78039507191296;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1867";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -60.592711499848903 3 -21.447120207264081 
		6 -59.78589307060367;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1868";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.15003680417244974 3 -62.992152333300986 
		6 34.574435665981952;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1869";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 52.350458715167015 3 47.461809804954534 
		6 -4.3077020824181265;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1870";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -49.562109142955329 3 -32.227511792878673 
		6 -49.658336589859132;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1871";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -64.60878798864384 3 -63.299510281091955 
		6 45.957278122761899;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1872";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 72.938873120018542 3 73.532946642668335 
		6 64.255341242982553;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1873";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 59.305463658789549 3 78.398801718513837 
		6 72.208811687058059;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1874";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -17.955810303398234 3 -5.0283522467414592 
		6 72.79493678537078;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1875";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 10.082003051124259 3 33.009681214774616 
		6 35.224795679311441;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1876";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -4.7201893288928654 3 40.275991096737052 
		6 56.771965155298119;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1877";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 20.127263792592359 3 -33.636490799689732 
		6 59.556508727470074;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1878";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 11.615881410206432 3 29.328994901054315 
		6 36.028288837490415;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1879";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.3215928107553504 3 -22.622358173865795 
		6 13.094680882304901;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1880";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 143.15000228576875 3 143.15000228576875 
		6 143.15000228576875;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1881";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 53.910048648242871 3 53.910048648242878 
		6 53.910048648242878;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1882";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 43.127820754253491 3 43.127820754253513 
		6 43.127820754253513;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1883";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1884";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1885";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 86.382238158606057 3 59.219502482153104 
		6 59.219502482153104;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1886";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1887";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1888";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1889";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 26.541511232508352;
createNode animCurveTA -n "animCurveTA1890";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 41.530156331423342;
createNode animCurveTA -n "animCurveTA1891";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 52.545459146006969;
createNode animCurveTA -n "animCurveTA1892";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 37.39895318822164;
createNode animCurveTA -n "animCurveTA1893";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 69.699093005590768;
createNode animCurveTA -n "animCurveTA1894";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 37.87925340126155;
createNode animCurveTA -n "animCurveTA1895";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1896";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1897";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 95.284705327631698 3 66.672206829852314 
		6 66.672206829852314;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1898";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1899";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1900";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1901";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 -1.3600558986621039 6 -0.16135188088572175;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1902";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 -1.7348136322083922 6 -2.1983501567531918;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1903";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.1280947740371978 3 18.025996084384893 
		6 -15.880312516295612;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1904";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1905";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1906";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 14.508952910281577 6 14.508952910281577;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1907";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0.6205628187730865 6 3.5615739804694475;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1908";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 6.1534707642816313 6 5.0593482146838156;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1909";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -18.722937869975638 3 -32.810404800085166 
		6 -3.3664805278333754;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1910";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 -0.70293507907658626 6 -0.70293507907658626;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1911";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 1.2717523854678625 6 1.2717523854678625;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1912";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 10.789123571196804 6 10.789123571196804;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1913";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1914";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1915";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 85.281921116584812 3 61.824373247854581 
		6 61.824373247854581;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1916";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -122.90211145181451 3 -122.90211145181451 
		6 -122.90211145181451;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA1917";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 38.578337509358107 3 38.578337509358107 
		6 38.578337509358107;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1918";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 45.467643381850571 3 45.467643381850564 
		6 45.467643381850564;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1919";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1920";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1921";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 77.470348806333035 3 50.17101925731437 
		6 50.17101925731437;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode clipLibrary -n "clipLibrary1";
	setAttr -s 156 ".cel[0].cev";
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
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -k on ".ra";
	setAttr -k on ".clip";
	setAttr -k on ".edm";
	setAttr -k on ".edl";
	setAttr -k on ".esr";
	setAttr -k on ".ors";
	setAttr -k on ".outf";
	setAttr -k on ".gama";
	setAttr ".top" 478;
	setAttr -k on ".left";
	setAttr -k on ".bot";
	setAttr ".rght" 638;
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
connectAttr "brt_jump_dash_take_offSource.st" "clipLibrary1.st[0]";
connectAttr "brt_jump_dash_take_offSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL639.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL640.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
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
connectAttr "animCurveTA1804.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA1805.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA1806.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL644.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL645.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL646.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL647.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL648.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL649.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA1807.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA1808.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA1809.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL650.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL651.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL652.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA1810.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA1811.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA1812.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA1813.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA1814.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA1815.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA1816.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA1817.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA1818.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "brt_Right_Toe_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[38].cevr"
		;
connectAttr "brt_Right_Toe_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[39].cevr"
		;
connectAttr "brt_Right_Toe_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[40].cevr"
		;
connectAttr "brt_Left_Toe_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[41].cevr"
		;
connectAttr "brt_Left_Toe_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[42].cevr"
		;
connectAttr "brt_Left_Toe_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[43].cevr"
		;
connectAttr "animCurveTL653.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL654.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL655.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL656.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL657.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL658.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL659.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL660.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL661.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA1825.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA1826.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA1827.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA1828.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA1829.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA1830.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA1831.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA1832.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA1833.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA1834.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA1835.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA1836.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA1837.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA1838.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA1839.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA1840.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA1841.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA1842.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA1843.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA1844.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA1845.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA1846.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA1847.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA1848.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA1849.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA1850.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA1851.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA1852.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA1853.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL668.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL669.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL670.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA1860.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA1861.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA1862.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL671.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL672.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL673.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA1863.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA1864.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA1865.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL674.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL675.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL676.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL677.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL678.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL679.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA1866.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA1867.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA1868.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA1869.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA1870.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA1871.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA1872.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA1873.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA1874.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA1875.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA1876.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1877.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1878.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1879.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA1880.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1881.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1882.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1883.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1884.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1885.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1886.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1887.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1888.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA1889.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA1890.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA1891.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA1892.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA1893.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA1894.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1895.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1896.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1897.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1898.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1899.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1900.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1901.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1902.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1903.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1904.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1905.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1906.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1907.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1908.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1909.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1910.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1911.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1912.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1913.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1914.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1915.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA1916.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA1917.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA1918.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA1919.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA1920.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA1921.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of brt_jump_dash_take_off.ma
