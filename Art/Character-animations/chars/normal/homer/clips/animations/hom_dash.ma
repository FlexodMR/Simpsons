//Maya ASCII 4.0 scene
//Name: hom_dash.ma
//Last modified: Wed, Jul 17, 2002 05:31:15 PM
requires maya "4.0";
requires "p3dSimpleShader" "17.1";
requires "p3dmayaexp" "17.9.1.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "hom_dashSource";
	setAttr ".ihi" 0;
	setAttr ".du" 16;
	setAttr ".ci" no;
createNode animCurveTL -n "hom_Extra_Attributes_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTL -n "hom_Extra_Attributes_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.020522575400564586 1 0.0051507686450694649 
		2 -0.0046492913534254632 3 -0.01340793218666108 4 -0.022219111276793418 5 
		-0.032504511173611729 6 -0.040859732078691674 7 -0.044113446238328073 8 -0.043586081981139939 
		9 -0.034198489778383773 10 -0.027744175524592577 11 -0.021765299199408186 
		12 -0.01459359270365866 13 -0.0036992229425187699 14 0.0074225622580349065 
		15 0.015757953876855208 16 0.020522575400564586;
createNode animCurveTL -n "Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.036131097706915333 1 0.29815391515297884 
		2 0.63709930969938922 3 0.98980975383255443 4 1.3319931146906756 5 1.639890552136049 
		6 1.9422661513208002 7 2.2831676456551282 8 2.6031081554363174 9 2.7698365680283881 
		10 3.0481746574579325 11 3.348251039499857 12 3.6613109399603605 13 4.0077234448474037 
		14 4.3530035879871107 15 4.6605546915014724 16 4.9187856473878444;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0;
createNode animCurveTU -n "animCurveTU49";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU50";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU51";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU52";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU53";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU54";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU55";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU56";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA680";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA681";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA682";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL252";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL253";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL254";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL255";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.19763288944005308 1 -0.19763288944005308 
		4 -0.19763288944005308 6 -0.19763288944005308 8 -0.19763288944005308 9 -0.19763288944005308 
		12 -0.19763288944005308 14 -0.19763288944005308 16 -0.19763288944005308;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL256";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.36956228769602462 1 0.28884186268296952 
		4 0.49346436852866532 6 0.12263042416664063 8 0.12263042416664063 9 0.12263042416664063 
		12 0.54615729628962517 14 0.52876720586341686 16 0.36956228769602462;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  0.0082586770877242088 0.010760563425719738 
		0.010026884265244007 0.0035954765044152737 1 0.0031481513287872076 0.0041036731563508511 
		0.0075500169768929482 0.0041874367743730545;
	setAttr -s 9 ".koy[0:8]"  -0.99996590614318848 0.9999421238899231 
		-0.99994975328445435 -0.99999356269836426 0 0.99999505281448364 0.99999159574508667 
		-0.99997150897979736 -0.99999123811721802;
createNode animCurveTL -n "animCurveTL257";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.34271856858817051 1 0.37931760405677162 
		4 2.5062856453444557 6 3.2406134681379148 8 3.7917625315549692 9 3.6636281617685724 
		12 4.8502984914175835 14 5.907699750699412 16 6.8988342239399323;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  0.00092331430641934276 0.0004679997218772769 
		0.00058248650748282671 0.0010372280376031995 0.002363977488130331 0.0012596003944054246 
		0.00074269738979637623 0.00065087125403806567 0.00067262945231050253;
	setAttr -s 9 ".koy[0:8]"  0.99999958276748657 0.99999988079071045 
		0.99999982118606567 0.99999946355819702 0.99999719858169556 0.99999922513961792 
		0.99999970197677612 0.9999997615814209 0.9999997615814209;
createNode animCurveTA -n "animCurveTA683";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 68.750149689121002 1 54.899040703425321 
		4 -31.548014841396505 6 -0.14896661373414463 8 -0.14896661373414463 9 -0.14896661373414463 
		12 90.034847060019032 14 128.13735884566807 16 68.750149689121002;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  0.26584640145301819 0.075947284698486328 
		0.1709195077419281 0.23640505969524384 1 0.084407329559326172 0.074231997132301331 
		0.33781683444976807 0.064186222851276398;
	setAttr -s 9 ".koy[0:8]"  -0.9640154242515564 -0.99711185693740845 
		-0.98528498411178589 0.97165459394454956 0 0.99643135070800781 0.99724102020263672 
		-0.94121187925338745 -0.99793791770935059;
createNode animCurveTA -n "animCurveTA684";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 4 0 6 0 8 0 9 0 12 0 14 
		0 16 0;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA685";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 4 0 6 0 8 0 9 0 12 0 14 
		0 16 0;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL258";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.19697756422115981 1 0.19697756422115981 
		4 0.19697756422115981 6 0.19697756422115981 8 0.19697756422115981 9 0.19697756422115981 
		12 0.19697756422115981 14 0.19697756422115981 16 0.19697756422115981;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL259";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.11742628606129618 1 0.11742628606129618 
		4 0.5670218290554746 6 0.77409521134530213 8 0.45706756536962601 9 0.27849434353650632 
		12 0.46490585693405545 14 0.11742628606129618 16 0.11742628606129618;
	setAttr -s 9 ".kit[1:8]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 9 ".kot[0:8]"  1 3 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  1 1 0.0025380540173500776 0.012125362642109394 
		0.0020177485421299934 0.16769617795944214 0.010347038507461548 0.0038371277041733265 
		1;
	setAttr -s 9 ".koy[0:8]"  0 0 0.99999678134918213 -0.99992650747299194 
		-0.99999797344207764 0.98583871126174927 -0.9999464750289917 -0.99999260902404785 
		0;
createNode animCurveTL -n "animCurveTL260";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.089378228552998554 1 -0.089378228552998554 
		4 1.314210508644833 6 2.12489103908998 8 3.6588762091821865 9 4.0511124371013061 
		12 5.9270879083531689 14 6.8184952274678325 16 7.1529341513685498;
	setAttr -s 9 ".kit[1:8]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 9 ".kot[0:8]"  1 3 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  1 1 0.00075269356602802873 0.00056866661179810762 
		0.00051915104268118739 0.00058783451095223427 0.0006022536545060575 0.0010876833694055676 
		0.0019933835137635469;
	setAttr -s 9 ".koy[0:8]"  0 0 0.99999970197677612 0.99999982118606567 
		0.99999988079071045 0.99999982118606567 0.99999982118606567 0.99999940395355225 
		0.99999803304672241;
createNode animCurveTA -n "animCurveTA686";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 4 111.66461118672031 6 
		127.61026578748944 8 98.915690893898827 9 37.956568696770837 12 -27.076362153617296 
		14 -13.120466155259251 16 0;
	setAttr -s 9 ".kit[1:8]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 9 ".kot[0:8]"  1 3 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  1 1 0.074623085558414459 0.51400512456893921 
		0.063777774572372437 0.060523122549057007 0.18377451598644257 0.27154296636581421 
		0.27952209115028381;
	setAttr -s 9 ".koy[0:8]"  0 0 0.99721181392669678 -0.85778707265853882 
		-0.99796414375305176 -0.99816679954528809 -0.98296844959259033 0.96242630481719971 
		0.96013927459716797;
createNode animCurveTA -n "animCurveTA687";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 4 0 6 0 8 0 9 0 12 0 14 
		0 16 0;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA688";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 4 0 6 0 8 0 9 0 12 0 14 
		0 16 0;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA689";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA690";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA691";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA692";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA693";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA694";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "hom_Right_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTL -n "hom_Right_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTL -n "hom_Right_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 1;
createNode animCurveTL -n "hom_Left_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTL -n "hom_Left_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTL -n "hom_Left_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 1;
createNode animCurveTL -n "animCurveTL267";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.03051835782609956 1 0.0076595162898200134 
		4 -0.033041213165890024 6 -0.060760986373170608 8 -0.064815239811546521 9 
		-0.050855300945329314 12 -0.021701588392573686 14 0.011037815993161315 16 
		0.03051835782609956;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  1 0.020973080769181252 0.024351945146918297 
		0.041926097124814987 0.10044160485267639 0.030911233276128769 0.026918383315205574 
		0.02552470937371254 0.034202147275209427;
	setAttr -s 9 ".koy[0:8]"  0 -0.99978005886077881 -0.99970346689224243 
		-0.99912071228027344 0.99494296312332153 0.99952214956283569 0.9996376633644104 
		0.99967420101165771 0.99941492080688477;
createNode animCurveTL -n "animCurveTL268";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.76074829734573723 1 0.79611829503802067 
		4 0.97854972464486822 6 0.79691724508630768 8 0.74408378776347706 9 0.7991332397823695 
		12 0.99104389032975682 14 0.80206985330252978 16 0.76074829734573723;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  1 0.0061216694302856922 0.901744544506073 
		0.0056865904480218887 0.41132301092147827 0.0053989039734005928 0.49359208345413208 
		0.005789563525468111 0.016131523996591568;
	setAttr -s 9 ".koy[0:8]"  0 0.99998128414154053 0.43226930499076843 
		-0.99998384714126587 0.91148966550827026 0.99998539686203003 0.86969351768493652 
		-0.99998325109481812 -0.99986988306045532;
createNode animCurveTL -n "animCurveTL269";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.053729210245175789 1 0.4433735870031601 
		4 1.9807573709736548 6 2.8882716833823272 8 3.8709852246642509 9 4.1189208397587569 
		12 5.4445991888157108 14 6.4731895740936709 16 7.3145430106562221;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  0.0017109591281041503 0.0006919115548953414 
		0.0006816915119998157 0.00070538214640691876 0.00081257900455966592 0.00084730621892958879 
		0.00070793373743072152 0.0007130337180569768 0.0007923734956420958;
	setAttr -s 9 ".koy[0:8]"  0.99999850988388062 0.9999997615814209 
		0.9999997615814209 0.9999997615814209 0.99999964237213135 0.99999964237213135 
		0.9999997615814209 0.9999997615814209 0.99999970197677612;
createNode animCurveTA -n "animCurveTA695";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 40.92583813237421 1 37.819222234911756 
		4 33.617223825318568 6 36.73136444082099 8 37.701303510959036 12 33.800939099744348 
		14 35.887886949585877 16 40.92583813237421;
	setAttr -s 8 ".kit[1:7]"  1 9 9 1 9 1 9;
	setAttr -s 8 ".kot[1:7]"  1 9 9 1 9 1 9;
	setAttr -s 8 ".kix[1:7]"  0.5932726263999939 0.99357360601425171 
		0.88188689947128296 0.99987977743148804 0.98770880699157715 0.65531361103057861 
		0.6041678786277771;
	setAttr -s 8 ".kiy[1:7]"  -0.80500161647796631 -0.11318810284137726 
		0.4714609682559967 -0.015507149510085583 -0.15630535781383514 0.75535690784454346 
		0.79685705900192261;
	setAttr -s 8 ".kox[1:7]"  0.59327244758605957 0.99357360601425171 
		0.88188689947128296 0.99987977743148804 0.98770880699157715 0.65531361103057861 
		0.6041678786277771;
	setAttr -s 8 ".koy[1:7]"  -0.80500173568725586 -0.11318810284137726 
		0.4714609682559967 -0.015507129952311516 -0.15630535781383514 0.75535690784454346 
		0.79685705900192261;
createNode animCurveTA -n "animCurveTA696";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 -4.6866710903011866 4 -7.5734518508549007 
		6 -5.193210561817768 8 -1.1905185208978397 9 1.0278884909660944 12 5.6468025803576056 
		14 5.6234041697971371 16 0;
	setAttr -s 9 ".kit[5:8]"  1 1 9 9;
	setAttr -s 9 ".kot[5:8]"  1 1 9 9;
	setAttr -s 9 ".kix[5:8]"  0.65695381164550781 0.94747096300125122 
		0.80416297912597656 0.56188774108886719;
	setAttr -s 9 ".kiy[5:8]"  0.75393086671829224 0.31984177231788635 
		-0.59440886974334717 -0.82721352577209473;
	setAttr -s 9 ".kox[5:8]"  0.65695381164550781 0.94747096300125122 
		0.80416297912597656 0.56188774108886719;
	setAttr -s 9 ".koy[5:8]"  0.75393086671829224 0.31984180212020874 
		-0.59440886974334717 -0.82721352577209473;
createNode animCurveTA -n "animCurveTA697";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 4 0 6 0 8 0 9 0 12 0 14 
		0 16 0;
createNode animCurveTA -n "animCurveTA698";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA699";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA700";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.0984482521620249;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA701";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 18.588300303494186;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA702";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA703";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA704";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -22.686733334985114;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA705";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA706";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA707";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0579251312417477e-005;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA708";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA709";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA710";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.0984482535121209;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA711";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 18.588300300216801;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA712";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA713";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA714";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -22.686733333057838;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA715";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA716";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA717";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0579251312417477e-005;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "hom_R_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "hom_R_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "hom_R_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "hom_L_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "hom_L_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "hom_L_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTL -n "hom_Right_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 -0.98071836797454492;
createNode animCurveTL -n "hom_Right_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 1.6432964864655397;
createNode animCurveTL -n "hom_Right_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 18.44400685050341;
createNode animCurveTA -n "hom_Right_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 5.4739599453216465;
createNode animCurveTA -n "hom_Right_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 8.5874521608419823;
createNode animCurveTA -n "hom_Right_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 74.754744621954103;
createNode animCurveTL -n "hom_Left_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0.76309120872911718;
createNode animCurveTL -n "hom_Left_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 1.6150490657878991;
createNode animCurveTL -n "hom_Left_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 18.685144500819998;
createNode animCurveTA -n "hom_Left_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 16.226511010665412;
createNode animCurveTA -n "hom_Left_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 -8.5139660854992858;
createNode animCurveTA -n "hom_Left_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 -68.213989601412422;
createNode animCurveTL -n "hom_Left_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTL -n "hom_Left_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTL -n "hom_Left_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 -1;
createNode animCurveTL -n "hom_Right_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 -0.10167917362943303;
createNode animCurveTL -n "hom_Right_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 -0.40762644910266188;
createNode animCurveTL -n "hom_Right_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 -0.93129112588482243;
createNode animCurveTA -n "animCurveTA736";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -10.587124207154311 4 52.63721983934397 
		8 15.886235737791942 12 -62.260510221512099 16 -10.587124207154311;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  0.11995810270309448 0.4998643696308136 
		0.13181766867637634 0.4998643696308136 0.14625115692615509;
	setAttr -s 5 ".koy[0:4]"  0.9927789568901062 0.86610370874404907 
		-0.99127399921417236 -0.86610370874404907 0.98924750089645386;
createNode animCurveTA -n "animCurveTA737";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -60.592711499848917 4 -24.480967171432489 
		8 -56.41261817934766 12 -16.667453278765464 16 -60.592711499848917;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  0.20696933567523956 0.9645531177520752 
		0.89033281803131104 0.9645531177520752 0.17134685814380646;
	setAttr -s 5 ".koy[0:4]"  0.97834742069244385 0.26388868689537048 
		0.45531025528907776 -0.26388868689537048 -0.98521077632904053;
createNode animCurveTA -n "animCurveTA738";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.15003680417244822 4 -64.344364641857069 
		8 -13.771905701213624 12 59.003404196651921 16 -0.15003680417244822;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  0.11817102879285812 0.74642246961593628 
		0.12292879074811935 0.74642246961593628 0.12808239459991455;
	setAttr -s 5 ".koy[0:4]"  -0.99299323558807373 -0.66547238826751709 
		0.99241548776626587 0.66547238826751709 -0.99176353216171265;
createNode animCurveTA -n "animCurveTA739";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 52.350458715167015 4 -67.112553653651233 
		8 13.448074510110578 12 36.153092751843296 16 52.350458715167015;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  0.063817776739597321 0.36556521058082581 
		0.14636361598968506 0.36556521058082581 0.42658069729804993;
	setAttr -s 5 ".koy[0:4]"  -0.99796158075332642 -0.93078571557998657 
		0.98923087120056152 0.93078571557998657 0.90444952249526978;
createNode animCurveTA -n "animCurveTA740";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -49.562109142955322 4 -24.617030314972098 
		8 -58.389715313611788 12 -49.808794428896285 16 -49.562109142955322;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  0.29282599687576294 0.86586970090866089 
		0.5185781717300415 0.86586970090866089 0.99947905540466309;
	setAttr -s 5 ".koy[0:4]"  0.95616573095321655 -0.50026959180831909 
		-0.85503023862838745 0.50026959180831909 0.032274208962917328;
createNode animCurveTA -n "animCurveTA741";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -64.608787988643826 4 73.822439837243778 
		8 -5.638634083958995 12 -42.097690970278627 16 -64.608787988643826;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  0.055101949721574783 0.25081318616867065 
		0.13067498803138733 0.25081318616867065 0.32136207818984985;
	setAttr -s 5 ".koy[0:4]"  0.99848073720932007 0.96803551912307739 
		-0.9914252758026123 -0.96803551912307739 -0.94695639610290527;
createNode animCurveTA -n "animCurveTA742";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 72.938873120018542 4 59.468287502559065 
		8 96.089558991115993 12 76.501698946427354 16 72.938873120018542;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  0.49331095814704895 0.55082768201828003 
		0.66772764921188354 0.55082768201828003 0.90628516674041748;
	setAttr -s 5 ".koy[0:4]"  -0.86985301971435547 0.83461898565292358 
		0.74440562725067139 -0.83461898565292358 -0.42266681790351868;
createNode animCurveTA -n "animCurveTA743";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 59.305463658789549 4 59.305463658789549 
		8 59.305463658789549 12 44.793203718970346 16 59.305463658789549;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  1 1 0.72506272792816162 1 0.46581348776817322;
	setAttr -s 5 ".koy[0:4]"  0 0 -0.68868285417556763 0 0.88488292694091797;
createNode animCurveTA -n "animCurveTA744";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -17.955810303398234 4 18.476235154862632 
		8 -11.178071753487012 12 -20.652533389258473 16 -17.955810303398234;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  0.20522667467594147 0.9140971302986145 
		0.36373069882392883 0.9140971302986145 0.94297283887863159;
	setAttr -s 5 ".koy[0:4]"  0.9787144660949707 0.405495285987854 
		-0.93150413036346436 -0.405495285987854 0.33286967873573303;
createNode animCurveTA -n "animCurveTA745";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 10.082003051124259 4 10.082003051124275 
		8 10.082003051124284 12 10.082003051124259 16 10.082003051124259;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA746";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -4.7201893288928654 4 -4.720189328892868 
		8 -4.720189328892868 12 -4.7201893288928645 16 -4.7201893288928654;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA747";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 20.127263792592359 4 -11.342548829337769 
		8 -11.342548829337769 12 -11.342548829337769 16 20.127263792592359;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  0.23590308427810669 0.43675446510314941 
		1 0.43675446510314941 0.2359030544757843;
	setAttr -s 5 ".koy[0:4]"  -0.97177660465240479 -0.89958077669143677 
		0 0.89958077669143677 0.97177660465240479;
createNode animCurveTA -n "animCurveTA748";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 11.615881410206432 4 11.615881410206432 
		8 11.615881410206432 12 11.615881410206432 16 11.615881410206432;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA749";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.32159281075535023 4 0.32159281075535068 
		8 0.32159281075535068 12 0.32159281075535068 16 0.32159281075535023;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "hom_Thumb_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 10.967667985987509;
createNode animCurveTA -n "hom_Thumb_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 53.910048648242878;
createNode animCurveTA -n "hom_Thumb_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 43.127820754253513;
createNode animCurveTA -n "animCurveTA753";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 8 0 12 0 16 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA754";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 8 0 12 0 16 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA755";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 86.382238158606057 4 101.15442879205187 
		8 92.916230826158568 12 80.723122903058737 16 86.382238158606057;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.80354344844818115;
	setAttr -s 5 ".kiy[4]"  0.59524613618850708;
	setAttr -s 5 ".kox[0:4]"  0.45935878157615662 0.91945189237594604 
		0.59888046979904175 0.91945189237594604 0.80354344844818115;
	setAttr -s 5 ".koy[0:4]"  0.88825082778930664 0.3932025134563446 
		-0.80083847045898438 -0.3932025134563446 0.59524613618850708;
createNode animCurveTA -n "animCurveTA756";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA757";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA758";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "hom_Thumb_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 26.541511232508363;
createNode animCurveTA -n "hom_Thumb_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 41.530156331423349;
createNode animCurveTA -n "hom_Thumb_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 52.545459146006962;
createNode animCurveTA -n "hom_Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 37.398953188221654;
createNode animCurveTA -n "hom_Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 69.699093005590768;
createNode animCurveTA -n "hom_Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 37.879253401261558;
createNode animCurveTA -n "animCurveTA765";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 8 0 12 0 16 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA766";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 8 0 12 0 16 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA767";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 95.284705327631698 4 81.622987204614219 
		8 67.961269739221621 12 54.299552523938722 16 95.284705327631698;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.18323923647403717;
	setAttr -s 5 ".kiy[4]"  0.98306834697723389;
	setAttr -s 5 ".kox[0:4]"  0.48806220293045044 0.48806223273277283 
		0.48806223273277283 0.48806223273277283 0.18323923647403717;
	setAttr -s 5 ".koy[0:4]"  -0.87280887365341187 -0.87280881404876709 
		-0.87280881404876709 0.87280881404876709 0.98306834697723389;
createNode animCurveTA -n "hom_Jaw_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "hom_Jaw_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "hom_Jaw_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA771";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 -8.7597363552835983 8 0 12 
		8.5462765971892694 16 0;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  0.65726929903030396 1 0.66183745861053467 
		1 0.66644436120986938;
	setAttr -s 5 ".koy[0:4]"  -0.75365579128265381 0 0.74964737892150879 
		0 -0.74555474519729614;
createNode animCurveTA -n "animCurveTA772";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 8 0 12 0 16 0;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA773";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 7.1280947740371996 4 -0.83175856160007333 
		8 7.9938158925748803 12 -0.23311028797652356 16 7.1280947740371996;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  0.69243645668029785 0.99839860200881958 
		0.99923330545425415 0.99839860200881958 0.72009831666946411;
	setAttr -s 5 ".koy[0:4]"  -0.72147887945175171 0.056570578366518021 
		0.039151396602392197 -0.056570578366518021 0.69387203454971313;
createNode animCurveTA -n "animCurveTA774";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 8 0 12 0 16 0;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA775";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 8 0 12 0 16 0;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA776";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 8 0 12 0 16 0;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA777";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 8 0 12 0 16 0;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA778";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 -9.2427148064678804 8 0 12 
		11.326972852810387 16 0;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  0.63708716630935669 1 0.59628713130950928 
		1 0.55915749073028564;
	setAttr -s 5 ".koy[0:4]"  -0.77079176902770996 0 0.80277121067047119 
		0 -0.82906144857406616;
createNode animCurveTA -n "animCurveTA779";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -18.722937869975635 4 -10.169145934926661 
		8 -19.240021564062019 12 -10.068052923795827 16 -18.722937869975635;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  0.66611874103546143 0.99942779541015625 
		0.99997812509536743 0.99942779541015625 0.66175663471221924;
	setAttr -s 5 ".koy[0:4]"  0.74584567546844482 -0.033823683857917786 
		0.0066163772717118263 0.033823683857917786 -0.74971872568130493;
createNode animCurveTA -n "animCurveTA780";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 8 0 12 0 16 0;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA781";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 8 0 12 0 16 0;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA782";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 8 0 12 0 16 0;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA783";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 8 0 12 0 16 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA784";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 8 0 12 0 16 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA785";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 85.281921116584812 4 90.838361755940937 
		8 84.366077179210023 12 75.82635508790618 16 85.281921116584812;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.62844902276992798;
	setAttr -s 5 ".kiy[4]"  0.77785080671310425;
	setAttr -s 5 ".kox[0:4]"  0.80871158838272095 0.99820834398269653 
		0.71330881118774414 0.99820834398269653 0.62844902276992798;
	setAttr -s 5 ".koy[0:4]"  0.58820539712905884 -0.059834450483322144 
		-0.70084989070892334 0.059834450483322144 0.77785080671310425;
createNode animCurveTA -n "hom_Thumb_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 22.82773238350271;
createNode animCurveTA -n "hom_Thumb_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 38.5783375093581;
createNode animCurveTA -n "hom_Thumb_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 45.467643381850564;
createNode animCurveTA -n "animCurveTA789";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 8 0 12 0 16 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA790";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 8 0 12 0 16 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA791";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 77.470348806333021 4 86.611733534295581 
		8 78.483027566383768 12 67.386024933077138 16 77.470348806333021;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.60384750366210938;
	setAttr -s 5 ".kiy[4]"  0.79709988832473755;
	setAttr -s 5 ".kox[0:4]"  0.64125460386276245 0.9978107213973999 
		0.62216675281524658 0.9978107213973999 0.60384750366210938;
	setAttr -s 5 ".koy[0:4]"  0.76732814311981201 0.066134564578533173 
		-0.78288471698760986 -0.066134564578533173 0.79709988832473755;
createNode clipLibrary -n "clipLibrary1";
	setAttr -s 150 ".cel[0].cev";
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
	setAttr ".o" 15;
select -ne :renderPartition;
	setAttr -s 40 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 40 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 4 ".u";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 4 ".tx";
select -ne :initialShadingGroup;
	setAttr -k on ".nds";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".fs" 1;
	setAttr ".ef" 10;
select -ne :defaultResolution;
	setAttr ".w" 720;
	setAttr ".h" 486;
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
connectAttr "hom_dashSource.st" "clipLibrary1.st[0]";
connectAttr "hom_dashSource.du" "clipLibrary1.du[0]";
connectAttr "hom_Extra_Attributes_translateX.a" "clipLibrary1.cel[0].cev[0].cevr"
		;
connectAttr "hom_Extra_Attributes_translateY.a" "clipLibrary1.cel[0].cev[1].cevr"
		;
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU49.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU50.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU51.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU52.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU53.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU54.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU55.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU56.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA680.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA681.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA682.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL252.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL253.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL254.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL255.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL256.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL257.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA683.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA684.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA685.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL258.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL259.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL260.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA686.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA687.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA688.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA689.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA690.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA691.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA692.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA693.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA694.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "hom_Right_Knee_Hoop_translateX.a" "clipLibrary1.cel[0].cev[38].cevr"
		;
connectAttr "hom_Right_Knee_Hoop_translateY.a" "clipLibrary1.cel[0].cev[39].cevr"
		;
connectAttr "hom_Right_Knee_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[40].cevr"
		;
connectAttr "hom_Left_Knee_Hoop_translateX.a" "clipLibrary1.cel[0].cev[41].cevr"
		;
connectAttr "hom_Left_Knee_Hoop_translateY.a" "clipLibrary1.cel[0].cev[42].cevr"
		;
connectAttr "hom_Left_Knee_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[43].cevr"
		;
connectAttr "animCurveTL267.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL268.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL269.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTA695.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTA696.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTA697.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTA698.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTA699.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTA700.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA701.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA702.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA703.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA704.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA705.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA706.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA707.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA708.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA709.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA710.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA711.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA712.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA713.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA714.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA715.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA716.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA717.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "hom_R_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[70].cevr"
		;
connectAttr "hom_R_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[71].cevr"
		;
connectAttr "hom_R_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[72].cevr"
		;
connectAttr "hom_L_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[73].cevr"
		;
connectAttr "hom_L_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[74].cevr"
		;
connectAttr "hom_L_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[75].cevr"
		;
connectAttr "hom_Right_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[88].cevr"
		;
connectAttr "hom_Right_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[89].cevr"
		;
connectAttr "hom_Right_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[90].cevr"
		;
connectAttr "hom_Right_Arm_World_rotateX.a" "clipLibrary1.cel[0].cev[91].cevr"
		;
connectAttr "hom_Right_Arm_World_rotateY.a" "clipLibrary1.cel[0].cev[92].cevr"
		;
connectAttr "hom_Right_Arm_World_rotateZ.a" "clipLibrary1.cel[0].cev[93].cevr"
		;
connectAttr "hom_Left_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[94].cevr"
		;
connectAttr "hom_Left_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[95].cevr"
		;
connectAttr "hom_Left_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[96].cevr"
		;
connectAttr "hom_Left_Arm_World_rotateX.a" "clipLibrary1.cel[0].cev[97].cevr"
		;
connectAttr "hom_Left_Arm_World_rotateY.a" "clipLibrary1.cel[0].cev[98].cevr"
		;
connectAttr "hom_Left_Arm_World_rotateZ.a" "clipLibrary1.cel[0].cev[99].cevr"
		;
connectAttr "hom_Left_Elbow_Hoop_translateX.a" "clipLibrary1.cel[0].cev[100].cevr"
		;
connectAttr "hom_Left_Elbow_Hoop_translateY.a" "clipLibrary1.cel[0].cev[101].cevr"
		;
connectAttr "hom_Left_Elbow_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[102].cevr"
		;
connectAttr "hom_Right_Elbow_Hoop_translateX.a" "clipLibrary1.cel[0].cev[103].cevr"
		;
connectAttr "hom_Right_Elbow_Hoop_translateY.a" "clipLibrary1.cel[0].cev[104].cevr"
		;
connectAttr "hom_Right_Elbow_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[105].cevr"
		;
connectAttr "animCurveTA736.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTA737.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTA738.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTA739.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTA740.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTA741.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA742.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA743.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA744.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA745.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA746.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA747.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA748.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA749.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "hom_Thumb_Base_L_rotateX.a" "clipLibrary1.cel[0].cev[120].cevr"
		;
connectAttr "hom_Thumb_Base_L_rotateY.a" "clipLibrary1.cel[0].cev[121].cevr"
		;
connectAttr "hom_Thumb_Base_L_rotateZ.a" "clipLibrary1.cel[0].cev[122].cevr"
		;
connectAttr "animCurveTA753.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA754.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA755.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA756.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA757.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA758.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "hom_Thumb_R_rotateX.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "hom_Thumb_R_rotateY.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "hom_Thumb_R_rotateZ.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "hom_Thumb_L_rotateX.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "hom_Thumb_L_rotateY.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "hom_Thumb_L_rotateZ.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA765.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA766.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA767.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "hom_Jaw_rotateX.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "hom_Jaw_rotateY.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "hom_Jaw_rotateZ.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA771.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA772.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA773.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA774.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA775.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA776.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA777.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA778.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA779.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA780.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA781.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA782.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA783.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA784.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA785.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "hom_Thumb_Base_R_rotateX.a" "clipLibrary1.cel[0].cev[156].cevr"
		;
connectAttr "hom_Thumb_Base_R_rotateY.a" "clipLibrary1.cel[0].cev[157].cevr"
		;
connectAttr "hom_Thumb_Base_R_rotateZ.a" "clipLibrary1.cel[0].cev[158].cevr"
		;
connectAttr "animCurveTA789.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA790.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA791.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
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
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[21].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[21].olnk";
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
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[38].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[39].llnk";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of hom_dash.ma
