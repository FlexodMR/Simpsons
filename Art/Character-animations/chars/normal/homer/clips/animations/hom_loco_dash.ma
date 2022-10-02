//Maya ASCII 4.0 scene
//Name: hom_loco_dash.ma
//Last modified: Sun, Jun 22, 2003 06:02:06 PM
requires maya "4.0";
requires "p3dmayaexp" "2.0.3.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "hom_loco_dashSource";
	setAttr ".ihi" 0;
	setAttr ".du" 16;
	setAttr ".ci" no;
createNode animCurveTL -n "Extra_Attributes_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 6 1 10 0 15 0 16 0;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 9;
createNode animCurveTL -n "Extra_Attributes_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 2 0 6 0 10 0 15 1 16 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 9;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.020522575400564586 1 0.0051507686450694649 
		2 -0.0046492913534254632 3 -0.01340793218666108 4 -0.022219111276793418 5 
		-0.032504511173611729 6 -0.040859732078691674 7 -0.044113446238328073 8 -0.043586081981139939 
		9 -0.034198489778383773 10 -0.027744175524592577 11 -0.021765299199408186 
		12 -0.01459359270365866 13 -0.0036992229425187699 14 0.0074225622580349065 
		15 0.014529827038541878 16 0.020522575400564586;
createNode animCurveTL -n "Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.13002830058539491 1 0.43519419904332673 
		2 0.74036010186011336 3 1.0455260084130611 4 1.3506919180794765 5 1.6558578302366647 
		6 1.9610237442619332 7 2.2661896595325861 8 2.5713555754259314 9 2.876521491319274 
		10 3.1816874065899201 11 3.4868533206151766 12 3.7920192327723501 13 4.0971851424387449 
		14 4.402351048991668 15 4.7075169518084259 16 5.0126828502663248;
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
		4 0.57683001716296189 6 0.12263042416664063 8 0.12263042416664063 9 0.12263042416664063 
		12 0.95341965692738639 14 0.39301308565082976 16 0.36956228769602462;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  0.0082586770877242088 0.0064327702857553959 
		0.010026884265244007 0.0029355543665587902 1 0.0016048975521698594 0.0061639859341084957 
		0.0022836567368358374 0.028416821733117104;
	setAttr -s 9 ".koy[0:8]"  -0.99996590614318848 0.99997931718826294 
		-0.99994975328445435 -0.99999570846557617 0 0.99999868869781494 0.99998098611831665 
		-0.99999737739562988 -0.99959617853164673;
createNode animCurveTL -n "animCurveTL257";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.34271856858817051 1 0.37931760405677162 
		4 2.5583891757408912 6 3.2406134681379148 8 3.7917625315549692 9 3.792 12 
		4.8857126097339121 14 6.1437938728082591 16 6.8988342239399323;
	setAttr -s 9 ".kit[4:8]"  3 3 9 9 9;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 3 3 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  0.00092331430641934276 0.00045959450653754175 
		0.00058248650748282671 0.0010810453677549958 1 1 0.00070867873728275299 0.00066232116660103202 
		0.00088295433670282364;
	setAttr -s 9 ".koy[0:8]"  0.99999958276748657 0.99999988079071045 
		0.99999982118606567 0.99999940395355225 0 0 0.9999997615814209 0.9999997615814209 
		0.99999958276748657;
createNode animCurveTA -n "animCurveTA683";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 68.750149689121002 1 54.899040703425321 
		4 -31.548014841396505 6 -0.14896661373414463 8 -0.14896661373414463 9 -0.14896661373414463 
		12 121.10670958049987 14 98.475032517983152 16 68.750149689121002;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  0.26584640145301819 0.075947284698486328 
		0.1709195077419281 0.23640505969524384 1 0.062878049910068512 0.096374578773975372 
		0.14438286423683167 0.12745432555675507;
	setAttr -s 9 ".koy[0:8]"  -0.9640154242515564 -0.99711185693740845 
		-0.98528498411178589 0.97165459394454956 0 0.99802124500274658 0.99534511566162109 
		-0.98952192068099976 -0.99184441566467285;
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
	setAttr -s 9 ".ktv[0:8]"  0 0.11742628606129618 1 0.28722043841617223 
		4 0.90054605689541023 6 0.77409521134530213 8 0.37217048919218793 9 0.27849434353650632 
		12 0.3921369344962512 14 0.13561851667074717 16 0.11742628606129618;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  1 0.001702589332126081 0.0034231734462082386 
		0.002523449482396245 0.0020177485421299934 0.066630303859710693 0.011664347723126411 
		0.0048535345122218132 0.036621086299419403;
	setAttr -s 9 ".koy[0:8]"  0 0.99999856948852539 0.99999415874481201 
		-0.9999968409538269 -0.99999797344207764 0.99777776002883911 -0.99993199110031128 
		-0.99998819828033447 -0.99932920932769775;
createNode animCurveTL -n "animCurveTL260";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.089378228552998554 1 -0.016609306115194487 
		4 1.2899542011655651 6 2.3553259601430243 8 3.6588762091821865 9 4.0511124371013061 
		12 5.9937927539211557 14 6.8973282267754517 16 7.1529341513685498;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  1 0.00096665066666901112 0.00070266093825921416 
		0.00056284380843862891 0.00058969674864783883 0.00057104101870208979 0.00058557273587211967 
		0.0011502759298309684 0.0026081716641783714;
	setAttr -s 9 ".koy[0:8]"  0 0.9999995231628418 0.9999997615814209 
		0.99999982118606567 0.99999982118606567 0.99999982118606567 0.99999982118606567 
		0.99999934434890747 0.9999966025352478;
createNode animCurveTA -n "animCurveTA686";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 40.335908328435607 4 111.66461118672031 
		6 127.61026578748944 8 66.506187575722308 9 37.956568696770837 12 -27.076362153617296 
		14 -13.120466155259251 16 0;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  1 0.068254582583904266 0.10876782983541489 
		0.16679976880550385 0.063777774572372437 0.081362485885620117 0.18377451598644257 
		0.27154296636581421 0.27952209115028381;
	setAttr -s 9 ".koy[0:8]"  0 0.99766790866851807 0.99406719207763672 
		-0.98599076271057129 -0.99796414375305176 -0.99668455123901367 -0.98296844959259033 
		0.96242630481719971 0.96013927459716797;
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
	setAttr ".ktv[0]"  16 0;
createNode animCurveTL -n "hom_Right_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTL -n "hom_Right_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 1;
createNode animCurveTL -n "hom_Left_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTL -n "hom_Left_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTL -n "hom_Left_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 1;
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
	setAttr -s 2 ".ktv[0:1]"  0 0.1933602448684654 16 7.4541740452795127;
createNode animCurveTA -n "animCurveTA695";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 34.250065109074761 1 31.1434492116123 
		4 26.941450802019112 6 30.055591417521537 8 31.025530487659584 12 27.125166076444891 
		14 29.212113926286424 16 34.250065109074761;
	setAttr -s 8 ".kit[0:7]"  3 1 9 9 1 9 1 
		3;
	setAttr -s 8 ".kot[0:7]"  3 1 9 9 1 9 1 
		3;
	setAttr -s 8 ".kix[1:7]"  0.5932726263999939 0.99357360601425171 
		0.88188689947128296 0.99987977743148804 0.98770880699157715 0.65531361103057861 
		1;
	setAttr -s 8 ".kiy[1:7]"  -0.80500161647796631 -0.11318810284137726 
		0.4714609682559967 -0.015507149510085583 -0.15630535781383514 0.75535690784454346 
		0;
	setAttr -s 8 ".kox[1:7]"  0.59327244758605957 0.99357360601425171 
		0.88188689947128296 0.99987977743148804 0.98770880699157715 0.65531361103057861 
		1;
	setAttr -s 8 ".koy[1:7]"  -0.80500173568725586 -0.11318810284137726 
		0.4714609682559967 -0.015507129952311516 -0.15630535781383514 0.75535690784454346 
		0;
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
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "hom_R_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "hom_R_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "hom_L_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "hom_L_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "hom_L_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTL -n "hom_Right_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 -0.98071836797454492;
createNode animCurveTL -n "hom_Right_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 1.6432964864655397;
createNode animCurveTL -n "hom_Right_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 18.44400685050341;
createNode animCurveTA -n "hom_Right_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 5.4739599453216465;
createNode animCurveTA -n "hom_Right_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 8.5874521608419823;
createNode animCurveTA -n "hom_Right_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 74.754744621954103;
createNode animCurveTL -n "hom_Left_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0.76309120872911718;
createNode animCurveTL -n "hom_Left_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 1.6150490657878991;
createNode animCurveTL -n "hom_Left_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 18.685144500819998;
createNode animCurveTA -n "hom_Left_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 16.226511010665412;
createNode animCurveTA -n "hom_Left_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 -8.5139660854992858;
createNode animCurveTA -n "hom_Left_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 -68.213989601412422;
createNode animCurveTL -n "hom_Left_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTL -n "hom_Left_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTL -n "hom_Left_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 -1;
createNode animCurveTL -n "hom_Right_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 -0.10167917362943303;
createNode animCurveTL -n "hom_Right_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 -0.40762644910266188;
createNode animCurveTL -n "hom_Right_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 -0.93129112588482243;
createNode animCurveTA -n "animCurveTA736";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -10.587124207154311 4 56.467497594862365 
		8 15.886235737791942 12 -55.457705887720671 16 -10.587124207154311;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 1;
	setAttr -s 5 ".kix[0:4]"  0.070988789200782776 0.4998643696308136 
		0.13525526225566864 0.4998643696308136 0.070437498390674591;
	setAttr -s 5 ".kiy[0:4]"  0.99747711420059204 0.86610370874404907 
		-0.9908108115196228 -0.86610370874404907 0.9975162148475647;
	setAttr -s 5 ".kox[0:4]"  0.073602244257926941 0.4998643696308136 
		0.13525526225566864 0.4998643696308136 0.070437490940093994;
	setAttr -s 5 ".koy[0:4]"  0.99728769063949585 0.86610370874404907 
		-0.9908108115196228 -0.86610370874404907 0.9975162148475647;
createNode animCurveTA -n "animCurveTA737";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -60.592711499848917 4 -1.1308348945435771 
		8 -56.41261817934766 12 23.304905587798359 16 -60.592711499848917;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA738";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.15003680417244822 4 -81.152393255827349 
		8 -13.771905701213624 12 51.313136460519118 16 -0.15003680417244822;
	setAttr -s 5 ".kit[1:4]"  9 1 9 1;
	setAttr -s 5 ".kot[1:4]"  9 1 9 1;
	setAttr -s 5 ".kix[0:4]"  0.073354043066501617 0.74642246961593628 
		0.068817988038063049 0.74642246961593628 0.088923737406730652;
	setAttr -s 5 ".kiy[0:4]"  -0.99730598926544189 -0.66547238826751709 
		0.99762922525405884 0.66547238826751709 -0.99603843688964844;
	setAttr -s 5 ".kox[0:4]"  0.073354035615921021 0.74642246961593628 
		0.068817980587482452 0.74642246961593628 0.088923744857311249;
	setAttr -s 5 ".koy[0:4]"  -0.99730598926544189 -0.66547238826751709 
		0.99762922525405884 0.66547238826751709 -0.99603843688964844;
createNode animCurveTA -n "animCurveTA739";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 52.350458715167015 4 -49.792129494519102 
		8 13.448074510110578 12 54.674246977929137 16 52.350458715167015;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  0.063817776739597321 0.36556521058082581 
		0.14471675455570221 0.36556521058082581 0.95671772956848145;
	setAttr -s 5 ".koy[0:4]"  -0.99796158075332642 -0.93078571557998657 
		0.98947310447692871 0.93078571557998657 -0.29101750254631042;
createNode animCurveTA -n "animCurveTA740";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -49.562109142955322 4 14.079794110186308 
		8 -58.389715313611788 12 -25.688283182436425 16 -49.562109142955322;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  0.29282599687576294 0.86586970090866089 
		0.35864084959030151 0.86586970090866089 0.3047688901424408;
	setAttr -s 5 ".koy[0:4]"  0.95616573095321655 -0.50026959180831909 
		-0.93347561359405518 0.50026959180831909 -0.95242631435394287;
createNode animCurveTA -n "animCurveTA741";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -64.608787988643826 4 79.774382128125865 
		8 -5.638634083958995 12 -71.295180031998854 16 -64.608787988643826;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  0.055101949721574783 0.25081318616867065 
		0.10062467306852341 0.25081318616867065 0.75248467922210693;
	setAttr -s 5 ".koy[0:4]"  0.99848073720932007 0.96803551912307739 
		-0.99492448568344116 -0.96803551912307739 0.65860980749130249;
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
	setAttr ".ktv[0]"  16 -36.395769786587771;
createNode animCurveTA -n "hom_Thumb_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 18.342285468903658;
createNode animCurveTA -n "hom_Thumb_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 2.8704047553865459;
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
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "hom_Thumb_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "hom_Thumb_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 1.6227804450181558;
createNode animCurveTA -n "hom_Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "hom_Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "hom_Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 1.6227804450181558;
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
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "hom_Jaw_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "hom_Jaw_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA771";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 -22.800685905520663 8 0 12 
		24.361268632505329 16 0;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  0.65726929903030396 1 0.30819633603096008 
		1 0.29922187328338623;
	setAttr -s 5 ".koy[0:4]"  -0.75365579128265381 0 0.95132279396057129 
		0 -0.95418357849121094;
createNode animCurveTA -n "animCurveTA772";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 5.9058290234793844 8 0 12 
		-5.7869679913819736 16 0;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  1 1 0.79413324594497681 1 0.79711645841598511;
	setAttr -s 5 ".koy[0:4]"  0 0 -0.60774368047714233 0 0.60382562875747681;
createNode animCurveTA -n "animCurveTA773";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 7.1280947740371996 4 -3.3084859491349863 
		8 7.9938158925748803 12 -0.23311028797652356 16 7.1280947740371996;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  0.69243645668029785 0.99839860200881958 
		0.98033809661865234 0.99839860200881958 0.72009831666946411;
	setAttr -s 5 ".koy[0:4]"  -0.72147887945175171 0.056570578366518021 
		0.19732525944709778 -0.056570578366518021 0.69387203454971313;
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
	setAttr -s 5 ".ktv[0:4]"  0 0 4 -8.0170235321776051 8 0 12 
		3.8237354012966853 16 0;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  1 1 0.79042428731918335 1 0.89423900842666626;
	setAttr -s 5 ".koy[0:4]"  0 0 0.6125597357749939 0 -0.44758975505828857;
createNode animCurveTA -n "animCurveTA778";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 -27.814617320387619 8 0 12 
		27.060404107631115 16 0;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  0.63708716630935669 1 0.26822748780250549 
		1 0.27169123291969299;
	setAttr -s 5 ".koy[0:4]"  -0.77079176902770996 0 0.96335560083389282 
		0 -0.96238446235656738;
createNode animCurveTA -n "animCurveTA779";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -18.722937869975635 4 -10.169145934926661 
		8 -19.240021564062019 12 -10.068052923795873 16 -18.722937869975635;
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
	setAttr ".ktv[0]"  16 -36.395769786587771;
createNode animCurveTA -n "hom_Thumb_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 18.342285468903658;
createNode animCurveTA -n "hom_Thumb_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 2.8704047553865459;
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
	setAttr ".o" 16;
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
connectAttr "hom_loco_dashSource.st" "clipLibrary1.st[0]";
connectAttr "hom_loco_dashSource.du" "clipLibrary1.du[0]";
connectAttr "Extra_Attributes_translateX.a" "clipLibrary1.cel[0].cev[0].cevr"
		;
connectAttr "Extra_Attributes_translateY.a" "clipLibrary1.cel[0].cev[1].cevr"
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
// End of hom_loco_dash.ma
