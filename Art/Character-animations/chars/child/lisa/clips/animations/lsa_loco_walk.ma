//Maya ASCII 4.0 scene
//Name: lsa_loco_walk.ma
//Last modified: Fri, Oct 11, 2002 03:02:18 PM
requires maya "4.0";
requires "p3dSimpleShader" "18.6";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "lsa_loco_walkSource";
	setAttr ".ihi" 0;
	setAttr ".du" 24;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL83";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 3 0 14 1 18 1 24 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 9;
createNode animCurveTL -n "animCurveTL84";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 1 4 1 13 1 16 0 24 0;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 9;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 -0.0022456753576306958 1 -0.0022456753576306958 
		2 -0.0022456753576306958 3 -0.0022456753576306958 4 -0.0022456753576306958 
		5 -0.0022456753576306958 6 -0.0022456753576306958 7 -0.0022456753576306958 
		8 -0.0022456753576306958 9 -0.0022456753576306958 10 -0.0022456753576306958 
		11 -0.0022456753576306958 12 -0.0022456753576306958 13 -0.0022456753576306958 
		14 -0.0022456753576306958 15 -0.0022456753576306958 16 -0.0022456753576306958 
		17 -0.0022456753576306958 18 -0.0022456753576306958 19 -0.0022456753576306958 
		20 -0.0022456753576306958 21 -0.0022456753576306958 22 -0.0022456753576306958 
		23 -0.0022456753576306958 24 -0.0022456753576306958 25 -0.0022456753576306958;
createNode animCurveTL -n "animCurveTL86";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0.021117662882101075 1 0.043648366520794978 
		2 0.065971214333453959 3 0.088709773153606675 4 0.11248760981478174 5 0.13844459190943584 
		6 0.16592362214242859 7 0.19285282001589313 8 0.2171603050319624 9 0.23738070825642779 
		10 0.25492332299045112 11 0.27202826208922132 12 0.2909356384079273 13 0.31188041060378108 
		14 0.33355249059464009 15 0.35587442112666168 16 0.37876874494600321 17 0.40215800479882219 
		18 0.42664251755306914 19 0.45227878136421079 20 0.4781736109096783 21 0.50343382086690303 
		22 0.52778421271386178 23 0.55171349063118535 24 0.57547432335028692 25 0.59931937960257875;
createNode animCurveTA -n "animCurveTA191";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0;
createNode animCurveTU -n "animCurveTU17";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTU -n "animCurveTU18";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTU -n "animCurveTU19";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTU -n "animCurveTU20";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTU -n "animCurveTU21";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".pst" 4;
createNode animCurveTU -n "animCurveTU22";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".pst" 4;
createNode animCurveTU -n "animCurveTU23";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTU -n "animCurveTU24";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA192";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA193";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA194";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL88";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL89";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL90";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL91";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.22712004907384792 4 -0.22712004907384792 
		8 -0.22712004907384792 12 -0.22712004907384792 17 -0.22712004907384792 21 
		-0.22712004907384792 25 -0.22712004907384792;
	setAttr -s 7 ".kit[0:6]"  9 3 3 9 3 3 9;
	setAttr -s 7 ".kot[0:6]"  9 3 3 9 3 3 9;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL92";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.14547371358512443 4 0.27719934016757547 
		8 0.29438094363485162 12 0.20274572514271166 17 0.14547371358512443 21 0.14547371358512443 
		25 0.14547371358512443;
	setAttr -s 7 ".kit[0:6]"  9 1 1 1 3 3 9;
	setAttr -s 7 ".kot[0:6]"  9 1 1 1 3 3 9;
	setAttr -s 7 ".kix[1:6]"  0.021233890205621719 0.044602829962968826 
		0.016313714906573296 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0.9997745156288147 -0.9990047812461853 
		-0.99986690282821655 0 0 0;
	setAttr -s 7 ".kox[1:6]"  0.02123415470123291 0.044602643698453903 
		0.016313841566443443 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0.9997745156288147 -0.9990047812461853 
		-0.99986690282821655 0 0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL93";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.2791985960448875 4 -0.17038177408547142 
		8 0.45388315189222972 12 0.97505845706627359 17 1.0609664744026548 21 1.0609664744026548 
		25 1.0552392732468963;
	setAttr -s 7 ".kit[3:6]"  9 3 3 9;
	setAttr -s 7 ".kot[3:6]"  9 3 3 9;
	setAttr -s 7 ".kix[0:6]"  0.13243955373764038 0.0030499065760523081 
		0.0015163011848926544 0.0049416003748774529 1 1 0.22674354910850525;
	setAttr -s 7 ".kiy[0:6]"  -0.99119108915328979 0.99999535083770752 
		0.99999886751174927 0.99998778104782104 0 0 -0.97395449876785278;
	setAttr -s 7 ".kox[0:6]"  0.13243961334228516 0.0030499384738504887 
		0.0015163333155214787 0.0049416003748774529 1 1 0.22674354910850525;
	setAttr -s 7 ".koy[0:6]"  -0.99119108915328979 0.99999535083770752 
		0.99999886751174927 0.99998778104782104 0 0 -0.97395449876785278;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA195";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 26.806670006734159 8 26.806670006734159 
		12 -23.266155566386427 17 -0.44600127297452896 21 -0.44600127297452896 25 
		0;
	setAttr -s 7 ".kit[0:6]"  9 3 3 9 3 3 9;
	setAttr -s 7 ".kot[0:6]"  9 3 3 9 3 3 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA196";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 11.339229499331234 4 11.339229499331234 
		8 11.339229499331234 12 11.339229499331225 17 11.339229499331221 21 11.339229499331221 
		25 11.339229499331234;
	setAttr -s 7 ".kit[0:6]"  9 3 3 9 3 3 9;
	setAttr -s 7 ".kot[0:6]"  9 3 3 9 3 3 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA197";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 12 2.0013528718349399e-016 
		17 -1.2508455448968377e-017 21 -1.2508455448968377e-017 25 0;
	setAttr -s 7 ".kit[0:6]"  9 3 3 9 3 3 9;
	setAttr -s 7 ".kot[0:6]"  9 3 3 9 3 3 9;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL94";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.17113167764383544 4 0.17113167764383544 
		8 0.17113167764383544 12 0.17113167764383544 17 0.17113167764383544 21 0.17113167764383544 
		25 0.17113167764383544;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL95";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.19587370996100542 4 0.14432889955917674 
		8 0.14432889955917674 12 0.14432889955917674 17 0.26460012383010995 21 0.28178172729738593 
		25 0.19587370996100542;
	setAttr -s 7 ".kit[1:6]"  3 3 3 9 9 9;
	setAttr -s 7 ".kot[1:6]"  3 3 3 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL96";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.32938223676987038 4 0.35229104139290529 
		8 0.35229104139290529 12 0.35229104139290529 17 0.40383585179473386 21 0.97082876621484815 
		25 1.6638201060616526;
	setAttr -s 7 ".kit[0:6]"  9 3 3 3 1 9 9;
	setAttr -s 7 ".kot[0:6]"  9 3 3 3 1 9 9;
	setAttr -s 7 ".kix[4:6]"  0.0089550549164414406 0.002116423798725009 
		0.0019240223336964846;
	setAttr -s 7 ".kiy[4:6]"  0.99995988607406616 0.99999773502349854 
		0.99999815225601196;
	setAttr -s 7 ".kox[4:6]"  0.0089550679549574852 0.002116423798725009 
		0.0019240223336964846;
	setAttr -s 7 ".koy[4:6]"  0.99995988607406616 0.99999773502349854 
		0.99999815225601196;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA198";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -21.346586890289334 4 0.071605597996866902 
		8 0.071605597996866902 12 0.071605597996866902 17 36.383495096781608 21 35.197104894046767 
		25 -21.346586890289334;
	setAttr -s 7 ".kit[4:6]"  9 9 3;
	setAttr -s 7 ".kot[4:6]"  9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA199";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -27.556040092728718 4 -29.536781716608377 
		8 -29.536781716608377 12 -29.536781716608377 17 -18.745393384071228 21 -10.747663658393305 
		25 -27.556040092728718;
	setAttr -s 7 ".kit[4:6]"  9 9 3;
	setAttr -s 7 ".kot[4:6]"  9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.6437643349617042 4 2.6997484666798663 
		8 2.6997484666798663 12 2.6997484666798663 17 -15.609684396600677 21 -13.820238014462543 
		25 1.6437643349617042;
	setAttr -s 7 ".kit[1:6]"  3 3 3 9 9 9;
	setAttr -s 7 ".kot[1:6]"  3 3 3 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTL -n "animCurveTL97";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.35937499999999994 8 -0.35937499999999994 
		12 -0.35937499999999994 17 -0.35937499999999994 21 -0.35937499999999994 25 
		-0.35937499999999994;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL98";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 8 0 12 0 17 0 21 0 25 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL99";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 8 1 12 1 17 1 21 1 25 1;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL100";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.39843749999999989 8 0.39843749999999989 
		12 0.39843749999999989 17 0.39843749999999989 21 0.52324994411660786 25 0.39843749999999989;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL101";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 8 0 12 0 17 0 21 0.01188285397096478 
		25 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL102";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 8 1 12 1 17 1 21 0.96262695638445739 
		25 1;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL103";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.0051828179555656355 4 -0.0051828179555656355 
		8 -0.0051828179555656355 12 -0.0051828179555656355 17 -0.0051828179555656355 
		21 -0.0051828179555656355 25 -0.0051828179555656355;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL104";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.93474190233035526 4 0.93499774365992538 
		8 0.96525495747881407 12 0.93690386059881658 17 0.89622664926184625 21 0.97477484775693501 
		25 0.93474190233035526;
	setAttr -s 7 ".kit[1:6]"  9 1 1 9 1 1;
	setAttr -s 7 ".kot[1:6]"  9 1 1 9 1 1;
	setAttr -s 7 ".kix[0:6]"  0.078944846987724304 0.087062433362007141 
		0.11154475808143616 0.023593686521053314 0.078968927264213562 0.03238648921251297 
		0.032289847731590271;
	setAttr -s 7 ".kiy[0:6]"  -0.996878981590271 0.99620288610458374 
		0.9937593936920166 -0.99972164630889893 0.99687707424163818 0.99947541952133179 
		-0.99947851896286011;
	setAttr -s 7 ".kox[0:6]"  0.078944757580757141 0.087062433362007141 
		0.1115449070930481 0.023593809455633163 0.078968927264213562 0.032386120408773422 
		0.032290056347846985;
	setAttr -s 7 ".koy[0:6]"  -0.996878981590271 0.99620288610458374 
		0.9937593936920166 -0.99972164630889893 0.99687707424163818 0.99947541952133179 
		-0.99947851896286011;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.048737677951994719 4 0.25961134673615971 
		8 0.50118656925693328 12 0.67145344296133447 17 0.92814472099157019 21 1.1618802501270025 
		25 1.3831755472437768;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 3.8 4 3.8 8 3.8 12 3.8 17 3.8 
		21 3.8 25 3.8;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.62803185506048198 4 -0.62803185506048309 
		8 -0.62803185506048309 12 -0.62803185506048309 17 -0.62803185506048309 21 
		-0.62803185506048309 25 -0.62803185506048198;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.5944511152083107 4 -1.5944511152083107 
		8 -1.5944511152083107 12 -1.5944511152083107 17 -1.5944511152083107 21 -1.5944511152083107 
		25 -1.5944511152083107;
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
	setAttr ".ktv[0]"  0 4.0984482521620249;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 18.588300303494186;
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
	setAttr ".ktv[0]"  0 -22.686733334985114;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0579251312417477e-005;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA227";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.0984482535121209;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA229";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 18.588300300216801;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA230";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA232";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -22.686733333057838;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA233";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA234";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA235";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0579251312417477e-005;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA236";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA237";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA238";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 1.0579251312417477e-005;
createNode animCurveTA -n "animCurveTA239";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA240";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA241";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 1.0579251312417477e-005;
createNode animCurveTL -n "animCurveTL106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.99214331096561381;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL107";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.033841737269357866;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL108";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.027201153963313806;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA242";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.1805546814635164e-015;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA243";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.016273151455886e-014;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA244";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5.3764496942944332e-016;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL109";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99214413619678865;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL110";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.033851474715545553;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL111";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.0272011762672867;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA245";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 6.3611093629270264e-015;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA246";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.5281705937149269e-014;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA247";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.5365128437888133e-014;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL112";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.3705977767760478;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL113";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.1618658070195953;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL114";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.12044246479037771;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA248";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA249";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA250";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL115";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.3705978542308779;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL116";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.1618621235956237;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL117";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.12044250833667494;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA251";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA252";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA253";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL120";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL122";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA254";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -16.52954276994431 4 -1.1534230713933573 
		8 20.948251842550778 13 32.570214618694962 19 16.105396090074521 25 -16.52954276994431;
	setAttr -s 6 ".kit[0:5]"  3 9 1 9 1 3;
	setAttr -s 6 ".kot[0:5]"  3 9 1 9 1 3;
	setAttr -s 6 ".kix[2:5]"  0.30349326133728027 0.97444450855255127 
		0.25321635603904724 1;
	setAttr -s 6 ".kiy[2:5]"  0.95283359289169312 -0.22462835907936096 
		-0.96740967035293579 0;
	setAttr -s 6 ".kox[2:5]"  0.30349326133728027 0.97444450855255127 
		0.25321635603904724 1;
	setAttr -s 6 ".koy[2:5]"  0.95283359289169312 -0.22462835907936096 
		-0.96740967035293579 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA255";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -67.653067887905706 4 -66.618829114427896 
		8 -63.849006296420427 13 -62.537074126065242 19 -64.504409813287069 25 -67.653067887905706;
	setAttr -s 6 ".kit[0:5]"  3 9 9 1 1 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 1 1 3;
	setAttr -s 6 ".kix[3:5]"  0.99995630979537964 0.89448058605194092 
		1;
	setAttr -s 6 ".kiy[3:5]"  -0.0093493564054369926 -0.44710671901702881 
		0;
	setAttr -s 6 ".kox[3:5]"  0.99995630979537964 0.89448064565658569 
		1;
	setAttr -s 6 ".koy[3:5]"  -0.0093493610620498657 -0.44710665941238403 
		0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA256";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.043537438804616 4 14.672003975850425 
		8 -12.85148885626835 13 -28.099141669428061 19 -3.6428019088085897 25 27.043537438804616;
	setAttr -s 6 ".kit[0:5]"  3 9 1 9 1 3;
	setAttr -s 6 ".kot[0:5]"  3 9 1 9 1 3;
	setAttr -s 6 ".kix[2:5]"  0.3022773265838623 0.91587716341018677 
		0.26790100336074829 1;
	setAttr -s 6 ".kiy[2:5]"  -0.95322000980377197 0.40145868062973022 
		0.96344643831253052 0;
	setAttr -s 6 ".kox[2:5]"  0.30227714776992798 0.91587716341018677 
		0.26790112257003784 1;
	setAttr -s 6 ".koy[2:5]"  -0.95322006940841675 0.40145868062973022 
		0.96344643831253052 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA257";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 35.139693875492739 4 23.656138979991038 
		8 5.3553892827669811 13 -0.50383223898862761 25 35.139693875492739;
	setAttr -s 5 ".kit[0:4]"  3 9 1 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 1 9 3;
	setAttr -s 5 ".kix[2:4]"  0.59130054712295532 0.73690164089202881 
		1;
	setAttr -s 5 ".kiy[2:4]"  -0.80645126104354858 0.67599999904632568 
		0;
	setAttr -s 5 ".kox[2:4]"  0.59130030870437622 0.73690164089202881 
		1;
	setAttr -s 5 ".koy[2:4]"  -0.80645143985748291 0.67599999904632568 
		0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA258";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -57.72802362651467 4 -59.294428582217151 
		8 -60.741090802988317 13 -60.013001434177511 25 -57.72802362651467;
	setAttr -s 5 ".kit[0:4]"  3 1 1 1 3;
	setAttr -s 5 ".kot[0:4]"  3 1 1 1 3;
	setAttr -s 5 ".kix[1:4]"  0.95001488924026489 0.99704676866531372 
		0.98028528690338135 1;
	setAttr -s 5 ".kiy[1:4]"  -0.31220462918281555 -0.07679709792137146 
		0.19758731126785278 0;
	setAttr -s 5 ".kox[1:4]"  0.95001488924026489 0.99704676866531372 
		0.98028528690338135 1;
	setAttr -s 5 ".koy[1:4]"  -0.31220459938049316 -0.076796986162662506 
		0.19758737087249756 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA259";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -39.316058395421855 4 -27.663597113026423 
		8 -10.327366335125609 13 -7.6869239873650228 25 -39.316058395421855;
	setAttr -s 5 ".kit[0:4]"  3 1 1 1 3;
	setAttr -s 5 ".kot[0:4]"  3 1 1 1 3;
	setAttr -s 5 ".kix[1:4]"  0.42772921919822693 0.50645476579666138 
		0.55597877502441406 1;
	setAttr -s 5 ".kiy[1:4]"  0.90390694141387939 0.86226654052734375 
		-0.83119648694992065 0;
	setAttr -s 5 ".kox[1:4]"  0.42772912979125977 0.50645464658737183 
		0.55597883462905884 1;
	setAttr -s 5 ".koy[1:4]"  0.90390694141387939 0.86226660013198853 
		-0.83119642734527588 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA260";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 23.227906019181638 4 35.826908106204037 
		13 9.7196681956472037 17 10.212911120827139 25 23.227906019181638;
	setAttr -s 5 ".kit[1:4]"  1 9 9 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  0.88056486845016479 0.69600647687911987 
		0.8614923357963562 0.76125162839889526;
	setAttr -s 5 ".kiy[1:4]"  0.47392559051513672 -0.71803545951843262 
		0.50777053833007813 0.64845657348632813;
	setAttr -s 5 ".kox[1:4]"  0.88056486845016479 0.69600647687911987 
		0.8614923357963562 0.76125162839889526;
	setAttr -s 5 ".koy[1:4]"  0.47392567992210388 -0.71803545951843262 
		0.50777053833007813 0.64845657348632813;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA261";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 11.919434481921025 4 11.919434481921025 
		8 18.492481886989701 13 32.150679280273302 25 11.919434481921025;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA262";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -3.5678365513752466 4 -3.5678365513752466 
		13 -3.7367369042103142 25 -3.5678365513752466;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA263";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.1122577728711633 4 1.1122577728711633 
		13 0.042135046293656692 25 1.1122577728711633;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA264";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -8.9383319261341718 4 2.0122658861677842 
		13 -14.635189420707091 25 -8.9383319261341718;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA265";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 3.317816178207873 4 3.7854487639118912 
		13 3.4178475952222676 25 3.317816178207873;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA266";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.9149992340738797 4 -0.58472330047072818 
		13 -1.7299985409740424 25 -1.9149992340738797;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA267";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 15.87512600911526 4 -5.3173623297779189 
		13 12.730597517563929 25 15.87512600911526;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA268";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -29.008974896990431;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA269";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 19.121175982408229;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA270";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 18.989800450806971;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA271";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -7.6785820447977198;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA272";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.7605391839518916;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA273";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 28.344788980746365;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA274";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA275";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA276";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA277";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 3.7369773590038604 5 10.217596128632959 
		16 10.217596128632959;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA278";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.659639826495585 5 26.093159977788364 
		16 26.093159977788364;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA279";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.2144708350701849 5 21.489643652879568 
		16 21.489643652879568;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA280";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 10.940041621791822 5 14.242534406706035 
		16 14.242534406706035;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA281";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 25.143086799181098 5 23.511048863515079 
		16 23.511048863515079;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA282";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 23.668193569167805 5 31.673384476202461 
		16 31.673384476202461;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA283";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA284";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA285";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 26.049252495284946;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA286";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 0 13 0 25 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA287";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 0 13 0 25 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA288";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -26.770100963031059 4 -26.770100963031059 
		13 -26.770100963031059 25 -26.770100963031059;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA289";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -5.0665631006766301 4 -4.4485514571531786 
		13 -3.8396511808571554 25 -5.0665631006766301;
	setAttr -s 4 ".kit[1:3]"  1 9 3;
	setAttr -s 4 ".kot[1:3]"  1 9 3;
	setAttr -s 4 ".kix[1:3]"  0.99732226133346558 0.9998813271522522 
		1;
	setAttr -s 4 ".kiy[1:3]"  0.07313179224729538 -0.015407225117087364 
		0;
	setAttr -s 4 ".kox[1:3]"  0.99732226133346558 0.9998813271522522 
		1;
	setAttr -s 4 ".koy[1:3]"  0.073131769895553589 -0.015407225117087364 
		0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA290";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -4.8799423443842498 4 -4.2223666027052058 
		13 -3.5873536171493265 25 -4.8799423443842498;
	setAttr -s 4 ".kit[1:3]"  1 9 3;
	setAttr -s 4 ".kot[1:3]"  1 9 3;
	setAttr -s 4 ".kix[1:3]"  0.9937821626663208 0.99986559152603149 
		1;
	setAttr -s 4 ".kiy[1:3]"  0.11134196072816849 -0.016393313184380531 
		0;
	setAttr -s 4 ".kox[1:3]"  0.9937821626663208 0.99986559152603149 
		1;
	setAttr -s 4 ".koy[1:3]"  0.11134195327758789 -0.016393313184380531 
		0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA291";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.7020325654793798 4 2.6485813315951714 
		13 2.5793685121245775 25 2.7020325654793798;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA292";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 0 13 0 25 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA293";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 0 13 0 25 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA294";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 0 13 0 25 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "lsa_Head_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.74744594995722091;
createNode animCurveTA -n "lsa_Head_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.5113994281892627;
createNode animCurveTA -n "lsa_Head_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 11.772785675059353;
createNode animCurveTA -n "animCurveTA298";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 0 13 0 25 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA299";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 7.2710204402575629 4 7.2710204402575629 
		13 7.2710204402575629 25 7.2710204402575629;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA300";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.8797837837837832 4 -1.8797837837837832 
		13 -1.8797837837837832 25 -1.8797837837837832;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA301";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -7.2356183565074765;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA302";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.775875410252576;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA303";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 36.102571754571038;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA304";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -35.160370854790166;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA305";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 20.563693271869273;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA306";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 22.57991983767285;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA307";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA308";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA309";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 21.110481929355618;
	setAttr ".pst" 4;
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
	setAttr -s 102 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".top" 479;
	setAttr ".rght" 639;
	setAttr ".fs" 1;
	setAttr ".ef" 10;
select -ne :defaultRenderQuality;
	setAttr ".eaa" 1;
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
connectAttr "lsa_loco_walkSource.st" "clipLibrary1.st[0]";
connectAttr "lsa_loco_walkSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL83.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL84.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL86.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA191.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU17.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU18.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU19.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU20.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU21.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU22.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU23.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU24.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA192.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA193.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA194.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL88.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL89.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL90.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL91.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL92.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL93.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA195.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA196.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA197.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL94.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL95.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL96.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA198.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA199.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA200.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA201.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA202.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA203.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA204.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA205.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA206.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA207.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA208.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA209.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA210.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA211.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA212.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL97.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL98.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL99.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL100.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL101.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL102.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL103.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL104.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL105.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA213.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA214.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA215.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA216.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA217.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA218.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA219.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA220.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA221.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA222.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA223.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA224.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA225.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA226.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA227.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA228.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA229.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA230.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA231.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA232.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA233.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA234.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA235.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA236.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA237.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA238.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA239.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA240.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA241.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL106.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL107.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL108.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA242.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA243.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA244.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL109.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL110.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL111.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA245.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA246.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA247.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL112.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL113.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL114.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA248.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA249.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA250.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL115.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL116.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL117.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA251.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA252.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA253.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL118.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL119.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL120.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL121.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL122.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL123.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA254.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA255.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA256.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA257.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA258.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA259.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA260.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA261.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA262.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA263.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA264.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA265.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA266.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA267.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA268.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA269.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA270.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA271.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA272.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA273.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA274.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA275.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA276.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA277.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA278.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA279.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA280.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA281.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA282.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA283.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA284.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA285.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA286.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA287.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA288.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA289.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA290.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA291.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA292.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA293.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA294.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "lsa_Head_rotateX.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "lsa_Head_rotateY.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "lsa_Head_rotateZ.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA298.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA299.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA300.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA301.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA302.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA303.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA304.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA305.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA306.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA307.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA308.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA309.a" "clipLibrary1.cel[0].cev[167].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[3].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[4].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[5].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[5].olnk";
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
// End of lsa_loco_walk.ma
