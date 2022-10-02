//Maya ASCII 4.0 scene
//Name: cdr-m_turn_right.ma
//Last modified: Tue, Aug 06, 2002 02:34:53 PM
requires maya "4.0";
requires "p3dDeformer" "17.1.1.0";
requires "p3dmayaexp" "17.9.1.0";
requires "p3dSimpleShader" "17.1";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "cdr_turn_right";
	setAttr ".ihi" 0;
	setAttr ".du" 20;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL575";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kot[0:1]"  5 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL576";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 20 1;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kot[0:1]"  5 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL577";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.62276245245106443 20 -0.62276245245106443;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL578";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL579";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.44556925341531151 20 0.44556925341531151;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1583";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU109";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU110";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU111";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU112";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU113";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU114";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU115";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU116";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1584";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1585";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1586";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL580";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL581";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL582";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL583";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.635760016530293 10 -1.635760016530293 
		20 -1.635760016530293;
createNode animCurveTL -n "animCurveTL584";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.79733745153385938 10 0.79733745153385938 
		20 0.79733745153385938;
createNode animCurveTL -n "animCurveTL585";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.6031411449878863 10 1.6031411449878863 
		20 1.6031411449878863;
createNode animCurveTA -n "animCurveTA1587";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA1588";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -14.260733409455984 10 -14.260733409455984 
		20 -14.260733409455984;
createNode animCurveTA -n "animCurveTA1589";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTL -n "animCurveTL586";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.1582036071592778 10 -1.1582036071592778 
		20 -1.1582036071592778;
createNode animCurveTL -n "animCurveTL587";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.8024274637299138 10 0.8024274637299138 
		20 0.8024274637299138;
createNode animCurveTL -n "animCurveTL588";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.6023458233856847 10 1.6023458233856847 
		20 1.6023458233856847;
createNode animCurveTA -n "animCurveTA1590";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.7149195703006082 10 -2.7149195703006082 
		20 -2.7149195703006082;
createNode animCurveTA -n "animCurveTA1591";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 9.448854147766081 10 9.448854147766081 
		20 9.448854147766081;
createNode animCurveTA -n "animCurveTA1592";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.9042146334359309 10 -2.9042146334359309 
		20 -2.9042146334359309;
createNode animCurveTA -n "animCurveTA1593";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1594";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1595";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1596";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1597";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1598";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1599";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTA -n "animCurveTA1600";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTA -n "animCurveTA1601";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTA -n "animCurveTA1602";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTA -n "animCurveTA1603";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTA -n "animCurveTA1604";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTL -n "animCurveTL589";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.028577078352958335 10 0.028577078352958335 
		20 0.028577078352958335;
createNode animCurveTL -n "animCurveTL590";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.6265256146554018 10 0.6265256146554018 
		20 0.6265256146554018;
createNode animCurveTL -n "animCurveTL591";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.1827937027824305 10 1.1827937027824305 
		20 1.1827937027824305;
createNode animCurveTL -n "animCurveTL592";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.011621961304049206 10 0.011621961304049206 
		20 0.011621961304049206;
createNode animCurveTL -n "animCurveTL593";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.53592894662340362 10 0.53592894662340362 
		20 0.53592894662340362;
createNode animCurveTL -n "animCurveTL594";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.1714982742260704 10 1.1714982742260704 
		20 1.1714982742260704;
createNode animCurveTL -n "animCurveTL595";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.4056785302309036 10 -1.4056785302309036 
		20 -1.4056785302309036;
createNode animCurveTL -n "animCurveTL596";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.96452787963755071 10 0.96452787963755071 
		20 0.96452787963755071;
createNode animCurveTL -n "animCurveTL597";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.0057239815788857 10 1.0057239815788857 
		20 1.0057239815788857;
createNode animCurveTA -n "animCurveTA1605";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -19.688418588621207 10 -10.591861204381829 
		20 -19.688418588621207;
createNode animCurveTA -n "animCurveTA1606";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.6085540494966313 10 4.8238408375492883 
		20 1.6085540494966313;
createNode animCurveTA -n "animCurveTA1607";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.23076428718713959 10 -2.0854886040173324 
		20 -0.23076428718713959;
createNode animCurveTA -n "animCurveTA1608";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1609";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1610";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1611";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1612";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1613";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1614";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1615";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1616";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1617";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1618";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1619";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1620";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1621";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1622";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1623";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1624";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1625";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1626";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1627";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1628";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA1629";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA1630";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA1631";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -5.6803276403432976 10 -5.6803276403432976 
		20 -5.6803276403432976;
createNode animCurveTA -n "animCurveTA1632";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -6.1570151121354488 10 -6.1570151121354488 
		20 -6.1570151121354488;
createNode animCurveTA -n "animCurveTA1633";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 5.3480278027016865 10 5.3480278027016865 
		20 5.3480278027016865;
createNode animCurveTL -n "animCurveTL598";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 -0.32620582435380047 1 -0.35483460680855561 
		2 -0.38833300662790665 3 -0.42516962761540328 4 -0.46349365646847307 5 -0.50122851395411039 
		6 -0.53622787771323011 7 -0.56643844167886381 8 -0.59000715303549245 9 -0.60528692234454073 
		10 -0.61073077023209632 11 -0.60528692234454018 12 -0.59000715303549245 13 
		-0.56643844167886381 14 -0.53622787771323011 15 -0.50122851395411039 16 -0.46349365646847307 
		17 -0.42516962761540356 18 -0.38833300662790665 19 -0.35483460680855589 20 
		-0.32620582435380047;
createNode animCurveTL -n "animCurveTL599";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0.033439979479082178 1 0.084260599266390429 
		2 0.14014325905485434 3 0.1974895108280596 4 0.25291875708661171 5 0.30352898684779478 
		6 0.34709887645984827 7 0.3821574568575683 8 0.40787716595910595 9 0.42378326044833642 
		10 0.42930298339031409 11 0.42378326044833659 12 0.40787716595910595 13 0.38215745685756775 
		14 0.34709887645984827 15 0.30352898684779478 16 0.25291875708661143 17 0.19748951082805932 
		18 0.14014325905485411 19 0.08426059926638961 20 0.033439979479082178;
createNode animCurveTL -n "animCurveTL600";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0.90790943701675286 1 0.88849207439979738 
		2 0.86138944413207796 3 0.82650057626596951 4 0.78481296326344774 5 0.73849260906942737 
		6 0.69079258958593648 7 0.64580651303531034 8 0.60811770782428742 9 0.58239723478457595 
		10 0.57297805850180161 11 0.58239723478457806 12 0.60811770782428742 13 0.64580651303531034 
		14 0.69079258958593648 15 0.73849260906942737 16 0.78481296326344818 17 0.82650057626596951 
		18 0.86138944413207708 19 0.88849207439979738 20 0.90790943701675286;
createNode animCurveTA -n "animCurveTA1634";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 -88.351056643826297 1 -88.351056643826297 
		2 -88.351056643826297 3 -88.351056643826297 4 -88.351056643826297 5 -88.351056643826297 
		6 -88.351056643826297 7 -88.351056643826297 8 -88.351056643826297 9 -88.351056643826297 
		10 -88.351056643826297 11 -88.351056643826297 12 -88.351056643826297 13 -88.351056643826297 
		14 -88.351056643826297 15 -88.351056643826297 16 -88.351056643826297 17 -88.351056643826297 
		18 -88.351056643826297 19 -88.351056643826297 20 -88.351056643826297;
createNode animCurveTA -n "animCurveTA1635";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 72.845017468296163 1 72.845017468296163 
		2 72.845017468296163 3 72.845017468296163 4 72.845017468296163 5 72.845017468296163 
		6 72.845017468296163 7 72.845017468296163 8 72.845017468296163 9 72.845017468296163 
		10 72.845017468296163 11 72.845017468296163 12 72.845017468296163 13 72.845017468296163 
		14 72.845017468296163 15 72.845017468296163 16 72.845017468296163 17 72.845017468296163 
		18 72.845017468296163 19 72.845017468296163 20 72.845017468296163;
createNode animCurveTA -n "animCurveTA1636";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 -5.9672648047588934 1 -5.9672648047588934 
		2 -5.9672648047588934 3 -5.9672648047588934 4 -5.9672648047588934 5 -5.9672648047588934 
		6 -5.9672648047588934 7 -5.9672648047588934 8 -5.9672648047588934 9 -5.9672648047588934 
		10 -5.9672648047588934 11 -5.9672648047588934 12 -5.9672648047588934 13 -5.9672648047588934 
		14 -5.9672648047588934 15 -5.9672648047588934 16 -5.9672648047588934 17 -5.9672648047588934 
		18 -5.9672648047588934 19 -5.9672648047588934 20 -5.9672648047588934;
createNode animCurveTL -n "animCurveTL601";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0.3375313639061831 1 0.30950382041413294 
		2 0.27578256511123173 3 0.23764954244275471 4 0.1968302975278759 5 0.15543275936804818 
		6 0.11584469436960732 7 0.080617348285183119 8 0.05235480457683863 9 0.03362043547297347 
		10 0.026860914837225778 11 0.033620435472973609 12 0.05235480457683863 13 
		0.080617348285183119 14 0.11584469436960732 15 0.15543275936804846 16 0.1968302975278759 
		17 0.23764954244275416 18 0.27578256511123117 19 0.30950382041413249 20 0.3375313639061831;
createNode animCurveTL -n "animCurveTL602";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0.058222062335098031 1 0.081888670290833424 
		2 0.10515526836807258 3 0.12603451210329072 4 0.1432507584910698 5 0.15625298829246476 
		6 0.16513562895248318 7 0.17049353172408832 8 0.17323130281221022 9 0.17433475646709121 
		10 0.17459963728164279 11 0.1743347564670919 12 0.17323130281221022 13 0.17049353172408832 
		14 0.16513562895248318 15 0.15625298829246478 16 0.1432507584910698 17 0.12603451210329081 
		18 0.10515526836807236 19 0.081888670290833188 20 0.058222062335098031;
createNode animCurveTL -n "animCurveTL603";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0.9586593493378438 1 0.92636245206672752 
		2 0.89078928560521609 3 0.85396749095983016 4 0.81772596884686255 5 0.78365701756504158 
		6 0.75313196932247428 7 0.72736294681518376 8 0.70748796948236958 9 0.69465396591931383 
		10 0.69008388609412707 11 0.6946539659193135 12 0.70748796948236958 13 0.72736294681518376 
		14 0.75313196932247428 15 0.78365701756504125 16 0.81772596884686277 17 0.85396749095983016 
		18 0.89078928560521586 19 0.92636245206672818 20 0.9586593493378438;
createNode animCurveTA -n "animCurveTA1637";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 -51.980122734548807 1 -51.980122734548807 
		2 -51.980122734548807 3 -51.980122734548807 4 -51.980122734548807 5 -51.980122734548807 
		6 -51.980122734548807 7 -51.980122734548807 8 -51.980122734548807 9 -51.980122734548807 
		10 -51.980122734548807 11 -51.980122734548807 12 -51.980122734548807 13 -51.980122734548807 
		14 -51.980122734548807 15 -51.980122734548807 16 -51.980122734548807 17 -51.980122734548807 
		18 -51.980122734548807 19 -51.980122734548807 20 -51.980122734548807;
createNode animCurveTA -n "animCurveTA1638";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 -58.058899197766955 1 -58.058899197766955 
		2 -58.058899197766955 3 -58.058899197766955 4 -58.058899197766955 5 -58.058899197766955 
		6 -58.058899197766955 7 -58.058899197766955 8 -58.058899197766955 9 -58.058899197766955 
		10 -58.058899197766955 11 -58.058899197766955 12 -58.058899197766955 13 -58.058899197766955 
		14 -58.058899197766955 15 -58.058899197766955 16 -58.058899197766955 17 -58.058899197766955 
		18 -58.058899197766955 19 -58.058899197766955 20 -58.058899197766955;
createNode animCurveTA -n "animCurveTA1639";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 -56.507750578683421 1 -56.507750578683421 
		2 -56.507750578683421 3 -56.507750578683421 4 -56.507750578683421 5 -56.507750578683421 
		6 -56.507750578683421 7 -56.507750578683421 8 -56.507750578683421 9 -56.507750578683421 
		10 -56.507750578683421 11 -56.507750578683421 12 -56.507750578683421 13 -56.507750578683421 
		14 -56.507750578683421 15 -56.507750578683421 16 -56.507750578683421 17 -56.507750578683421 
		18 -56.507750578683421 19 -56.507750578683421 20 -56.507750578683421;
createNode animCurveTL -n "animCurveTL604";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.5330905047330146 10 -2.5330905047330146 
		20 -2.5330905047330146;
createNode animCurveTL -n "animCurveTL605";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.0768417541934041 10 2.0768417541934041 
		20 2.0768417541934041;
createNode animCurveTL -n "animCurveTL606";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.0481292103665369 10 2.0481292103665369 
		20 2.0481292103665369;
createNode animCurveTA -n "animCurveTA1640";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -36.332671187907607 10 -36.332671187907607 
		20 -36.332671187907607;
createNode animCurveTA -n "animCurveTA1641";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 76.683613894212968 10 76.683613894212968 
		20 76.683613894212968;
createNode animCurveTA -n "animCurveTA1642";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 83.339653964504663 10 83.339653964504663 
		20 83.339653964504663;
createNode animCurveTL -n "animCurveTL607";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.1344099872624747 10 -1.1344099872624747 
		20 -1.1344099872624747;
createNode animCurveTL -n "animCurveTL608";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.1296110275135671 10 2.1296110275135671 
		20 2.1296110275135671;
createNode animCurveTL -n "animCurveTL609";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.0696046407532309 10 2.0696046407532309 
		20 2.0696046407532309;
createNode animCurveTA -n "animCurveTA1643";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 315.11092321192655 10 315.11092321192655 
		20 315.11092321192655;
createNode animCurveTA -n "animCurveTA1644";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -71.289995585927571 10 -71.289995585927571 
		20 -71.289995585927571;
createNode animCurveTA -n "animCurveTA1645";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -410.61971912325362 10 -410.61971912325362 
		20 -410.61971912325362;
createNode animCurveTL -n "animCurveTL610";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.48508072212835623 10 0.48508072212835623 
		20 0.48508072212835623;
createNode animCurveTL -n "animCurveTL611";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.3461376073222053 10 -1.3461376073222053 
		20 -1.3461376073222053;
createNode animCurveTL -n "animCurveTL612";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.22135527095932556 10 -0.22135527095932556 
		20 -0.22135527095932556;
createNode animCurveTL -n "animCurveTL613";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.578730476483856 10 -0.578730476483856 
		20 -0.578730476483856;
createNode animCurveTL -n "animCurveTL614";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.3751169572549602 10 -1.3751169572549602 
		20 -1.3751169572549602;
createNode animCurveTL -n "animCurveTL615";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.21739896228115529 10 -0.21739896228115529 
		20 -0.21739896228115529;
createNode animCurveTA -n "animCurveTA1646";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.061808866237337522 10 -0.061808866237337522 
		20 -0.061808866237337522;
createNode animCurveTA -n "animCurveTA1647";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -59.058178941076754 10 -59.058178941076754 
		20 -59.058178941076754;
createNode animCurveTA -n "animCurveTA1648";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 16.579147429757843 10 16.579147429757843 
		20 16.579147429757843;
createNode animCurveTA -n "animCurveTA1649";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 12.253734489678925 10 12.253734489678925 
		20 12.253734489678925;
createNode animCurveTA -n "animCurveTA1650";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -65.746751280844961 10 -65.746751280844961 
		20 -65.746751280844961;
createNode animCurveTA -n "animCurveTA1651";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA1652";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 15.711328223519057 10 15.711328223519057 
		20 15.711328223519057;
createNode animCurveTA -n "animCurveTA1653";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.5572674112203622 10 8.5572674112203622 
		20 8.5572674112203622;
createNode animCurveTA -n "animCurveTA1654";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA1655";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA1656";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA1657";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA1658";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA1659";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA1660";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -133.3327622181794 10 -133.3327622181794 
		20 -133.3327622181794;
createNode animCurveTA -n "animCurveTA1661";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 46.995440027015853 10 46.995440027015853 
		20 46.995440027015853;
createNode animCurveTA -n "animCurveTA1662";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -49.838450918042966 10 -49.838450918042966 
		20 -49.838450918042966;
createNode animCurveTA -n "animCurveTA1663";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA1664";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA1665";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 77.428435288625664 10 77.428435288625664 
		20 77.428435288625664;
createNode animCurveTA -n "animCurveTA1666";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1667";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1668";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1669";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1670";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1671";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 20 13.994403295754109;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1672";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1673";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1674";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 20 13.994403295754109;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1675";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA1676";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA1677";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 37.656527956664149 10 37.656527956664149 
		20 37.656527956664149;
createNode animCurveTA -n "animCurveTA1678";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA1679";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA1680";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA1681";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.55766507474896432 10 -0.15347122728665522 
		20 0.55766507474896432;
createNode animCurveTA -n "animCurveTA1682";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.0198239624003347 10 -4.1621839234367197 
		20 2.0198239624003347;
createNode animCurveTA -n "animCurveTA1683";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.5513277031901911 10 9.8155805526178774 
		20 7.5513277031901911;
createNode animCurveTA -n "animCurveTA1684";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.95273800592490165 10 -5.5536035238270296 
		20 -0.95273800592490165;
createNode animCurveTA -n "animCurveTA1685";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.41955881507249082 10 24.633711646514818 
		20 -0.41955881507249082;
createNode animCurveTA -n "animCurveTA1686";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.6634293801101616 10 -12.292546733343952 
		20 1.6634293801101616;
createNode animCurveTA -n "animCurveTA1687";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.0598705588951511 10 -1.0598705588951511 
		20 -1.0598705588951511;
createNode animCurveTA -n "animCurveTA1688";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.26280824457411489 10 -0.26280824457411489 
		20 -0.26280824457411489;
createNode animCurveTA -n "animCurveTA1689";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 6.5086084195154994 10 6.5086084195154994 
		20 6.5086084195154994;
createNode animCurveTA -n "animCurveTA1690";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.47197901174667056 10 4.1160822175880085 
		20 -0.47197901174667056;
createNode animCurveTA -n "animCurveTA1691";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.6163460272109134 10 -7.7844687472769261 
		20 -1.6163460272109134;
createNode animCurveTA -n "animCurveTA1692";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.9660530560192302 10 11.620487710191124 
		20 1.9660530560192302;
createNode animCurveTA -n "animCurveTA1693";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA1694";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA1695";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 56.683882055276051 10 56.683882055276051 
		20 56.683882055276051;
createNode animCurveTA -n "animCurveTA1696";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -94.46830815920822 10 -94.46830815920822 
		20 -94.46830815920822;
createNode animCurveTA -n "animCurveTA1697";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 72.836273346919612 10 72.836273346919612 
		20 72.836273346919612;
createNode animCurveTA -n "animCurveTA1698";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 6.0130362214676891 10 6.0130362214676891 
		20 6.0130362214676891;
createNode animCurveTA -n "animCurveTA1699";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA1700";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA1701";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 44.839776244285055 10 44.839776244285055 
		20 44.839776244285055;
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
	setAttr -s 3 ".sol";
connectAttr "cdr_turn_right.st" "clipLibrary2.st[0]";
connectAttr "cdr_turn_right.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL575.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL576.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "animCurveTL577.a" "clipLibrary2.cel[0].cev[2].cevr";
connectAttr "animCurveTL578.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "animCurveTL579.a" "clipLibrary2.cel[0].cev[4].cevr";
connectAttr "animCurveTA1583.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "animCurveTU109.a" "clipLibrary2.cel[0].cev[6].cevr";
connectAttr "animCurveTU110.a" "clipLibrary2.cel[0].cev[7].cevr";
connectAttr "animCurveTU111.a" "clipLibrary2.cel[0].cev[8].cevr";
connectAttr "animCurveTU112.a" "clipLibrary2.cel[0].cev[9].cevr";
connectAttr "animCurveTU113.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU114.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU115.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU116.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA1584.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA1585.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA1586.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL580.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL581.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL582.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL583.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL584.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL585.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA1587.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA1588.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA1589.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL586.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL587.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL588.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA1590.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA1591.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA1592.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA1593.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA1594.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA1595.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA1596.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA1597.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA1598.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTA1599.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTA1600.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTA1601.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTA1602.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTA1603.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTA1604.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL589.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL590.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL591.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTL592.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTL593.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTL594.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTL595.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTL596.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTL597.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA1605.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA1606.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA1607.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA1608.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA1609.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA1610.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA1611.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA1612.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA1613.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA1614.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA1615.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA1616.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA1617.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA1618.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA1619.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA1620.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA1621.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA1622.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA1623.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA1624.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA1625.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA1626.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA1627.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTA1628.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTA1629.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTA1630.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA1631.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA1632.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA1633.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL598.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL599.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL600.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA1634.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA1635.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA1636.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL601.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL602.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL603.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA1637.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA1638.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA1639.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL604.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL605.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL606.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA1640.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA1641.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA1642.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL607.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL608.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL609.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTA1643.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTA1644.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTA1645.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTL610.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTL611.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTL612.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTL613.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTL614.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTL615.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA1646.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA1647.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA1648.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA1649.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA1650.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA1651.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA1652.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA1653.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA1654.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA1655.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA1656.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA1657.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA1658.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA1659.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA1660.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA1661.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA1662.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA1663.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA1664.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA1665.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA1666.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA1667.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA1668.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA1669.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA1670.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA1671.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA1672.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA1673.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA1674.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA1675.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA1676.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA1677.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA1678.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA1679.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA1680.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA1681.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA1682.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA1683.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA1684.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA1685.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA1686.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA1687.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA1688.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA1689.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA1690.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA1691.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA1692.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA1693.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA1694.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA1695.a" "clipLibrary2.cel[0].cev[161].cevr";
connectAttr "animCurveTA1696.a" "clipLibrary2.cel[0].cev[162].cevr";
connectAttr "animCurveTA1697.a" "clipLibrary2.cel[0].cev[163].cevr";
connectAttr "animCurveTA1698.a" "clipLibrary2.cel[0].cev[164].cevr";
connectAttr "animCurveTA1699.a" "clipLibrary2.cel[0].cev[165].cevr";
connectAttr "animCurveTA1700.a" "clipLibrary2.cel[0].cev[166].cevr";
connectAttr "animCurveTA1701.a" "clipLibrary2.cel[0].cev[167].cevr";
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
// End of cdr-m_turn_right.ma
