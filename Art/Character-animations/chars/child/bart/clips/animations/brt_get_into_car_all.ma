//Maya ASCII 4.0 scene
//Name: brt_get_into_car_all.ma
//Last modified: Tue, May 27, 2003 01:40:15 PM
requires maya "4.0";
requires "p3dDeformer" "2.0";
requires "p3dmayaexp" "2.0.3.0";
requires "p3dSimpleShader" "2.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "brt_get_into_car_allSource";
	setAttr ".ihi" 0;
	setAttr ".du" 43;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL411";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL412";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL413";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 44 ".ktv[0:43]"  0 -0.033880036066693167 1 -0.037971747811035045 
		2 -0.042063459555376929 3 -0.033880036066693167 4 0.002941135665592402 5 
		0.05203744310796371 6 0.076596183177308014 7 0.062818216137140351 8 0.030640646402153134 
		9 -0.0061448628840003192 10 -0.033746648577666759 11 -0.039372089317754447 
		12 -0.033880036066693167 13 -0.028458015772825279 14 -0.021307560143706376 
		15 -0.014635221659785258 16 -0.011368117778841278 17 -0.0053912264754553928 
		18 0.0068902476766060381 19 0.029834129421681774 20 0.079835351638336813 
		21 0.12437738254777939 22 0.13087143014794164 23 0.12305435396832173 24 0.12454863504174041 
		25 0.15897675440101836 26 0.25160049380278598 27 0.38877476746171724 28 0.53576175509769808 
		29 0.71397009457172689 30 0.9019911354047867 31 1.0008611248067398 32 0.99540989657618428 
		33 0.94893423411152744 34 0.88017080902234601 35 0.80785629291821648 36 0.75072735740871599 
		37 0.72752067410342092 38 0.74302262177533207 39 0.7832011388913882 40 0.83856523660207327 
		41 0.899623926057871 42 0.95688621840926535 43 1.0008611248067398;
createNode animCurveTL -n "animCurveTL414";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29 0 43 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL415";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 44 ".ktv[0:43]"  0 0 1 -0.00056059444862637637 2 
		-0.0011211888972527527 3 0 4 0.0058759941145687727 5 0.013433771581685069 
		6 0.015136050142919943 7 0.0070531498748221668 8 -0.0061222304123380155 9 
		-0.018993804876407335 10 -0.026165287675232515 11 -0.01920418262416097 12 
		0 13 0.025171070895469057 14 0.054289180305439784 15 0.083652113697337979 
		16 0.10903237327349766 17 0.14125637035611838 18 0.18637397787275045 19 0.2514071122621262 
		20 0.37756616653447767 21 0.46833555596070048 22 0.49018754046260193 23 0.52860625930230165 
		24 0.5758572632968828 25 0.62420610326342829 26 0.68144878120671015 27 0.74522654579984837 
		28 0.79257281786244893 29 0.81063643103104299 30 0.81226855276853271 31 0.81305610463408051 
		32 0.81910783719511293 33 0.82566410294669357 34 0.83200922633943986 35 0.83742753182397012 
		36 0.84120334385090179 37 0.84262098687085285 38 0.8409442747478848 39 0.83659851069431557 
		40 0.83061025318314796 41 0.82400606068738425 42 0.81781249168002756 43 0.81305610463408051;
createNode animCurveTA -n "animCurveTA1185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 44 ".ktv[0:43]"  0 -5.8284402688137176 1 -1.8523997388840645 
		2 6.9105796367819146 3 15.712784536999759 4 24.492590611654776 5 33.311622871464685 
		6 37.60704203649366 7 36.392526415228041 8 32.330201344609208 9 26.329898087383981 
		10 19.301447906299206 11 5.585282891144562 12 -5.8284402688137176 13 -4.7625518213091622 
		14 0.71692813444181314 15 6.1296329831764549 16 9.849025760366013 17 13.600868200262253 
		18 19.837004112127886 19 21.932677743389643 20 8.2549963104777078 21 -3.7197865316961756 
		22 -4.2674615423752984 23 -4.2558871170071715 24 -3.9762623989835468 25 -3.7197865316961756 
		26 -3.5235586807235544 27 -3.1959218887970606 28 -2.684941115037764 29 -2.3655210785576117 
		30 -1.8627570909370752 31 0 32 3.7959358717952645 33 8.7610300935250773 34 
		14.066122654667661 35 18.88205354470124 36 22.379662753104007 37 23.729790269354226 
		38 22.384003514599833 39 18.895943981487836 40 14.089562766745059 41 8.7888109670982892 
		42 3.8176396792743366 43 0;
createNode animCurveTU -n "animCurveTU81";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
createNode animCurveTU -n "animCurveTU82";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
createNode animCurveTU -n "animCurveTU83";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
createNode animCurveTU -n "animCurveTU84";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
createNode animCurveTU -n "animCurveTU85";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "animCurveTU86";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "animCurveTU87";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 43 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "animCurveTU88";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 43 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1186";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1187";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1188";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL416";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL417";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL418";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL419";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.26454016861507795 3 -0.26454016861507795 
		6 -0.17390215284266961 12 -0.26454016861507795 15 -0.2173751638612961 17 
		-0.17721361257686638 19 0.014387102308690393 21 0.019043121068561687 25 0.028822034365029829 
		28 0.82409193837269812 31 2.0407430139147178 37 2.0407430139147178 43 2.0407430139147178;
	setAttr -s 13 ".kit[2:12]"  9 9 9 9 9 9 3 
		3 3 3 3;
	setAttr -s 13 ".kot[2:12]"  9 9 9 9 9 9 3 
		3 3 3 3;
createNode animCurveTL -n "animCurveTL420";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.21854541072049752 3 0.21854541072049752 
		6 0.25678279360175266 12 0.21854541072049752 15 0.21218793707500705 17 0.25861102390683555 
		19 0.18381928724669791 21 0.21939540220047499 25 0.71918268285638098 28 0.89960345004200148 
		31 1.004658375723265 37 1.004658375723265 43 1.004658375723265;
	setAttr -s 13 ".kit[2:12]"  9 9 9 9 9 9 3 
		3 3 3 3;
	setAttr -s 13 ".kot[2:12]"  9 9 9 9 9 9 3 
		3 3 3 3;
createNode animCurveTL -n "animCurveTL421";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.064904406754016042 3 -0.064904406754016042 
		6 -0.052792361204449745 12 -0.064904406754016042 15 -0.064904406754016042 
		17 0.38761032248211302 19 0.92356787827008124 21 0.91265126660440776 25 1.3265112247752731 
		28 2.0187165276500982 31 2.4087040652971967 37 2.4087040652971967 43 2.4087040652971967;
	setAttr -s 13 ".kit[2:12]"  9 9 1 9 9 9 3 
		3 3 3 3;
	setAttr -s 13 ".kot[2:12]"  9 9 1 9 9 9 3 
		3 3 3 3;
	setAttr -s 13 ".kix[4:12]"  0.41586130857467651 0.0013488816330209374 
		0.0025394763797521591 0.0049634156748652458 1 1 1 1 1;
	setAttr -s 13 ".kiy[4:12]"  0.90942800045013428 0.99999910593032837 
		0.99999678134918213 0.99998766183853149 0 0 0 0 0;
	setAttr -s 13 ".kox[4:12]"  0.41586148738861084 0.0013488816330209374 
		0.0025394763797521591 0.0049634156748652458 1 1 1 1 1;
	setAttr -s 13 ".koy[4:12]"  0.90942800045013428 0.99999910593032837 
		0.99999678134918213 0.99998766183853149 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1189";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 40.947029585382076 12 
		0 15 15.829425701546842 17 14.331626443463124 19 -10.811641225563552 21 22.593134942179454 
		25 63.16108123139599 28 3.3423255055965062 31 -28.33147073208438 37 -28.33147073208438 
		43 -28.33147073208438;
	setAttr -s 13 ".kit[2:12]"  9 9 9 9 9 9 3 
		3 3 3 3;
	setAttr -s 13 ".kot[2:12]"  9 9 9 9 9 9 3 
		3 3 3 3;
createNode animCurveTA -n "animCurveTA1190";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -25.948901905116401 3 -25.948901905116401 
		6 -22.743554926231724 12 -25.948901905116401 15 -25.948901905116429 17 -0.4082319874018141 
		19 9.0830972443010491 21 5.4726526619269746 25 35.595363845044297 28 -42.70484598509212 
		31 -10.113681911874204 37 -10.113681911874204 43 -10.113681911874204;
	setAttr -s 13 ".kit[2:12]"  9 9 1 9 9 9 3 
		3 3 3 3;
	setAttr -s 13 ".kot[2:12]"  9 9 1 9 9 9 3 
		3 3 3 3;
	setAttr -s 13 ".kix[4:12]"  0.99546581506729126 0.21306303143501282 
		0.79240363836288452 0.39674755930900574 1 1 1 1 1;
	setAttr -s 13 ".kiy[4:12]"  0.095119811594486237 0.97703844308853149 
		0.60999709367752075 0.91792774200439453 0 0 0 0 0;
	setAttr -s 13 ".kox[4:12]"  0.99546587467193604 0.21306303143501282 
		0.79240363836288452 0.39674755930900574 1 1 1 1 1;
	setAttr -s 13 ".koy[4:12]"  0.095119617879390717 0.97703844308853149 
		0.60999709367752075 0.91792774200439453 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1191";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 -20.771216329880893 12 
		0 15 0 17 0.50956548566278548 19 2.954679702671601 21 -2.3144369118160042 
		25 -1.8224410758254592 28 9.2988248217141081 31 3.6896128937020114 37 3.6896128937020114 
		43 3.6896128937020114;
	setAttr -s 13 ".kit[2:12]"  9 9 1 9 9 9 3 
		3 3 3 3;
	setAttr -s 13 ".kot[2:12]"  9 9 1 9 9 9 3 
		3 3 3 3;
	setAttr -s 13 ".kix[4:12]"  0.99998509883880615 0.93267172574996948 
		0.9379652738571167 0.92300617694854736 1 1 1 1 1;
	setAttr -s 13 ".kiy[4:12]"  0.0054611046798527241 0.36072632670402527 
		-0.34672924876213074 -0.38478505611419678 0 0 0 0 0;
	setAttr -s 13 ".kox[4:12]"  0.99998509883880615 0.93267172574996948 
		0.9379652738571167 0.92300617694854736 1 1 1 1 1;
	setAttr -s 13 ".koy[4:12]"  0.0054611093364655972 0.36072632670402527 
		-0.34672924876213074 -0.38478505611419678 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL422";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.21594587158542247 3 0.21594587158542247 
		6 0.21594587158542247 10 0.21594587158542247 12 0.21594587158542247 15 0.21594587158542247 
		17 0.21594587158542247 19 0.13963627310524832 22 0.78871766039456459 28 0.78871766039456459 
		31 2.4790535543793637 37 2.4790535543793637 43 2.4790535543793637;
	setAttr -s 13 ".kit[2:12]"  9 9 9 9 9 9 3 
		3 3 3 3;
	setAttr -s 13 ".kot[2:12]"  9 9 9 9 9 9 3 
		3 3 3 3;
createNode animCurveTL -n "animCurveTL423";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.21854505205085809 3 0.21854505205085809 
		6 0.21854505205085809 10 0.21854505205085809 12 0.21854505205085809 15 0.21854505205085809 
		17 0.21854505205085809 19 0.23853535213070526 22 0.78001930404657405 28 0.78001930404657405 
		31 0.98803500993479365 37 0.98803500993479365 43 0.98803500993479365;
	setAttr -s 13 ".kit[2:12]"  9 9 9 9 9 9 3 
		3 3 3 3;
	setAttr -s 13 ".kot[2:12]"  9 9 9 9 9 9 3 
		3 3 3 3;
createNode animCurveTL -n "animCurveTL424";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.00078430246903575811 3 0.00078430246903575811 
		6 0.00078430246903575811 10 0.00078430246903575811 12 0.00078430246903575811 
		15 0.00078430246903575811 17 0.00078430246903575811 19 0.14969380950094124 
		22 1.2889513117444105 28 1.2889513117444105 31 2.3692681032003731 37 2.3692681032003731 
		43 2.3692681032003731;
	setAttr -s 13 ".kit[2:12]"  9 9 9 9 9 9 3 
		3 3 3 3;
	setAttr -s 13 ".kot[2:12]"  9 9 9 9 9 9 3 
		3 3 3 3;
createNode animCurveTA -n "animCurveTA1192";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 12 0 15 0 17 0 
		19 44.388556084713827 22 -17.613616873884094 28 -17.613616873884094 31 -27.647037481197394 
		37 -27.647037481197394 43 -27.647037481197394;
	setAttr -s 13 ".kit[2:12]"  9 9 9 9 9 9 3 
		3 3 3 3;
	setAttr -s 13 ".kot[2:12]"  9 9 9 9 9 9 3 
		3 3 3 3;
createNode animCurveTA -n "animCurveTA1193";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 12 0 15 0 17 0 
		19 8.3467315155771242 22 40.787271126349502 28 40.787271126349502 31 1.6471102606573029 
		37 1.6471102606573029 43 1.6471102606573029;
	setAttr -s 13 ".kit[2:12]"  9 9 9 9 9 9 3 
		3 3 3 3;
	setAttr -s 13 ".kot[2:12]"  9 9 9 9 9 9 3 
		3 3 3 3;
createNode animCurveTA -n "animCurveTA1194";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 12 0 15 0 17 0 
		19 -7.7471581766269448 22 7.3958374073208715 28 7.3958374073208715 31 7.792214191643251 
		37 7.792214191643251 43 7.792214191643251;
	setAttr -s 13 ".kit[2:12]"  9 9 9 9 9 9 3 
		3 3 3 3;
	setAttr -s 13 ".kot[2:12]"  9 9 9 9 9 9 3 
		3 3 3 3;
createNode animCurveTA -n "animCurveTA1195";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1196";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1197";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1198";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1199";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1200";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1201";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1202";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1203";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1204";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1205";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1206";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL425";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 3 0 6 0 10 0 12 0 15 0 17 0 
		19 0 21 0 25 0 28 0 31 0 37 0 43 0;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  1;
	setAttr -s 14 ".kiy[13]"  0;
createNode animCurveTL -n "animCurveTL426";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 3 0 6 0 10 0 12 0 15 0 17 0 
		19 0 21 0 25 0 28 0 31 0 37 0 43 0;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  1;
	setAttr -s 14 ".kiy[13]"  0;
createNode animCurveTL -n "animCurveTL427";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 3 1 6 1 10 1 12 1 15 1 17 1 
		19 1 21 1 25 1 28 1 31 1 37 1 43 1;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  1;
	setAttr -s 14 ".kiy[13]"  0;
createNode animCurveTL -n "animCurveTL428";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 3 0 6 0 10 0 12 0 15 0 17 0 
		19 0 21 0 25 0 28 0 31 0 37 0 43 0;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  1;
	setAttr -s 14 ".kiy[13]"  0;
createNode animCurveTL -n "animCurveTL429";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 3 0 6 0 10 0 12 0 15 0 17 0 
		19 0 21 0 25 0 28 0 31 0 37 0 43 0;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  1;
	setAttr -s 14 ".kiy[13]"  0;
createNode animCurveTL -n "animCurveTL430";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 3 1 6 1 10 1 12 1 15 1 17 1 
		19 1 21 1 25 1 28 1 31 1 37 1 43 1;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  1;
	setAttr -s 14 ".kiy[13]"  0;
createNode animCurveTL -n "animCurveTL431";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.076472881617957691 3 -0.076472881617957691 
		6 0.17289033686313299 10 -0.076171803849399422 12 -0.076472881617957691 15 
		-0.033034131700396582 17 -0.01216889566532684 19 0.067340596773508177 21 
		0.28074045826882532 25 0.35883700050921535 28 1.2093034727697225 31 2.2591101781206659 
		37 1.6421352762378554 43 2.2591101781206659;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  0.0043221241794526577;
	setAttr -s 14 ".kiy[13]"  0.99999064207077026;
createNode animCurveTL -n "animCurveTL432";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.95473100313980441 3 0.93105416142265018 
		6 0.96166607922299341 10 0.95329017309074449 12 0.95473100313980441 15 0.9224657007074174 
		17 0.91524338550816797 19 0.92948217727043758 21 0.96472071093595801 25 1.4137363308028799 
		28 1.5410418720851637 31 1.3485645994757605 37 1.4356475945789096 43 1.3485645994757605;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 1 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 1 9 9 9 9 5;
	setAttr -s 14 ".kix[8:13]"  0.019300941377878189 0.0040486352518200874 
		0.030673712491989136 0.02845301665365696 1 0.030607786029577255;
	setAttr -s 14 ".kiy[8:13]"  0.9998137354850769 0.999991774559021 
		-0.99952942132949829 -0.99959510564804077 0 -0.99953144788742065;
	setAttr -s 14 ".kox[8:13]"  0.019300926476716995 0.0040486352518200874 
		0.030673712491989136 0.02845301665365696 1 0;
	setAttr -s 14 ".koy[8:13]"  0.9998137354850769 0.999991774559021 
		-0.99952942132949829 -0.99959510564804077 0 0;
createNode animCurveTL -n "animCurveTL433";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 3 0 6 0.034164584962791775 
		10 -0.059059410177397804 12 0 15 0.18881674669046031 17 0.31883914369988964 
		19 0.56746770564493954 21 1.0571113164685229 25 1.4089370904477301 28 1.7889687943275561 
		31 1.8352029825483169 37 1.9019358436022702 43 1.8352029825483169;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 1 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 1 9 9 9 9 5;
	setAttr -s 14 ".kix[8:13]"  0.013435677625238895 0.0031882184557616711 
		0.0046918555162847042 0.026547057554125786 1 0.039928462356328964;
	setAttr -s 14 ".kiy[8:13]"  0.99990975856781006 0.99999493360519409 
		0.99998897314071655 0.99964755773544312 0 -0.99920260906219482;
	setAttr -s 14 ".kox[8:13]"  0.013435684144496918 0.0031882184557616711 
		0.0046918555162847042 0.026547057554125786 1 0;
	setAttr -s 14 ".koy[8:13]"  0.99990975856781006 0.99999493360519409 
		0.99998897314071655 0.99964755773544312 0 0;
createNode animCurveTA -n "animCurveTA1207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.62843630316474508 3 -0.64945777164326313 
		6 3.5362358469263615 10 2.2213518221595017 12 -0.62843630316474508 15 -4.0647210446877668 
		17 -2.935775021023272 19 -3.0762169050940038 21 -6.5591355069755881 25 -6.5591355069755881 
		28 -10.96697467846017 31 -26.004389268796515 37 19.904949984433497 43 -26.004389268796515;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 1 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 1 9 9 9 9 5;
	setAttr -s 14 ".kix[8:13]"  0.9971427321434021 0.94971179962158203 
		0.50770366191864014 0.48645725846290588 1 0.31577691435813904;
	setAttr -s 14 ".kiy[8:13]"  -0.075540885329246521 -0.31312531232833862 
		-0.86153173446655273 0.87370437383651733 0 -0.94883352518081665;
	setAttr -s 14 ".kox[8:13]"  0.9971427321434021 0.94971179962158203 
		0.50770366191864014 0.48645725846290588 1 0;
	setAttr -s 14 ".koy[8:13]"  -0.075540848076343536 -0.31312531232833862 
		-0.86153173446655273 0.87370437383651733 0 0;
createNode animCurveTA -n "animCurveTA1208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -5.8284402688137167 3 15.712784536999756 
		6 37.60704203649366 10 19.301447906299206 12 -5.8284402688137167 15 6.129632983176454 
		17 13.600868200262255 19 21.932677743389643 21 -3.7197865316961756 25 -3.7197865316961756 
		28 -2.6849411150377636 31 0 37 23.729790269354229 43 0;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 1 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 1 9 9 9 9 5;
	setAttr -s 14 ".kix[8:13]"  0.90011471509933472 0.997017502784729 
		0.95114231109619141 0.54541563987731934 1 0.54135936498641968;
	setAttr -s 14 ".kiy[8:13]"  -0.43565288186073303 0.07717539370059967 
		0.30875280499458313 0.83816570043563843 0 -0.84079128503799438;
	setAttr -s 14 ".kox[8:13]"  0.90011477470397949 0.997017502784729 
		0.95114231109619141 0.54541563987731934 1 0;
	setAttr -s 14 ".koy[8:13]"  -0.43565282225608826 0.07717539370059967 
		0.30875280499458313 0.83816570043563843 0 0;
createNode animCurveTA -n "animCurveTA1209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -1.295636019309746 3 -1.5353463816017385 
		6 -1.9350868568911364 10 -1.7971044910279799 12 -1.295636019309746 15 -1.7490863204697844 
		17 -0.84256151123097234 19 -1.3015925165258879 21 -5.0537228151421463 25 
		-5.0537228151421463 28 -3.5942040383448104 31 0 37 30.653736597065432 43 
		0;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  0.44609230756759644;
	setAttr -s 14 ".kiy[13]"  -0.89498692750930786;
createNode animCurveTA -n "animCurveTA1210";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1211";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1212";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1213";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1214";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1215";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1216";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1217";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1218";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1219";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1220";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1221";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1222";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1223";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1224";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1225";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1226";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1227";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1228";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1229";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1230";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1231";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1232";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1233";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 19 0 21 0 43 0;
	setAttr -s 5 ".kit[2:4]"  9 1 1;
	setAttr -s 5 ".kot[2:4]"  9 9 5;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA1234";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 19 0 21 0 43 0;
	setAttr -s 5 ".kit[2:4]"  9 1 1;
	setAttr -s 5 ".kot[2:4]"  9 9 5;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA1235";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 17 0 19 -24.501661700242042 
		21 0 43 0;
	setAttr -s 5 ".kit[2:4]"  9 1 1;
	setAttr -s 5 ".kot[2:4]"  9 9 5;
	setAttr -s 5 ".kix[3:4]"  0.29765972495079041 1;
	setAttr -s 5 ".kiy[3:4]"  0.95467203855514526 0;
createNode animCurveTL -n "animCurveTL434";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.43524234076486068 43 -0.43524234076486068;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL435";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.82665738350180629 43 -0.82665738350180629;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL436";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.27773886459742925 43 0.27773886459742925;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1236";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1237";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 28.652637602052774 43 28.652637602052774;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1238";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 64.676908227303443 43 64.676908227303443;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL437";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.5198069948790518 43 0.5198069948790518;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL438";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.72394202659893114 43 -0.72394202659893114;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL439";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.36439499068905612 43 0.36439499068905612;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1239";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.7976222737965317 43 7.7976222737965299;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1240";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -30.409274105849079 43 -30.409274105849079;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1241";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -64.859940280210893 43 -64.859940280210878;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL440";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -0.8448236677023373 3 -0.097868043675122127 
		6 0.67297017784466751 8 -0.53889157443010816 10 -0.91687176238261336 12 -0.8448236677023373 
		15 -0.91837917750249576 17 -0.89437419462442036 19 -0.79254435424317993 21 
		-0.50802692925305393 25 -0.09225560444291149 28 1.0697637662078572 31 2.1657315743829622 
		37 0.90860127586665562 39 1.0663777460455246 43 2.1657315743829622;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 1;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 5;
	setAttr -s 16 ".kix[15]"  0.0015160409966483712;
	setAttr -s 16 ".kiy[15]"  0.99999886751174927;
createNode animCurveTL -n "animCurveTL441";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1.0304014029588007 3 1.6409997766055862 
		6 2.0516744866464558 8 1.9297493576614511 10 1.6867389784155029 12 1.0304014029588007 
		15 1.2376327523903852 17 1.2598377302979162 19 1.3355470437254813 21 1.5019588733907707 
		25 2.7988454248546248 28 2.2666828628028433 31 1.6749265988332942 37 2.5072247162763563 
		39 2.5434888612919893 43 1.6749265988332942;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 1 9 9 9 9 1 1;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 1 9 9 9 9 1 5;
	setAttr -s 16 ".kix[9:15]"  0.0042146164923906326 0.0030511955264955759 
		0.0017794851446524262 0.012470872141420841 0.0030701933428645134 0.023984095081686974 
		0.0019188771257176995;
	setAttr -s 16 ".kiy[9:15]"  0.99999111890792847 0.99999535083770752 
		-0.99999839067459106 0.99992221593856812 0.99999529123306274 -0.99971240758895874 
		-0.99999809265136719;
	setAttr -s 16 ".kox[9:15]"  0.0042146611958742142 0.0030511955264955759 
		0.0017794851446524262 0.012470872141420841 0.0030701933428645134 0.023984048515558243 
		0;
	setAttr -s 16 ".koy[9:15]"  0.99999111890792847 0.99999535083770752 
		-0.99999839067459106 0.99992221593856812 0.99999529123306274 -0.99971240758895874 
		0;
createNode animCurveTL -n "animCurveTL442";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -0.097994651149805143 3 0.84567637706889831 
		6 1.012740774631735 7.9950000000000001 0.99955266503950313 10 0.82410919595210663 
		12 -0.097994651149805143 15 0.18811956002607613 17 0.40817563733893863 19 
		0.97154473824728926 21 1.7084459967887549 25 2.9184961808501275 28 3.1165646536977438 
		31 2.6001625185510933 37 3.5066235550347145 39 3.4262633344380617 43 2.6001625185510933;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 1 1;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 1 5;
	setAttr -s 16 ".kix[14:15]"  0.0069580026902258396 0.0020175066310912371;
	setAttr -s 16 ".kiy[14:15]"  -0.99997574090957642 -0.99999791383743286;
	setAttr -s 16 ".kox[14:15]"  0.0069580008275806904 0;
	setAttr -s 16 ".koy[14:15]"  -0.99997574090957642 0;
createNode animCurveTA -n "animCurveTA1242";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 5.4739599453216465 3 71.119159344460144 
		6 115.97949163849844 7.9950000000000001 78.443105148750945 10 4.4503298151152562 
		12 5.4739599453216465 15 -10.826424546146567 17 -10.826466618605725 19 -10.345092866137652 
		21 -29.971309712113101 25 -99.357306583188404 28 -71.444410515520019 31 -33.734888782993899 
		37 -19.345874397196617 39 -21.547393754778248 43 -33.734888782993899;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 1;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 5;
	setAttr -s 16 ".kix[15]"  0.61675918102264404;
	setAttr -s 16 ".kiy[15]"  -0.78715187311172485;
createNode animCurveTA -n "animCurveTA1243";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 8.5874521608419823 3 28.587710488537017 
		6 70.59428487001783 8 73.544495109388265 10 33.344727940425187 12 8.5874521608419823 
		15 28.562123998386923 17 27.007566258096951 19 16.457368745399648 21 -36.465641622030631 
		25 47.240579136546721 28 34.915716994255128 31 14.870586397896899 37 47.068687946319812 
		39 42.142378080219508 43 14.870586397896899;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 1;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 5;
	setAttr -s 16 ".kix[15]"  0.33047908544540405;
	setAttr -s 16 ".kiy[15]"  -0.94381332397460938;
createNode animCurveTA -n "animCurveTA1244";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 74.754744621954103 3 145.5137268770755 
		6 193.1888567175117 7.9950000000000001 152.83471523677741 10 74.65908388092609 
		12 74.754744621954103 15 52.637498007569562 17 53.986957445494888 19 48.871451458157736 
		21 20.091500423830848 25 -41.619546305829736 28 -6.7023665856785861 31 30.592169336881899 
		37 -7.3649226411748101 39 -1.55748705668628 43 30.592169336881899;
	setAttr -s 16 ".kit[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 1;
	setAttr -s 16 ".kot[0:15]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 5;
	setAttr -s 16 ".kix[15]"  0.28473177552223206;
	setAttr -s 16 ".kiy[15]"  0.9586072564125061;
createNode animCurveTL -n "animCurveTL443";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.61083301393139333 3 0.57262925149573951 
		6 0.65078171898999204 10 0.65379941659865082 12 0.61083301393139333 15 0.71855072776607709 
		17 0.79768864264128636 19 1.2216982766104969 21 1.6615405618010601 25 1.6615405618010601 
		28 2.718818699284034 31 3.6370999456408879 37 3.0251282500831582 43 3.6370999456408879;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  0.0043574594892561436;
	setAttr -s 14 ".kiy[13]"  0.99999052286148071;
createNode animCurveTL -n "animCurveTL444";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1.0211562878106184 3 1.4163535334556963 
		6 1.1595450764031354 10 1.187554025869259 12 1.0211562878106184 15 1.5241480002158414 
		17 1.642659415129353 19 2.1458374442121051 21 2.1873530019833729 25 2.1873530019833729 
		28 1.9413710135050546 31 1.7841255587132463 37 2.4322073245137408 43 1.7841255587132463;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  0.0041146730072796345;
	setAttr -s 14 ".kiy[13]"  -0.99999147653579712;
createNode animCurveTL -n "animCurveTL445";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.14314299916678522 3 -0.37264849786442289 
		6 -0.61670812692470955 10 -0.37392246864567208 12 0.14314299916678522 15 
		0.66996185967789745 17 0.83013864918616787 19 0.9774450882183453 21 1.4120938891850821 
		25 1.7877164599350404 28 2.6274946301868729 31 2.7027068055413355 37 2.4602491551945591 
		43 2.7027068055413355;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  0.010997820645570755;
	setAttr -s 14 ".kiy[13]"  0.99993956089019775;
createNode animCurveTA -n "animCurveTA1245";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 16.226511010665408 3 16.226511010665405 
		6 -36.342371142933764 10 -19.485233780889633 12 16.226511010665408 15 55.598837649680043 
		17 30.40552687334386 19 0.53074525458670618 21 -9.3708019553636923 25 -9.3708019553636923 
		28 -17.985238978769711 31 -26.203413720634725 37 -27.818924152705119 43 -26.203413720634725;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  0.99445652961730957;
	setAttr -s 14 ".kiy[13]"  0.10514874756336212;
createNode animCurveTA -n "animCurveTA1246";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -8.513966085499284 3 -8.513966085499284 
		6 11.969566747283142 10 -0.96208380069696442 12 -8.513966085499284 15 -30.973734338623142 
		17 -57.071878589129092 19 -30.368244126557347 21 -29.306594429857483 25 -29.306594429857483 
		28 -23.104847167583884 31 -14.791961579779638 37 7.8589637569602626 43 -14.791961579779638;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  0.55920886993408203;
	setAttr -s 14 ".kiy[13]"  -0.82902681827545166;
createNode animCurveTA -n "animCurveTA1247";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -68.213989601412422 3 -68.213989601412422 
		6 -58.343731855318346 10 -56.825927835201007 12 -68.213989601412422 15 -82.208920420259716 
		17 -59.188089930048456 19 43.401113370080203 21 65.912336754634623 25 65.912336754634623 
		28 5.077971438885676 31 -45.895436695401962 37 6.0238552216777173 43 -45.895436695401962;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  0.2823108434677124;
	setAttr -s 14 ".kiy[13]"  -0.95932298898696899;
createNode animCurveTL -n "animCurveTL446";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 3 0.17523930523423681 6 0.17523930523423681 
		10 0.17523930523423681 12 0 15 0.17523930523423681 17 0.15311553630748009 
		19 0.063331173333856433 21 0.063331173333856433 25 0.063331173333856433 28 
		0.063331173333856433 31 0.063331173333856433 37 0.063331173333856433 43 0.063331173333856433;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 1 9 9 9 9 9 
		9 9 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  1;
	setAttr -s 14 ".kiy[13]"  0;
	setAttr -s 14 ".kox[1:13]"  1 1 0.011412221938371658 1 0.010884381830692291 
		0.011913688853383064 0.014848758466541767 1 1 1 1 1 0;
	setAttr -s 14 ".koy[1:13]"  0 0 -0.9999348521232605 0 0.99994075298309326 
		-0.99992901086807251 -0.99988973140716553 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL447";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 3 -0.00072435787012014696 6 
		-0.00072435787012014696 10 -0.00072435787012014696 12 0 15 -0.00072435787012014696 
		17 -0.37298796460009648 19 -0.69960805773293522 21 -0.69960805773293522 25 
		-0.69960805773293522 28 -0.69960805773293522 31 -0.69960805773293522 37 -0.69960805773293522 
		43 -0.69960805773293522;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 1 9 9 9 9 9 
		9 9 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  1;
	setAttr -s 14 ".kiy[13]"  0;
	setAttr -s 14 ".kox[1:13]"  1 1 0.94023275375366211 1 0.0044683748856186867 
		0.0019078007899224758 0.0040821805596351624 1 1 1 1 1 0;
	setAttr -s 14 ".koy[1:13]"  0 0 0.34053251147270203 0 -0.99999004602432251 
		-0.99999815225601196 -0.99999165534973145 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL448";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -1 3 -0.80201435285893019 6 -0.80201435285893019 
		10 -0.80201435285893019 12 -1 15 -0.80201435285893019 17 -0.70922931248881582 
		19 -0.66762598980258558 21 -0.66762598980258558 25 -0.66762598980258558 28 
		-0.66762598980258558 31 -0.66762598980258558 37 -0.66762598980258558 43 -0.66762598980258558;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 1 9 9 9 9 9 
		9 9 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  1;
	setAttr -s 14 ".kiy[13]"  0;
	setAttr -s 14 ".kox[1:13]"  1 1 0.010101226158440113 1 0.0057317991741001606 
		0.0099210049957036972 0.032032277435064316 1 1 1 1 1 0;
	setAttr -s 14 ".koy[1:13]"  0 0 -0.99994897842407227 0 0.99998354911804199 
		0.99995076656341553 0.99948686361312866 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL449";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.10167917362943303 3 -0.4001111643408698 
		6 -0.4001111643408698 10 -0.4001111643408698 12 -0.10167917362943303 15 -0.31054502397108613 
		17 -0.31054502397108613 19 -0.31054502397108613 21 -0.31054502397108613 25 
		-0.31054502397108613 28 -0.31054502397108613 31 -0.31054502397108613 37 -0.31054502397108613 
		43 -0.31054502397108613;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 1 9 9 9 9 9 
		9 9 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  1;
	setAttr -s 14 ".kiy[13]"  0;
	setAttr -s 14 ".kox[1:13]"  1 1 0.0067015434615314007 0.018605001270771027 
		0.0079793492332100868 1 1 1 1 1 1 1 0;
	setAttr -s 14 ".koy[1:13]"  0 0 0.99997752904891968 0.99982690811157227 
		-0.99996817111968994 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL450";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.40762644910266188 3 -0.32054195494897236 
		6 -0.32054195494897236 10 -0.32054195494897236 12 -0.40762644910266188 15 
		-0.55640530640609931 17 -0.55640530640609931 19 -0.55640530640609931 21 -0.55640530640609931 
		25 -0.55640530640609931 28 -0.55640530640609931 31 -0.55640530640609931 37 
		-0.55640530640609931 43 -0.55640530640609931;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 1 9 9 9 9 9 
		9 9 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  1;
	setAttr -s 14 ".kiy[13]"  0;
	setAttr -s 14 ".kox[1:13]"  1 1 0.022960146889090538 0.0070660621859133244 
		0.011201605200767517 1 1 1 1 1 1 1 0;
	setAttr -s 14 ".koy[1:13]"  0 0 -0.99973636865615845 -0.99997502565383911 
		-0.99993723630905151 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL451";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.93129112588482243 3 -0.81561019929437761 
		6 -0.81561019929437761 10 -0.81561019929437761 12 -0.93129112588482243 15 
		-0.57914122395678103 17 -0.57914122395678103 19 -0.57914122395678103 21 -0.57914122395678103 
		25 -0.57914122395678103 28 -0.57914122395678103 31 -0.57914122395678103 37 
		-0.57914122395678103 43 -0.57914122395678103;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 1 9 9 9 9 9 
		9 9 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  1;
	setAttr -s 14 ".kiy[13]"  0;
	setAttr -s 14 ".kox[1:13]"  1 1 0.017286350950598717 0.007047965656965971 
		0.0047327796928584576 1 1 1 1 1 1 1 0;
	setAttr -s 14 ".koy[1:13]"  0 0 -0.9998505711555481 0.99997514486312866 
		0.99998879432678223 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1248";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 12.253734489678925 3 12.253734489678925 
		6 12.253734489678925 10 12.253734489678925 12 12.253734489678925 15 12.253734489678925 
		17 12.253734489678925 19 12.253734489678925 21 12.253734489678925 25 12.253734489678925 
		31 12.253734489678925 37 12.253734489678925 43 12.253734489678925;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1249";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -65.746751280844975 3 -65.746751280844961 
		6 -65.746751280844961 10 -65.746751280844961 12 -65.746751280844975 15 -65.746751280844961 
		17 -65.746751280844961 19 -65.746751280844961 21 -65.746751280844961 25 -65.746751280844961 
		31 -65.746751280844961 37 -65.746751280844961 43 -65.746751280844961;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1250";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 12 0 15 0 17 0 
		19 0 21 0 25 0 31 0 37 0 43 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1251";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.061808866237340665 3 -0.061808866237337522 
		6 -0.061808866237337522 10 -0.061808866237337522 12 -0.061808866237340665 
		15 -0.061808866237337522 17 -0.061808866237337522 19 -0.061808866237337522 
		21 -0.061808866237337522 25 -0.061808866237337522 31 -0.061808866237337522 
		37 -0.061808866237337522 43 -0.061808866237337522;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1252";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -59.058178941076754 3 -59.058178941076754 
		6 -59.058178941076754 10 -59.058178941076754 12 -59.058178941076754 15 -59.058178941076754 
		17 -59.058178941076754 19 -59.058178941076754 21 -59.058178941076754 25 -59.058178941076754 
		31 -59.058178941076754 37 -59.058178941076754 43 -59.058178941076754;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1253";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 16.57914742975785 3 16.579147429757843 
		6 16.579147429757843 10 16.579147429757843 12 16.57914742975785 15 16.579147429757843 
		17 16.579147429757843 19 16.579147429757843 21 16.579147429757843 25 16.579147429757843 
		31 16.579147429757843 37 16.579147429757843 43 16.579147429757843;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1254";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 8.5572674112203657 3 8.5572674112203622 
		6 8.5572674112203622 10 8.5572674112203622 12 8.5572674112203657 15 8.5572674112203622 
		17 8.5572674112203622 19 8.5572674112203622 21 8.5572674112203622 25 8.5572674112203622 
		31 8.5572674112203622 37 8.5572674112203622 43 8.5572674112203622;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1255";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 15.711328223519061 3 15.711328223519057 
		6 15.711328223519057 10 15.711328223519057 12 15.711328223519061 15 15.711328223519057 
		17 15.711328223519057 19 15.711328223519057 21 15.711328223519057 25 15.711328223519057 
		31 15.711328223519057 37 15.711328223519057 43 15.711328223519057;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1256";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 12 0 15 0 17 0 
		19 0 21 0 25 0 31 0 37 0 43 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1257";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 12 0 15 0 17 0 
		19 0 21 0 25 0 31 0 37 0 43 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1258";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 12 0 15 0 17 0 
		19 0 21 0 25 0 31 0 37 0 43 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1259";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 12 0 15 0 17 0 
		19 0 21 0 25 0 31 0 37 0 43 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1260";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 12 0 15 0 17 0 
		19 0 21 0 25 0 31 0 37 0 43 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1261";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 12 0 15 0 17 0 
		19 0 21 0 25 0 31 0 37 0 43 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1262";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 143.71460997127252 3 -177.04830761929054 
		6 -177.04830761929054 10 -177.04830761929054 12 143.71460997127252 15 -177.04830761929054 
		17 -177.04830761929054 19 -177.04830761929054 21 -177.04830761929054 25 -177.04830761929054 
		31 -177.04830761929054 37 -177.04830761929054 43 -177.04830761929054;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1263";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 27.804554996454378 3 27.722848255843903 
		6 27.722848255843903 10 27.722848255843903 12 27.804554996454378 15 27.722848255843903 
		17 27.722848255843903 19 27.722848255843903 21 27.722848255843903 25 27.722848255843903 
		31 27.722848255843903 37 27.722848255843903 43 27.722848255843903;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1264";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 29.452980944098744 3 21.576484776388227 
		6 21.576484776388227 10 21.576484776388227 12 29.452980944098744 15 21.576484776388227 
		17 21.576484776388227 19 21.576484776388227 21 21.576484776388227 25 21.576484776388227 
		31 21.576484776388227 37 21.576484776388227 43 21.576484776388227;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1265";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 12 0 15 0 17 0 
		19 0 21 0 25 0 31 0 37 0 43 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1266";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 12 0 15 0 17 0 
		19 0 21 0 25 0 31 0 37 0 43 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1267";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 27.080064458283051 3 27.080064458283051 
		6 27.080064458283051 10 27.080064458283051 12 27.080064458283051 15 27.080064458283051 
		17 27.080064458283051 19 27.080064458283051 21 27.080064458283051 25 27.080064458283051 
		31 27.080064458283051 37 27.080064458283051 43 27.080064458283051;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1268";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1269";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1270";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1271";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1272";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1273";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 13.994403295754109;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1274";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1275";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 43 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1276";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 43 13.994403295754109;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1277";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 12 0 15 0 17 0 
		19 0 21 0 25 0 31 0 37 0 43 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1278";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 12 0 15 0 17 0 
		19 0 21 0 25 0 31 0 37 0 43 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1279";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 27.911632519594587 3 27.911632519594587 
		6 27.911632519594587 10 27.911632519594587 12 27.911632519594587 15 27.911632519594587 
		17 27.911632519594587 19 27.911632519594587 21 27.911632519594587 25 27.911632519594587 
		31 27.911632519594587 37 27.911632519594587 43 27.911632519594587;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1280";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 12 0 15 0 17 0 
		19 0 21 0 25 0 31 0 37 0 43 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1281";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 12 0 15 0 17 0 
		19 0 21 0 25 0 31 0 37 0 43 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1282";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 12 0 15 0 17 0 
		19 0 21 0 25 0 31 0 37 0 43 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1283";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.65073001024951671 3 17.865547004487734 
		6 26.344302103719443 10 15.995208714699748 12 -0.65073001024951671 15 7.8430056866173823 
		17 7.8430056866173823 19 7.8430056866173823 21 18.820843871529618 25 18.820843871529618 
		31 -1.3731006602189262 37 -5.9660149388432382 43 -1.3731006602189262;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1284";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -4.2368721935960938 3 -8.1938064043711503 
		6 -14.600939198760139 10 -10.255568461043122 12 -4.2368721935960938 15 -2.4212113907903019 
		17 -2.4212113907903019 19 -2.4212113907903019 21 -8.442588645585376 25 -8.442588645585376 
		31 0.38374158911587303 37 -4.5116636179203082 43 0.38374158911587303;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1285";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 2.6995264082587447 3 15.088783978648813 
		6 18.187946831246631 10 13.315807209516004 12 2.6995264082587447 15 14.868855041301886 
		17 14.868855041301886 19 14.868855041301886 21 16.699953369662587 25 16.699953369662587 
		31 0.96901743689791309 37 2.3811787268879385 43 0.96901743689791309;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1286";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 12 0 15 7.1097278539792699 
		17 7.1097278539792699 19 7.1097278539792699 21 7.1097278539792699 25 7.1097278539792699 
		31 -2.2144674450583466 37 7.1097278539792699 43 -2.2144674450583466;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1287";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 12 0 15 0 17 0 
		19 0 21 0 25 0 31 -5.36423803921525 37 0 43 -5.36423803921525;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1288";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 6.9655753505297673 6 6.9655753505297673 
		10 6.9655753505297673 12 0 15 6.9655753505297673 17 6.9655753505297673 19 
		6.9655753505297673 21 6.9655753505297673 25 6.9655753505297673 31 -3.2584064202075531 
		37 6.9655753505297673 43 -3.2584064202075531;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1289";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 3 -5.9242295281046466 6 1.8652854771413565 
		10 21.728187361662286 12 0 15 -8.2806877228551272 17 -8.9764510997163622 
		19 -5.2494090226201955 21 -5.2378895149391758 25 3.7903101035041509 31 4.9690701715193724 
		34 46.227209466300053 37 38.999395730978343 43 4.9690701715193724;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 1 9 
		9 9 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 1 9 
		9 9 9 9 9 9 5;
	setAttr -s 14 ".kix[5:13]"  0.91116088628768921 0.92950087785720825 
		0.89821141958236694 0.78511542081832886 0.88194912672042847 0.37541595101356506 
		0.31912657618522644 0.38457426428794861 0.40958940982818604;
	setAttr -s 14 ".kiy[5:13]"  -0.4120507538318634 0.36881986260414124 
		0.43956363201141357 0.61934953927993774 0.47134461998939514 0.92685645818710327 
		0.94771212339401245 -0.92309403419494629 -0.9122699499130249;
	setAttr -s 14 ".kox[5:13]"  0.91116094589233398 0.92950087785720825 
		0.89821141958236694 0.78511542081832886 0.88194912672042847 0.37541595101356506 
		0.31912657618522644 0.38457426428794861 0;
	setAttr -s 14 ".koy[5:13]"  -0.41205063462257385 0.36881986260414124 
		0.43956363201141357 0.61934953927993774 0.47134461998939514 0.92685645818710327 
		0.94771212339401245 -0.92309403419494629 0;
createNode animCurveTA -n "animCurveTA1290";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 3 -9.077909751430024 6 16.975603900501056 
		10 21.522809173019919 12 0 15 -8.5086629712104536 17 -6.9980377420294353 
		19 -7.4288331807529291 21 -25.174728286073833 25 -7.1873577666484181 31 -2.9904681746768538 
		34 43.464870903715401 37 68.701263884681893 43 -2.9904681746768538;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 1 1 
		9 9 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 1 1 
		9 9 9 9 9 9 5;
	setAttr -s 14 ".kix[5:13]"  0.99601650238037109 0.95914065837860107 
		0.38745781779289246 0.99977803230285645 0.65243446826934814 0.32134926319122314 
		0.15783576667308807 0.34701347351074219 0.20843805372714996;
	setAttr -s 14 ".kiy[5:13]"  -0.089168936014175415 0.28292959928512573 
		-0.92188739776611328 0.0210680291056633 0.75784516334533691 0.94696074724197388 
		0.98746538162231445 -0.93786013126373291 -0.978035569190979;
	setAttr -s 14 ".kox[5:13]"  0.99601650238037109 0.95914071798324585 
		0.38745781779289246 0.99977803230285645 0.65243446826934814 0.32134926319122314 
		0.15783576667308807 0.34701347351074219 0;
	setAttr -s 14 ".koy[5:13]"  -0.089168928563594818 0.28292950987815857 
		-0.92188739776611328 0.0210680291056633 0.75784516334533691 0.94696074724197388 
		0.98746538162231445 -0.93786013126373291 0;
createNode animCurveTA -n "animCurveTA1291";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 6.6786334979782902 3 -7.2687178407216164 
		6 -14.2973988729951 10 -1.4936145831966527 12 6.6786334979782902 15 -2.3189154341807527 
		17 -5.9940130223088586 19 -11.077093509012803 21 -8.0550223726483026 25 12.477959126589024 
		31 14.780225156536881 34 14.102963811421818 37 -10.15874635942871 43 14.780225156536881;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 1 1 
		9 9 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 1 1 
		9 9 9 9 9 9 5;
	setAttr -s 14 ".kix[5:13]"  0.7913811206817627 0.67820924520492554 
		0.96548116207122803 0.4374639093875885 0.64155560731887817 0.99556094408035278 
		0.41752150654792786 0.99922466278076172 1;
	setAttr -s 14 ".kiy[5:13]"  -0.61132305860519409 -0.73486888408660889 
		-0.26047280430793762 0.89923596382141113 0.76707649230957031 0.094119273126125336 
		-0.90866702795028687 0.039370916783809662 0;
	setAttr -s 14 ".kox[5:13]"  0.79138118028640747 0.67820918560028076 
		0.96548116207122803 0.4374639093875885 0.64155560731887817 0.99556094408035278 
		0.41752150654792786 0.99922466278076172 0;
	setAttr -s 14 ".koy[5:13]"  -0.61132305860519409 -0.73486888408660889 
		-0.26047280430793762 0.89923596382141113 0.76707649230957031 0.094119273126125336 
		-0.90866702795028687 0.039370916783809662 0;
createNode animCurveTA -n "animCurveTA1292";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -1.8903601258661935 3 -1.8903601258661931 
		6 -10.620934651579155 10 -1.8903601258661931 12 -1.8903601258661935 15 -1.8903601258661931 
		17 -1.8903601258661931 19 -1.8903601258661931 21 -1.8903601258661931 25 -1.8903601258661931 
		31 2.211833892135727 37 -3.749937051835468 43 2.211833892135727;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1293";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 2.5597289571479038 3 2.5597289571479034 
		6 -4.2675310995034259 10 2.5597289571479034 12 2.5597289571479038 15 2.5597289571479034 
		17 2.5597289571479034 19 2.5597289571479034 21 2.5597289571479034 25 2.5597289571479034 
		31 1.708673036061555 37 11.126545227672914 43 1.708673036061555;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1294";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 2.0168110874036049 3 2.016811087403604 
		6 -2.5690730322880704 10 2.016811087403604 12 2.0168110874036049 15 2.016811087403604 
		17 2.016811087403604 19 2.016811087403604 21 2.016811087403604 25 2.016811087403604 
		31 2.7082804953288209 37 -2.1144942238017537 43 2.7082804953288209;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1295";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 12 0 15 0 17 0 
		19 0 21 0 25 0 31 0 37 0 43 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1296";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 12 0 15 0 17 0 
		19 0 21 0 25 0 31 0 37 0 43 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1297";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 33.429092416277157 3 33.429092416277157 
		6 33.429092416277157 10 33.429092416277157 12 33.429092416277157 15 33.429092416277157 
		17 33.429092416277157 19 33.429092416277157 21 33.429092416277157 25 33.429092416277157 
		31 33.429092416277157 37 33.429092416277157 43 33.429092416277157;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1298";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -121.24398976748977 3 -171.24588681251637 
		6 -171.24588681251637 10 -171.24588681251637 12 -121.24398976748977 15 -171.24588681251637 
		17 -171.24588681251637 19 -171.24588681251637 21 -171.24588681251637 25 -171.24588681251637 
		31 -171.24588681251637 37 -171.24588681251637 43 -171.24588681251637;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1299";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 28.612774017129329 3 23.263402056531085 
		6 23.263402056531085 10 23.263402056531085 12 28.612774017129329 15 23.263402056531085 
		17 23.263402056531085 19 23.263402056531085 21 23.263402056531085 25 23.263402056531085 
		31 23.263402056531085 37 23.263402056531085 43 23.263402056531085;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1300";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 17.632837226638049 3 20.166277752815617 
		6 20.166277752815617 10 20.166277752815617 12 17.632837226638049 15 20.166277752815617 
		17 20.166277752815617 19 20.166277752815617 21 20.166277752815617 25 20.166277752815617 
		31 20.166277752815617 37 20.166277752815617 43 20.166277752815617;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1301";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 12 0 15 0 17 0 
		19 0 21 0 25 0 31 0 37 0 43 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1302";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 12 0 15 0 17 0 
		19 0 21 0 25 0 31 0 37 0 43 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA1303";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 17.254116939558369 3 17.254116939558369 
		6 17.254116939558369 10 17.254116939558369 12 17.254116939558369 15 17.254116939558369 
		17 17.254116939558369 19 17.254116939558369 21 17.254116939558369 25 17.254116939558369 
		31 17.254116939558369 37 17.254116939558369 43 17.254116939558369;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
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
connectAttr "brt_get_into_car_allSource.st" "clipLibrary1.st[0]";
connectAttr "brt_get_into_car_allSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL411.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL412.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL413.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL414.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL415.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA1185.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU81.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU82.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU83.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU84.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU85.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU86.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU87.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU88.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA1186.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA1187.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA1188.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL416.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL417.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL418.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL419.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL420.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL421.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA1189.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA1190.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA1191.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL422.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL423.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL424.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA1192.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA1193.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA1194.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA1195.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA1196.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA1197.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA1198.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA1199.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA1200.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA1201.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA1202.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA1203.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA1204.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA1205.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA1206.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL425.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL426.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL427.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL428.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL429.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL430.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL431.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL432.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL433.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA1207.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA1208.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA1209.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA1210.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA1211.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA1212.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA1213.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA1214.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA1215.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA1216.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA1217.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA1218.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA1219.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA1220.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA1221.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA1222.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA1223.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA1224.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA1225.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA1226.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA1227.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA1228.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA1229.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA1230.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA1231.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA1232.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA1233.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA1234.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA1235.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL434.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL435.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL436.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA1236.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA1237.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA1238.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL437.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL438.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL439.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA1239.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA1240.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA1241.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL440.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL441.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL442.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA1242.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA1243.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA1244.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL443.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL444.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL445.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA1245.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA1246.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA1247.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL446.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL447.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL448.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL449.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL450.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL451.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA1248.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA1249.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA1250.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA1251.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA1252.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA1253.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA1254.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA1255.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA1256.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA1257.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA1258.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1259.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1260.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1261.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA1262.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1263.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1264.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1265.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1266.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1267.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1268.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1269.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1270.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA1271.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA1272.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA1273.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA1274.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA1275.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA1276.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1277.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1278.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1279.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1280.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1281.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1282.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1283.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1284.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1285.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1286.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1287.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1288.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1289.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1290.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1291.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1292.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1293.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1294.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1295.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1296.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1297.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA1298.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA1299.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA1300.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA1301.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA1302.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA1303.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of brt_get_into_car_all.ma
