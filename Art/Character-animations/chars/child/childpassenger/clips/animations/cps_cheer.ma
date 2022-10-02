//Maya ASCII 4.0 scene
//Name: cps_cheer.ma
//Last modified: Wed, Aug 14, 2002 10:30:21 AM
requires maya "4.0";
requires "p3dDeformer" "18.0.0.0";
requires "p3dmayaexp" "18.2";
requires "p3dSimpleShader" "18.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "cps_cheerSource";
	setAttr ".ihi" 0;
	setAttr ".du" 25;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTL -n "animCurveTL207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTL -n "animCurveTL208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0008123122260844 25 1.0008123122260844;
createNode animCurveTL -n "animCurveTL209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTL -n "animCurveTL210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.81296617659799253 25 0.81296617659799253;
createNode animCurveTA -n "animCurveTA578";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTU -n "animCurveTU39";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTU -n "animCurveTU40";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTU -n "animCurveTU41";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTU -n "animCurveTU42";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTU -n "animCurveTU43";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTU -n "animCurveTU44";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTU -n "animCurveTU45";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTU -n "animCurveTU46";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA579";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA580";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA581";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTL -n "animCurveTL211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTL -n "animCurveTL212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTL -n "animCurveTL213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTL -n "animCurveTL214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.041 5 2.041 10 2.041 18 2.041 
		25 2.041;
createNode animCurveTL -n "animCurveTL215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.005 5 1.005 10 1.005 18 1.005 
		25 1.005;
createNode animCurveTL -n "animCurveTL216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.409 5 2.409 10 2.409 18 2.409 
		25 2.409;
createNode animCurveTA -n "animCurveTA582";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -28.33147073208438 5 -28.33147073208438 
		10 -28.33147073208438 18 -28.33147073208438 25 -28.33147073208438;
createNode animCurveTA -n "animCurveTA583";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -10.113681911874204 5 -10.113681911874204 
		10 -10.113681911874204 18 -10.113681911874204 25 -10.113681911874204;
createNode animCurveTA -n "animCurveTA584";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 3.6896128937020114 5 3.6896128937020114 
		10 3.6896128937020114 18 3.6896128937020114 25 3.6896128937020114;
createNode animCurveTL -n "animCurveTL217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.4790535543793637 5 2.479 10 
		2.479 18 2.479 25 2.4790535543793637;
createNode animCurveTL -n "animCurveTL218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.988 5 0.988 10 0.988 18 0.988 
		25 0.988;
createNode animCurveTL -n "animCurveTL219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.3690000000000002 5 2.3690000000000002 
		10 2.3690000000000002 18 2.3690000000000002 25 2.3690000000000002;
createNode animCurveTA -n "animCurveTA585";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -27.647037481197401 5 -27.647037481197401 
		10 -27.647037481197401 18 -27.647037481197401 25 -27.647037481197401;
createNode animCurveTA -n "animCurveTA586";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.6471102606573034 5 1.6471102606573034 
		10 1.6471102606573034 18 1.6471102606573034 25 1.6471102606573034;
createNode animCurveTA -n "animCurveTA587";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 7.7922141916432519 5 7.7922141916432519 
		10 7.7922141916432519 18 7.7922141916432519 25 7.7922141916432519;
createNode animCurveTA -n "animCurveTA588";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA589";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA590";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA591";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA592";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA593";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA594";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA595";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA596";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA597";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA598";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA599";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0.20576416135044676 10 0.20576416135044676 
		18 0.20576416135044676 25 0;
createNode animCurveTL -n "animCurveTL221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0.52647512422167797 10 0.52647512422167797 
		18 0.52647512422167797 25 0;
createNode animCurveTL -n "animCurveTL222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 5 1.1348308188840699 10 1.1348308188840699 
		18 1.1348308188840699 25 1;
createNode animCurveTL -n "animCurveTL223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 -0.097466557943624466 10 
		-0.097466557943624466 18 -0.097466557943624466 25 0;
createNode animCurveTL -n "animCurveTL224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0.89926276112817349 10 0.89926276112817349 
		18 0.89926276112817349 25 0;
createNode animCurveTL -n "animCurveTL225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 5 0.80168990793572048 10 0.80168990793572048 
		18 0.80168990793572048 25 1;
createNode animCurveTL -n "animCurveTL226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.259 5 2.259 10 2.259 18 2.259 
		25 2.259;
createNode animCurveTL -n "animCurveTL227";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.349 5 1.349 10 1.349 18 1.349 
		25 1.349;
createNode animCurveTL -n "animCurveTL228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.835 5 1.835 10 1.835 18 1.835 
		25 1.835;
createNode animCurveTA -n "animCurveTA600";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -26.004389268796515 5 -21.263962797545197 
		10 -17.651895147650801 18 -17.651895147650801 25 -26.004389268796515;
createNode animCurveTA -n "animCurveTA601";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 -0.97909286329841305 10 -3.1055351168995005 
		18 -3.1055351168995005 25 0;
createNode animCurveTA -n "animCurveTA602";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 1.9390655743912359 10 -2.2573807073908529 
		18 -2.2573807073908529 25 0;
createNode animCurveTA -n "animCurveTA603";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA604";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA605";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA606";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA607";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA608";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA609";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA610";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA611";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA612";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA613";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA614";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA615";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA616";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA617";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA618";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA619";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA620";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA621";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA622";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA623";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 -5.6803276403432976 10 -5.6803276403432976 
		18 -5.6803276403432976 25 0;
createNode animCurveTA -n "animCurveTA624";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 -6.1570151121354497 10 -6.1570151121354497 
		18 -6.1570151121354497 25 0;
createNode animCurveTA -n "animCurveTA625";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 5.3480278027016865 10 5.3480278027016865 
		18 5.3480278027016865 25 0;
createNode animCurveTA -n "animCurveTA626";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 18 0 25 0;
createNode animCurveTA -n "animCurveTA627";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 18 0 25 0;
createNode animCurveTA -n "animCurveTA628";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 18 0 25 0;
createNode animCurveTL -n "animCurveTL229";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 -0.36701121502835038 1 -0.44173244310269666 
		2 -0.52145450898822332 3 -0.58471452836562943 4 -0.60933831347788125 5 -0.57987358986886084 
		6 -0.48718249174811579 7 -0.39148936184273597 8 -0.36519609167458439 9 -0.41074704815046775 
		10 -0.46038514626844718 11 -0.47819845446662956 12 -0.48852046717746278 13 
		-0.4926427821363612 14 -0.49171023059316554 15 -0.48683037626259762 16 -0.47914843614662433 
		17 -0.46989218896536983 18 -0.46038514626844718 19 -0.44188631903156106 20 
		-0.41179467958921351 21 -0.380828059001245 22 -0.35785405416433802 23 -0.34807087932658448 
		24 -0.35223316170648616 25 -0.36701121502835038;
createNode animCurveTL -n "animCurveTL230";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 -0.81616479626369709 1 -0.74043891835263775 
		2 -0.65666227952679868 3 -0.55433757457949551 4 -0.43423498910426156 5 -0.30157482054378265 
		6 -0.12122449279007569 7 0.1252434532553984 8 0.39007237129165739 9 0.59607483775622994 
		10 0.66582609160615636 11 0.65094436047349835 12 0.64503631601899625 13 0.64581941015688982 
		14 0.65097414319475089 15 0.65809807666115316 16 0.66468832443799808 17 0.66814960123306866 
		18 0.66582609160615636 19 0.60306604337337244 20 0.44440286500360887 21 0.21687578692930568 
		22 -0.051190270312930226 23 -0.33092084521450987 24 -0.5943707284454679 25 
		-0.81616479626369709;
createNode animCurveTL -n "animCurveTL231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0.15073241025578563 1 0.21241819367092774 
		2 0.2728258647117332 3 0.33233389659240353 4 0.38710067703089368 5 0.43205132269518026 
		6 0.46940810448600651 7 0.49770006224746566 8 0.51246675438117073 9 0.51320694847823645 
		10 0.50288521570648859 11 0.49023663021964753 12 0.48085148741116995 13 0.47495202008852822 
		14 0.47268608628504782 15 0.47419462753153807 16 0.47963716345089963 17 0.4891719100405631 
		18 0.50288521570648859 19 0.51562569446322892 20 0.51621347091575431 21 0.49514427563664781 
		22 0.44554232997822807 23 0.36619691147793504 24 0.26330190531397324 25 0.15073241025578563;
createNode animCurveTA -n "animCurveTA629";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 -15.218182696168652 1 -10.865743400913059 
		2 -3.6832217777292535 3 3.3163066157628704 4 7.1254647597789678 5 4.0929380433088776 
		6 -15.112970958688129 7 -54.394686604749609 8 -102.36124921231284 9 -140.2715361993636 
		10 23.590216982631301 11 21.346201220197209 12 19.733548058493874 13 18.754266767447003 
		14 18.408929057898042 15 18.699901427067484 16 19.637259720714887 17 21.248105699156206 
		18 23.590216982631301 19 -148.5264318101764 20 -131.39184959536709 21 -107.51015382076628 
		22 -80.842694643879227 23 -55.188135755717155 24 -32.884841166197852 25 -15.218182696168652;
createNode animCurveTA -n "animCurveTA630";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 1.949047094653634 1 14.778392341007617 
		2 28.875988582379406 3 42.90465719171366 4 54.960434974974987 5 63.000062550729929 
		6 65.923821145438467 7 65.169752113535921 8 60.57103845215574 9 53.422633929609958 
		10 130.8666441697722 11 131.69342911023369 12 132.27756307955818 13 132.6199732924631 
		14 132.72463602086376 15 132.59621456939132 16 132.23929021276984 17 131.65940424978768 
		18 130.8666441697722 19 49.384890656433939 20 47.964601124477092 21 43.858885948893843 
		22 36.245629498910326 23 25.539957244298229 24 13.402867580452535 25 1.949047094653634;
createNode animCurveTA -n "animCurveTA631";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 32.560381950754014 1 35.279816544414011 
		2 39.011444727956878 3 41.895385023282394 4 42.627054167756022 5 39.448086898351008 
		6 25.125472146815326 7 -4.6564439771862194 8 -40.581130550504632 9 -67.045262697886955 
		10 103.65299377635259 11 104.05335852959448 12 103.99114179264646 13 103.63742758516564 
		14 103.16332784072144 15 102.74179220203929 16 102.55154477355131 17 102.78384598367178 
		18 103.65299377635259 19 -70.492741788641354 20 -56.636824739831177 21 -37.459698079642244 
		22 -16.766966200932455 23 2.3809246186843507 24 18.865518638530972 25 32.560381950754014;
createNode animCurveTL -n "animCurveTL232";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0.31104933183696742 1 0.34735229972162074 
		2 0.40048599334201584 3 0.46932373008497169 4 0.54008829543630898 5 0.59278219832823031 
		6 0.61508140901336217 7 0.62283240746558932 8 0.63880161251106815 9 0.66915708852486833 
		10 0.69775739984610485 11 0.71534153747833895 12 0.72900639996377781 13 0.7377111428491202 
		14 0.74108075950869823 15 0.73900064271318178 16 0.73133702551264546 17 0.71777293700108891 
		18 0.69775739984610485 19 0.66701651033276388 20 0.6235870179778561 21 0.57010256674130066 
		22 0.50913084571342093 23 0.44340107426170167 24 0.37608650905404661 25 0.31104933183696742;
createNode animCurveTL -n "animCurveTL233";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 -0.77985659578283428 1 -0.72289668993894707 
		2 -0.66187096581713534 3 -0.6058519384577612 4 -0.562152252374849 5 -0.53477580039380568 
		6 -0.5266429184430852 7 -0.53697825128392762 8 -0.55925498985370392 9 -0.58122830060789565 
		10 -0.5926247062102612 11 -0.59490631058195642 12 -0.59421655809514795 13 
		-0.59190754163719461 14 -0.58905950548690511 15 -0.58662912515414178 16 -0.58560281484357035 
		17 -0.5871290572858372 18 -0.5926247062102612 19 -0.60361424760130578 20 
		-0.62065468978747906 21 -0.64385809070566835 22 -0.67288160584597567 23 -0.70664520689246135 
		24 -0.74321334371036074 25 -0.77985659578283428;
createNode animCurveTL -n "animCurveTL234";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0.31581342454007461 1 0.38766622064730955 
		2 0.46696202083664906 3 0.53053442023106401 4 0.55919901915454584 5 0.53765635811635937 
		6 0.44601949245178679 7 0.30113134841366435 8 0.14176722655462379 9 0.0038756235174773933 
		10 -0.078911332333184106 11 -0.11567982576743688 12 -0.13842753767898991 
		13 -0.14907140673345887 14 -0.14939898991028319 15 -0.14104882600246998 16 
		-0.12553470648801571 17 -0.10431422254520527 18 -0.078911332333184106 19 
		-0.043749999510892472 20 0.00536374403213042 21 0.06447857878323203 22 0.1293686631234047 
		23 0.19566054168954136 24 0.25909193421885407 25 0.31581342454007461;
createNode animCurveTA -n "animCurveTA632";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 -10.02028477019989 1 -9.2485894092518475 
		2 -7.309372645907545 3 -5.2839459543577192 4 -4.7293817939901572 5 -6.3650958439597325 
		6 -8.9180452614252133 7 -13.29124004378289 8 -19.097768994919651 9 -24.647348872091861 
		10 -28.319286952927882 11 -30.387880353025157 12 -32.090481099668672 13 -33.406728532005317 
		14 -34.314230885747428 15 -34.796290458652713 16 -34.84179574437789 17 -34.439167127942106 
		18 -33.567880551897417 19 -31.897054767095717 20 -29.26443248442067 21 -25.896019015840537 
		22 -22.029474812034497 23 -17.916210094403613 24 -13.821061695106026 25 -10.02028477019989;
createNode animCurveTA -n "animCurveTA633";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0.84732927928403023 1 -13.519289480015093 
		2 -31.617058192709521 3 -49.875348324988487 4 -64.096855130582199 5 -70.048423794927274 
		6 -63.542996649823984 7 -46.99834795338441 8 -26.384859632916839 9 -7.6114199038078114 
		10 3.6139709286652715 11 7.862315469198613 12 9.7989468089726444 13 9.9575833235134414 
		14 8.8661833013910645 15 7.0555602919099085 16 5.0617118166006225 17 3.4226281572332886 
		18 2.6696833620039477 19 2.5158694694701831 20 2.3224759515034172 21 2.0856271022752462 
		22 1.8089882878004524 23 1.5022572831681218 24 1.1779465924907586 25 0.84732927928403023;
createNode animCurveTA -n "animCurveTA634";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 -48.672083315317913 1 -63.665333339069967 
		2 -78.573895748436357 3 -90.637858152003531 4 -97.787889047145939 5 -98.88019301248481 
		6 -94.2474566463288 7 -83.93742996153081 8 -70.348943063763258 9 -57.342454933224339 
		10 -49.107582874111088 11 -45.529383373309187 12 -43.421544245380552 13 -42.464727064445 
		14 -42.329596646034098 15 -42.699744627920708 16 -43.278517861375569 17 -43.781584244318083 
		18 -43.917381602750837 19 -43.9288793991117 20 -44.245642449471838 21 -44.830853573407914 
		22 -45.638456096635771 23 -46.606350029236147 24 -47.652172762886671 25 -48.672083315317913;
createNode animCurveTL -n "animCurveTL235";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.1657315743829622 5 1.8916913695375659 
		10 2.1465843620859624 18 2.1465843620859624 25 2.1657315743829622;
createNode animCurveTL -n "animCurveTL236";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.6749265988332942 5 1.8243708064004398 
		10 3.2182032994517091 18 3.2182032994517091 25 1.6749265988332942;
	setAttr -s 5 ".kit[2:4]"  1 1 9;
	setAttr -s 5 ".kot[2:4]"  1 1 9;
	setAttr -s 5 ".kix[2:4]"  0.04708431288599968 0.061906162649393082 
		0.0015119326999410987;
	setAttr -s 5 ".kiy[2:4]"  0.99889093637466431 -0.99808198213577271 
		-0.99999886751174927;
	setAttr -s 5 ".kox[2:4]"  0.047084368765354156 0.061906225979328156 
		0.0015119326999410987;
	setAttr -s 5 ".koy[2:4]"  0.99889093637466431 -0.99808198213577271 
		-0.99999886751174927;
createNode animCurveTL -n "animCurveTL237";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.6001625185510933 5 2.725279528568318 
		10 2.6379651452296771 18 2.6379651452296771 25 2.6001625185510933;
createNode animCurveTA -n "animCurveTA635";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -33.734888782993906 5 -16.867574422197485 
		10 -153.4679620702905 18 -153.4679620702905 25 -33.734888782993906;
	setAttr -s 5 ".kit[2:4]"  1 1 9;
	setAttr -s 5 ".kot[2:4]"  1 1 9;
	setAttr -s 5 ".kix[2:4]"  0.64771395921707153 0.69448459148406982 
		0.1109672337770462;
	setAttr -s 5 ".kiy[2:4]"  -0.76188355684280396 0.71950757503509521 
		0.9938240647315979;
	setAttr -s 5 ".kox[2:4]"  0.64771413803100586 0.6944846510887146 
		0.1109672337770462;
	setAttr -s 5 ".koy[2:4]"  -0.76188349723815918 0.71950751543045044 
		0.9938240647315979;
createNode animCurveTA -n "animCurveTA636";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 14.870586397896902 5 69.62001792398236 
		10 42.252659669767638 18 42.252659669767638 25 14.870586397896902;
	setAttr -s 5 ".kit[2:4]"  1 1 9;
	setAttr -s 5 ".kot[2:4]"  1 1 9;
	setAttr -s 5 ".kix[2:4]"  0.956062912940979 0.99769532680511475 
		0.43873921036720276;
	setAttr -s 5 ".kiy[2:4]"  -0.29316163063049316 -0.067852959036827087 
		-0.89861440658569336;
	setAttr -s 5 ".kox[2:4]"  0.95606285333633423 0.99769532680511475 
		0.43873921036720276;
	setAttr -s 5 ".koy[2:4]"  -0.2931617796421051 -0.067852959036827087 
		-0.89861440658569336;
createNode animCurveTA -n "animCurveTA637";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 30.592169336881899 5 39.836671375944633 
		10 -82.199718590055312 18 -82.199718590055312 25 30.592169336881899;
	setAttr -s 5 ".kit[2:4]"  1 1 9;
	setAttr -s 5 ".kot[2:4]"  1 1 9;
	setAttr -s 5 ".kix[2:4]"  0.84115999937057495 0.82603424787521362 
		0.11770423501729965;
	setAttr -s 5 ".kiy[2:4]"  -0.5407862663269043 0.56361991167068481 
		0.99304866790771484;
	setAttr -s 5 ".kox[2:4]"  0.84116023778915405 0.82603412866592407 
		0.11770423501729965;
	setAttr -s 5 ".koy[2:4]"  -0.54078590869903564 0.56362009048461914 
		0.99304866790771484;
createNode animCurveTL -n "animCurveTL238";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 3.6370999456408879 5 3.8158585252305546 
		10 3.9252050618951104 18 3.9252050618951104 25 3.6370999456408879;
createNode animCurveTL -n "animCurveTL239";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.7841255587132463 5 2.2834484450413148 
		10 1.6501609414994698 18 1.6501609414994698 25 1.7841255587132463;
createNode animCurveTL -n "animCurveTL240";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.7027068055413355 5 2.8211136068275962 
		10 2.3217942097887367 18 2.3217942097887367 25 2.7027068055413355;
createNode animCurveTA -n "animCurveTA638";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -26.203413720634714 5 -5.3917758644822982 
		10 -29.508835061844565 18 -35.394494402858903 25 -26.203413720634714;
createNode animCurveTA -n "animCurveTA639";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -14.791961579779635 5 -80.666029490369027 
		10 -3.4664033146433972 18 -4.2738850638496206 25 -14.791961579779635;
createNode animCurveTA -n "animCurveTA640";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -45.895436695401962 5 -80.177173082854338 
		10 -57.071045207711251 18 -51.853689422322226 25 -45.895436695401962;
createNode animCurveTL -n "animCurveTL241";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.063331173333856433 5 0.65952286308309716 
		10 0.35758686109505894 18 0.35758686109505894 25 0.063331173333856433;
createNode animCurveTL -n "animCurveTL242";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.69960805773293522 5 -1.1428521038568509 
		10 -0.30038942218951969 18 -0.30038942218951969 25 -0.69960805773293522;
createNode animCurveTL -n "animCurveTL243";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.66762598980258558 5 -0.71803377590485828 
		10 -1.48476626935041 18 -1.48476626935041 25 -0.66762598980258558;
createNode animCurveTL -n "animCurveTL244";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.31054502397108613 5 -0.44830619905945152 
		10 -0.60278975365769516 18 -0.60278975365769516 25 -0.31054502397108613;
createNode animCurveTL -n "animCurveTL245";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.55640530640609931 5 -0.81127212092500245 
		10 -1.1291132058898594 18 -1.1291132058898594 25 -0.55640530640609931;
createNode animCurveTL -n "animCurveTL246";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.57914122395678103 5 -0.45670938376485887 
		10 1.6415710086978639 18 1.6415710086978639 25 -0.57914122395678103;
createNode animCurveTA -n "animCurveTA641";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 12.253734489678925 5 12.253734489678925 
		10 12.253734489678925 18 12.253734489678925 25 12.253734489678925;
createNode animCurveTA -n "animCurveTA642";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -65.746751280844975 5 -65.746751280844961 
		10 -65.746751280844961 18 -65.746751280844961 25 -65.746751280844975;
createNode animCurveTA -n "animCurveTA643";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 18 0 25 0;
createNode animCurveTA -n "animCurveTA644";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.061808866237340665 5 -0.061808866237337522 
		10 -0.061808866237337522 18 -0.061808866237337522 25 -0.061808866237340665;
createNode animCurveTA -n "animCurveTA645";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -59.058178941076754 5 -59.058178941076754 
		10 -59.058178941076754 18 -59.058178941076754 25 -59.058178941076754;
createNode animCurveTA -n "animCurveTA646";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 16.57914742975785 5 16.579147429757843 
		10 16.579147429757843 18 16.579147429757843 25 16.57914742975785;
createNode animCurveTA -n "animCurveTA647";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.5572674112203657 5 8.5572674112203622 
		10 8.5572674112203622 18 8.5572674112203622 25 8.5572674112203657;
createNode animCurveTA -n "animCurveTA648";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 15.711328223519061 5 15.711328223519057 
		10 15.711328223519057 18 15.711328223519057 25 15.711328223519061;
createNode animCurveTA -n "animCurveTA649";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 18 0 25 0;
createNode animCurveTA -n "animCurveTA650";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 18 0 25 0;
createNode animCurveTA -n "animCurveTA651";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 18 0 25 0;
createNode animCurveTA -n "animCurveTA652";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 18 0 25 0;
createNode animCurveTA -n "animCurveTA653";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 18 0 25 0;
createNode animCurveTA -n "animCurveTA654";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 18 0 25 0;
createNode animCurveTA -n "animCurveTA655";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -177.04830761929054 5 240.5640428837994 
		10 240.5640428837994 18 240.5640428837994 25 -177.04830761929054;
createNode animCurveTA -n "animCurveTA656";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.7228482558439 5 75.726538825832819 
		10 75.726538825832819 18 75.726538825832819 25 27.7228482558439;
createNode animCurveTA -n "animCurveTA657";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 21.576484776388227 5 371.13058756605716 
		10 371.13058756605716 18 371.13058756605716 25 21.576484776388227;
createNode animCurveTA -n "animCurveTA658";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 18 0 25 0;
createNode animCurveTA -n "animCurveTA659";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 18 0 25 0;
createNode animCurveTA -n "animCurveTA660";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.080064458283051 5 21.582955903178057 
		10 21.582955903178057 18 21.582955903178057 25 27.080064458283051;
createNode animCurveTA -n "animCurveTA661";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA662";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA663";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA664";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA665";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA666";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 25 13.994403295754109;
createNode animCurveTA -n "animCurveTA667";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA668";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA669";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 25 13.994403295754109;
createNode animCurveTA -n "animCurveTA670";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 18 0 25 0;
createNode animCurveTA -n "animCurveTA671";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 18 0 25 0;
createNode animCurveTA -n "animCurveTA672";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.911632519594587 5 41.522009045435631 
		10 41.522009045435631 18 41.522009045435631 25 27.911632519594587;
createNode animCurveTA -n "animCurveTA673";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 18 0 25 0;
createNode animCurveTA -n "animCurveTA674";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 18 0 25 0;
createNode animCurveTA -n "animCurveTA675";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 18 0 25 0;
createNode animCurveTA -n "animCurveTA676";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.373100660218926 5 -5.2012325927732475 
		10 -7.845442765982777 18 -7.845442765982777 25 -1.373100660218926;
createNode animCurveTA -n "animCurveTA677";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.38374158911587308 5 3.59157551374651 
		10 -11.882135763740605 18 -11.882135763740605 25 0.38374158911587308;
createNode animCurveTA -n "animCurveTA678";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.96901743689791298 5 7.6207226817176146 
		10 8.6535819526083806 18 8.6535819526083806 25 0.96901743689791298;
createNode animCurveTA -n "animCurveTA679";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.2144674450583466 5 38.726559490136466 
		10 30.272924325999188 18 30.272924325999188 25 -2.2144674450583466;
createNode animCurveTA -n "animCurveTA680";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -5.3642380392152509 5 9.8620595055485065 
		10 -9.5717964874838355 18 -9.5717964874838355 25 -5.3642380392152509;
createNode animCurveTA -n "animCurveTA681";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -3.2584064202075544 5 -0.17317133550605807 
		10 -0.48016274534425485 18 -0.48016274534425485 25 -3.2584064202075544;
createNode animCurveTA -n "animCurveTA682";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 4.9690701715193732 5 4.8714700432790456 
		10 4.8714700432790456 18 4.8714700432790456 25 4.9690701715193732;
createNode animCurveTA -n "animCurveTA683";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.9904681746768538 5 11.783606204137085 
		10 11.783606204137085 18 11.783606204137085 25 -2.9904681746768538;
createNode animCurveTA -n "animCurveTA684";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 14.780225156536885 5 7.5423825101935913 
		10 7.5423825101935913 18 7.5423825101935913 25 14.780225156536885;
createNode animCurveTA -n "animCurveTA685";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.211833892135727 5 -0.65411118813394853 
		10 -0.47992760676032381 18 -0.47992760676032381 25 2.211833892135727;
createNode animCurveTA -n "animCurveTA686";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.7086730360615547 5 17.221972152012309 
		10 8.8013398664958356 18 8.8013398664958356 25 1.7086730360615547;
createNode animCurveTA -n "animCurveTA687";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.7082804953288213 5 1.8328448351836006 
		10 3.4303147870108659 18 3.4303147870108659 25 2.7082804953288213;
createNode animCurveTA -n "animCurveTA688";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 18 0 25 0;
createNode animCurveTA -n "animCurveTA689";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 18 0 25 0;
createNode animCurveTA -n "animCurveTA690";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 33.429092416277157 5 26.954295116358157 
		10 26.954295116358157 18 26.954295116358157 25 33.429092416277157;
createNode animCurveTA -n "animCurveTA691";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -171.24588681251637 5 167.69018859387918 
		10 167.69018859387918 18 167.69018859387918 25 -171.24588681251637;
createNode animCurveTA -n "animCurveTA692";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 23.263402056531088 5 28.116333074727166 
		10 28.116333074727166 18 28.116333074727166 25 23.263402056531088;
createNode animCurveTA -n "animCurveTA693";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 20.166277752815624 5 25.955289707488308 
		10 25.955289707488308 18 25.955289707488308 25 20.166277752815624;
createNode animCurveTA -n "animCurveTA694";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 18 0 25 0;
createNode animCurveTA -n "animCurveTA695";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 18 0 25 0;
createNode animCurveTA -n "animCurveTA696";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 17.254116939558369 5 35.101870510522104 
		10 35.101870510522104 18 35.101870510522104 25 17.254116939558369;
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
connectAttr "cps_cheerSource.st" "clipLibrary1.st[0]";
connectAttr "cps_cheerSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL206.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL207.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL208.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL209.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL210.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA578.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU39.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU40.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU41.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU42.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU43.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU44.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU45.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU46.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA579.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA580.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA581.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL211.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL212.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL213.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL214.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL215.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL216.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA582.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA583.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA584.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL217.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL218.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL219.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA585.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA586.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA587.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA588.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA589.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA590.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA591.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA592.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA593.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA594.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA595.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA596.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA597.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA598.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA599.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL220.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL221.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL222.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL223.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL224.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL225.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL226.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL227.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL228.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA600.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA601.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA602.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA603.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA604.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA605.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA606.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA607.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA608.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA609.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA610.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA611.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA612.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA613.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA614.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA615.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA616.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA617.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA618.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA619.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA620.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA621.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA622.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA623.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA624.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA625.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA626.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA627.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA628.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL229.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL230.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL231.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA629.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA630.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA631.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL232.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL233.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL234.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA632.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA633.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA634.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL235.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL236.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL237.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA635.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA636.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA637.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL238.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL239.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL240.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA638.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA639.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA640.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL241.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL242.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL243.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL244.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL245.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL246.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA641.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA642.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA643.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA644.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA645.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA646.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA647.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA648.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA649.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA650.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA651.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA652.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA653.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA654.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA655.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA656.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA657.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA658.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA659.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA660.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA661.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA662.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA663.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA664.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA665.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA666.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA667.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA668.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA669.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA670.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA671.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA672.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA673.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA674.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA675.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA676.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA677.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA678.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA679.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA680.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA681.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA682.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA683.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA684.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA685.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA686.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA687.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA688.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA689.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA690.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA691.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA692.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA693.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA694.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA695.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA696.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of cps_cheer.ma
