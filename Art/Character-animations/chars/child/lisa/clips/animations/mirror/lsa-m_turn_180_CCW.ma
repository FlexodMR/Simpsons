//Maya ASCII 4.0 scene
//Name: lsa-m_turn_180_CCW.ma
//Last modified: Mon, Jun 10, 2002 01:22:35 PM
requires maya "4.0";
requires "p3dSimpleShader" "17.1";
requires "p3dmayaexp" "17.3";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "lsa_turn_180_CCW";
	setAttr ".ihi" 0;
	setAttr ".du" 40;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL206";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL207";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 -0.014316504810511759 1 -0.016384106205918906 
		2 -0.020862677951664327 3 -0.033676630768344727 4 -0.046696616973362921 5 
		-0.054066428474915204 6 -0.059476294917491082 7 -0.063398147011518302 8 -0.065633370774773617 
		9 -0.066380580293850966 10 -0.066707548382403975 11 -0.066781539236942966 
		12 -0.066432085683332559 13 -0.066220363479257874 14 -0.066707548382403975 
		15 -0.068852585299368815 16 -0.072282753610358935 17 -0.075561730783472336 
		18 -0.07725319428680702 19 -0.075920821588461002 20 -0.070208284226134621 
		21 -0.060750382024909337 22 -0.049097484883954871 23 -0.036799962702440958 
		24 -0.022752781878122935 25 -0.0066408634592233992 26 0.0088004906793871206 
		27 0.022829106311507277 28 0.036187157780953411 29 0.048365866067881597 30 
		0.058190120047892202 31 0.065897709506770111 32 0.074868020498720877 33 0.083136194613047026 
		34 0.08429643749782674 35 0.072415736715860088 36 0.053427104403586161 37 
		0.038723783069541433 38 0.033531957040203161 39 0.0326254421373443 40 0.031718928112444991;
createNode animCurveTL -n "animCurveTL209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0;
createNode animCurveTL -n "animCurveTL210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 0.31584394001640992 1 0.38405779920607408 
		2 0.45672529071539719 3 0.54332288734699297 4 0.63323573834656022 5 0.72064149893349883 
		6 0.8070353641197936 7 0.88661757975926381 8 0.95522044383241334 9 1.0170116598263821 
		10 1.0786945818549449 11 1.1813035329153718 12 1.3400608131959268 13 1.5229521370862877 
		14 1.6979632189761338 15 1.8669719587606277 16 2.0454830877288699 17 2.2219225673614429 
		18 2.3847163591389315 19 2.5222904245419189 20 2.6205552971521957 21 2.6853596041458587 
		22 2.7350364473949504 23 2.7879189287715138 24 2.8409543539503832 25 2.8888246305348058 
		26 2.9464647632894496 27 3.0197243682501811 28 3.1027538272003792 29 3.1929392935259768 
		30 3.3075573789996655 31 3.4109256961292784 32 3.4890587157018977 33 3.5500359351417821 
		34 3.5449025488933428 35 3.4235499130357794 36 3.2360866674292912 37 3.0838839321897886 
		38 3.0124855786636484 39 2.9763477354833019 40 2.9402099086937374;
createNode animCurveTA -n "animCurveTA575";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 32 0 34 -180 40 -180;
createNode animCurveTU -n "animCurveTU41";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTU -n "animCurveTU42";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTU -n "animCurveTU43";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTU -n "animCurveTU44";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTU -n "animCurveTU45";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 26 1 40 1;
	setAttr -s 3 ".kit[0:2]"  3 1 9;
	setAttr -s 3 ".kot[1:2]"  3 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTU -n "animCurveTU46";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 26 1 40 1;
	setAttr -s 3 ".kit[0:2]"  3 1 9;
	setAttr -s 3 ".kot[1:2]"  3 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTU -n "animCurveTU47";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTU -n "animCurveTU48";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA576";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA577";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA578";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL211";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL212";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL213";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.19763288944005308 2 -0.19763288944005308 
		4 -0.19763288944005308 7 0.074299693596820204 10 0.033601828937858354 14 
		-0.088792887690248387 19 -0.088792887690248387 23 -0.034054386377388259 26 
		0.33012235545815671 29 0.34659039783014345 31 0.34659039783014345 34 0.34659039783014345 
		37 0.36217076428201367 40 0.36217076428201367;
createNode animCurveTL -n "animCurveTL215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.28960948781760953 2 0.21788708438790105 
		4 0.3601875058694361 7 0.42396717951801277 10 0.62389992521067239 14 0.22003877768234173 
		19 0.22003877768234173 23 0.66720224300238118 26 0.71621733242117758 29 0.34199766957592864 
		31 0.15889409580197947 34 0.15889409580197947 37 0.38948834938307225 40 0.38948834938307175;
	setAttr -s 14 ".kit[5:13]"  3 3 9 9 9 9 9 
		9 9;
	setAttr -s 14 ".kot[5:13]"  3 3 9 9 9 9 9 
		9 9;
createNode animCurveTL -n "animCurveTL216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.99077043779297014 2 0.99077043779297014 
		4 1.0212633852532995 7 1.5500553908084498 10 2.2208960183144932 14 4.1052730305352423 
		19 5.5096290813224389 23 5.8782437541599544 26 6.9856644672833887 29 7.602017928258471 
		31 7.8959844283150566 34 7.8959844283150566 37 7.3606906163068109 40 6.3914368892623692;
createNode animCurveTA -n "animCurveTA579";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -31.548014841396505 2 -2.3011432109570045 
		4 41.706307361580883 7 167.9678691773305 10 193.97947381713729 14 237.38889373969079 
		19 181.26479985121532 23 187.84955635759275 26 218.47915399546125 29 218.47915399546125 
		31 180.15668737351876 34 180.15668737351876 37 211.99946069167862 40 171.56043669238232;
createNode animCurveTA -n "animCurveTA580";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 2 0 4 -42.752393048934515 7 
		-59.365758620959006 10 -69.265320868120767 14 -88.877489429645252 19 -41.617336808474413 
		23 -30.086950952583575 26 -0.0013761625567917694 29 -0.0013761625567917694 
		31 -0.0013761625567929705 34 -0.0013761625567929705 37 0.28931094845986055 
		40 0.28931094845986027;
createNode animCurveTA -n "animCurveTA581";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 2 0 4 -3.3894940781992835 7 
		-109.42797660810076 10 -166.87149697417377 14 -235.8242074529625 19 -179.28040220445098 
		23 -179.00105306103802 26 -182.80066182512823 29 -182.80066182512823 31 -182.80066182512542 
		34 -182.80066182512542 37 -181.09027343885657 40 -181.09027343885495;
createNode animCurveTL -n "animCurveTL217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.19697756422115981 2 0.19697756422115981 
		4 0.19697756422115981 7 -0.16711460639764172 10 -0.21053902808926089 14 -0.12243407705567866 
		19 -0.12243407705567866 23 -0.12243407705567866 26 -0.21879115706695765 29 
		-0.051366713948500398 31 -0.070318969661030656 34 -0.063352159353075546 37 
		-0.075723246077761236 40 -0.075723246077761236;
createNode animCurveTL -n "animCurveTL218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.59136663247890464 2 0.3427289672559149 
		4 0.35289328307602452 7 0.64337568805423573 10 0.34567156354852741 14 0.21593348447622884 
		19 0.21593348447622884 23 0.21593348447622884 26 0.53612899093523181 29 0.3688967465822755 
		31 0.39331807713183131 34 0.38732259050963924 37 0.15143358520110567 40 0.317226985879761;
	setAttr -s 14 ".kit[5:13]"  3 3 9 9 9 9 9 
		9 9;
	setAttr -s 14 ".kot[5:13]"  3 3 9 9 9 9 9 
		9 9;
createNode animCurveTL -n "animCurveTL219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.092819338422239051 2 0.90089175039695468 
		4 1.7140370160057257 7 2.4661789574671658 10 2.9881009777415235 14 4.4678201270033711 
		19 6.0967334347709929 23 6.0967334347709929 26 6.3610995988970176 29 6.6858281201349472 
		31 7.2077879653063688 34 7.5012250784981269 37 7.3650410856670181 40 7.2821443853276921;
	setAttr -s 14 ".kit[6:13]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 14 ".kot[6:13]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 14 ".kix[6:13]"  0.0037210788577795029 0.0088257975876331329 
		0.0033950204961001873 0.001968449680134654 0.0020439899526536465 0.012717319652438164 
		0.0091286757960915565 0.012062335386872292;
	setAttr -s 14 ".kiy[6:13]"  0.99999308586120605 0.99996107816696167 
		0.99999421834945679 0.99999803304672241 0.99999791383743286 0.99991911649703979 
		-0.999958336353302 -0.99992722272872925;
	setAttr -s 14 ".kox[6:13]"  0.0037210790906101465 0.0088257975876331329 
		0.0033950204961001873 0.001968449680134654 0.0020439899526536465 0.012717319652438164 
		0.0091286757960915565 0.012062335386872292;
	setAttr -s 14 ".koy[6:13]"  0.99999308586120605 0.99996107816696167 
		0.99999421834945679 0.99999803304672241 0.99999791383743286 0.99991911649703979 
		-0.999958336353302 -0.99992722272872925;
createNode animCurveTA -n "animCurveTA582";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 72.51831712904297 2 72.51831712904297 
		4 9.9117259799280983 7 161.95745406613017 10 150.2202431909129 14 175.62393587212298 
		19 168.04606195437867 23 2.0319154036504146 26 2.789253372643747 29 21.58684027832491 
		31 -11.891137149738871 34 2.8144162032716369 37 -1.6315494922572908 40 55.764846043808951;
	setAttr -s 14 ".kit[6:13]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 14 ".kot[6:13]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA583";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 2 0 4 -43.652586531343594 7 
		-111.70506147494903 10 -107.45353395020963 14 -109.9696450337339 19 -97.22769369829976 
		23 -137.30413305984794 26 -193.31206432640226 29 -193.31206432640226 31 -191.53472480747777 
		34 -187.27697240103672 37 -191.53472480747777 40 -189.89734567811036;
createNode animCurveTA -n "animCurveTA584";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 2 0 4 11.878264936366337 7 
		-111.55587319268429 10 -126.52635253724556 14 -176.42916428438144 19 -168.68139065433883 
		23 -1.9212113437807483 26 1.7585281962148545 29 1.7585281962148545 31 1.752027452460053 
		34 1.9661068102461541 37 1.752027452460053 40 2.7240262556531118;
createNode animCurveTA -n "animCurveTA585";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA586";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA587";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA588";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA589";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA590";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA591";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA592";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA593";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA594";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA595";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA596";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 2 0 4 0 7 0 10 0 14 0 19 0 
		23 -0.11180367420559478 26 -0.33950526203392267 29 -0.33950526203392267 31 
		-0.33950526203392267 34 -0.33950526203392267 37 -0.33950526203392267 40 -0.33950526203392267;
createNode animCurveTL -n "animCurveTL221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 2 0 4 0 7 0 10 0 14 0 19 0 
		23 -0.084280911792796065 26 -0.075564240368965793 29 -0.075564240368965793 
		31 -0.075564240368965793 34 -0.075564240368965793 37 -0.075564240368965793 
		40 -0.075564240368965793;
createNode animCurveTL -n "animCurveTL222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 2 1 4 1 7 1 10 1 14 1 19 1 
		23 0.74453137970872096 26 0.73759601645313366 29 0.73759601645313366 31 0.73759601645313366 
		34 0.73759601645313366 37 0.73759601645313366 40 0.73759601645313366;
createNode animCurveTL -n "animCurveTL223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 2 0 4 0 7 0 10 0 14 0 19 0 
		23 0 26 0 29 0.22966655579814441 31 0 34 0 37 0 40 0;
createNode animCurveTL -n "animCurveTL224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 2 0 4 0 7 0 10 0 14 0 19 0 
		23 0 26 0 29 -0.013255355179641585 31 0 34 0 37 0 40 0;
createNode animCurveTL -n "animCurveTL225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 2 1 4 1 7 1 10 1 14 1 19 1 
		23 1 26 1 29 0.94680372049828354 31 1 34 1 37 1 40 1;
createNode animCurveTL -n "animCurveTL226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.033041213165890024 2 -0.048149195528934 
		4 -0.1077716171624469 7 -0.1463172553256126 10 -0.15395505781960089 14 -0.15395505781960089 
		19 -0.17521846868601554 23 -0.084931023894559768 26 0.020310745698807472 
		29 0.1116240948369184 31 0.15208602209656627 34 0.19454864140064199 37 0.089371029306744953 
		40 0.073204450319978173;
createNode animCurveTL -n "animCurveTL227";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.9623256953332785 2 0.76628445929207534 
		4 0.88825624913339096 7 1.0231230800161317 10 0.98583147264183024 14 0.77605618066021553 
		19 0.79148707233705051 23 0.92027574621248909 26 1.2482595532144629 29 0.92365133457158322 
		31 0.77615123347590187 34 0.74047711846119413 37 0.91681871216131461 40 0.95130863395612497;
	setAttr -s 14 ".kit[2:13]"  1 1 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 14 ".kot[2:13]"  1 1 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 14 ".kix[2:13]"  0.0039098546840250492 0.049991309642791748 
		0.0094437142834067345 0.015434673987329006 0.020797116681933403 0.0051082386635243893 
		0.50973659753799438 0.0035302413161844015 0.0090984292328357697 0.014216490089893341 
		0.0094858212396502495 1;
	setAttr -s 14 ".kiy[2:13]"  0.99999237060546875 0.99874967336654663 
		-0.99995541572570801 -0.99988085031509399 0.99978369474411011 0.99998694658279419 
		0.86033052206039429 -0.99999374151229858 -0.99995863437652588 0.99989897012710571 
		0.99995499849319458 0;
	setAttr -s 14 ".kox[2:13]"  0.0039098667912185192 0.04999123141169548 
		0.0094437142834067345 0.015434673987329006 0.020797116681933403 0.0051082386635243893 
		0.50973659753799438 0.0035302413161844015 0.0090984292328357697 0.014216490089893341 
		0.0094858212396502495 1;
	setAttr -s 14 ".koy[2:13]"  0.99999237060546875 0.99874967336654663 
		-0.99995541572570801 -0.99988085031509399 0.99978369474411011 0.99998694658279419 
		0.86033052206039429 -0.99999374151229858 -0.99995863437652588 0.99989897012710571 
		0.99995499849319458 0;
createNode animCurveTL -n "animCurveTL228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.72893957619979599 2 1.0540811384144744 
		4 1.4614514710047128 7 2.0462341079187021 10 2.4895306565182369 14 3.9187473065938776 
		19 5.8212207998129211 23 6.4342676396213623 26 6.8001772512344338 29 7.3690184314873255 
		31 7.8721115600834057 34 8.1813181583462864 37 7.1173284073868581 40 6.785741606029549;
	setAttr -s 14 ".kit[4:13]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 14 ".kot[4:13]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 14 ".kix[4:13]"  0.0022615583147853613 0.00090044352691620588 
		0.0011925953440368176 0.0023834835737943649 0.0021396027877926826 0.001554819755256176 
		0.0020517834927886724 0.0026497584767639637 0.0014330979902297258 0.0030157894361764193;
	setAttr -s 14 ".kiy[4:13]"  0.99999743700027466 0.99999958276748657 
		0.9999992847442627 0.99999713897705078 0.99999773502349854 0.99999880790710449 
		0.99999791383743286 -0.99999648332595825 -0.99999898672103882 -0.99999547004699707;
	setAttr -s 14 ".kox[4:13]"  0.0022615536581724882 0.00090044352691620588 
		0.0011925953440368176 0.0023834835737943649 0.0021396027877926826 0.001554819755256176 
		0.0020517834927886724 0.0026497584767639637 0.0014330979902297258 0.0030157894361764193;
	setAttr -s 14 ".koy[4:13]"  0.99999743700027466 0.99999958276748657 
		0.9999992847442627 0.99999713897705078 0.99999773502349854 0.99999880790710449 
		0.99999791383743286 -0.99999648332595825 -0.99999898672103882 -0.99999547004699707;
createNode animCurveTA -n "animCurveTA597";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 20.950825280283908 2 20.950825280283908 
		4 16.588474936674665 7 24.512970141362722 10 55.405904669454166 14 73.249913507396272 
		19 14.047396583675994 23 -28.058440409322351 26 -29.282490537871016 29 -27.830028224634241 
		31 -26.509156941288726 34 -16.037713296622304 37 10.209505037652454 40 14.274817035835193;
	setAttr -s 14 ".kit[6:13]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 14 ".kot[6:13]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 14 ".kix[6:13]"  0.11054891347885132 0.29482594132423401 
		0.9998013973236084 0.96032047271728516 0.62932312488555908 0.29790961742401123 
		0.35361000895500183 1;
	setAttr -s 14 ".kiy[6:13]"  -0.99387067556381226 -0.95555096864700317 
		0.019928764551877975 0.27889898419380188 0.77714377641677856 0.95459407567977905 
		0.93539297580718994 0;
	setAttr -s 14 ".kox[6:13]"  0.11054892838001251 0.29482594132423401 
		0.9998013973236084 0.96032047271728516 0.62932312488555908 0.29790961742401123 
		0.35361000895500183 1;
	setAttr -s 14 ".koy[6:13]"  -0.99387067556381226 -0.95555096864700317 
		0.019928764551877975 0.27889898419380188 0.77714377641677856 0.95459407567977905 
		0.93539297580718994 0;
createNode animCurveTA -n "animCurveTA598";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -7.5734518508549122 2 -7.5734518508549122 
		4 -32.042421725376109 7 -78.801480808612581 10 -104.41676642864464 14 -114.05997838135919 
		19 -131.87625559267656 23 -153.51050359526474 26 -175.42878060785844 29 -195.25522765665141 
		31 -205.85778999739517 34 -207.89177289327819 37 -192.27939145569246 40 -180.69429189410002;
	setAttr -s 14 ".kit[3:13]"  1 1 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 14 ".kot[3:13]"  1 1 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 14 ".kix[3:13]"  0.16943651437759399 0.49348399043083191 
		0.53058820962905884 0.39943602681159973 0.29344892501831055 0.2647131085395813 
		0.29942402243614197 0.60290080308914185 0.64494925737380981 0.38827529549598694 
		1;
	setAttr -s 14 ".kiy[3:13]"  -0.98554110527038574 -0.8697548508644104 
		-0.84762972593307495 -0.91676104068756104 -0.9559747576713562 -0.96432721614837646 
		-0.95412015914916992 -0.79781615734100342 0.76422542333602905 0.9215434193611145 
		0;
	setAttr -s 14 ".kox[3:13]"  0.1694364994764328 0.49348399043083191 
		0.53058820962905884 0.39943602681159973 0.29344892501831055 0.2647131085395813 
		0.29942402243614197 0.60290080308914185 0.64494925737380981 0.38827529549598694 
		1;
	setAttr -s 14 ".koy[3:13]"  -0.98554110527038574 -0.86975491046905518 
		-0.84762972593307495 -0.91676104068756104 -0.9559747576713562 -0.96432721614837646 
		-0.95412015914916992 -0.79781615734100342 0.76422542333602905 0.9215434193611145 
		0;
createNode animCurveTA -n "animCurveTA599";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 2 0 4 0.42646248836861955 7 
		-9.9590743530026931 10 -46.519882428519871 14 -64.658192700449561 19 -5.4044450167872355 
		23 4.8385309800147907 26 2.4916474509995203 29 -4.0753151629831903 31 -10.317778099135561 
		34 -16.247713561270853 37 -2.7763882751277986 40 -0.071081340080346569;
	setAttr -s 14 ".kit[2:13]"  1 1 1 9 1 1 9 
		1 9 9 9 3;
	setAttr -s 14 ".kot[2:13]"  1 1 1 9 1 1 9 
		1 9 9 9 3;
	setAttr -s 14 ".kix[2:13]"  0.9909898042678833 0.23619979619979858 
		0.14093360304832458 0.38571071624755859 0.30259540677070618 0.99973583221435547 
		0.78931319713592529 0.47005394101142883 0.61723268032073975 0.83533436059951782 
		0.57804113626480103 1;
	setAttr -s 14 ".kiy[2:13]"  0.1339372992515564 -0.97170448303222656 
		-0.99001902341842651 0.92261976003646851 0.95311909914016724 0.022984465584158897 
		-0.61399078369140625 -0.88263767957687378 -0.78678065538406372 0.54974222183227539 
		0.81600761413574219 0;
	setAttr -s 14 ".kox[2:13]"  0.99098986387252808 0.23619981110095978 
		0.14093358814716339 0.38571071624755859 0.30259543657302856 0.99973583221435547 
		0.78931319713592529 0.47005400061607361 0.61723268032073975 0.83533436059951782 
		0.57804113626480103 1;
	setAttr -s 14 ".koy[2:13]"  0.13393706083297729 -0.97170448303222656 
		-0.99001902341842651 0.92261976003646851 0.95311909914016724 0.022984504699707031 
		-0.61399078369140625 -0.88263767957687378 -0.78678065538406372 0.54974222183227539 
		0.81600761413574219 0;
createNode animCurveTA -n "animCurveTA600";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA601";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA602";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 4.0984482521620249 26 4.0984482521620249 
		40 4.0984482521620249;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA603";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 18.588300303494186 26 18.588300303494186 
		40 18.588300303494186;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA604";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA605";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA606";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -22.686733334985114 26 -22.686733334985114 
		40 -22.686733334985114;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA607";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA608";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA609";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.0579251312417477e-005 26 1.0579251312417477e-005 
		40 1.0579251312417477e-005;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA610";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA611";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA612";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 4.0984482535121209 26 4.0984482535121209 
		40 4.0984482535121209;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA613";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 18.588300300216801 26 18.588300300216801 
		40 18.588300300216801;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA614";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA615";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA616";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -22.686733333057838 26 -22.686733333057838 
		40 -22.686733333057838;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA617";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA618";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA619";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.0579251312417477e-005 26 1.0579251312417477e-005 
		40 1.0579251312417477e-005;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA620";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA621";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA622";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.4782236286598103 26 2.4782236286598103 
		40 2.4782236286598103;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA623";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2 0 4 0 26 0 40 0;
	setAttr -s 5 ".kit[2:4]"  1 1 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA624";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2 0 4 0 26 0 40 0;
	setAttr -s 5 ".kit[2:4]"  1 1 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA625";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -39.488235982334174 2 -32.748039247027044 
		4 0 26 0 40 0;
	setAttr -s 5 ".kit[2:4]"  1 1 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[2:4]"  0.1158541813492775 1 1;
	setAttr -s 5 ".kiy[2:4]"  0.99326622486114502 0 0;
	setAttr -s 5 ".kox[0:4]"  0.49303930997848511 0.18993929028511047 
		0.81366974115371704 1 1;
	setAttr -s 5 ".koy[0:4]"  0.87000703811645508 0.98179584741592407 
		0.58132743835449219 0 0;
createNode animCurveTL -n "animCurveTL229";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.99214331096561381 26 -0.99214331096561381 
		40 -0.99214331096561381;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL230";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.033841737269357866 26 -0.033841737269357866 
		40 -0.033841737269357866;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL231";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.027201153963313806 26 -0.027201153963313806 
		40 -0.027201153963313806;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA626";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA627";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA628";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL232";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.99214413619678865 26 0.99214413619678865 
		40 0.99214413619678865;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL233";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.033851474715545553 26 -0.033851474715545553 
		40 -0.033851474715545553;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL234";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.0272011762672867 26 -0.0272011762672867 
		40 -0.0272011762672867;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA629";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA630";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA631";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL235";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.3705977767760478 23 -1.3705977767760478 
		26 -1.3705977767760478 29 -1.3705977767760478 31 -1.3705977767760478 34 -1.3705977767760478 
		37 -1.3705977767760478 40 -1.3705977767760478;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL236";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.1618658070195953 23 2.1618658070195953 
		26 2.1618658070195953 29 2.1618658070195953 31 2.1618658070195953 34 2.1618658070195953 
		37 2.1618658070195953 40 2.1618658070195953;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL237";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.12044246479037771 23 -0.12044246479037771 
		26 -0.12044246479037771 29 -0.12044246479037771 31 -0.12044246479037771 34 
		-0.12044246479037771 37 -0.12044246479037771 40 -0.12044246479037771;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA632";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 23 0 26 0 29 0 31 0 34 0 37 
		0 40 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA633";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 23 0 26 0 29 0 31 0 34 0 37 
		0 40 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA634";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 23 0 26 0 29 0 31 0 34 0 37 
		0 40 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL238";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.3705978542308779 23 1.3705978542308779 
		26 1.3705978542308779 29 1.3705978542308779 31 1.3705978542308779 34 1.3705978542308779 
		37 1.3705978542308779 40 1.3705978542308779;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL239";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.1618621235956237 23 2.1618621235956237 
		26 2.1618621235956237 29 2.1618621235956237 31 2.1618621235956237 34 2.1618621235956237 
		37 2.1618621235956237 40 2.1618621235956237;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL240";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.12044250833667494 23 -0.12044250833667494 
		26 -0.12044250833667494 29 -0.12044250833667494 31 -0.12044250833667494 34 
		-0.12044250833667494 37 -0.12044250833667494 40 -0.12044250833667494;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA635";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 23 0 26 0 29 0 31 0 34 0 37 
		0 40 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA636";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 23 0 26 0 29 0 31 0 34 0 37 
		0 40 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA637";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 23 0 26 0 29 0 31 0 34 0 37 
		0 40 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL241";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 23 0 26 0 29 0 31 0 34 0 37 
		0 40 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL242";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 23 0 26 0 29 0 31 0 34 0 37 
		0 40 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL243";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1 23 -1 26 -1 29 -1 31 -1 34 
		-1 37 -1 40 -1;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL244";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 23 0 26 0 29 0 31 0 34 0 37 
		0 40 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL245";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 23 0 26 0 29 0 31 0 34 0 37 
		0 40 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL246";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1 23 -1 26 -1 29 -1 31 -1 34 
		-1 37 -1 40 -1;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA638";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 52.63721983934397 4 4.9458924361333496 
		8 -7.473358348077185 14 3.9663005106974749 19 1.0772155620835961 25 28.862970031806597 
		30 29.37823907515439 34 28.196930463391375 40 52.63721983934397;
createNode animCurveTA -n "animCurveTA639";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -24.480967171432489 4 -41.56191026588602 
		8 -26.011243204831459 14 -20.344660326332288 19 -21.106012496436204 25 -20.593287063382778 
		30 -5.9039256514273797 34 9.4373574066424002 40 -24.480967171432489;
createNode animCurveTA -n "animCurveTA640";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -64.344364641857069 4 -42.074964550286673 
		8 -20.07900851230027 14 -32.868992772285445 19 37.086094993089375 25 7.3634961387063216 
		30 -28.045934266000653 34 -31.367031209708358 40 -64.344364641857069;
createNode animCurveTA -n "animCurveTA641";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -53.609443747430014 4 0.60449406710029929 
		8 -7.8259876733136222 14 -4.3821505094183779 19 9.2528466780713075 25 25.880972375185408 
		30 -12.538251821565867 34 -2.1865958912147945 40 -53.609443747430014;
createNode animCurveTA -n "animCurveTA642";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -25.279137940425237 4 -24.500632006760558 
		8 -20.608392832570452 14 -30.123831150432625 19 -22.496297227049322 25 -12.583439185382771 
		30 -34.734818926299447 34 -16.816147810605617 40 -25.279137940425237;
createNode animCurveTA -n "animCurveTA643";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 57.594080128123693 4 48.167603902000536 
		8 42.353800302570363 14 37.384170178963402 19 -4.6943381520151535 25 -5.6536838042160138 
		30 62.704230722889271 34 67.854626634940118 40 57.594080128123693;
createNode animCurveTA -n "animCurveTA644";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 59.468287502559065 4 87.943359157143377 
		8 46.807005478377221 14 46.807005478377221 19 81.159090356719403 25 76.135806288834445 
		30 99.502194408933576 34 35.37547261748108 40 59.468287502559065;
createNode animCurveTA -n "animCurveTA645";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 59.305463658789549 4 59.305463658789549 
		8 80.279245965644165 14 92.222849751153589 19 19.690539333682146 25 19.690539333682146 
		30 70.97921694896506 34 70.97921694896506 40 59.305463658789549;
createNode animCurveTA -n "animCurveTA646";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 18.476235154862632 4 18.476235154862632 
		8 18.476235154862632 14 18.476235154862632 19 18.476235154862632 25 18.476235154862632 
		30 18.476235154862632 34 18.476235154862632 40 18.476235154862632;
createNode animCurveTA -n "animCurveTA647";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 10.082003051124275 4 10.082003051124275 
		8 10.082003051124275 14 10.082003051124275 19 10.082003051124275 25 10.082003051124275 
		30 10.082003051124275 34 10.082003051124275 40 10.082003051124275;
createNode animCurveTA -n "animCurveTA648";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -4.720189328892868 4 -4.720189328892868 
		8 -4.720189328892868 14 -4.720189328892868 19 -4.720189328892868 25 -4.720189328892868 
		30 -4.720189328892868 34 -4.720189328892868 40 -4.720189328892868;
createNode animCurveTA -n "animCurveTA649";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -11.342548829337769 4 -11.342548829337769 
		8 -11.342548829337769 14 -11.342548829337769 19 -11.342548829337769 25 -11.342548829337769 
		30 -11.342548829337769 34 -11.342548829337769 40 -11.342548829337769;
createNode animCurveTA -n "animCurveTA650";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 11.615881410206432 4 11.615881410206432 
		8 11.615881410206432 14 11.615881410206432 19 11.615881410206432 25 11.615881410206432 
		30 11.615881410206432 34 11.615881410206432 40 11.615881410206432;
createNode animCurveTA -n "animCurveTA651";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.32159281075535068 4 0.32159281075535068 
		8 0.32159281075535068 14 0.32159281075535068 19 0.32159281075535068 25 0.32159281075535068 
		30 0.32159281075535068 34 0.32159281075535068 40 0.32159281075535068;
createNode animCurveTA -n "animCurveTA652";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 11.093319219895511 4 11.093319219895511 
		8 11.093319219895511 14 11.093319219895511 19 11.093319219895511 25 11.093319219895511 
		30 11.093319219895511 34 11.093319219895511 40 11.093319219895511;
createNode animCurveTA -n "animCurveTA653";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 59.959644693642325 4 59.959644693642325 
		8 59.959644693642325 14 59.959644693642325 19 59.959644693642325 25 59.959644693642325 
		30 59.959644693642325 34 59.959644693642325 40 59.959644693642325;
createNode animCurveTA -n "animCurveTA654";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 48.106469618696913 4 48.106469618696913 
		8 48.106469618696913 14 48.106469618696913 19 48.106469618696913 25 48.106469618696913 
		30 48.106469618696913 34 48.106469618696913 40 48.106469618696913;
createNode animCurveTA -n "animCurveTA655";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 14 0 19 0 25 0 30 0 
		34 0 40 0;
createNode animCurveTA -n "animCurveTA656";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 14 0 19 0 25 0 30 0 
		34 0 40 0;
createNode animCurveTA -n "animCurveTA657";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 101.15442879205187 4 101.15442879205187 
		8 101.15442879205187 14 101.15442879205187 19 101.15442879205187 25 101.15442879205187 
		30 101.15442879205187 34 101.15442879205187 40 101.15442879205187;
createNode animCurveTA -n "animCurveTA658";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA659";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA660";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA661";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA662";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA663";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 5.8087384459739102 26 5.8087384459739102 
		40 5.8087384459739102;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA664";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA665";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 26 0 40 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA666";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 5.8087384459739102 26 5.8087384459739102 
		40 5.8087384459739102;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[1:2]"  9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA667";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 14 0 19 0 25 0 30 0 
		34 0 40 0;
createNode animCurveTA -n "animCurveTA668";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 14 0 19 0 25 0 30 0 
		34 0 40 0;
createNode animCurveTA -n "animCurveTA669";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 81.622987204614219 4 81.622987204614219 
		8 81.622987204614219 14 81.622987204614219 19 81.622987204614219 25 81.622987204614219 
		30 81.622987204614219 34 81.622987204614219 40 81.622987204614219;
createNode animCurveTA -n "animCurveTA670";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.2945941069882381 4 1.2945941069882381 
		8 1.2945941069882381 14 1.2945941069882381 19 1.2945941069882381 25 1.2945941069882381 
		30 1.2945941069882381 34 1.2945941069882381 40 1.2945941069882381;
createNode animCurveTA -n "animCurveTA671";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 3.3208811165553147 4 3.3208811165553147 
		8 3.3208811165553147 14 3.3208811165553147 19 3.3208811165553147 25 3.3208811165553147 
		30 3.3208811165553147 34 3.3208811165553147 40 3.3208811165553147;
createNode animCurveTA -n "animCurveTA672";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -27.525824477859967 4 -27.525824477859967 
		8 -27.525824477859967 14 -27.525824477859967 19 -27.525824477859967 25 -27.525824477859967 
		30 -27.525824477859967 34 -27.525824477859967 40 -27.525824477859967;
createNode animCurveTA -n "animCurveTA673";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -8.7597363552835983 4 1.6123314248998608 
		8 2.9073374655858624 14 18.907431770122162 19 31.400584787876994 25 1.3290815241435661 
		30 -4.1932489654801479 34 -15.944430305298519 36 -13.876390100080595 40 -8.7597363552835983;
	setAttr -s 10 ".kit[4:9]"  1 9 9 9 9 9;
	setAttr -s 10 ".kot[4:9]"  1 9 9 9 9 9;
	setAttr -s 10 ".kix[4:9]"  0.77943050861358643 0.50829404592514038 
		0.70536518096923828 0.76381564140319824 0.84724241495132446 0.83085906505584717;
	setAttr -s 10 ".kiy[4:9]"  0.62648874521255493 -0.86118358373641968 
		-0.70884412527084351 -0.64543449878692627 0.53120642900466919 0.55648291110992432;
	setAttr -s 10 ".kox[4:9]"  0.77943062782287598 0.50829404592514038 
		0.70536518096923828 0.76381564140319824 0.84724241495132446 0.83085906505584717;
	setAttr -s 10 ".koy[4:9]"  0.62648850679397583 -0.86118358373641968 
		-0.70884412527084351 -0.64543449878692627 0.53120642900466919 0.55648291110992432;
createNode animCurveTA -n "animCurveTA674";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 2.3592104775795546 8 -3.0878534322616673 
		14 -25.465279098910361 19 -29.802853772617009 25 -9.7073175396043769 30 -7.0954738327823552 
		34 -7.7811875878434744 36 -8.1357431655428751 40 0;
createNode animCurveTA -n "animCurveTA675";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -8.9349579591731985 4 -3.9964105797239964 
		8 2.0591759949921213 14 -15.428949233744827 19 -29.67879894772555 25 -26.64909552806558 
		30 -31.920349311115789 34 -34.315934092864829 36 -37.036164287542746 40 -8.9349579591731985;
	setAttr -s 10 ".kit[1:9]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 10 ".kot[1:9]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 10 ".kix[1:9]"  0.69493532180786133 0.85802000761032104 
		0.55196523666381836 0.88208013772964478 0.99435597658157349 0.91327041387557983 
		0.91313433647155762 0.41149064898490906 0.2623334527015686;
	setAttr -s 10 ".kiy[1:9]"  0.71907228231430054 -0.51361620426177979 
		-0.83386713266372681 -0.47109934687614441 -0.10609534382820129 -0.40735384821891785 
		-0.40765884518623352 0.91141396760940552 0.96497726440429688;
	setAttr -s 10 ".kox[1:9]"  0.69493532180786133 0.85802000761032104 
		0.55196523666381836 0.88208013772964478 0.99435597658157349 0.91327041387557983 
		0.91313433647155762 0.41149064898490906 0.2623334527015686;
	setAttr -s 10 ".koy[1:9]"  0.71907222270965576 -0.51361620426177979 
		-0.83386713266372681 -0.47109934687614441 -0.10609534382820129 -0.40735384821891785 
		-0.40765884518623352 0.91141396760940552 0.96497726440429688;
createNode animCurveTA -n "animCurveTA676";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 25.772516530009195 14 
		25.772516530009195 19 13.119558540447448 25 -16.25890839509896 30 0 34 31.795277181758792 
		40 0;
createNode animCurveTA -n "animCurveTA677";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 14 0 19 0 25 -10.401445284377511 
		30 0 34 9.4433198626624986 40 0;
createNode animCurveTA -n "animCurveTA678";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 14 0 19 0 25 6.9365280671877203 
		30 0 34 14.557442512458124 40 0;
createNode animCurveTA -n "animCurveTA679";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 -31.223895281282633 8 -40.565732712615379 
		14 -25.26437781405922 19 22.080084073833177 25 5.6063475779071217 30 -5.0899407506067815 
		34 -5.4616244316321394 36 -3.992171841240796 40 0;
createNode animCurveTA -n "animCurveTA680";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -9.2427148064678804 4 -11.390377117825469 
		8 -27.027462928987887 14 -26.356238632482132 19 23.344107637793154 25 -0.37627903770665871 
		30 -14.445767108260519 34 -4.579132493105508 36 -5.7761042467849357 40 -9.2427148064678804;
createNode animCurveTA -n "animCurveTA681";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -10.062830706779266 4 7.0533655365044909 
		8 16.748939667225187 14 16.695948886789388 19 12.33689428104678 25 9.9670479020033174 
		30 15.471771025925497 34 3.8213957985674045 36 -14.572544563138903 40 -10.062830706779266;
	setAttr -s 10 ".kit[1:9]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 10 ".kot[1:9]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 10 ".kix[1:9]"  0.41064494848251343 0.89267629384994507 
		0.97865098714828491 0.95234256982803345 0.98904925584793091 0.9416235089302063 
		0.35636740922927856 0.63653725385665894 0.8611486554145813;
	setAttr -s 10 ".kiy[1:9]"  0.91179531812667847 0.45069840550422668 
		-0.20552930235862732 -0.30503052473068237 0.14758571982383728 -0.33666765689849854 
		-0.93434590101242065 -0.77124595642089844 0.50835323333740234;
	setAttr -s 10 ".kox[1:9]"  0.41064485907554626 0.89267629384994507 
		0.97865098714828491 0.95234256982803345 0.98904925584793091 0.9416235089302063 
		0.35636740922927856 0.63653725385665894 0.8611486554145813;
	setAttr -s 10 ".koy[1:9]"  0.91179537773132324 0.45069840550422668 
		-0.20552930235862732 -0.30503052473068237 0.14758571982383728 -0.33666765689849854 
		-0.93434590101242065 -0.77124595642089844 0.50835323333740234;
createNode animCurveTA -n "animCurveTA682";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 14 0 19 4.1281685565191886 
		25 4.1281685565191886 30 4.1281685565191886 34 -3.1289478944146718 40 0;
	setAttr -s 9 ".kit[3:8]"  1 9 9 9 9 9;
	setAttr -s 9 ".kot[3:8]"  1 9 9 9 9 9;
	setAttr -s 9 ".kix[3:8]"  0.99997764825820923 0.98123550415039063 
		1 0.92125624418258667 0.97742742300033569 0.96468424797058105;
	setAttr -s 9 ".kiy[3:8]"  0.0066901575773954391 0.19281312823295593 
		0 -0.38895615935325623 -0.21127133071422577 0.26340910792350769;
	setAttr -s 9 ".kox[3:8]"  0.99997764825820923 0.98123550415039063 
		1 0.92125624418258667 0.97742742300033569 0.96468424797058105;
	setAttr -s 9 ".koy[3:8]"  0.0066901170648634434 0.19281312823295593 
		0 -0.38895615935325623 -0.21127133071422577 0.26340910792350769;
createNode animCurveTA -n "animCurveTA683";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0.65788932259313382 14 
		5.68683855542369 19 10.248151920015635 25 10.248151920015635 30 10.248151920015635 
		34 10.149039283419988 40 0;
createNode animCurveTA -n "animCurveTA684";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 5.671986885245901 4 5.671986885245901 
		8 5.671986885245901 14 5.6719868852459081 19 10.047661768529599 25 10.047661768529599 
		30 10.047661768529599 34 8.0978622832115441 40 5.671986885245901;
	setAttr -s 9 ".kit[3:8]"  1 9 9 9 9 9;
	setAttr -s 9 ".kot[3:8]"  1 9 9 9 9 9;
	setAttr -s 9 ".kix[3:8]"  0.99997484683990479 0.97899049520492554 
		1 0.99362772703170776 0.97474437952041626 0.97831821441650391;
	setAttr -s 9 ".kiy[3:8]"  0.0070911655202507973 0.20390574634075165 
		0 -0.11271189898252487 -0.22332349419593811 -0.20710751414299011;
	setAttr -s 9 ".kox[3:8]"  0.99997484683990479 0.97899049520492554 
		1 0.99362772703170776 0.97474437952041626 0.97831821441650391;
	setAttr -s 9 ".koy[3:8]"  0.0070911580696702003 0.20390574634075165 
		0 -0.11271189898252487 -0.22332349419593811 -0.20710751414299011;
createNode animCurveTA -n "animCurveTA685";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 14 0 19 0 25 0 30 0 
		34 0 40 0;
createNode animCurveTA -n "animCurveTA686";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 14 0 19 0 25 0 30 0 
		34 0 40 0;
createNode animCurveTA -n "animCurveTA687";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 90.838361755940937 4 90.838361755940937 
		8 90.838361755940937 14 90.838361755940937 19 90.838361755940937 25 90.838361755940937 
		30 90.838361755940937 34 90.838361755940937 40 90.838361755940937;
createNode animCurveTA -n "animCurveTA688";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 26.194612819039175 4 26.194612819039175 
		8 26.194612819039175 14 26.194612819039175 19 26.194612819039175 25 26.194612819039175 
		30 26.194612819039175 34 26.194612819039175 40 26.194612819039175;
createNode animCurveTA -n "animCurveTA689";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 42.116293762219605 4 42.116293762219605 
		8 42.116293762219605 14 42.116293762219605 19 42.116293762219605 25 42.116293762219605 
		30 42.116293762219605 34 42.116293762219605 40 42.116293762219605;
createNode animCurveTA -n "animCurveTA690";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 51.312599966148291 4 51.312599966148291 
		8 51.312599966148291 14 51.312599966148291 19 51.312599966148291 25 51.312599966148291 
		30 51.312599966148291 34 51.312599966148291 40 51.312599966148291;
createNode animCurveTA -n "animCurveTA691";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 14 0 19 0 25 0 30 0 
		34 0 40 0;
createNode animCurveTA -n "animCurveTA692";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 14 0 19 0 25 0 30 0 
		34 0 40 0;
createNode animCurveTA -n "animCurveTA693";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 86.611733534295581 4 86.611733534295581 
		8 86.611733534295581 14 86.611733534295581 19 86.611733534295581 25 86.611733534295581 
		30 86.611733534295581 34 86.611733534295581 40 86.611733534295581;
createNode clipLibrary -n "clipLibrary3";
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
createNode clipLibrary -n "clipLibrary4";
	setAttr -s 168 ".cel[0].cev";
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
	setAttr -s 3 ".sol";
connectAttr "lsa_turn_180_CCW.st" "clipLibrary3.st[0]";
connectAttr "lsa_turn_180_CCW.du" "clipLibrary3.du[0]";
connectAttr "animCurveTL206.a" "clipLibrary3.cel[0].cev[0].cevr";
connectAttr "animCurveTL207.a" "clipLibrary3.cel[0].cev[1].cevr";
connectAttr "animCurveTL208.a" "clipLibrary3.cel[0].cev[2].cevr";
connectAttr "animCurveTL209.a" "clipLibrary3.cel[0].cev[3].cevr";
connectAttr "animCurveTL210.a" "clipLibrary3.cel[0].cev[4].cevr";
connectAttr "animCurveTA575.a" "clipLibrary3.cel[0].cev[5].cevr";
connectAttr "animCurveTU41.a" "clipLibrary3.cel[0].cev[6].cevr";
connectAttr "animCurveTU42.a" "clipLibrary3.cel[0].cev[7].cevr";
connectAttr "animCurveTU43.a" "clipLibrary3.cel[0].cev[8].cevr";
connectAttr "animCurveTU44.a" "clipLibrary3.cel[0].cev[9].cevr";
connectAttr "animCurveTU45.a" "clipLibrary3.cel[0].cev[10].cevr";
connectAttr "animCurveTU46.a" "clipLibrary3.cel[0].cev[11].cevr";
connectAttr "animCurveTU47.a" "clipLibrary3.cel[0].cev[12].cevr";
connectAttr "animCurveTU48.a" "clipLibrary3.cel[0].cev[13].cevr";
connectAttr "animCurveTA576.a" "clipLibrary3.cel[0].cev[14].cevr";
connectAttr "animCurveTA577.a" "clipLibrary3.cel[0].cev[15].cevr";
connectAttr "animCurveTA578.a" "clipLibrary3.cel[0].cev[16].cevr";
connectAttr "animCurveTL211.a" "clipLibrary3.cel[0].cev[17].cevr";
connectAttr "animCurveTL212.a" "clipLibrary3.cel[0].cev[18].cevr";
connectAttr "animCurveTL213.a" "clipLibrary3.cel[0].cev[19].cevr";
connectAttr "animCurveTL214.a" "clipLibrary3.cel[0].cev[20].cevr";
connectAttr "animCurveTL215.a" "clipLibrary3.cel[0].cev[21].cevr";
connectAttr "animCurveTL216.a" "clipLibrary3.cel[0].cev[22].cevr";
connectAttr "animCurveTA579.a" "clipLibrary3.cel[0].cev[23].cevr";
connectAttr "animCurveTA580.a" "clipLibrary3.cel[0].cev[24].cevr";
connectAttr "animCurveTA581.a" "clipLibrary3.cel[0].cev[25].cevr";
connectAttr "animCurveTL217.a" "clipLibrary3.cel[0].cev[26].cevr";
connectAttr "animCurveTL218.a" "clipLibrary3.cel[0].cev[27].cevr";
connectAttr "animCurveTL219.a" "clipLibrary3.cel[0].cev[28].cevr";
connectAttr "animCurveTA582.a" "clipLibrary3.cel[0].cev[29].cevr";
connectAttr "animCurveTA583.a" "clipLibrary3.cel[0].cev[30].cevr";
connectAttr "animCurveTA584.a" "clipLibrary3.cel[0].cev[31].cevr";
connectAttr "animCurveTA585.a" "clipLibrary3.cel[0].cev[32].cevr";
connectAttr "animCurveTA586.a" "clipLibrary3.cel[0].cev[33].cevr";
connectAttr "animCurveTA587.a" "clipLibrary3.cel[0].cev[34].cevr";
connectAttr "animCurveTA588.a" "clipLibrary3.cel[0].cev[35].cevr";
connectAttr "animCurveTA589.a" "clipLibrary3.cel[0].cev[36].cevr";
connectAttr "animCurveTA590.a" "clipLibrary3.cel[0].cev[37].cevr";
connectAttr "animCurveTA591.a" "clipLibrary3.cel[0].cev[38].cevr";
connectAttr "animCurveTA592.a" "clipLibrary3.cel[0].cev[39].cevr";
connectAttr "animCurveTA593.a" "clipLibrary3.cel[0].cev[40].cevr";
connectAttr "animCurveTA594.a" "clipLibrary3.cel[0].cev[41].cevr";
connectAttr "animCurveTA595.a" "clipLibrary3.cel[0].cev[42].cevr";
connectAttr "animCurveTA596.a" "clipLibrary3.cel[0].cev[43].cevr";
connectAttr "animCurveTL220.a" "clipLibrary3.cel[0].cev[44].cevr";
connectAttr "animCurveTL221.a" "clipLibrary3.cel[0].cev[45].cevr";
connectAttr "animCurveTL222.a" "clipLibrary3.cel[0].cev[46].cevr";
connectAttr "animCurveTL223.a" "clipLibrary3.cel[0].cev[47].cevr";
connectAttr "animCurveTL224.a" "clipLibrary3.cel[0].cev[48].cevr";
connectAttr "animCurveTL225.a" "clipLibrary3.cel[0].cev[49].cevr";
connectAttr "animCurveTL226.a" "clipLibrary3.cel[0].cev[50].cevr";
connectAttr "animCurveTL227.a" "clipLibrary3.cel[0].cev[51].cevr";
connectAttr "animCurveTL228.a" "clipLibrary3.cel[0].cev[52].cevr";
connectAttr "animCurveTA597.a" "clipLibrary3.cel[0].cev[53].cevr";
connectAttr "animCurveTA598.a" "clipLibrary3.cel[0].cev[54].cevr";
connectAttr "animCurveTA599.a" "clipLibrary3.cel[0].cev[55].cevr";
connectAttr "animCurveTA600.a" "clipLibrary3.cel[0].cev[56].cevr";
connectAttr "animCurveTA601.a" "clipLibrary3.cel[0].cev[57].cevr";
connectAttr "animCurveTA602.a" "clipLibrary3.cel[0].cev[58].cevr";
connectAttr "animCurveTA603.a" "clipLibrary3.cel[0].cev[59].cevr";
connectAttr "animCurveTA604.a" "clipLibrary3.cel[0].cev[60].cevr";
connectAttr "animCurveTA605.a" "clipLibrary3.cel[0].cev[61].cevr";
connectAttr "animCurveTA606.a" "clipLibrary3.cel[0].cev[62].cevr";
connectAttr "animCurveTA607.a" "clipLibrary3.cel[0].cev[63].cevr";
connectAttr "animCurveTA608.a" "clipLibrary3.cel[0].cev[64].cevr";
connectAttr "animCurveTA609.a" "clipLibrary3.cel[0].cev[65].cevr";
connectAttr "animCurveTA610.a" "clipLibrary3.cel[0].cev[66].cevr";
connectAttr "animCurveTA611.a" "clipLibrary3.cel[0].cev[67].cevr";
connectAttr "animCurveTA612.a" "clipLibrary3.cel[0].cev[68].cevr";
connectAttr "animCurveTA613.a" "clipLibrary3.cel[0].cev[69].cevr";
connectAttr "animCurveTA614.a" "clipLibrary3.cel[0].cev[70].cevr";
connectAttr "animCurveTA615.a" "clipLibrary3.cel[0].cev[71].cevr";
connectAttr "animCurveTA616.a" "clipLibrary3.cel[0].cev[72].cevr";
connectAttr "animCurveTA617.a" "clipLibrary3.cel[0].cev[73].cevr";
connectAttr "animCurveTA618.a" "clipLibrary3.cel[0].cev[74].cevr";
connectAttr "animCurveTA619.a" "clipLibrary3.cel[0].cev[75].cevr";
connectAttr "animCurveTA620.a" "clipLibrary3.cel[0].cev[76].cevr";
connectAttr "animCurveTA621.a" "clipLibrary3.cel[0].cev[77].cevr";
connectAttr "animCurveTA622.a" "clipLibrary3.cel[0].cev[78].cevr";
connectAttr "animCurveTA623.a" "clipLibrary3.cel[0].cev[79].cevr";
connectAttr "animCurveTA624.a" "clipLibrary3.cel[0].cev[80].cevr";
connectAttr "animCurveTA625.a" "clipLibrary3.cel[0].cev[81].cevr";
connectAttr "animCurveTL229.a" "clipLibrary3.cel[0].cev[82].cevr";
connectAttr "animCurveTL230.a" "clipLibrary3.cel[0].cev[83].cevr";
connectAttr "animCurveTL231.a" "clipLibrary3.cel[0].cev[84].cevr";
connectAttr "animCurveTA626.a" "clipLibrary3.cel[0].cev[85].cevr";
connectAttr "animCurveTA627.a" "clipLibrary3.cel[0].cev[86].cevr";
connectAttr "animCurveTA628.a" "clipLibrary3.cel[0].cev[87].cevr";
connectAttr "animCurveTL232.a" "clipLibrary3.cel[0].cev[88].cevr";
connectAttr "animCurveTL233.a" "clipLibrary3.cel[0].cev[89].cevr";
connectAttr "animCurveTL234.a" "clipLibrary3.cel[0].cev[90].cevr";
connectAttr "animCurveTA629.a" "clipLibrary3.cel[0].cev[91].cevr";
connectAttr "animCurveTA630.a" "clipLibrary3.cel[0].cev[92].cevr";
connectAttr "animCurveTA631.a" "clipLibrary3.cel[0].cev[93].cevr";
connectAttr "animCurveTL235.a" "clipLibrary3.cel[0].cev[94].cevr";
connectAttr "animCurveTL236.a" "clipLibrary3.cel[0].cev[95].cevr";
connectAttr "animCurveTL237.a" "clipLibrary3.cel[0].cev[96].cevr";
connectAttr "animCurveTA632.a" "clipLibrary3.cel[0].cev[97].cevr";
connectAttr "animCurveTA633.a" "clipLibrary3.cel[0].cev[98].cevr";
connectAttr "animCurveTA634.a" "clipLibrary3.cel[0].cev[99].cevr";
connectAttr "animCurveTL238.a" "clipLibrary3.cel[0].cev[100].cevr";
connectAttr "animCurveTL239.a" "clipLibrary3.cel[0].cev[101].cevr";
connectAttr "animCurveTL240.a" "clipLibrary3.cel[0].cev[102].cevr";
connectAttr "animCurveTA635.a" "clipLibrary3.cel[0].cev[103].cevr";
connectAttr "animCurveTA636.a" "clipLibrary3.cel[0].cev[104].cevr";
connectAttr "animCurveTA637.a" "clipLibrary3.cel[0].cev[105].cevr";
connectAttr "animCurveTL241.a" "clipLibrary3.cel[0].cev[106].cevr";
connectAttr "animCurveTL242.a" "clipLibrary3.cel[0].cev[107].cevr";
connectAttr "animCurveTL243.a" "clipLibrary3.cel[0].cev[108].cevr";
connectAttr "animCurveTL244.a" "clipLibrary3.cel[0].cev[109].cevr";
connectAttr "animCurveTL245.a" "clipLibrary3.cel[0].cev[110].cevr";
connectAttr "animCurveTL246.a" "clipLibrary3.cel[0].cev[111].cevr";
connectAttr "animCurveTA638.a" "clipLibrary3.cel[0].cev[112].cevr";
connectAttr "animCurveTA639.a" "clipLibrary3.cel[0].cev[113].cevr";
connectAttr "animCurveTA640.a" "clipLibrary3.cel[0].cev[114].cevr";
connectAttr "animCurveTA641.a" "clipLibrary3.cel[0].cev[115].cevr";
connectAttr "animCurveTA642.a" "clipLibrary3.cel[0].cev[116].cevr";
connectAttr "animCurveTA643.a" "clipLibrary3.cel[0].cev[117].cevr";
connectAttr "animCurveTA644.a" "clipLibrary3.cel[0].cev[118].cevr";
connectAttr "animCurveTA645.a" "clipLibrary3.cel[0].cev[119].cevr";
connectAttr "animCurveTA646.a" "clipLibrary3.cel[0].cev[120].cevr";
connectAttr "animCurveTA647.a" "clipLibrary3.cel[0].cev[121].cevr";
connectAttr "animCurveTA648.a" "clipLibrary3.cel[0].cev[122].cevr";
connectAttr "animCurveTA649.a" "clipLibrary3.cel[0].cev[123].cevr";
connectAttr "animCurveTA650.a" "clipLibrary3.cel[0].cev[124].cevr";
connectAttr "animCurveTA651.a" "clipLibrary3.cel[0].cev[125].cevr";
connectAttr "animCurveTA652.a" "clipLibrary3.cel[0].cev[126].cevr";
connectAttr "animCurveTA653.a" "clipLibrary3.cel[0].cev[127].cevr";
connectAttr "animCurveTA654.a" "clipLibrary3.cel[0].cev[128].cevr";
connectAttr "animCurveTA655.a" "clipLibrary3.cel[0].cev[129].cevr";
connectAttr "animCurveTA656.a" "clipLibrary3.cel[0].cev[130].cevr";
connectAttr "animCurveTA657.a" "clipLibrary3.cel[0].cev[131].cevr";
connectAttr "animCurveTA658.a" "clipLibrary3.cel[0].cev[132].cevr";
connectAttr "animCurveTA659.a" "clipLibrary3.cel[0].cev[133].cevr";
connectAttr "animCurveTA660.a" "clipLibrary3.cel[0].cev[134].cevr";
connectAttr "animCurveTA661.a" "clipLibrary3.cel[0].cev[135].cevr";
connectAttr "animCurveTA662.a" "clipLibrary3.cel[0].cev[136].cevr";
connectAttr "animCurveTA663.a" "clipLibrary3.cel[0].cev[137].cevr";
connectAttr "animCurveTA664.a" "clipLibrary3.cel[0].cev[138].cevr";
connectAttr "animCurveTA665.a" "clipLibrary3.cel[0].cev[139].cevr";
connectAttr "animCurveTA666.a" "clipLibrary3.cel[0].cev[140].cevr";
connectAttr "animCurveTA667.a" "clipLibrary3.cel[0].cev[141].cevr";
connectAttr "animCurveTA668.a" "clipLibrary3.cel[0].cev[142].cevr";
connectAttr "animCurveTA669.a" "clipLibrary3.cel[0].cev[143].cevr";
connectAttr "animCurveTA670.a" "clipLibrary3.cel[0].cev[144].cevr";
connectAttr "animCurveTA671.a" "clipLibrary3.cel[0].cev[145].cevr";
connectAttr "animCurveTA672.a" "clipLibrary3.cel[0].cev[146].cevr";
connectAttr "animCurveTA673.a" "clipLibrary3.cel[0].cev[147].cevr";
connectAttr "animCurveTA674.a" "clipLibrary3.cel[0].cev[148].cevr";
connectAttr "animCurveTA675.a" "clipLibrary3.cel[0].cev[149].cevr";
connectAttr "animCurveTA676.a" "clipLibrary3.cel[0].cev[150].cevr";
connectAttr "animCurveTA677.a" "clipLibrary3.cel[0].cev[151].cevr";
connectAttr "animCurveTA678.a" "clipLibrary3.cel[0].cev[152].cevr";
connectAttr "animCurveTA679.a" "clipLibrary3.cel[0].cev[153].cevr";
connectAttr "animCurveTA680.a" "clipLibrary3.cel[0].cev[154].cevr";
connectAttr "animCurveTA681.a" "clipLibrary3.cel[0].cev[155].cevr";
connectAttr "animCurveTA682.a" "clipLibrary3.cel[0].cev[156].cevr";
connectAttr "animCurveTA683.a" "clipLibrary3.cel[0].cev[157].cevr";
connectAttr "animCurveTA684.a" "clipLibrary3.cel[0].cev[158].cevr";
connectAttr "animCurveTA685.a" "clipLibrary3.cel[0].cev[159].cevr";
connectAttr "animCurveTA686.a" "clipLibrary3.cel[0].cev[160].cevr";
connectAttr "animCurveTA687.a" "clipLibrary3.cel[0].cev[161].cevr";
connectAttr "animCurveTA688.a" "clipLibrary3.cel[0].cev[162].cevr";
connectAttr "animCurveTA689.a" "clipLibrary3.cel[0].cev[163].cevr";
connectAttr "animCurveTA690.a" "clipLibrary3.cel[0].cev[164].cevr";
connectAttr "animCurveTA691.a" "clipLibrary3.cel[0].cev[165].cevr";
connectAttr "animCurveTA692.a" "clipLibrary3.cel[0].cev[166].cevr";
connectAttr "animCurveTA693.a" "clipLibrary3.cel[0].cev[167].cevr";
connectAttr "lsa_turn_180_CCW.st" "clipLibrary4.st[0]";
connectAttr "lsa_turn_180_CCW.du" "clipLibrary4.du[0]";
connectAttr "animCurveTL206.a" "clipLibrary4.cel[0].cev[0].cevr";
connectAttr "animCurveTL207.a" "clipLibrary4.cel[0].cev[1].cevr";
connectAttr "animCurveTL208.a" "clipLibrary4.cel[0].cev[2].cevr";
connectAttr "animCurveTL209.a" "clipLibrary4.cel[0].cev[3].cevr";
connectAttr "animCurveTL210.a" "clipLibrary4.cel[0].cev[4].cevr";
connectAttr "animCurveTA575.a" "clipLibrary4.cel[0].cev[5].cevr";
connectAttr "animCurveTU41.a" "clipLibrary4.cel[0].cev[6].cevr";
connectAttr "animCurveTU42.a" "clipLibrary4.cel[0].cev[7].cevr";
connectAttr "animCurveTU43.a" "clipLibrary4.cel[0].cev[8].cevr";
connectAttr "animCurveTU44.a" "clipLibrary4.cel[0].cev[9].cevr";
connectAttr "animCurveTU45.a" "clipLibrary4.cel[0].cev[10].cevr";
connectAttr "animCurveTU46.a" "clipLibrary4.cel[0].cev[11].cevr";
connectAttr "animCurveTU47.a" "clipLibrary4.cel[0].cev[12].cevr";
connectAttr "animCurveTU48.a" "clipLibrary4.cel[0].cev[13].cevr";
connectAttr "animCurveTA576.a" "clipLibrary4.cel[0].cev[14].cevr";
connectAttr "animCurveTA577.a" "clipLibrary4.cel[0].cev[15].cevr";
connectAttr "animCurveTA578.a" "clipLibrary4.cel[0].cev[16].cevr";
connectAttr "animCurveTL211.a" "clipLibrary4.cel[0].cev[17].cevr";
connectAttr "animCurveTL212.a" "clipLibrary4.cel[0].cev[18].cevr";
connectAttr "animCurveTL213.a" "clipLibrary4.cel[0].cev[19].cevr";
connectAttr "animCurveTL214.a" "clipLibrary4.cel[0].cev[20].cevr";
connectAttr "animCurveTL215.a" "clipLibrary4.cel[0].cev[21].cevr";
connectAttr "animCurveTL216.a" "clipLibrary4.cel[0].cev[22].cevr";
connectAttr "animCurveTA579.a" "clipLibrary4.cel[0].cev[23].cevr";
connectAttr "animCurveTA580.a" "clipLibrary4.cel[0].cev[24].cevr";
connectAttr "animCurveTA581.a" "clipLibrary4.cel[0].cev[25].cevr";
connectAttr "animCurveTL217.a" "clipLibrary4.cel[0].cev[26].cevr";
connectAttr "animCurveTL218.a" "clipLibrary4.cel[0].cev[27].cevr";
connectAttr "animCurveTL219.a" "clipLibrary4.cel[0].cev[28].cevr";
connectAttr "animCurveTA582.a" "clipLibrary4.cel[0].cev[29].cevr";
connectAttr "animCurveTA583.a" "clipLibrary4.cel[0].cev[30].cevr";
connectAttr "animCurveTA584.a" "clipLibrary4.cel[0].cev[31].cevr";
connectAttr "animCurveTA585.a" "clipLibrary4.cel[0].cev[32].cevr";
connectAttr "animCurveTA586.a" "clipLibrary4.cel[0].cev[33].cevr";
connectAttr "animCurveTA587.a" "clipLibrary4.cel[0].cev[34].cevr";
connectAttr "animCurveTA588.a" "clipLibrary4.cel[0].cev[35].cevr";
connectAttr "animCurveTA589.a" "clipLibrary4.cel[0].cev[36].cevr";
connectAttr "animCurveTA590.a" "clipLibrary4.cel[0].cev[37].cevr";
connectAttr "animCurveTA591.a" "clipLibrary4.cel[0].cev[38].cevr";
connectAttr "animCurveTA592.a" "clipLibrary4.cel[0].cev[39].cevr";
connectAttr "animCurveTA593.a" "clipLibrary4.cel[0].cev[40].cevr";
connectAttr "animCurveTA594.a" "clipLibrary4.cel[0].cev[41].cevr";
connectAttr "animCurveTA595.a" "clipLibrary4.cel[0].cev[42].cevr";
connectAttr "animCurveTA596.a" "clipLibrary4.cel[0].cev[43].cevr";
connectAttr "animCurveTL220.a" "clipLibrary4.cel[0].cev[44].cevr";
connectAttr "animCurveTL221.a" "clipLibrary4.cel[0].cev[45].cevr";
connectAttr "animCurveTL222.a" "clipLibrary4.cel[0].cev[46].cevr";
connectAttr "animCurveTL223.a" "clipLibrary4.cel[0].cev[47].cevr";
connectAttr "animCurveTL224.a" "clipLibrary4.cel[0].cev[48].cevr";
connectAttr "animCurveTL225.a" "clipLibrary4.cel[0].cev[49].cevr";
connectAttr "animCurveTL226.a" "clipLibrary4.cel[0].cev[50].cevr";
connectAttr "animCurveTL227.a" "clipLibrary4.cel[0].cev[51].cevr";
connectAttr "animCurveTL228.a" "clipLibrary4.cel[0].cev[52].cevr";
connectAttr "animCurveTA597.a" "clipLibrary4.cel[0].cev[53].cevr";
connectAttr "animCurveTA598.a" "clipLibrary4.cel[0].cev[54].cevr";
connectAttr "animCurveTA599.a" "clipLibrary4.cel[0].cev[55].cevr";
connectAttr "animCurveTA600.a" "clipLibrary4.cel[0].cev[56].cevr";
connectAttr "animCurveTA601.a" "clipLibrary4.cel[0].cev[57].cevr";
connectAttr "animCurveTA602.a" "clipLibrary4.cel[0].cev[58].cevr";
connectAttr "animCurveTA603.a" "clipLibrary4.cel[0].cev[59].cevr";
connectAttr "animCurveTA604.a" "clipLibrary4.cel[0].cev[60].cevr";
connectAttr "animCurveTA605.a" "clipLibrary4.cel[0].cev[61].cevr";
connectAttr "animCurveTA606.a" "clipLibrary4.cel[0].cev[62].cevr";
connectAttr "animCurveTA607.a" "clipLibrary4.cel[0].cev[63].cevr";
connectAttr "animCurveTA608.a" "clipLibrary4.cel[0].cev[64].cevr";
connectAttr "animCurveTA609.a" "clipLibrary4.cel[0].cev[65].cevr";
connectAttr "animCurveTA610.a" "clipLibrary4.cel[0].cev[66].cevr";
connectAttr "animCurveTA611.a" "clipLibrary4.cel[0].cev[67].cevr";
connectAttr "animCurveTA612.a" "clipLibrary4.cel[0].cev[68].cevr";
connectAttr "animCurveTA613.a" "clipLibrary4.cel[0].cev[69].cevr";
connectAttr "animCurveTA614.a" "clipLibrary4.cel[0].cev[70].cevr";
connectAttr "animCurveTA615.a" "clipLibrary4.cel[0].cev[71].cevr";
connectAttr "animCurveTA616.a" "clipLibrary4.cel[0].cev[72].cevr";
connectAttr "animCurveTA617.a" "clipLibrary4.cel[0].cev[73].cevr";
connectAttr "animCurveTA618.a" "clipLibrary4.cel[0].cev[74].cevr";
connectAttr "animCurveTA619.a" "clipLibrary4.cel[0].cev[75].cevr";
connectAttr "animCurveTA620.a" "clipLibrary4.cel[0].cev[76].cevr";
connectAttr "animCurveTA621.a" "clipLibrary4.cel[0].cev[77].cevr";
connectAttr "animCurveTA622.a" "clipLibrary4.cel[0].cev[78].cevr";
connectAttr "animCurveTA623.a" "clipLibrary4.cel[0].cev[79].cevr";
connectAttr "animCurveTA624.a" "clipLibrary4.cel[0].cev[80].cevr";
connectAttr "animCurveTA625.a" "clipLibrary4.cel[0].cev[81].cevr";
connectAttr "animCurveTL229.a" "clipLibrary4.cel[0].cev[82].cevr";
connectAttr "animCurveTL230.a" "clipLibrary4.cel[0].cev[83].cevr";
connectAttr "animCurveTL231.a" "clipLibrary4.cel[0].cev[84].cevr";
connectAttr "animCurveTA626.a" "clipLibrary4.cel[0].cev[85].cevr";
connectAttr "animCurveTA627.a" "clipLibrary4.cel[0].cev[86].cevr";
connectAttr "animCurveTA628.a" "clipLibrary4.cel[0].cev[87].cevr";
connectAttr "animCurveTL232.a" "clipLibrary4.cel[0].cev[88].cevr";
connectAttr "animCurveTL233.a" "clipLibrary4.cel[0].cev[89].cevr";
connectAttr "animCurveTL234.a" "clipLibrary4.cel[0].cev[90].cevr";
connectAttr "animCurveTA629.a" "clipLibrary4.cel[0].cev[91].cevr";
connectAttr "animCurveTA630.a" "clipLibrary4.cel[0].cev[92].cevr";
connectAttr "animCurveTA631.a" "clipLibrary4.cel[0].cev[93].cevr";
connectAttr "animCurveTL235.a" "clipLibrary4.cel[0].cev[94].cevr";
connectAttr "animCurveTL236.a" "clipLibrary4.cel[0].cev[95].cevr";
connectAttr "animCurveTL237.a" "clipLibrary4.cel[0].cev[96].cevr";
connectAttr "animCurveTA632.a" "clipLibrary4.cel[0].cev[97].cevr";
connectAttr "animCurveTA633.a" "clipLibrary4.cel[0].cev[98].cevr";
connectAttr "animCurveTA634.a" "clipLibrary4.cel[0].cev[99].cevr";
connectAttr "animCurveTL238.a" "clipLibrary4.cel[0].cev[100].cevr";
connectAttr "animCurveTL239.a" "clipLibrary4.cel[0].cev[101].cevr";
connectAttr "animCurveTL240.a" "clipLibrary4.cel[0].cev[102].cevr";
connectAttr "animCurveTA635.a" "clipLibrary4.cel[0].cev[103].cevr";
connectAttr "animCurveTA636.a" "clipLibrary4.cel[0].cev[104].cevr";
connectAttr "animCurveTA637.a" "clipLibrary4.cel[0].cev[105].cevr";
connectAttr "animCurveTL241.a" "clipLibrary4.cel[0].cev[106].cevr";
connectAttr "animCurveTL242.a" "clipLibrary4.cel[0].cev[107].cevr";
connectAttr "animCurveTL243.a" "clipLibrary4.cel[0].cev[108].cevr";
connectAttr "animCurveTL244.a" "clipLibrary4.cel[0].cev[109].cevr";
connectAttr "animCurveTL245.a" "clipLibrary4.cel[0].cev[110].cevr";
connectAttr "animCurveTL246.a" "clipLibrary4.cel[0].cev[111].cevr";
connectAttr "animCurveTA638.a" "clipLibrary4.cel[0].cev[112].cevr";
connectAttr "animCurveTA639.a" "clipLibrary4.cel[0].cev[113].cevr";
connectAttr "animCurveTA640.a" "clipLibrary4.cel[0].cev[114].cevr";
connectAttr "animCurveTA641.a" "clipLibrary4.cel[0].cev[115].cevr";
connectAttr "animCurveTA642.a" "clipLibrary4.cel[0].cev[116].cevr";
connectAttr "animCurveTA643.a" "clipLibrary4.cel[0].cev[117].cevr";
connectAttr "animCurveTA644.a" "clipLibrary4.cel[0].cev[118].cevr";
connectAttr "animCurveTA645.a" "clipLibrary4.cel[0].cev[119].cevr";
connectAttr "animCurveTA646.a" "clipLibrary4.cel[0].cev[120].cevr";
connectAttr "animCurveTA647.a" "clipLibrary4.cel[0].cev[121].cevr";
connectAttr "animCurveTA648.a" "clipLibrary4.cel[0].cev[122].cevr";
connectAttr "animCurveTA649.a" "clipLibrary4.cel[0].cev[123].cevr";
connectAttr "animCurveTA650.a" "clipLibrary4.cel[0].cev[124].cevr";
connectAttr "animCurveTA651.a" "clipLibrary4.cel[0].cev[125].cevr";
connectAttr "animCurveTA652.a" "clipLibrary4.cel[0].cev[126].cevr";
connectAttr "animCurveTA653.a" "clipLibrary4.cel[0].cev[127].cevr";
connectAttr "animCurveTA654.a" "clipLibrary4.cel[0].cev[128].cevr";
connectAttr "animCurveTA655.a" "clipLibrary4.cel[0].cev[129].cevr";
connectAttr "animCurveTA656.a" "clipLibrary4.cel[0].cev[130].cevr";
connectAttr "animCurveTA657.a" "clipLibrary4.cel[0].cev[131].cevr";
connectAttr "animCurveTA658.a" "clipLibrary4.cel[0].cev[132].cevr";
connectAttr "animCurveTA659.a" "clipLibrary4.cel[0].cev[133].cevr";
connectAttr "animCurveTA660.a" "clipLibrary4.cel[0].cev[134].cevr";
connectAttr "animCurveTA661.a" "clipLibrary4.cel[0].cev[135].cevr";
connectAttr "animCurveTA662.a" "clipLibrary4.cel[0].cev[136].cevr";
connectAttr "animCurveTA663.a" "clipLibrary4.cel[0].cev[137].cevr";
connectAttr "animCurveTA664.a" "clipLibrary4.cel[0].cev[138].cevr";
connectAttr "animCurveTA665.a" "clipLibrary4.cel[0].cev[139].cevr";
connectAttr "animCurveTA666.a" "clipLibrary4.cel[0].cev[140].cevr";
connectAttr "animCurveTA667.a" "clipLibrary4.cel[0].cev[141].cevr";
connectAttr "animCurveTA668.a" "clipLibrary4.cel[0].cev[142].cevr";
connectAttr "animCurveTA669.a" "clipLibrary4.cel[0].cev[143].cevr";
connectAttr "animCurveTA670.a" "clipLibrary4.cel[0].cev[144].cevr";
connectAttr "animCurveTA671.a" "clipLibrary4.cel[0].cev[145].cevr";
connectAttr "animCurveTA672.a" "clipLibrary4.cel[0].cev[146].cevr";
connectAttr "animCurveTA673.a" "clipLibrary4.cel[0].cev[147].cevr";
connectAttr "animCurveTA674.a" "clipLibrary4.cel[0].cev[148].cevr";
connectAttr "animCurveTA675.a" "clipLibrary4.cel[0].cev[149].cevr";
connectAttr "animCurveTA676.a" "clipLibrary4.cel[0].cev[150].cevr";
connectAttr "animCurveTA677.a" "clipLibrary4.cel[0].cev[151].cevr";
connectAttr "animCurveTA678.a" "clipLibrary4.cel[0].cev[152].cevr";
connectAttr "animCurveTA679.a" "clipLibrary4.cel[0].cev[153].cevr";
connectAttr "animCurveTA680.a" "clipLibrary4.cel[0].cev[154].cevr";
connectAttr "animCurveTA681.a" "clipLibrary4.cel[0].cev[155].cevr";
connectAttr "animCurveTA682.a" "clipLibrary4.cel[0].cev[156].cevr";
connectAttr "animCurveTA683.a" "clipLibrary4.cel[0].cev[157].cevr";
connectAttr "animCurveTA684.a" "clipLibrary4.cel[0].cev[158].cevr";
connectAttr "animCurveTA685.a" "clipLibrary4.cel[0].cev[159].cevr";
connectAttr "animCurveTA686.a" "clipLibrary4.cel[0].cev[160].cevr";
connectAttr "animCurveTA687.a" "clipLibrary4.cel[0].cev[161].cevr";
connectAttr "animCurveTA688.a" "clipLibrary4.cel[0].cev[162].cevr";
connectAttr "animCurveTA689.a" "clipLibrary4.cel[0].cev[163].cevr";
connectAttr "animCurveTA690.a" "clipLibrary4.cel[0].cev[164].cevr";
connectAttr "animCurveTA691.a" "clipLibrary4.cel[0].cev[165].cevr";
connectAttr "animCurveTA692.a" "clipLibrary4.cel[0].cev[166].cevr";
connectAttr "animCurveTA693.a" "clipLibrary4.cel[0].cev[167].cevr";
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
// End of lsa-m_turn_180_CCW.ma
