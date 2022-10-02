//Maya ASCII 4.0 scene
//Name: cps_look_left.ma
//Last modified: Wed, Aug 14, 2002 10:31:07 AM
requires maya "4.0";
requires "p3dDeformer" "18.0.0.0";
requires "p3dmayaexp" "18.2";
requires "p3dSimpleShader" "18.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "cps_look_leftSource";
	setAttr ".ihi" 0;
	setAttr ".du" 30;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL288";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL289";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL290";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0008123122260844 30 1.0008123122260844;
createNode animCurveTL -n "animCurveTL291";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTL -n "animCurveTL292";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.81296617659799253 30 0.81296617659799253;
createNode animCurveTA -n "animCurveTA822";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTU -n "animCurveTU55";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU56";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU57";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU58";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU59";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU60";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTU -n "animCurveTU62";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "animCurveTA823";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA824";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA825";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL293";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL294";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL295";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL296";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.0407430139147178 3 2.0407430139147178 
		9 2.0407430139147178 13 2.0407430139147178 23 2.0407430139147178 30 2.0407430139147178;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL297";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.004658375723265 3 1.004658375723265 
		9 1.004658375723265 13 1.004658375723265 23 1.004658375723265 30 1.004658375723265;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL298";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.4087040652971967 3 2.4087040652971967 
		9 2.4087040652971967 13 2.4087040652971967 23 2.4087040652971967 30 2.4087040652971967;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA826";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -28.33147073208438 3 -28.33147073208438 
		9 -28.33147073208438 13 -28.33147073208438 23 -28.33147073208438 30 -28.33147073208438;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA827";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -10.113681911874204 3 -10.113681911874204 
		9 -10.113681911874204 13 -10.113681911874204 23 -10.113681911874204 30 -10.113681911874204;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA828";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 3.6896128937020114 3 3.6896128937020114 
		9 3.6896128937020114 13 3.6896128937020114 23 3.6896128937020114 30 3.6896128937020114;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL299";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.4790535543793637 3 2.4790535543793637 
		9 2.4790535543793637 13 2.4790535543793637 23 2.4790535543793637 30 2.4790535543793637;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL300";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.98803500993479365 3 0.98803500993479365 
		9 0.98803500993479365 13 0.98803500993479365 23 0.98803500993479365 30 0.98803500993479365;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL301";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.3692681032003731 3 2.3692681032003731 
		9 2.3692681032003731 13 2.3692681032003731 23 2.3692681032003731 30 2.3692681032003731;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA829";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -27.647037481197401 3 -27.647037481197401 
		9 -27.647037481197401 13 -27.647037481197401 23 -27.647037481197401 30 -27.647037481197401;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA830";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.6471102606573034 3 1.6471102606573034 
		9 1.6471102606573034 13 1.6471102606573034 23 1.6471102606573034 30 1.6471102606573034;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA831";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 7.7922141916432519 3 7.7922141916432519 
		9 7.7922141916432519 13 7.7922141916432519 23 7.7922141916432519 30 7.7922141916432519;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA832";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA833";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA834";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA835";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA836";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA837";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA838";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA839";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA840";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA841";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA842";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA843";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL302";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 -0.011621961304049206 9 -0.011621961304049206 
		13 -0.011621961304049206 23 -0.011621961304049206 30 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 0.24993926286697388 1 1 1 0.19684134423732758;
	setAttr -s 6 ".kiy[0:5]"  0 -0.96826153993606567 0 0 0 0.98043537139892578;
createNode animCurveTL -n "animCurveTL303";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0.53592894662340362 9 0.53592894662340362 
		13 0.53592894662340362 23 0.53592894662340362 30 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 0.0055976691655814648 1 1 1 0.004353769589215517;
	setAttr -s 6 ".kiy[0:5]"  0 0.99998432397842407 0 0 0 -0.99999052286148071;
createNode animCurveTL -n "animCurveTL304";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 3 1.1714982742260704 9 1.1714982742260704 
		13 1.1714982742260704 23 1.1714982742260704 30 1;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 0.017490211874246597 1 1 1 0.013604319654405117;
	setAttr -s 6 ".kiy[0:5]"  0 0.99984705448150635 0 0 0 -0.99990743398666382;
createNode animCurveTL -n "animCurveTL305";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 -0.097466557943624466 9 -0.097466557943624466 
		13 -0.097466557943624466 23 -0.097466557943624466 30 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 0.030765216797590256 1 1 1 0.023932978510856628;
	setAttr -s 6 ".kiy[0:5]"  0 -0.99952661991119385 0 0 0 0.99971354007720947;
createNode animCurveTL -n "animCurveTL306";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0.89926276112817349 9 0.89926276112817349 
		13 0.89926276112817349 23 0.89926276112817349 30 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 0.0033360477536916733 1 1 1 0.0025947093963623047;
	setAttr -s 6 ".kiy[0:5]"  0 0.99999445676803589 0 0 0 -0.99999666213989258;
createNode animCurveTL -n "animCurveTL307";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 3 0.80168990793572048 9 0.80168990793572048 
		13 0.80168990793572048 23 0.80168990793572048 30 1;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 0.015126092359423637 1 1 1 0.011765270493924618;
	setAttr -s 6 ".kiy[0:5]"  0 -0.99988561868667603 0 0 0 0.99993079900741577;
createNode animCurveTL -n "animCurveTL308";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.259 3 2.259 9 2.259 13 2.259 
		23 2.259 30 2.259;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL309";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.349 3 1.349 9 1.349 13 1.349 
		23 1.349 30 1.349;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL310";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.835 3 1.835 9 1.835 13 1.835 
		23 1.835 30 1.835;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA844";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -26.004389268796515 3 -19.43441188508616 
		9 -19.43441188508616 13 -19.920637206803644 23 -19.921763597498913 30 -26.004389268796515;
	setAttr -s 6 ".kit[0:5]"  1 9 9 1 1 9;
	setAttr -s 6 ".kot[3:5]"  1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.93409144878387451 0.99967610836029053 
		0.9999958872795105 0.99999725818634033 0.91021764278411865;
	setAttr -s 6 ".kiy[0:5]"  0 0.35703384876251221 -0.025450453162193298 
		-0.0028768358752131462 0.0023505254648625851 -0.41413024067878723;
	setAttr -s 6 ".kox[3:5]"  0.9999958872795105 0.99999725818634033 
		0.91021764278411865;
	setAttr -s 6 ".koy[3:5]"  -0.0028768358752131462 0.0023505252320319414 
		-0.41413024067878723;
createNode animCurveTA -n "animCurveTA845";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 -5.1103241833625495 9 -5.1103241833625495 
		13 8.997204967378952 23 9.0952495694251922 30 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 1 1 9;
	setAttr -s 6 ".kot[3:5]"  1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.95853394269943237 0.80435371398925781 
		0.9804224967956543 0.97796767950057983 0.82680225372314453;
	setAttr -s 6 ".kiy[0:5]"  0 -0.2849784791469574 0.59415072202682495 
		0.19690544903278351 -0.20875647664070129 -0.56249266862869263;
	setAttr -s 6 ".kox[3:5]"  0.9804224967956543 0.97796767950057983 
		0.82680225372314453;
	setAttr -s 6 ".koy[3:5]"  0.19690543413162231 -0.20875647664070129 
		-0.56249266862869263;
createNode animCurveTA -n "animCurveTA846";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 -4.1497686529369933 9 -4.1497686529369933 
		13 2.6759954199418994 23 2.7708709036143357 30 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 1 1 9;
	setAttr -s 6 ".kot[3:5]"  1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.97207236289978027 0.94166630506515503 
		0.9970359206199646 0.99920612573623657 0.97918963432312012;
	setAttr -s 6 ".kiy[0:5]"  0 -0.23468135297298431 0.33654794096946716 
		0.076937690377235413 -0.039838172495365143 -0.20294748246669769;
	setAttr -s 6 ".kox[3:5]"  0.9970359206199646 0.99920612573623657 
		0.97918963432312012;
	setAttr -s 6 ".koy[3:5]"  0.076937690377235413 -0.039838172495365143 
		-0.20294748246669769;
createNode animCurveTA -n "animCurveTA847";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA848";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA849";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA850";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA851";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA852";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA853";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA854";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA855";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA856";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA857";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA858";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA859";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA860";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA861";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA862";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA863";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA864";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA865";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA866";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA867";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 9 0 13 0 23 0 30 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA868";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 9 0 13 0 23 0 30 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA869";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 -37.313732430097119 9 -37.313732430097119 
		13 -37.313732430097119 23 -37.313732430097119 30 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 0.41839608550071716 1 1 1 0.33729124069213867;
	setAttr -s 6 ".kiy[0:5]"  0 -0.90826469659805298 0 0 0 0.94140034914016724;
createNode animCurveTA -n "animCurveTA870";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 9 0 13 0 23 0 30 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA871";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 9 0 13 0 23 0 30 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA872";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 9 0 13 0 23 0 30 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL311";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -0.36701121502835038 1 -0.2249812425357311 
		2 -0.078847596481116972 3 0.011451211342556462 4 0.049321622103464052 5 0.075587131452889769 
		6 0.087443656000482414 7 0.082339932471638233 8 0.057920208963826103 9 0.011451211342556462 
		10 -0.11131874713036723 11 -0.3052008594135836 12 -0.47604428314873476 13 
		-0.55330522383354774 14 -0.56740667375898712 15 -0.57801108011069713 16 -0.58534286642294808 
		17 -0.5896091501198234 18 -0.59099724658010167 19 -0.58967323866980881 20 
		-0.58578146987433999 21 -0.57944482835824096 22 -0.57076569772336005 23 -0.55982745753971364 
		24 -0.54193367180369023 25 -0.51458736249531345 26 -0.48174731104990315 27 
		-0.44759693799429756 28 -0.41577156563328033 29 -0.38865624541191951 30 -0.36701121502835038;
createNode animCurveTL -n "animCurveTL312";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -0.81616479626369709 1 -0.81182529442528251 
		2 -0.77812094216913485 3 -0.74404961011561033 4 -0.7303642728721067 5 -0.72533738743460274 
		6 -0.7270122218758599 7 -0.73279434846774449 8 -0.73966252860482773 9 -0.74404961011561033 
		10 -0.74321748822567402 11 -0.72378017577761111 12 -0.68429463007521574 13 
		-0.6576157177384363 14 -0.65351101432797631 15 -0.65036511938526242 16 -0.64820376735894802 
		17 -0.64702499485853993 18 -0.64680240124549271 19 -0.64748820359091586 20 
		-0.64901607775110282 21 -0.65130378537547684 22 -0.65425559280398571 23 -0.65776449221496736 
		24 -0.66801218089753733 25 -0.68866764745176823 26 -0.71555513731764475 27 
		-0.74464054091968512 28 -0.77255126111386174 29 -0.79687159597974833 30 -0.81616479626369709;
createNode animCurveTL -n "animCurveTL313";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0.15073241025578563 1 0.27634438335769679 
		2 0.38804258866208019 3 0.44815878719160135 4 0.46703631451371169 5 0.4728642022886092 
		6 0.47013342313558126 7 0.4631341963824383 8 0.45525750752658345 9 0.44815878719160135 
		10 0.42369331378200281 11 0.34360062899463556 12 0.22212526808808514 13 0.14796184188621042 
		14 0.13683820490390092 15 0.12783373816740123 16 0.12112213542961101 17 0.11683058154775978 
		18 0.11504367976481249 19 0.11580716341346786 20 0.11913136596764702 21 0.1249944450896706 
		22 0.13334537346600825 23 0.14410672221209367 24 0.15568820765984143 25 0.16521098294976241 
		26 0.17064954369087118 27 0.17089605284318013 28 0.16633549900796701 29 0.15874473442702761 
		30 0.15073241025578563;
createNode animCurveTA -n "animCurveTA873";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -15.218182696168652 1 -14.208220418141472 
		2 -6.6642743055386671 3 30.165176997087237 4 82.085574628952088 5 104.5107093464503 
		6 106.53712436261871 7 90.34375237789726 8 50.12099443893139 9 30.165176997087237 
		10 26.115925295900379 11 23.990702917640977 12 18.3732500482399 13 14.540087618286092 
		14 13.673553204605303 15 13.021713819548211 16 12.599261601472151 17 12.412543080562754 
		18 12.464213322689092 19 12.756007890653118 20 13.290260786486296 21 14.070715959086131 
		22 15.10304862250687 23 16.395393228273299 24 20.264198222969465 25 25.146536320512684 
		26 24.793255960373028 27 18.049706452290547 28 7.4852257078664897 29 -4.2209555060394166 
		30 -15.218182696168652;
createNode animCurveTA -n "animCurveTA874";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 1.949047094653634 1 35.174544081931103 
		2 66.430670431291247 3 82.440431722168469 4 84.17667755863063 5 83.615263649066733 
		6 84.235320606891477 7 85.658711573356726 8 85.523275449852747 9 82.440431722168469 
		10 75.389914039987147 11 67.589114709209866 12 62.145699833993817 13 59.179392717338622 
		14 58.757576203319594 15 58.392258073624909 16 58.103477293930055 17 57.906527054463517 
		18 57.81205491724586 19 57.826795984082693 20 57.954572204600368 21 58.197342932221943 
		22 58.5561823628654 23 59.032106231454776 24 58.210738829832678 25 53.421291545332849 
		26 44.013769985517804 27 31.830231138162691 28 19.506504026317259 29 9.1643491088364613 
		30 1.949047094653634;
createNode animCurveTA -n "animCurveTA875";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 32.560381950754014 1 25.466521342551911 
		2 23.101279734737187 3 52.415081921341965 4 101.7896109796886 5 123.88773803960355 
		6 126.99747066774546 7 112.32313710987425 8 73.009053992249875 9 52.415081921341965 
		10 45.213476672398997 11 38.984962161636453 12 29.462021666024906 13 23.588003708083033 
		14 22.688905806320367 15 21.983206367169117 16 21.479468218617221 17 21.175817259354044 
		18 21.065072871451321 19 21.13789674994204 20 21.384604222757293 21 21.796216938657782 
		22 22.365203934381899 23 23.086229088835712 24 29.203383033519295 25 40.76408054348142 
		26 49.331088534011478 27 51.569577411691448 28 48.270890143782928 29 41.22723913293072 
		30 32.560381950754014;
createNode animCurveTL -n "animCurveTL314";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0.31104933183696742 1 0.36238295181340108 
		2 0.40521800381271705 3 0.42736134876635962 4 0.43737591593236802 5 0.44662998136527959 
		6 0.45301603046941014 7 0.45389088729429089 8 0.44622693061757274 9 0.42736134876635962 
		10 0.3777669885756984 11 0.30934712445485557 12 0.25897400448367991 13 0.24271052377016475 
		14 0.24533682221421088 15 0.24775321400943881 16 0.24975092789371617 17 0.25115670036065468 
		18 0.25183498272886085 19 0.25169049458934467 20 0.25067122428865107 21 0.2487719525776913 
		22 0.24603834718413795 23 0.24257164344538809 24 0.23905766630048333 25 0.23751196710346675 
		26 0.24017995078824583 27 0.24892376422319445 28 0.26452628895353769 29 0.28613012990044068 
		30 0.31104933183696742;
createNode animCurveTL -n "animCurveTL315";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -0.77985659578283428 1 -0.69735826094068298 
		2 -0.61904811877477184 3 -0.57389204681314276 4 -0.55707860070490389 5 -0.54751919423943418 
		6 -0.54473465176578539 7 -0.54852250293975613 8 -0.55850185465642865 9 -0.57389204681314276 
		10 -0.60992017892864581 11 -0.66289514524314319 12 -0.70899306759637515 13 
		-0.72965970638628819 14 -0.73111371048047602 15 -0.7321158632939776 16 -0.73271363030499048 
		17 -0.73295712573908955 18 -0.73290027684278924 19 -0.7326016358732621 20 
		-0.73212480003603964 21 -0.73153839755696892 22 -0.73091559594345423 23 -0.73033308682031883 
		24 -0.72990742996493596 25 -0.73063679464709086 26 -0.73397728154243791 27 
		-0.74095677506087054 28 -0.75171914151564001 29 -0.76532745758744325 30 -0.77985659578283428;
createNode animCurveTL -n "animCurveTL316";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0.31581342454007461 1 0.28666125455070235 
		2 0.2480508676729096 3 0.22020208448763329 4 0.20889847007410212 5 0.20260489515341762 
		6 0.20104253135422062 7 0.20390351418630859 8 0.21067609293946107 9 0.22020208448763329 
		10 0.24038395267745671 11 0.26185890750536112 12 0.27272811104028222 13 0.27144236237122416 
		14 0.26294349658396782 15 0.25616409689545405 16 0.2511285640419027 17 0.24787418642297041 
		18 0.24645525722342285 19 0.24694643712091163 20 0.24944528024401535 21 0.25407382998044142 
		22 0.26097917735184639 23 0.27033285878487362 24 0.27924000678323269 25 0.28597750285603324 
		26 0.29218452727546423 27 0.29860311108978821 28 0.30502432371803173 29 0.31082910211687315 
		30 0.31581342454007461;
createNode animCurveTA -n "animCurveTA876";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -10.02028477019989 1 -29.862125622970467 
		2 -41.286623049900498 3 -18.974458932614752 4 2.9223323670547674 5 9.5952791420715666 
		6 6.3976072868546172 7 -1.5696768122536398 8 -11.056520175509144 9 -18.974458932614752 
		10 -30.152448593508538 11 -30.119038266147701 12 -9.5762339919193185 13 1.7549372210256211 
		14 2.9404630761713797 15 3.8256021606843977 16 4.4296270028923965 17 4.7779615751745039 
		18 4.8991708871002597 19 4.8232408443145784 20 4.5805032970014619 21 4.2008948755384337 
		22 3.7134241268493695 23 3.1458591742236406 24 -0.73648644953097042 25 -6.6487597281078035 
		26 -10.204167335885284 27 -11.325839137335597 28 -11.085835086631372 29 -10.43517173580006 
		30 -10.02028477019989;
createNode animCurveTA -n "animCurveTA877";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0.84732927928403023 1 -33.870836446011737 
		2 -64.20325716310785 3 -77.456093406193162 4 -78.275537128065011 5 -77.178080074168065 
		6 -76.49647338035436 7 -76.378311357600126 8 -76.612374585774887 9 -77.456093406193162 
		10 -79.314305642540717 11 -79.107733399505349 12 -75.73589186337955 13 -72.073964626827504 
		14 -70.86154653980158 15 -69.892999860864364 16 -69.180802648261647 17 -68.73184464607337 
		18 -68.547733195697461 19 -68.625061034864757 20 -68.955621786977829 21 -69.526569089152872 
		22 -70.320524899462683 23 -71.315652368607203 24 -69.621584043463841 25 -62.899971948926549 
		26 -52.189988125997161 27 -38.903690744560379 28 -24.595492478900677 29 -10.842696141540985 
		30 0.84732927928403023;
createNode animCurveTA -n "animCurveTA878";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -48.672083315317913 1 -23.828287367773154 
		2 -6.3267535919631221 3 -23.941273352445435 4 -43.996716111175424 5 -49.822732725560115 
		6 -46.577685417143464 7 -39.137467678018972 8 -30.592665929046106 9 -23.941273352445435 
		10 -15.76466812734272 11 -20.598036944912469 12 -44.6295033403144 13 -57.052439431771205 
		14 -58.602852735844273 15 -59.825249229678384 16 -60.722690016136596 17 -61.300490830616596 
		18 -61.56313023156271 19 -61.512557346903634 20 -61.147237662761498 21 -60.461615936331896 
		22 -59.445866606223412 23 -58.085944314742278 24 -53.504866864505409 25 -47.301959500274236 
		26 -43.746915461282782 27 -42.924419515677727 28 -43.942326533970558 29 -46.078171708602561 
		30 -48.672083315317913;
createNode animCurveTL -n "animCurveTL317";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.1657315743829622 3 2.4516397770938902 
		9 2.4516397770938902 13 2.1808452019085052 23 2.177708585239678 30 2.1657315743829622;
	setAttr -s 6 ".kit[0:5]"  1 9 9 1 1 9;
	setAttr -s 6 ".kot[3:5]"  1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.010492300614714622 0.012308521196246147 
		0.032478947192430496 0.044165089726448059 0.19122263789176941;
	setAttr -s 6 ".kiy[0:5]"  0 0.99994492530822754 -0.99992424249649048 
		-0.99947243928909302 0.99902427196502686 -0.98154670000076294;
	setAttr -s 6 ".kox[3:5]"  0.032478909939527512 0.044164936989545822 
		0.19122263789176941;
	setAttr -s 6 ".koy[3:5]"  -0.99947243928909302 0.99902427196502686 
		-0.98154670000076294;
createNode animCurveTL -n "animCurveTL318";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.6749265988332942 3 1.7744259866497851 
		9 1.7744259866497851 13 1.7140176551948927 23 1.712198408154701 30 1.6749265988332942;
	setAttr -s 6 ".kit[0:5]"  1 9 9 1 1 9;
	setAttr -s 6 ".kot[3:5]"  1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.030137244611978531 0.055096209049224854 
		0.15605665743350983 0.20129336416721344 0.062480852007865906;
	setAttr -s 6 ".kiy[0:5]"  0 0.99954575300216675 -0.99848103523254395 
		-0.98774808645248413 0.97953099012374878 -0.9980461597442627;
	setAttr -s 6 ".kox[3:5]"  0.15605802834033966 0.20129196345806122 
		0.062480852007865906;
	setAttr -s 6 ".koy[3:5]"  -0.9877479076385498 0.97953128814697266 
		-0.9980461597442627;
createNode animCurveTL -n "animCurveTL319";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.6001625185510933 3 2.74369836919209 
		9 2.74369836919209 13 2.9042314146686299 23 2.9086941093196765 30 2.6001625185510933;
	setAttr -s 6 ".kit[0:5]"  1 9 9 1 1 9;
	setAttr -s 6 ".kot[3:5]"  1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.020896138623356819 0.020759681239724159 
		0.052728556096553802 0.078783102333545685 0.0075624887831509113;
	setAttr -s 6 ".kiy[0:5]"  0 0.99978166818618774 0.99978446960449219 
		0.99860888719558716 -0.99689179658889771 -0.99997138977050781;
	setAttr -s 6 ".kox[3:5]"  0.052728686481714249 0.078782588243484497 
		0.0075624887831509113;
	setAttr -s 6 ".koy[3:5]"  0.99860888719558716 -0.99689179658889771 
		-0.99997138977050781;
createNode animCurveTA -n "animCurveTA879";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -33.734888782993906 3 -39.296899878223357 
		9 -39.296899878223357 13 66.367812927765996 23 71.263475263087457 30 -33.734888782993906;
	setAttr -s 6 ".kit[0:5]"  1 9 9 1 1 9;
	setAttr -s 6 ".kot[3:5]"  1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.95142912864685059 0.17786508798599243 
		0.45199146866798401 0.8021012544631958 0.12630622088909149;
	setAttr -s 6 ".kiy[0:5]"  0 -0.30786791443824768 0.98405486345291138 
		0.89202225208282471 -0.59718805551528931 -0.99199128150939941;
	setAttr -s 6 ".kox[3:5]"  0.45199140906333923 0.80210131406784058 
		0.12630622088909149;
	setAttr -s 6 ".koy[3:5]"  0.89202231168746948 -0.59718793630599976 
		-0.99199128150939941;
createNode animCurveTA -n "animCurveTA880";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 14.870586397896902 3 77.756094215389751 
		9 77.756094215389751 13 87.799938400982839 23 88.00934673239405 30 14.870586397896902;
	setAttr -s 6 ".kit[0:5]"  1 9 9 1 1 9;
	setAttr -s 6 ".kot[3:5]"  1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.26366192102432251 0.88507187366485596 
		0.98880434036254883 0.99689573049545288 0.17981050908565521;
	setAttr -s 6 ".kiy[0:5]"  0 0.96461516618728638 0.46545439958572388 
		0.14921793341636658 -0.078733354806900024 -0.98370128870010376;
	setAttr -s 6 ".kox[3:5]"  0.98880434036254883 0.99689573049545288 
		0.17981050908565521;
	setAttr -s 6 ".koy[3:5]"  0.14921791851520538 -0.078733339905738831 
		-0.98370128870010376;
createNode animCurveTA -n "animCurveTA881";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 30.592169336881899 3 -22.376629620485513 
		9 -22.376629620485513 13 82.294947820394981 23 84.962254373045752 30 30.592169336881899;
	setAttr -s 6 ".kit[0:5]"  1 9 9 1 1 9;
	setAttr -s 6 ".kot[3:5]"  1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.30866169929504395 0.17949856817722321 
		0.42034423351287842 0.63329160213470459 0.23877671360969543;
	setAttr -s 6 ".kiy[0:5]"  0 -0.951171875 0.98375821113586426 
		0.90736472606658936 -0.77391326427459717 -0.97107452154159546;
	setAttr -s 6 ".kox[3:5]"  0.42034426331520081 0.63329160213470459 
		0.23877671360969543;
	setAttr -s 6 ".koy[3:5]"  0.90736472606658936 -0.77391326427459717 
		-0.97107452154159546;
createNode animCurveTL -n "animCurveTL320";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 3.6370999456408879 3 3.6876246910508081 
		9 3.6876246910508081 13 3.6494533260753963 23 3.6490996145885175 30 3.6370999456408879;
	setAttr -s 6 ".kit[0:5]"  1 9 9 1 1 9;
	setAttr -s 6 ".kot[3:5]"  1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.059272453188896179 0.08699442446231842 
		0.40291902422904968 0.38655030727386475 0.19087472558021545;
	setAttr -s 6 ".kiy[0:5]"  0 0.9982418417930603 -0.9962087869644165 
		-0.91523563861846924 0.9222683310508728 -0.98161441087722778;
	setAttr -s 6 ".kox[3:5]"  0.40291911363601685 0.38655009865760803 
		0.19087472558021545;
	setAttr -s 6 ".koy[3:5]"  -0.91523557901382446 0.92226839065551758 
		-0.98161441087722778;
createNode animCurveTL -n "animCurveTL321";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.7841255587132463 3 1.7861655623246184 
		9 1.7861655623246184 13 1.786165562324618 23 1.786165562324618 30 1.7841255587132463;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 0.82692605257034302 1 1 1 0.75284254550933838;
	setAttr -s 6 ".kiy[0:5]"  0 0.56231069564819336 0 0 0 -0.65820062160491943;
createNode animCurveTL -n "animCurveTL322";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.7027068055413355 3 2.6422490140780237 
		9 2.6422490140780237 13 2.2896177206402597 23 2.2838993754344394 30 2.7027068055413355;
	setAttr -s 6 ".kit[0:5]"  1 9 9 1 1 9;
	setAttr -s 6 ".kot[3:5]"  1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.049560416489839554 0.0094523215666413307 
		0.01665278896689415 0.015993457287549973 0.005571288987994194;
	setAttr -s 6 ".kiy[0:5]"  0 -0.99877113103866577 -0.99995529651641846 
		-0.99986135959625244 0.99987208843231201 0.9999845027923584;
	setAttr -s 6 ".kox[3:5]"  0.016652807593345642 0.015993481501936913 
		0.005571288987994194;
	setAttr -s 6 ".koy[3:5]"  -0.99986135959625244 0.99987208843231201 
		0.9999845027923584;
createNode animCurveTA -n "animCurveTA882";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -26.203413720634714 3 -88.808544236675544 
		9 -88.808544236675544 13 -50.457872329633027 23 -49.125223502850446 30 -26.203413720634714;
	setAttr -s 6 ".kit[0:5]"  1 9 9 1 1 9;
	setAttr -s 6 ".kot[3:5]"  1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.26476013660430908 0.44578000903129578 
		0.81347930431365967 0.97165679931640625 0.50381368398666382;
	setAttr -s 6 ".kiy[0:5]"  0 -0.96431428194046021 0.89514255523681641 
		0.58159387111663818 -0.23639601469039917 0.86381238698959351;
	setAttr -s 6 ".kox[3:5]"  0.81347930431365967 0.97165679931640625 
		0.50381368398666382;
	setAttr -s 6 ".koy[3:5]"  0.58159387111663818 -0.23639601469039917 
		0.86381238698959351;
createNode animCurveTA -n "animCurveTA883";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -14.791961579779635 3 -83.878009663660919 
		9 -83.878009663660919 13 -52.587007241515991 23 -52.007096784436918 30 -14.791961579779635;
	setAttr -s 6 ".kit[0:5]"  1 9 9 1 1 9;
	setAttr -s 6 ".kot[3:5]"  1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.24144113063812256 0.52097952365875244 
		0.84296882152557373 0.88071328401565552 0.33808284997940063;
	setAttr -s 6 ".kiy[0:5]"  0 -0.97041547298431396 0.85356920957565308 
		0.53796237707138062 -0.4736497700214386 0.9411163330078125;
	setAttr -s 6 ".kox[3:5]"  0.84296894073486328 0.88071328401565552 
		0.33808284997940063;
	setAttr -s 6 ".koy[3:5]"  0.53796225786209106 -0.47364971041679382 
		0.9411163330078125;
createNode animCurveTA -n "animCurveTA884";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -45.895436695401962 3 39.173779852465344 
		9 39.173779852465344 13 -2.1658139959082372 23 -3.315022753553591 30 -45.895436695401962;
	setAttr -s 6 ".kit[0:5]"  1 9 9 1 1 9;
	setAttr -s 6 ".kot[3:5]"  1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.19805338978767395 0.41939815878868103 
		0.7117842435836792 0.77371042966842651 0.29955330491065979;
	setAttr -s 6 ".kiy[0:5]"  0 0.98019123077392578 -0.90780240297317505 
		-0.70239812135696411 0.63353937864303589 -0.95407956838607788;
	setAttr -s 6 ".kox[3:5]"  0.71178418397903442 0.77371042966842651 
		0.29955330491065979;
	setAttr -s 6 ".koy[3:5]"  -0.70239824056625366 0.63353943824768066 
		-0.95407956838607788;
createNode animCurveTL -n "animCurveTL323";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.063331173333856433 3 0.35039089098226439 
		9 0.35039089098226439 13 0.35039089098226439 23 0.35039089098226439 30 0.063331173333856433;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 0.010450216010212898 1 1 1 0.0081281214952468872;
	setAttr -s 6 ".kiy[0:5]"  0 0.99994540214538574 0 0 0 -0.99996697902679443;
createNode animCurveTL -n "animCurveTL324";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.69960805773293522 3 -0.40854033940183732 
		9 -0.40854033940183732 13 -0.40854033940183732 23 -0.40854033940183732 30 
		-0.69960805773293522;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 0.010306332260370255 1 1 1 0.0080162044614553452;
	setAttr -s 6 ".kiy[0:5]"  0 0.99994689226150513 0 0 0 -0.99996787309646606;
createNode animCurveTL -n "animCurveTL325";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.66762598980258558 3 -0.82408995422063858 
		9 -0.82408995422063858 13 -0.82408995422063858 23 -0.82408995422063858 30 
		-0.66762598980258558;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 0.019170220941305161 1 1 1 0.014911253936588764;
	setAttr -s 6 ".kiy[0:5]"  0 -0.99981623888015747 0 0 0 0.9998888373374939;
createNode animCurveTL -n "animCurveTL326";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.31054502397108613 3 -0.77290696453185026 
		9 -0.77290696453185026 13 -0.77290696453185026 23 -0.77290696453185026 30 
		-0.31054502397108613;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 0.0064882864244282246 1 1 1 0.00504648732021451;
	setAttr -s 6 ".kiy[0:5]"  0 -0.99997895956039429 0 0 0 0.99998724460601807;
createNode animCurveTL -n "animCurveTL327";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.55640530640609931 3 -0.71234308293286885 
		9 -0.71234308293286885 13 -0.71234308293286885 23 -0.71234308293286885 30 
		-0.55640530640609931;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 0.019234882667660713 1 1 1 0.014961558394134045;
	setAttr -s 6 ".kiy[0:5]"  0 -0.99981498718261719 0 0 0 0.99988806247711182;
createNode animCurveTL -n "animCurveTL328";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.57914122395678103 3 -0.35872267288917942 
		9 -0.35872267288917942 13 -0.35872267288917942 23 -0.35872267288917942 30 
		-0.57914122395678103;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 0.013609208166599274 1 1 1 0.010585327632725239;
	setAttr -s 6 ".kiy[0:5]"  0 0.99990737438201904 0 0 0 -0.99994397163391113;
createNode animCurveTA -n "animCurveTA885";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 12.253734489678925 3 12.253734489678925 
		9 12.253734489678925 13 12.253734489678925 23 12.253734489678925 30 12.253734489678925;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA886";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -65.746751280844975 3 -65.746751280844961 
		9 -65.746751280844961 13 -65.746751280844961 23 -65.746751280844961 30 -65.746751280844975;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA887";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 9 0 13 0 23 0 30 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA888";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.061808866237340665 3 -0.061808866237337522 
		9 -0.061808866237337522 13 -0.061808866237337522 23 -0.061808866237337522 
		30 -0.061808866237340665;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA889";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -59.058178941076754 3 -59.058178941076754 
		9 -59.058178941076754 13 -59.058178941076754 23 -59.058178941076754 30 -59.058178941076754;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA890";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 16.57914742975785 3 16.579147429757843 
		9 16.579147429757843 13 16.579147429757843 23 16.579147429757843 30 16.57914742975785;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA891";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.5572674112203657 3 8.5572674112203622 
		9 8.5572674112203622 13 8.5572674112203622 23 8.5572674112203622 30 8.5572674112203657;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA892";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 15.711328223519061 3 15.711328223519057 
		9 15.711328223519057 13 15.711328223519057 23 15.711328223519057 30 15.711328223519061;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA893";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 9 0 13 0 23 0 30 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA894";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 9 0 13 0 23 0 30 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA895";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 9 0 13 0 23 0 30 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA896";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 9 0 13 0 23 0 30 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA897";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 9 0 13 0 23 0 30 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA898";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 9 0 13 0 23 0 30 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA899";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -177.04830761929054 3 10.423754966968488 
		9 10.423754966968488 13 10.423754966968488 23 10.423754966968488 30 -177.04830761929054;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 0.091303937137126923 1 1 1 0.071131400763988495;
	setAttr -s 6 ".kiy[0:5]"  0 0.99582308530807495 0 0 0 -0.99746698141098022;
createNode animCurveTA -n "animCurveTA900";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.7228482558439 3 27.722848255843903 
		9 27.722848255843903 13 27.722848255843903 23 27.722848255843903 30 27.7228482558439;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA901";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 21.576484776388227 3 21.576484776388227 
		9 21.576484776388227 13 21.576484776388227 23 21.576484776388227 30 21.576484776388227;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA902";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 9 0 13 0 23 0 30 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA903";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 9 0 13 0 23 0 30 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA904";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.080064458283051 3 27.080064458283051 
		9 27.080064458283051 13 27.080064458283051 23 27.080064458283051 30 27.080064458283051;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA905";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA906";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA907";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA908";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA909";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA910";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 30 13.994403295754109;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA911";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA912";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA913";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 30 13.994403295754109;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA914";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 9 0 13 0 23 0 30 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA915";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 9 0 13 0 23 0 30 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA916";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.911632519594587 3 27.911632519594587 
		9 27.911632519594587 13 27.911632519594587 23 27.911632519594587 30 27.911632519594587;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA917";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 9 0 13 0 23 0 30 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA918";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 9 0 13 0 23 0 30 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA919";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 9 0 13 0 23 0 30 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA920";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.373100660218926 3 -3.031445027417401 
		9 -3.031445027417401 13 7.0267796342597171 23 7.0733814460934834 30 -1.373100660218926;
	setAttr -s 6 ".kit[0:5]"  1 9 9 1 1 9;
	setAttr -s 6 ".kot[3:5]"  1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99537819623947144 0.88479727506637573 
		0.99064356088638306 0.99252748489379883 0.84540629386901855;
	setAttr -s 6 ".kiy[0:5]"  0 -0.096032656729221344 0.46597617864608765 
		0.13647471368312836 -0.12202140688896179 -0.53412377834320068;
	setAttr -s 6 ".kox[3:5]"  0.99064356088638306 0.99252748489379883 
		0.84540629386901855;
	setAttr -s 6 ".koy[3:5]"  0.13647471368312836 -0.1220213994383812 
		-0.53412377834320068;
createNode animCurveTA -n "animCurveTA921";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.38374158911587308 3 -4.5438645663143893 
		9 -4.5438645663143893 13 -3.1225354573038291 23 -3.0830236060568819 30 0.38374158911587308;
	setAttr -s 6 ".kit[0:5]"  1 9 9 1 1 9;
	setAttr -s 6 ".kot[3:5]"  1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.96127921342849731 0.99724221229553223 
		0.99961960315704346 0.99976682662963867 0.96798413991928101;
	setAttr -s 6 ".kiy[0:5]"  0 -0.27557617425918579 0.07421538233757019 
		0.027580000460147858 -0.021592851728200912 0.25101128220558167;
	setAttr -s 6 ".kox[3:5]"  0.99961960315704346 0.99976682662963867 
		0.96798413991928101;
	setAttr -s 6 ".koy[3:5]"  0.027580000460147858 -0.021592851728200912 
		0.25101128220558167;
createNode animCurveTA -n "animCurveTA922";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.96901743689791298 3 7.7360936746637758 
		9 7.7360936746637758 13 6.401622397513365 23 6.39543951910409 30 0.96901743689791298;
	setAttr -s 6 ".kit[0:5]"  1 9 9 1 1 9;
	setAttr -s 6 ".kot[3:5]"  1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.93048667907714844 0.99756777286529541 
		0.99982273578643799 0.99971663951873779 0.92658108472824097;
	setAttr -s 6 ".kiy[0:5]"  0 0.36632567644119263 -0.069702804088592529 
		-0.018828786909580231 0.023804469034075737 -0.37609502673149109;
	setAttr -s 6 ".kox[3:5]"  0.99982273578643799 0.99971663951873779 
		0.92658108472824097;
	setAttr -s 6 ".koy[3:5]"  -0.018828785046935081 0.023804469034075737 
		-0.37609502673149109;
createNode animCurveTA -n "animCurveTA923";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.2144674450583466 3 -6.1959039298449161 
		9 -6.1959039298449161 13 72.261835848078235 23 72.807101986708645 30 -2.2144674450583466;
	setAttr -s 6 ".kit[0:5]"  1 9 9 1 1 9;
	setAttr -s 6 ".kot[3:5]"  1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.97420698404312134 0.23651853203773499 
		0.99241846799850464 0.98743873834609985 0.17543844878673553;
	setAttr -s 6 ".kiy[0:5]"  0 -0.22565615177154541 0.97162699699401855 
		0.12290475517511368 -0.15800230205059052 -0.98449039459228516;
	setAttr -s 6 ".kox[3:5]"  0.99241846799850464 0.98743873834609985 
		0.17543844878673553;
	setAttr -s 6 ".koy[3:5]"  0.12290474772453308 -0.15800231695175171 
		-0.98449039459228516;
createNode animCurveTA -n "animCurveTA924";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -5.3642380392152509 3 1.180924396342899 
		9 1.180924396342899 13 5.6316902969231144 23 5.6742461402610171 30 -5.3642380392152509;
	setAttr -s 6 ".kit[0:5]"  1 9 9 1 1 9;
	setAttr -s 6 ".kot[3:5]"  1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.93454062938690186 0.9739040732383728 
		0.99988049268722534 0.99983733892440796 0.77111709117889404;
	setAttr -s 6 ".kiy[0:5]"  0 0.35585638880729675 0.22696010768413544 
		0.015460092574357986 -0.018035845831036568 -0.63669335842132568;
	setAttr -s 6 ".kox[3:5]"  0.99988049268722534 0.99983733892440796 
		0.77111709117889404;
	setAttr -s 6 ".koy[3:5]"  0.015460092574357986 -0.018035845831036568 
		-0.63669335842132568;
createNode animCurveTA -n "animCurveTA925";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -3.2584064202075544 3 30.159583663459724 
		9 30.159583663459724 13 11.549518092323879 23 11.549518092323879 30 -3.2584064202075544;
	setAttr -s 6 ".kit[0:5]"  1 9 9 1 1 9;
	setAttr -s 6 ".kot[3:5]"  1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.4573972225189209 0.71620744466781616 
		0.99872153997421265 0.99960392713546753 0.67012381553649902;
	setAttr -s 6 ".kiy[0:5]"  0 0.88926249742507935 -0.69788742065429688 
		-0.050549808889627457 0.028142888098955154 -0.74224936962127686;
	setAttr -s 6 ".kox[3:5]"  0.99872153997421265 0.99960392713546753 
		0.67012381553649902;
	setAttr -s 6 ".koy[3:5]"  -0.050549805164337158 0.028142888098955154 
		-0.74224936962127686;
createNode animCurveTA -n "animCurveTA926";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 4.9690701715193732 3 4.8714700432790456 
		9 4.8714700432790456 13 4.8714700432790456 23 4.8714700432790456 30 4.9690701715193732;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99998390674591064 1 1 1 0.9999733567237854;
	setAttr -s 6 ".kiy[0:5]"  0 -0.0056780534796416759 0 0 0 
		0.0073002781718969345;
createNode animCurveTA -n "animCurveTA927";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.9904681746768538 3 11.783606204137085 
		9 11.783606204137085 13 11.783606204137085 23 11.783606204137085 30 -2.9904681746768538;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 0.75836485624313354 1 1 1 0.67096841335296631;
	setAttr -s 6 ".kiy[0:5]"  0 0.65183031558990479 0 0 0 -0.74148595333099365;
createNode animCurveTA -n "animCurveTA928";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 14.780225156536885 3 7.5423825101935913 
		9 7.5423825101935913 13 7.5423825101935913 23 7.5423825101935913 30 14.780225156536885;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 0.92162615060806274 1 1 1 0.8793940544128418;
	setAttr -s 6 ".kiy[0:5]"  0 -0.38807889819145203 0 0 0 0.47609460353851318;
createNode animCurveTA -n "animCurveTA929";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.211833892135727 3 -1.9205866568077898 
		9 -1.9205866568077898 13 7.9474512844499952 23 8.1989147930048674 30 2.211833892135727;
	setAttr -s 6 ".kit[0:5]"  1 9 9 1 1 9;
	setAttr -s 6 ".kot[3:5]"  1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.97229576110839844 0.88841772079467773 
		0.99606567621231079 0.99847990274429321 0.91266024112701416;
	setAttr -s 6 ".kiy[0:5]"  0 -0.2337539941072464 0.45903587341308594 
		0.088618181645870209 -0.055116463452577591 -0.40871903300285339;
	setAttr -s 6 ".kox[3:5]"  0.99606567621231079 0.99847990274429321 
		0.91266024112701416;
	setAttr -s 6 ".koy[3:5]"  0.088618189096450806 -0.055116463452577591 
		-0.40871903300285339;
createNode animCurveTA -n "animCurveTA930";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.7086730360615547 3 3.2563455175410816 
		9 3.2563455175410816 13 8.4814480554253073 23 8.5298659934561947 30 1.7086730360615547;
	setAttr -s 6 ".kit[0:5]"  1 9 9 1 1 9;
	setAttr -s 6 ".kot[3:5]"  1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99597090482711792 0.96455329656600952 
		0.99859434366226196 0.99911230802536011 0.89075469970703125;
	setAttr -s 6 ".kiy[0:5]"  0 0.089677155017852783 0.26388803124427795 
		0.053002920001745224 -0.042126037180423737 -0.45448443293571472;
	setAttr -s 6 ".kox[3:5]"  0.99859434366226196 0.99911230802536011 
		0.89075469970703125;
	setAttr -s 6 ".koy[3:5]"  0.053002923727035522 -0.042126037180423737 
		-0.45448443293571472;
createNode animCurveTA -n "animCurveTA931";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.7082804953288213 3 2.0072872165938906 
		9 2.0072872165938906 13 2.6910162734486121 23 2.6989359149559955 30 2.7082804953288213;
	setAttr -s 6 ".kit[0:5]"  1 9 9 1 1 9;
	setAttr -s 6 ".kot[3:5]"  1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99916946887969971 0.99935978651046753 
		0.99997341632843018 0.9999881386756897 0.9999997615814209;
	setAttr -s 6 ".kiy[0:5]"  0 -0.040748264640569687 0.035777051001787186 
		0.0072952262125909328 -0.0048649539239704609 0.00069897278444841504;
	setAttr -s 6 ".kox[3:5]"  0.99997341632843018 0.9999881386756897 
		0.9999997615814209;
	setAttr -s 6 ".koy[3:5]"  0.0072952266782522202 -0.0048649539239704609 
		0.00069897278444841504;
createNode animCurveTA -n "animCurveTA932";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 9 0 13 0 23 0 30 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA933";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 9 0 13 0 23 0 30 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA934";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 33.429092416277157 3 33.429092416277157 
		9 33.429092416277157 13 33.429092416277157 23 33.429092416277157 30 33.429092416277157;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA935";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -171.24588681251637 3 8.2533422302317216 
		9 8.2533422302317216 13 8.2533422302317216 23 8.2533422302317216 30 -171.24588681251637;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 0.095323324203491211 1 1 1 0.074273794889450073;
	setAttr -s 6 ".kiy[0:5]"  0 0.99544638395309448 0 0 0 -0.99723786115646362;
createNode animCurveTA -n "animCurveTA936";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 23.263402056531088 3 23.263402056531085 
		9 23.263402056531085 13 23.263402056531085 23 23.263402056531085 30 23.263402056531088;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA937";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 20.166277752815624 3 20.166277752815617 
		9 20.166277752815617 13 20.166277752815617 23 20.166277752815617 30 20.166277752815624;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA938";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 9 0 13 0 23 0 30 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA939";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 9 0 13 0 23 0 30 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA940";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 17.254116939558369 3 17.254116939558369 
		9 17.254116939558369 13 17.254116939558369 23 17.254116939558369 30 17.254116939558369;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[3:5]"  3 3 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
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
connectAttr "cps_look_leftSource.st" "clipLibrary1.st[0]";
connectAttr "cps_look_leftSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL288.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL289.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL290.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL291.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL292.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA822.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU55.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU56.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU57.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU58.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU59.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU60.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU61.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU62.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA823.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA824.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA825.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL293.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL294.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL295.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL296.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL297.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL298.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA826.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA827.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA828.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL299.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL300.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL301.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA829.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA830.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA831.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA832.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA833.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA834.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA835.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA836.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA837.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA838.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA839.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA840.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA841.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA842.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA843.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL302.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL303.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL304.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL305.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL306.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL307.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL308.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL309.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL310.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA844.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA845.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA846.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA847.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA848.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA849.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA850.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA851.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA852.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA853.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA854.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA855.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA856.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA857.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA858.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA859.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA860.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA861.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA862.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA863.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA864.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA865.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA866.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA867.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA868.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA869.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA870.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA871.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA872.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL311.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL312.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL313.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA873.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA874.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA875.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL314.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL315.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL316.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA876.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA877.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA878.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL317.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL318.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL319.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA879.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA880.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA881.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL320.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL321.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL322.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA882.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA883.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA884.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL323.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL324.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL325.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL326.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL327.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL328.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA885.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA886.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA887.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA888.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA889.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA890.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA891.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA892.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA893.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA894.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA895.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA896.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA897.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA898.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA899.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA900.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA901.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA902.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA903.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA904.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA905.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA906.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA907.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA908.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA909.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA910.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA911.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA912.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA913.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA914.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA915.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA916.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA917.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA918.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA919.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA920.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA921.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA922.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA923.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA924.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA925.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA926.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA927.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA928.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA929.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA930.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA931.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA932.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA933.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA934.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA935.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA936.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA937.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA938.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA939.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA940.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of cps_look_left.ma
