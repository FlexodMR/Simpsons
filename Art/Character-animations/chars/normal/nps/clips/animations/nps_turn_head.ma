//Maya ASCII 4.0 scene
//Name: nps_turn_head.ma
//Last modified: Tue, Jun 17, 2003 03:40:44 PM
requires maya "4.0";
requires "p3dmayaexp" "2.0.3.0";
requires "p3dSimpleShader" "2.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "nps_turn_headSource";
	setAttr ".ihi" 0;
	setAttr ".du" 40;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL206";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "animCurveTL207";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "animCurveTL208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.995 40 0.995;
createNode animCurveTL -n "animCurveTL209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.46000000000000002 40 0.46000000000000002;
createNode animCurveTL -n "animCurveTL210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.72 40 0.72;
createNode animCurveTA -n "animCurveTA566";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
createNode animCurveTU -n "animCurveTU41";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU42";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU43";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU44";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU45";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU46";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "nps_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
createNode animCurveTU -n "nps_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
createNode animCurveTA -n "animCurveTA567";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA568";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA569";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.1582036071592778 15 1.1582036071592778 
		30 1.1582036071592778 40 1.1582036071592778;
createNode animCurveTL -n "animCurveTL215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.8024274637299138 15 0.8024274637299138 
		30 0.8024274637299138 40 0.8024274637299138;
createNode animCurveTL -n "animCurveTL216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.6023458233856847 15 1.6023458233856847 
		30 1.6023458233856847 40 1.6023458233856847;
createNode animCurveTA -n "animCurveTA570";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -2.7149195703006082 15 -2.7149195703006082 
		30 -2.7149195703006082 40 -2.7149195703006082;
createNode animCurveTA -n "animCurveTA571";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -9.448854147766081 15 -9.448854147766081 
		30 -9.448854147766081 40 -9.448854147766081;
createNode animCurveTA -n "animCurveTA572";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.9042146334359309 15 2.9042146334359309 
		30 2.9042146334359309 40 2.9042146334359309;
createNode animCurveTL -n "animCurveTL217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.635760016530293 15 1.635760016530293 
		30 1.635760016530293 40 1.635760016530293;
createNode animCurveTL -n "animCurveTL218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.79733745153385938 15 0.79733745153385938 
		30 0.79733745153385938 40 0.79733745153385938;
createNode animCurveTL -n "animCurveTL219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.6031411449878863 15 1.6031411449878863 
		30 1.6031411449878863 40 1.6031411449878863;
createNode animCurveTA -n "animCurveTA573";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 30 0 40 0;
createNode animCurveTA -n "animCurveTA574";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 14.260733409455984 15 14.260733409455984 
		30 14.260733409455984 40 14.260733409455984;
createNode animCurveTA -n "animCurveTA575";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 30 0 40 0;
createNode animCurveTA -n "animCurveTA576";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA577";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA578";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA579";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA580";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA581";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.011621961304049206 15 -0.011621961304049206 
		30 -0.011621961304049206 40 -0.011621961304049206;
createNode animCurveTL -n "animCurveTL221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.53592894662340362 15 0.53592894662340362 
		30 0.53592894662340362 40 0.53592894662340362;
createNode animCurveTL -n "animCurveTL222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.1714982742260704 15 1.1714982742260704 
		30 1.1714982742260704 40 1.1714982742260704;
createNode animCurveTL -n "animCurveTL223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.028577078352958335 15 -0.028577078352958335 
		30 -0.028577078352958335 40 -0.028577078352958335;
createNode animCurveTL -n "animCurveTL224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.6265256146554018 15 0.6265256146554018 
		30 0.6265256146554018 40 0.6265256146554018;
createNode animCurveTL -n "animCurveTL225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.1827937027824305 15 1.1827937027824305 
		30 1.1827937027824305 40 1.1827937027824305;
createNode animCurveTL -n "animCurveTL226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.4056785302309036 15 1.4056785302309036 
		30 1.4056785302309036 40 1.4056785302309036;
createNode animCurveTL -n "animCurveTL227";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.96452787963755071 15 0.96452787963755071 
		30 0.96452787963755071 40 0.96452787963755071;
createNode animCurveTL -n "animCurveTL228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.0057239815788857 15 1.0057239815788857 
		30 1.0057239815788857 40 1.0057239815788857;
createNode animCurveTA -n "animCurveTA582";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -19.688418588621207 15 -19.445496273452573 
		30 -19.897558621796442 40 -19.688418588621207;
createNode animCurveTA -n "animCurveTA583";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.6085540494966313 15 -2.0214541169502089 
		30 -1.4568059413203791 40 -1.6085540494966313;
createNode animCurveTA -n "animCurveTA584";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.23076428718713959 15 0.59641917155365509 
		30 0.068623281540532627 40 0.23076428718713959;
createNode animCurveTA -n "animCurveTA585";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA586";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA587";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA588";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA589";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA590";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA591";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA592";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA593";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA594";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA595";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA596";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA597";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA598";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA599";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA600";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA601";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA602";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA603";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA604";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA605";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -5.6803276403432976 15 -5.6803276403432976 
		30 -5.6803276403432976 40 -5.6803276403432976;
createNode animCurveTA -n "animCurveTA606";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -6.1570151121354488 15 -6.1570151121354488 
		30 -6.1570151121354488 40 -6.1570151121354488;
createNode animCurveTA -n "animCurveTA607";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 5.3480278027016865 15 5.3480278027016865 
		30 5.3480278027016865 40 5.3480278027016865;
createNode animCurveTA -n "animCurveTA608";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 30 0 40 0;
createNode animCurveTA -n "animCurveTA609";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 30 0 40 0;
createNode animCurveTA -n "animCurveTA610";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 30 0 40 0;
createNode animCurveTL -n "Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 -0.069961737452636619 1 -0.068542419788713865 
		2 -0.067052733211016569 3 -0.065511903569541521 4 -0.063938812098176076 5 
		-0.062351915084043696 6 -0.060769193123832679 7 -0.059208130524559123 8 -0.057685725393098436 
		9 -0.05621853092684205 10 -0.054822728374802808 11 -0.053514232092155965 
		12 -0.052308827067221557 13 -0.051222339261351522 14 -0.050270839067909495 
		15 -0.04947087816016648 16 -0.048786712964086688 17 -0.048174526340465318 
		18 -0.047639981167770885 19 -0.047189223411591 20 -0.046828378231838316 21 
		-0.04656312084710635 22 -0.046398324856874638 23 -0.0463377922307339 24 -0.046384069917163803 
		25 -0.046538358052551985 26 -0.046800514154016926 27 -0.047169156567819642 
		28 -0.047641868929097199 29 -0.048215505557408278 30 -0.048886595612326292 
		31 -0.049725181768653502 32 -0.050780943893782078 33 -0.052020133508408437 
		34 -0.053409400578636336 35 -0.05491590022205628 36 -0.056507372585731165 
		37 -0.058152197284896658 38 -0.059819422839629793 39 -0.061478770761963515 
		40 -0.069961737452636619;
createNode animCurveTL -n "Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 -0.68040215292634587 1 -0.67985183133463734 
		2 -0.67917885869210703 3 -0.67841144800008868 4 -0.67757825761905699 5 -0.67670845722725315 
		6 -0.67583176287303948 7 -0.6749784424320493 8 -0.67417929294680434 9 -0.67346559134486439 
		10 -0.67286901989773262 11 -0.67242156749321658 12 -0.67215540734622481 13 
		-0.67210275116566265 14 -0.67229567902832299 15 -0.6727659432866131 16 -0.67361908199585774 
		17 -0.67489426776399908 18 -0.67652272599822649 19 -0.67843527362182321 20 
		-0.6805627500339072 21 -0.68283637916210316 22 -0.68518806291555234 23 -0.6875506027276691 
		24 -0.68985784330512578 25 -0.69204473116016252 26 -0.6940472799714128 27 
		-0.69580243525949559 28 -0.69724783224074172 29 -0.69832144300357146 30 -0.69896111231906422 
		31 -0.69920135717946286 32 -0.69914073097198792 33 -0.69881228268946194 34 
		-0.69824873559170941 35 -0.69748274764932727 36 -0.69654712775378569 37 -0.69547500657161854 
		38 -0.69429996166446772 39 -0.69305609710237392 40 -0.68040215292634587;
createNode animCurveTL -n "Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 0.56082480581367367 1 0.56167269787304774 
		2 0.56255395345833337 3 0.56345784168104462 4 0.564374033178904 5 0.56529268494184826 
		6 0.56620449254130134 7 0.56710070926399891 8 0.56797313158952967 9 0.56881405046161482 
		10 0.56961616788430458 11 0.57037247852337847 12 0.57107611620826593 13 0.57172016551001248 
		14 0.57229743891680007 15 0.572800220543074 16 0.57327275110855314 17 0.57375406864917877 
		18 0.57422757113534173 19 0.57467653666269147 20 0.57508472489547147 21 0.57543684578851451 
		22 0.57571889589086622 23 0.57591836546946884 24 0.57602432185557062 25 0.57602737576516827 
		26 0.57591953782234184 27 0.5756939720654054 28 0.57534465179590211 29 0.57486592071238951 
		30 0.57425195885030134 31 0.57343114949691376 32 0.5723611767937169 33 0.57107922101680308 
		34 0.56962206278563732 35 0.56802631574468854 36 0.5663286233968825 37 0.5645658221472506 
		38 0.56277507193300591 39 0.5609939552361799 40 0.56082480581367367;
createNode animCurveTA -n "Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 10.071237998435279 1 10.165755414709102 
		2 10.311790737711744 3 10.49359692929827 4 10.696295961019473 5 10.906000996523833 
		6 11.109837796659992 7 11.295885363526674 8 11.453053846914621 9 11.570914408100954 
		10 11.639491697444212 11 11.649025262989095 12 11.58970177407979 13 11.451355446528936 
		14 11.22312937324981 15 10.8930853460949 16 10.403577471812481 17 9.7236049171721906 
		18 8.8790200317024599 19 7.8952125799483523 20 6.7981769515257771 21 5.6153760876625851 
		22 4.3764091437859403 23 3.1134795757886509 24 1.8616588524951705 25 0.65894740551809694 
		26 179.5461459389017 27 178.56656189425001 28 177.76558104528195 29 177.19012572911791 
		30 176.88799321901283 31 176.85618871230116 32 177.04518977705922 33 177.43302302621814 
		34 177.99723875853624 35 178.7145884785817 36 179.56075379727528 37 0.51016234429422247 
		38 1.5359137179050562 39 2.6098243664737448 40 10.071237998435279;
createNode animCurveTA -n "Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 100.48648258153693 1 100.63602574850503 
		2 100.79987540772153 3 100.97450958718453 4 101.15639268364694 5 101.34196264808543 
		6 101.52762497472698 7 101.70975263346047 8 101.88469109952663 9 102.04876777060223 
		10 102.19830527789772 11 102.32963846691926 12 102.4391351325534 13 102.52322094463689 
		14 102.57840941181658 15 102.60133823745096 16 102.58690297462624 17 102.53622652878974 
		18 102.45548793021034 19 102.35082844206298 20 102.22818908175302 21 102.09316997207587 
		22 101.95091205117106 23 101.8060049295504 24 101.6624271756759 25 101.52352693523248 
		26 78.607948569574802 27 78.729766480377251 28 78.840057756965393 29 78.937097630470717 
		30 79.019014399345153 31 79.093715811159342 32 79.170088129077143 33 79.247096652460172 
		34 79.323422549933895 35 79.39761058569195 36 79.468201324368522 37 100.46615234909974 
		38 100.40658581871267 39 100.35394284717268 40 100.48648258153693;
createNode animCurveTA -n "Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 43.678934365861863 1 43.839287475943117 
		2 44.055833939654548 3 44.311605207313541 4 44.590513390722052 5 44.877477668665499 
		6 45.158448253915928 7 45.420347927427024 8 45.650949151082123 9 45.838701441795102 
		10 45.972519652629671 11 46.041539470216193 12 46.034842008873291 13 45.941144890220983 
		14 45.748452521749144 15 45.443653178419744 16 44.968872133114097 17 44.294103754606681 
		18 43.44579625569277 19 42.449938741256503 20 41.333177128752304 21 40.123715822706885 
		22 38.852012167071244 23 37.551260425666328 24 36.257660595968744 25 35.010473792455095 
		26 -146.14812254818034 27 -147.1733547265994 28 -148.0183180429612 29 -148.6345657125496 
		30 -148.97282795216509 31 -149.03920390990791 32 -148.88696692750074 33 -148.53773210906417 
		34 -148.01364616855335 35 -147.33767404409895 36 -146.5338396101792 37 34.372615175617895 
		38 35.355175721120567 39 36.386113720677407 40 43.678934365861863;
createNode animCurveTL -n "Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 0.090234509901407883 1 0.09155375266552597 
		2 0.09293482519158118 3 0.094359246597022092 4 0.095809058475757644 5 0.097266910814482799 
		6 0.098716111671430157 7 0.10014064120624738 8 0.10152513074794201 9 0.10285480760819382 
		10 0.1041154062857953 11 0.10529304656082018 12 0.10637407874143349 13 0.1073448960003455 
		14 0.10819171332146653 15 0.10890031207203123 16 0.10950207088924885 17 0.11003564673747207 
		18 0.11049660701194171 19 0.11088009017811289 20 0.1111812673930055 21 0.11139573323988287 
		22 0.11151982534241313 23 0.1115508701696831 24 0.11148735059965816 25 0.1113289897838871 
		26 0.11107674554973727 27 0.1107327099779883 28 0.11029990988597689 29 0.10978200570868239 
		30 0.10918288868316381 31 0.10844019016477831 32 0.10750796749704961 33 0.10641437198032946 
		34 0.10518722072082312 35 0.10385401862911295 36 0.10244198575813357 37 0.10097808900024006 
		38 0.099489077607546508 39 0.0980015223618554 40 0.090234509901407883;
createNode animCurveTL -n "Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 -0.66290410418862811 1 -0.66132798933247006 
		2 -0.65955399974263518 3 -0.65763176343809038 4 -0.65561086275845049 5 -0.65354080413445237 
		6 -0.65147099547534371 7 -0.6494507324112212 8 -0.64752919473211701 9 -0.64575545434596993 
		10 -0.6441784959392749 11 -0.64284725127178866 12 -0.64181064767378593 13 
		-0.64111767084325233 14 -0.64081744146055331 15 -0.64095930444631277 16 -0.64165827385686669 
		17 -0.64294110689673989 18 -0.64472519667516792 19 -0.64692794693873024 20 
		-0.64946649339895479 21 -0.65225749018980095 22 -0.6552169624858093 23 -0.65826022389570737 
		24 -0.66130185538650776 25 -0.66425574120832753 26 -0.6670351566154783 27 
		-0.66955290215841534 28 -0.67172147999726661 29 -0.67345330909651935 30 -0.67466097832327054 
		31 -0.67542616514040155 32 -0.67590762552656292 33 -0.67613413427346247 34 
		-0.67613473523771317 35 -0.67593863970484547 36 -0.67557513664052637 37 -0.67507351412139815 
		38 -0.6744629917832371 39 -0.6737726645526223 40 -0.66290410418862811;
createNode animCurveTL -n "Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 0.51457529699635862 1 0.51379045802646561 
		2 0.51297983035105976 3 0.51214857830106708 4 0.51130206822134494 5 0.51044590309180082 
		6 0.50958594180179251 7 0.50872830338539388 8 0.50787935655222383 9 0.5070456948577009 
		10 0.50623409784506757 11 0.50545147845657123 12 0.50470481695107761 13 0.50400108147952327 
		14 0.50334713535906905 15 0.50274963095520542 16 0.50218173309138747 17 0.50161621635654019 
		18 0.50105877877837468 19 0.50051510540680932 20 0.49999105462537158 21 0.4994928067835443 
		22 0.4990269752270825 23 0.49860068005885255 24 0.49822158525497856 25 0.49789790004775825 
		26 0.49763834570221632 27 0.4974520888816254 28 0.49734864264750417 29 0.49733773571759399 
		30 0.49742914988844517 31 0.49763729850545774 32 0.49796139009885892 33 0.49838824403297682 
		34 0.49890463019840037 35 0.49949733274050623 36 0.5001532026370924 37 0.500859199777963 
		38 0.50160242527264476 39 0.50237014474522812 40 0.51457529699635862;
createNode animCurveTA -n "Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 46.174170192179517 1 45.571049836998284 
		2 44.923444103885508 3 44.23606581674477 4 43.514595148731452 5 42.765917823822129 
		6 41.998343006496633 7 41.221782359104196 8 40.447865881160808 9 39.689965769131433 
		10 38.963098065148152 11 38.283674846857359 12 37.66908843211651 13 37.137124039026311 
		14 36.705217797535049 15 36.389600670171795 16 36.190029789328754 17 36.090660783608399 
		18 36.080712182451663 19 36.1476622348913 20 36.278486139215659 21 36.460587794112485 
		22 36.682412147221029 23 36.933779975007283 24 37.206011094761891 25 37.491904105756447 
		26 37.785631039293804 27 38.082591534113917 28 38.379258005889575 29 38.673032954009784 
		30 38.962132768162341 31 39.278652580457909 32 39.651526493679654 33 40.075172630102891 
		34 40.544238414165157 35 41.05328345342231 36 41.596492036192124 37 42.167405378884226 
		38 42.758671086438007 39 43.361813945331164 40 46.174170192179517;
createNode animCurveTA -n "Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 -79.153321641664249 1 -79.252814153288412 
		2 -79.367507633525207 3 -79.493122392213394 4 -79.625417026613761 5 -79.760198181419284 
		6 -79.893331551971769 7 -80.020753416231543 8 -80.13848163308262 9 -80.242624693193321 
		10 -80.329387118961634 11 -80.395069372396748 12 -80.436060547905399 13 -80.448822594047101 
		14 -80.429865672478911 15 -80.375715489826703 16 -80.273365958794898 17 -80.117957446757472 
		18 -79.918183902213954 19 -79.682676656264405 20 -79.419998971365501 21 -79.138644358640192 
		22 -78.847036763863542 23 -78.553532094429187 24 -78.266421480197252 25 -77.993937134111007 
		26 -77.744261811254091 27 -77.525542782786985 28 -77.345911044337285 29 -77.213506231506017 
		30 -77.136507451802402 31 -77.111177025272397 32 -77.125039989250084 33 -77.173258334820602 
		34 -77.251039528388048 35 -77.353632244012289 36 -77.47632480448145 37 -77.614446598587236 
		38 -77.763372359475511 39 -77.918528800432938 40 -79.153321641664249;
createNode animCurveTA -n "Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 -81.329970738739434 1 -80.670090053103024 
		2 -79.960663868573462 3 -79.207710765789074 4 -78.418207425102892 5 -77.600323171576804 
		6 -76.763635653183641 7 -75.919309138495976 8 -75.080211055630585 9 -74.260938018521728 
		10 -73.477721115671059 11 -72.748183218646744 12 -72.090929786707321 13 -71.524969607476947 
		14 -71.06898236532885 15 -70.740473585626802 16 -70.54079241638712 17 -70.453946580265637 
		18 -70.467877090029035 19 -70.568779471447755 20 -70.742297302192227 21 -70.974420101482991 
		22 -71.252071654361714 23 -71.563430579310705 24 -71.898049090886602 25 -72.246837990458758 
		26 -72.601976195435881 27 -72.956789358574369 28 -73.305628996255905 29 -73.643773245244759 
		30 -73.967363624403433 31 -74.311074106962522 32 -74.707937663422143 33 -75.152712455041112 
		34 -75.64043687413691 35 -76.166078446666972 36 -76.7242175527048 37 -77.30875607954826 
		38 -77.912648473107993 39 -78.527659324554648 40 -81.329970738739434;
createNode animCurveTL -n "animCurveTL235";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.5799571818574061 15 1.5799571818574061 
		30 1.5799571818574061 40 1.5799571818574061;
createNode animCurveTL -n "animCurveTL236";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.7336364705465559 15 1.7336364705465559 
		30 1.7336364705465559 40 1.7336364705465559;
createNode animCurveTL -n "animCurveTL237";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.846251825853197 15 1.846251825853197 
		30 1.846251825853197 40 1.846251825853197;
createNode animCurveTA -n "animCurveTA617";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 575.5032511364841 15 575.5032511364841 
		30 575.5032511364841 40 575.5032511364841;
createNode animCurveTA -n "animCurveTA618";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 71.318406579125181 15 71.318406579125181 
		30 71.318406579125181 40 71.318406579125181;
createNode animCurveTA -n "animCurveTA619";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 607.71605664104993 15 607.71605664104993 
		30 607.71605664104993 40 607.71605664104993;
createNode animCurveTL -n "animCurveTL238";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.5330905047330146 15 2.5330905047330146 
		30 2.5330905047330146 40 2.5330905047330146;
createNode animCurveTL -n "animCurveTL239";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.7328483027491308 15 1.7328483027491308 
		30 1.7328483027491308 40 1.7328483027491308;
createNode animCurveTL -n "animCurveTL240";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.8109570831129886 15 1.8109570831129886 
		30 1.8109570831129886 40 1.8109570831129886;
createNode animCurveTA -n "animCurveTA620";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -2.1628124124086221 15 -2.1628124124086221 
		30 -2.1628124124086221 40 -2.1628124124086221;
createNode animCurveTA -n "animCurveTA621";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -89.015236610426285 15 -89.015236610426285 
		30 -89.015236610426285 40 -89.015236610426285;
createNode animCurveTA -n "animCurveTA622";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -33.724874337507345 15 -33.724874337507345 
		30 -33.724874337507345 40 -33.724874337507345;
createNode animCurveTL -n "animCurveTL241";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.79219780621813873 15 0.79219780621813873 
		30 0.79219780621813873 40 0.79219780621813873;
createNode animCurveTL -n "animCurveTL242";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.40574620146945284 15 -0.40574620146945284 
		30 -0.40574620146945284 40 -0.40574620146945284;
createNode animCurveTL -n "animCurveTL243";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.1098421401999354 15 -1.1098421401999354 
		30 -1.1098421401999354 40 -1.1098421401999354;
createNode animCurveTL -n "animCurveTL244";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.57716755259621588 15 -0.57716755259621588 
		30 -0.57716755259621588 40 -0.57716755259621588;
createNode animCurveTL -n "animCurveTL245";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.56604158961666384 15 -0.56604158961666384 
		30 -0.56604158961666384 40 -0.56604158961666384;
createNode animCurveTL -n "animCurveTL246";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.0663528014576997 15 -1.0663528014576997 
		30 -1.0663528014576997 40 -1.0663528014576997;
createNode animCurveTA -n "animCurveTA623";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 12.253734489678925 10 12.253734489678925 
		30 12.253734489678925 40 12.253734489678925;
createNode animCurveTA -n "animCurveTA624";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -65.746751280844961 10 -65.746751280844961 
		30 -65.746751280844961 40 -65.746751280844961;
createNode animCurveTA -n "animCurveTA625";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 30 0 40 0;
createNode animCurveTA -n "animCurveTA626";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.061808866237337522 10 -0.061808866237337522 
		30 -0.061808866237337522 40 -0.061808866237337522;
createNode animCurveTA -n "animCurveTA627";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -59.058178941076754 10 -59.058178941076754 
		30 -59.058178941076754 40 -59.058178941076754;
createNode animCurveTA -n "animCurveTA628";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 16.579147429757843 10 16.579147429757843 
		30 16.579147429757843 40 16.579147429757843;
createNode animCurveTA -n "animCurveTA629";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.5572674112203622 10 8.5572674112203622 
		30 8.5572674112203622 40 8.5572674112203622;
createNode animCurveTA -n "animCurveTA630";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 15.711328223519057 10 15.711328223519057 
		30 15.711328223519057 40 15.711328223519057;
createNode animCurveTA -n "animCurveTA631";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 30 0 40 0;
createNode animCurveTA -n "animCurveTA632";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 30 0 40 0;
createNode animCurveTA -n "animCurveTA633";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 30 0 40 0;
createNode animCurveTA -n "animCurveTA634";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 30 0 40 0;
createNode animCurveTA -n "animCurveTA635";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 30 0 40 0;
createNode animCurveTA -n "animCurveTA636";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 30 0 40 0;
createNode animCurveTA -n "animCurveTA637";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 10.423754966968488 10 10.423754966968488 
		30 10.423754966968488 40 10.423754966968488;
createNode animCurveTA -n "animCurveTA638";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.722848255843903 10 27.722848255843903 
		30 27.722848255843903 40 27.722848255843903;
createNode animCurveTA -n "animCurveTA639";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 21.576484776388227 10 21.576484776388227 
		30 21.576484776388227 40 21.576484776388227;
createNode animCurveTA -n "animCurveTA640";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 30 0 40 0;
createNode animCurveTA -n "animCurveTA641";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 30 0 40 0;
createNode animCurveTA -n "animCurveTA642";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.080064458283051 10 27.080064458283051 
		30 27.080064458283051 40 27.080064458283051;
createNode animCurveTA -n "animCurveTA643";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA644";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA645";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA646";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA647";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA648";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.994403295754109;
createNode animCurveTA -n "animCurveTA649";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA650";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA651";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.994403295754109;
createNode animCurveTA -n "animCurveTA652";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 30 0 40 0;
createNode animCurveTA -n "animCurveTA653";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 30 0 40 0;
createNode animCurveTA -n "animCurveTA654";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.911632519594587 10 27.911632519594587 
		30 27.911632519594587 40 27.911632519594587;
createNode animCurveTA -n "animCurveTA655";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 30 0 40 0;
createNode animCurveTA -n "animCurveTA656";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 30 0 40 0;
createNode animCurveTA -n "animCurveTA657";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 30 0 40 0;
createNode animCurveTA -n "animCurveTA658";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.55766507474896432 10 12.44353028189971 
		30 12.44353028189971 40 -0.55766507474896432;
	setAttr -s 4 ".kit[0:3]"  3 1 1 3;
	setAttr -s 4 ".kot[0:3]"  3 1 1 3;
	setAttr -s 4 ".kix[1:3]"  0.99930524826049805 0.99911600351333618 
		1;
	setAttr -s 4 ".kiy[1:3]"  0.037269536405801773 -0.042037852108478546 
		0;
	setAttr -s 4 ".kox[1:3]"  0.99930524826049805 0.99911600351333618 
		1;
	setAttr -s 4 ".koy[1:3]"  0.037269528955221176 -0.042037926614284515 
		0;
createNode animCurveTA -n "animCurveTA659";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -2.0198239624003347 10 -6.1852434988774245 
		30 -6.1852434988774245 40 -2.0198239624003347;
	setAttr -s 4 ".kit[0:3]"  3 1 1 3;
	setAttr -s 4 ".kot[0:3]"  3 1 1 3;
	setAttr -s 4 ".kix[1:3]"  0.99997669458389282 0.99990552663803101 
		1;
	setAttr -s 4 ".kiy[1:3]"  -0.0068278051912784576 0.013744225725531578 
		0;
	setAttr -s 4 ".kox[1:3]"  0.99997669458389282 0.99990552663803101 
		1;
	setAttr -s 4 ".koy[1:3]"  -0.0068278117105364799 0.0137442322447896 
		0;
createNode animCurveTA -n "animCurveTA660";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 7.5513277031901911 10 6.3199731837281208 
		30 6.3199731837281208 40 7.5513277031901911;
	setAttr -s 4 ".kit[0:3]"  3 1 1 3;
	setAttr -s 4 ".kot[0:3]"  3 1 1 3;
	setAttr -s 4 ".kix[1:3]"  0.99999797344207764 0.9999995231628418 
		1;
	setAttr -s 4 ".kiy[1:3]"  -0.0020184740424156189 0.00099620188120752573 
		0;
	setAttr -s 4 ".kox[1:3]"  0.99999797344207764 0.9999995231628418 
		1;
	setAttr -s 4 ".koy[1:3]"  -0.0020184807945042849 0.00099620211403816938 
		0;
createNode animCurveTA -n "animCurveTA661";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.95273800592490165 10 11.436913954392608 
		30 11.436913954392608 40 0.95273800592490165;
	setAttr -s 4 ".kit[0:3]"  3 1 1 3;
	setAttr -s 4 ".kot[0:3]"  3 1 1 3;
	setAttr -s 4 ".kix[1:3]"  0.9998357892036438 0.99984002113342285 
		1;
	setAttr -s 4 ".kiy[1:3]"  -0.018120154738426208 -0.017887160181999207 
		0;
	setAttr -s 4 ".kox[1:3]"  0.9998357892036438 0.99984002113342285 
		1;
	setAttr -s 4 ".koy[1:3]"  -0.018120145425200462 -0.017887158319354057 
		0;
createNode animCurveTA -n "animCurveTA662";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.41955881507249082 10 -0.71335525050472959 
		30 -0.71335525050472959 40 0.41955881507249082;
	setAttr -s 4 ".kit[0:3]"  3 1 1 3;
	setAttr -s 4 ".kot[0:3]"  3 1 1 3;
	setAttr -s 4 ".kix[1:3]"  0.99998921155929565 0.99999302625656128 
		1;
	setAttr -s 4 ".kiy[1:3]"  -0.0046426556073129177 0.0037384885363280773 
		0;
	setAttr -s 4 ".kox[1:3]"  0.99998921155929565 0.99999302625656128 
		1;
	setAttr -s 4 ".koy[1:3]"  -0.0046426542103290558 0.0037384876050055027 
		0;
createNode animCurveTA -n "animCurveTA663";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.6634293801101616 10 2.0004548594609113 
		30 2.0004548594609113 40 1.6634293801101616;
	setAttr -s 4 ".kit[0:3]"  3 1 1 3;
	setAttr -s 4 ".kot[0:3]"  3 1 1 3;
	setAttr -s 4 ".kix[1:3]"  0.99999982118606567 0.9999997615814209 
		1;
	setAttr -s 4 ".kiy[1:3]"  0.0005524473381228745 -0.00068169221049174666 
		0;
	setAttr -s 4 ".kox[1:3]"  0.99999982118606567 0.9999997615814209 
		1;
	setAttr -s 4 ".koy[1:3]"  0.0005524482112377882 -0.00068169349106028676 
		0;
createNode animCurveTA -n "animCurveTA664";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.0598705588951511 10 -31.33126633964687 
		30 -26.843496469805199 40 1.0598705588951511;
	setAttr -s 4 ".kit[0:3]"  3 1 1 3;
	setAttr -s 4 ".kot[0:3]"  3 1 1 3;
	setAttr -s 4 ".kix[1:3]"  0.99995934963226318 0.93494373559951782 
		1;
	setAttr -s 4 ".kiy[1:3]"  -0.0090179909020662308 0.35479602217674255 
		0;
	setAttr -s 4 ".kox[1:3]"  0.99995934963226318 0.93494373559951782 
		1;
	setAttr -s 4 ".koy[1:3]"  -0.0090180374681949615 0.35479602217674255 
		0;
createNode animCurveTA -n "animCurveTA665";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.26280824457411489 10 -54.030437506828633 
		30 -56.390346931712173 40 0.26280824457411489;
	setAttr -s 4 ".kit[0:3]"  3 1 1 3;
	setAttr -s 4 ".kot[0:3]"  3 1 1 3;
	setAttr -s 4 ".kix[1:3]"  0.97265774011611938 0.9703134298324585 
		1;
	setAttr -s 4 ".kiy[1:3]"  -0.23224334418773651 0.24185091257095337 
		0;
	setAttr -s 4 ".kox[1:3]"  0.97265768051147461 0.9703134298324585 
		1;
	setAttr -s 4 ".koy[1:3]"  -0.23224340379238129 0.24185091257095337 
		0;
createNode animCurveTA -n "animCurveTA666";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 6.5086084195154994 10 28.139658600131106 
		30 21.127662830552826 40 6.5086084195154994;
	setAttr -s 4 ".kit[0:3]"  3 1 1 3;
	setAttr -s 4 ".kot[0:3]"  3 1 1 3;
	setAttr -s 4 ".kix[1:3]"  0.99851197004318237 0.95666021108627319 
		1;
	setAttr -s 4 ".kiy[1:3]"  -0.054532606154680252 -0.29120650887489319 
		0;
	setAttr -s 4 ".kox[1:3]"  0.99851197004318237 0.95666021108627319 
		1;
	setAttr -s 4 ".koy[1:3]"  -0.054532658308744431 -0.29120653867721558 
		0;
createNode animCurveTA -n "animCurveTA667";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.47197901174667056 10 -0.27116051423858811 
		30 -0.27116051423858811 40 0.47197901174667056;
createNode animCurveTA -n "animCurveTA668";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.6163460272109134 10 1.3640080166461988 
		30 1.3640080166461988 40 1.6163460272109134;
createNode animCurveTA -n "animCurveTA669";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.9660530560192302 10 2.643706282277571 
		30 2.643706282277571 40 1.9660530560192302;
createNode animCurveTA -n "animCurveTA670";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 30 0 40 0;
createNode animCurveTA -n "animCurveTA671";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 30 0 40 0;
createNode animCurveTA -n "animCurveTA672";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 33.429092416277157 10 33.429092416277157 
		30 33.429092416277157 40 33.429092416277157;
createNode animCurveTA -n "animCurveTA673";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.2533422302317216 10 8.2533422302317216 
		30 8.2533422302317216 40 8.2533422302317216;
createNode animCurveTA -n "animCurveTA674";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 23.263402056531085 10 23.263402056531085 
		30 23.263402056531085 40 23.263402056531085;
createNode animCurveTA -n "animCurveTA675";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 20.166277752815617 10 20.166277752815617 
		30 20.166277752815617 40 20.166277752815617;
createNode animCurveTA -n "animCurveTA676";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 30 0 40 0;
createNode animCurveTA -n "animCurveTA677";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 30 0 40 0;
createNode animCurveTA -n "animCurveTA678";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 17.254116939558369 10 17.254116939558369 
		30 17.254116939558369 40 17.254116939558369;
createNode clipLibrary -n "clipLibrary1";
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
connectAttr "nps_turn_headSource.st" "clipLibrary1.st[0]";
connectAttr "nps_turn_headSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL206.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL207.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL208.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL209.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL210.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA566.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU41.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU42.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU43.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU44.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU45.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU46.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "nps_Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary1.cel[0].cev[12].cevr"
		;
connectAttr "nps_Hoop_Root_IK_Body_IK_World_LArm.a" "clipLibrary1.cel[0].cev[13].cevr"
		;
connectAttr "animCurveTA567.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA568.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA569.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL211.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL212.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL213.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL214.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL215.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL216.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA570.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA571.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA572.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL217.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL218.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL219.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA573.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA574.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA575.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA576.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA577.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA578.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA579.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA580.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA581.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTL220.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTL221.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTL222.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTL223.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTL224.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTL225.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL226.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL227.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL228.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTA582.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTA583.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTA584.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTA585.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTA586.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTA587.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA588.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA589.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA590.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA591.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA592.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA593.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA594.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA595.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA596.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA597.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA598.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA599.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA600.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA601.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA602.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA603.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA604.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA605.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA606.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA607.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA608.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA609.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA610.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "Right_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[76].cevr"
		;
connectAttr "Right_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[77].cevr"
		;
connectAttr "Right_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[78].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[79].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[80].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[81].cevr"
		;
connectAttr "Left_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[82].cevr"
		;
connectAttr "Left_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[83].cevr"
		;
connectAttr "Left_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[84].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[85].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[86].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[87].cevr"
		;
connectAttr "animCurveTL235.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL236.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL237.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA617.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA618.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA619.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL238.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL239.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL240.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA620.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA621.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA622.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL241.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL242.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL243.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTL244.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTL245.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTL246.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTA623.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTA624.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTA625.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTA626.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTA627.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTA628.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA629.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA630.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA631.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA632.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA633.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA634.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA635.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA636.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA637.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA638.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA639.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA640.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA641.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA642.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA643.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA644.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA645.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA646.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA647.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA648.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA649.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA650.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA651.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA652.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA653.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA654.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA655.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA656.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA657.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA658.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA659.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA660.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA661.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA662.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA663.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA664.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA665.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA666.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA667.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA668.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA669.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA670.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA671.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA672.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA673.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA674.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA675.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA676.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA677.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA678.a" "clipLibrary1.cel[0].cev[161].cevr";
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
// End of nps_turn_head.ma
