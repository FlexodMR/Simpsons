//Maya ASCII 4.0 scene
//Name: mrg-m_turn_180_CCW.ma
//Last modified: Wed, Jun 12, 2002 04:07:49 PM
requires maya "4.0";
requires "p3dSimpleShader" "17.1";
requires "p3dmayaexp" "17.3";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mrg_turn_180_CCW";
	setAttr ".ihi" 0;
	setAttr ".du" 40;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL165";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 -0.025047981577281875 1 -0.020170555786114278 
		2 -0.015293130035183596 3 -0.013076118337530902 4 -0.013076118337530902 5 
		-0.013076118337530902 6 -0.013076118337530902 7 -0.013076118337530902 8 -0.013076118337530902 
		9 -0.013076118337530902 10 -0.013076118337530902 11 -0.013076118337530902 
		12 -0.013076118337530902 13 -0.013076118337530902 14 -0.0055423942300049604 
		15 0.0084488076839717933 16 0.01598253179149773 17 0.01598253179149773 18 
		0.01598253179149773 19 0.01598253179149773 20 0.01598253179149773 21 0.01598253179149773 
		22 0.01598253179149773 23 0.01598253179149773 24 0.01598253179149773 25 0.01598253179149773 
		26 0.01598253179149773 27 0.01598253179149773 28 0.0074294194049236107 29 
		-0.0084549321701426101 30 -0.017008044556716728 31 -0.017008044556716728 
		32 -0.017008044556716728 33 -0.017008044556716728 34 -0.017008044556716728 
		35 -0.017008044556716728 36 -0.017008044556716728 37 -0.017008044556716728 
		38 -0.017008044556716728 39 -0.017008044556716728 40 -0.017008044556716728;
createNode animCurveTL -n "animCurveTL168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0;
createNode animCurveTL -n "animCurveTL169";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 0.044098318659601045 1 0.11531577289346336 
		2 0.1865332281676565 3 0.25329286619237068 4 0.31149639246739963 5 0.36524210341416014 
		6 0.42236706712527722 7 0.48488782776810702 8 0.54940501708939848 9 0.61563183455086556 
		10 0.68328147961422214 11 0.75475474009595855 12 0.8289274307722897 13 0.90022529154451536 
		14 0.9673319659733125 15 1.0315638110526204 16 1.0912956368336315 17 1.1446755536308186 
		18 1.193555453962047 19 1.2418658211835985 20 1.2823916248017384 21 1.3379744494920887 
		22 1.4308319973435124 23 1.5376430911749912 24 1.6391148181920219 25 1.723120877532748 
		26 1.8017875672092014 27 1.8922008727377111 28 2.0166426937253012 29 2.1528311191140226 
		30 2.2510064184227394 31 2.3033409349388481 32 2.3345887670339303 33 2.3438628168531395 
		34 2.3302759865416296 35 2.2753325304174044 36 2.1802731946358418 37 2.0738156190981609 
		38 1.9617329220675692 39 1.8382519876870094 40 1.7147711046773022;
createNode animCurveTA -n "animCurveTA513";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 -59.999995946807275 32 -120.00000405319273 
		33 -180 34 -180 35 -180 36 -180 37 -180 38 -180 39 -180 40 -180;
createNode animCurveTU -n "animCurveTU33";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU34";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU35";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU36";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU37";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 21 1 40 1;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU38";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 21 1 40 1;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU39";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU40";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA514";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA515";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA516";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.12458561027363559 3 -0.12458561027363559 
		6 -0.12458561027363559 10 -0.11142856339262874 13 -0.020726109835854708 16 
		-0.17543748355822883 19 -0.1706002626220878 21 -0.1706002626220878 24 -0.0074886359852457405 
		27 0.11649373023719939 30 0.11896723859664884 34 0.11896723859664884 37 0.11896723859664884 
		40 0.11896723859664884;
	setAttr -s 14 ".kit[1:13]"  3 3 9 9 9 9 9 
		9 9 3 9 9 9;
	setAttr -s 14 ".kot[1:13]"  3 3 9 9 9 9 9 
		9 9 3 9 9 9;
createNode animCurveTL -n "animCurveTL174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.1083286823262673 3 0.1083286823262673 
		6 0.21888164372117039 10 0.18457850275164817 13 0.35804228677109046 16 0.39931991351790558 
		19 0.370320233367264 21 0.24714837689064545 24 0.35632024461967954 27 0.38271743560658017 
		30 0.313039546959967 34 0.50512353198237248 37 0.11455276243681445 40 0.11455276243681445;
	setAttr -s 14 ".kit[6:13]"  3 9 9 9 9 9 3 
		3;
	setAttr -s 14 ".kot[6:13]"  3 9 9 9 9 9 3 
		3;
createNode animCurveTL -n "animCurveTL175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.1007292612778109 3 -0.1007292612778109 
		6 -0.041767681867195913 10 0.60457822192776245 13 0.8582466783741769 16 1.1925024291626034 
		19 1.5601049752538632 21 1.775655724087944 24 1.8404636426589807 27 2.2679607850695755 
		30 2.4434264206758578 34 2.6696438212512592 37 2.4178152226728709 40 2.4178152226728709;
	setAttr -s 14 ".kit[12:13]"  3 3;
	setAttr -s 14 ".kot[12:13]"  3 3;
createNode animCurveTA -n "animCurveTA517";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 3 0 6 47.959999472492001 10 
		122.07797315586821 13 118.77139458418137 16 159.77835630992985 19 -57.484317270278609 
		21 -57.484317270278609 24 145.41672003157754 27 188.82344686605597 30 188.30737680116607 
		34 192.29090717288003 37 157.89493230153647 40 179.61452085749247;
	setAttr -s 14 ".kit[6:13]"  3 3 9 9 9 9 9 
		9;
	setAttr -s 14 ".kot[6:13]"  3 3 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA518";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 3 0 6 -62.675988401183815 10 
		-63.774034247861252 13 -64.51381598720549 16 -68.809929082541984 19 -84.077104372670192 
		21 -84.077104372670192 24 -62.95377647304219 27 -2.4600433791670278 30 3.021633604009013 
		34 3.0216336040090255 37 3.0216336040090388 40 3.0216336040090472;
	setAttr -s 14 ".kit[1:13]"  3 9 9 9 9 9 9 
		9 9 3 9 3 3;
	setAttr -s 14 ".kot[1:13]"  3 9 9 9 9 9 9 
		9 9 3 9 3 3;
createNode animCurveTA -n "animCurveTA519";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 3 0 6 -8.3391385277421968 10 
		-99.339346572583565 13 -68.979645703210949 16 -128.1995018039413 19 100.90883730544341 
		21 100.90883730544341 24 -107.08922989821508 27 -177.86358163066305 30 -177.39225314877319 
		34 -177.39225314877319 37 -177.39225314877319 40 -177.39225314877319;
	setAttr -s 14 ".kit[6:13]"  3 3 9 3 3 9 9 
		9;
	setAttr -s 14 ".kot[6:13]"  3 3 9 3 3 9 9 
		9;
createNode animCurveTL -n "animCurveTL176";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.090256021184643917 3 0.13179464852413217 
		6 0.13179464852413217 10 0.13179464852413217 13 0.13179464852413217 16 0.016776586649580517 
		19 0.016776586649580517 21 0.016776586649580517 24 0.016776586649580517 27 
		0.016776586649580517 30 -0.12586775732964958 34 -0.12586775732964958 37 -0.12586775732964958 
		40 -0.12586775732964958;
	setAttr -s 14 ".kit[0:13]"  9 3 3 3 3 3 3 
		3 3 3 3 3 3 3;
	setAttr -s 14 ".kot[0:13]"  9 3 3 3 3 3 3 
		3 3 3 3 3 3 3;
createNode animCurveTL -n "animCurveTL177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.41649668871748402 3 0.22681925800720315 
		6 0.13100669146495408 10 0.13100669146495408 13 0.13100669146495408 16 0.65049672599349384 
		19 0.26338517706697845 21 0.11381935134537048 24 0.22819321807365914 27 0.59770878750351442 
		30 0.10502136159704009 34 0.10502136159704009 37 0.10502136159704009 40 0.39955013863139527;
	setAttr -s 14 ".kit[2:13]"  3 3 3 9 9 9 9 
		9 3 3 3 9;
	setAttr -s 14 ".kot[2:13]"  3 3 3 9 9 9 9 
		9 3 3 3 9;
createNode animCurveTL -n "animCurveTL178";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.38624381797413698 3 0.37219983308268623 
		6 0.54539947260136745 10 1.0078934273357099 13 1.0078934273357099 16 1.593523266250646 
		19 1.8662609484488712 21 1.8970539125680252 24 1.9454428561838386 27 2.6052920873085803 
		30 3.0935805183408891 34 3.0935805183408891 37 3.0935805183408891 40 2.8630797363140035;
	setAttr -s 14 ".kit[0:13]"  9 9 9 3 3 9 3 
		3 3 9 3 3 3 9;
	setAttr -s 14 ".kot[0:13]"  9 9 9 3 3 9 3 
		3 3 9 3 3 3 9;
createNode animCurveTA -n "animCurveTA520";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 68.750149689121002 3 31.909721895862109 
		6 26.138808358220519 10 26.138808358220519 13 -89.291811353897629 16 -87.724871705424874 
		19 -176.93803764503116 21 -173.5905478454934 24 -288.72361177768408 27 -177.10614076976458 
		30 -178.83657457446807 34 -178.83657457446807 37 -178.83657457446807 40 -97.218525774219117;
	setAttr -s 14 ".kit[0:13]"  9 3 3 3 3 3 9 
		9 9 3 3 3 3 9;
	setAttr -s 14 ".kot[0:13]"  9 3 3 3 3 3 9 
		9 9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA521";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 3 -26.38567883267924 6 -88.167062952465002 
		10 -88.167062952465002 13 -109.78082414628376 16 -96.048331101674435 19 -98.055608076379912 
		21 -94.887406473251332 24 -74.46000204893393 27 -38.865035425657837 30 -4.464178598353385 
		34 -4.464178598353385 37 -4.464178598353385 40 -4.4641785983533788;
	setAttr -s 14 ".kit[2:13]"  3 3 9 9 9 9 9 
		9 3 3 3 9;
	setAttr -s 14 ".kot[2:13]"  3 3 9 9 9 9 9 
		9 3 3 3 9;
createNode animCurveTA -n "animCurveTA522";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 3 1.2228059063960608 6 -15.027793722569745 
		10 -15.027793722569745 13 138.88990411199038 16 137.29383263576713 19 235.4830872166041 
		21 175.94669731161758 24 325.24661408922776 27 200.90507010897122 30 181.75136366795408 
		34 181.75136366795408 37 181.75136366795408 40 181.75136366795272;
	setAttr -s 14 ".kit[4:13]"  3 3 9 9 9 9 3 
		3 3 9;
	setAttr -s 14 ".kot[4:13]"  3 3 9 9 9 9 3 
		3 3 9;
createNode animCurveTA -n "animCurveTA523";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA524";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA525";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA526";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA527";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA528";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA529";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA530";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA531";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA532";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA533";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA534";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 3 0 6 0 10 0 13 0 16 0 19 0 
		21 0 24 0 27 0 30 0 34 0 37 0 40 0;
createNode animCurveTL -n "animCurveTL180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 3 0 6 0 10 0 13 0 16 0 19 0 
		21 0 24 0 27 0 30 0 34 0 37 0 40 0;
createNode animCurveTL -n "animCurveTL181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1.1269999742507935 3 1.1269999742507935 
		6 1.1269999742507935 10 1.1269999742507935 13 1.1269999742507935 16 1.1269999742507935 
		19 1.1269999742507935 21 1.1269999742507935 24 1.1269999742507935 27 1.1269999742507935 
		30 1.1269999742507935 34 1.1269999742507935 37 1.1269999742507935 40 1.1269999742507935;
createNode animCurveTL -n "animCurveTL182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 3 0 6 0 10 0 13 0 16 0 19 0 
		21 0 24 0 27 0 30 0 34 0 37 0 40 0;
createNode animCurveTL -n "animCurveTL183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 3 0 6 0 10 0 13 0 16 0 19 0 
		21 0 24 0 27 0 30 0 34 0 37 0 40 0;
createNode animCurveTL -n "animCurveTL184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1.1269999742507935 3 1.1269999742507935 
		6 1.1269999742507935 10 1.1269999742507935 13 1.1269999742507935 16 1.1269999742507935 
		19 1.1269999742507935 21 1.1269999742507935 24 1.1269999742507935 27 1.1269999742507935 
		30 1.1269999742507935 34 1.1269999742507935 37 1.1269999742507935 40 1.1269999742507935;
createNode animCurveTL -n "animCurveTL185";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.034394188484190708 3 -0.017955238323495479 
		6 -0.017955238323495479 10 -0.017955238323495479 13 -0.017955238323495479 
		16 0.021946128042106113 19 0.021946128042106113 21 0.021946128042106113 24 
		0.021946128042106113 27 0.021946128042106113 30 -0.023354292577482352 34 
		-0.023354292577482352 37 -0.023354292577482352 40 -0.023354292577482352;
	setAttr -s 14 ".kit[0:13]"  9 3 3 3 3 3 3 
		3 3 3 3 9 3 3;
	setAttr -s 14 ".kot[0:13]"  9 3 3 3 3 3 3 
		3 3 3 3 9 3 3;
createNode animCurveTL -n "animCurveTL186";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.93793428325425909 3 0.88126399648830411 
		6 0.87389379906197728 10 0.76315580990023324 13 0.9781177888612651 16 1.1668238386318239 
		19 0.94687409492357688 21 0.72252535634116455 24 0.99086404366522773 27 1.2108137873734759 
		30 0.87209118206277392 34 0.8083758102429488 37 0.89770238006576264 40 0.97453597407472503;
createNode animCurveTL -n "animCurveTL187";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.060552818562828577 3 0.34780457477750459 
		6 0.57996579370680101 10 0.93823575864185482 13 1.2361282788430388 16 1.498493110489741 
		19 1.7052458695754928 21 1.8372157158004416 24 2.2507212339719436 27 2.5982418290309734 
		30 3.0909292549374459 34 3.1997768464501419 37 2.8476228739090668 40 2.354607312351559;
createNode animCurveTA -n "animCurveTA535";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 20.950825280283908 3 15.349677643248171 
		6 30.169446740768123 10 80.12497127524783 13 105.43047728023384 16 122.31319304398365 
		19 156.62560666525022 21 160.89572413304148 24 82.97028277364727 27 152.72299856477665 
		30 155.73124533702423 34 140.36919096604097 37 169.84619524333041 40 191.88902378149081;
createNode animCurveTA -n "animCurveTA536";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 3 -23.166088452315925 6 -53.457750408984623 
		10 -63.574420493965519 13 -63.574420493965519 16 -80.623313997684633 19 -80.484720306817266 
		21 -84.270948840856519 24 -71.657192661873168 27 -30.767961152310516 30 7.9074936523545292 
		34 3.7752514602651357 37 3.7752514602651384 40 2.1117742258726482;
createNode animCurveTA -n "animCurveTA537";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 3 -5.441459534104844 6 -39.65846631022734 
		10 -85.123283310714939 13 -109.31049631922421 16 -122.97054123501641 19 -156.95407165779892 
		21 -165.49137572544507 24 -85.907577196964823 27 -166.93617210523931 30 -180.49810396834687 
		34 -182.2310337496256 37 -182.23103374962491 40 -179.60887818532424;
createNode animCurveTA -n "animCurveTA538";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA539";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA540";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 4.0984482535121209 21 4.0984482535121209 
		40 4.0984482535121209;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA541";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 18.588300300216801 21 18.588300300216801 
		40 18.588300300216801;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA542";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA543";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA544";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -22.686733333057838 21 -22.686733333057838 
		40 -22.686733333057838;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA545";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA546";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA547";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.0579251312417477e-005 21 1.0579251312417477e-005 
		40 1.0579251312417477e-005;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA548";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA549";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA550";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 4.0984482521620249 21 4.0984482521620249 
		40 4.0984482521620249;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA551";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 18.588300303494186 21 18.588300303494186 
		40 18.588300303494186;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA552";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA553";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA554";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -22.686733334985114 21 -22.686733334985114 
		40 -22.686733334985114;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA555";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA556";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA557";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.0579251312417477e-005 21 1.0579251312417477e-005 
		40 1.0579251312417477e-005;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA558";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA559";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA560";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.0579251312417477e-005 21 1.0579251312417477e-005 
		40 1.0579251312417477e-005;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA561";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA562";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA563";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -53.481021487645641 3 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[1:2]"  0.10652335733175278 1;
	setAttr -s 3 ".kiy[1:2]"  0.99431014060974121 0;
	setAttr -s 3 ".kox[0:2]"  0.10652335733175278 0.81920689344406128 
		1;
	setAttr -s 3 ".koy[0:2]"  0.99431014060974121 0.57349807024002075 
		0;
createNode animCurveTL -n "animCurveTL188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.99214413619678865 21 -0.99214413619678865 
		40 -0.99214413619678865;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.033851474715545553 21 -0.033851474715545553 
		40 -0.033851474715545553;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL190";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.0272011762672867 21 -0.0272011762672867 
		40 -0.0272011762672867;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA564";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA565";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA566";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL191";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.99214331096561381 21 0.99214331096561381 
		40 0.99214331096561381;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL192";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.033841737269357866 21 -0.033841737269357866 
		40 -0.033841737269357866;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL193";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.027201153963313806 21 -0.027201153963313806 
		40 -0.027201153963313806;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA567";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA568";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA569";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL194";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.3705978542308779 21 -1.3705978542308779 
		40 -1.3705978542308779;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL195";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.1618621235956237 21 2.1618621235956237 
		40 2.1618621235956237;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL196";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.12044250833667494 21 -0.12044250833667494 
		40 -0.12044250833667494;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA570";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA571";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA572";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL197";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.3705977767760478 21 1.3705977767760478 
		40 1.3705977767760478;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL198";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.1618658070195953 21 2.1618658070195953 
		40 2.1618658070195953;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL199";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.12044246479037771 21 -0.12044246479037771 
		40 -0.12044246479037771;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA573";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA574";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA575";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 21 -1 40 -1;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 21 -1 40 -1;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA576";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 17.196782419487917 4 -4.9170173959672008 
		10 -9.4867351949733134 16 -3.5957392647064115 21 -5.2336277762435328 27 1.3078411552558051 
		32 -2.5332080837839279 36 0.14841802751149644 40 17.196782419487917;
createNode animCurveTA -n "animCurveTA577";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -60.10188422410716 4 -28.174844579466249 
		10 -24.976134763192555 16 -26.173751399486886 21 13.389723792050374 27 -32.701118937730648 
		32 -7.5989598183700151 36 -9.469836935112367 40 -60.10188422410716;
createNode animCurveTA -n "animCurveTA578";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -21.001041665835174 4 -0.58017524561358724 
		10 -24.940496749796534 16 -38.464042720294778 21 -24.688988170466263 27 -52.940091162753973 
		32 -28.745763986735138 36 -50.021426060853791 40 -21.001041665835174;
createNode animCurveTA -n "animCurveTA579";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 4.7921462321675188 4 -0.1886760904438384 
		10 13.139111809350432 16 -9.2736586629381978 21 9.8347501448457493 27 -7.7016653081401758 
		32 7.8160710957447801 36 10.155092763840297 40 4.7921462321675188;
createNode animCurveTA -n "animCurveTA580";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -53.856694228597611 4 -44.023526752296853 
		10 -48.447181009168041 16 -17.611491588948546 21 -22.373523366371138 27 -12.498233745498291 
		32 -2.798642221175808 36 -14.665119524920673 40 -53.856694228597611;
createNode animCurveTA -n "animCurveTA581";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1.0985293669977847 4 6.8586834007142929 
		10 -22.473917867681173 16 -0.73229496832861041 21 0.31840514248710444 27 
		-42.269726494636046 32 -7.2059682543390124 36 17.145222834358151 40 -1.0985293669977847;
createNode animCurveTA -n "animCurveTA582";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 59.305463658789549 4 89.624032692539288 
		10 40.135448553966938 16 21.214334359166866 21 21.214334359166866 27 64.350115819888757 
		32 64.350115819888757 36 23.70793005662993 40 59.305463658789549;
createNode animCurveTA -n "animCurveTA583";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 59.468287502559065 4 82.840498793046507 
		10 82.840498793046507 16 82.840498793046507 21 99.781273006467785 27 136.41306000149279 
		32 49.612702821956255 36 18.024094338550015 40 59.468287502559065;
createNode animCurveTA -n "animCurveTA584";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 20.127263792592359 4 20.127263792592359 
		10 20.127263792592359 16 20.127263792592359 21 -22.046674587970738 27 12.828480364441727 
		32 12.828480364441727 36 12.828480364441727 40 20.127263792592359;
createNode animCurveTA -n "animCurveTA585";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 11.615881410206432 4 11.615881410206432 
		10 11.615881410206432 16 11.615881410206432 21 11.615881410206425 27 8.6072704726791009 
		32 8.6072704726791009 36 8.6072704726791009 40 11.615881410206432;
createNode animCurveTA -n "animCurveTA586";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.32159281075535023 4 0.32159281075535023 
		10 0.32159281075535023 16 0.32159281075535023 21 0.3215928107553529 27 15.241183889097105 
		32 15.241183889097105 36 15.241183889097105 40 0.32159281075535023;
createNode animCurveTA -n "animCurveTA587";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 18.476235154862632 4 18.476235154862632 
		10 18.476235154862632 16 18.476235154862632 21 -38.703651145554787 27 -56.034404799287891 
		32 -7.9816910001932158 36 -7.9816910001932158 40 18.476235154862632;
createNode animCurveTA -n "animCurveTA588";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 10.082003051124275 4 10.082003051124275 
		10 10.082003051124275 16 10.082003051124275 21 8.7473506811616275 27 13.848305688985613 
		32 -0.091038169355441401 36 -0.091038169355441401 40 10.082003051124275;
createNode animCurveTA -n "animCurveTA589";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -4.720189328892868 4 -4.720189328892868 
		10 -4.720189328892868 16 -4.720189328892868 21 -16.731910668692382 27 12.961310939581329 
		32 -9.2547012803365849 36 -9.2547012803365849 40 -4.720189328892868;
createNode animCurveTA -n "animCurveTA590";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.043585476863096786 4 -0.043585476863096786 
		10 -0.043585476863096786 16 -0.043585476863096786 21 -0.043585476863096786 
		27 -0.043585476863096786 32 -0.043585476863096786 36 -0.043585476863096786 
		40 -0.043585476863096786;
createNode animCurveTA -n "animCurveTA591";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 28.449471067828945 4 28.449471067828945 
		10 28.449471067828945 16 28.449471067828945 21 28.449471067828945 27 28.449471067828945 
		32 28.449471067828945 36 28.449471067828945 40 28.449471067828945;
createNode animCurveTA -n "animCurveTA592";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 15.739680343212562 4 15.739680343212562 
		10 15.739680343212562 16 15.739680343212562 21 15.739680343212562 27 15.739680343212562 
		32 15.739680343212562 36 15.739680343212562 40 15.739680343212562;
createNode animCurveTA -n "animCurveTA593";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 10 0 16 0 21 0 27 0 32 
		0 36 0 40 0;
createNode animCurveTA -n "animCurveTA594";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 10 0 16 0 21 0 27 0 32 
		0 36 0 40 0;
createNode animCurveTA -n "animCurveTA595";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 72.677699265164733 4 72.677699265164733 
		10 72.677699265164733 16 72.677699265164733 21 72.677699265164733 27 72.677699265164733 
		32 72.677699265164733 36 72.677699265164733 40 72.677699265164733;
createNode animCurveTA -n "animCurveTA596";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA597";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA598";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA599";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA600";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA601";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA602";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA603";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA604";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 40 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA605";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 10 0 16 0 21 0 27 0 32 
		0 36 0 40 0;
createNode animCurveTA -n "animCurveTA606";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 10 0 16 0 21 0 27 0 32 
		0 36 0 40 0;
createNode animCurveTA -n "animCurveTA607";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 72.57093380156806 4 72.57093380156806 
		10 72.57093380156806 16 72.57093380156806 21 72.57093380156806 27 72.57093380156806 
		32 72.57093380156806 36 72.57093380156806 40 72.57093380156806;
createNode animCurveTA -n "animCurveTA608";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1.2945941069882381 4 -1.2945941069882381 
		10 -1.2945941069882381 16 -1.2945941069882381 21 -1.2945941069882381 27 -1.2945941069882381 
		32 -1.2945941069882381 36 -1.2945941069882381 40 -1.2945941069882381;
createNode animCurveTA -n "animCurveTA609";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -3.3208811165553147 4 -3.3208811165553147 
		10 -3.3208811165553147 16 -3.3208811165553147 21 -3.3208811165553147 27 -3.3208811165553147 
		32 -3.3208811165553147 36 -3.3208811165553147 40 -3.3208811165553147;
createNode animCurveTA -n "animCurveTA610";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -27.525824477859967 4 -27.525824477859967 
		10 -27.525824477859967 16 -27.525824477859967 21 -27.525824477859967 27 -27.525824477859967 
		32 -27.525824477859967 36 -27.525824477859967 40 -27.525824477859967;
createNode animCurveTA -n "animCurveTA611";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 -16.720377768612792 10 13.150726633586853 
		16 6.3570808496272129 21 6.3570808496272129 27 -24.04838405166856 32 -27.982295746072769 
		36 -45.728031350230268 40 0;
createNode animCurveTA -n "animCurveTA612";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 25.057479857223814 10 33.826841903357241 
		16 16.135647321522235 21 16.135647321522235 27 27.885639155188606 32 4.4635044047974306 
		36 1.1188158342536254 40 0;
createNode animCurveTA -n "animCurveTA613";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.8319513947347916 4 0.048000168908262676 
		10 8.8777487181854777 16 9.1935288071228047 21 9.1935288071228047 27 7.2379242188425419 
		32 12.126730407550065 36 0.41686200432484799 40 2.8319513947347916;
createNode animCurveTA -n "animCurveTA614";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 10 18.990959163355981 16 
		18.990959163355981 21 18.990959163355981 27 -0.98212585598059587 32 0.091767319027168795 
		36 0.091767319027168795 40 0;
createNode animCurveTA -n "animCurveTA615";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 10 0 16 0 21 0 27 0 32 
		0 36 0 40 0;
createNode animCurveTA -n "animCurveTA616";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 10 0 16 0 21 0 27 0 32 
		0 36 0 40 0;
createNode animCurveTA -n "animCurveTA617";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 -25.607848084010403 10 -42.015802426810211 
		16 -42.015802426810211 21 -42.015802426810211 27 18.454592067189733 32 -22.217176383838279 
		36 -12.458788710407894 40 0;
createNode animCurveTA -n "animCurveTA618";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 -18.968063282517416 10 -31.369516304008283 
		16 -31.369516304008283 21 -31.369516304008283 27 21.653325035640894 32 -16.125088497886065 
		36 -38.072516932657294 40 0;
createNode animCurveTA -n "animCurveTA619";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -8.5537919350489524 4 18.430993973221085 
		10 31.33006052078581 16 31.33006052078581 21 31.33006052078581 27 33.244391563959077 
		32 31.154934610430395 36 -10.820979320699982 40 -8.5537919350489524;
createNode animCurveTA -n "animCurveTA620";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 10 0 16 0 21 0 27 0 32 
		1.1095024889927581 36 1.1095024889927581 40 0;
createNode animCurveTA -n "animCurveTA621";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 10 -5.3334146585126394 
		16 -5.3334146585126394 21 -5.3334146585126394 27 -5.3334146585126394 32 -5.2170604914993319 
		36 -5.2170604914993319 40 0;
createNode animCurveTA -n "animCurveTA622";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -8.6139304882271457 4 -8.6139304882271457 
		10 -8.6139304882271404 16 -8.6139304882271404 21 -8.6139304882271404 27 -8.6139304882271404 
		32 -20.637629174680388 36 -20.637629174680388 40 -8.6139304882271457;
createNode animCurveTA -n "animCurveTA623";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 10 0 16 0 21 0 27 0 32 
		0 36 0 40 0;
createNode animCurveTA -n "animCurveTA624";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 10 0 16 0 21 0 27 0 32 
		0 36 0 40 0;
createNode animCurveTA -n "animCurveTA625";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 72.57093380156806 4 72.57093380156806 
		10 72.57093380156806 16 72.57093380156806 21 72.57093380156806 27 72.57093380156806 
		32 72.57093380156806 36 72.57093380156806 40 72.57093380156806;
createNode animCurveTA -n "animCurveTA626";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -33.352561559544277 4 -33.352561559544277 
		10 -33.352561559544277 16 -33.352561559544277 21 -33.352561559544277 27 -33.352561559544277 
		32 -33.352561559544277 36 -33.352561559544277 40 -33.352561559544277;
createNode animCurveTA -n "animCurveTA627";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 39.646570824829801 4 39.646570824829801 
		10 39.646570824829801 16 39.646570824829801 21 39.646570824829801 27 39.646570824829801 
		32 39.646570824829801 36 39.646570824829801 40 39.646570824829801;
createNode animCurveTA -n "animCurveTA628";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 11.057385060550724 4 11.057385060550724 
		10 11.057385060550724 16 11.057385060550724 21 11.057385060550724 27 11.057385060550724 
		32 11.057385060550724 36 11.057385060550724 40 11.057385060550724;
createNode animCurveTA -n "animCurveTA629";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 10 0 16 0 21 0 27 0 32 
		0 36 0 40 0;
createNode animCurveTA -n "animCurveTA630";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 10 0 16 0 21 0 27 0 32 
		0 36 0 40 0;
createNode animCurveTA -n "animCurveTA631";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 72.677699265164733 4 72.677699265164733 
		10 72.677699265164733 16 72.677699265164733 21 72.677699265164733 27 72.677699265164733 
		32 72.677699265164733 36 72.677699265164733 40 72.677699265164733;
createNode animCurveTA -n "animCurveTA632";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 5.479706513356164 10 5.9933149854016818 
		15 0.52782457165701635 20 4.2461335026094824 25 -11.183480593249671 30 0 
		34 0 40 0;
createNode animCurveTA -n "animCurveTA633";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 6.6964524279684214 6 17.872659951179411 
		10 17.786665177230017 15 12.031904580246202 20 5.9872673790972053 25 31.00533812524888 
		30 0 34 0 40 6.6964524279684214;
createNode animCurveTA -n "animCurveTA634";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 15.849616712688743 6 21.619508684820005 
		10 34.905337346717531 15 9.7018032025174072 20 -3.9657584662916361 25 -14.909839205548634 
		30 26.347675597875128 34 46.77437392946333 40 15.849616712688743;
createNode animCurveTA -n "animCurveTA635";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 5.479706513356164 10 3.4840096998306023 
		15 -2.9545089328394663 20 0.48043918088068271 25 -15.713576009911147 30 0 
		34 0 40 0;
createNode animCurveTA -n "animCurveTA636";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 6.6964524279684214 6 17.872659951179411 
		10 21.104313378157155 15 13.925396425136732 20 7.0366988932854797 25 31.260358816281254 
		30 0 34 0 40 6.6964524279684214;
createNode animCurveTA -n "animCurveTA637";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 15.849616712688743 6 21.619508684820005 
		10 33.550179703911787 15 8.4365953877584587 20 -4.8757815105234448 25 -17.735690168736038 
		30 26.347675597875128 34 46.77437392946333 40 15.849616712688743;
createNode animCurveTA -n "animCurveTA638";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 5.479706513356164 10 2.9366762326621045 
		15 -2.5397497364890373 20 0.14434785600782288 25 -16.943656380528786 30 0 
		34 0 40 0;
createNode animCurveTA -n "animCurveTA639";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 6.6964524279684214 6 17.872659951179411 
		10 24.699093747755175 15 17.03921692383285 20 10.158428064362008 25 34.224422984259469 
		30 0 34 0 40 6.6964524279684214;
createNode animCurveTA -n "animCurveTA640";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 15.849616712688743 6 21.619508684820005 
		10 31.674515876187098 15 6.7747390731266757 20 -6.6986574993817039 25 -20.173849357084634 
		30 26.347675597875128 34 46.77437392946333 40 15.849616712688743;
createNode clipLibrary -n "clipLibrary3";
	setAttr -s 177 ".cel[0].cev";
createNode clipLibrary -n "clipLibrary4";
	setAttr -s 177 ".cel[0].cev";
	setAttr ".cd[0].cm" -type "characterMapping" 177 "Extra_Attributes.translateX" 
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
		2 118 "Middle_L.rotateZ" 2 119 "hair_1.rotateX" 2 120 "hair_1.rotateY" 
		2 121 "hair_1.rotateZ" 2 122 "hair_2.rotateX" 2 123 "hair_2.rotateY" 
		2 124 "hair_2.rotateZ" 2 125 "hair_3.rotateX" 2 126 "hair_3.rotateY" 
		2 127 "hair_3.rotateZ" 2 128  ;
	setAttr ".cd[0].cim" -type "Int32Array" 177 0 1 2 3
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
		 158 159 160 161 162 163 164 165 166 167 168
		 169 170 171 172 173 174 175 176 ;
createNode lightLinker -n "lightLinker1";
	setAttr ".ihi" 0;
	setAttr -s 22 ".lnk";
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
	setAttr ".outf" 23;
	setAttr ".an" yes;
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
connectAttr "mrg_turn_180_CCW.st" "clipLibrary3.st[0]";
connectAttr "mrg_turn_180_CCW.du" "clipLibrary3.du[0]";
connectAttr "animCurveTL165.a" "clipLibrary3.cel[0].cev[0].cevr";
connectAttr "animCurveTL166.a" "clipLibrary3.cel[0].cev[1].cevr";
connectAttr "animCurveTL167.a" "clipLibrary3.cel[0].cev[2].cevr";
connectAttr "animCurveTL168.a" "clipLibrary3.cel[0].cev[3].cevr";
connectAttr "animCurveTL169.a" "clipLibrary3.cel[0].cev[4].cevr";
connectAttr "animCurveTA513.a" "clipLibrary3.cel[0].cev[5].cevr";
connectAttr "animCurveTU33.a" "clipLibrary3.cel[0].cev[6].cevr";
connectAttr "animCurveTU34.a" "clipLibrary3.cel[0].cev[7].cevr";
connectAttr "animCurveTU35.a" "clipLibrary3.cel[0].cev[8].cevr";
connectAttr "animCurveTU36.a" "clipLibrary3.cel[0].cev[9].cevr";
connectAttr "animCurveTU37.a" "clipLibrary3.cel[0].cev[10].cevr";
connectAttr "animCurveTU38.a" "clipLibrary3.cel[0].cev[11].cevr";
connectAttr "animCurveTU39.a" "clipLibrary3.cel[0].cev[12].cevr";
connectAttr "animCurveTU40.a" "clipLibrary3.cel[0].cev[13].cevr";
connectAttr "animCurveTA514.a" "clipLibrary3.cel[0].cev[14].cevr";
connectAttr "animCurveTA515.a" "clipLibrary3.cel[0].cev[15].cevr";
connectAttr "animCurveTA516.a" "clipLibrary3.cel[0].cev[16].cevr";
connectAttr "animCurveTL170.a" "clipLibrary3.cel[0].cev[17].cevr";
connectAttr "animCurveTL171.a" "clipLibrary3.cel[0].cev[18].cevr";
connectAttr "animCurveTL172.a" "clipLibrary3.cel[0].cev[19].cevr";
connectAttr "animCurveTL173.a" "clipLibrary3.cel[0].cev[20].cevr";
connectAttr "animCurveTL174.a" "clipLibrary3.cel[0].cev[21].cevr";
connectAttr "animCurveTL175.a" "clipLibrary3.cel[0].cev[22].cevr";
connectAttr "animCurveTA517.a" "clipLibrary3.cel[0].cev[23].cevr";
connectAttr "animCurveTA518.a" "clipLibrary3.cel[0].cev[24].cevr";
connectAttr "animCurveTA519.a" "clipLibrary3.cel[0].cev[25].cevr";
connectAttr "animCurveTL176.a" "clipLibrary3.cel[0].cev[26].cevr";
connectAttr "animCurveTL177.a" "clipLibrary3.cel[0].cev[27].cevr";
connectAttr "animCurveTL178.a" "clipLibrary3.cel[0].cev[28].cevr";
connectAttr "animCurveTA520.a" "clipLibrary3.cel[0].cev[29].cevr";
connectAttr "animCurveTA521.a" "clipLibrary3.cel[0].cev[30].cevr";
connectAttr "animCurveTA522.a" "clipLibrary3.cel[0].cev[31].cevr";
connectAttr "animCurveTA523.a" "clipLibrary3.cel[0].cev[32].cevr";
connectAttr "animCurveTA524.a" "clipLibrary3.cel[0].cev[33].cevr";
connectAttr "animCurveTA525.a" "clipLibrary3.cel[0].cev[34].cevr";
connectAttr "animCurveTA526.a" "clipLibrary3.cel[0].cev[35].cevr";
connectAttr "animCurveTA527.a" "clipLibrary3.cel[0].cev[36].cevr";
connectAttr "animCurveTA528.a" "clipLibrary3.cel[0].cev[37].cevr";
connectAttr "animCurveTA529.a" "clipLibrary3.cel[0].cev[38].cevr";
connectAttr "animCurveTA530.a" "clipLibrary3.cel[0].cev[39].cevr";
connectAttr "animCurveTA531.a" "clipLibrary3.cel[0].cev[40].cevr";
connectAttr "animCurveTA532.a" "clipLibrary3.cel[0].cev[41].cevr";
connectAttr "animCurveTA533.a" "clipLibrary3.cel[0].cev[42].cevr";
connectAttr "animCurveTA534.a" "clipLibrary3.cel[0].cev[43].cevr";
connectAttr "animCurveTL179.a" "clipLibrary3.cel[0].cev[44].cevr";
connectAttr "animCurveTL180.a" "clipLibrary3.cel[0].cev[45].cevr";
connectAttr "animCurveTL181.a" "clipLibrary3.cel[0].cev[46].cevr";
connectAttr "animCurveTL182.a" "clipLibrary3.cel[0].cev[47].cevr";
connectAttr "animCurveTL183.a" "clipLibrary3.cel[0].cev[48].cevr";
connectAttr "animCurveTL184.a" "clipLibrary3.cel[0].cev[49].cevr";
connectAttr "animCurveTL185.a" "clipLibrary3.cel[0].cev[50].cevr";
connectAttr "animCurveTL186.a" "clipLibrary3.cel[0].cev[51].cevr";
connectAttr "animCurveTL187.a" "clipLibrary3.cel[0].cev[52].cevr";
connectAttr "animCurveTA535.a" "clipLibrary3.cel[0].cev[53].cevr";
connectAttr "animCurveTA536.a" "clipLibrary3.cel[0].cev[54].cevr";
connectAttr "animCurveTA537.a" "clipLibrary3.cel[0].cev[55].cevr";
connectAttr "animCurveTA538.a" "clipLibrary3.cel[0].cev[56].cevr";
connectAttr "animCurveTA539.a" "clipLibrary3.cel[0].cev[57].cevr";
connectAttr "animCurveTA540.a" "clipLibrary3.cel[0].cev[58].cevr";
connectAttr "animCurveTA541.a" "clipLibrary3.cel[0].cev[59].cevr";
connectAttr "animCurveTA542.a" "clipLibrary3.cel[0].cev[60].cevr";
connectAttr "animCurveTA543.a" "clipLibrary3.cel[0].cev[61].cevr";
connectAttr "animCurveTA544.a" "clipLibrary3.cel[0].cev[62].cevr";
connectAttr "animCurveTA545.a" "clipLibrary3.cel[0].cev[63].cevr";
connectAttr "animCurveTA546.a" "clipLibrary3.cel[0].cev[64].cevr";
connectAttr "animCurveTA547.a" "clipLibrary3.cel[0].cev[65].cevr";
connectAttr "animCurveTA548.a" "clipLibrary3.cel[0].cev[66].cevr";
connectAttr "animCurveTA549.a" "clipLibrary3.cel[0].cev[67].cevr";
connectAttr "animCurveTA550.a" "clipLibrary3.cel[0].cev[68].cevr";
connectAttr "animCurveTA551.a" "clipLibrary3.cel[0].cev[69].cevr";
connectAttr "animCurveTA552.a" "clipLibrary3.cel[0].cev[70].cevr";
connectAttr "animCurveTA553.a" "clipLibrary3.cel[0].cev[71].cevr";
connectAttr "animCurveTA554.a" "clipLibrary3.cel[0].cev[72].cevr";
connectAttr "animCurveTA555.a" "clipLibrary3.cel[0].cev[73].cevr";
connectAttr "animCurveTA556.a" "clipLibrary3.cel[0].cev[74].cevr";
connectAttr "animCurveTA557.a" "clipLibrary3.cel[0].cev[75].cevr";
connectAttr "animCurveTA558.a" "clipLibrary3.cel[0].cev[76].cevr";
connectAttr "animCurveTA559.a" "clipLibrary3.cel[0].cev[77].cevr";
connectAttr "animCurveTA560.a" "clipLibrary3.cel[0].cev[78].cevr";
connectAttr "animCurveTA561.a" "clipLibrary3.cel[0].cev[79].cevr";
connectAttr "animCurveTA562.a" "clipLibrary3.cel[0].cev[80].cevr";
connectAttr "animCurveTA563.a" "clipLibrary3.cel[0].cev[81].cevr";
connectAttr "animCurveTL188.a" "clipLibrary3.cel[0].cev[82].cevr";
connectAttr "animCurveTL189.a" "clipLibrary3.cel[0].cev[83].cevr";
connectAttr "animCurveTL190.a" "clipLibrary3.cel[0].cev[84].cevr";
connectAttr "animCurveTA564.a" "clipLibrary3.cel[0].cev[85].cevr";
connectAttr "animCurveTA565.a" "clipLibrary3.cel[0].cev[86].cevr";
connectAttr "animCurveTA566.a" "clipLibrary3.cel[0].cev[87].cevr";
connectAttr "animCurveTL191.a" "clipLibrary3.cel[0].cev[88].cevr";
connectAttr "animCurveTL192.a" "clipLibrary3.cel[0].cev[89].cevr";
connectAttr "animCurveTL193.a" "clipLibrary3.cel[0].cev[90].cevr";
connectAttr "animCurveTA567.a" "clipLibrary3.cel[0].cev[91].cevr";
connectAttr "animCurveTA568.a" "clipLibrary3.cel[0].cev[92].cevr";
connectAttr "animCurveTA569.a" "clipLibrary3.cel[0].cev[93].cevr";
connectAttr "animCurveTL194.a" "clipLibrary3.cel[0].cev[94].cevr";
connectAttr "animCurveTL195.a" "clipLibrary3.cel[0].cev[95].cevr";
connectAttr "animCurveTL196.a" "clipLibrary3.cel[0].cev[96].cevr";
connectAttr "animCurveTA570.a" "clipLibrary3.cel[0].cev[97].cevr";
connectAttr "animCurveTA571.a" "clipLibrary3.cel[0].cev[98].cevr";
connectAttr "animCurveTA572.a" "clipLibrary3.cel[0].cev[99].cevr";
connectAttr "animCurveTL197.a" "clipLibrary3.cel[0].cev[100].cevr";
connectAttr "animCurveTL198.a" "clipLibrary3.cel[0].cev[101].cevr";
connectAttr "animCurveTL199.a" "clipLibrary3.cel[0].cev[102].cevr";
connectAttr "animCurveTA573.a" "clipLibrary3.cel[0].cev[103].cevr";
connectAttr "animCurveTA574.a" "clipLibrary3.cel[0].cev[104].cevr";
connectAttr "animCurveTA575.a" "clipLibrary3.cel[0].cev[105].cevr";
connectAttr "animCurveTL200.a" "clipLibrary3.cel[0].cev[106].cevr";
connectAttr "animCurveTL201.a" "clipLibrary3.cel[0].cev[107].cevr";
connectAttr "animCurveTL202.a" "clipLibrary3.cel[0].cev[108].cevr";
connectAttr "animCurveTL203.a" "clipLibrary3.cel[0].cev[109].cevr";
connectAttr "animCurveTL204.a" "clipLibrary3.cel[0].cev[110].cevr";
connectAttr "animCurveTL205.a" "clipLibrary3.cel[0].cev[111].cevr";
connectAttr "animCurveTA576.a" "clipLibrary3.cel[0].cev[112].cevr";
connectAttr "animCurveTA577.a" "clipLibrary3.cel[0].cev[113].cevr";
connectAttr "animCurveTA578.a" "clipLibrary3.cel[0].cev[114].cevr";
connectAttr "animCurveTA579.a" "clipLibrary3.cel[0].cev[115].cevr";
connectAttr "animCurveTA580.a" "clipLibrary3.cel[0].cev[116].cevr";
connectAttr "animCurveTA581.a" "clipLibrary3.cel[0].cev[117].cevr";
connectAttr "animCurveTA582.a" "clipLibrary3.cel[0].cev[118].cevr";
connectAttr "animCurveTA583.a" "clipLibrary3.cel[0].cev[119].cevr";
connectAttr "animCurveTA584.a" "clipLibrary3.cel[0].cev[120].cevr";
connectAttr "animCurveTA585.a" "clipLibrary3.cel[0].cev[121].cevr";
connectAttr "animCurveTA586.a" "clipLibrary3.cel[0].cev[122].cevr";
connectAttr "animCurveTA587.a" "clipLibrary3.cel[0].cev[123].cevr";
connectAttr "animCurveTA588.a" "clipLibrary3.cel[0].cev[124].cevr";
connectAttr "animCurveTA589.a" "clipLibrary3.cel[0].cev[125].cevr";
connectAttr "animCurveTA590.a" "clipLibrary3.cel[0].cev[126].cevr";
connectAttr "animCurveTA591.a" "clipLibrary3.cel[0].cev[127].cevr";
connectAttr "animCurveTA592.a" "clipLibrary3.cel[0].cev[128].cevr";
connectAttr "animCurveTA593.a" "clipLibrary3.cel[0].cev[129].cevr";
connectAttr "animCurveTA594.a" "clipLibrary3.cel[0].cev[130].cevr";
connectAttr "animCurveTA595.a" "clipLibrary3.cel[0].cev[131].cevr";
connectAttr "animCurveTA596.a" "clipLibrary3.cel[0].cev[132].cevr";
connectAttr "animCurveTA597.a" "clipLibrary3.cel[0].cev[133].cevr";
connectAttr "animCurveTA598.a" "clipLibrary3.cel[0].cev[134].cevr";
connectAttr "animCurveTA599.a" "clipLibrary3.cel[0].cev[135].cevr";
connectAttr "animCurveTA600.a" "clipLibrary3.cel[0].cev[136].cevr";
connectAttr "animCurveTA601.a" "clipLibrary3.cel[0].cev[137].cevr";
connectAttr "animCurveTA602.a" "clipLibrary3.cel[0].cev[138].cevr";
connectAttr "animCurveTA603.a" "clipLibrary3.cel[0].cev[139].cevr";
connectAttr "animCurveTA604.a" "clipLibrary3.cel[0].cev[140].cevr";
connectAttr "animCurveTA605.a" "clipLibrary3.cel[0].cev[141].cevr";
connectAttr "animCurveTA606.a" "clipLibrary3.cel[0].cev[142].cevr";
connectAttr "animCurveTA607.a" "clipLibrary3.cel[0].cev[143].cevr";
connectAttr "animCurveTA608.a" "clipLibrary3.cel[0].cev[144].cevr";
connectAttr "animCurveTA609.a" "clipLibrary3.cel[0].cev[145].cevr";
connectAttr "animCurveTA610.a" "clipLibrary3.cel[0].cev[146].cevr";
connectAttr "animCurveTA611.a" "clipLibrary3.cel[0].cev[147].cevr";
connectAttr "animCurveTA612.a" "clipLibrary3.cel[0].cev[148].cevr";
connectAttr "animCurveTA613.a" "clipLibrary3.cel[0].cev[149].cevr";
connectAttr "animCurveTA614.a" "clipLibrary3.cel[0].cev[150].cevr";
connectAttr "animCurveTA615.a" "clipLibrary3.cel[0].cev[151].cevr";
connectAttr "animCurveTA616.a" "clipLibrary3.cel[0].cev[152].cevr";
connectAttr "animCurveTA617.a" "clipLibrary3.cel[0].cev[153].cevr";
connectAttr "animCurveTA618.a" "clipLibrary3.cel[0].cev[154].cevr";
connectAttr "animCurveTA619.a" "clipLibrary3.cel[0].cev[155].cevr";
connectAttr "animCurveTA620.a" "clipLibrary3.cel[0].cev[156].cevr";
connectAttr "animCurveTA621.a" "clipLibrary3.cel[0].cev[157].cevr";
connectAttr "animCurveTA622.a" "clipLibrary3.cel[0].cev[158].cevr";
connectAttr "animCurveTA623.a" "clipLibrary3.cel[0].cev[159].cevr";
connectAttr "animCurveTA624.a" "clipLibrary3.cel[0].cev[160].cevr";
connectAttr "animCurveTA625.a" "clipLibrary3.cel[0].cev[161].cevr";
connectAttr "animCurveTA626.a" "clipLibrary3.cel[0].cev[162].cevr";
connectAttr "animCurveTA627.a" "clipLibrary3.cel[0].cev[163].cevr";
connectAttr "animCurveTA628.a" "clipLibrary3.cel[0].cev[164].cevr";
connectAttr "animCurveTA629.a" "clipLibrary3.cel[0].cev[165].cevr";
connectAttr "animCurveTA630.a" "clipLibrary3.cel[0].cev[166].cevr";
connectAttr "animCurveTA631.a" "clipLibrary3.cel[0].cev[167].cevr";
connectAttr "animCurveTA632.a" "clipLibrary3.cel[0].cev[168].cevr";
connectAttr "animCurveTA633.a" "clipLibrary3.cel[0].cev[169].cevr";
connectAttr "animCurveTA634.a" "clipLibrary3.cel[0].cev[170].cevr";
connectAttr "animCurveTA635.a" "clipLibrary3.cel[0].cev[171].cevr";
connectAttr "animCurveTA636.a" "clipLibrary3.cel[0].cev[172].cevr";
connectAttr "animCurveTA637.a" "clipLibrary3.cel[0].cev[173].cevr";
connectAttr "animCurveTA638.a" "clipLibrary3.cel[0].cev[174].cevr";
connectAttr "animCurveTA639.a" "clipLibrary3.cel[0].cev[175].cevr";
connectAttr "animCurveTA640.a" "clipLibrary3.cel[0].cev[176].cevr";
connectAttr "mrg_turn_180_CCW.st" "clipLibrary4.st[0]";
connectAttr "mrg_turn_180_CCW.du" "clipLibrary4.du[0]";
connectAttr "animCurveTL165.a" "clipLibrary4.cel[0].cev[0].cevr";
connectAttr "animCurveTL166.a" "clipLibrary4.cel[0].cev[1].cevr";
connectAttr "animCurveTL167.a" "clipLibrary4.cel[0].cev[2].cevr";
connectAttr "animCurveTL168.a" "clipLibrary4.cel[0].cev[3].cevr";
connectAttr "animCurveTL169.a" "clipLibrary4.cel[0].cev[4].cevr";
connectAttr "animCurveTA513.a" "clipLibrary4.cel[0].cev[5].cevr";
connectAttr "animCurveTU33.a" "clipLibrary4.cel[0].cev[6].cevr";
connectAttr "animCurveTU34.a" "clipLibrary4.cel[0].cev[7].cevr";
connectAttr "animCurveTU35.a" "clipLibrary4.cel[0].cev[8].cevr";
connectAttr "animCurveTU36.a" "clipLibrary4.cel[0].cev[9].cevr";
connectAttr "animCurveTU37.a" "clipLibrary4.cel[0].cev[10].cevr";
connectAttr "animCurveTU38.a" "clipLibrary4.cel[0].cev[11].cevr";
connectAttr "animCurveTU39.a" "clipLibrary4.cel[0].cev[12].cevr";
connectAttr "animCurveTU40.a" "clipLibrary4.cel[0].cev[13].cevr";
connectAttr "animCurveTA514.a" "clipLibrary4.cel[0].cev[14].cevr";
connectAttr "animCurveTA515.a" "clipLibrary4.cel[0].cev[15].cevr";
connectAttr "animCurveTA516.a" "clipLibrary4.cel[0].cev[16].cevr";
connectAttr "animCurveTL170.a" "clipLibrary4.cel[0].cev[17].cevr";
connectAttr "animCurveTL171.a" "clipLibrary4.cel[0].cev[18].cevr";
connectAttr "animCurveTL172.a" "clipLibrary4.cel[0].cev[19].cevr";
connectAttr "animCurveTL173.a" "clipLibrary4.cel[0].cev[20].cevr";
connectAttr "animCurveTL174.a" "clipLibrary4.cel[0].cev[21].cevr";
connectAttr "animCurveTL175.a" "clipLibrary4.cel[0].cev[22].cevr";
connectAttr "animCurveTA517.a" "clipLibrary4.cel[0].cev[23].cevr";
connectAttr "animCurveTA518.a" "clipLibrary4.cel[0].cev[24].cevr";
connectAttr "animCurveTA519.a" "clipLibrary4.cel[0].cev[25].cevr";
connectAttr "animCurveTL176.a" "clipLibrary4.cel[0].cev[26].cevr";
connectAttr "animCurveTL177.a" "clipLibrary4.cel[0].cev[27].cevr";
connectAttr "animCurveTL178.a" "clipLibrary4.cel[0].cev[28].cevr";
connectAttr "animCurveTA520.a" "clipLibrary4.cel[0].cev[29].cevr";
connectAttr "animCurveTA521.a" "clipLibrary4.cel[0].cev[30].cevr";
connectAttr "animCurveTA522.a" "clipLibrary4.cel[0].cev[31].cevr";
connectAttr "animCurveTA523.a" "clipLibrary4.cel[0].cev[32].cevr";
connectAttr "animCurveTA524.a" "clipLibrary4.cel[0].cev[33].cevr";
connectAttr "animCurveTA525.a" "clipLibrary4.cel[0].cev[34].cevr";
connectAttr "animCurveTA526.a" "clipLibrary4.cel[0].cev[35].cevr";
connectAttr "animCurveTA527.a" "clipLibrary4.cel[0].cev[36].cevr";
connectAttr "animCurveTA528.a" "clipLibrary4.cel[0].cev[37].cevr";
connectAttr "animCurveTA529.a" "clipLibrary4.cel[0].cev[38].cevr";
connectAttr "animCurveTA530.a" "clipLibrary4.cel[0].cev[39].cevr";
connectAttr "animCurveTA531.a" "clipLibrary4.cel[0].cev[40].cevr";
connectAttr "animCurveTA532.a" "clipLibrary4.cel[0].cev[41].cevr";
connectAttr "animCurveTA533.a" "clipLibrary4.cel[0].cev[42].cevr";
connectAttr "animCurveTA534.a" "clipLibrary4.cel[0].cev[43].cevr";
connectAttr "animCurveTL179.a" "clipLibrary4.cel[0].cev[44].cevr";
connectAttr "animCurveTL180.a" "clipLibrary4.cel[0].cev[45].cevr";
connectAttr "animCurveTL181.a" "clipLibrary4.cel[0].cev[46].cevr";
connectAttr "animCurveTL182.a" "clipLibrary4.cel[0].cev[47].cevr";
connectAttr "animCurveTL183.a" "clipLibrary4.cel[0].cev[48].cevr";
connectAttr "animCurveTL184.a" "clipLibrary4.cel[0].cev[49].cevr";
connectAttr "animCurveTL185.a" "clipLibrary4.cel[0].cev[50].cevr";
connectAttr "animCurveTL186.a" "clipLibrary4.cel[0].cev[51].cevr";
connectAttr "animCurveTL187.a" "clipLibrary4.cel[0].cev[52].cevr";
connectAttr "animCurveTA535.a" "clipLibrary4.cel[0].cev[53].cevr";
connectAttr "animCurveTA536.a" "clipLibrary4.cel[0].cev[54].cevr";
connectAttr "animCurveTA537.a" "clipLibrary4.cel[0].cev[55].cevr";
connectAttr "animCurveTA538.a" "clipLibrary4.cel[0].cev[56].cevr";
connectAttr "animCurveTA539.a" "clipLibrary4.cel[0].cev[57].cevr";
connectAttr "animCurveTA540.a" "clipLibrary4.cel[0].cev[58].cevr";
connectAttr "animCurveTA541.a" "clipLibrary4.cel[0].cev[59].cevr";
connectAttr "animCurveTA542.a" "clipLibrary4.cel[0].cev[60].cevr";
connectAttr "animCurveTA543.a" "clipLibrary4.cel[0].cev[61].cevr";
connectAttr "animCurveTA544.a" "clipLibrary4.cel[0].cev[62].cevr";
connectAttr "animCurveTA545.a" "clipLibrary4.cel[0].cev[63].cevr";
connectAttr "animCurveTA546.a" "clipLibrary4.cel[0].cev[64].cevr";
connectAttr "animCurveTA547.a" "clipLibrary4.cel[0].cev[65].cevr";
connectAttr "animCurveTA548.a" "clipLibrary4.cel[0].cev[66].cevr";
connectAttr "animCurveTA549.a" "clipLibrary4.cel[0].cev[67].cevr";
connectAttr "animCurveTA550.a" "clipLibrary4.cel[0].cev[68].cevr";
connectAttr "animCurveTA551.a" "clipLibrary4.cel[0].cev[69].cevr";
connectAttr "animCurveTA552.a" "clipLibrary4.cel[0].cev[70].cevr";
connectAttr "animCurveTA553.a" "clipLibrary4.cel[0].cev[71].cevr";
connectAttr "animCurveTA554.a" "clipLibrary4.cel[0].cev[72].cevr";
connectAttr "animCurveTA555.a" "clipLibrary4.cel[0].cev[73].cevr";
connectAttr "animCurveTA556.a" "clipLibrary4.cel[0].cev[74].cevr";
connectAttr "animCurveTA557.a" "clipLibrary4.cel[0].cev[75].cevr";
connectAttr "animCurveTA558.a" "clipLibrary4.cel[0].cev[76].cevr";
connectAttr "animCurveTA559.a" "clipLibrary4.cel[0].cev[77].cevr";
connectAttr "animCurveTA560.a" "clipLibrary4.cel[0].cev[78].cevr";
connectAttr "animCurveTA561.a" "clipLibrary4.cel[0].cev[79].cevr";
connectAttr "animCurveTA562.a" "clipLibrary4.cel[0].cev[80].cevr";
connectAttr "animCurveTA563.a" "clipLibrary4.cel[0].cev[81].cevr";
connectAttr "animCurveTL188.a" "clipLibrary4.cel[0].cev[82].cevr";
connectAttr "animCurveTL189.a" "clipLibrary4.cel[0].cev[83].cevr";
connectAttr "animCurveTL190.a" "clipLibrary4.cel[0].cev[84].cevr";
connectAttr "animCurveTA564.a" "clipLibrary4.cel[0].cev[85].cevr";
connectAttr "animCurveTA565.a" "clipLibrary4.cel[0].cev[86].cevr";
connectAttr "animCurveTA566.a" "clipLibrary4.cel[0].cev[87].cevr";
connectAttr "animCurveTL191.a" "clipLibrary4.cel[0].cev[88].cevr";
connectAttr "animCurveTL192.a" "clipLibrary4.cel[0].cev[89].cevr";
connectAttr "animCurveTL193.a" "clipLibrary4.cel[0].cev[90].cevr";
connectAttr "animCurveTA567.a" "clipLibrary4.cel[0].cev[91].cevr";
connectAttr "animCurveTA568.a" "clipLibrary4.cel[0].cev[92].cevr";
connectAttr "animCurveTA569.a" "clipLibrary4.cel[0].cev[93].cevr";
connectAttr "animCurveTL194.a" "clipLibrary4.cel[0].cev[94].cevr";
connectAttr "animCurveTL195.a" "clipLibrary4.cel[0].cev[95].cevr";
connectAttr "animCurveTL196.a" "clipLibrary4.cel[0].cev[96].cevr";
connectAttr "animCurveTA570.a" "clipLibrary4.cel[0].cev[97].cevr";
connectAttr "animCurveTA571.a" "clipLibrary4.cel[0].cev[98].cevr";
connectAttr "animCurveTA572.a" "clipLibrary4.cel[0].cev[99].cevr";
connectAttr "animCurveTL197.a" "clipLibrary4.cel[0].cev[100].cevr";
connectAttr "animCurveTL198.a" "clipLibrary4.cel[0].cev[101].cevr";
connectAttr "animCurveTL199.a" "clipLibrary4.cel[0].cev[102].cevr";
connectAttr "animCurveTA573.a" "clipLibrary4.cel[0].cev[103].cevr";
connectAttr "animCurveTA574.a" "clipLibrary4.cel[0].cev[104].cevr";
connectAttr "animCurveTA575.a" "clipLibrary4.cel[0].cev[105].cevr";
connectAttr "animCurveTL200.a" "clipLibrary4.cel[0].cev[106].cevr";
connectAttr "animCurveTL201.a" "clipLibrary4.cel[0].cev[107].cevr";
connectAttr "animCurveTL202.a" "clipLibrary4.cel[0].cev[108].cevr";
connectAttr "animCurveTL203.a" "clipLibrary4.cel[0].cev[109].cevr";
connectAttr "animCurveTL204.a" "clipLibrary4.cel[0].cev[110].cevr";
connectAttr "animCurveTL205.a" "clipLibrary4.cel[0].cev[111].cevr";
connectAttr "animCurveTA576.a" "clipLibrary4.cel[0].cev[112].cevr";
connectAttr "animCurveTA577.a" "clipLibrary4.cel[0].cev[113].cevr";
connectAttr "animCurveTA578.a" "clipLibrary4.cel[0].cev[114].cevr";
connectAttr "animCurveTA579.a" "clipLibrary4.cel[0].cev[115].cevr";
connectAttr "animCurveTA580.a" "clipLibrary4.cel[0].cev[116].cevr";
connectAttr "animCurveTA581.a" "clipLibrary4.cel[0].cev[117].cevr";
connectAttr "animCurveTA582.a" "clipLibrary4.cel[0].cev[118].cevr";
connectAttr "animCurveTA583.a" "clipLibrary4.cel[0].cev[119].cevr";
connectAttr "animCurveTA584.a" "clipLibrary4.cel[0].cev[120].cevr";
connectAttr "animCurveTA585.a" "clipLibrary4.cel[0].cev[121].cevr";
connectAttr "animCurveTA586.a" "clipLibrary4.cel[0].cev[122].cevr";
connectAttr "animCurveTA587.a" "clipLibrary4.cel[0].cev[123].cevr";
connectAttr "animCurveTA588.a" "clipLibrary4.cel[0].cev[124].cevr";
connectAttr "animCurveTA589.a" "clipLibrary4.cel[0].cev[125].cevr";
connectAttr "animCurveTA590.a" "clipLibrary4.cel[0].cev[126].cevr";
connectAttr "animCurveTA591.a" "clipLibrary4.cel[0].cev[127].cevr";
connectAttr "animCurveTA592.a" "clipLibrary4.cel[0].cev[128].cevr";
connectAttr "animCurveTA593.a" "clipLibrary4.cel[0].cev[129].cevr";
connectAttr "animCurveTA594.a" "clipLibrary4.cel[0].cev[130].cevr";
connectAttr "animCurveTA595.a" "clipLibrary4.cel[0].cev[131].cevr";
connectAttr "animCurveTA596.a" "clipLibrary4.cel[0].cev[132].cevr";
connectAttr "animCurveTA597.a" "clipLibrary4.cel[0].cev[133].cevr";
connectAttr "animCurveTA598.a" "clipLibrary4.cel[0].cev[134].cevr";
connectAttr "animCurveTA599.a" "clipLibrary4.cel[0].cev[135].cevr";
connectAttr "animCurveTA600.a" "clipLibrary4.cel[0].cev[136].cevr";
connectAttr "animCurveTA601.a" "clipLibrary4.cel[0].cev[137].cevr";
connectAttr "animCurveTA602.a" "clipLibrary4.cel[0].cev[138].cevr";
connectAttr "animCurveTA603.a" "clipLibrary4.cel[0].cev[139].cevr";
connectAttr "animCurveTA604.a" "clipLibrary4.cel[0].cev[140].cevr";
connectAttr "animCurveTA605.a" "clipLibrary4.cel[0].cev[141].cevr";
connectAttr "animCurveTA606.a" "clipLibrary4.cel[0].cev[142].cevr";
connectAttr "animCurveTA607.a" "clipLibrary4.cel[0].cev[143].cevr";
connectAttr "animCurveTA608.a" "clipLibrary4.cel[0].cev[144].cevr";
connectAttr "animCurveTA609.a" "clipLibrary4.cel[0].cev[145].cevr";
connectAttr "animCurveTA610.a" "clipLibrary4.cel[0].cev[146].cevr";
connectAttr "animCurveTA611.a" "clipLibrary4.cel[0].cev[147].cevr";
connectAttr "animCurveTA612.a" "clipLibrary4.cel[0].cev[148].cevr";
connectAttr "animCurveTA613.a" "clipLibrary4.cel[0].cev[149].cevr";
connectAttr "animCurveTA614.a" "clipLibrary4.cel[0].cev[150].cevr";
connectAttr "animCurveTA615.a" "clipLibrary4.cel[0].cev[151].cevr";
connectAttr "animCurveTA616.a" "clipLibrary4.cel[0].cev[152].cevr";
connectAttr "animCurveTA617.a" "clipLibrary4.cel[0].cev[153].cevr";
connectAttr "animCurveTA618.a" "clipLibrary4.cel[0].cev[154].cevr";
connectAttr "animCurveTA619.a" "clipLibrary4.cel[0].cev[155].cevr";
connectAttr "animCurveTA620.a" "clipLibrary4.cel[0].cev[156].cevr";
connectAttr "animCurveTA621.a" "clipLibrary4.cel[0].cev[157].cevr";
connectAttr "animCurveTA622.a" "clipLibrary4.cel[0].cev[158].cevr";
connectAttr "animCurveTA623.a" "clipLibrary4.cel[0].cev[159].cevr";
connectAttr "animCurveTA624.a" "clipLibrary4.cel[0].cev[160].cevr";
connectAttr "animCurveTA625.a" "clipLibrary4.cel[0].cev[161].cevr";
connectAttr "animCurveTA626.a" "clipLibrary4.cel[0].cev[162].cevr";
connectAttr "animCurveTA627.a" "clipLibrary4.cel[0].cev[163].cevr";
connectAttr "animCurveTA628.a" "clipLibrary4.cel[0].cev[164].cevr";
connectAttr "animCurveTA629.a" "clipLibrary4.cel[0].cev[165].cevr";
connectAttr "animCurveTA630.a" "clipLibrary4.cel[0].cev[166].cevr";
connectAttr "animCurveTA631.a" "clipLibrary4.cel[0].cev[167].cevr";
connectAttr "animCurveTA632.a" "clipLibrary4.cel[0].cev[168].cevr";
connectAttr "animCurveTA633.a" "clipLibrary4.cel[0].cev[169].cevr";
connectAttr "animCurveTA634.a" "clipLibrary4.cel[0].cev[170].cevr";
connectAttr "animCurveTA635.a" "clipLibrary4.cel[0].cev[171].cevr";
connectAttr "animCurveTA636.a" "clipLibrary4.cel[0].cev[172].cevr";
connectAttr "animCurveTA637.a" "clipLibrary4.cel[0].cev[173].cevr";
connectAttr "animCurveTA638.a" "clipLibrary4.cel[0].cev[174].cevr";
connectAttr "animCurveTA639.a" "clipLibrary4.cel[0].cev[175].cevr";
connectAttr "animCurveTA640.a" "clipLibrary4.cel[0].cev[176].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[1].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[8].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[13].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[21].llnk";
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
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of mrg-m_turn_180_CCW.ma
