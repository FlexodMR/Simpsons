//Maya ASCII 4.0 scene
//Name: nps-m_sway_left.ma
//Last modified: Tue, Jul 16, 2002 11:05:48 AM
requires maya "4.0";
requires "p3dmayaexp" "17.9.1.0";
requires "p3dSimpleShader" "17.1";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "nps_sway_left";
	setAttr ".ihi" 0;
	setAttr ".du" 32;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL42";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL43";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL44";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.0066066117144004 32 -1.0066066117144004;
createNode animCurveTL -n "animCurveTL45";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTL -n "animCurveTL46";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.8220940684186907 32 0.8220940684186907;
createNode animCurveTA -n "animCurveTA114";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTU -n "animCurveTU9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU15";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA115";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA116";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA117";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL47";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL48";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL49";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL50";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.5631069085862914 3 -1.5631069085862914 
		6 -1.5631069085862914 10 -1.5631069085862914 20 -1.5631069085862914 24 -1.5631069085862914 
		28 -1.5631069085862914 32 -1.5631069085862914;
createNode animCurveTL -n "animCurveTL51";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.84361014269386181 3 0.84361014269386181 
		6 0.84361014269386181 10 0.84361014269386181 20 0.84361014269386181 24 0.84361014269386181 
		28 0.84361014269386181 32 0.84361014269386181;
createNode animCurveTL -n "animCurveTL52";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.7600134902800444 3 1.7600134902800444 
		6 1.7600134902800444 10 1.7600134902800444 20 1.7600134902800444 24 1.7600134902800444 
		28 1.7600134902800444 32 1.7600134902800444;
createNode animCurveTA -n "animCurveTA118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
createNode animCurveTA -n "animCurveTA119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -14.260733409455984 3 -14.260733409455984 
		6 -14.260733409455984 10 -14.260733409455984 20 -14.260733409455984 24 -14.260733409455984 
		28 -14.260733409455984 32 -14.260733409455984;
createNode animCurveTA -n "animCurveTA120";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
createNode animCurveTL -n "animCurveTL53";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.0836749058650765 3 -1.0836749058650765 
		6 -1.0836749058650765 10 -1.0836749058650765 20 -1.0836749058650765 24 -1.0836749058650765 
		28 -1.0836749058650765 32 -1.0836749058650765;
createNode animCurveTL -n "animCurveTL54";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.79279446241859197 3 0.79279446241859197 
		6 0.79279446241859197 10 0.79279446241859197 20 0.79279446241859197 24 0.79279446241859197 
		28 0.79279446241859197 32 0.79279446241859197;
createNode animCurveTL -n "animCurveTL55";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.7068065819859761 3 1.7068065819859761 
		6 1.7068065819859761 10 1.7068065819859761 20 1.7068065819859761 24 1.7068065819859761 
		28 1.7068065819859761 32 1.7068065819859761;
createNode animCurveTA -n "animCurveTA121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -22.297768645241412 3 -22.297768645241412 
		6 -22.297768645241412 10 -22.297768645241412 20 -22.297768645241412 24 -22.297768645241412 
		28 -22.297768645241412 32 -22.297768645241412;
createNode animCurveTA -n "animCurveTA122";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -11.632534303065597 3 -11.632534303065597 
		6 -11.632534303065597 10 -11.632534303065597 20 -11.632534303065597 24 -11.632534303065597 
		28 -11.632534303065597 32 -11.632534303065597;
createNode animCurveTA -n "animCurveTA123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.0818063674069247 3 2.0818063674069247 
		6 2.0818063674069247 10 2.0818063674069247 20 2.0818063674069247 24 2.0818063674069247 
		28 2.0818063674069247 32 2.0818063674069247;
createNode animCurveTA -n "animCurveTA124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA126";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL56";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.097466557943624466 3 0.097466557943624466 
		6 0.097466557943624466 10 0.097466557943624466 20 0.097466557943624466 24 
		0.097466557943624466 28 0.097466557943624466 32 0.097466557943624466;
createNode animCurveTL -n "animCurveTL57";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.89926276112817349 3 0.89926276112817349 
		6 0.89926276112817349 10 0.89926276112817349 20 0.89926276112817349 24 0.89926276112817349 
		28 0.89926276112817349 32 0.89926276112817349;
createNode animCurveTL -n "animCurveTL58";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.80168990793572048 3 0.80168990793572048 
		6 0.80168990793572048 10 0.80168990793572048 20 0.80168990793572048 24 0.80168990793572048 
		28 0.80168990793572048 32 0.80168990793572048;
createNode animCurveTL -n "animCurveTL59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.011621961304049206 3 0.011621961304049206 
		6 0.011621961304049206 10 0.011621961304049206 20 0.011621961304049206 24 
		0.011621961304049206 28 0.011621961304049206 32 0.011621961304049206;
createNode animCurveTL -n "animCurveTL60";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.53592894662340362 3 0.53592894662340362 
		6 0.53592894662340362 10 0.53592894662340362 20 0.53592894662340362 24 0.53592894662340362 
		28 0.53592894662340362 32 0.53592894662340362;
createNode animCurveTL -n "animCurveTL61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.1714982742260704 3 1.1714982742260704 
		6 1.1714982742260704 10 1.1714982742260704 20 1.1714982742260704 24 1.1714982742260704 
		28 1.1714982742260704 32 1.1714982742260704;
createNode animCurveTL -n "animCurveTL62";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.4235319221245726 3 -1.4235319221245726 
		6 -1.4235319221245726 10 -1.4235319221245726 20 -1.4235319221245726 24 -1.4235319221245726 
		28 -1.4235319221245726 32 -1.4235319221245726;
createNode animCurveTL -n "animCurveTL63";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.96452787963755071 3 0.96452787963755071 
		6 0.96452787963755071 10 0.96452787963755071 20 0.96452787963755071 24 0.96452787963755071 
		28 0.96452787963755071 32 0.96452787963755071;
createNode animCurveTL -n "animCurveTL64";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.1625963268710435 3 1.1625963268710435 
		6 1.1625963268710435 10 1.1625963268710435 20 1.1625963268710435 24 1.1625963268710435 
		28 1.1625963268710435 32 1.1625963268710435;
createNode animCurveTA -n "animCurveTA130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -19.688418588621186 3 -19.68841858862119 
		6 -19.688418588621186 10 -19.397748771017859 20 -19.397748771017859 24 -19.688418588621186 
		28 -19.751370263652689 32 -19.688418588621186;
createNode animCurveTA -n "animCurveTA131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.6085540494966297 3 1.6085540494966299 
		6 1.6085540494966299 10 3.7948068215314001 20 3.7948068215314001 24 1.6085540494966297 
		28 -0.045498044900976108 32 1.6085540494966297;
createNode animCurveTA -n "animCurveTA132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 4.1348769634669011 3 1.0789280880091228 
		6 -0.49270276222632337 10 10.294482049548058 20 10.294482049548058 24 4.1348769634669011 
		28 -0.47743876760723408 32 4.1348769634669011;
createNode animCurveTA -n "animCurveTA133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA137";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
createNode animCurveTA -n "animCurveTA154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
createNode animCurveTA -n "animCurveTA155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
createNode animCurveTA -n "animCurveTA156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
createNode animCurveTA -n "animCurveTA157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
createNode animCurveTA -n "animCurveTA158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -37.313732430097119 3 -37.313732430097119 
		6 -37.313732430097119 10 -37.313732430097119 20 -37.313732430097119 24 -37.313732430097119 
		28 -37.313732430097119 32 -37.313732430097119;
createNode animCurveTL -n "animCurveTL65";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -0.38197593353053522 1 -0.39129936816292399 
		2 -0.39833596244324354 3 -0.40258072890364049 4 -0.40337138849806253 5 -0.40336486081167866 
		6 -0.40746525074651802 7 -0.42207081707018146 8 -0.44888783874391153 9 -0.4796602810498814 
		10 -0.49899371061577769 11 -0.50650086470530487 12 -0.51230368293656792 13 
		-0.51638585676079085 14 -0.51873536584520363 15 -0.519362195685942 16 -0.51830960090727873 
		17 -0.51565511651179718 18 -0.5114980314678681 19 -0.50593089721515727 20 
		-0.49899371061577769 21 -0.48047940123683047 22 -0.44704406713355554 23 -0.41152666716353625 
		24 -0.38991929344589776 25 -0.38906429759739242 26 -0.39422956496827338 27 
		-0.39427898771793052 28 -0.39064460176687621 29 -0.38976761300764423 30 -0.39015529925086012 
		31 -0.38769534978755643 32 -0.38197593353053522;
createNode animCurveTL -n "animCurveTL66";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -0.53328827544008506 1 -0.57409602576991992 
		2 -0.61575023578044774 3 -0.65083505883888992 4 -0.67952533219355704 5 -0.70100070527206937 
		6 -0.70630698164889649 7 -0.68776020832523654 8 -0.6494434234636961 9 -0.60307542039032824 
		10 -0.57190592902927806 11 -0.56147970131028102 12 -0.55607773311638653 13 
		-0.55484979375662824 14 -0.55683087227885542 15 -0.56095396859043434 16 -0.56606903407417819 
		17 -0.57096621377188017 18 -0.57440169739096858 19 -0.57512483342378384 20 
		-0.57190592902927806 21 -0.55193000342478871 22 -0.51495876542212449 23 -0.48032760784584921 
		24 -0.47101886147935079 25 -0.51014009905758995 26 -0.58311180603764012 27 
		-0.65667611687069272 28 -0.69458170084420423 29 -0.68107179982610211 30 -0.63725851889187302 
		31 -0.58187681884685538 32 -0.53328827544008506;
createNode animCurveTL -n "animCurveTL67";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0.4628073796737307 1 0.45536752895971416 
		2 0.44777701336461034 3 0.44139191414138856 4 0.45486207806842255 5 0.46965822243770211 
		6 0.43135440106075168 7 0.30307620228124371 8 0.12468157915679333 9 -0.043147756426417966 
		10 -0.1397587698164188 11 -0.17679017005853204 12 -0.20615035287884775 13 
		-0.22763524324777756 14 -0.24103342691472993 15 -0.24612962611225914 16 -0.24270853399397488 
		17 -0.23055871908488165 18 -0.20947640291236155 19 -0.17926903523800572 20 
		-0.1397587698164188 21 -0.03231234184172526 22 0.15324899453962981 23 0.34532438840336871 
		24 0.47388417263867766 25 0.51253410222258089 26 0.50159643524001551 27 0.47181204630017898 
		28 0.45409658704744565 29 0.45424365672098205 30 0.45661336871790986 31 0.4599257005263534 
		32 0.4628073796737307;
createNode animCurveTA -n "animCurveTA159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 4.6931680813932024 1 1.4892904551596513 
		2 -1.5904123470975282 3 -4.0589915757065498 4 1.9135641880251837 5 8.345850790355513 
		6 -7.7572310665394442 7 -33.521385891545592 8 -28.100370319629459 9 -13.114449224212272 
		10 -3.1701926899841113 11 0.71446159299412659 12 3.7540326012104104 13 5.9244937443431516 
		14 7.2157406432297932 15 7.626677826784344 16 7.1623843608110178 17 5.8327053928047086 
		18 3.6521188209710891 19 0.64111226395418552 20 -3.1701926899841113 21 -13.088452830763138 
		22 -27.994867700445305 23 -30.708567477310403 24 9.7399727775871412 25 28.915089935089618 
		26 23.79193451641272 27 9.6271989902543762 28 1.1742223360969852 29 1.2487753937517945 
		30 2.2852150338559909 31 3.6272418843333836 32 4.6931680813932024;
createNode animCurveTA -n "animCurveTA160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 82.169846625535428 1 81.833502813634482 
		2 81.498330687947586 3 81.221553195310818 4 81.25542099903447 5 81.140163508512941 
		6 80.792043437264567 7 73.816444567286993 8 59.52259459091453 9 45.235796435026707 
		10 36.979385648187083 11 33.839492881511411 12 31.373609260214323 13 29.588896146711413 
		14 28.492081112236662 15 28.09094960235095 16 28.395510640106288 17 29.418804203740684 
		18 31.177240497560462 19 33.690302031654397 20 36.979385648187083 21 45.975304532484657 
		22 61.55772853909474 23 76.772560811257804 24 82.666057984661904 25 81.847125882563645 
		26 81.839123309719099 27 82.003684700080797 28 81.808546543445516 29 81.808129578487822 
		30 81.891893687824975 31 82.030278231612684 32 82.169846625535428;
createNode animCurveTA -n "animCurveTA161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 48.607521818219418 1 48.53154388350044 
		2 48.581101604815025 3 48.707725564563937 4 57.975750468164449 5 67.166785957323285 
		6 49.049944232318957 7 13.526773717241065 8 4.7080662847779635 9 6.2771944910075161 
		10 8.6706731792856857 11 9.9009323227291297 12 11.105265072722888 13 12.167761836003487 
		14 12.987677874292144 15 13.476532051469416 16 13.557118132955036 17 13.163573675184249 
		18 12.242129440747055 19 10.75253663420991 20 8.6706731792856857 21 2.8949063957664998 
		22 -4.3727176471947553 23 1.5735665928632518 24 49.004453418987261 25 73.694048751372534 
		26 73.75309821255216 27 63.560298119520169 28 57.00498055138948 29 56.102952496764999 
		30 53.936471282136615 31 51.18658609589481 32 48.607521818219418;
createNode animCurveTL -n "animCurveTL68";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0.053946154130855462 1 0.14928284789743232 
		2 0.24328158536987332 3 0.30499456423483567 4 0.31582556018618052 5 0.29668854463676497 
		6 0.27484145428931411 7 0.26545151849510373 8 0.2790502161206132 9 0.31772382167986052 
		10 0.35045609354310159 11 0.36543956502545399 12 0.37961958902823711 13 0.3917262869134055 
		14 0.40072386185844122 15 0.40576732340615113 16 0.40616201729466811 17 0.40132573594134019 
		18 0.39075037567864995 19 0.37395918331690525 20 0.35045609354310159 21 0.28746131431366534 
		22 0.18483750692864534 23 0.087895111655737143 24 0.031757206267959644 25 
		0.022165042274458813 26 0.032010490278217674 27 0.042645194259121409 28 0.04741040175668388 
		29 0.050040739133629872 30 0.053147058253691169 31 0.054505369331425871 32 
		0.053946154130855462;
createNode animCurveTL -n "animCurveTL69";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -0.67667650405506108 1 -0.65301301707495418 
		2 -0.61924715973967825 3 -0.58458057816349274 4 -0.56267154957731824 5 -0.55123131837726747 
		6 -0.53599747285918775 7 -0.504185678408272 8 -0.46385628190035966 9 -0.43217956807008656 
		10 -0.41844717771203682 11 -0.41269981410110235 12 -0.40687374959053957 13 
		-0.40129420549075323 14 -0.39635467535077079 15 -0.3925750251675118 16 -0.39062160984439009 
		17 -0.39129854319831259 18 -0.39551674488690958 19 -0.40424522541118479 20 
		-0.41844717771203682 21 -0.46674158025919738 22 -0.5561511060596841 23 -0.65225696212781559 
		24 -0.71271953477773409 25 -0.7089813274807335 26 -0.6646626921437746 27 
		-0.61090507724343479 28 -0.58210299286439215 29 -0.58957485888430572 30 -0.61455765815009922 
		31 -0.64714103098629494 32 -0.67667650405506108;
createNode animCurveTL -n "animCurveTL70";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0.55757203721029291 1 0.55359917008932769 
		2 0.55138604446630757 3 0.55076201869298425 4 0.55235257658251402 5 0.55363604488388773 
		6 0.54926186388369647 7 0.53589959964379064 8 0.51797503610494133 9 0.50163306691686005 
		10 0.49238717432468848 11 0.48896745280349024 12 0.48645774178137646 13 0.48481179809439801 
		14 0.48397206735145903 15 0.48387102762443307 16 0.48443705662629322 17 0.48560371938597785 
		18 0.48732171769846794 19 0.48957304654134731 20 0.49238717432468848 21 0.50009041685756928 
		22 0.51583311180396785 23 0.53541070861719564 24 0.55078004250157553 25 0.55802895667322316 
		26 0.5609280784388877 27 0.56162262068454327 28 0.56199837243541173 29 0.56197094345821885 
		30 0.56072819154232512 31 0.55901039042943723 32 0.55757203721029291;
createNode animCurveTA -n "animCurveTA162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 9.4037209115126323 1 0.016465639706167597 
		2 28.202154146458025 3 128.13886289878695 4 132.74128625211199 5 135.05845154856087 
		6 136.40467953485555 7 105.10320492885724 8 6.4011153548553317 9 10.0471563998061 
		10 15.038217781294035 11 17.003314104892645 12 18.298621088576425 13 18.982570974718335 
		14 19.150024340493179 15 18.90836761186857 16 18.364438143224465 17 17.617031772968367 
		18 16.754962687094899 19 15.86307767663177 20 15.038217781294035 21 13.203438470995604 
		22 10.517793727110188 23 8.4741594050472244 24 7.7029445780939723 25 8.1870276831364102 
		26 9.2020682675641119 27 10.117663037590573 28 10.575480743754408 29 10.588851736445287 
		30 10.354608453464591 31 9.9027388285861484 32 9.4037209115126323;
createNode animCurveTA -n "animCurveTA163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -77.316960645134102 1 -83.234386749298793 
		2 -88.589596189356058 3 -86.951445904786269 4 -85.50974063314743 5 -85.391891334222635 
		6 -86.411679902799122 7 -88.831880580627725 8 -86.052154705768714 9 -81.523735390847719 
		10 -78.843208462467729 11 -77.947482029030638 12 -77.450227483610163 13 -77.274403372222835 
		14 -77.346154509428501 15 -77.593079861767364 16 -77.942254979235969 17 -78.319022453432851 
		18 -78.64678591819559 19 -78.847596465897396 20 -78.843208462467729 21 -78.4824192771394 
		22 -77.793551466906052 23 -77.038859422187102 24 -76.581079947521587 25 -76.654764835342135 
		26 -77.072615018009003 27 -77.573820687166361 28 -77.871485145456788 29 -77.861232514094112 
		30 -77.699535588774765 31 -77.487534660002382 32 -77.316960645134102;
createNode animCurveTA -n "animCurveTA164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -30.60757801954858 1 -18.182095953788384 
		2 -43.388899807551411 3 -140.78650857561598 4 -142.66122828136872 5 -142.79201612078717 
		6 -145.04355263277901 7 -119.4243676918571 8 -29.07854674818369 9 -40.717935008393482 
		10 -50.334596724821004 11 -53.907720792152652 12 -56.256834081615189 13 -57.512084444567293 
		14 -57.842492029500711 15 -57.430810380670273 16 -56.45933801076395 17 -55.10172828011202 
		18 -53.520846109532386 19 -51.875022240704901 20 -50.334596724821004 21 -47.260366962614349 
		22 -42.391859760312606 23 -37.513546967258954 24 -33.556544851873419 25 -29.725792756571803 
		26 -25.430970979307869 27 -21.71148820896477 28 -19.869888713843764 29 -20.858781444399934 
		30 -23.822299068626496 31 -27.459707144365677 32 -30.60757801954858;
createNode animCurveTL -n "animCurveTL71";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -2.8614370767228712 3 -2.8614370767228712 
		6 -2.8614370767228712 10 -2.982244883201091 20 -2.982244883201091 24 -2.8614370767228712 
		28 -2.8614370767228712 32 -2.8614370767228712;
createNode animCurveTL -n "animCurveTL72";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.7861655623246184 3 1.7861655623246184 
		6 1.7861655623246184 10 1.4240624167621636 20 1.4240624167621636 24 1.7861655623246184 
		28 1.7861655623246184 32 1.7861655623246184;
createNode animCurveTL -n "animCurveTL73";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.971761516402895 3 1.971761516402895 
		6 1.971761516402895 10 1.4560592696198611 20 1.4560592696198611 24 1.971761516402895 
		28 1.971761516402895 32 1.971761516402895;
createNode animCurveTA -n "animCurveTA165";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -88.808544236675544 3 -88.808544236675544 
		6 -88.808544236675544 10 -14.740379440658328 20 -14.740379440658328 24 -88.808544236675544 
		28 -88.808544236675544 32 -88.808544236675544;
createNode animCurveTA -n "animCurveTA166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 83.878009663660919 3 83.878009663660919 
		6 83.878009663660919 10 42.939882371214097 20 42.939882371214097 24 83.878009663660919 
		28 83.878009663660919 32 83.878009663660919;
createNode animCurveTA -n "animCurveTA167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -39.173779852465344 3 -39.173779852465344 
		6 -39.173779852465344 10 20.56028059081039 20 20.56028059081039 24 -39.173779852465344 
		28 -39.173779852465344 32 -39.173779852465344;
createNode animCurveTL -n "animCurveTL74";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.6254521627659528 3 -1.3580254194115369 
		6 -1.3738231503935063 10 -1.4673220196412047 20 -1.4673220196412047 24 -1.6254521627659528 
		28 -1.6254521627659528 32 -1.6254521627659528;
createNode animCurveTL -n "animCurveTL75";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.7744259866497851 3 1.7744259866497851 
		6 1.7744259866497851 10 2.2123422949443245 20 2.2123422949443245 24 1.7744259866497851 
		28 1.7744259866497851 32 1.7744259866497851;
createNode animCurveTL -n "animCurveTL76";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.0732108715169613 3 2.0467126469997869 
		6 2.0370660253504567 10 1.9056722350003268 20 1.9056722350003268 24 2.0732108715169613 
		28 2.0732108715169613 32 2.0732108715169613;
createNode animCurveTA -n "animCurveTA168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -39.296899878223357 3 -113.17999507157656 
		6 -113.17999507157656 10 -39.296899878223357 20 -39.296899878223357 24 -39.296899878223357 
		28 -39.296899878223357 32 -39.296899878223357;
createNode animCurveTA -n "animCurveTA169";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -77.756094215389751 3 -81.598462431231312 
		6 -81.598462431231312 10 -77.756094215389751 20 -77.756094215389751 24 -77.756094215389751 
		28 -77.756094215389751 32 -77.756094215389751;
createNode animCurveTA -n "animCurveTA170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 22.376629620485513 3 97.128868212882352 
		6 97.128868212882352 10 22.376629620485513 20 22.376629620485513 24 22.376629620485513 
		28 22.376629620485513 32 22.376629620485513;
createNode animCurveTL -n "animCurveTL77";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.77290696453185026 3 0.77290696453185026 
		6 0.77290696453185026 10 0.77290696453185026 20 0.77290696453185026 24 0.77290696453185026 
		28 0.77290696453185026 32 0.77290696453185026;
createNode animCurveTL -n "animCurveTL78";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.71234308293286885 3 -0.71234308293286885 
		6 -0.71234308293286885 10 -0.71234308293286885 20 -0.71234308293286885 24 
		-0.71234308293286885 28 -0.71234308293286885 32 -0.71234308293286885;
createNode animCurveTL -n "animCurveTL79";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.35872267288917942 3 -0.35872267288917942 
		6 -0.35872267288917942 10 -0.35872267288917942 20 -0.35872267288917942 24 
		-0.35872267288917942 28 -0.35872267288917942 32 -0.35872267288917942;
createNode animCurveTL -n "animCurveTL80";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.35039089098226439 3 -0.35039089098226439 
		6 -0.35039089098226439 10 -0.35039089098226439 20 -0.35039089098226439 24 
		-0.35039089098226439 28 -0.35039089098226439 32 -0.35039089098226439;
createNode animCurveTL -n "animCurveTL81";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.40854033940183732 3 -0.40854033940183732 
		6 -0.40854033940183732 10 -0.40854033940183732 20 -0.40854033940183732 24 
		-0.40854033940183732 28 -0.40854033940183732 32 -0.40854033940183732;
createNode animCurveTL -n "animCurveTL82";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.82408995422063858 3 -0.82408995422063858 
		6 -0.82408995422063858 10 -0.82408995422063858 20 -0.82408995422063858 24 
		-0.82408995422063858 28 -0.82408995422063858 32 -0.82408995422063858;
createNode animCurveTA -n "animCurveTA171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.061808866237337522 3 -0.061808866237337522 
		6 -0.061808866237337522 10 -0.061808866237337522 20 -0.061808866237337522 
		24 -0.061808866237337522 28 -0.061808866237337522 32 -0.061808866237337522;
createNode animCurveTA -n "animCurveTA172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -59.058178941076754 3 -59.058178941076754 
		6 -59.058178941076754 10 -59.058178941076754 20 -59.058178941076754 24 -59.058178941076754 
		28 -59.058178941076754 32 -59.058178941076754;
createNode animCurveTA -n "animCurveTA173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 16.579147429757843 3 16.579147429757843 
		6 16.579147429757843 10 16.579147429757843 20 16.579147429757843 24 16.579147429757843 
		28 16.579147429757843 32 16.579147429757843;
createNode animCurveTA -n "animCurveTA174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 12.253734489678925 3 12.253734489678925 
		6 12.253734489678925 10 12.253734489678925 20 12.253734489678925 24 12.253734489678925 
		28 12.253734489678925 32 12.253734489678925;
createNode animCurveTA -n "animCurveTA175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -65.746751280844961 3 -65.746751280844961 
		6 -65.746751280844961 10 -65.746751280844961 20 -65.746751280844961 24 -65.746751280844961 
		28 -65.746751280844961 32 -65.746751280844961;
createNode animCurveTA -n "animCurveTA176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
createNode animCurveTA -n "animCurveTA177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 15.711328223519057 3 15.711328223519057 
		6 15.711328223519057 10 15.711328223519057 20 15.711328223519057 24 15.711328223519057 
		28 15.711328223519057 32 15.711328223519057;
createNode animCurveTA -n "animCurveTA178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 8.5572674112203622 3 8.5572674112203622 
		6 8.5572674112203622 10 8.5572674112203622 20 8.5572674112203622 24 8.5572674112203622 
		28 8.5572674112203622 32 8.5572674112203622;
createNode animCurveTA -n "animCurveTA179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
createNode animCurveTA -n "animCurveTA180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
createNode animCurveTA -n "animCurveTA181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
createNode animCurveTA -n "animCurveTA182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
createNode animCurveTA -n "animCurveTA183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
createNode animCurveTA -n "animCurveTA184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
createNode animCurveTA -n "animCurveTA185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 8.2533422302317216 3 8.2533422302317216 
		6 8.2533422302317216 10 8.2533422302317216 20 8.2533422302317216 24 8.2533422302317216 
		28 8.2533422302317216 32 8.2533422302317216;
createNode animCurveTA -n "animCurveTA186";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 23.263402056531085 3 23.263402056531085 
		6 23.263402056531085 10 23.263402056531085 20 23.263402056531085 24 23.263402056531085 
		28 23.263402056531085 32 23.263402056531085;
createNode animCurveTA -n "animCurveTA187";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 20.166277752815617 3 20.166277752815617 
		6 20.166277752815617 10 20.166277752815617 20 20.166277752815617 24 20.166277752815617 
		28 20.166277752815617 32 20.166277752815617;
createNode animCurveTA -n "animCurveTA188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
createNode animCurveTA -n "animCurveTA189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
createNode animCurveTA -n "animCurveTA190";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 33.429092416277157 3 33.429092416277157 
		6 33.429092416277157 10 33.429092416277157 20 33.429092416277157 24 33.429092416277157 
		28 33.429092416277157 32 33.429092416277157;
createNode animCurveTA -n "animCurveTA191";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA192";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA193";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA194";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA195";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA196";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.994403295754109 20 13.994403295754109 
		32 13.994403295754109;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA197";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA198";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA199";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.994403295754109 20 13.994403295754109 
		32 13.994403295754109;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
createNode animCurveTA -n "animCurveTA201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
createNode animCurveTA -n "animCurveTA202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 17.254116939558369 3 17.254116939558369 
		6 17.254116939558369 10 17.254116939558369 20 17.254116939558369 24 17.254116939558369 
		28 17.254116939558369 32 17.254116939558369;
createNode animCurveTA -n "animCurveTA203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
createNode animCurveTA -n "animCurveTA204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
createNode animCurveTA -n "animCurveTA205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
createNode animCurveTA -n "animCurveTA206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.87902215066922906 3 0.47169836699590695 
		6 0.3060699065895281 10 1.236975047779568 20 1.236975047779568 24 1.4214016114875909 
		28 0.87616976080293729 32 0.87902215066922906;
createNode animCurveTA -n "animCurveTA207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 4.7952631452849266 3 1.2768818095243442 
		6 -0.15351191025562338 10 7.7222637653379511 20 7.7222637653379511 24 9.4440669425409904 
		28 -1.2973778944769148 32 4.7952631452849266;
createNode animCurveTA -n "animCurveTA208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 7.5470594542643701 3 7.555110749961746 
		6 7.5655322219557872 10 7.3353787742734253 20 7.3353787742734253 24 7.5751720837071632 
		28 7.4537320541368777 32 7.5470594542643701;
createNode animCurveTA -n "animCurveTA209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1.2734920044837068 3 -0.77436614475965426 
		6 -0.43048234716517736 10 -18.829269962708576 15 -16.628895002917908 20 -16.628895002917908 
		24 -5.6568770064441845 28 2.310873568438117 32 -1.2734920044837068;
createNode animCurveTA -n "animCurveTA210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.71628531942149 3 16.096308660636037 
		6 -3.9084086951295003 10 -28.567668164768961 15 11.905623807122382 20 11.905623807122382 
		24 18.521324118131314 28 -5.7089991278026551 32 1.71628531942149;
createNode animCurveTA -n "animCurveTA211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.62960137906938 3 1.6474266959931043 
		6 1.6930326595131873 10 6.6060424320876807 15 -0.30458770080736486 20 -0.30458770080736486 
		24 0.91626232003423369 28 2.0077625371950685 32 1.62960137906938;
createNode animCurveTA -n "animCurveTA212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -4.8714700432790456 3 6.3459498001189099 
		6 -4.8714700432790456 10 -11.585389647444966 20 -4.8714700432790456 24 -1.107962030853916 
		28 -4.7871034605416334 32 -4.8714700432790456;
createNode animCurveTA -n "animCurveTA213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -11.783606204137085 3 1.9963037400559176 
		6 -11.783606204137085 10 -10.333092121253337 20 -11.783606204137085 24 -2.8983658144265312 
		28 5.037822461176523 32 -11.783606204137085;
createNode animCurveTA -n "animCurveTA214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 7.5423825101935913 3 6.3786479652115133 
		6 7.5423825101935913 10 7.4167347966497221 20 7.5423825101935913 24 6.6727974003941704 
		28 6.1239022477803227 32 7.5423825101935913;
createNode animCurveTA -n "animCurveTA215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.62622119873454107 3 1.6329203501433724 
		6 2.0923016578577855 10 0.62491185199516064 20 0.62491185199516064 24 0.62622119873454107 
		28 0.62731213752257731 32 0.62622119873454107;
createNode animCurveTA -n "animCurveTA216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -3.8840070108449005 3 -5.9572552200413194 
		6 -6.899880481305205 10 1.1641825201681875 20 1.1641825201681875 24 -3.8840070108449005 
		28 -5.1467380795344901 32 -3.8840070108449005;
createNode animCurveTA -n "animCurveTA217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.9840981620606046 3 1.9624155241830841 
		6 1.9403913422709886 10 2.0392151659083639 20 2.0392151659083639 24 1.9840981620606046 
		28 1.970241689140211 32 1.9840981620606046;
createNode animCurveTA -n "animCurveTA218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
createNode animCurveTA -n "animCurveTA219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
createNode animCurveTA -n "animCurveTA220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 27.080064458283051 3 27.080064458283051 
		6 27.080064458283051 10 27.080064458283051 20 27.080064458283051 24 27.080064458283051 
		28 27.080064458283051 32 27.080064458283051;
createNode animCurveTA -n "animCurveTA221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 10.423754966968488 3 10.423754966968488 
		6 10.423754966968488 10 10.423754966968488 20 10.423754966968488 24 10.423754966968488 
		28 10.423754966968488 32 10.423754966968488;
createNode animCurveTA -n "animCurveTA222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 27.722848255843903 3 27.722848255843903 
		6 27.722848255843903 10 27.722848255843903 20 27.722848255843903 24 27.722848255843903 
		28 27.722848255843903 32 27.722848255843903;
createNode animCurveTA -n "animCurveTA223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 21.576484776388227 3 21.576484776388227 
		6 21.576484776388227 10 21.576484776388227 20 21.576484776388227 24 21.576484776388227 
		28 21.576484776388227 32 21.576484776388227;
createNode animCurveTA -n "animCurveTA224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
createNode animCurveTA -n "animCurveTA225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
createNode animCurveTA -n "animCurveTA226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 27.911632519594587 3 27.911632519594587 
		6 27.911632519594587 10 27.911632519594587 20 27.911632519594587 24 27.911632519594587 
		28 27.911632519594587 32 27.911632519594587;
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
connectAttr "nps_sway_left.st" "clipLibrary2.st[0]";
connectAttr "nps_sway_left.du" "clipLibrary2.du[0]";
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
// End of nps-m_sway_left.ma
