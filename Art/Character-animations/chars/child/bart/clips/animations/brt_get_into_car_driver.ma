//Maya ASCII 4.0 scene
//Name: brt_get_into_car_driver.ma
//Last modified: Tue, May 27, 2003 01:41:24 PM
requires maya "4.0";
requires "p3dDeformer" "2.0";
requires "p3dmayaexp" "2.0.3.0";
requires "p3dSimpleShader" "2.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "brt_get_into_car_driverSource";
	setAttr ".ihi" 0;
	setAttr ".du" 19;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL329";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL330";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.033880036066693167 1 0.028458015772825279 
		2 0.021307560143706376 3 0.014635221659785258 4 0.011368117778841278 5 0.0053912264754553928 
		6 -0.0068902476766060381 7 -0.029834129421681774 8 -0.079835351638336813 
		9 -0.12437738254777939 10 -0.13087143014794164 11 -0.12305435396832173 12 
		-0.12454863504174041 13 -0.15897675440101836 14 -0.25160049380278598 15 -0.38877476746171724 
		16 -0.53576175509769808 17 -0.71397009457172689 18 -0.9019911354047867 19 
		-1.0008611248067398 20 -0.99540989657618428 21 -0.94893423411152744 22 -0.88017080902234601 
		23 -0.80785629291821648 24 -0.75072735740871599 25 -0.72752067410342092 26 
		-0.74302262177533207 27 -0.7832011388913882 28 -0.83856523660207327 29 -0.899623926057871 
		30 -0.95688621840926535 31 -1.0008611248067398;
createNode animCurveTL -n "brt_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 1 0.025171070895469057 2 0.054289180305439784 
		3 0.083652113697337979 4 0.10903237327349766 5 0.14125637035611838 6 0.18637397787275045 
		7 0.2514071122621262 8 0.37756616653447767 9 0.46833555596070048 10 0.49018754046260193 
		11 0.52860625930230165 12 0.5758572632968828 13 0.62420610326342829 14 0.68144878120671015 
		15 0.74522654579984837 16 0.79257281786244893 17 0.81063643103104299 18 0.81226855276853271 
		19 0.81305610463408051 20 0.81910783719511293 21 0.82566410294669357 22 0.83200922633943986 
		23 0.83742753182397012 24 0.84120334385090179 25 0.84262098687085285 26 0.8409442747478848 
		27 0.83659851069431557 28 0.83061025318314796 29 0.82400606068738425 30 0.81781249168002756 
		31 0.81305610463408051;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 5.8284402688137176 1 4.7625518213091622 
		2 -0.71692813444181314 3 -6.1296329831764549 4 -9.849025760366013 5 -13.600868200262253 
		6 -19.837004112127886 7 -21.932677743389643 8 -8.2549963104777078 9 3.7197865316961756 
		10 4.2674615423752984 11 4.2558871170071715 12 3.9762623989835468 13 3.7197865316961756 
		14 3.5235586807235544 15 3.1959218887970606 16 2.684941115037764 17 2.3655210785576117 
		18 1.8627570909370752 19 0 20 -3.7959358717952645 21 -8.7610300935250773 
		22 -14.066122654667661 23 -18.88205354470124 24 -22.379662753104007 25 -23.729790269354226 
		26 -22.384003514599833 27 -18.895943981487836 28 -14.089562766745059 29 -8.7888109670982892 
		30 -3.8176396792743366 31 0;
createNode animCurveTU -n "animCurveTU65";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
createNode animCurveTU -n "animCurveTU66";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
createNode animCurveTU -n "animCurveTU67";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
createNode animCurveTU -n "animCurveTU68";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
createNode animCurveTU -n "animCurveTU69";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU70";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU71";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 1;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU72";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 1;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA948";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA949";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA950";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL334";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL335";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL336";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL337";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.21594587158542247 3 -0.21594587158542247 
		5 -0.21594587158542247 7 -0.13963627310524832 10 -0.78871766039456459 16 
		-0.78871766039456459 19 -2.4790535543793637 25 -2.4790535543793637 31 -2.4790535543793637;
	setAttr -s 9 ".kit[0:8]"  9 9 9 9 3 3 3 
		3 3;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 3 3 3 
		3 3;
createNode animCurveTL -n "animCurveTL338";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.21854505205085809 3 0.21854505205085809 
		5 0.21854505205085809 7 0.23853535213070526 10 0.78001930404657405 16 0.78001930404657405 
		19 0.98803500993479365 25 0.98803500993479365 31 0.98803500993479365;
	setAttr -s 9 ".kit[0:8]"  9 9 9 9 3 3 3 
		3 3;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 3 3 3 
		3 3;
createNode animCurveTL -n "animCurveTL339";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.00078430246903575811 3 0.00078430246903575811 
		5 0.00078430246903575811 7 0.14969380950094124 10 1.2889513117444105 16 1.2889513117444105 
		19 2.3692681032003731 25 2.3692681032003731 31 2.3692681032003731;
	setAttr -s 9 ".kit[0:8]"  9 9 9 9 3 3 3 
		3 3;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 3 3 3 
		3 3;
createNode animCurveTA -n "animCurveTA951";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 5 0 7 44.388556084713827 
		10 -17.613616873884094 16 -17.613616873884094 19 -27.647037481197394 25 -27.647037481197394 
		31 -27.647037481197394;
	setAttr -s 9 ".kit[0:8]"  9 9 9 9 3 3 3 
		3 3;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 3 3 3 
		3 3;
createNode animCurveTA -n "animCurveTA952";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 5 0 7 -8.3467315155771242 
		10 -40.787271126349502 16 -40.787271126349502 19 -1.6471102606573029 25 -1.6471102606573029 
		31 -1.6471102606573029;
	setAttr -s 9 ".kit[0:8]"  9 9 9 9 3 3 3 
		3 3;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 3 3 3 
		3 3;
createNode animCurveTA -n "animCurveTA953";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 5 0 7 7.7471581766269448 
		10 -7.3958374073208715 16 -7.3958374073208715 19 -7.792214191643251 25 -7.792214191643251 
		31 -7.792214191643251;
	setAttr -s 9 ".kit[0:8]"  9 9 9 9 3 3 3 
		3 3;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 3 3 3 
		3 3;
createNode animCurveTL -n "animCurveTL340";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.26454016861507795 3 0.2173751638612961 
		5 0.17721361257686638 7 -0.014387102308690393 9 -0.019043121068561687 13 
		-0.028822034365029829 16 -0.82409193837269812 19 -2.0407430139147178 25 -2.0407430139147178 
		31 -2.0407430139147178;
	setAttr -s 10 ".kit[5:9]"  3 3 3 3 3;
	setAttr -s 10 ".kot[5:9]"  3 3 3 3 3;
createNode animCurveTL -n "animCurveTL341";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.21854541072049752 3 0.21218793707500705 
		5 0.25861102390683555 7 0.18381928724669791 9 0.21939540220047499 13 0.71918268285638098 
		16 0.89960345004200148 19 1.004658375723265 25 1.004658375723265 31 1.004658375723265;
	setAttr -s 10 ".kit[5:9]"  3 3 3 3 3;
	setAttr -s 10 ".kot[5:9]"  3 3 3 3 3;
createNode animCurveTL -n "animCurveTL342";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.064904406754016042 3 -0.064904406754016042 
		5 0.38761032248211302 7 0.92356787827008124 9 0.91265126660440776 13 1.3265112247752731 
		16 2.0187165276500982 19 2.4087040652971967 25 2.4087040652971967 31 2.4087040652971967;
	setAttr -s 10 ".kit[0:9]"  9 1 9 9 9 3 3 
		3 3 3;
	setAttr -s 10 ".kot[0:9]"  9 1 9 9 9 3 3 
		3 3 3;
	setAttr -s 10 ".kix[1:9]"  0.41586130857467651 0.0013488816330209374 
		0.0025394763797521591 0.0049634156748652458 1 1 1 1 1;
	setAttr -s 10 ".kiy[1:9]"  0.90942800045013428 0.99999910593032837 
		0.99999678134918213 0.99998766183853149 0 0 0 0 0;
	setAttr -s 10 ".kox[1:9]"  0.41586148738861084 0.0013488816330209374 
		0.0025394763797521591 0.0049634156748652458 1 1 1 1 1;
	setAttr -s 10 ".koy[1:9]"  0.90942800045013428 0.99999910593032837 
		0.99999678134918213 0.99998766183853149 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA954";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 15.829425701546842 5 14.331626443463124 
		7 -10.811641225563552 9 22.593134942179454 13 63.16108123139599 16 3.3423255055965062 
		19 -28.33147073208438 25 -28.33147073208438 31 -28.33147073208438;
	setAttr -s 10 ".kit[5:9]"  3 3 3 3 3;
	setAttr -s 10 ".kot[5:9]"  3 3 3 3 3;
createNode animCurveTA -n "animCurveTA955";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 25.948901905116401 3 25.948901905116429 
		5 0.4082319874018141 7 -9.0830972443010491 9 -5.4726526619269746 13 -35.595363845044297 
		16 42.70484598509212 19 10.113681911874204 25 10.113681911874204 31 10.113681911874204;
	setAttr -s 10 ".kit[0:9]"  9 1 9 9 9 3 3 
		3 3 3;
	setAttr -s 10 ".kot[0:9]"  9 1 9 9 9 3 3 
		3 3 3;
	setAttr -s 10 ".kix[1:9]"  0.99546581506729126 0.21306303143501282 
		0.79240363836288452 0.39674755930900574 1 1 1 1 1;
	setAttr -s 10 ".kiy[1:9]"  -0.095119811594486237 -0.97703844308853149 
		-0.60999709367752075 -0.91792774200439453 0 0 0 0 0;
	setAttr -s 10 ".kox[1:9]"  0.99546587467193604 0.21306303143501282 
		0.79240363836288452 0.39674755930900574 1 1 1 1 1;
	setAttr -s 10 ".koy[1:9]"  -0.095119617879390717 -0.97703844308853149 
		-0.60999709367752075 -0.91792774200439453 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA956";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 5 -0.50956548566278548 
		7 -2.954679702671601 9 2.3144369118160042 13 1.8224410758254592 16 -9.2988248217141081 
		19 -3.6896128937020114 25 -3.6896128937020114 31 -3.6896128937020114;
	setAttr -s 10 ".kit[0:9]"  9 1 9 9 9 3 3 
		3 3 3;
	setAttr -s 10 ".kot[0:9]"  9 1 9 9 9 3 3 
		3 3 3;
	setAttr -s 10 ".kix[1:9]"  0.99998509883880615 0.93267172574996948 
		0.9379652738571167 0.92300617694854736 1 1 1 1 1;
	setAttr -s 10 ".kiy[1:9]"  -0.0054611046798527241 -0.36072632670402527 
		0.34672924876213074 0.38478505611419678 0 0 0 0 0;
	setAttr -s 10 ".kox[1:9]"  0.99998509883880615 0.93267172574996948 
		0.9379652738571167 0.92300617694854736 1 1 1 1 1;
	setAttr -s 10 ".koy[1:9]"  -0.0054611093364655972 -0.36072632670402527 
		0.34672924876213074 0.38478505611419678 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA957";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA958";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA959";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA960";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA961";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA962";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA963";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA964";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA965";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA966";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA967";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA968";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL343";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 5 0 7 0 9 0 13 0 16 0 19 
		0 25 0 31 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTL -n "animCurveTL344";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 5 0 7 0 9 0 13 0 16 0 19 
		0 25 0 31 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTL -n "animCurveTL345";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 3 1 5 1 7 1 9 1 13 1 16 1 19 
		1 25 1 31 1;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTL -n "animCurveTL346";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 5 0 7 0 9 0 13 0 16 0 19 
		0 25 0 31 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTL -n "animCurveTL347";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 5 0 7 0 9 0 13 0 16 0 19 
		0 25 0 31 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTL -n "animCurveTL348";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 3 1 5 1 7 1 9 1 13 1 16 1 19 
		1 25 1 31 1;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTL -n "animCurveTL349";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.076472881617957691 3 0.033034131700396582 
		5 0.01216889566532684 7 -0.067340596773508177 9 -0.28074045826882532 13 -0.35883700050921535 
		16 -1.2093034727697225 19 -2.2591101781206659 25 -1.6421352762378554 31 -2.2591101781206659;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  0.0043221241794526577;
	setAttr -s 10 ".kiy[9]"  -0.99999064207077026;
createNode animCurveTL -n "animCurveTL350";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.95473100313980441 3 0.9224657007074174 
		5 0.91524338550816797 7 0.92948217727043758 9 0.96472071093595801 13 1.4137363308028799 
		16 1.5410418720851637 19 1.3485645994757605 25 1.4356475945789096 31 1.3485645994757605;
	setAttr -s 10 ".kit[4:9]"  1 9 9 9 9 1;
	setAttr -s 10 ".kot[4:9]"  1 9 9 9 9 5;
	setAttr -s 10 ".kix[4:9]"  0.019300941377878189 0.0040486352518200874 
		0.030673712491989136 0.02845301665365696 1 0.030607786029577255;
	setAttr -s 10 ".kiy[4:9]"  0.9998137354850769 0.999991774559021 
		-0.99952942132949829 -0.99959510564804077 0 -0.99953144788742065;
	setAttr -s 10 ".kox[4:9]"  0.019300926476716995 0.0040486352518200874 
		0.030673712491989136 0.02845301665365696 1 0;
	setAttr -s 10 ".koy[4:9]"  0.9998137354850769 0.999991774559021 
		-0.99952942132949829 -0.99959510564804077 0 0;
createNode animCurveTL -n "animCurveTL351";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0.18881674669046031 5 0.31883914369988964 
		7 0.56746770564493954 9 1.0571113164685229 13 1.4089370904477301 16 1.7889687943275561 
		19 1.8352029825483169 25 1.9019358436022702 31 1.8352029825483169;
	setAttr -s 10 ".kit[4:9]"  1 9 9 9 9 1;
	setAttr -s 10 ".kot[4:9]"  1 9 9 9 9 5;
	setAttr -s 10 ".kix[4:9]"  0.013435677625238895 0.0031882184557616711 
		0.0046918555162847042 0.026547057554125786 1 0.039928462356328964;
	setAttr -s 10 ".kiy[4:9]"  0.99990975856781006 0.99999493360519409 
		0.99998897314071655 0.99964755773544312 0 -0.99920260906219482;
	setAttr -s 10 ".kox[4:9]"  0.013435684144496918 0.0031882184557616711 
		0.0046918555162847042 0.026547057554125786 1 0;
	setAttr -s 10 ".koy[4:9]"  0.99990975856781006 0.99999493360519409 
		0.99998897314071655 0.99964755773544312 0 0;
createNode animCurveTA -n "animCurveTA969";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.62843630316474508 3 -4.0647210446877668 
		5 -2.935775021023272 7 -3.0762169050940038 9 -6.5591355069755881 13 -6.5591355069755881 
		16 -10.96697467846017 19 -26.004389268796515 25 19.904949984433497 31 -26.004389268796515;
	setAttr -s 10 ".kit[4:9]"  1 9 9 9 9 1;
	setAttr -s 10 ".kot[4:9]"  1 9 9 9 9 5;
	setAttr -s 10 ".kix[4:9]"  0.9971427321434021 0.94971179962158203 
		0.50770366191864014 0.48645725846290588 1 0.31577691435813904;
	setAttr -s 10 ".kiy[4:9]"  -0.075540885329246521 -0.31312531232833862 
		-0.86153173446655273 0.87370437383651733 0 -0.94883352518081665;
	setAttr -s 10 ".kox[4:9]"  0.9971427321434021 0.94971179962158203 
		0.50770366191864014 0.48645725846290588 1 0;
	setAttr -s 10 ".koy[4:9]"  -0.075540848076343536 -0.31312531232833862 
		-0.86153173446655273 0.87370437383651733 0 0;
createNode animCurveTA -n "animCurveTA970";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 5.8284402688137167 3 -6.129632983176454 
		5 -13.600868200262255 7 -21.932677743389643 9 3.7197865316961756 13 3.7197865316961756 
		16 2.6849411150377636 19 0 25 -23.729790269354229 31 0;
	setAttr -s 10 ".kit[4:9]"  1 9 9 9 9 1;
	setAttr -s 10 ".kot[4:9]"  1 9 9 9 9 5;
	setAttr -s 10 ".kix[4:9]"  0.90011471509933472 0.997017502784729 
		0.95114231109619141 0.54541563987731934 1 0.54135942459106445;
	setAttr -s 10 ".kiy[4:9]"  0.43565288186073303 -0.07717539370059967 
		-0.30875280499458313 -0.83816570043563843 0 0.84079128503799438;
	setAttr -s 10 ".kox[4:9]"  0.90011477470397949 0.997017502784729 
		0.95114231109619141 0.54541563987731934 1 0;
	setAttr -s 10 ".koy[4:9]"  0.43565282225608826 -0.07717539370059967 
		-0.30875280499458313 -0.83816570043563843 0 0;
createNode animCurveTA -n "animCurveTA971";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1.295636019309746 3 1.7490863204697844 
		5 0.84256151123097234 7 1.3015925165258879 9 5.0537228151421463 13 5.0537228151421463 
		16 3.5942040383448104 19 0 25 -30.653736597065432 31 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  0.44609230756759644;
	setAttr -s 10 ".kiy[9]"  0.89498692750930786;
createNode animCurveTA -n "animCurveTA972";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA973";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA974";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA975";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA976";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA977";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA978";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA979";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA980";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA981";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA982";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA983";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA984";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA985";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA986";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA987";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA988";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA989";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA990";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA991";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA992";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  5 0 7 0 9 0 31 0;
	setAttr -s 4 ".kit[0:3]"  3 9 1 1;
	setAttr -s 4 ".kot[0:3]"  3 9 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA993";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  5 0 7 0 9 0 31 0;
	setAttr -s 4 ".kit[0:3]"  3 9 1 1;
	setAttr -s 4 ".kot[0:3]"  3 9 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA994";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  5 0 7 -24.501661700242042 9 0 31 
		0;
	setAttr -s 4 ".kit[0:3]"  3 9 1 1;
	setAttr -s 4 ".kot[0:3]"  3 9 9 5;
	setAttr -s 4 ".kix[2:3]"  0.29765972495079041 1;
	setAttr -s 4 ".kiy[2:3]"  0.95467203855514526 0;
createNode animCurveTA -n "animCurveTA995";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA996";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA997";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL352";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 -0.5198069948790518;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL353";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 -0.72394202659893114;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL354";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0.36439499068905612;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA998";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 7.7976222737965299;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA999";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 30.409274105849079;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1000";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 64.859940280210878;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL355";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0.43524234076486068;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL356";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 -0.82665738350180629;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL357";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0.27773886459742925;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1001";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1002";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 -28.652637602052774;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1003";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 -64.676908227303443;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL358";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.61083301393139333 3 -0.71855072776607709 
		5 -0.79768864264128636 7 -1.2216982766104969 9 -1.6615405618010601 13 -1.6615405618010601 
		16 -2.718818699284034 19 -3.6370999456408879 25 -3.0251282500831582 31 -3.6370999456408879;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  0.0043574594892561436;
	setAttr -s 10 ".kiy[9]"  -0.99999052286148071;
createNode animCurveTL -n "animCurveTL359";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1.0211562878106184 3 1.5241480002158414 
		5 1.642659415129353 7 2.1458374442121051 9 2.1873530019833729 13 2.1873530019833729 
		16 1.9413710135050546 19 1.7841255587132463 25 2.4322073245137408 31 1.7841255587132463;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  0.0041146730072796345;
	setAttr -s 10 ".kiy[9]"  -0.99999147653579712;
createNode animCurveTL -n "animCurveTL360";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.14314299916678522 3 0.66996185967789745 
		5 0.83013864918616787 7 0.9774450882183453 9 1.4120938891850821 13 1.7877164599350404 
		16 2.6274946301868729 19 2.7027068055413355 25 2.4602491551945591 31 2.7027068055413355;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  0.010997820645570755;
	setAttr -s 10 ".kiy[9]"  0.99993956089019775;
createNode animCurveTA -n "animCurveTA1004";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 16.226511010665408 3 55.598837649680043 
		5 30.40552687334386 7 0.53074525458670618 9 -9.3708019553636923 13 -9.3708019553636923 
		16 -17.985238978769711 19 -26.203413720634725 25 -27.818924152705119 31 -26.203413720634725;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  0.99445652961730957;
	setAttr -s 10 ".kiy[9]"  0.10514874756336212;
createNode animCurveTA -n "animCurveTA1005";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 8.513966085499284 3 30.973734338623142 
		5 57.071878589129092 7 30.368244126557347 9 29.306594429857483 13 29.306594429857483 
		16 23.104847167583884 19 14.791961579779638 25 -7.8589637569602626 31 14.791961579779638;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  0.55920886993408203;
	setAttr -s 10 ".kiy[9]"  0.82902681827545166;
createNode animCurveTA -n "animCurveTA1006";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 68.213989601412422 3 82.208920420259716 
		5 59.188089930048456 7 -43.401113370080203 9 -65.912336754634623 13 -65.912336754634623 
		16 -5.077971438885676 19 45.895436695401962 25 -6.0238552216777173 31 45.895436695401962;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  0.2823108434677124;
	setAttr -s 10 ".kiy[9]"  0.95932298898696899;
createNode animCurveTL -n "animCurveTL361";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.8448236677023373 3 0.91837917750249576 
		5 0.89437419462442036 7 0.79254435424317993 9 0.50802692925305393 13 0.09225560444291149 
		16 -1.0697637662078572 19 -2.1657315743829622 25 -0.90860127586665562 27 
		-1.0663777460455246 31 -2.1657315743829622;
	setAttr -s 11 ".kit[10]"  1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[10]"  0.0015160409966483712;
	setAttr -s 11 ".kiy[10]"  -0.99999886751174927;
createNode animCurveTL -n "animCurveTL362";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.0304014029588007 3 1.2376327523903852 
		5 1.2598377302979162 7 1.3355470437254813 9 1.5019588733907707 13 2.7988454248546248 
		16 2.2666828628028433 19 1.6749265988332942 25 2.5072247162763563 27 2.5434888612919893 
		31 1.6749265988332942;
	setAttr -s 11 ".kit[4:10]"  1 9 9 9 9 1 1;
	setAttr -s 11 ".kot[4:10]"  1 9 9 9 9 1 5;
	setAttr -s 11 ".kix[4:10]"  0.0042146164923906326 0.0030511955264955759 
		0.0017794851446524262 0.012470872141420841 0.0030701933428645134 0.023984095081686974 
		0.0019188771257176995;
	setAttr -s 11 ".kiy[4:10]"  0.99999111890792847 0.99999535083770752 
		-0.99999839067459106 0.99992221593856812 0.99999529123306274 -0.99971240758895874 
		-0.99999809265136719;
	setAttr -s 11 ".kox[4:10]"  0.0042146611958742142 0.0030511955264955759 
		0.0017794851446524262 0.012470872141420841 0.0030701933428645134 0.023984048515558243 
		0;
	setAttr -s 11 ".koy[4:10]"  0.99999111890792847 0.99999535083770752 
		-0.99999839067459106 0.99992221593856812 0.99999529123306274 -0.99971240758895874 
		0;
createNode animCurveTL -n "animCurveTL363";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.097994651149805143 3 0.18811956002607613 
		5 0.40817563733893863 7 0.97154473824728926 9 1.7084459967887549 13 2.9184961808501275 
		16 3.1165646536977438 19 2.6001625185510933 25 3.5066235550347145 27 3.4262633344380617 
		31 2.6001625185510933;
	setAttr -s 11 ".kit[9:10]"  1 1;
	setAttr -s 11 ".kot[9:10]"  1 5;
	setAttr -s 11 ".kix[9:10]"  0.0069580026902258396 0.0020175066310912371;
	setAttr -s 11 ".kiy[9:10]"  -0.99997574090957642 -0.99999791383743286;
	setAttr -s 11 ".kox[9:10]"  0.0069580008275806904 0;
	setAttr -s 11 ".koy[9:10]"  -0.99997574090957642 0;
createNode animCurveTA -n "animCurveTA1007";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 5.4739599453216465 3 -10.826424546146567 
		5 -10.826466618605725 7 -10.345092866137652 9 -29.971309712113101 13 -99.357306583188404 
		16 -71.444410515520019 19 -33.734888782993899 25 -19.345874397196617 27 -21.547393754778248 
		31 -33.734888782993899;
	setAttr -s 11 ".kit[10]"  1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[10]"  0.61675918102264404;
	setAttr -s 11 ".kiy[10]"  -0.78715187311172485;
createNode animCurveTA -n "animCurveTA1008";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -8.5874521608419823 3 -28.562123998386923 
		5 -27.007566258096951 7 -16.457368745399648 9 36.465641622030631 13 -47.240579136546721 
		16 -34.915716994255128 19 -14.870586397896899 25 -47.068687946319812 27 -42.142378080219508 
		31 -14.870586397896899;
	setAttr -s 11 ".kit[10]"  1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[10]"  0.33047908544540405;
	setAttr -s 11 ".kiy[10]"  0.94381332397460938;
createNode animCurveTA -n "animCurveTA1009";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -74.754744621954103 3 -52.637498007569562 
		5 -53.986957445494888 7 -48.871451458157736 9 -20.091500423830848 13 41.619546305829736 
		16 6.7023665856785861 19 -30.592169336881899 25 7.3649226411748101 27 1.55748705668628 
		31 -30.592169336881899;
	setAttr -s 11 ".kit[10]"  1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[10]"  0.28473177552223206;
	setAttr -s 11 ".kiy[10]"  -0.9586072564125061;
createNode animCurveTL -n "animCurveTL364";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.10167917362943303 3 0.31054502397108613 
		5 0.31054502397108613 7 0.31054502397108613 9 0.31054502397108613 13 0.31054502397108613 
		16 0.31054502397108613 19 0.31054502397108613 25 0.31054502397108613 31 0.31054502397108613;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTL -n "animCurveTL365";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.40762644910266188 3 -0.55640530640609931 
		5 -0.55640530640609931 7 -0.55640530640609931 9 -0.55640530640609931 13 -0.55640530640609931 
		16 -0.55640530640609931 19 -0.55640530640609931 25 -0.55640530640609931 31 
		-0.55640530640609931;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTL -n "animCurveTL366";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.93129112588482243 3 -0.57914122395678103 
		5 -0.57914122395678103 7 -0.57914122395678103 9 -0.57914122395678103 13 -0.57914122395678103 
		16 -0.57914122395678103 19 -0.57914122395678103 25 -0.57914122395678103 31 
		-0.57914122395678103;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTL -n "animCurveTL367";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 -0.17523930523423681 5 -0.15311553630748009 
		7 -0.063331173333856433 9 -0.063331173333856433 13 -0.063331173333856433 
		16 -0.063331173333856433 19 -0.063331173333856433 25 -0.063331173333856433 
		31 -0.063331173333856433;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTL -n "animCurveTL368";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 -0.00072435787012014696 5 
		-0.37298796460009648 7 -0.69960805773293522 9 -0.69960805773293522 13 -0.69960805773293522 
		16 -0.69960805773293522 19 -0.69960805773293522 25 -0.69960805773293522 31 
		-0.69960805773293522;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTL -n "animCurveTL369";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1 3 -0.80201435285893019 5 -0.70922931248881582 
		7 -0.66762598980258558 9 -0.66762598980258558 13 -0.66762598980258558 16 
		-0.66762598980258558 19 -0.66762598980258558 25 -0.66762598980258558 31 -0.66762598980258558;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTA -n "animCurveTA1010";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.061808866237340665 3 -0.061808866237337522 
		5 -0.061808866237337522 7 -0.061808866237337522 9 -0.061808866237337522 13 
		-0.061808866237337522 19 -0.061808866237337522 25 -0.061808866237337522 31 
		-0.061808866237337522;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1011";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -59.058178941076754 3 -59.058178941076754 
		5 -59.058178941076754 7 -59.058178941076754 9 -59.058178941076754 13 -59.058178941076754 
		19 -59.058178941076754 25 -59.058178941076754 31 -59.058178941076754;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1012";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 16.57914742975785 3 16.579147429757843 
		5 16.579147429757843 7 16.579147429757843 9 16.579147429757843 13 16.579147429757843 
		19 16.579147429757843 25 16.579147429757843 31 16.579147429757843;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1013";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 12.253734489678925 3 12.253734489678925 
		5 12.253734489678925 7 12.253734489678925 9 12.253734489678925 13 12.253734489678925 
		19 12.253734489678925 25 12.253734489678925 31 12.253734489678925;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1014";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -65.746751280844975 3 -65.746751280844961 
		5 -65.746751280844961 7 -65.746751280844961 9 -65.746751280844961 13 -65.746751280844961 
		19 -65.746751280844961 25 -65.746751280844961 31 -65.746751280844961;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1015";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 5 0 7 0 9 0 13 0 19 0 25 
		0 31 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1016";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 15.711328223519061 3 15.711328223519057 
		5 15.711328223519057 7 15.711328223519057 9 15.711328223519057 13 15.711328223519057 
		19 15.711328223519057 25 15.711328223519057 31 15.711328223519057;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1017";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 8.5572674112203657 3 8.5572674112203622 
		5 8.5572674112203622 7 8.5572674112203622 9 8.5572674112203622 13 8.5572674112203622 
		19 8.5572674112203622 25 8.5572674112203622 31 8.5572674112203622;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1018";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 5 0 7 0 9 0 13 0 19 0 25 
		0 31 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1019";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 5 0 7 0 9 0 13 0 19 0 25 
		0 31 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1020";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 5 0 7 0 9 0 13 0 19 0 25 
		0 31 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1021";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 5 0 7 0 9 0 13 0 19 0 25 
		0 31 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1022";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 5 0 7 0 9 0 13 0 19 0 25 
		0 31 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1023";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 5 0 7 0 9 0 13 0 19 0 25 
		0 31 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1024";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -121.24398976748977 3 -171.24588681251637 
		5 -171.24588681251637 7 -171.24588681251637 9 -171.24588681251637 13 -171.24588681251637 
		19 -171.24588681251637 25 -171.24588681251637 31 -171.24588681251637;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1025";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 28.612774017129329 3 23.263402056531085 
		5 23.263402056531085 7 23.263402056531085 9 23.263402056531085 13 23.263402056531085 
		19 23.263402056531085 25 23.263402056531085 31 23.263402056531085;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1026";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 17.632837226638049 3 20.166277752815617 
		5 20.166277752815617 7 20.166277752815617 9 20.166277752815617 13 20.166277752815617 
		19 20.166277752815617 25 20.166277752815617 31 20.166277752815617;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1027";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 5 0 7 0 9 0 13 0 19 0 25 
		0 31 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1028";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 5 0 7 0 9 0 13 0 19 0 25 
		0 31 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1029";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 33.429092416277157 3 33.429092416277157 
		5 33.429092416277157 7 33.429092416277157 9 33.429092416277157 13 33.429092416277157 
		19 33.429092416277157 25 33.429092416277157 31 33.429092416277157;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1030";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1031";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1032";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1033";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1034";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1035";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 13.994403295754109;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1036";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1037";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1038";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  31 13.994403295754109;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1039";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 5 0 7 0 9 0 13 0 19 0 25 
		0 31 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1040";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 5 0 7 0 9 0 13 0 19 0 25 
		0 31 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1041";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 17.254116939558369 3 17.254116939558369 
		5 17.254116939558369 7 17.254116939558369 9 17.254116939558369 13 17.254116939558369 
		19 17.254116939558369 25 17.254116939558369 31 17.254116939558369;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1042";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 5 0 7 0 9 0 13 0 19 0 25 
		0 31 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1043";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 5 0 7 0 9 0 13 0 19 0 25 
		0 31 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1044";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 5 0 7 0 9 0 13 0 19 0 25 
		0 31 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1045";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.65073001024951671 3 -7.8430056866173823 
		5 -7.8430056866173823 7 -7.8430056866173823 9 -18.820843871529618 13 -18.820843871529618 
		19 1.3731006602189262 25 5.9660149388432382 31 1.3731006602189262;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1046";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 4.2368721935960938 3 2.4212113907903019 
		5 2.4212113907903019 7 2.4212113907903019 9 8.442588645585376 13 8.442588645585376 
		19 -0.38374158911587303 25 4.5116636179203082 31 -0.38374158911587303;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1047";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.6995264082587447 3 14.868855041301886 
		5 14.868855041301886 7 14.868855041301886 9 16.699953369662587 13 16.699953369662587 
		19 0.96901743689791309 25 2.3811787268879385 31 0.96901743689791309;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1048";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 -7.1097278539792699 5 -7.1097278539792699 
		7 -7.1097278539792699 9 -7.1097278539792699 13 -7.1097278539792699 19 2.2144674450583466 
		25 -7.1097278539792699 31 2.2144674450583466;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1049";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 5 0 7 0 9 0 13 0 19 5.36423803921525 
		25 0 31 5.36423803921525;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1050";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 6.9655753505297673 5 6.9655753505297673 
		7 6.9655753505297673 9 6.9655753505297673 13 6.9655753505297673 19 -3.2584064202075531 
		25 6.9655753505297673 31 -3.2584064202075531;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1051";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 8.2806877228551272 5 8.9764510997163622 
		7 5.2494090226201955 9 5.2378895149391758 13 -3.7903101035041509 19 -4.9690701715193724 
		22 -46.227209466300053 25 -38.999395730978343 31 -4.9690701715193724;
	setAttr -s 10 ".kit[1:9]"  1 9 9 9 9 9 9 
		9 1;
	setAttr -s 10 ".kot[1:9]"  1 9 9 9 9 9 9 
		9 5;
	setAttr -s 10 ".kix[1:9]"  0.91116088628768921 0.92950087785720825 
		0.89821141958236694 0.78511542081832886 0.88194912672042847 0.37541595101356506 
		0.31912657618522644 0.38457426428794861 0.40958940982818604;
	setAttr -s 10 ".kiy[1:9]"  0.4120507538318634 -0.36881986260414124 
		-0.43956363201141357 -0.61934953927993774 -0.47134461998939514 -0.92685645818710327 
		-0.94771212339401245 0.92309403419494629 0.9122699499130249;
	setAttr -s 10 ".kox[1:9]"  0.91116094589233398 0.92950087785720825 
		0.89821141958236694 0.78511542081832886 0.88194912672042847 0.37541595101356506 
		0.31912657618522644 0.38457426428794861 0;
	setAttr -s 10 ".koy[1:9]"  0.41205063462257385 -0.36881986260414124 
		-0.43956363201141357 -0.61934953927993774 -0.47134461998939514 -0.92685645818710327 
		-0.94771212339401245 0.92309403419494629 0;
createNode animCurveTA -n "animCurveTA1052";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 8.5086629712104536 5 6.9980377420294353 
		7 7.4288331807529291 9 25.174728286073833 13 7.1873577666484181 19 2.9904681746768538 
		22 -43.464870903715401 25 -68.701263884681893 31 2.9904681746768538;
	setAttr -s 10 ".kit[1:9]"  1 1 9 9 9 9 9 
		9 1;
	setAttr -s 10 ".kot[1:9]"  1 1 9 9 9 9 9 
		9 5;
	setAttr -s 10 ".kix[1:9]"  0.99601650238037109 0.95914065837860107 
		0.38745781779289246 0.99977803230285645 0.65243446826934814 0.32134926319122314 
		0.15783576667308807 0.34701347351074219 0.20843805372714996;
	setAttr -s 10 ".kiy[1:9]"  0.089168936014175415 -0.28292959928512573 
		0.92188739776611328 -0.0210680291056633 -0.75784516334533691 -0.94696074724197388 
		-0.98746538162231445 0.93786013126373291 0.978035569190979;
	setAttr -s 10 ".kox[1:9]"  0.99601650238037109 0.95914071798324585 
		0.38745781779289246 0.99977803230285645 0.65243446826934814 0.32134926319122314 
		0.15783576667308807 0.34701347351074219 0;
	setAttr -s 10 ".koy[1:9]"  0.089168928563594818 -0.28292950987815857 
		0.92188739776611328 -0.0210680291056633 -0.75784516334533691 -0.94696074724197388 
		-0.98746538162231445 0.93786013126373291 0;
createNode animCurveTA -n "animCurveTA1053";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 6.6786334979782902 3 -2.3189154341807527 
		5 -5.9940130223088586 7 -11.077093509012803 9 -8.0550223726483026 13 12.477959126589024 
		19 14.780225156536881 22 14.102963811421818 25 -10.15874635942871 31 14.780225156536881;
	setAttr -s 10 ".kit[1:9]"  1 1 9 9 9 9 9 
		9 1;
	setAttr -s 10 ".kot[1:9]"  1 1 9 9 9 9 9 
		9 5;
	setAttr -s 10 ".kix[1:9]"  0.7913811206817627 0.67820924520492554 
		0.96548116207122803 0.4374639093875885 0.64155560731887817 0.99556094408035278 
		0.41752150654792786 0.99922466278076172 1;
	setAttr -s 10 ".kiy[1:9]"  -0.61132305860519409 -0.73486888408660889 
		-0.26047280430793762 0.89923596382141113 0.76707649230957031 0.094119273126125336 
		-0.90866702795028687 0.039370916783809662 0;
	setAttr -s 10 ".kox[1:9]"  0.79138118028640747 0.67820918560028076 
		0.96548116207122803 0.4374639093875885 0.64155560731887817 0.99556094408035278 
		0.41752150654792786 0.99922466278076172 0;
	setAttr -s 10 ".koy[1:9]"  -0.61132305860519409 -0.73486888408660889 
		-0.26047280430793762 0.89923596382141113 0.76707649230957031 0.094119273126125336 
		-0.90866702795028687 0.039370916783809662 0;
createNode animCurveTA -n "animCurveTA1054";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.8903601258661935 3 1.8903601258661931 
		5 1.8903601258661931 7 1.8903601258661931 9 1.8903601258661931 13 1.8903601258661931 
		19 -2.211833892135727 25 3.749937051835468 31 -2.211833892135727;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1055";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -2.5597289571479038 3 -2.5597289571479034 
		5 -2.5597289571479034 7 -2.5597289571479034 9 -2.5597289571479034 13 -2.5597289571479034 
		19 -1.708673036061555 25 -11.126545227672914 31 -1.708673036061555;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1056";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.0168110874036049 3 2.016811087403604 
		5 2.016811087403604 7 2.016811087403604 9 2.016811087403604 13 2.016811087403604 
		19 2.7082804953288209 25 -2.1144942238017537 31 2.7082804953288209;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1057";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 5 0 7 0 9 0 13 0 19 0 25 
		0 31 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1058";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 5 0 7 0 9 0 13 0 19 0 25 
		0 31 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1059";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 27.080064458283051 3 27.080064458283051 
		5 27.080064458283051 7 27.080064458283051 9 27.080064458283051 13 27.080064458283051 
		19 27.080064458283051 25 27.080064458283051 31 27.080064458283051;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1060";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 143.71460997127252 3 -177.04830761929054 
		5 -177.04830761929054 7 -177.04830761929054 9 -177.04830761929054 13 -177.04830761929054 
		19 -177.04830761929054 25 -177.04830761929054 31 -177.04830761929054;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1061";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 27.804554996454378 3 27.722848255843903 
		5 27.722848255843903 7 27.722848255843903 9 27.722848255843903 13 27.722848255843903 
		19 27.722848255843903 25 27.722848255843903 31 27.722848255843903;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1062";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 29.452980944098744 3 21.576484776388227 
		5 21.576484776388227 7 21.576484776388227 9 21.576484776388227 13 21.576484776388227 
		19 21.576484776388227 25 21.576484776388227 31 21.576484776388227;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1063";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 5 0 7 0 9 0 13 0 19 0 25 
		0 31 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1064";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 5 0 7 0 9 0 13 0 19 0 25 
		0 31 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
createNode animCurveTA -n "animCurveTA1065";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 27.911632519594587 3 27.911632519594587 
		5 27.911632519594587 7 27.911632519594587 9 27.911632519594587 13 27.911632519594587 
		19 27.911632519594587 25 27.911632519594587 31 27.911632519594587;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
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
	setAttr ".o" 19;
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
connectAttr "brt_get_into_car_driverSource.st" "clipLibrary1.st[0]";
connectAttr "brt_get_into_car_driverSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL329.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL330.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "brt_Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU65.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU66.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU67.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU68.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU69.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU70.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU71.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU72.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA948.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA949.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA950.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL334.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL335.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL336.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL337.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL338.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL339.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA951.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA952.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA953.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL340.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL341.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL342.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA954.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA955.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA956.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA957.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA958.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA959.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA960.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA961.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA962.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA963.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA964.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA965.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA966.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA967.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA968.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL343.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL344.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL345.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL346.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL347.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL348.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL349.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL350.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL351.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA969.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA970.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA971.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA972.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA973.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA974.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA975.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA976.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA977.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA978.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA979.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA980.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA981.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA982.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA983.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA984.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA985.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA986.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA987.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA988.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA989.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA990.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA991.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA992.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA993.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA994.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA995.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA996.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA997.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL352.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL353.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL354.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA998.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA999.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA1000.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL355.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL356.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL357.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA1001.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA1002.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA1003.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL358.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL359.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL360.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA1004.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA1005.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA1006.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL361.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL362.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL363.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA1007.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA1008.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA1009.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL364.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL365.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL366.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL367.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL368.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL369.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA1010.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA1011.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA1012.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA1013.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA1014.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA1015.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA1016.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA1017.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA1018.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA1019.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA1020.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1021.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1022.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1023.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA1024.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1025.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1026.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1027.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1028.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1029.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1030.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1031.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1032.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA1033.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA1034.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA1035.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA1036.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA1037.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA1038.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1039.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1040.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1041.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1042.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1043.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1044.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1045.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1046.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1047.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1048.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1049.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1050.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1051.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1052.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1053.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1054.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1055.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1056.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1057.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1058.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1059.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA1060.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA1061.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA1062.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA1063.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA1064.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA1065.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of brt_get_into_car_driver.ma
