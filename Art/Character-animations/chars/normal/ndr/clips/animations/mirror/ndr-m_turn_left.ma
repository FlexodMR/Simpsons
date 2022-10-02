//Maya ASCII 4.0 scene
//Name: ndr-m_turn_left.ma
//Last modified: Mon, Aug 05, 2002 11:48:50 PM
requires maya "4.0";
requires "p3dmayaexp" "17.9.1.0";
requires "p3dSimpleShader" "17.1";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "ndr_turn_left";
	setAttr ".ihi" 0;
	setAttr ".du" 20;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL247";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kot[0:1]"  5 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL248";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 20 1;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kot[0:1]"  5 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL249";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.99398213730509188 20 -0.99398213730509188;
createNode animCurveTL -n "animCurveTL250";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTL -n "animCurveTL251";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.71116663678754255 20 0.71116663678754255;
createNode animCurveTA -n "animCurveTA679";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTU -n "animCurveTU49";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU50";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU51";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU52";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU53";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU54";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU55";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTU -n "animCurveTU56";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTA -n "animCurveTA680";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA681";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA682";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL252";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL253";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL254";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL255";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.635760016530293 10 -1.635760016530293 
		20 -1.635760016530293;
createNode animCurveTL -n "animCurveTL256";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.79733745153385938 10 0.79733745153385938 
		20 0.79733745153385938;
createNode animCurveTL -n "animCurveTL257";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.6031411449878863 10 1.6031411449878863 
		20 1.6031411449878863;
createNode animCurveTA -n "animCurveTA683";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA684";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -14.260733409455984 10 -14.260733409455984 
		20 -14.260733409455984;
createNode animCurveTA -n "animCurveTA685";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTL -n "animCurveTL258";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.1582036071592778 10 -1.1582036071592778 
		20 -1.1582036071592778;
createNode animCurveTL -n "animCurveTL259";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.8024274637299138 10 0.8024274637299138 
		20 0.8024274637299138;
createNode animCurveTL -n "animCurveTL260";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.6023458233856847 10 1.6023458233856847 
		20 1.6023458233856847;
createNode animCurveTA -n "animCurveTA686";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.7149195703006082 10 -2.7149195703006082 
		20 -2.7149195703006082;
createNode animCurveTA -n "animCurveTA687";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 9.448854147766081 10 9.448854147766081 
		20 9.448854147766081;
createNode animCurveTA -n "animCurveTA688";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.9042146334359309 10 -2.9042146334359309 
		20 -2.9042146334359309;
createNode animCurveTA -n "animCurveTA689";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA690";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA691";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA692";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA693";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA694";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL261";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.028577078352958335 10 0.028577078352958335 
		20 0.028577078352958335;
createNode animCurveTL -n "animCurveTL262";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.6265256146554018 10 0.6265256146554018 
		20 0.6265256146554018;
createNode animCurveTL -n "animCurveTL263";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.1827937027824305 10 1.1827937027824305 
		20 1.1827937027824305;
createNode animCurveTL -n "animCurveTL264";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.011621961304049206 10 0.011621961304049206 
		20 0.011621961304049206;
createNode animCurveTL -n "animCurveTL265";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.53592894662340362 10 0.53592894662340362 
		20 0.53592894662340362;
createNode animCurveTL -n "animCurveTL266";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.1714982742260704 10 1.1714982742260704 
		20 1.1714982742260704;
createNode animCurveTL -n "animCurveTL267";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.4056785302309036 10 -1.4056785302309036 
		20 -1.4056785302309036;
createNode animCurveTL -n "animCurveTL268";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.96452787963755071 10 0.96452787963755071 
		20 0.96452787963755071;
createNode animCurveTL -n "animCurveTL269";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.0057239815788857 10 1.0057239815788857 
		20 1.0057239815788857;
createNode animCurveTA -n "animCurveTA695";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -19.688418588621207 10 -16.208764986501116 
		20 -19.688418588621207;
createNode animCurveTA -n "animCurveTA696";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.6085540494966313 10 -2.0023067845085443 
		20 1.6085540494966313;
createNode animCurveTA -n "animCurveTA697";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.23076428718713959 10 -10.303942573287165 
		20 -0.23076428718713959;
createNode animCurveTA -n "animCurveTA698";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA699";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA700";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA701";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA702";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA703";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA704";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA705";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA706";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA707";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA708";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA709";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA710";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA711";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA712";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA713";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA714";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA715";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA716";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA717";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA718";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA719";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA720";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA721";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -5.6803276403432976 10 -5.6803276403432976 
		20 -5.6803276403432976;
createNode animCurveTA -n "animCurveTA722";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -6.1570151121354488 10 -6.1570151121354488 
		20 -6.1570151121354488;
createNode animCurveTA -n "animCurveTA723";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 5.3480278027016865 10 5.3480278027016865 
		20 5.3480278027016865;
createNode animCurveTL -n "animCurveTL270";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 -0.09001344921713951 1 -0.076770969011338938 
		2 -0.053291922132718814 3 -0.01993531293384649 4 0.020435872382449247 5 0.063155533919105555 
		6 0.10295058167013224 7 0.13507492624290876 8 0.15588618343804173 9 0.16267569567514784 
		10 0.15392512500493127 11 0.13157007298852647 12 0.098232722385178592 13 
		0.057173747341882408 14 0.01274951102434045 15 -0.029896440547474867 16 -0.06580727719474623 
		17 -0.091457449345485886 18 -0.10569656138153505 19 -0.097237913416783506 
		20 -0.09001344921713951;
createNode animCurveTL -n "animCurveTL271";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 -0.36699525505436442 1 -0.39614057649474554 
		2 -0.42681062519372676 3 -0.45423099013317286 4 -0.47439518915034001 5 -0.4852757742594862 
		6 -0.48736259394726716 7 -0.4833111247152263 8 -0.47690263398630395 9 -0.47170225453721104 
		10 -0.46968023483695037 11 -0.47015695613473113 12 -0.46990756514665577 13 
		-0.46507920919071594 14 -0.45265351102408291 15 -0.43155820381365573 16 -0.40329421263210591 
		17 -0.37175453545056036 18 -0.34222409454453956 19 -0.35477488051433098 20 
		-0.36699525505436442;
createNode animCurveTL -n "animCurveTL272";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0.80893641101368152 1 0.77649754696755169 
		2 0.74397465983085664 3 0.71372841099368289 4 0.6868303036083846 5 0.66345939019394462 
		6 0.64356461968584455 7 0.62746301816692862 8 0.61611223648439695 9 0.6109899152294288 
		10 0.61333198504402275 11 0.62255794629188799 12 0.63716212849049469 13 0.65574669668242802 
		14 0.67746959999962586 15 0.70209035436810274 16 0.72960892117105047 17 0.75962394615154605 
		18 0.79071134136248122 19 0.80042920269857121 20 0.80893641101368152;
createNode animCurveTA -n "animCurveTA724";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -35.087478750046365 10 -96.848370023943332 
		20 -35.087478750046365;
createNode animCurveTA -n "animCurveTA725";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 66.472370131839611 10 66.472370131839639 
		20 66.472370131839611;
createNode animCurveTA -n "animCurveTA726";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 83.863669147879818 10 83.863669147880117 
		20 83.863669147879818;
createNode animCurveTL -n "animCurveTL273";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0.0709143119679186 1 0.070241320892023396 
		2 0.0596070894293797 3 0.036318299425207104 4 0.00028646412485443305 5 -0.045621339543421867 
		6 -0.095971856258086061 7 -0.14372980729118978 8 -0.18141940048338653 9 -0.20214792324438408 
		10 -0.20117586870829712 11 -0.17929520159997595 12 -0.14207370592588972 13 
		-0.096693773626701049 14 -0.050471867256956675 15 -0.0097525315529463797 
		16 0.02116828937200637 17 0.04072310068175284 18 0.050087682972433642 19 
		0.062012615658164238 20 0.0709143119679186;
createNode animCurveTL -n "animCurveTL274";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 -0.33081234113864422 1 -0.24599700150448858 
		2 -0.14777879975831582 3 -0.042880417863283997 4 0.06103015926031418 5 0.15656863923674039 
		6 0.23783088073172109 7 0.30100646322696861 8 0.34412798711704951 9 0.36601759404270651 
		10 0.36543772027639376 11 0.34249760382960603 12 0.29850316977582397 13 0.23497389942249924 
		14 0.15445255346649475 15 0.0612503652215068 16 -0.038628167642230975 17 
		-0.13828690773692992 18 -0.23106756512302007 19 -0.2830717348989123 20 -0.33081234113864422;
createNode animCurveTL -n "animCurveTL275";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0.85066036297063297 1 0.85921264899658145 
		2 0.86417384005945508 3 0.86352511318029601 4 0.85652077188516818 5 0.84380364686130427 
		6 0.82711396542574422 7 0.80874224047427068 8 0.7909922981151104 9 0.77586540389444392 
		10 0.76541559328642483 11 0.76222560273025952 12 0.76577465955816115 13 0.7741611412300512 
		14 0.78497927710641935 15 0.79571745327205934 16 0.80433945182499944 17 0.80982879738133207 
		18 0.81246349030922038 19 0.83364385522853501 20 0.85066036297063297;
createNode animCurveTA -n "animCurveTA727";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -29.385780402081803 10 13.009685951820492 
		20 -29.385780402081803;
createNode animCurveTA -n "animCurveTA728";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -62.958174689347601 10 -74.262059930538683 
		20 -62.958174689347601;
createNode animCurveTA -n "animCurveTA729";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -65.616366301272251 10 -71.27092601988349 
		20 -65.616366301272251;
createNode animCurveTL -n "animCurveTL276";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.5330905047330146 10 -2.5330905047330146 
		20 -2.5330905047330146;
createNode animCurveTL -n "animCurveTL277";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.0768417541934041 10 2.0768417541934041 
		20 2.0768417541934041;
createNode animCurveTL -n "animCurveTL278";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.0481292103665369 10 2.0481292103665369 
		20 2.0481292103665369;
createNode animCurveTA -n "animCurveTA730";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -36.332671187907607 10 -36.332671187907607 
		20 -36.332671187907607;
createNode animCurveTA -n "animCurveTA731";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 76.683613894212968 10 76.683613894212968 
		20 76.683613894212968;
createNode animCurveTA -n "animCurveTA732";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 83.339653964504663 10 83.339653964504663 
		20 83.339653964504663;
createNode animCurveTL -n "animCurveTL279";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.5799571818574061 10 -1.5799571818574061 
		20 -1.5799571818574061;
createNode animCurveTL -n "animCurveTL280";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.1296110275135671 10 2.1296110275135671 
		20 2.1296110275135671;
createNode animCurveTL -n "animCurveTL281";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.0696046407532309 10 2.0696046407532309 
		20 2.0696046407532309;
createNode animCurveTA -n "animCurveTA733";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 315.11092321192655 10 315.11092321192655 
		20 315.11092321192655;
createNode animCurveTA -n "animCurveTA734";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -71.289995585927571 10 -71.289995585927571 
		20 -71.289995585927571;
createNode animCurveTA -n "animCurveTA735";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -410.61971912325362 10 -410.61971912325362 
		20 -410.61971912325362;
createNode animCurveTL -n "animCurveTL282";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.48508072212835623 10 0.4884582745323654 
		20 0.49183582693637456;
createNode animCurveTL -n "animCurveTL283";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.3461376073222053 10 -1.3290360120698517 
		20 -1.3119344168174982;
createNode animCurveTL -n "animCurveTL284";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.22135527095932556 10 -0.23613916605170268 
		20 -0.25092306114407975;
createNode animCurveTL -n "animCurveTL285";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.578730476483856 10 -1.2031585260942281 
		20 -0.56697357412933858;
createNode animCurveTL -n "animCurveTL286";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.3751169572549602 10 -1.4434839295035928 
		20 -1.3984112812495875;
createNode animCurveTL -n "animCurveTL287";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.21739896228115529 10 -0.20194480598359266 
		20 -0.21649598405116968;
createNode animCurveTA -n "animCurveTA736";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.061808866237337522 10 -0.061808866237337522 
		20 -0.061808866237337522;
createNode animCurveTA -n "animCurveTA737";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -59.058178941076754 10 -59.058178941076754 
		20 -59.058178941076754;
createNode animCurveTA -n "animCurveTA738";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 16.579147429757843 10 16.579147429757843 
		20 16.579147429757843;
createNode animCurveTA -n "animCurveTA739";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 12.253734489678925 10 12.253734489678925 
		20 12.253734489678925;
createNode animCurveTA -n "animCurveTA740";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -65.746751280844961 10 -65.746751280844961 
		20 -65.746751280844961;
createNode animCurveTA -n "animCurveTA741";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA742";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 15.711328223519057 10 15.711328223519057 
		20 15.711328223519057;
createNode animCurveTA -n "animCurveTA743";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.5572674112203622 10 8.5572674112203622 
		20 8.5572674112203622;
createNode animCurveTA -n "animCurveTA744";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA745";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA746";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA747";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA748";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA749";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA750";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -12.533800869393716 10 -12.533800869393716 
		20 -12.533800869393716;
createNode animCurveTA -n "animCurveTA751";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 38.757782523984616 10 38.757782523984616 
		20 38.757782523984616;
createNode animCurveTA -n "animCurveTA752";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -17.577333162534277 10 -17.577333162534277 
		20 -17.577333162534277;
createNode animCurveTA -n "animCurveTA753";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA754";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA755";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 77.428435288625664 10 77.428435288625664 
		20 77.428435288625664;
createNode animCurveTA -n "animCurveTA756";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA757";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA758";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA759";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA760";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA761";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 20 13.994403295754109;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA762";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA763";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA764";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 20 13.994403295754109;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA765";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA766";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA767";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 37.656527956664149 10 37.656527956664149 
		20 37.656527956664149;
createNode animCurveTA -n "animCurveTA768";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA769";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA770";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA771";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.55766507474896432 10 -1.8676251649360565 
		20 0.55766507474896432;
createNode animCurveTA -n "animCurveTA772";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.0198239624003347 10 -3.8572811083923773 
		20 2.0198239624003347;
createNode animCurveTA -n "animCurveTA773";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.5513277031901911 10 13.984107732281821 
		20 7.5513277031901911;
createNode animCurveTA -n "animCurveTA774";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.95273800592490165 10 2.5990946323998769 
		20 -0.95273800592490165;
createNode animCurveTA -n "animCurveTA775";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.41955881507249082 10 17.254371377172255 
		20 -0.41955881507249082;
createNode animCurveTA -n "animCurveTA776";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.6634293801101616 10 -4.9437989298209049 
		20 1.6634293801101616;
createNode animCurveTA -n "animCurveTA777";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.0598705588951511 10 -1.0598705588951511 
		20 -1.0598705588951511;
createNode animCurveTA -n "animCurveTA778";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.26280824457411489 10 -0.26280824457411489 
		20 -0.26280824457411489;
createNode animCurveTA -n "animCurveTA779";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 6.5086084195154994 10 6.5086084195154994 
		20 6.5086084195154994;
createNode animCurveTA -n "animCurveTA780";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.47197901174667056 10 -0.69462329870165163 
		20 -0.47197901174667056;
createNode animCurveTA -n "animCurveTA781";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.6163460272109134 10 -3.4741970225825587 
		20 -1.6163460272109134;
createNode animCurveTA -n "animCurveTA782";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.9660530560192302 10 11.886310385535714 
		20 1.9660530560192302;
createNode animCurveTA -n "animCurveTA783";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA784";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA785";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 56.683882055276051 10 56.683882055276051 
		20 56.683882055276051;
createNode animCurveTA -n "animCurveTA786";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -10.597736793341934 10 -10.597736793341934 
		20 -10.597736793341934;
createNode animCurveTA -n "animCurveTA787";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 64.03458729655091 10 64.03458729655091 
		20 64.03458729655091;
createNode animCurveTA -n "animCurveTA788";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -3.5980180414270846 10 -3.5980180414270846 
		20 -3.5980180414270846;
createNode animCurveTA -n "animCurveTA789";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA790";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "animCurveTA791";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 44.839776244285055 10 44.839776244285055 
		20 44.839776244285055;
createNode clipLibrary -n "clipLibrary2";
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
connectAttr "ndr_turn_left.st" "clipLibrary2.st[0]";
connectAttr "ndr_turn_left.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL247.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL248.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "animCurveTL249.a" "clipLibrary2.cel[0].cev[2].cevr";
connectAttr "animCurveTL250.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "animCurveTL251.a" "clipLibrary2.cel[0].cev[4].cevr";
connectAttr "animCurveTA679.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "animCurveTU49.a" "clipLibrary2.cel[0].cev[6].cevr";
connectAttr "animCurveTU50.a" "clipLibrary2.cel[0].cev[7].cevr";
connectAttr "animCurveTU51.a" "clipLibrary2.cel[0].cev[8].cevr";
connectAttr "animCurveTU52.a" "clipLibrary2.cel[0].cev[9].cevr";
connectAttr "animCurveTU53.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU54.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU55.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU56.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA680.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA681.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA682.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL252.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL253.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL254.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL255.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL256.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL257.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA683.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA684.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA685.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL258.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL259.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL260.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA686.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA687.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA688.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA689.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA690.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA691.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA692.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA693.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA694.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTL261.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTL262.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTL263.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTL264.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTL265.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTL266.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL267.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL268.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL269.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTA695.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTA696.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTA697.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTA698.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTA699.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTA700.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA701.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA702.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA703.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA704.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA705.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA706.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA707.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA708.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA709.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA710.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA711.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA712.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA713.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA714.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA715.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA716.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA717.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA718.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA719.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA720.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA721.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA722.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA723.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTL270.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTL271.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTL272.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA724.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA725.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA726.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL273.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL274.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL275.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA727.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA728.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA729.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL276.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL277.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL278.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA730.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA731.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA732.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL279.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL280.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL281.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA733.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA734.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA735.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL282.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL283.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL284.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTL285.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTL286.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTL287.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTA736.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTA737.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTA738.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTA739.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTA740.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTA741.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA742.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA743.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA744.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA745.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA746.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA747.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA748.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA749.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA750.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA751.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA752.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA753.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA754.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA755.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA756.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA757.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA758.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA759.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA760.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA761.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA762.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA763.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA764.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA765.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA766.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA767.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA768.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA769.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA770.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA771.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA772.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA773.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA774.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA775.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA776.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA777.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA778.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA779.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA780.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA781.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA782.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA783.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA784.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA785.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA786.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA787.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA788.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA789.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA790.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA791.a" "clipLibrary2.cel[0].cev[161].cevr";
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
// End of ndr-m_turn_left.ma
