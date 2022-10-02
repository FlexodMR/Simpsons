//Maya ASCII 4.0 scene
//Name: apu-m_point_right.ma
//Last modified: Wed, Jul 03, 2002 02:55:09 PM
requires maya "4.0";
requires "p3dmayaexp" "17.9";
requires "p3dSimpleShader" "17.1";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "apu_point_right";
	setAttr ".ihi" 0;
	setAttr ".du" 23;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL42";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL43";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL44";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.0066066117144004 23 -1.0066066117144004;
createNode animCurveTL -n "animCurveTL45";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTL -n "animCurveTL46";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.8220940684186907 23 0.8220940684186907;
createNode animCurveTA -n "animCurveTA114";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTU -n "animCurveTU9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU10";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU11";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU12";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU13";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU14";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU15";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 23 1;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU16";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 23 1;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA115";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA116";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA117";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL47";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL48";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL49";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL50";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.5631069085862914 3 -1.5631069085862914 
		6 -1.5631069085862914 9 -1.5631069085862914 18 -1.5631069085862914 23 -1.5631069085862914;
createNode animCurveTL -n "animCurveTL51";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.84361014269386181 3 0.84361014269386181 
		6 0.84361014269386181 9 0.84361014269386181 18 0.84361014269386181 23 0.84361014269386181;
createNode animCurveTL -n "animCurveTL52";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.7600134902800444 3 1.7600134902800444 
		6 1.7600134902800444 9 1.7600134902800444 18 1.7600134902800444 23 1.7600134902800444;
createNode animCurveTA -n "animCurveTA118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
createNode animCurveTA -n "animCurveTA119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -14.260733409455984 3 -14.260733409455984 
		6 -14.260733409455984 9 -14.260733409455984 18 -14.260733409455984 23 -14.260733409455984;
createNode animCurveTA -n "animCurveTA120";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
createNode animCurveTL -n "animCurveTL53";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.0836749058650765 3 -1.0836749058650765 
		6 -1.0836749058650765 9 -1.0836749058650765 18 -1.0836749058650765 23 -1.0836749058650765;
createNode animCurveTL -n "animCurveTL54";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.79279446241859197 3 0.79279446241859197 
		6 0.79279446241859197 9 0.79279446241859197 18 0.79279446241859197 23 0.79279446241859197;
createNode animCurveTL -n "animCurveTL55";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.7068065819859761 3 1.7068065819859761 
		6 1.7068065819859761 9 1.7068065819859761 18 1.7068065819859761 23 1.7068065819859761;
createNode animCurveTA -n "animCurveTA121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -22.297768645241412 3 -22.297768645241412 
		6 -22.297768645241412 9 -22.297768645241412 18 -22.297768645241412 23 -22.297768645241412;
createNode animCurveTA -n "animCurveTA122";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -11.632534303065597 3 -11.632534303065597 
		6 -11.632534303065597 9 -11.632534303065597 18 -11.632534303065597 23 -11.632534303065597;
createNode animCurveTA -n "animCurveTA123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.0818063674069247 3 2.0818063674069247 
		6 2.0818063674069247 9 2.0818063674069247 18 2.0818063674069247 23 2.0818063674069247;
createNode animCurveTA -n "animCurveTA124";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA125";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA126";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA127";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA128";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA129";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL56";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.097466557943624466 3 0.097466557943624466 
		6 0.097466557943624466 9 0.097466557943624466 18 0.097466557943624466 23 
		0.097466557943624466;
createNode animCurveTL -n "animCurveTL57";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.89926276112817349 3 0.89926276112817349 
		6 0.89926276112817349 9 0.89926276112817349 18 0.89926276112817349 23 0.89926276112817349;
createNode animCurveTL -n "animCurveTL58";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.80168990793572048 3 0.80168990793572048 
		6 0.80168990793572048 9 0.80168990793572048 18 0.80168990793572048 23 0.80168990793572048;
createNode animCurveTL -n "animCurveTL59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.011621961304049206 3 0.011621961304049206 
		6 0.011621961304049206 9 0.011621961304049206 18 0.011621961304049206 23 
		0.011621961304049206;
createNode animCurveTL -n "animCurveTL60";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.53592894662340362 3 0.53592894662340362 
		6 0.53592894662340362 9 0.53592894662340362 18 0.53592894662340362 23 0.53592894662340362;
createNode animCurveTL -n "animCurveTL61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.1714982742260704 3 1.1714982742260704 
		6 1.1714982742260704 9 1.1714982742260704 18 1.1714982742260704 23 1.1714982742260704;
createNode animCurveTL -n "animCurveTL62";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.4235319221245726 3 -1.4235319221245726 
		6 -1.4235319221245726 9 -1.4235319221245726 18 -1.4235319221245726 23 -1.4235319221245726;
createNode animCurveTL -n "animCurveTL63";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.96452787963755071 3 0.96452787963755071 
		6 0.96452787963755071 9 0.96452787963755071 18 0.96452787963755071 23 0.96452787963755071;
createNode animCurveTL -n "animCurveTL64";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.1625963268710435 3 1.1625963268710435 
		6 1.1625963268710435 9 1.1625963268710435 18 1.1625963268710435 23 1.1625963268710435;
createNode animCurveTA -n "animCurveTA130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -19.688418588621186 3 -19.688418588621186 
		6 -19.688418588621186 9 -19.355348401106731 18 -18.400059194436565 23 -19.688418588621186;
createNode animCurveTA -n "animCurveTA131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.6085540494966297 3 1.6085540494966297 
		6 1.6085540494966297 9 1.1722390370854308 18 -0.079169902546744789 23 1.6085540494966297;
createNode animCurveTA -n "animCurveTA132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 4.1348769634669011 3 4.1348769634669011 
		6 4.1348769634669011 9 3.9227414070193776 18 3.3143086464046827 23 4.1348769634669011;
createNode animCurveTA -n "animCurveTA133";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA134";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA135";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA136";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA137";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA138";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA139";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA140";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA141";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA142";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA143";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA144";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA145";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA146";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA147";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA148";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA149";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA150";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA151";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA152";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
createNode animCurveTA -n "animCurveTA154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
createNode animCurveTA -n "animCurveTA155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
createNode animCurveTA -n "animCurveTA156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
createNode animCurveTA -n "animCurveTA157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
createNode animCurveTA -n "animCurveTA158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -37.313732430097119 3 -37.313732430097119 
		6 -37.313732430097119 9 -37.313732430097119 18 -37.313732430097119 23 -37.313732430097119;
createNode animCurveTL -n "animCurveTL65";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.5198069948790518 3 -0.5198069948790518 
		6 -0.5198069948790518 9 -0.5198069948790518 18 -0.5198069948790518 23 -0.5198069948790518;
createNode animCurveTL -n "animCurveTL66";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.72394202659893114 3 -0.72394202659893114 
		6 -0.72394202659893114 9 -0.72394202659893114 18 -0.72394202659893114 23 
		-0.72394202659893114;
createNode animCurveTL -n "animCurveTL67";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.36439499068905612 3 0.36439499068905612 
		6 0.36439499068905612 9 0.36439499068905612 18 0.36439499068905612 23 0.36439499068905612;
createNode animCurveTA -n "animCurveTA159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 7.7976222737965299 3 7.7976222737965299 
		6 7.7976222737965299 9 7.7976222737965299 18 7.7976222737965299 23 7.7976222737965299;
createNode animCurveTA -n "animCurveTA160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 30.409274105849079 3 30.409274105849079 
		6 30.409274105849079 9 30.409274105849079 18 30.409274105849079 23 30.409274105849079;
createNode animCurveTA -n "animCurveTA161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 64.859940280210878 3 64.859940280210878 
		6 64.859940280210878 9 64.859940280210878 18 64.859940280210878 23 64.859940280210878;
createNode animCurveTL -n "animCurveTL68";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.43524234076486068 3 0.43524234076486068 
		6 0.43524234076486068 9 0.43524234076486068 18 0.43524234076486068 23 0.43524234076486068;
createNode animCurveTL -n "animCurveTL69";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.82665738350180629 3 -0.82665738350180629 
		6 -0.82665738350180629 9 -0.82665738350180629 18 -0.82665738350180629 23 
		-0.82665738350180629;
createNode animCurveTL -n "animCurveTL70";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.27773886459742925 3 0.27773886459742925 
		6 0.27773886459742925 9 0.27773886459742925 18 0.27773886459742925 23 0.27773886459742925;
createNode animCurveTA -n "animCurveTA162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
createNode animCurveTA -n "animCurveTA163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -28.652637602052774 3 -28.652637602052774 
		6 -28.652637602052774 9 -28.652637602052774 18 -28.652637602052774 23 -28.652637602052774;
createNode animCurveTA -n "animCurveTA164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -64.676908227303443 3 -64.676908227303443 
		6 -64.676908227303443 9 -64.676908227303443 18 -64.676908227303443 23 -64.676908227303443;
createNode animCurveTL -n "animCurveTL71";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.8614370767228712 3 -2.8614370767228712 
		6 -2.8614370767228712 9 -2.8614370767228712 18 -2.8614370767228712 23 -2.8614370767228712;
createNode animCurveTL -n "animCurveTL72";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.7861655623246184 3 1.7861655623246184 
		6 1.7861655623246184 9 1.7861655623246184 18 1.7861655623246184 23 1.7861655623246184;
createNode animCurveTL -n "animCurveTL73";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.971761516402895 3 1.971761516402895 
		6 1.971761516402895 9 1.971761516402895 18 1.971761516402895 23 1.971761516402895;
createNode animCurveTA -n "animCurveTA165";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -88.808544236675544 3 -88.808544236675544 
		6 -88.808544236675544 9 -88.808544236675544 18 -88.808544236675544 23 -88.808544236675544;
createNode animCurveTA -n "animCurveTA166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 83.878009663660919 3 83.878009663660919 
		6 83.878009663660919 9 83.878009663660919 18 83.878009663660919 23 83.878009663660919;
createNode animCurveTA -n "animCurveTA167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -39.173779852465344 3 -39.173779852465344 
		6 -39.173779852465344 9 -39.173779852465344 18 -39.173779852465344 23 -39.173779852465344;
createNode animCurveTL -n "animCurveTL74";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.6254521627659528 3 -1.4357012053729696 
		6 -1.1520772482343729 9 -1.1147638477703585 18 -1.0967101823213827 23 -1.6254521627659528;
	setAttr -s 6 ".kit[2:5]"  1 9 1 9;
	setAttr -s 6 ".kot[2:5]"  1 9 1 9;
	setAttr -s 6 ".kix[2:5]"  0.014167294837534428 0.072057314217090607 
		0.12843862175941467 0.0031521201599389315;
	setAttr -s 6 ".kiy[2:5]"  0.99989962577819824 0.99740052223205566 
		0.99171745777130127 -0.99999505281448364;
	setAttr -s 6 ".kox[2:5]"  0.014167294837534428 0.072057314217090607 
		0.1284392923116684 0.0031521201599389315;
	setAttr -s 6 ".koy[2:5]"  0.99989962577819824 0.99740052223205566 
		0.99171739816665649 -0.99999505281448364;
createNode animCurveTL -n "animCurveTL75";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.7744259866497851 3 2.1610641371598893 
		6 2.5642038512926728 9 2.6062432251117333 18 2.5642038512926719 23 1.7744259866497851;
	setAttr -s 6 ".kit[2:5]"  1 9 1 9;
	setAttr -s 6 ".kot[2:5]"  1 9 1 9;
	setAttr -s 6 ".kix[2:5]"  0.007636362686753273 1 0.02122061513364315 
		0.0021102933678776026;
	setAttr -s 6 ".kiy[2:5]"  0.99997085332870483 0 -0.99977481365203857 
		-0.99999779462814331;
	setAttr -s 6 ".kox[2:5]"  0.0076363724656403065 1 0.0212204959243536 
		0.0021102933678776026;
	setAttr -s 6 ".koy[2:5]"  0.99997085332870483 0 -0.99977481365203857 
		-0.99999779462814331;
createNode animCurveTL -n "animCurveTL76";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.0732108715169613 3 2.1625255494441062 
		6 2.0791759759825514 9 2.0779083585923979 18 2.1673294658340532 23 2.0732108715169613;
	setAttr -s 6 ".kit[0:5]"  9 9 1 1 1 9;
	setAttr -s 6 ".kot[0:5]"  9 9 1 1 1 9;
	setAttr -s 6 ".kix[2:5]"  0.22992280125617981 0.4776451587677002 
		0.016141718253493309 0.017705377191305161;
	setAttr -s 6 ".kiy[2:5]"  -0.97320878505706787 0.87855279445648193 
		0.999869704246521 -0.99984323978424072;
	setAttr -s 6 ".kox[2:5]"  0.2299235463142395 0.47764593362808228 
		0.016138389706611633 0.017705377191305161;
	setAttr -s 6 ".koy[2:5]"  -0.97320860624313354 0.87855243682861328 
		0.99986976385116577 -0.99984323978424072;
createNode animCurveTA -n "animCurveTA168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -39.296899878223357 3 -195.70031689282189 
		6 -345.45965598142385 9 -439.51911677950443 18 -438.91830688052903 23 -39.296899878223357;
	setAttr -s 6 ".kit[3:5]"  1 1 9;
	setAttr -s 6 ".kot[3:5]"  1 1 9;
	setAttr -s 6 ".kix[3:5]"  0.33218729496002197 0.30129048228263855 
		0.023889036849141121;
	setAttr -s 6 ".kiy[3:5]"  -0.94321352243423462 0.95353239774703979 
		0.99971461296081543;
	setAttr -s 6 ".kox[3:5]"  0.33218732476234436 0.3012906014919281 
		0.023889036849141121;
	setAttr -s 6 ".koy[3:5]"  -0.94321352243423462 0.95353239774703979 
		0.99971461296081543;
createNode animCurveTA -n "animCurveTA169";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -77.756094215389751 3 -69.981499395032074 
		6 -78.964821634696989 9 -35.368196738094838 18 -34.222226997334801 23 -77.756094215389751;
	setAttr -s 6 ".kit[3:5]"  1 1 9;
	setAttr -s 6 ".kot[3:5]"  1 1 9;
	setAttr -s 6 ".kix[3:5]"  0.91860795021057129 0.99534469842910767 
		0.21425919234752655;
	setAttr -s 6 ".kiy[3:5]"  0.39517012238502502 -0.096379056572914124 
		-0.9767768383026123;
	setAttr -s 6 ".kox[3:5]"  0.91860783100128174 0.99534469842910767 
		0.21425919234752655;
	setAttr -s 6 ".koy[3:5]"  0.39517036080360413 -0.096379011869430542 
		-0.9767768383026123;
createNode animCurveTA -n "animCurveTA170";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 22.376629620485513 3 162.2411991035338 
		6 290.63141159107619 9 397.71185031470816 18 401.49805501294333 23 22.376629620485513;
	setAttr -s 6 ".kit[0:5]"  9 9 1 1 1 9;
	setAttr -s 6 ".kot[0:5]"  9 9 1 1 1 9;
	setAttr -s 6 ".kix[2:5]"  0.040991391986608505 0.26506829261779785 
		0.81822443008422852 0.025179976597428322;
	setAttr -s 6 ".kiy[2:5]"  0.99915951490402222 0.96422964334487915 
		-0.57489895820617676 -0.9996829628944397;
	setAttr -s 6 ".kox[2:5]"  0.040991395711898804 0.26506829261779785 
		0.81822395324707031 0.025179976597428322;
	setAttr -s 6 ".koy[2:5]"  0.99915951490402222 0.96422964334487915 
		-0.57489955425262451 -0.9996829628944397;
createNode animCurveTL -n "animCurveTL77";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.77290696453185026 3 0.77290696453185026 
		6 0.77290696453185026 9 0.77290696453185026 18 0.77290696453185026 23 0.77290696453185026;
createNode animCurveTL -n "animCurveTL78";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.71234308293286885 3 -0.71234308293286885 
		6 -0.71234308293286885 9 -0.71234308293286885 18 -0.71234308293286885 23 
		-0.71234308293286885;
createNode animCurveTL -n "animCurveTL79";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.35872267288917942 3 -0.35872267288917942 
		6 -0.35872267288917942 9 -0.35872267288917942 18 -0.35872267288917942 23 
		-0.35872267288917942;
createNode animCurveTL -n "animCurveTL80";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.35039089098226439 3 -0.35039089098226439 
		6 -0.35039089098226439 9 -0.35039089098226439 18 -0.35039089098226439 23 
		-0.35039089098226439;
createNode animCurveTL -n "animCurveTL81";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.40854033940183732 3 -0.40854033940183732 
		6 -0.40854033940183732 9 -0.40854033940183732 18 -0.40854033940183732 23 
		-0.40854033940183732;
createNode animCurveTL -n "animCurveTL82";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.82408995422063858 3 -0.82408995422063858 
		6 -0.82408995422063858 9 -0.82408995422063858 18 -0.82408995422063858 23 
		-0.82408995422063858;
createNode animCurveTA -n "animCurveTA171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.061808866237337522 3 -0.061808866237337522 
		6 -0.061808866237337522 9 -0.061808866237337522 18 -0.061808866237337522 
		23 -0.061808866237337522;
createNode animCurveTA -n "animCurveTA172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -59.058178941076754 3 -59.058178941076754 
		6 -59.058178941076754 9 -59.058178941076754 18 -59.058178941076754 23 -59.058178941076754;
createNode animCurveTA -n "animCurveTA173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 16.579147429757843 3 16.579147429757843 
		6 16.579147429757843 9 16.579147429757843 18 16.579147429757843 23 16.579147429757843;
createNode animCurveTA -n "animCurveTA174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 12.253734489678925 3 12.253734489678925 
		6 12.253734489678925 9 12.253734489678925 18 12.253734489678925 23 12.253734489678925;
createNode animCurveTA -n "animCurveTA175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -65.746751280844961 3 -65.746751280844961 
		6 -65.746751280844961 9 -65.746751280844961 18 -65.746751280844961 23 -65.746751280844961;
createNode animCurveTA -n "animCurveTA176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
createNode animCurveTA -n "animCurveTA177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 15.711328223519057 3 15.711328223519057 
		6 15.711328223519057 9 15.711328223519057 18 15.711328223519057 23 15.711328223519057;
createNode animCurveTA -n "animCurveTA178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.5572674112203622 3 8.5572674112203622 
		6 8.5572674112203622 9 8.5572674112203622 18 8.5572674112203622 23 8.5572674112203622;
createNode animCurveTA -n "animCurveTA179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
createNode animCurveTA -n "animCurveTA180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
createNode animCurveTA -n "animCurveTA181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
createNode animCurveTA -n "animCurveTA182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
createNode animCurveTA -n "animCurveTA183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
createNode animCurveTA -n "animCurveTA184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
createNode animCurveTA -n "animCurveTA185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.2533422302317216 3 8.2533422302317216 
		6 8.2533422302317216 9 8.2533422302317216 18 8.2533422302317216 23 8.2533422302317216;
createNode animCurveTA -n "animCurveTA186";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 23.263402056531085 3 23.263402056531085 
		6 23.263402056531085 9 23.263402056531085 18 23.263402056531085 23 23.263402056531085;
createNode animCurveTA -n "animCurveTA187";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 20.166277752815617 3 20.166277752815617 
		6 20.166277752815617 9 20.166277752815617 18 20.166277752815617 23 20.166277752815617;
createNode animCurveTA -n "animCurveTA188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
createNode animCurveTA -n "animCurveTA189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
createNode animCurveTA -n "animCurveTA190";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 33.429092416277157 3 33.429092416277157 
		6 25.192121946801748 9 24.143780240291136 18 25.192121946801748 23 33.429092416277157;
createNode animCurveTA -n "animCurveTA191";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA192";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA193";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA194";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA195";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA196";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 23 13.994403295754109;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA197";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA198";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA199";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 23 13.994403295754109;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
createNode animCurveTA -n "animCurveTA201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
createNode animCurveTA -n "animCurveTA202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 17.254116939558369 3 17.254116939558369 
		6 17.254116939558369 9 17.254116939558369 18 17.254116939558369 23 17.254116939558369;
createNode animCurveTA -n "animCurveTA203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
createNode animCurveTA -n "animCurveTA204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
createNode animCurveTA -n "animCurveTA205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
createNode animCurveTA -n "animCurveTA206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.87902215066922906 3 0.87902215066922906 
		6 5.022332624408179 9 6.2496885927925421 18 7.7301237994454457 23 0.87902215066922906;
createNode animCurveTA -n "animCurveTA207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 4.7952631452849266 3 4.7952631452849266 
		6 4.7952631452849248 9 4.7112308362498689 18 4.4702150934382727 23 4.7952631452849266;
createNode animCurveTA -n "animCurveTA208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 7.5470594542643701 3 7.5470594542643701 
		6 7.5470594542643692 9 8.1761541624434333 18 9.9804807036581256 23 7.5470594542643701;
createNode animCurveTA -n "animCurveTA209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.2734920044837068 3 39.57800299697621 
		6 30.738610994618611 9 30.634884899056313 18 30.738610994618611 23 -1.2734920044837068;
createNode animCurveTA -n "animCurveTA210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.71628531942149 3 1.691684579094265 
		6 1.6970076543675521 9 1.6970701182278491 18 1.6970076543675521 23 1.71628531942149;
createNode animCurveTA -n "animCurveTA211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.62960137906938 3 1.2348355338931729 
		6 1.3202544398601981 9 1.3212567908727153 18 1.3202544398601981 23 1.62960137906938;
createNode animCurveTA -n "animCurveTA212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -4.8714700432790456 3 1.0401230992992929 
		6 -0.23901949557682525 9 -0.25402963625913255 18 -0.23901949557682525 23 
		-4.8714700432790456;
createNode animCurveTA -n "animCurveTA213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -11.783606204137085 3 -4.0517911859646656 
		6 -5.724790960975926 9 -5.7444228292693014 18 -5.724790960975926 23 -11.783606204137085;
createNode animCurveTA -n "animCurveTA214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 7.5423825101935913 3 6.8838136696578331 
		6 7.0263139187849601 9 7.0279860928066 18 7.0263139187849601 23 7.5423825101935913;
createNode animCurveTA -n "animCurveTA215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.62622119873454107 3 0.62622119873454107 
		6 3.0414001046714545 9 3.3007748352580579 18 2.8556845808714875 23 0.62622119873454107;
createNode animCurveTA -n "animCurveTA216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -3.8840070108449005 3 -3.8840070108449005 
		6 -3.8840070108449005 9 -3.919791721648378 18 -4.0224269920012885 23 -3.8840070108449005;
createNode animCurveTA -n "animCurveTA217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.9840981620606046 3 1.9840981620606046 
		6 1.9840981620606035 9 2.680377682842916 18 4.6773992247000358 23 1.9840981620606046;
createNode animCurveTA -n "animCurveTA218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
createNode animCurveTA -n "animCurveTA219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
createNode animCurveTA -n "animCurveTA220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.080064458283051 3 27.080064458283051 
		6 27.080064458283051 9 27.080064458283051 18 27.080064458283051 23 27.080064458283051;
createNode animCurveTA -n "animCurveTA221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 10.423754966968488 3 10.423754966968488 
		6 10.423754966968488 9 10.423754966968488 18 10.423754966968488 23 10.423754966968488;
createNode animCurveTA -n "animCurveTA222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.722848255843903 3 27.722848255843903 
		6 27.722848255843903 9 27.722848255843903 18 27.722848255843903 23 27.722848255843903;
createNode animCurveTA -n "animCurveTA223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 21.576484776388227 3 21.576484776388227 
		6 21.576484776388227 9 21.576484776388227 18 21.576484776388227 23 21.576484776388227;
createNode animCurveTA -n "animCurveTA224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
createNode animCurveTA -n "animCurveTA225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
createNode animCurveTA -n "animCurveTA226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.911632519594587 3 27.911632519594587 
		6 -11.637041055978866 9 -16.670508338447089 18 -11.637041055978866 23 27.911632519594587;
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
connectAttr "apu_point_right.st" "clipLibrary2.st[0]";
connectAttr "apu_point_right.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL42.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL43.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "animCurveTL44.a" "clipLibrary2.cel[0].cev[2].cevr";
connectAttr "animCurveTL45.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "animCurveTL46.a" "clipLibrary2.cel[0].cev[4].cevr";
connectAttr "animCurveTA114.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "animCurveTU9.a" "clipLibrary2.cel[0].cev[6].cevr";
connectAttr "animCurveTU10.a" "clipLibrary2.cel[0].cev[7].cevr";
connectAttr "animCurveTU11.a" "clipLibrary2.cel[0].cev[8].cevr";
connectAttr "animCurveTU12.a" "clipLibrary2.cel[0].cev[9].cevr";
connectAttr "animCurveTU13.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU14.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU15.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU16.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA115.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA116.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA117.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL47.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL48.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL49.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL50.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL51.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL52.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA118.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA119.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA120.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL53.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL54.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL55.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA121.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA122.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA123.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA124.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA125.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA126.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA127.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA128.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA129.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTL56.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTL57.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTL58.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTL59.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTL60.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTL61.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL62.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL63.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL64.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTA130.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTA131.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTA132.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTA133.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTA134.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTA135.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA136.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA137.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA138.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA139.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA140.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA141.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA142.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA143.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA144.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA145.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA146.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA147.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA148.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA149.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA150.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA151.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA152.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA153.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA154.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA155.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA156.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA157.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA158.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTL65.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTL66.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTL67.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA159.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA160.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA161.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL68.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL69.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL70.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA162.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA163.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA164.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL71.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL72.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL73.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA165.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA166.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA167.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL74.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL75.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL76.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA168.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA169.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA170.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL77.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL78.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL79.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTL80.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTL81.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTL82.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTA171.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTA172.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTA173.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTA174.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTA175.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTA176.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA177.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA178.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA179.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA180.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA181.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA182.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA183.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA184.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA185.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA186.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA187.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA188.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA189.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA190.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA191.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA192.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA193.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA194.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA195.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA196.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA197.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA198.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA199.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA200.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA201.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA202.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA203.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA204.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA205.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA206.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA207.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA208.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA209.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA210.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA211.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA212.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA213.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA214.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA215.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA216.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA217.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA218.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA219.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA220.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA221.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA222.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA223.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA224.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA225.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA226.a" "clipLibrary2.cel[0].cev[161].cevr";
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
// End of apu-m_point_right.ma
