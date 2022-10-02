//Maya ASCII 4.0 scene
//Name: apu-m_get_out_of_car_open_door_high.ma
//Last modified: Tue, Jul 23, 2002 12:39:25 PM
requires maya "4.0";
requires "p3dmayaexp" "17.9.1.0";
requires "p3dSimpleShader" "17.1";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "apu_get_out_of_car_open_door_high";
	setAttr ".ihi" 0;
	setAttr ".du" 18;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL42";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL43";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "animCurveTL44";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -1.0952018375240786 1 -1.0962249972784126 
		2 -1.0982713167870808 3 -1.0998060564185819 4 -1.0992944765414148 5 -1.0952018375240786 
		6 -1.085481819955979 7 -1.0711575836291707 8 -1.0552986077161257 9 -1.0409743713893174 
		10 -1.0312543538212178 11 -1.0258827650637237 12 -1.0228132857062409 13 -1.0224296007275051 
		14 -1.0251153951062522 15 -1.0312543538212178 16 -1.0496096501610677 17 -1.0768465411842287 
		18 -1.0952018375240786;
	setAttr -s 19 ".kit[18]"  1;
	setAttr -s 19 ".kot[0:18]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9;
	setAttr -s 19 ".kix[18]"  0.028392281383275986;
	setAttr -s 19 ".kiy[18]"  -0.99959683418273926;
	setAttr -s 19 ".kox[0:18]"  0.30976375937461853 0.21224376559257507 
		0.18302018940448761 0.54591643810272217 0.14330035448074341 0.048208795487880707 
		0.027716001495718956 0.022081946954131126 0.022081946954131126 0.027716001495718956 
		0.044131629168987274 0.078733772039413452 0.18955932557582855 0.2781606912612915 
		0.075330421328544617 0.027207190170884132 0.014620824716985226 0.014620824716985226 
		0.018157053738832474;
	setAttr -s 19 ".koy[0:18]"  -0.95081353187561035 -0.97721678018569946 
		-0.98310917615890503 -0.83783960342407227 0.98967921733856201 0.99883729219436646 
		0.99961584806442261 0.99975615739822388 0.99975615739822388 0.99961584806442261 
		0.99902570247650146 0.99689567089080811 0.98186928033828735 -0.96053457260131836 
		-0.99715864658355713 -0.99962979555130005 -0.99989312887191772 -0.99989312887191772 
		-0.99983513355255127;
createNode animCurveTL -n "animCurveTL45";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTL -n "animCurveTL46";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0.51629522071327538 1 0.51627456617515466 
		2 0.51623325709891321 3 0.51620227529173224 4 0.51621260256079249 5 0.51629522071327538 
		6 0.51649143882738602 7 0.5167806023657594 8 0.51710074771222037 9 0.51738991125059386 
		10 0.51758612936470449 11 0.51769456568939054 12 0.5177565293028572 13 0.51776427475398112 
		14 0.51771005659163805 15 0.51758612936470449 16 0.51721559077145918 17 0.5166657593065207 
		18 0.51629522071327538;
	setAttr -s 19 ".kit[18]"  1;
	setAttr -s 19 ".kot[0:18]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9;
	setAttr -s 19 ".kix[18]"  0.81510704755783081;
	setAttr -s 19 ".kiy[18]"  -0.57931035757064819;
	setAttr -s 19 ".kox[0:18]"  0.99808573722839355 0.99570834636688232 
		0.99417215585708618 0.99952042102813721 0.99042069911956787 0.92255604267120361 
		0.80842840671539307 0.7381473183631897 0.7381473183631897 0.80842840671539307 
		0.9095299243927002 0.9688524603843689 0.99457764625549316 0.99757915735244751 
		0.96610218286514282 0.8031889796257019 0.5866205096244812 0.5866205096244812 
		0.66879653930664063;
	setAttr -s 19 ".koy[0:18]"  -0.061845012009143829 -0.092546530067920685 
		-0.10780437290668488 -0.030966948717832565 0.13808260858058929 0.38586312532424927 
		0.58859449625015259 0.67463958263397217 0.67463958263397217 0.58859449625015259 
		0.41563847661018372 0.24763861298561096 0.10399661958217621 -0.069540314376354218 
		-0.25815996527671814 -0.59572428464889526 -0.80986195802688599 -0.80986195802688599 
		-0.74344545602798462;
createNode animCurveTA -n "animCurveTA114";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0;
	setAttr -s 19 ".kit[18]"  1;
	setAttr -s 19 ".kot[0:18]"  1 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 2 2 2 2;
	setAttr -s 19 ".kix[18]"  1;
	setAttr -s 19 ".kiy[18]"  0;
	setAttr -s 19 ".kox[0:18]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 19 ".koy[0:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
createNode animCurveTU -n "animCurveTU9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU15";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "animCurveTA115";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA116";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA117";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL47";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL48";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL49";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL50";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.7740090505409214 5 -1.7740090505409214 
		10 -1.7633058832158881 15 -1.7633058832158881 18 -1.7740090505409214;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.24175693094730377;
	setAttr -s 5 ".kiy[4]"  -0.97033685445785522;
	setAttr -s 5 ".kox[0:4]"  1 0.29734787344932556 0.29734787344932556 
		0.24175694584846497 0.093025118112564087;
	setAttr -s 5 ".koy[0:4]"  0 0.95476919412612915 0.95476919412612915 
		-0.97033685445785522 -0.99566376209259033;
createNode animCurveTL -n "animCurveTL51";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.2438866803808624 5 1.2438866803808624 
		10 1.2438866803808624 15 1.2438866803808624 18 1.2438866803808624;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL52";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.2494521403134777 5 1.2494521403134777 
		10 1.2603207294578309 15 1.2603207294578309 18 1.2494521403134777;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.23828780651092529;
	setAttr -s 5 ".kiy[4]"  -0.9711945652961731;
	setAttr -s 5 ".kox[0:4]"  1 0.29321402311325073 0.29321402311325073 
		0.23828780651092529 0.091621249914169312;
	setAttr -s 5 ".koy[0:4]"  0 0.95604681968688965 0.95604681968688965 
		-0.9711945652961731 -0.99579393863677979;
createNode animCurveTA -n "animCurveTA118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.5751763774817589 5 -1.5751763774817589 
		10 18.258369463974045 15 18.258369463974045 18 -1.5751763774817589;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.61027020215988159;
	setAttr -s 5 ".kiy[4]"  -0.79219329357147217;
	setAttr -s 5 ".kox[0:4]"  1 0.69363456964492798 0.69363456964492798 
		0.61027020215988159 0.27753451466560364;
	setAttr -s 5 ".koy[0:4]"  0 0.72032707929611206 0.72032707929611206 
		-0.79219329357147217 -0.960715651512146;
createNode animCurveTA -n "animCurveTA119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.1607895919799451 5 1.1607895919799451 
		10 -0.4594635420121464 15 -0.4594635420121464 18 1.1607895919799451;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.99442416429519653;
	setAttr -s 5 ".kiy[4]"  0.10545402765274048;
	setAttr -s 5 ".kox[0:4]"  1 0.99642074108123779 0.99642074108123779 
		0.99442416429519653 0.96226435899734497;
	setAttr -s 5 ".koy[0:4]"  0 -0.084532603621482849 -0.084532603621482849 
		0.10545402765274048 0.27211642265319824;
createNode animCurveTA -n "animCurveTA120";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.87194592567078033 5 -0.87194592567078033 
		10 -50.827064078393555 15 -50.827064078393555 18 -0.87194592567078033;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.2924778163433075;
	setAttr -s 5 ".kiy[4]"  0.95627230405807495;
	setAttr -s 5 ".kox[0:4]"  1 0.35710656642913818 0.35710656642913818 
		0.2924778163433075 0.11394745111465454;
	setAttr -s 5 ".koy[0:4]"  0 -0.93406367301940918 -0.93406367301940918 
		0.95627230405807495 0.99348676204681396;
createNode animCurveTL -n "animCurveTL53";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.3703793393213584 5 -1.099152325827061 
		10 -1.099152325827061 15 -1.099152325827061 18 -1.3703793393213584;
	setAttr -s 5 ".kit[1:4]"  3 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 3 9 9 9;
	setAttr -s 5 ".kix[4]"  0.0098313875496387482;
	setAttr -s 5 ".kiy[4]"  -0.99995166063308716;
	setAttr -s 5 ".kox[0:4]"  0.0061447983607649803 1 1 0.0098313875496387482 
		0.0036869221366941929;
	setAttr -s 5 ".koy[0:4]"  0.9999811053276062 0 0 -0.99995166063308716 
		-0.99999320507049561;
createNode animCurveTL -n "animCurveTL54";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.2181997458457936 5 1.1697588399491916 
		10 1.1697588399491916 15 1.1697588399491916 18 1.2181997458457936;
	setAttr -s 5 ".kit[1:4]"  3 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 3 9 9 9;
	setAttr -s 5 ".kix[4]"  0.054966665804386139;
	setAttr -s 5 ".kiy[4]"  0.99848818778991699;
	setAttr -s 5 ".kox[0:4]"  0.034385837614536285 1 1 0.054966665804386139 
		0.020639307796955109;
	setAttr -s 5 ".koy[0:4]"  -0.99940860271453857 0 0 0.99848818778991699 
		0.99978697299957275;
createNode animCurveTL -n "animCurveTL55";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.2469201745104628 5 1.2204871185746078 
		10 1.2204871185746078 15 1.2204871185746078 18 1.2469201745104628;
	setAttr -s 5 ".kit[1:4]"  3 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 3 9 9 9;
	setAttr -s 5 ".kix[4]"  0.10037428885698318;
	setAttr -s 5 ".kiy[4]"  0.9949498176574707;
	setAttr -s 5 ".kox[0:4]"  0.062927402555942535 1 1 0.10037428885698318 
		0.037804365158081055;
	setAttr -s 5 ".koy[0:4]"  -0.99801814556121826 0 0 0.99494975805282593 
		0.99928516149520874;
createNode animCurveTA -n "animCurveTA121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -11.886851870004584 5 0.69897974368645743 
		10 0.69897974368645743 15 0.69897974368645743 18 -11.886851870004584;
	setAttr -s 5 ".kit[1:4]"  3 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 3 9 9 9;
	setAttr -s 5 ".kix[4]"  0.77185016870498657;
	setAttr -s 5 ".kiy[4]"  -0.63580447435379028;
	setAttr -s 5 ".kox[0:4]"  0.60444372892379761 1 1 0.77185016870498657 
		0.41432690620422363;
	setAttr -s 5 ".koy[0:4]"  0.79664784669876099 0 0 -0.63580447435379028 
		-0.91012811660766602;
createNode animCurveTA -n "animCurveTA122";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.412847326294145 5 26.758011526591705 
		10 26.758011526591705 15 26.758011526591705 18 0.412847326294145;
	setAttr -s 5 ".kit[1:4]"  3 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 3 9 9 9;
	setAttr -s 5 ".kix[4]"  0.50168561935424805;
	setAttr -s 5 ".kiy[4]"  -0.86505001783370972;
	setAttr -s 5 ".kox[0:4]"  0.34077328443527222 1 1 0.50168561935424805 
		0.21251346170902252;
	setAttr -s 5 ".koy[0:4]"  0.94014549255371094 0 0 -0.86505001783370972 
		-0.97715812921524048;
createNode animCurveTA -n "animCurveTA123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.2823453568505262 5 -5.7231114604369679 
		10 -5.7231114604369679 15 -5.7231114604369679 18 0.2823453568505262;
	setAttr -s 5 ".kit[1:4]"  3 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 3 9 9 9;
	setAttr -s 5 ".kix[4]"  0.93068844079971313;
	setAttr -s 5 ".kiy[4]"  0.36581289768218994;
	setAttr -s 5 ".kox[0:4]"  0.84651505947113037 1 1 0.93068844079971313 
		0.6902925968170166;
	setAttr -s 5 ".koy[0:4]"  -0.53236478567123413 0 0 0.36581289768218994 
		0.7235303521156311;
createNode animCurveTA -n "animCurveTA124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA126";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL56";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.074875046720990754 5 -0.074875046720990754 
		10 -0.074875046720990754 15 -0.074875046720990754 18 -0.074875046720990754;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL57";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.55075855956964637 5 0.55075855956964637 
		10 0.55075855956964637 15 0.55075855956964637 18 0.55075855956964637;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL58";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.60469110097969292 5 0.60469110097969292 
		10 0.60469110097969292 15 0.60469110097969292 18 0.60469110097969292;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.019751971155700085 5 0.019751971155700085 
		10 0.019751971155700085 15 0.019751971155700085 18 0.019751971155700085;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL60";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.012406585471724105 5 0.012406585471724105 
		10 0.012406585471724105 15 0.012406585471724105 18 0.012406585471724105;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.75331407968996078 5 0.75331407968996078 
		10 0.75331407968996078 15 0.75331407968996078 18 0.75331407968996078;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL62";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.5488223092730475 5 -1.5488223092730475 
		10 -1.458388486038444 15 -1.458388486038444 18 -1.5488223092730475;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.029474679380655289;
	setAttr -s 5 ".kiy[4]"  -0.99956554174423218;
	setAttr -s 5 ".kox[0:4]"  1 0.036834351718425751 0.036834351718425751 
		0.029474679380655289 0.011057130061089993;
	setAttr -s 5 ".koy[0:4]"  0 0.99932140111923218 0.99932140111923218 
		-0.99956554174423218 -0.99993884563446045;
createNode animCurveTL -n "animCurveTL63";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.6405880901231942 5 1.6405880901231942 
		10 1.6405880901231942 15 1.6405880901231942 18 1.6405880901231942;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL64";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.73013898316637194 5 0.73013898316637194 
		10 0.73196457188441788 15 0.73196457188441788 18 0.73013898316637194;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.82515907287597656;
	setAttr -s 5 ".kiy[4]"  -0.56490039825439453;
	setAttr -s 5 ".kox[0:4]"  1 0.87707501649856567 0.87707501649856567 
		0.82515907287597656 0.48041537404060364;
	setAttr -s 5 ".koy[0:4]"  0 0.48035347461700439 0.48035347461700439 
		-0.56490039825439453 -0.87704110145568848;
createNode animCurveTA -n "animCurveTA130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 174.54238788346808 5 182.1038498015609 
		10 183.97013047505536 15 183.97013047505536 18 174.54238788346808;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.97539603710174561;
	setAttr -s 5 ".kiy[4]"  0.22045998275279999;
	setAttr -s 5 ".kox[0:4]"  0.7839818000793457 0.89669835567474365 
		0.99525952339172363 0.85102725028991699 0.51934832334518433;
	setAttr -s 5 ".koy[0:4]"  0.62078368663787842 0.44264209270477295 
		0.097254998981952667 -0.52512151002883911 -0.85456264019012451;
createNode animCurveTA -n "animCurveTA131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 177.08575610971633 5 177.99149235489685 
		10 179.29747379870088 15 179.29747379870088 18 177.08575610971633;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.74227851629257202;
	setAttr -s 5 ".kiy[4]"  -0.67009145021438599;
	setAttr -s 5 ".kox[0:4]"  0.99553203582763672 0.99336129426956177 
		0.99767017364501953 0.9896845817565918 0.93290656805038452;
	setAttr -s 5 ".koy[0:4]"  0.094424694776535034 0.11503646522760391 
		0.068221710622310638 -0.14326336979866028 -0.36011841893196106;
createNode animCurveTA -n "animCurveTA132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 179.28558162986903 5 181.66729161458386 
		10 157.76373763020862 15 157.76373763020862 18 179.28558162986903;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.68976467847824097;
	setAttr -s 5 ".kiy[4]"  0.7240336537361145;
	setAttr -s 5 ".kox[0:4]"  0.9702765941619873 0.66374361515045166 
		0.62421166896820068 0.57888072729110718 0.25726094841957092;
	setAttr -s 5 ".koy[0:4]"  0.24199870228767395 -0.74796015024185181 
		-0.78125530481338501 0.81541222333908081 0.96634197235107422;
createNode animCurveTA -n "animCurveTA133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA137";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 18 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 18 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 18 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 18 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 18 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -37.313732430097119 5 0 10 -37.313732430097119 
		15 -37.313732430097119 18 -37.313732430097119;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  0.24792885780334473 1 0.45562413334846497 
		1 1;
	setAttr -s 5 ".koy[0:4]"  0.96877825260162354 0 -0.89017224311828613 
		0 0;
createNode animCurveTL -n "animCurveTL65";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.5198069948790518 5 -0.5198069948790518 
		10 -0.5198069948790518 15 -0.5198069948790518 18 -0.5198069948790518;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL66";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.72394202659893114 5 -0.72394202659893114 
		10 -0.72394202659893114 15 -0.72394202659893114 18 -0.72394202659893114;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL67";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.36439499068905612 5 0.36439499068905612 
		10 0.36439499068905612 15 0.36439499068905612 18 0.36439499068905612;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 7.7976222737965299 5 7.7976222737965299 
		10 7.7976222737965299 15 7.7976222737965299 18 7.7976222737965299;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 30.409274105849079 5 30.409274105849079 
		10 30.409274105849079 15 30.409274105849079 18 30.409274105849079;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 64.859940280210878 5 64.859940280210878 
		10 64.859940280210878 15 64.859940280210878 18 64.859940280210878;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL68";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.43524234076486068 5 0.43524234076486068 
		10 0.43524234076486068 15 0.43524234076486068 18 0.43524234076486068;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL69";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.82665738350180629 5 -0.82665738350180629 
		10 -0.82665738350180629 15 -0.82665738350180629 18 -0.82665738350180629;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL70";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.27773886459742925 5 0.27773886459742925 
		10 0.27773886459742925 15 0.27773886459742925 18 0.27773886459742925;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 18 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -28.652637602052774 5 -28.652637602052774 
		10 -28.652637602052774 15 -28.652637602052774 18 -28.652637602052774;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -64.676908227303443 5 -64.676908227303443 
		10 -64.676908227303443 15 -64.676908227303443 18 -64.676908227303443;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL71";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.8425600772172066 5 -3.0715990535559956 
		10 -2.5539082851416843 15 -2.5539082851416843 18 -2.8425600772172066;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.0036149551160633564;
	setAttr -s 5 ".kiy[4]"  -0.99999344348907471;
	setAttr -s 5 ".kox[0:4]"  0.0072765890508890152 0.011547169648110867 
		0.0064387167803943157 0.0092379571869969368 0.0034643600229173899;
	setAttr -s 5 ".koy[0:4]"  -0.99997353553771973 0.99993330240249634 
		0.99997925758361816 -0.99995732307434082 -0.99999397993087769;
createNode animCurveTL -n "animCurveTL72";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.8275307901511044 5 3.0249091727999362 
		10 3.4556615005840361 15 3.4556615005840361 18 2.8275307901511044;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.0089538665488362312;
	setAttr -s 5 ".kiy[4]"  -0.99995994567871094;
	setAttr -s 5 ".kox[0:4]"  0.0084437169134616852 0.0053066764958202839 
		0.0077381674200296402 0.0042453622445464134 0.0015920228324830532;
	setAttr -s 5 ".koy[0:4]"  0.99996441602706909 0.99998593330383301 
		0.99997007846832275 -0.99999099969863892 -0.99999874830245972;
createNode animCurveTL -n "animCurveTL73";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.4592528360870956 5 1.3743174019124913 
		10 1.6604166661288864 15 1.6604166661288864 18 1.4592528360870956;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.20947772264480591;
	setAttr -s 5 ".kiy[4]"  0.9778134822845459;
	setAttr -s 5 ".kox[0:4]"  0.019618971273303032 0.01656796783208847 
		0.011650176718831062 0.013255028054118156 0.0049710096791386604;
	setAttr -s 5 ".koy[0:4]"  -0.99980759620666504 0.99986273050308228 
		0.99993211030960083 -0.99991214275360107 -0.99998766183853149;
createNode animCurveTA -n "animCurveTA165";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -289.32705458658057 5 -289.32705458658057 
		10 -473.80776515231821 15 -473.80776515231821 18 -289.32705458658057;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.084314420819282532;
	setAttr -s 5 ".kiy[4]"  0.99643921852111816;
	setAttr -s 5 ".kox[0:4]"  1 0.10297586768865585 0.10297586768865585 
		0.082538396120071411 0.031042894348502159;
	setAttr -s 5 ".koy[0:4]"  0 -0.99468386173248291 -0.99468386173248291 
		0.99658787250518799 0.99951803684234619;
createNode animCurveTA -n "animCurveTA166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 78.025696653953162 5 78.025696653953162 
		10 77.356245371626571 15 77.356245371626571 18 78.025696653953162;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.68574821949005127;
	setAttr -s 5 ".kiy[4]"  -0.72783887386322021;
	setAttr -s 5 ".kox[0:4]"  1 0.9993862509727478 0.9993862509727478 
		0.99904149770736694 0.99324315786361694;
	setAttr -s 5 ".koy[0:4]"  0 -0.035030875355005264 -0.035030875355005264 
		0.043773487210273743 0.11605184525251389;
createNode animCurveTA -n "animCurveTA167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -291.60556142958035 5 -291.60556142958035 
		10 -428.14123663459509 15 -428.14123663459509 18 -291.60556142958035;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.095727488398551941;
	setAttr -s 5 ".kiy[4]"  0.9954075813293457;
	setAttr -s 5 ".kox[0:4]"  1 0.1385311633348465 0.1385311633348465 
		0.11120975017547607 0.041927050799131393;
	setAttr -s 5 ".koy[0:4]"  0 -0.99035805463790894 -0.99035805463790894 
		0.9937969446182251 0.99912065267562866;
createNode animCurveTL -n "animCurveTL74";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.6810039390006 5 -1.7025476108017901 
		10 -0.83009885874989542 15 -0.83009885874989542 18 -1.6810039390006;
	setAttr -s 5 ".kit[0:4]"  9 9 3 3 1;
	setAttr -s 5 ".kot[0:4]"  1 9 3 3 9;
	setAttr -s 5 ".kix[4]"  0.0058022472076117992;
	setAttr -s 5 ".kiy[4]"  -0.99998319149017334;
	setAttr -s 5 ".kox[0:4]"  0.077131778001785278 0.003917367197573185 
		1 1 0.001175218028947711;
	setAttr -s 5 ".koy[0:4]"  -0.9970209002494812 0.99999231100082397 
		0 0 -0.9999992847442627;
createNode animCurveTL -n "animCurveTL75";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.8114496727083953 5 3.5399404956583145 
		10 3.0216332609425343 15 3.0216332609425343 18 2.8114496727083953;
	setAttr -s 5 ".kit[0:4]"  9 1 3 3 1;
	setAttr -s 5 ".kot[0:4]"  1 1 3 3 9;
	setAttr -s 5 ".kix[1:4]"  0.24369104206562042 1 1 0.0076961331069469452;
	setAttr -s 5 ".kiy[1:4]"  0.96985286474227905 0 0 0.99997037649154663;
	setAttr -s 5 ".kox[0:4]"  0.0022878288291394711 0.24369116127490997 
		1 1 0.0047576902434229851;
	setAttr -s 5 ".koy[0:4]"  0.99999737739562988 0.96985286474227905 
		0 0 -0.99998867511749268;
createNode animCurveTL -n "animCurveTL76";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.4654205392005037 5 1.4722349443908607 
		10 1.52961241213231 15 1.52961241213231 18 1.4654205392005037;
	setAttr -s 5 ".kit[0:4]"  9 9 3 3 1;
	setAttr -s 5 ".kot[0:4]"  1 9 3 3 9;
	setAttr -s 5 ".kix[4]"  0.010378033854067326;
	setAttr -s 5 ".kiy[4]"  -0.99994611740112305;
	setAttr -s 5 ".kox[0:4]"  0.23757725954055786 0.051857780665159225 
		1 1 0.01557640265673399;
	setAttr -s 5 ".koy[0:4]"  0.97136867046356201 0.99865448474884033 
		0 0 -0.99987870454788208;
createNode animCurveTA -n "animCurveTA168";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 19.617504663389628 5 347.75097593167544 
		10 332.15750792770859 15 332.15750792770859 18 337.56710967519211;
	setAttr -s 5 ".kit[0:4]"  9 9 3 3 1;
	setAttr -s 5 ".kot[0:4]"  1 9 3 3 9;
	setAttr -s 5 ".kix[4]"  0.10737688839435577;
	setAttr -s 5 ".kiy[4]"  -0.99421840906143188;
	setAttr -s 5 ".kox[0:4]"  0.029089553281664848 0.060993898659944534 
		1 1 0.72711861133575439;
	setAttr -s 5 ".koy[0:4]"  0.99957680702209473 0.99813812971115112 
		0 0 0.68651187419891357;
createNode animCurveTA -n "animCurveTA169";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -93.349342525825378 5 -13.336205849008348 
		10 -55.179100135330295 15 -55.179100135330295 18 -57.219901090100976;
	setAttr -s 5 ".kit[0:4]"  9 9 3 3 1;
	setAttr -s 5 ".kot[0:4]"  1 9 3 3 9;
	setAttr -s 5 ".kix[4]"  0.30054077506065369;
	setAttr -s 5 ".kiy[4]"  -0.95376896858215332;
	setAttr -s 5 ".kox[0:4]"  0.11850561946630478 0.44746607542037964 
		1 1 0.94202673435211182;
	setAttr -s 5 ".koy[0:4]"  0.99295336008071899 0.89430087804794312 
		0 0 -0.33553776144981384;
createNode animCurveTA -n "animCurveTA170";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -54.189098462411209 5 -358.48399272169786 
		10 -352.64534459105573 15 -352.64534459105573 18 -356.30720652225415;
	setAttr -s 5 ".kit[0:4]"  9 9 3 3 1;
	setAttr -s 5 ".kot[0:4]"  1 9 3 3 9;
	setAttr -s 5 ".kix[4]"  0.083069846034049988;
	setAttr -s 5 ".kiy[4]"  0.99654370546340942;
	setAttr -s 5 ".kox[0:4]"  0.031366277486085892 0.06386064738035202 
		1 1 0.84260952472686768;
	setAttr -s 5 ".koy[0:4]"  -0.99950796365737915 -0.99795883893966675 
		0 0 -0.53852498531341553;
createNode animCurveTL -n "animCurveTL77";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.77290696453185026 5 0.77290696453185026 
		10 0.77290696453185026 15 0.77290696453185026 18 0.77290696453185026;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.025892298668622971;
	setAttr -s 5 ".kiy[4]"  -0.99966472387313843;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL78";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.71234308293286885 5 -0.71234308293286885 
		10 -0.71234308293286885 15 -0.71234308293286885 18 -0.71234308293286885;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.01126211229711771;
	setAttr -s 5 ".kiy[4]"  0.99993658065795898;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL79";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.35872267288917942 5 -0.35872267288917942 
		10 -0.35872267288917942 15 -0.35872267288917942 18 -0.35872267288917942;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.0115848733112216;
	setAttr -s 5 ".kiy[4]"  -0.99993294477462769;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL80";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.20338426019301348 5 -0.20338426019301348 
		10 -0.20338426019301348 15 -0.20338426019301348 18 -0.20338426019301348;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL81";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.41773512668589569 5 -0.41773512668589569 
		10 -0.41773512668589569 15 -0.41773512668589569 18 -0.41773512668589569;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL82";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.84883719224141618 5 -0.84883719224141618 
		10 -0.84883719224141618 15 -0.84883719224141618 18 -0.84883719224141618;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.061808866237337522 5 -0.061808866237337522 
		10 -0.061808866237337522 15 -0.061808866237337522 18 -0.061808866237337522;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -59.058178941076754 5 -59.058178941076754 
		10 -59.058178941076754 15 -59.058178941076754 18 -59.058178941076754;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 16.579147429757843 5 16.579147429757843 
		10 16.579147429757843 15 16.579147429757843 18 16.579147429757843;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 12.253734489678925 5 12.253734489678925 
		10 12.253734489678925 15 12.253734489678925 18 12.253734489678925;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -65.746751280844961 5 -65.746751280844961 
		10 -65.746751280844961 15 -65.746751280844961 18 -65.746751280844961;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 18 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 15.711328223519057 5 15.711328223519057 
		10 15.711328223519057 15 15.711328223519057 18 15.711328223519057;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.5572674112203622 5 8.5572674112203622 
		10 8.5572674112203622 15 8.5572674112203622 18 8.5572674112203622;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 18 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 18 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 18 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 18 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 18 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 18 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.2533422302317216 5 8.2533422302317216 
		10 8.2533422302317216 15 8.2533422302317216 18 8.2533422302317216;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA186";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 23.263402056531085 5 23.263402056531085 
		10 23.263402056531085 15 23.263402056531085 18 23.263402056531085;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA187";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 20.166277752815617 5 20.166277752815617 
		10 20.166277752815617 15 20.166277752815617 18 20.166277752815617;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 18 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 18 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA190";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 33.429092416277157 5 33.429092416277157 
		10 90.626594834519636 15 90.626594834519636 18 33.429092416277157;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.25807592272758484;
	setAttr -s 5 ".kiy[4]"  -0.96612465381622314;
	setAttr -s 5 ".kox[0:4]"  1 0.31671664118766785 0.31671664118766785 
		0.25807592272758484 0.099672958254814148;
	setAttr -s 5 ".koy[0:4]"  0 0.94852018356323242 0.94852018356323242 
		-0.96612465381622314 -0.99502027034759521;
createNode animCurveTA -n "animCurveTA191";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA192";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA193";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA194";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA195";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA196";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.994403295754109;
createNode animCurveTA -n "animCurveTA197";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA198";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA199";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.994403295754109;
createNode animCurveTA -n "animCurveTA200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 18 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 18 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 17.254116939558369 5 17.254116939558369 
		10 17.254116939558369 15 17.254116939558369 18 17.254116939558369;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 18 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 18 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 18 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.1194393253971167 5 1.1201700638417562 
		10 1.2834842643707149 15 1.2834842643707149 18 1.1194393253971167;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.93896347284317017;
	setAttr -s 5 ".kiy[4]"  0.34401682019233704;
	setAttr -s 5 ".kox[0:4]"  1 0.99996310472488403 0.99996346235275269 
		0.9999423623085022 0.99959039688110352;
	setAttr -s 5 ".koy[0:4]"  7.6522745075635612e-005 0.0085890563204884529 
		0.0085507985204458237 -0.010736097581684589 -0.028619522228837013;
createNode animCurveTA -n "animCurveTA207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.79177851977637925 5 2.2157644510186367 
		10 -0.94028724261250651 15 -0.94028724261250651 18 0.79177851977637925;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.99986857175827026;
	setAttr -s 5 ".kiy[4]"  -0.016211245208978653;
	setAttr -s 5 ".kox[0:4]"  0.98906373977661133 0.99591279029846191 
		0.98661959171295166 0.99363565444946289 0.9572175145149231;
	setAttr -s 5 ".koy[0:4]"  0.14748863875865936 -0.090320080518722534 
		-0.16303935647010803 0.11264195293188095 0.28936934471130371;
createNode animCurveTA -n "animCurveTA208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -5.3206070149252218 5 -5.2927638203088776 
		10 -2.5867011366825445 15 -2.5867011366825445 18 -5.3206070149252218;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.98159235715866089;
	setAttr -s 5 ".kiy[4]"  -0.1909882128238678;
	setAttr -s 5 ".kox[0:4]"  0.99999576807022095 0.98990929126739502 
		0.99011075496673584 0.98436582088470459 0.90252172946929932;
	setAttr -s 5 ".koy[0:4]"  0.0029157199896872044 0.14170251786708832 
		0.14028790593147278 -0.17613624036312103 -0.43064433336257935;
createNode animCurveTA -n "animCurveTA209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -6.4638970828983755 5 37.532763769892398 
		10 24.729623118772274 15 24.729623118772274 18 -6.4638970828983755;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.53632259368896484;
	setAttr -s 5 ".kiy[4]"  0.84401309490203857;
	setAttr -s 5 ".kox[0:4]"  0.21210736036300659 0.52216422557830811 
		0.83062750101089478 0.43987709283828735 0.18065620958805084;
	setAttr -s 5 ".koy[0:4]"  0.97724634408950806 0.8528449535369873 
		-0.55682849884033203 -0.89805799722671509 -0.98354631662368774;
createNode animCurveTA -n "animCurveTA210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.13733469359734884 5 7.9353493047772874 
		10 3.2081539038752043 15 3.2081539038752043 18 -0.13733469359734884;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.99878710508346558;
	setAttr -s 5 ".kiy[4]"  -0.049237735569477081;
	setAttr -s 5 ".kox[0:4]"  0.76368159055709839 0.98500210046768188 
		0.97070735692977905 0.97685682773590088 0.86356657743453979;
	setAttr -s 5 ".koy[0:4]"  0.64559310674667358 0.17254221439361572 
		-0.24026499688625336 -0.21389424800872803 -0.50423485040664673;
createNode animCurveTA -n "animCurveTA211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 28.464388426537347 5 18.759856170125108 
		10 16.590435744495512 15 16.590435744495512 18 28.464388426537347;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.90114521980285645;
	setAttr -s 5 ".kiy[4]"  0.43351739645004272;
	setAttr -s 5 ".kox[0:4]"  0.70138287544250488 0.84924834966659546 
		0.99361038208007813 0.78959298133850098 0.43458440899848938;
	setAttr -s 5 ".koy[0:4]"  -0.71278470754623413 -0.52799355983734131 
		-0.11286478489637375 0.61363089084625244 0.9006311297416687;
createNode animCurveTA -n "animCurveTA212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.19211247389617075 5 0.19211247389617075 
		10 0.19211247389617075 15 0.19211247389617075 18 0.19211247389617075;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -3.8855573290219243 5 -3.8855573290219243 
		10 -3.8855573290219243 15 -3.8855573290219243 18 -3.8855573290219243;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 6.5189136801188905 5 6.5189136801188905 
		10 6.5189136801188905 15 6.5189136801188905 18 6.5189136801188905;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.8743497299704743 5 -1.8740434503469257 
		10 -1.9469640277474487 15 -1.9469640277474487 18 -1.8743497299704743;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.99735188484191895;
	setAttr -s 5 ".kiy[4]"  0.072727002203464508;
	setAttr -s 5 ".kox[0:4]"  1 0.99999278783798218 0.9999927282333374 
		0.99998873472213745 0.99991971254348755;
	setAttr -s 5 ".koy[0:4]"  3.2073527108877897e-005 -0.0038020482752472162 
		-0.0038180847186595201 0.0047525409609079361 0.012672571465373039;
createNode animCurveTA -n "animCurveTA216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.0612592042320197 5 0.23188615181928007 
		10 -2.0125600489323445 15 -2.0125600489323445 18 -1.0612592042320197;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.99148273468017578;
	setAttr -s 5 ".kiy[4]"  -0.1302383691072464;
	setAttr -s 5 ".kox[0:4]"  0.99095523357391357 0.99876177310943604 
		0.99316537380218506 0.99806731939315796 0.98649501800537109;
	setAttr -s 5 ".koy[0:4]"  0.13419303297996521 -0.049748320132493973 
		-0.11671572923660278 0.062142159789800644 0.16379109025001526;
createNode animCurveTA -n "animCurveTA217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -14.215067360783555 5 -14.25738261268463 
		10 -12.65548922009606 15 -12.65548922009606 18 -14.215067360783555;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.99858582019805908;
	setAttr -s 5 ".kiy[4]"  0.053163234144449234;
	setAttr -s 5 ".kox[0:4]"  0.99999016523361206 0.99668246507644653 
		0.99650096893310547 0.99483078718185425 0.9648934006690979;
	setAttr -s 5 ".koy[0:4]"  -0.0044311992824077606 0.081388413906097412 
		0.083581455051898956 -0.101546511054039 -0.26264187693595886;
createNode animCurveTA -n "animCurveTA218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 18 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 18 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.080064458283051 5 27.080064458283051 
		10 27.080064458283051 15 27.080064458283051 18 27.080064458283051;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 10.423754966968488 5 10.423754966968488 
		10 10.423754966968488 15 10.423754966968488 18 10.423754966968488;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.722848255843903 5 27.722848255843903 
		10 27.722848255843903 15 27.722848255843903 18 27.722848255843903;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 21.576484776388227 5 21.576484776388227 
		10 21.576484776388227 15 21.576484776388227 18 21.576484776388227;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 18 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 18 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.911632519594587 5 27.911632519594587 
		10 43.753152088430092 15 43.753152088430092 18 27.911632519594587;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.69420909881591797;
	setAttr -s 5 ".kiy[4]"  -0.71977341175079346;
	setAttr -s 5 ".kox[0:4]"  1 0.76968544721603394 0.76968544721603394 
		0.69420909881591797 0.34011849761009216;
	setAttr -s 5 ".koy[0:4]"  0 0.63842332363128662 0.63842332363128662 
		-0.71977341175079346 -0.94038259983062744;
createNode clipLibrary -n "clipLibrary2";
	setAttr -s 162 ".cel[0].cev";
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
connectAttr "apu_get_out_of_car_open_door_high.st" "clipLibrary2.st[0]";
connectAttr "apu_get_out_of_car_open_door_high.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL42.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL43.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "animCurveTL44.a" "clipLibrary2.cel[0].cev[2].cevr";
connectAttr "animCurveTL45.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "animCurveTL46.a" "clipLibrary2.cel[0].cev[4].cevr";
connectAttr "animCurveTA114.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "animCurveTU9.a" "clipLibrary2.cel[0].cev[6].cevr";
connectAttr "animCurveTU10.a" "clipLibrary2.cel[0].cev[7].cevr";
connectAttr "animCurveTU11.a" "clipLibrary2.cel[0].cev[8].cevr";
connectAttr "animCurveTU12.a" "clipLibrary2.cel[0].cev[9].cevr";
connectAttr "animCurveTU13.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU14.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU15.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU16.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA115.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA116.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA117.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL47.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL48.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL49.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL50.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL51.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL52.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA118.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA119.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA120.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL53.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL54.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL55.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA121.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA122.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA123.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA124.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA125.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA126.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA127.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA128.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA129.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTL56.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTL57.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTL58.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTL59.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTL60.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTL61.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL62.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL63.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL64.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTA130.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTA131.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTA132.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTA133.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTA134.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTA135.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA136.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA137.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA138.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA139.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA140.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA141.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA142.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA143.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA144.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA145.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA146.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA147.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA148.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA149.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA150.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA151.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA152.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA153.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA154.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA155.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA156.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA157.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA158.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTL65.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTL66.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTL67.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA159.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA160.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA161.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL68.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL69.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL70.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA162.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA163.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA164.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL71.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL72.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL73.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA165.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA166.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA167.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL74.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL75.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL76.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA168.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA169.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA170.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL77.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL78.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL79.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTL80.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTL81.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTL82.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTA171.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTA172.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTA173.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTA174.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTA175.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTA176.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA177.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA178.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA179.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA180.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA181.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA182.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA183.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA184.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA185.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA186.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA187.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA188.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA189.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA190.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA191.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA192.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA193.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA194.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA195.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA196.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA197.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA198.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA199.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA200.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA201.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA202.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA203.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA204.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA205.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA206.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA207.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA208.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA209.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA210.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA211.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA212.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA213.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA214.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA215.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA216.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA217.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA218.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA219.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA220.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA221.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA222.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA223.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA224.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA225.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA226.a" "clipLibrary2.cel[0].cev[161].cevr";
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
// End of apu-m_get_out_of_car_open_door_high.ma
