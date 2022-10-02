//Maya ASCII 4.0 scene
//Name: brt-m_turn_180_CCW.ma
//Last modified: Tue, Jun 11, 2002 11:30:55 AM
requires maya "4.0";
requires "p3dSimpleShader" "17.1";
requires "p3dDeformer" "17.1.0.0";
requires "p3dmayaexp" "17.3";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "brt_turn_180_CCW";
	setAttr ".ihi" 0;
	setAttr ".du" 26;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL165";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL166";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -0.014638358985086029 1 -0.016752442825005664 
		2 -0.021331698853093529 3 -0.034433726466062069 4 -0.047746419373480675 5 
		-0.055281914093737186 6 -0.06081340156892389 7 -0.06482342214298395 8 -0.067108896725753736 
		9 -0.067872904514113971 10 -0.068207223282574281 11 -0.068282877550476295 
		12 -0.067925567813632765 13 -0.067709085811260006 14 -0.068207223282574281 
		15 -0.068448912814648891 16 -0.068053054529692861 17 -0.068478391469626018 
		18 -0.071183666676368204 19 -0.077627623191839301 20 -0.093080453910100766 
		21 -0.11585025208725931 22 -0.13695261130830269 23 -0.14740312515821857 24 
		-0.13818914590118211 25 -0.11536264541211949 26 -0.092536146692145244;
createNode animCurveTL -n "animCurveTL168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0;
createNode animCurveTL -n "animCurveTL169";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0.32294453418752544 1 0.39269193215879883 
		2 0.46699308606042211 3 0.555537512477142 4 0.64747172461374025 5 0.73684248359233151 
		6 0.82517859840839636 7 0.90654992868614226 8 0.97669507689092461 9 1.0398754420580263 
		10 1.1029450786665511 11 1.2078608161727338 12 1.3701871724308863 13 1.5571901378752881 
		14 1.7361357029402211 15 1.9111739333588917 16 2.0981581275153092 17 2.2819091248199554 
		18 2.4472477646833144 19 2.5789948865158685 20 2.6666940303886975 21 2.715148099793347 
		22 2.732066979271 23 2.725160553362838 24 2.669807333763428 25 2.567529193764047 
		26 2.4652510603009388;
createNode animCurveTA -n "animCurveTA477";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 -90 25 -180 26 -180;
createNode animCurveTU -n "animCurveTU33";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU34";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU35";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU36";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU37";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 26 1;
createNode animCurveTU -n "animCurveTU38";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 26 1;
createNode animCurveTU -n "animCurveTU39";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU40";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA478";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA479";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA480";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL170";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL171";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL172";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.19763288944005308 2 -0.19763288944005308 
		4 -0.19763288944005308 7 0.074299693596820204 10 0.033601828937858354 14 
		-0.088792887690248387 19 -0.088792887690248387 23 -0.025324043185516971 26 
		-0.027102980971350124;
createNode animCurveTL -n "animCurveTL174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.28960948781760953 2 0.21788708438790105 
		4 0.3601875058694361 7 0.42396717951801277 10 0.62389992521067239 14 0.22003877768234173 
		19 0.22003877768234173 23 0.59014520216227395 26 0.25955610737879453;
	setAttr -s 9 ".kit[5:8]"  3 3 9 9;
	setAttr -s 9 ".kot[5:8]"  3 3 9 9;
createNode animCurveTL -n "animCurveTL175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.99077043779297014 2 0.99077043779297014 
		4 1.0212633852532995 7 1.5500553908084498 10 2.2208960183144932 14 4.1052730305352423 
		19 5.5096290813224389 23 5.7577868251264341 26 5.2915390528921433;
createNode animCurveTA -n "animCurveTA481";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -31.548014841396505 2 -2.3011432109570045 
		4 41.706307361580883 7 167.9678691773305 10 193.97947381713729 14 237.38889373969079 
		19 181.26479985121532 23 166.26783874901119 26 156.46471908773347;
createNode animCurveTA -n "animCurveTA482";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 4 -42.752393048934515 7 
		-59.365758620959006 10 -69.265320868120767 14 -88.877489429645252 19 -41.617336808474413 
		23 -3.362697203796976 26 0;
createNode animCurveTA -n "animCurveTA483";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 4 -3.3894940781992835 7 
		-109.42797660810076 10 -166.87149697417377 14 -235.8242074529625 19 -179.28040220445098 
		23 -161.66328907127865 26 -180;
createNode animCurveTL -n "animCurveTL176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.19697756422115981 2 0.19697756422115981 
		4 0.19697756422115981 7 -0.16711460639764172 10 -0.21053902808926089 14 -0.12243407705567866 
		19 -0.12243407705567866 23 -0.47218327917382236 26 -0.47218327917382236;
	setAttr -s 9 ".kit[7:8]"  3 3;
	setAttr -s 9 ".kot[7:8]"  3 3;
createNode animCurveTL -n "animCurveTL177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.59136663247890464 2 0.3427289672559149 
		4 0.35289328307602452 7 0.64337568805423573 10 0.34567156354852741 14 0.21593348447622884 
		19 0.21593348447622884 23 0.21593348447622884 26 0.4733170330743055;
	setAttr -s 9 ".kit[5:8]"  3 3 3 9;
	setAttr -s 9 ".kot[5:8]"  3 3 3 9;
createNode animCurveTL -n "animCurveTL178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.092819338422239051 2 0.90089175039695468 
		4 1.7140370160057257 7 2.4661789574671658 10 2.9881009777415235 14 4.4678201270033711 
		19 6.0967334347709929 23 6.1941591441336907 26 6.1678955167257223;
	setAttr -s 9 ".kit[6:8]"  1 9 9;
	setAttr -s 9 ".kot[6:8]"  1 9 9;
	setAttr -s 9 ".kix[6:8]"  0.0037210788577795029 0.032771386206150055 
		0.038047906011343002;
	setAttr -s 9 ".kiy[6:8]"  0.99999308586120605 0.99946290254592896 
		-0.99927592277526855;
	setAttr -s 9 ".kox[6:8]"  0.0037210790906101465 0.032771386206150055 
		0.038047906011343002;
	setAttr -s 9 ".koy[6:8]"  0.99999308586120605 0.99946290254592896 
		-0.99927592277526855;
createNode animCurveTA -n "animCurveTA484";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 72.51831712904297 2 72.51831712904297 
		4 9.9117259799280983 7 161.95745406613017 10 150.2202431909129 14 175.62393587212298 
		19 168.04606195437867 23 168.04606195437867 26 233.319068450939;
	setAttr -s 9 ".kit[6:8]"  3 3 3;
	setAttr -s 9 ".kot[6:8]"  3 3 3;
createNode animCurveTA -n "animCurveTA485";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 4 -43.652586531343594 7 
		-111.70506147494903 10 -107.45353395020963 14 -109.9696450337339 19 -97.22769369829976 
		23 -69.887656841721935 26 9.9491744845790109;
	setAttr -s 9 ".kit[8]"  3;
	setAttr -s 9 ".kot[8]"  3;
createNode animCurveTA -n "animCurveTA486";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 4 11.878264936366337 7 
		-111.55587319268429 10 -126.52635253724556 14 -176.42916428438144 19 -168.68139065433883 
		23 -168.68139065433883 26 -179.11721005301305;
createNode animCurveTA -n "animCurveTA487";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA488";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA489";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA490";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA491";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA492";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA493";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA494";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA495";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA496";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA497";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA498";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 4 0 7 0 10 0 14 0 19 0 
		23 0 26 0;
createNode animCurveTL -n "animCurveTL180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 4 0 7 0 10 0 14 0 19 0 
		23 0 26 0;
createNode animCurveTL -n "animCurveTL181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 2 1 4 1 7 1 10 1 14 1 19 1 
		23 1 26 1;
createNode animCurveTL -n "animCurveTL182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 4 0 7 0 10 0 14 0 19 0 
		23 0 26 0;
createNode animCurveTL -n "animCurveTL183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 4 0 7 0 10 0 14 0 19 0 
		23 0 26 0;
createNode animCurveTL -n "animCurveTL184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 2 1 4 1 7 1 10 1 14 1 19 1 
		23 1 26 1;
createNode animCurveTL -n "animCurveTL185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.033041213165890024 2 -0.048149195528934 
		4 -0.1077716171624469 7 -0.1463172553256126 10 -0.15395505781960089 14 -0.15395505781960089 
		19 -0.17521846868601554 23 -0.33271339257584437 26 -0.20886948813868503;
createNode animCurveTL -n "animCurveTL186";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.9623256953332785 2 0.76628445929207534 
		4 0.88825624913339096 7 1.0231230800161317 10 0.98583147264183024 14 0.77605618066021553 
		19 0.79148707233705051 23 0.93933207060516422 26 0.94212560818945579;
	setAttr -s 9 ".kit[2:8]"  1 1 9 9 9 9 9;
	setAttr -s 9 ".kot[2:8]"  1 1 9 9 9 9 9;
	setAttr -s 9 ".kix[2:8]"  0.0039098546840250492 0.049991309642791748 
		0.0094437142834067345 0.015434673987329006 0.018370708450675011 0.015487760305404663 
		0.3370262086391449;
	setAttr -s 9 ".kiy[2:8]"  0.99999237060546875 0.99874967336654663 
		-0.99995541572570801 -0.99988085031509399 0.99983125925064087 0.99988007545471191 
		0.94149523973464966;
	setAttr -s 9 ".kox[2:8]"  0.0039098667912185192 0.04999123141169548 
		0.0094437142834067345 0.015434673987329006 0.018370708450675011 0.015487760305404663 
		0.3370262086391449;
	setAttr -s 9 ".koy[2:8]"  0.99999237060546875 0.99874967336654663 
		-0.99995541572570801 -0.99988085031509399 0.99983125925064087 0.99988007545471191 
		0.94149523973464966;
createNode animCurveTL -n "animCurveTL187";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.72893957619979599 2 1.0540811384144744 
		4 1.4614514710047128 7 2.0462341079187021 10 2.4895306565182369 14 3.9187473065938776 
		19 5.8212207998129211 23 6.1511410429730731 26 5.5644820484200617;
	setAttr -s 9 ".kit[4:8]"  1 9 9 9 9;
	setAttr -s 9 ".kot[4:8]"  1 9 9 9 9;
	setAttr -s 9 ".kix[4:8]"  0.0022615583147853613 0.00090044352691620588 
		0.0013438478345051408 0.0090879816561937332 0.0017045654822140932;
	setAttr -s 9 ".kiy[4:8]"  0.99999743700027466 0.99999958276748657 
		0.99999910593032837 -0.99995869398117065 -0.99999856948852539;
	setAttr -s 9 ".kox[4:8]"  0.0022615536581724882 0.00090044352691620588 
		0.0013438478345051408 0.0090879816561937332 0.0017045654822140932;
	setAttr -s 9 ".koy[4:8]"  0.99999743700027466 0.99999958276748657 
		0.99999910593032837 -0.99995869398117065 -0.99999856948852539;
createNode animCurveTA -n "animCurveTA499";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 20.950825280283908 2 20.950825280283908 
		4 16.588474936674665 7 19.78519543284202 10 55.405904669454166 14 73.249913507396272 
		19 14.047396583675994 23 -28.058440409322351 26 15.69444925216607;
	setAttr -s 9 ".kit[6:8]"  1 9 9;
	setAttr -s 9 ".kot[6:8]"  1 9 9;
	setAttr -s 9 ".kix[6:8]"  0.11054891347885132 0.9924963116645813 
		0.1298445463180542;
	setAttr -s 9 ".kiy[6:8]"  -0.99387067556381226 0.12227480113506317 
		0.99153435230255127;
	setAttr -s 9 ".kox[6:8]"  0.11054892838001251 0.9924963116645813 
		0.1298445463180542;
	setAttr -s 9 ".koy[6:8]"  -0.99387067556381226 0.12227480113506317 
		0.99153435230255127;
createNode animCurveTA -n "animCurveTA500";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -7.5734518508549122 2 -7.5734518508549122 
		4 -32.042421725376109 7 -86.369887479540211 10 -104.41676642864464 14 -114.05997838135919 
		19 -131.87625559267656 23 -166.12451471347751 26 -171.50596928914231;
	setAttr -s 9 ".kit[3:8]"  1 1 9 9 9 9;
	setAttr -s 9 ".kot[3:8]"  1 1 9 9 9 9;
	setAttr -s 9 ".kix[3:8]"  0.16943651437759399 0.49348399043083191 
		0.53058820962905884 0.31349977850914001 0.31964957714080811 0.72890377044677734;
	setAttr -s 9 ".kiy[3:8]"  -0.98554110527038574 -0.8697548508644104 
		-0.84762972593307495 -0.94958829879760742 -0.94753581285476685 -0.68461614847183228;
	setAttr -s 9 ".kox[3:8]"  0.1694364994764328 0.49348399043083191 
		0.53058820962905884 0.31349977850914001 0.31964957714080811 0.72890377044677734;
	setAttr -s 9 ".koy[3:8]"  -0.98554110527038574 -0.86975491046905518 
		-0.84762972593307495 -0.94958829879760742 -0.94753581285476685 -0.68461614847183228;
createNode animCurveTA -n "animCurveTA501";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 4 0.42646248836861955 7 
		-9.9590743530026931 10 -46.519882428519871 14 -64.658192700449561 19 -5.4044450167872355 
		23 4.8385309800147907 26 1.0968021670896093;
	setAttr -s 9 ".kit[2:8]"  1 1 1 9 9 9 9;
	setAttr -s 9 ".kot[2:8]"  1 1 1 9 9 9 9;
	setAttr -s 9 ".kix[2:8]"  0.9909898042678833 0.23619979619979858 
		0.14093360304832458 0.38571071624755859 0.24009685218334198 0.8993038535118103 
		0.8372730016708374;
	setAttr -s 9 ".kiy[2:8]"  0.1339372992515564 -0.97170448303222656 
		-0.99001902341842651 0.92261976003646851 0.97074896097183228 0.4373244047164917 
		-0.54678511619567871;
	setAttr -s 9 ".kox[2:8]"  0.99098986387252808 0.23619981110095978 
		0.14093358814716339 0.38571071624755859 0.24009685218334198 0.8993038535118103 
		0.8372730016708374;
	setAttr -s 9 ".koy[2:8]"  0.13393706083297729 -0.97170448303222656 
		-0.99001902341842651 0.92261976003646851 0.97074896097183228 0.4373244047164917 
		-0.54678511619567871;
createNode animCurveTA -n "animCurveTA502";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA503";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA504";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.0984482521620249 26 4.0984482521620249;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA505";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 18.588300303494186 26 18.588300303494186;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA506";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA507";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA508";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -22.686733334985114 26 -22.686733334985114;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA509";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA510";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA511";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0579251312417477e-005 26 1.0579251312417477e-005;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA512";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA513";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA514";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.0984482535121209 26 4.0984482535121209;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA515";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 18.588300300216801 26 18.588300300216801;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA516";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA517";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA518";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -22.686733333057838 26 -22.686733333057838;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA519";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA520";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA521";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0579251312417477e-005 26 1.0579251312417477e-005;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA522";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA523";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA524";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.4782236286598103 26 2.4782236286598103;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA525";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 4 0 26 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA526";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 4 0 26 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA527";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -39.488235982334174 2 -32.748039247027044 
		4 0 26 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[2:3]"  0.1158541813492775 1;
	setAttr -s 4 ".kiy[2:3]"  0.99326622486114502 0;
	setAttr -s 4 ".kox[0:3]"  0.49303930997848511 0.18993929028511047 
		0.81366974115371704 1;
	setAttr -s 4 ".koy[0:3]"  0.87000703811645508 0.98179584741592407 
		0.58132743835449219 0;
createNode animCurveTL -n "animCurveTL188";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.99214331096561381 26 -0.99214331096561381;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL189";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.033841737269357866 26 -0.033841737269357866;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL190";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.027201153963313806 26 -0.027201153963313806;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA528";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA529";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA530";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL191";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.99214413619678865 26 0.99214413619678865;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL192";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.033851474715545553 26 -0.033851474715545553;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL193";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.0272011762672867 26 -0.0272011762672867;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA531";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA532";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA533";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL194";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.3705977767760478 26 -1.3705977767760478;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL195";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.1618658070195953 26 2.1618658070195953;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL196";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.12044246479037771 26 -0.12044246479037771;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA534";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA535";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA536";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL197";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.3705978542308779 26 1.3705978542308779;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL198";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.1618621235956237 26 2.1618621235956237;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL199";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.12044250833667494 26 -0.12044250833667494;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA537";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA538";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA539";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL200";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL201";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL202";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1 26 -1;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL203";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL204";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL205";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1 26 -1;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA540";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 52.63721983934397 4 4.9458924361333496 
		8 -7.473358348077185 14 3.9663005106974749 19 1.0772155620835961 23 9.7381056940701303 
		26 52.63721983934397;
createNode animCurveTA -n "animCurveTA541";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -24.480967171432489 4 -41.56191026588602 
		8 -26.011243204831459 14 -20.344660326332288 19 -21.106012496436204 23 -33.715863834111047 
		26 -24.480967171432489;
createNode animCurveTA -n "animCurveTA542";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -64.344364641857069 4 -42.074964550286673 
		8 -20.07900851230027 14 -32.868992772285445 19 37.086094993089375 23 47.639556641146754 
		26 -64.344364641857069;
createNode animCurveTA -n "animCurveTA543";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -53.609443747430014 4 0.60449406710029929 
		8 -7.8259876733136222 14 -4.3821505094183779 19 9.2528466780713075 23 17.955694574438663 
		26 -53.609443747430014;
createNode animCurveTA -n "animCurveTA544";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -25.279137940425237 4 -24.500632006760558 
		8 -20.608392832570452 14 -30.123831150432625 19 -22.496297227049322 23 -16.550360207795819 
		26 -25.279137940425237;
createNode animCurveTA -n "animCurveTA545";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 57.594080128123693 4 48.167603902000536 
		8 42.353800302570363 14 37.384170178963402 19 -4.6943381520151535 23 -30.31532499481764 
		26 57.594080128123693;
createNode animCurveTA -n "animCurveTA546";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 59.468287502559065 4 87.943359157143377 
		8 46.807005478377221 14 46.807005478377221 19 81.159090356719403 23 99.502194408933576 
		26 59.468287502559065;
createNode animCurveTA -n "animCurveTA547";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 59.305463658789549 4 59.305463658789549 
		8 80.279245965644165 14 92.222849751153589 19 19.690539333682146 23 19.690539333682146 
		26 59.305463658789549;
createNode animCurveTA -n "animCurveTA548";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 18.476235154862632 4 18.476235154862632 
		8 18.476235154862632 14 18.476235154862632 19 18.476235154862632 23 18.476235154862632 
		26 18.476235154862632;
createNode animCurveTA -n "animCurveTA549";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 10.082003051124275 4 10.082003051124275 
		8 10.082003051124275 14 10.082003051124275 19 10.082003051124275 23 10.082003051124275 
		26 10.082003051124275;
createNode animCurveTA -n "animCurveTA550";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -4.720189328892868 4 -4.720189328892868 
		8 -4.720189328892868 14 -4.720189328892868 19 -4.720189328892868 23 -4.720189328892868 
		26 -4.720189328892868;
createNode animCurveTA -n "animCurveTA551";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -11.342548829337769 4 -11.342548829337769 
		8 -11.342548829337769 14 -11.342548829337769 19 -11.342548829337769 23 -11.342548829337769 
		26 -11.342548829337769;
createNode animCurveTA -n "animCurveTA552";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 11.615881410206432 4 11.615881410206432 
		8 11.615881410206432 14 11.615881410206432 19 11.615881410206432 23 11.615881410206432 
		26 11.615881410206432;
createNode animCurveTA -n "animCurveTA553";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.32159281075535068 4 0.32159281075535068 
		8 0.32159281075535068 14 0.32159281075535068 19 0.32159281075535068 23 0.32159281075535068 
		26 0.32159281075535068;
createNode animCurveTA -n "animCurveTA554";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 153.7392336167826 4 153.7392336167826 
		8 153.7392336167826 14 153.7392336167826 19 153.7392336167826 23 153.7392336167826 
		26 153.7392336167826;
createNode animCurveTA -n "animCurveTA555";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 59.959644693642325 4 59.959644693642325 
		8 59.959644693642325 14 59.959644693642325 19 59.959644693642325 23 59.959644693642325 
		26 59.959644693642325;
createNode animCurveTA -n "animCurveTA556";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 48.106469618696913 4 48.106469618696913 
		8 48.106469618696913 14 48.106469618696913 19 48.106469618696913 23 48.106469618696913 
		26 48.106469618696913;
createNode animCurveTA -n "animCurveTA557";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 14 0 19 0 23 0 26 0;
createNode animCurveTA -n "animCurveTA558";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 14 0 19 0 23 0 26 0;
createNode animCurveTA -n "animCurveTA559";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 101.15442879205187 4 101.15442879205187 
		8 101.15442879205187 14 101.15442879205187 19 101.15442879205187 23 101.15442879205187 
		26 101.15442879205187;
createNode animCurveTA -n "animCurveTA560";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA561";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA562";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA563";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA564";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA565";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 5.8087384459739102 26 5.8087384459739102;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA566";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA567";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA568";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 5.8087384459739102 26 5.8087384459739102;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA569";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 14 0 19 0 23 0 26 0;
createNode animCurveTA -n "animCurveTA570";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 14 0 19 0 23 0 26 0;
createNode animCurveTA -n "animCurveTA571";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 81.622987204614219 4 81.622987204614219 
		8 81.622987204614219 14 81.622987204614219 19 81.622987204614219 23 81.622987204614219 
		26 81.622987204614219;
createNode animCurveTA -n "animCurveTA572";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.2945941069882381 4 1.2945941069882381 
		8 1.2945941069882381 14 1.2945941069882381 19 1.2945941069882381 23 1.2945941069882381 
		26 1.2945941069882381;
createNode animCurveTA -n "animCurveTA573";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 3.3208811165553147 4 3.3208811165553147 
		8 3.3208811165553147 14 3.3208811165553147 19 3.3208811165553147 23 3.3208811165553147 
		26 3.3208811165553147;
createNode animCurveTA -n "animCurveTA574";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -27.525824477859967 4 -27.525824477859967 
		8 -27.525824477859967 14 -27.525824477859967 19 -27.525824477859967 23 -27.525824477859967 
		26 -27.525824477859967;
createNode animCurveTA -n "animCurveTA575";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -8.7597363552835983 4 1.6123314248998608 
		8 2.9073374655858624 14 18.907431770122162 19 49.334529382854704 23 51.01213837088843 
		26 -8.7597363552835983;
	setAttr -s 7 ".kit[4:6]"  1 1 9;
	setAttr -s 7 ".kot[4:6]"  1 1 9;
	setAttr -s 7 ".kix[4:6]"  0.39349335432052612 0.55251824855804443 
		0.095420055091381073;
	setAttr -s 7 ".kiy[4:6]"  0.91932743787765503 -0.83350080251693726 
		-0.99543708562850952;
	setAttr -s 7 ".kox[4:6]"  0.3934934139251709 0.55251806974411011 
		0.095420055091381073;
	setAttr -s 7 ".koy[4:6]"  0.91932743787765503 -0.83350092172622681 
		-0.99543708562850952;
createNode animCurveTA -n "animCurveTA576";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 2.3592104775795546 8 -3.0878534322616673 
		14 -25.465279098910361 19 -29.802853772617009 23 -9.7073175396043307 26 0;
createNode animCurveTA -n "animCurveTA577";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -8.9349579591731985 4 -3.9964105797239964 
		8 2.0591759949921213 14 -15.428949233744827 19 -29.67879894772555 23 -26.64909552806558 
		26 -8.9349579591731985;
	setAttr -s 7 ".kit[1:6]"  1 9 9 9 9 9;
	setAttr -s 7 ".kot[1:6]"  1 9 9 9 9 9;
	setAttr -s 7 ".kix[1:6]"  0.69493532180786133 0.85802000761032104 
		0.55196523666381836 0.83738535642623901 0.54172313213348389 0.30774900317192078;
	setAttr -s 7 ".kiy[1:6]"  0.71907228231430054 -0.51361620426177979 
		-0.83386713266372681 -0.54661303758621216 0.84055697917938232 0.95146757364273071;
	setAttr -s 7 ".kox[1:6]"  0.69493532180786133 0.85802000761032104 
		0.55196523666381836 0.83738535642623901 0.54172313213348389 0.30774900317192078;
	setAttr -s 7 ".koy[1:6]"  0.71907222270965576 -0.51361620426177979 
		-0.83386713266372681 -0.54661303758621216 0.84055697917938232 0.95146757364273071;
createNode animCurveTA -n "animCurveTA578";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 25.772516530009195 14 
		25.772516530009195 19 13.119558540447448 23 -16.25890839509896 26 0;
createNode animCurveTA -n "animCurveTA579";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 14 0 19 0 23 -10.401445284377511 
		26 0;
createNode animCurveTA -n "animCurveTA580";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 14 0 19 0 23 6.9365280671877203 
		26 0;
createNode animCurveTA -n "animCurveTA581";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 -31.223895281282633 8 -57.262410783911008 
		14 -38.36764088435185 19 53.318894747657303 23 29.682556296762989 26 0;
createNode animCurveTA -n "animCurveTA582";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -9.2427148064678804 4 -11.390377117825469 
		8 -15.761077356303803 14 -18.892745011023099 19 18.50202332366068 23 9.9464123992396694 
		26 -9.2427148064678804;
	setAttr -s 7 ".kit[2:6]"  1 1 9 9 9;
	setAttr -s 7 ".kot[2:6]"  1 1 9 9 9;
	setAttr -s 7 ".kix[2:6]"  0.77507179975509644 0.91911005973815918 
		0.51198011636734009 0.43409070372581482 0.28610342741012573;
	setAttr -s 7 ".kiy[2:6]"  -0.63187319040298462 0.39400085806846619 
		0.85899728536605835 -0.90086919069290161 -0.95819872617721558;
	setAttr -s 7 ".kox[2:6]"  0.77507179975509644 0.91911011934280396 
		0.51198011636734009 0.43409070372581482 0.28610342741012573;
	setAttr -s 7 ".koy[2:6]"  -0.63187313079833984 0.39400076866149902 
		0.85899728536605835 -0.90086919069290161 -0.95819872617721558;
createNode animCurveTA -n "animCurveTA583";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -10.062830706779266 4 7.0533655365044909 
		8 24.152715837131151 14 27.121300979522996 19 31.976062959660759 23 22.581685373677342 
		26 -10.062830706779266;
	setAttr -s 7 ".kit[1:6]"  1 1 9 9 9 9;
	setAttr -s 7 ".kot[1:6]"  1 1 9 9 9 9;
	setAttr -s 7 ".kix[1:6]"  0.41064494848251343 0.89489895105361938 
		0.93713074922561646 0.96684896945953369 0.30305963754653931 0.17287179827690125;
	setAttr -s 7 ".kiy[1:6]"  0.91179531812667847 0.44626888632774353 
		0.34897851943969727 -0.255348801612854 -0.95297157764434814 -0.98494434356689453;
	setAttr -s 7 ".kox[1:6]"  0.41064485907554626 0.89489895105361938 
		0.93713074922561646 0.96684896945953369 0.30305963754653931 0.17287179827690125;
	setAttr -s 7 ".koy[1:6]"  0.91179537773132324 0.44626888632774353 
		0.34897851943969727 -0.255348801612854 -0.95297157764434814 -0.98494434356689453;
createNode animCurveTA -n "animCurveTA584";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 14 0 19 4.1281685565191886 
		23 4.1281685565191886 26 0;
	setAttr -s 7 ".kit[3:6]"  1 9 9 9;
	setAttr -s 7 ".kot[3:6]"  1 9 9 9;
	setAttr -s 7 ".kix[3:6]"  0.99997764825820923 0.97235041856765747 
		0.95548474788665771 0.81134146451950073;
	setAttr -s 7 ".kiy[3:6]"  0.0066901575773954391 0.23352658748626709 
		-0.29504060745239258 -0.58457249402999878;
	setAttr -s 7 ".kox[3:6]"  0.99997764825820923 0.97235041856765747 
		0.95548474788665771 0.81134146451950073;
	setAttr -s 7 ".koy[3:6]"  0.0066901170648634434 0.23352658748626709 
		-0.29504060745239258 -0.58457249402999878;
createNode animCurveTA -n "animCurveTA585";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0.65788932259313382 14 
		5.68683855542369 19 10.248151920015635 23 10.248151920015635 26 0;
createNode animCurveTA -n "animCurveTA586";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 5.671986885245901 4 5.671986885245901 
		8 5.671986885245901 14 5.6719868852459081 19 10.047661768529599 23 10.047661768529599 
		26 5.671986885245901;
	setAttr -s 7 ".kit[3:6]"  1 9 9 9;
	setAttr -s 7 ".kot[3:6]"  1 9 9 9;
	setAttr -s 7 ".kix[3:6]"  0.99997484683990479 0.96909230947494507 
		0.950389564037323 0.79474371671676636;
	setAttr -s 7 ".kiy[3:6]"  0.0070911655202507973 0.24669839441776276 
		-0.31106221675872803 -0.60694515705108643;
	setAttr -s 7 ".kox[3:6]"  0.99997484683990479 0.96909230947494507 
		0.950389564037323 0.79474371671676636;
	setAttr -s 7 ".koy[3:6]"  0.0070911580696702003 0.24669839441776276 
		-0.31106221675872803 -0.60694515705108643;
createNode animCurveTA -n "animCurveTA587";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 14 0 19 0 23 0 26 0;
createNode animCurveTA -n "animCurveTA588";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 14 0 19 0 23 0 26 0;
createNode animCurveTA -n "animCurveTA589";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 90.838361755940937 4 90.838361755940937 
		8 90.838361755940937 14 90.838361755940937 19 90.838361755940937 23 90.838361755940937 
		26 90.838361755940937;
createNode animCurveTA -n "animCurveTA590";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 168.84052721592627 4 168.84052721592627 
		8 168.84052721592627 14 168.84052721592627 19 168.84052721592627 23 168.84052721592627 
		26 168.84052721592627;
createNode animCurveTA -n "animCurveTA591";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 42.116293762219605 4 42.116293762219605 
		8 42.116293762219605 14 42.116293762219605 19 42.116293762219605 23 42.116293762219605 
		26 42.116293762219605;
createNode animCurveTA -n "animCurveTA592";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 51.312599966148291 4 51.312599966148291 
		8 51.312599966148291 14 51.312599966148291 19 51.312599966148291 23 51.312599966148291 
		26 51.312599966148291;
createNode animCurveTA -n "animCurveTA593";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 14 0 19 0 23 0 26 0;
createNode animCurveTA -n "animCurveTA594";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 14 0 19 0 23 0 26 0;
createNode animCurveTA -n "animCurveTA595";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 86.611733534295581 4 86.611733534295581 
		8 86.611733534295581 14 86.611733534295581 19 86.611733534295581 23 86.611733534295581 
		26 86.611733534295581;
createNode clipLibrary -n "clipLibrary3";
	setAttr -s 168 ".cel[0].cev";
createNode clipLibrary -n "clipLibrary4";
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
	setAttr -s 3 ".sol";
connectAttr "brt_turn_180_CCW.st" "clipLibrary3.st[0]";
connectAttr "brt_turn_180_CCW.du" "clipLibrary3.du[0]";
connectAttr "animCurveTL165.a" "clipLibrary3.cel[0].cev[0].cevr";
connectAttr "animCurveTL166.a" "clipLibrary3.cel[0].cev[1].cevr";
connectAttr "animCurveTL167.a" "clipLibrary3.cel[0].cev[2].cevr";
connectAttr "animCurveTL168.a" "clipLibrary3.cel[0].cev[3].cevr";
connectAttr "animCurveTL169.a" "clipLibrary3.cel[0].cev[4].cevr";
connectAttr "animCurveTA477.a" "clipLibrary3.cel[0].cev[5].cevr";
connectAttr "animCurveTU33.a" "clipLibrary3.cel[0].cev[6].cevr";
connectAttr "animCurveTU34.a" "clipLibrary3.cel[0].cev[7].cevr";
connectAttr "animCurveTU35.a" "clipLibrary3.cel[0].cev[8].cevr";
connectAttr "animCurveTU36.a" "clipLibrary3.cel[0].cev[9].cevr";
connectAttr "animCurveTU37.a" "clipLibrary3.cel[0].cev[10].cevr";
connectAttr "animCurveTU38.a" "clipLibrary3.cel[0].cev[11].cevr";
connectAttr "animCurveTU39.a" "clipLibrary3.cel[0].cev[12].cevr";
connectAttr "animCurveTU40.a" "clipLibrary3.cel[0].cev[13].cevr";
connectAttr "animCurveTA478.a" "clipLibrary3.cel[0].cev[14].cevr";
connectAttr "animCurveTA479.a" "clipLibrary3.cel[0].cev[15].cevr";
connectAttr "animCurveTA480.a" "clipLibrary3.cel[0].cev[16].cevr";
connectAttr "animCurveTL170.a" "clipLibrary3.cel[0].cev[17].cevr";
connectAttr "animCurveTL171.a" "clipLibrary3.cel[0].cev[18].cevr";
connectAttr "animCurveTL172.a" "clipLibrary3.cel[0].cev[19].cevr";
connectAttr "animCurveTL173.a" "clipLibrary3.cel[0].cev[20].cevr";
connectAttr "animCurveTL174.a" "clipLibrary3.cel[0].cev[21].cevr";
connectAttr "animCurveTL175.a" "clipLibrary3.cel[0].cev[22].cevr";
connectAttr "animCurveTA481.a" "clipLibrary3.cel[0].cev[23].cevr";
connectAttr "animCurveTA482.a" "clipLibrary3.cel[0].cev[24].cevr";
connectAttr "animCurveTA483.a" "clipLibrary3.cel[0].cev[25].cevr";
connectAttr "animCurveTL176.a" "clipLibrary3.cel[0].cev[26].cevr";
connectAttr "animCurveTL177.a" "clipLibrary3.cel[0].cev[27].cevr";
connectAttr "animCurveTL178.a" "clipLibrary3.cel[0].cev[28].cevr";
connectAttr "animCurveTA484.a" "clipLibrary3.cel[0].cev[29].cevr";
connectAttr "animCurveTA485.a" "clipLibrary3.cel[0].cev[30].cevr";
connectAttr "animCurveTA486.a" "clipLibrary3.cel[0].cev[31].cevr";
connectAttr "animCurveTA487.a" "clipLibrary3.cel[0].cev[32].cevr";
connectAttr "animCurveTA488.a" "clipLibrary3.cel[0].cev[33].cevr";
connectAttr "animCurveTA489.a" "clipLibrary3.cel[0].cev[34].cevr";
connectAttr "animCurveTA490.a" "clipLibrary3.cel[0].cev[35].cevr";
connectAttr "animCurveTA491.a" "clipLibrary3.cel[0].cev[36].cevr";
connectAttr "animCurveTA492.a" "clipLibrary3.cel[0].cev[37].cevr";
connectAttr "animCurveTA493.a" "clipLibrary3.cel[0].cev[38].cevr";
connectAttr "animCurveTA494.a" "clipLibrary3.cel[0].cev[39].cevr";
connectAttr "animCurveTA495.a" "clipLibrary3.cel[0].cev[40].cevr";
connectAttr "animCurveTA496.a" "clipLibrary3.cel[0].cev[41].cevr";
connectAttr "animCurveTA497.a" "clipLibrary3.cel[0].cev[42].cevr";
connectAttr "animCurveTA498.a" "clipLibrary3.cel[0].cev[43].cevr";
connectAttr "animCurveTL179.a" "clipLibrary3.cel[0].cev[44].cevr";
connectAttr "animCurveTL180.a" "clipLibrary3.cel[0].cev[45].cevr";
connectAttr "animCurveTL181.a" "clipLibrary3.cel[0].cev[46].cevr";
connectAttr "animCurveTL182.a" "clipLibrary3.cel[0].cev[47].cevr";
connectAttr "animCurveTL183.a" "clipLibrary3.cel[0].cev[48].cevr";
connectAttr "animCurveTL184.a" "clipLibrary3.cel[0].cev[49].cevr";
connectAttr "animCurveTL185.a" "clipLibrary3.cel[0].cev[50].cevr";
connectAttr "animCurveTL186.a" "clipLibrary3.cel[0].cev[51].cevr";
connectAttr "animCurveTL187.a" "clipLibrary3.cel[0].cev[52].cevr";
connectAttr "animCurveTA499.a" "clipLibrary3.cel[0].cev[53].cevr";
connectAttr "animCurveTA500.a" "clipLibrary3.cel[0].cev[54].cevr";
connectAttr "animCurveTA501.a" "clipLibrary3.cel[0].cev[55].cevr";
connectAttr "animCurveTA502.a" "clipLibrary3.cel[0].cev[56].cevr";
connectAttr "animCurveTA503.a" "clipLibrary3.cel[0].cev[57].cevr";
connectAttr "animCurveTA504.a" "clipLibrary3.cel[0].cev[58].cevr";
connectAttr "animCurveTA505.a" "clipLibrary3.cel[0].cev[59].cevr";
connectAttr "animCurveTA506.a" "clipLibrary3.cel[0].cev[60].cevr";
connectAttr "animCurveTA507.a" "clipLibrary3.cel[0].cev[61].cevr";
connectAttr "animCurveTA508.a" "clipLibrary3.cel[0].cev[62].cevr";
connectAttr "animCurveTA509.a" "clipLibrary3.cel[0].cev[63].cevr";
connectAttr "animCurveTA510.a" "clipLibrary3.cel[0].cev[64].cevr";
connectAttr "animCurveTA511.a" "clipLibrary3.cel[0].cev[65].cevr";
connectAttr "animCurveTA512.a" "clipLibrary3.cel[0].cev[66].cevr";
connectAttr "animCurveTA513.a" "clipLibrary3.cel[0].cev[67].cevr";
connectAttr "animCurveTA514.a" "clipLibrary3.cel[0].cev[68].cevr";
connectAttr "animCurveTA515.a" "clipLibrary3.cel[0].cev[69].cevr";
connectAttr "animCurveTA516.a" "clipLibrary3.cel[0].cev[70].cevr";
connectAttr "animCurveTA517.a" "clipLibrary3.cel[0].cev[71].cevr";
connectAttr "animCurveTA518.a" "clipLibrary3.cel[0].cev[72].cevr";
connectAttr "animCurveTA519.a" "clipLibrary3.cel[0].cev[73].cevr";
connectAttr "animCurveTA520.a" "clipLibrary3.cel[0].cev[74].cevr";
connectAttr "animCurveTA521.a" "clipLibrary3.cel[0].cev[75].cevr";
connectAttr "animCurveTA522.a" "clipLibrary3.cel[0].cev[76].cevr";
connectAttr "animCurveTA523.a" "clipLibrary3.cel[0].cev[77].cevr";
connectAttr "animCurveTA524.a" "clipLibrary3.cel[0].cev[78].cevr";
connectAttr "animCurveTA525.a" "clipLibrary3.cel[0].cev[79].cevr";
connectAttr "animCurveTA526.a" "clipLibrary3.cel[0].cev[80].cevr";
connectAttr "animCurveTA527.a" "clipLibrary3.cel[0].cev[81].cevr";
connectAttr "animCurveTL188.a" "clipLibrary3.cel[0].cev[82].cevr";
connectAttr "animCurveTL189.a" "clipLibrary3.cel[0].cev[83].cevr";
connectAttr "animCurveTL190.a" "clipLibrary3.cel[0].cev[84].cevr";
connectAttr "animCurveTA528.a" "clipLibrary3.cel[0].cev[85].cevr";
connectAttr "animCurveTA529.a" "clipLibrary3.cel[0].cev[86].cevr";
connectAttr "animCurveTA530.a" "clipLibrary3.cel[0].cev[87].cevr";
connectAttr "animCurveTL191.a" "clipLibrary3.cel[0].cev[88].cevr";
connectAttr "animCurveTL192.a" "clipLibrary3.cel[0].cev[89].cevr";
connectAttr "animCurveTL193.a" "clipLibrary3.cel[0].cev[90].cevr";
connectAttr "animCurveTA531.a" "clipLibrary3.cel[0].cev[91].cevr";
connectAttr "animCurveTA532.a" "clipLibrary3.cel[0].cev[92].cevr";
connectAttr "animCurveTA533.a" "clipLibrary3.cel[0].cev[93].cevr";
connectAttr "animCurveTL194.a" "clipLibrary3.cel[0].cev[94].cevr";
connectAttr "animCurveTL195.a" "clipLibrary3.cel[0].cev[95].cevr";
connectAttr "animCurveTL196.a" "clipLibrary3.cel[0].cev[96].cevr";
connectAttr "animCurveTA534.a" "clipLibrary3.cel[0].cev[97].cevr";
connectAttr "animCurveTA535.a" "clipLibrary3.cel[0].cev[98].cevr";
connectAttr "animCurveTA536.a" "clipLibrary3.cel[0].cev[99].cevr";
connectAttr "animCurveTL197.a" "clipLibrary3.cel[0].cev[100].cevr";
connectAttr "animCurveTL198.a" "clipLibrary3.cel[0].cev[101].cevr";
connectAttr "animCurveTL199.a" "clipLibrary3.cel[0].cev[102].cevr";
connectAttr "animCurveTA537.a" "clipLibrary3.cel[0].cev[103].cevr";
connectAttr "animCurveTA538.a" "clipLibrary3.cel[0].cev[104].cevr";
connectAttr "animCurveTA539.a" "clipLibrary3.cel[0].cev[105].cevr";
connectAttr "animCurveTL200.a" "clipLibrary3.cel[0].cev[106].cevr";
connectAttr "animCurveTL201.a" "clipLibrary3.cel[0].cev[107].cevr";
connectAttr "animCurveTL202.a" "clipLibrary3.cel[0].cev[108].cevr";
connectAttr "animCurveTL203.a" "clipLibrary3.cel[0].cev[109].cevr";
connectAttr "animCurveTL204.a" "clipLibrary3.cel[0].cev[110].cevr";
connectAttr "animCurveTL205.a" "clipLibrary3.cel[0].cev[111].cevr";
connectAttr "animCurveTA540.a" "clipLibrary3.cel[0].cev[112].cevr";
connectAttr "animCurveTA541.a" "clipLibrary3.cel[0].cev[113].cevr";
connectAttr "animCurveTA542.a" "clipLibrary3.cel[0].cev[114].cevr";
connectAttr "animCurveTA543.a" "clipLibrary3.cel[0].cev[115].cevr";
connectAttr "animCurveTA544.a" "clipLibrary3.cel[0].cev[116].cevr";
connectAttr "animCurveTA545.a" "clipLibrary3.cel[0].cev[117].cevr";
connectAttr "animCurveTA546.a" "clipLibrary3.cel[0].cev[118].cevr";
connectAttr "animCurveTA547.a" "clipLibrary3.cel[0].cev[119].cevr";
connectAttr "animCurveTA548.a" "clipLibrary3.cel[0].cev[120].cevr";
connectAttr "animCurveTA549.a" "clipLibrary3.cel[0].cev[121].cevr";
connectAttr "animCurveTA550.a" "clipLibrary3.cel[0].cev[122].cevr";
connectAttr "animCurveTA551.a" "clipLibrary3.cel[0].cev[123].cevr";
connectAttr "animCurveTA552.a" "clipLibrary3.cel[0].cev[124].cevr";
connectAttr "animCurveTA553.a" "clipLibrary3.cel[0].cev[125].cevr";
connectAttr "animCurveTA554.a" "clipLibrary3.cel[0].cev[126].cevr";
connectAttr "animCurveTA555.a" "clipLibrary3.cel[0].cev[127].cevr";
connectAttr "animCurveTA556.a" "clipLibrary3.cel[0].cev[128].cevr";
connectAttr "animCurveTA557.a" "clipLibrary3.cel[0].cev[129].cevr";
connectAttr "animCurveTA558.a" "clipLibrary3.cel[0].cev[130].cevr";
connectAttr "animCurveTA559.a" "clipLibrary3.cel[0].cev[131].cevr";
connectAttr "animCurveTA560.a" "clipLibrary3.cel[0].cev[132].cevr";
connectAttr "animCurveTA561.a" "clipLibrary3.cel[0].cev[133].cevr";
connectAttr "animCurveTA562.a" "clipLibrary3.cel[0].cev[134].cevr";
connectAttr "animCurveTA563.a" "clipLibrary3.cel[0].cev[135].cevr";
connectAttr "animCurveTA564.a" "clipLibrary3.cel[0].cev[136].cevr";
connectAttr "animCurveTA565.a" "clipLibrary3.cel[0].cev[137].cevr";
connectAttr "animCurveTA566.a" "clipLibrary3.cel[0].cev[138].cevr";
connectAttr "animCurveTA567.a" "clipLibrary3.cel[0].cev[139].cevr";
connectAttr "animCurveTA568.a" "clipLibrary3.cel[0].cev[140].cevr";
connectAttr "animCurveTA569.a" "clipLibrary3.cel[0].cev[141].cevr";
connectAttr "animCurveTA570.a" "clipLibrary3.cel[0].cev[142].cevr";
connectAttr "animCurveTA571.a" "clipLibrary3.cel[0].cev[143].cevr";
connectAttr "animCurveTA572.a" "clipLibrary3.cel[0].cev[144].cevr";
connectAttr "animCurveTA573.a" "clipLibrary3.cel[0].cev[145].cevr";
connectAttr "animCurveTA574.a" "clipLibrary3.cel[0].cev[146].cevr";
connectAttr "animCurveTA575.a" "clipLibrary3.cel[0].cev[147].cevr";
connectAttr "animCurveTA576.a" "clipLibrary3.cel[0].cev[148].cevr";
connectAttr "animCurveTA577.a" "clipLibrary3.cel[0].cev[149].cevr";
connectAttr "animCurveTA578.a" "clipLibrary3.cel[0].cev[150].cevr";
connectAttr "animCurveTA579.a" "clipLibrary3.cel[0].cev[151].cevr";
connectAttr "animCurveTA580.a" "clipLibrary3.cel[0].cev[152].cevr";
connectAttr "animCurveTA581.a" "clipLibrary3.cel[0].cev[153].cevr";
connectAttr "animCurveTA582.a" "clipLibrary3.cel[0].cev[154].cevr";
connectAttr "animCurveTA583.a" "clipLibrary3.cel[0].cev[155].cevr";
connectAttr "animCurveTA584.a" "clipLibrary3.cel[0].cev[156].cevr";
connectAttr "animCurveTA585.a" "clipLibrary3.cel[0].cev[157].cevr";
connectAttr "animCurveTA586.a" "clipLibrary3.cel[0].cev[158].cevr";
connectAttr "animCurveTA587.a" "clipLibrary3.cel[0].cev[159].cevr";
connectAttr "animCurveTA588.a" "clipLibrary3.cel[0].cev[160].cevr";
connectAttr "animCurveTA589.a" "clipLibrary3.cel[0].cev[161].cevr";
connectAttr "animCurveTA590.a" "clipLibrary3.cel[0].cev[162].cevr";
connectAttr "animCurveTA591.a" "clipLibrary3.cel[0].cev[163].cevr";
connectAttr "animCurveTA592.a" "clipLibrary3.cel[0].cev[164].cevr";
connectAttr "animCurveTA593.a" "clipLibrary3.cel[0].cev[165].cevr";
connectAttr "animCurveTA594.a" "clipLibrary3.cel[0].cev[166].cevr";
connectAttr "animCurveTA595.a" "clipLibrary3.cel[0].cev[167].cevr";
connectAttr "brt_turn_180_CCW.st" "clipLibrary4.st[0]";
connectAttr "brt_turn_180_CCW.du" "clipLibrary4.du[0]";
connectAttr "animCurveTL165.a" "clipLibrary4.cel[0].cev[0].cevr";
connectAttr "animCurveTL166.a" "clipLibrary4.cel[0].cev[1].cevr";
connectAttr "animCurveTL167.a" "clipLibrary4.cel[0].cev[2].cevr";
connectAttr "animCurveTL168.a" "clipLibrary4.cel[0].cev[3].cevr";
connectAttr "animCurveTL169.a" "clipLibrary4.cel[0].cev[4].cevr";
connectAttr "animCurveTA477.a" "clipLibrary4.cel[0].cev[5].cevr";
connectAttr "animCurveTU33.a" "clipLibrary4.cel[0].cev[6].cevr";
connectAttr "animCurveTU34.a" "clipLibrary4.cel[0].cev[7].cevr";
connectAttr "animCurveTU35.a" "clipLibrary4.cel[0].cev[8].cevr";
connectAttr "animCurveTU36.a" "clipLibrary4.cel[0].cev[9].cevr";
connectAttr "animCurveTU37.a" "clipLibrary4.cel[0].cev[10].cevr";
connectAttr "animCurveTU38.a" "clipLibrary4.cel[0].cev[11].cevr";
connectAttr "animCurveTU39.a" "clipLibrary4.cel[0].cev[12].cevr";
connectAttr "animCurveTU40.a" "clipLibrary4.cel[0].cev[13].cevr";
connectAttr "animCurveTA478.a" "clipLibrary4.cel[0].cev[14].cevr";
connectAttr "animCurveTA479.a" "clipLibrary4.cel[0].cev[15].cevr";
connectAttr "animCurveTA480.a" "clipLibrary4.cel[0].cev[16].cevr";
connectAttr "animCurveTL170.a" "clipLibrary4.cel[0].cev[17].cevr";
connectAttr "animCurveTL171.a" "clipLibrary4.cel[0].cev[18].cevr";
connectAttr "animCurveTL172.a" "clipLibrary4.cel[0].cev[19].cevr";
connectAttr "animCurveTL173.a" "clipLibrary4.cel[0].cev[20].cevr";
connectAttr "animCurveTL174.a" "clipLibrary4.cel[0].cev[21].cevr";
connectAttr "animCurveTL175.a" "clipLibrary4.cel[0].cev[22].cevr";
connectAttr "animCurveTA481.a" "clipLibrary4.cel[0].cev[23].cevr";
connectAttr "animCurveTA482.a" "clipLibrary4.cel[0].cev[24].cevr";
connectAttr "animCurveTA483.a" "clipLibrary4.cel[0].cev[25].cevr";
connectAttr "animCurveTL176.a" "clipLibrary4.cel[0].cev[26].cevr";
connectAttr "animCurveTL177.a" "clipLibrary4.cel[0].cev[27].cevr";
connectAttr "animCurveTL178.a" "clipLibrary4.cel[0].cev[28].cevr";
connectAttr "animCurveTA484.a" "clipLibrary4.cel[0].cev[29].cevr";
connectAttr "animCurveTA485.a" "clipLibrary4.cel[0].cev[30].cevr";
connectAttr "animCurveTA486.a" "clipLibrary4.cel[0].cev[31].cevr";
connectAttr "animCurveTA487.a" "clipLibrary4.cel[0].cev[32].cevr";
connectAttr "animCurveTA488.a" "clipLibrary4.cel[0].cev[33].cevr";
connectAttr "animCurveTA489.a" "clipLibrary4.cel[0].cev[34].cevr";
connectAttr "animCurveTA490.a" "clipLibrary4.cel[0].cev[35].cevr";
connectAttr "animCurveTA491.a" "clipLibrary4.cel[0].cev[36].cevr";
connectAttr "animCurveTA492.a" "clipLibrary4.cel[0].cev[37].cevr";
connectAttr "animCurveTA493.a" "clipLibrary4.cel[0].cev[38].cevr";
connectAttr "animCurveTA494.a" "clipLibrary4.cel[0].cev[39].cevr";
connectAttr "animCurveTA495.a" "clipLibrary4.cel[0].cev[40].cevr";
connectAttr "animCurveTA496.a" "clipLibrary4.cel[0].cev[41].cevr";
connectAttr "animCurveTA497.a" "clipLibrary4.cel[0].cev[42].cevr";
connectAttr "animCurveTA498.a" "clipLibrary4.cel[0].cev[43].cevr";
connectAttr "animCurveTL179.a" "clipLibrary4.cel[0].cev[44].cevr";
connectAttr "animCurveTL180.a" "clipLibrary4.cel[0].cev[45].cevr";
connectAttr "animCurveTL181.a" "clipLibrary4.cel[0].cev[46].cevr";
connectAttr "animCurveTL182.a" "clipLibrary4.cel[0].cev[47].cevr";
connectAttr "animCurveTL183.a" "clipLibrary4.cel[0].cev[48].cevr";
connectAttr "animCurveTL184.a" "clipLibrary4.cel[0].cev[49].cevr";
connectAttr "animCurveTL185.a" "clipLibrary4.cel[0].cev[50].cevr";
connectAttr "animCurveTL186.a" "clipLibrary4.cel[0].cev[51].cevr";
connectAttr "animCurveTL187.a" "clipLibrary4.cel[0].cev[52].cevr";
connectAttr "animCurveTA499.a" "clipLibrary4.cel[0].cev[53].cevr";
connectAttr "animCurveTA500.a" "clipLibrary4.cel[0].cev[54].cevr";
connectAttr "animCurveTA501.a" "clipLibrary4.cel[0].cev[55].cevr";
connectAttr "animCurveTA502.a" "clipLibrary4.cel[0].cev[56].cevr";
connectAttr "animCurveTA503.a" "clipLibrary4.cel[0].cev[57].cevr";
connectAttr "animCurveTA504.a" "clipLibrary4.cel[0].cev[58].cevr";
connectAttr "animCurveTA505.a" "clipLibrary4.cel[0].cev[59].cevr";
connectAttr "animCurveTA506.a" "clipLibrary4.cel[0].cev[60].cevr";
connectAttr "animCurveTA507.a" "clipLibrary4.cel[0].cev[61].cevr";
connectAttr "animCurveTA508.a" "clipLibrary4.cel[0].cev[62].cevr";
connectAttr "animCurveTA509.a" "clipLibrary4.cel[0].cev[63].cevr";
connectAttr "animCurveTA510.a" "clipLibrary4.cel[0].cev[64].cevr";
connectAttr "animCurveTA511.a" "clipLibrary4.cel[0].cev[65].cevr";
connectAttr "animCurveTA512.a" "clipLibrary4.cel[0].cev[66].cevr";
connectAttr "animCurveTA513.a" "clipLibrary4.cel[0].cev[67].cevr";
connectAttr "animCurveTA514.a" "clipLibrary4.cel[0].cev[68].cevr";
connectAttr "animCurveTA515.a" "clipLibrary4.cel[0].cev[69].cevr";
connectAttr "animCurveTA516.a" "clipLibrary4.cel[0].cev[70].cevr";
connectAttr "animCurveTA517.a" "clipLibrary4.cel[0].cev[71].cevr";
connectAttr "animCurveTA518.a" "clipLibrary4.cel[0].cev[72].cevr";
connectAttr "animCurveTA519.a" "clipLibrary4.cel[0].cev[73].cevr";
connectAttr "animCurveTA520.a" "clipLibrary4.cel[0].cev[74].cevr";
connectAttr "animCurveTA521.a" "clipLibrary4.cel[0].cev[75].cevr";
connectAttr "animCurveTA522.a" "clipLibrary4.cel[0].cev[76].cevr";
connectAttr "animCurveTA523.a" "clipLibrary4.cel[0].cev[77].cevr";
connectAttr "animCurveTA524.a" "clipLibrary4.cel[0].cev[78].cevr";
connectAttr "animCurveTA525.a" "clipLibrary4.cel[0].cev[79].cevr";
connectAttr "animCurveTA526.a" "clipLibrary4.cel[0].cev[80].cevr";
connectAttr "animCurveTA527.a" "clipLibrary4.cel[0].cev[81].cevr";
connectAttr "animCurveTL188.a" "clipLibrary4.cel[0].cev[82].cevr";
connectAttr "animCurveTL189.a" "clipLibrary4.cel[0].cev[83].cevr";
connectAttr "animCurveTL190.a" "clipLibrary4.cel[0].cev[84].cevr";
connectAttr "animCurveTA528.a" "clipLibrary4.cel[0].cev[85].cevr";
connectAttr "animCurveTA529.a" "clipLibrary4.cel[0].cev[86].cevr";
connectAttr "animCurveTA530.a" "clipLibrary4.cel[0].cev[87].cevr";
connectAttr "animCurveTL191.a" "clipLibrary4.cel[0].cev[88].cevr";
connectAttr "animCurveTL192.a" "clipLibrary4.cel[0].cev[89].cevr";
connectAttr "animCurveTL193.a" "clipLibrary4.cel[0].cev[90].cevr";
connectAttr "animCurveTA531.a" "clipLibrary4.cel[0].cev[91].cevr";
connectAttr "animCurveTA532.a" "clipLibrary4.cel[0].cev[92].cevr";
connectAttr "animCurveTA533.a" "clipLibrary4.cel[0].cev[93].cevr";
connectAttr "animCurveTL194.a" "clipLibrary4.cel[0].cev[94].cevr";
connectAttr "animCurveTL195.a" "clipLibrary4.cel[0].cev[95].cevr";
connectAttr "animCurveTL196.a" "clipLibrary4.cel[0].cev[96].cevr";
connectAttr "animCurveTA534.a" "clipLibrary4.cel[0].cev[97].cevr";
connectAttr "animCurveTA535.a" "clipLibrary4.cel[0].cev[98].cevr";
connectAttr "animCurveTA536.a" "clipLibrary4.cel[0].cev[99].cevr";
connectAttr "animCurveTL197.a" "clipLibrary4.cel[0].cev[100].cevr";
connectAttr "animCurveTL198.a" "clipLibrary4.cel[0].cev[101].cevr";
connectAttr "animCurveTL199.a" "clipLibrary4.cel[0].cev[102].cevr";
connectAttr "animCurveTA537.a" "clipLibrary4.cel[0].cev[103].cevr";
connectAttr "animCurveTA538.a" "clipLibrary4.cel[0].cev[104].cevr";
connectAttr "animCurveTA539.a" "clipLibrary4.cel[0].cev[105].cevr";
connectAttr "animCurveTL200.a" "clipLibrary4.cel[0].cev[106].cevr";
connectAttr "animCurveTL201.a" "clipLibrary4.cel[0].cev[107].cevr";
connectAttr "animCurveTL202.a" "clipLibrary4.cel[0].cev[108].cevr";
connectAttr "animCurveTL203.a" "clipLibrary4.cel[0].cev[109].cevr";
connectAttr "animCurveTL204.a" "clipLibrary4.cel[0].cev[110].cevr";
connectAttr "animCurveTL205.a" "clipLibrary4.cel[0].cev[111].cevr";
connectAttr "animCurveTA540.a" "clipLibrary4.cel[0].cev[112].cevr";
connectAttr "animCurveTA541.a" "clipLibrary4.cel[0].cev[113].cevr";
connectAttr "animCurveTA542.a" "clipLibrary4.cel[0].cev[114].cevr";
connectAttr "animCurveTA543.a" "clipLibrary4.cel[0].cev[115].cevr";
connectAttr "animCurveTA544.a" "clipLibrary4.cel[0].cev[116].cevr";
connectAttr "animCurveTA545.a" "clipLibrary4.cel[0].cev[117].cevr";
connectAttr "animCurveTA546.a" "clipLibrary4.cel[0].cev[118].cevr";
connectAttr "animCurveTA547.a" "clipLibrary4.cel[0].cev[119].cevr";
connectAttr "animCurveTA548.a" "clipLibrary4.cel[0].cev[120].cevr";
connectAttr "animCurveTA549.a" "clipLibrary4.cel[0].cev[121].cevr";
connectAttr "animCurveTA550.a" "clipLibrary4.cel[0].cev[122].cevr";
connectAttr "animCurveTA551.a" "clipLibrary4.cel[0].cev[123].cevr";
connectAttr "animCurveTA552.a" "clipLibrary4.cel[0].cev[124].cevr";
connectAttr "animCurveTA553.a" "clipLibrary4.cel[0].cev[125].cevr";
connectAttr "animCurveTA554.a" "clipLibrary4.cel[0].cev[126].cevr";
connectAttr "animCurveTA555.a" "clipLibrary4.cel[0].cev[127].cevr";
connectAttr "animCurveTA556.a" "clipLibrary4.cel[0].cev[128].cevr";
connectAttr "animCurveTA557.a" "clipLibrary4.cel[0].cev[129].cevr";
connectAttr "animCurveTA558.a" "clipLibrary4.cel[0].cev[130].cevr";
connectAttr "animCurveTA559.a" "clipLibrary4.cel[0].cev[131].cevr";
connectAttr "animCurveTA560.a" "clipLibrary4.cel[0].cev[132].cevr";
connectAttr "animCurveTA561.a" "clipLibrary4.cel[0].cev[133].cevr";
connectAttr "animCurveTA562.a" "clipLibrary4.cel[0].cev[134].cevr";
connectAttr "animCurveTA563.a" "clipLibrary4.cel[0].cev[135].cevr";
connectAttr "animCurveTA564.a" "clipLibrary4.cel[0].cev[136].cevr";
connectAttr "animCurveTA565.a" "clipLibrary4.cel[0].cev[137].cevr";
connectAttr "animCurveTA566.a" "clipLibrary4.cel[0].cev[138].cevr";
connectAttr "animCurveTA567.a" "clipLibrary4.cel[0].cev[139].cevr";
connectAttr "animCurveTA568.a" "clipLibrary4.cel[0].cev[140].cevr";
connectAttr "animCurveTA569.a" "clipLibrary4.cel[0].cev[141].cevr";
connectAttr "animCurveTA570.a" "clipLibrary4.cel[0].cev[142].cevr";
connectAttr "animCurveTA571.a" "clipLibrary4.cel[0].cev[143].cevr";
connectAttr "animCurveTA572.a" "clipLibrary4.cel[0].cev[144].cevr";
connectAttr "animCurveTA573.a" "clipLibrary4.cel[0].cev[145].cevr";
connectAttr "animCurveTA574.a" "clipLibrary4.cel[0].cev[146].cevr";
connectAttr "animCurveTA575.a" "clipLibrary4.cel[0].cev[147].cevr";
connectAttr "animCurveTA576.a" "clipLibrary4.cel[0].cev[148].cevr";
connectAttr "animCurveTA577.a" "clipLibrary4.cel[0].cev[149].cevr";
connectAttr "animCurveTA578.a" "clipLibrary4.cel[0].cev[150].cevr";
connectAttr "animCurveTA579.a" "clipLibrary4.cel[0].cev[151].cevr";
connectAttr "animCurveTA580.a" "clipLibrary4.cel[0].cev[152].cevr";
connectAttr "animCurveTA581.a" "clipLibrary4.cel[0].cev[153].cevr";
connectAttr "animCurveTA582.a" "clipLibrary4.cel[0].cev[154].cevr";
connectAttr "animCurveTA583.a" "clipLibrary4.cel[0].cev[155].cevr";
connectAttr "animCurveTA584.a" "clipLibrary4.cel[0].cev[156].cevr";
connectAttr "animCurveTA585.a" "clipLibrary4.cel[0].cev[157].cevr";
connectAttr "animCurveTA586.a" "clipLibrary4.cel[0].cev[158].cevr";
connectAttr "animCurveTA587.a" "clipLibrary4.cel[0].cev[159].cevr";
connectAttr "animCurveTA588.a" "clipLibrary4.cel[0].cev[160].cevr";
connectAttr "animCurveTA589.a" "clipLibrary4.cel[0].cev[161].cevr";
connectAttr "animCurveTA590.a" "clipLibrary4.cel[0].cev[162].cevr";
connectAttr "animCurveTA591.a" "clipLibrary4.cel[0].cev[163].cevr";
connectAttr "animCurveTA592.a" "clipLibrary4.cel[0].cev[164].cevr";
connectAttr "animCurveTA593.a" "clipLibrary4.cel[0].cev[165].cevr";
connectAttr "animCurveTA594.a" "clipLibrary4.cel[0].cev[166].cevr";
connectAttr "animCurveTA595.a" "clipLibrary4.cel[0].cev[167].cevr";
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
// End of brt-m_turn_180_CCW.ma
