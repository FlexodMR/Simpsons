//Maya ASCII 4.0 scene
//Name: mrg_loco_run.ma
//Last modified: Tue, Oct 01, 2002 05:22:21 PM
requires maya "4.0";
requires "p3dmayaexp" "18.5";
requires "p3dSimpleShader" "18.5";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mrg_loco_runSource";
	setAttr ".ihi" 0;
	setAttr ".du" 16;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL42";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 1 11 0 15 0 16 0;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 9 9;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL43";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 3 0 6 0 11 0 15 1 16 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL44";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.02822006920967135 1 0.017631953957594752 
		2 -0.00030278675561517252 3 -0.015608522949983224 4 -0.030552932357176266 
		5 -0.045025378962974101 6 -0.056185173870409368 7 -0.061391630589188652 8 
		-0.059934107980051103 9 -0.048013506892199916 10 -0.032254515437447402 11 
		-0.018311113744589401 12 -0.0052963222526872401 13 0.005684811838167346 14 
		0.014954382499858398 15 0.023682000399316398 16 0.02822006920967135;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL45";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL46";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.049682949532859226 1 0.16844106121553856 
		2 0.30213206324334485 3 0.48429780430692904 4 0.67404430498008283 5 0.83651488981792188 
		6 0.98713952516970704 7 1.1235460062426028 8 1.2642841822472579 9 1.4373353656464352 
		10 1.6120329392902415 11 1.7610203546751317 12 1.9023486846488371 13 2.0420790836456661 
		14 2.1888247500268272 15 2.35829609144974 16 2.5352627097843161;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0;
	setAttr ".pst" 4;
createNode animCurveTU -n "animCurveTU9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTU -n "animCurveTU10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTU -n "animCurveTU11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTU -n "animCurveTU12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTU -n "animCurveTU13";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".pst" 4;
createNode animCurveTU -n "animCurveTU14";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".pst" 4;
createNode animCurveTU -n "animCurveTU15";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTU -n "animCurveTU16";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL47";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL48";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL49";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL50";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.090256021184643917 2 -0.090256021184643917 
		4 -0.090256021184643917 6 -0.090256021184643917 7 -0.090256021184643917 8 
		-0.090256021184643917 9 -0.090256021184643917 10 -0.090256021184643917 11 
		-0.090256021184643917 12 -0.090256021184643917 14 -0.090256021184643917 16 
		-0.090256021184643917;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL51";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.41649668871748402 2 0.25000884395379303 
		4 0.24952136641389419 6 0.10907681365294213 7 0.10907681365294213 8 0.10907681365294213 
		9 0.10907681365294213 10 0.24238499100842853 11 0.3443580629859761 12 0.41789896438873142 
		14 0.50149400176593206 16 0.41649668871748402;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL52";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.38624381797413698 2 0.29418275264936744 
		4 1.1721433317792438 6 1.4516062401335363 7 1.4516062401335363 8 1.4516062401335363 
		9 1.4516062401335363 10 1.4516062401335363 11 1.6120877193506753 12 1.7820847707636072 
		14 2.1248257176639624 16 2.6214356001221137;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 68.750149689121002 2 42.055067169268746 
		4 -31.548014841396505 6 -29.004424709294032 7 -0.14896661373414463 8 -0.14896661373414463 
		9 -0.14896661373414463 10 37.455789753347503 11 63.714208581413018 12 90.034847060019032 
		14 128.13735884566807 16 68.750149689121002;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 2 0 4 0 6 0 7 0 8 0 9 0 10 
		0 11 0 12 0 14 0 16 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 2 0 4 0 6 0 7 0 8 0 9 0 10 
		0 11 0 12 0 14 0 16 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL53";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.12458561027363557 1 0.12458561027363557 
		2 0.12458561027363553 4 0.12458561027363557 6 0.12458561027363557 8 0.12458561027363557 
		10 0.12458561027363557 12 0.12458561027363557 14 0.12458561027363557 16 0.12458561027363557;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL54";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.1083286823262673 1 0.1083286823262673 
		2 0.21386432273269423 4 0.49776150013250359 6 0.65555143795931037 8 0.30959836097939952 
		10 0.31386311799463423 12 0.23119203123504867 14 0.14165572666513915 16 0.1083286823262673;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL55";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.1007292612778109 1 -0.1007292612778109 
		2 -0.1007292612778109 4 0.19903401763864267 6 0.58088869413748856 8 1.3351704025800002 
		10 2.1111912415139042 12 2.60674346833602 14 2.9244697339607297 16 2.9855693152486604;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 1 0 2 29.466395534073776 4 
		87.050470652892514 6 119.5141102620438 8 94.71621382265468 10 26.776539741627776 
		12 -27.076362153617296 14 -34.621923524143504 16 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA137";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 1 0 2 0 4 0 6 0 8 0 10 0 12 
		0 14 0 16 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 1 0 2 0 4 0 6 0 8 0 10 0 12 
		0 14 0 16 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL56";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 4 0 6 0 8 0 9 0 10 0 12 
		0 14 0 15 0 16 0;
	setAttr -s 11 ".kit[10]"  1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL57";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 4 0 6 0 8 0 9 0 10 0 12 
		0 14 0 15 0 16 0;
	setAttr -s 11 ".kit[10]"  1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL58";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.1269999742507935 3 1.1269999742507935 
		4 1.1269999742507935 6 1.1269999742507935 8 1.1269999742507935 9 1.1269999742507935 
		10 1.1269999742507935 12 1.1269999742507935 14 1.1269999742507935 15 1.1269999742507935 
		16 1.1269999742507935;
	setAttr -s 11 ".kit[10]"  1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 4 0 6 0 8 0.19448792691430006 
		9 0.10824659828021227 10 0 12 0 14 0 15 0 16 0;
	setAttr -s 11 ".kit[10]"  1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 0.006855448242276907 0.0092377718538045883 
		0.0034277846571058035 0.0092377718538045883 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0.9999765157699585 0.99995732307434082 
		-0.99999409914016724 -0.99995732307434082 0 0 0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL60";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 4 0 6 0 8 0 9 0 10 0 12 
		0 14 0 15 0 16 0;
	setAttr -s 11 ".kit[10]"  1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.1269999742507935 3 1.1269999742507935 
		4 1.1269999742507935 6 1.1269999742507935 8 1.1269999742507935 9 1.1269999742507935 
		10 1.1269999742507935 12 1.1269999742507935 14 1.1269999742507935 15 1.1269999742507935 
		16 1.1269999742507935;
	setAttr -s 11 ".kit[10]"  1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL62";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.034394188484190708 2 -0.00036903186401739211 
		4 -0.037237446387173037 6 -0.068477630078016091 8 -0.073046773598671927 10 
		-0.039311309805066363 12 -0.0064550765087957032 14 0.018226172534989427 16 
		0.034394188484190708;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL63";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.93793428325425909 2 0.96558473503100661 
		4 1.0309303341739742 6 0.94327336294358444 8 0.90055656339964774 10 0.95950197355848044 
		12 1.0387250116774656 14 0.9746338386681217 16 0.93793428325425909;
	setAttr -s 9 ".kit[0:8]"  3 1 9 9 1 9 9 
		1 3;
	setAttr -s 9 ".kot[0:8]"  3 1 9 9 1 9 9 
		1 3;
	setAttr -s 9 ".kix[1:8]"  0.010672080330550671 0.059653829783201218 
		0.010226471349596977 0.062678232789039612 0.009649607352912426 0.087774187326431274 
		0.01224851980805397 1;
	setAttr -s 9 ".kiy[1:8]"  0.9999430775642395 -0.99821913242340088 
		-0.99994772672653198 0.99803376197814941 0.99995344877243042 0.99614042043685913 
		-0.99992495775222778 0;
	setAttr -s 9 ".kox[1:8]"  0.010672076605260372 0.059653829783201218 
		0.010226471349596977 0.062678255140781403 0.009649607352912426 0.087774187326431274 
		0.012248332612216473 1;
	setAttr -s 9 ".koy[1:8]"  0.9999430775642395 -0.99821913242340088 
		-0.99994772672653198 0.99803376197814941 0.99995344877243042 0.99614042043685913 
		-0.99992495775222778 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL64";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.060552818562828577 2 0.36823393497375656 
		4 0.82151488360755442 6 1.2031105464917045 8 1.5408902132277766 10 1.9647210765050498 
		12 2.318553464073037 14 2.6677061084415761 16 3.0899393920472011;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 20.950825280283908 2 20.950825280283908 
		4 20.950825280283908 6 20.950825280283908 8 20.950825280283908 10 20.950825280283908 
		12 20.950825280283908 14 20.950825280283908 16 20.950825280283908;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 -4.6866710903011901 4 -7.5734518508549122 
		6 -5.1932105618177555 8 -1.1905185208978395 10 2.45128814155597 12 5.1343787061452408 
		14 5.6234041697971371 16 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 -0.72402281122173284 4 0 
		6 0 8 0 10 0 12 0 14 0 16 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.0984482521620249;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 18.588300303494186;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -22.686733334985114;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0579251312417477e-005;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA165";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.0984482535121209;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 18.588300300216801;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA169";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -22.686733333057838;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0579251312417477e-005;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 10 0 11 0 14 0 16 0;
	setAttr -s 6 ".kit[1:5]"  3 3 9 9 9;
	setAttr -s 6 ".kot[1:5]"  3 3 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 10 0 11 0 14 0 16 0;
	setAttr -s 6 ".kit[1:5]"  3 3 9 9 9;
	setAttr -s 6 ".kot[1:5]"  3 3 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA176";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -53.481021487645641 3 2.4782236286598103 
		9 2.4782236286598103 10 1.0692113677648558 11 -38.155519431879036 14 -16.072382190806952 
		16 -53.481021487645641;
	setAttr -s 7 ".kit[4:6]"  9 9 3;
	setAttr -s 7 ".kot[4:6]"  9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA177";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA178";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA179";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.0579251312417477e-005 2 -0.19861304010057174 
		4 -39.488235982334174 7 6.3159195027017869 9 -46.541845519259041 11 4.2635767681788064 
		14 1.7809053040661718 16 1.0579251312417477e-005;
	setAttr -s 8 ".kit[2:7]"  9 9 9 3 3 9;
	setAttr -s 8 ".kot[2:7]"  9 9 9 3 3 9;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL65";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.99214331096561381;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL66";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.033841737269357866;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL67";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.027201153963313806;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.1805546814635164e-015;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.016273151455886e-014;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5.3764496942944332e-016;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL68";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99214413619678865;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL69";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.033851474715545553;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL70";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.0272011762672867;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 6.3611093629270264e-015;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.5281705937149269e-014;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.5365128437888133e-014;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL71";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.3705977767760478;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL72";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.1618658070195953;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL73";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.12044246479037771;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA186";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA187";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL74";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.3705978542308779;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL75";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.1618621235956237;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL76";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.12044250833667494;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA190";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA191";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL77";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL78";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL79";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL80";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL81";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL82";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA192";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 4.7921462321675188 4 34.482869818558932 
		8 12.426821685572069 12 -41.918265615435807 16 4.7921462321675188;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 1;
	setAttr -s 5 ".kix[0:4]"  0.15668235719203949 0.89453870058059692 
		0.19609944522380829 0.89453870058059692 0.088949263095855713;
	setAttr -s 5 ".kiy[0:4]"  0.98764902353286743 0.44699054956436157 
		-0.98058402538299561 -0.44699054956436157 0.99603617191314697;
	setAttr -s 5 ".kox[0:4]"  0.15668235719203949 0.89453870058059692 
		0.19609944522380829 0.89453870058059692 0.088949255645275116;
	setAttr -s 5 ".koy[0:4]"  0.98764902353286743 0.44699054956436157 
		-0.98058402538299561 -0.44699054956436157 0.99603617191314697;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA193";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -53.856694228597611 4 -41.125361486605222 
		8 -61.642507765066348 12 -49.961967269924052 16 -53.856694228597611;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA194";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.0985293669977847 4 -69.229101835258078 
		8 -15.84537331760138 12 53.934871727320292 16 -1.0985293669977847;
	setAttr -s 5 ".kit[2:4]"  1 9 9;
	setAttr -s 5 ".kot[2:4]"  1 9 9;
	setAttr -s 5 ".kix[2:4]"  0.063665136694908142 0.71952319145202637 
		0.13749611377716064;
	setAttr -s 5 ".kiy[2:4]"  0.9979712963104248 0.69446843862533569 
		-0.99050229787826538;
	setAttr -s 5 ".kox[2:4]"  0.063665129244327545 0.71952319145202637 
		0.13749611377716064;
	setAttr -s 5 ".koy[2:4]"  0.9979712963104248 0.69446843862533569 
		-0.99050229787826538;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA195";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 17.196782419487917 4 -20.603593077461799 
		8 -15.200424426656179 12 40.363806425729756 16 17.196782419487917;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 1;
	setAttr -s 5 ".kix[0:4]"  0.14860664308071136 0.4265541136264801 
		0.24309000372886658 0.4265541136264801 0.17818939685821533;
	setAttr -s 5 ".kiy[0:4]"  -0.98889636993408203 -0.90446203947067261 
		0.97000372409820557 0.90446203947067261 -0.98399621248245239;
	setAttr -s 5 ".kox[0:4]"  0.14860664308071136 0.4265541136264801 
		0.24309000372886658 0.4265541136264801 0.17818938195705414;
	setAttr -s 5 ".koy[0:4]"  -0.98889636993408203 -0.90446203947067261 
		0.97000372409820557 0.90446203947067261 -0.98399621248245239;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA196";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -60.10188422410716 4 -38.206802500660217 
		8 -58.389715313611774 12 -37.949513757346885 16 -60.10188422410716;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA197";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -21.001041665835174 4 43.739971360053964 
		8 18.560551362947049 12 -44.610174049516374 16 -21.001041665835174;
	setAttr -s 5 ".kit[1:4]"  9 1 9 1;
	setAttr -s 5 ".kot[1:4]"  9 1 9 1;
	setAttr -s 5 ".kix[0:4]"  0.14381095767021179 0.36027029156684875 
		0.099525682628154755 0.36027029156684875 0.13620515167713165;
	setAttr -s 5 ".kiy[0:4]"  0.98960518836975098 0.93284797668457031 
		-0.99503499269485474 -0.93284797668457031 0.99068063497543335;
	setAttr -s 5 ".kox[0:4]"  0.14381098747253418 0.36027029156684875 
		0.099525675177574158 0.36027029156684875 0.13620515167713165;
	setAttr -s 5 ".koy[0:4]"  0.98960518836975098 0.93284797668457031 
		-0.99503499269485474 -0.93284797668457031 0.99068063497543335;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA198";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 59.468287502559065 4 59.468287502559065 
		8 79.447163310745665 12 76.501698946427354 16 59.468287502559065;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA199";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 59.305463658789549 4 59.305463658789549 
		8 59.305463658789549 12 59.051715632934531 16 59.305463658789549;
	setAttr ".pst" 4;
createNode animCurveTA -n "R_FK_Wrist_rotateX";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  7 18.476235154862632 15 18.476235154862632 
		23 18.476235154862632;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "R_FK_Wrist_rotateY";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  7 10.082003051124275 15 -31.908519634620383 
		23 10.082003051124275;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "R_FK_Wrist_rotateZ";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  7 -28.614464298772052 15 55.675966050108727 
		23 -28.614464298772052;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "L_FK_Wrist_rotateX";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  7 20.127263792592359 23 20.127263792592359;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "L_FK_Wrist_rotateY";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  7 11.615881410206432 23 11.615881410206432;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "L_FK_Wrist_rotateZ";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  7 46.057633059504241 15 -31.462146508654612 
		23 46.057633059504241;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -33.352561559544277;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 39.646570824829801;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 11.057385060550724;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 72.57093380156806;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 72.677699265164733;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.2945941069882381 4 1.2945941069882381 
		8 1.2945941069882381 12 1.2945941069882381 16 1.2945941069882381;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 3.3208811165553147 4 3.3208811165553147 
		8 3.3208811165553147 12 3.3208811165553147 16 3.3208811165553147;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -27.525824477859967 4 -27.525824477859967 
		8 -27.525824477859967 12 -27.525824477859967 16 -27.525824477859967;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA227";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 -8.7597363552835983 8 0 12 
		8.5462765971892694 16 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 8 0 12 0 16 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA229";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.8319513947347903 4 -5.1279019409024853 
		8 3.697672513272471 12 -4.5292536672789341 16 2.8319513947347903;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA230";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 8 0 12 0 16 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 8 0 12 0 16 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA232";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 8 0 12 0 16 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA233";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 8 0 12 2.5341680974547326e-017 
		16 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA234";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 -9.2427148064678804 8 0 12 
		11.326972852810387 16 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA235";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -8.5537919350489524 5 0 9 -9.0708756291353403 
		13 -1.1464441720277039 17 -8.5537919350489524;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA236";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 8 0 12 0 16 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA237";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 8 0 12 0 16 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA238";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -8.6139304882271457 4 -8.6139304882271457 
		8 -8.6139304882271457 12 -8.6139304882271457 16 -8.6139304882271457;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA239";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA240";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA241";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 72.677699265164733;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA242";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.043585476863096786;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA243";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 28.449471067828945;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA244";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 15.739680343212562;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA245";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA246";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA247";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 72.57093380156806;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA248";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 8 0 12 0 16 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA249";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 6.6964524279684214 4 0 8 -10.061206842064061 
		12 0 16 6.6964524279684214;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA250";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 15.849616712688743 4 28.899767468611902 
		8 5.6868851881257845 12 28.899767468611902 16 15.849616712688743;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA251";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 0 9 0 13 0 17 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA252";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 6.6964524279684214 5 0 9 -10.061206842064061 
		13 0 17 6.6964524279684214;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA253";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 15.849616712688743 5 28.899767468611902 
		9 5.6868851881257845 13 28.899767468611902 17 15.849616712688743;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA254";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  2 0 6 0 10 0 14 0 18 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA255";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  2 6.6964524279684214 6 0 10 -10.061206842064061 
		14 0 18 6.6964524279684214;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA256";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  2 15.849616712688743 6 28.899767468611902 
		10 5.6868851881257845 14 28.899767468611902 18 15.849616712688743;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode clipLibrary -n "clipLibrary1";
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
connectAttr "mrg_loco_runSource.st" "clipLibrary1.st[0]";
connectAttr "mrg_loco_runSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL42.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL43.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL44.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL45.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL46.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA129.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU9.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU10.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU11.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU12.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU13.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU14.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU15.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU16.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA130.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA131.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA132.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL47.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL48.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL49.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL50.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL51.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL52.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA133.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA134.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA135.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL53.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL54.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL55.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA136.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA137.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA138.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA139.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA140.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA141.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA142.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA143.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA144.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA145.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA146.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA147.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA148.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA149.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA150.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL56.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL57.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL58.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL59.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL60.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL61.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL62.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL63.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL64.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA151.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA152.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA153.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA154.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA155.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA156.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA157.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA158.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA159.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA160.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA161.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA162.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA163.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA164.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA165.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA166.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA167.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA168.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA169.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA170.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA171.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA172.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA173.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA174.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA175.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA176.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA177.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA178.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA179.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL65.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL66.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL67.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA180.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA181.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA182.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL68.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL69.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL70.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA183.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA184.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA185.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL71.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL72.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL73.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA186.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA187.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA188.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL74.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL75.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL76.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA189.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA190.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA191.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL77.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL78.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL79.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL80.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL81.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL82.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA192.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA193.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA194.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA195.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA196.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA197.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA198.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA199.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "R_FK_Wrist_rotateX.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "R_FK_Wrist_rotateY.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "R_FK_Wrist_rotateZ.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "L_FK_Wrist_rotateX.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "L_FK_Wrist_rotateY.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "L_FK_Wrist_rotateZ.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA206.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA207.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA208.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA209.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA210.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA211.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA212.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA213.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA214.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA215.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA216.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA217.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA218.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA219.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA220.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA221.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA222.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA223.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA224.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA225.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA226.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA227.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA228.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA229.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA230.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA231.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA232.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA233.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA234.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA235.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA236.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA237.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA238.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA239.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA240.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA241.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA242.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA243.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA244.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA245.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA246.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA247.a" "clipLibrary1.cel[0].cev[167].cevr";
connectAttr "animCurveTA248.a" "clipLibrary1.cel[0].cev[168].cevr";
connectAttr "animCurveTA249.a" "clipLibrary1.cel[0].cev[169].cevr";
connectAttr "animCurveTA250.a" "clipLibrary1.cel[0].cev[170].cevr";
connectAttr "animCurveTA251.a" "clipLibrary1.cel[0].cev[171].cevr";
connectAttr "animCurveTA252.a" "clipLibrary1.cel[0].cev[172].cevr";
connectAttr "animCurveTA253.a" "clipLibrary1.cel[0].cev[173].cevr";
connectAttr "animCurveTA254.a" "clipLibrary1.cel[0].cev[174].cevr";
connectAttr "animCurveTA255.a" "clipLibrary1.cel[0].cev[175].cevr";
connectAttr "animCurveTA256.a" "clipLibrary1.cel[0].cev[176].cevr";
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
// End of mrg_loco_run.ma
