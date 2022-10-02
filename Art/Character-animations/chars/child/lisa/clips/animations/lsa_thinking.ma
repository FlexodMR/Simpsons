//Maya ASCII 4.0 scene
//Name: lsa_thinking.ma
//Last modified: Tue, Feb 18, 2003 03:44:42 PM
requires maya "4.0";
requires "p3dmayaexp" "2.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "lsa_thinkingSource";
	setAttr ".ihi" 0;
	setAttr ".du" 100;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 1 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.0039999675936996937;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.9999920129776001;
	setAttr -s 5 ".kox[3:4]"  1 0.0039999675936996937;
	setAttr -s 5 ".koy[3:4]"  0 -0.9999920129776001;
createNode animCurveTL -n "animCurveTL201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  0 -0.033135114381557439 1 -0.031863858943963555 
		2 -0.03048265849697971 3 -0.029031109531284183 4 -0.027530238979734528 5 
		-0.026001073775188267 6 -0.024464640850502942 7 -0.022941967138536076 8 -0.021454079572145211 
		9 -0.020022005084187874 10 -0.018666770607521602 11 -0.017409403075003924 
		12 -0.016270929419492375 13 -0.015272376573844493 14 -0.014434771470917804 
		15 -0.013779141043569846 16 -0.013326512224658145 17 -0.012992833820687753 
		18 -0.012680271399078989 19 -0.012389177034062303 20 -0.012119902799868146 
		21 -0.01187280077072698 22 -0.011648223020869247 23 -0.011446521624525405 
		24 -0.011268048655925908 25 -0.011113156189301213 26 -0.010982196298881764 
		27 -0.010875521058898019 28 -0.010793482543580431 29 -0.010736432827159453 
		30 -0.010704723983865539 31 -0.010698708087929139 32 -0.010718737213580709 
		33 -0.010765163435050702 34 -0.010838338826569569 35 -0.010938615462367764 
		36 -0.011066345416675743 37 -0.011221880763723952 38 -0.011405573577742854 
		39 -0.011617775932962893 40 -0.011858839903614526 41 -0.012129117563928206 
		42 -0.01242896098813439 43 -0.012758722250463522 44 -0.013118753425146065 
		45 -0.013509406586412462 46 -0.013931033808493174 47 -0.01438398716561865 
		48 -0.014868618732019348 49 -0.015385280581925714 50 -0.015934324789568209 
		51 -0.017254749675875397 52 -0.019900709696658383 53 -0.023595288777812185 
		54 -0.028061570845231813 55 -0.033022639824812287 56 -0.038201579642448621 
		57 -0.043321474224035844 58 -0.048105407495468933 59 -0.052276463382642947 
		60 -0.055557725811452879 61 -0.057672278707793741 62 -0.058343205997560557 
		63 -0.058028443207832368 64 -0.057387543787785197 65 -0.056446018546459531 
		66 -0.055229378292895842 67 -0.053763133836134624 68 -0.052072795985216365 
		69 -0.05018387554918155 70 -0.048121883337070653 71 -0.045912330157924161 
		72 -0.04358072682078256 73 -0.041152584134686337 74 -0.038653412908675973 
		75 -0.036108723951791946 76 -0.033544028073074751 77 -0.030984836081564864 
		78 -0.028456658786302772 79 -0.025985006996328962 80 -0.023595391520683909 
		81 -0.021313323168408112 82 -0.01916431274854204 83 -0.017173871070126186 
		84 -0.015367508942201027 85 -0.013770737173807059 86 -0.012409066573984754 
		87 -0.01130800795177459 88 -0.010493072116217073 89 -0.010237026112378573 
		90 -0.010724790678392796 91 -0.011850107162901214 92 -0.013506716914545287 
		93 -0.015588361281966483 94 -0.017988781613806272 95 -0.020601719258706117 
		96 -0.023320915565307469 97 -0.026040111882251821 98 -0.028653049558180616 
		99 -0.031053469941735336 100 -0.033135114381557439;
createNode animCurveTL -n "animCurveTL203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  0 0 1 0.000212984201609792 2 0.00043880891856916431 
		3 0.00067208741536701273 4 0.00091059271366359729 5 0.0011520978351191793 
		6 0.0013943758013940186 7 0.0016351996341483757 8 0.0018723423550425122 9 
		0.0021035769857366874 10 0.0023266765478911623 11 0.0025394140631661978 12 
		0.0027395625532220542 13 0.0029248950397189927 14 0.0030931845443172719 15 
		0.0032422040886771549 16 0.0033697266944589001 17 0.0034841301722280545 18 
		0.0035951160896119162 19 0.0037024433759617671 20 0.0038058709606288888 21 
		0.003905157772964562 22 0.0040000627423200687 23 0.0040903447980466905 24 
		0.0041757628694957085 25 0.0042560758860184043 26 0.0043310427769660603 27 
		0.0044004224716899581 28 0.0044639738995413767 29 0.0045214559898716002 30 
		0.0045726276720319094 31 0.0046172478753735849 32 0.0046550755292479101 33 
		0.0046858695630061648 34 0.0047093889059996313 35 0.0047253924875795906 36 
		0.004733639237097324 37 0.0047338880839041149 38 0.0047258979573512432 39 
		0.0047094277867899895 40 0.004684236501571638 41 0.0046500830310474677 42 
		0.0046067263045687619 43 0.0045539252514868005 44 0.0044914388011528658 45 
		0.0044190258829182394 46 0.0043364454261342038 47 0.004243456360152038 48 
		0.0041398176143230261 49 0.0040252881179984479 50 0.0038996268005295855 51 
		0.0034652122865819835 52 0.0024967428099699532 53 0.0011024545084144005 54 
		-0.0006094164803637671 55 -0.0025306340186436425 56 -0.0045529619687043185 
		57 -0.0065681641928248867 58 -0.008468004553284442 59 -0.010144246912362074 
		60 -0.01148865513233688 61 -0.012392993075487951 62 -0.012749024604094373 
		63 -0.012729447162518989 64 -0.012585765520812617 65 -0.012327954529786323 
		66 -0.011965989040251177 67 -0.011509843903018247 68 -0.010969493968898601 
		69 -0.010354914088703308 70 -0.0096760791132434344 71 -0.0089429638933300522 
		72 -0.0081655432797742289 73 -0.0073537921233870311 74 -0.0065176852749795275 
		75 -0.0056671975853627892 76 -0.0048123039053478821 77 -0.0039629790857458758 
		78 -0.0031291979773678427 79 -0.0023209354310248405 80 -0.0015481662975279505 
		81 -0.00082086542768823199 82 -0.00014900767231675594 83 0.00045743211777540669 
		84 0.00098847909177718872 85 0.0014341583988775252 86 0.0017844951882653409 
		87 0.0020295146091295711 88 0.0021592418106591554 89 0.0021882760141270796 
		90 0.002144774823520248 91 0.0020391004377325679 92 0.0018816150556579473 
		93 0.0016826808761902935 94 0.0014526600982235132 95 0.0012019149206515143 
		96 0.0009408075423682047 97 0.00067970016226749045 98 0.00042895497924328048 
		99 0.00019893419218948089 100 0;
createNode animCurveTA -n "animCurveTA581";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  35 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  35 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  35 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  35 0;
createNode animCurveTU -n "animCurveTU27";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 1 95 1 100 0;
	setAttr -s 4 ".kit[0:3]"  9 2 2 1;
	setAttr -s 4 ".kot[0:3]"  9 2 2 5;
	setAttr -s 4 ".kix[3]"  0.16439883410930634;
	setAttr -s 4 ".kiy[3]"  -0.98639392852783203;
createNode animCurveTU -n "animCurveTU28";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 1 95 1 100 0;
	setAttr -s 4 ".kit[0:3]"  9 2 2 1;
	setAttr -s 4 ".kot[0:3]"  9 2 2 5;
	setAttr -s 4 ".kix[3]"  0.16439883410930634;
	setAttr -s 4 ".kiy[3]"  -0.98639392852783203;
createNode animCurveTU -n "animCurveTU29";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 100 1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU30";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 100 1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA582";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA583";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA584";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.26454016861507795 0.01 -0.26454016861507795 
		0.015 -0.26454016861507795 100 -0.26454016861507795;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL209";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.13806192026723146 0.01 0.13806192026723146 
		0.015 0.13806192026723146 16 0.13964711708164665 22 0.18434154906913075 25 
		0.13964711708164665 29 0.13964711708164665 34 0.15202747474217984 37 0.13964711708164665 
		50 0.13964711708164665 62 0.1378963593953989 88 0.1378963593953989 100 0.13806192026723146;
	setAttr -s 13 ".kit[0:12]"  9 1 1 3 9 3 3 
		9 3 3 3 3 9;
	setAttr -s 13 ".kot[0:12]"  9 9 9 3 9 3 3 
		9 3 3 3 3 9;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 0.99914449453353882;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0.041354816406965256;
createNode animCurveTL -n "animCurveTL210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.064904406754016042 0.01 -0.064904406754016042 
		0.015 -0.064904406754016042 100 -0.064904406754016042;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA585";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 0.01 0 0.015 0 16 0 22 -18.917444470195793 
		25 0 29 0 34 -5.6024739392502898 37 0 50 0 62 0.79226904145708898 88 0.79226904145708898 
		100 0;
	setAttr -s 13 ".kit[0:12]"  9 1 1 3 3 3 3 
		9 9 3 3 3 9;
	setAttr -s 13 ".kot[0:12]"  9 9 9 1 3 3 3 
		9 3 3 3 3 9;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 0.98360532522201538 
		1 1 1 0.99940299987792969;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0.18033471703529358 
		0 0 0 -0.034548625349998474;
	setAttr -s 13 ".kox[3:12]"  0.99449610710144043 1 1 1 1 1 1 
		1 1 0.99940299987792969;
	setAttr -s 13 ".koy[3:12]"  -0.10477379709482193 0 0 0 0 0 
		0 0 0 -0.034548625349998474;
createNode animCurveTA -n "animCurveTA586";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -13.717778871715202 0.01 -13.717778871715202 
		0.015 -13.717778871715204 100 -13.717778871715202;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA587";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 100 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.21594587158542247 0.01 0.21594587158542247 
		0.015 0.21594587158542247 100 0.21594587158542247;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.1380615615975922 0.01 0.1380615615975922 
		0.015 0.1380615615975922 88 0.13791212285411131 100 0.1380615615975922;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.99930286407470703;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.037333644926548004;
	setAttr -s 5 ".kox[3:4]"  1 0.99930286407470703;
	setAttr -s 5 ".koy[3:4]"  0 0.037333644926548004;
createNode animCurveTL -n "animCurveTL213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.00078430246903575811 0.01 0.00078430246903575811 
		0.015 0.00078430246903575811 100 0.00078430246903575811;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA588";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 100 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA589";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 100 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA590";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 100 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA591";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA592";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA593";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA594";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA595";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA596";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA597";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 100 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA598";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 100 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA599";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 100 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA600";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 100 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA601";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 100 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA602";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.01 0 0.015 0 100 0;
	setAttr -s 4 ".kit[1:3]"  1 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 0.01 1 0.015 1 88 1 100 1;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 0.01 1 0.015 1 88 1 100 1;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.076472881617957691 0.01 -0.076472881617957691 
		0.015 -0.076472881617957691 16 -0.030756398785928899 50 -0.036774997039785789 
		62 -0.13465090339168634 88 -0.024217072333354791 100 -0.076472881617957691;
	setAttr -s 8 ".kit[1:7]"  1 1 9 1 9 9 9;
	setAttr -s 8 ".kot[4:7]"  1 9 9 9;
	setAttr -s 8 ".kix[1:7]"  1 1 0.3870064914226532 0.24752064049243927 
		0.71014845371246338 0.21273867785930634 0.076323233544826508;
	setAttr -s 8 ".kiy[1:7]"  0 0 0.9220770001411438 -0.96888262033462524 
		0.70405197143554688 0.97710913419723511 -0.99708312749862671;
	setAttr -s 8 ".kox[4:7]"  0.24752096831798553 0.71014845371246338 
		0.21273867785930634 0.076323233544826508;
	setAttr -s 8 ".koy[4:7]"  -0.96888256072998047 0.70405197143554688 
		0.97710913419723511 -0.99708312749862671;
createNode animCurveTL -n "animCurveTL221";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.96147551361829786 0.01 0.96147551361829786 
		0.015 0.96147551361829786 16 0.96886542451576907 50 0.9688144984758672 62 
		0.97260065649267535 88 0.97260065649267535 100 0.96147551361829786;
	setAttr -s 8 ".kit[0:7]"  9 1 1 1 1 1 1 
		9;
	setAttr -s 8 ".kot[0:7]"  9 9 9 1 1 1 1 
		9;
	setAttr -s 8 ".kix[1:7]"  1 1 0.98289734125137329 0.99544626474380493 
		0.98842084407806396 0.8986891508102417 0.33834114670753479;
	setAttr -s 8 ".kiy[1:7]"  0 0 0.1841544508934021 0.095324315130710602 
		0.15173758566379547 -0.43858617544174194 -0.94102352857589722;
	setAttr -s 8 ".kox[3:7]"  0.98289728164672852 0.99544626474380493 
		0.98842066526412964 0.89868932962417603 0.33834114670753479;
	setAttr -s 8 ".koy[3:7]"  0.18415465950965881 0.09532427042722702 
		0.15173843502998352 -0.43858584761619568 -0.94102352857589722;
createNode animCurveTL -n "animCurveTL222";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 0.01 0 0.015 0 16 0.0077770279475376028 
		50 0.0089999900177527969 62 -0.029423608986724536 88 0.004983337056563405 
		100 0;
	setAttr -s 8 ".kit[0:7]"  9 1 1 1 1 9 1 
		9;
	setAttr -s 8 ".kot[0:7]"  9 9 9 1 1 9 1 
		9;
	setAttr -s 8 ".kix[1:7]"  1 1 0.77958440780639648 0.73992252349853516 
		0.95322209596633911 0.90291005373001099 0.62596619129180908;
	setAttr -s 8 ".kiy[1:7]"  0 0 0.62629717588424683 -0.67269206047058105 
		-0.30227074027061462 0.42982950806617737 -0.77985018491744995;
	setAttr -s 8 ".kox[3:7]"  0.77958416938781738 0.73992067575454712 
		0.95322209596633911 0.90291047096252441 0.62596619129180908;
	setAttr -s 8 ".koy[3:7]"  0.6262974739074707 -0.67269414663314819 
		-0.30227074027061462 0.42982861399650574 -0.77985018491744995;
createNode animCurveTA -n "animCurveTA603";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.62843630316474508 0.01 -0.62843630316474508 
		0.015 -0.62843630316474508 88 0 100 -0.62843630316474508;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.99962425231933594;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.027410408481955528;
	setAttr -s 5 ".kox[3:4]"  1 0.99962425231933594;
	setAttr -s 5 ".koy[3:4]"  0 -0.027410408481955528;
createNode animCurveTA -n "animCurveTA604";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -5.8284402688137158 0.01 -5.8284402688137158 
		0.015 -5.8284402688137167 88 0 100 -5.8284402688137158;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.9691508412361145;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.24646835029125214;
	setAttr -s 5 ".kox[3:4]"  1 0.9691508412361145;
	setAttr -s 5 ".koy[3:4]"  0 -0.24646835029125214;
createNode animCurveTA -n "animCurveTA605";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.2956360193097458 0.01 -1.2956360193097458 
		0.015 -1.295636019309746 16 1.5273506473629141 50 1.2953906634023735 62 -2.2701334503400394 
		88 0 100 -1.2956360193097458;
	setAttr -s 8 ".kit[0:7]"  9 1 1 9 1 3 1 
		9;
	setAttr -s 8 ".kot[0:7]"  9 9 9 1 1 3 1 
		9;
	setAttr -s 8 ".kix[1:7]"  1 1 0.99963188171386719 0.999611496925354 
		1 0.99831700325012207 0.9984058141708374;
	setAttr -s 8 ".kiy[1:7]"  0 0 0.027131319046020508 -0.027871806174516678 
		0 0.057992585003376007 -0.056442670524120331;
	setAttr -s 8 ".kox[3:7]"  0.99999362230300903 0.999611496925354 
		1 0.99831700325012207 0.9984058141708374;
	setAttr -s 8 ".koy[3:7]"  -0.0035721524618566036 -0.027871806174516678 
		0 0.057992588728666306 -0.056442670524120331;
createNode animCurveTA -n "animCurveTA606";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA607";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA608";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA609";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA610";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA611";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA612";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA613";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA614";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA615";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA616";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA617";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA618";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA619";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA620";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA621";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA622";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA623";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA624";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA625";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA626";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA627";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA628";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA629";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA630";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA631";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.43524234076486068 0.01 -0.43524234076486068 
		0.015 -0.43524234076486068 16 0.52588537528673795 50 0.36732259274780832 
		62 0.062074125016377303 88 0.062074125016377303 100 -0.43524234076486068;
	setAttr -s 8 ".kit[1:7]"  1 1 9 9 9 9 9;
	setAttr -s 8 ".kix[1:7]"  1 1 0.020756049081683159 0.033041372895240784 
		0.041460566222667694 0.025461776182055473 0.0080429064109921455;
	setAttr -s 8 ".kiy[1:7]"  0 0 0.99978458881378174 -0.99945396184921265 
		-0.99914014339447021 -0.99967581033706665 -0.99996763467788696;
createNode animCurveTL -n "animCurveTL224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.82665738350180629 0.01 -0.82665738350180629 
		0.015 -0.82665738350180629 16 0.24261047541359035 50 0.0045135107202548853 
		62 -0.46942381579058678 88 -0.46942381579058678 100 -0.82665738350180629;
	setAttr -s 8 ".kit[1:7]"  1 1 9 9 9 9 9;
	setAttr -s 8 ".kix[1:7]"  1 1 0.020041991025209427 0.021529551595449448 
		0.026716919615864754 0.035435393452644348 0.01119645219296217;
	setAttr -s 8 ".kiy[1:7]"  0 0 0.99979913234710693 -0.99976819753646851 
		-0.99964302778244019 -0.99937194585800171 -0.99993729591369629;
createNode animCurveTL -n "animCurveTL225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.27773886459742925 0.01 0.27773886459742925 
		0.015 0.27773886459742925 16 0.45535171955418435 50 0.38285941913512583 62 
		0.22696860849171466 88 0.22696860849171466 100 0.27773886459742925;
	setAttr -s 8 ".kit[1:7]"  1 1 9 9 9 9 9;
	setAttr -s 8 ".kix[1:7]"  1 1 0.15654635429382324 0.066987834870815277 
		0.080986551940441132 0.2420697808265686 0.078542888164520264;
	setAttr -s 8 ".kiy[1:7]"  0 0 0.98767060041427612 -0.9977537989616394 
		-0.99671518802642822 0.97025883197784424 0.99691075086593628;
createNode animCurveTA -n "animCurveTA632";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.8121934161072303e-015 0.01 
		0 0.015 1.8121934161072299e-015 16 4.4197345729753632 50 4.8201520000774494 
		62 5.6812282590278436 88 5.6812282590278436 100 -1.8121934161072303e-015;
	setAttr -s 8 ".kit[1:7]"  1 1 9 9 9 9 9;
	setAttr -s 8 ".kix[1:7]"  1 1 0.99872773885726929 0.99989694356918335 
		0.99992960691452026 0.99695003032684326 0.97062236070632935;
	setAttr -s 8 ".kiy[1:7]"  0 0 0.050427421927452087 0.01435757614672184 
		0.011863861232995987 -0.078042410314083099 -0.24060796201229095;
createNode animCurveTA -n "animCurveTA633";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 28.652637602052774 0.01 28.652637602052774 
		0.015 28.652637602052774 16 22.646910800576748 50 22.158853296581952 62 21.109311747439843 
		88 21.109311747439843 100 28.652637602052774;
	setAttr -s 8 ".kit[1:7]"  1 1 9 9 9 9 9;
	setAttr -s 8 ".kix[1:7]"  1 1 0.99769443273544312 0.99984687566757202 
		0.99989545345306396 0.99464172124862671 0.94987154006958008;
	setAttr -s 8 ".kiy[1:7]"  0 0 -0.067866325378417969 -0.0174991674721241 
		-0.014460032805800438 0.1033819168806076 0.31264045834541321;
createNode animCurveTA -n "animCurveTA634";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 64.676908227303443 0.01 64.676908227303443 
		0.015 64.676908227303443 16 76.603079733540241 50 76.655991791448727 62 76.769776342877606 
		88 76.769776342877606 100 64.676908227303443;
	setAttr -s 8 ".kit[1:7]"  1 1 9 9 9 9 9;
	setAttr -s 8 ".kix[1:7]"  1 1 0.99221885204315186 0.99999821186065674 
		0.99999874830245972 0.986400306224823 0.88443106412887573;
	setAttr -s 8 ".kiy[1:7]"  0 0 0.12450592219829559 0.0018974344711750746 
		0.0015678256750106812 -0.16436053812503815 -0.46667090058326721;
createNode animCurveTL -n "animCurveTL226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.5198069948790518 0.01 0.5198069948790518 
		0.015 0.5198069948790518 88 0.20623790699604494 100 0.5198069948790518;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.012755320407450199;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.99991863965988159;
	setAttr -s 5 ".kox[3:4]"  1 0.012755320407450199;
	setAttr -s 5 ".koy[3:4]"  0 0.99991863965988159;
createNode animCurveTL -n "animCurveTL227";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.72394202659893114 0.01 -0.72394202659893114 
		0.015 -0.72394202659893114 88 -0.94615818397708606 100 -0.72394202659893114;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.017997574061155319;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.99983805418014526;
	setAttr -s 5 ".kox[3:4]"  1 0.017997574061155319;
	setAttr -s 5 ".koy[3:4]"  0 0.99983805418014526;
createNode animCurveTL -n "animCurveTL228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.36439499068905612 0.01 0.36439499068905612 
		0.015 0.36439499068905612 88 0.023808763748733922 100 0.36439499068905612;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.011743644252419472;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.99993103742599487;
	setAttr -s 5 ".kox[3:4]"  1 0.011743644252419472;
	setAttr -s 5 ".koy[3:4]"  0 0.99993103742599487;
createNode animCurveTA -n "animCurveTA635";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 7.7976222737965299 0.01 7.7976222737965299 
		0.015 7.7976222737965317 88 8.1910546202722809 100 7.7976222737965299;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.99985265731811523;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.017164198681712151;
	setAttr -s 5 ".kox[3:4]"  1 0.99985265731811523;
	setAttr -s 5 ".koy[3:4]"  0 -0.017164198681712151;
createNode animCurveTA -n "animCurveTA636";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -30.409274105849079 0.01 -30.409274105849079 
		0.015 -30.409274105849079 88 -16.680769289981995 100 -30.409274105849079;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.85786396265029907;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.51387691497802734;
	setAttr -s 5 ".kox[3:4]"  1 0.85786396265029907;
	setAttr -s 5 ".koy[3:4]"  0 -0.51387691497802734;
createNode animCurveTA -n "animCurveTA637";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -64.859940280210878 0.01 -64.859940280210878 
		0.015 -64.859940280210893 88 -64.609749241846473 100 -64.859940280210878;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.99994039535522461;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.010915993712842464;
	setAttr -s 5 ".kox[3:4]"  1 0.99994039535522461;
	setAttr -s 5 ".koy[3:4]"  0 -0.010915993712842464;
createNode animCurveTL -n "animCurveTL229";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.97384023505055983 0.01 -0.97384023505055983 
		0.015 -0.97384023505055983 88 -0.8448236677023373 100 -0.97384023505055983;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.030988875776529312;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.9995197057723999;
	setAttr -s 5 ".kox[3:4]"  1 0.030988875776529312;
	setAttr -s 5 ".koy[3:4]"  0 -0.9995197057723999;
createNode animCurveTL -n "animCurveTL230";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.2525748803373358 0.01 1.2525965505547216 
		0.015 1.2525965505547216 88 1.5117481219250299 100 1.2525748803373358;
	setAttr -s 5 ".kit[0:4]"  9 1 1 1 9;
	setAttr -s 5 ".kot[1:4]"  9 9 1 9;
	setAttr -s 5 ".kix[1:4]"  0.22482451796531677 1 1 0.015431852079927921;
	setAttr -s 5 ".kiy[1:4]"  0.97439926862716675 0 0 -0.99988090991973877;
	setAttr -s 5 ".kox[0:4]"  0.22482451796531677 0.22482451796531677 
		0.11245904862880707 1 0.015431852079927921;
	setAttr -s 5 ".koy[0:4]"  0.97439926862716675 0.97439926862716675 
		0.99365633726119995 0 -0.99988090991973877;
createNode animCurveTL -n "animCurveTL231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.097994651149805143 0.01 -0.097994651149805143 
		0.015 -0.097994651149805143 88 -0.097994651149805143 100 -0.097994651149805143;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA638";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -12.222987645962959 0.01 -12.222987645962959 
		0.015 -12.222987645962959 88 5.4739599453216474 100 -12.222987645962959;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.7914963960647583;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.61117386817932129;
	setAttr -s 5 ".kox[3:4]"  1 0.7914963960647583;
	setAttr -s 5 ".koy[3:4]"  0 -0.61117386817932129;
createNode animCurveTA -n "animCurveTA639";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -19.681044208515029 0.01 -19.681044208515029 
		0.015 -19.681044208515029 88 8.5874521608419823 100 -19.681044208515029;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.62976723909378052;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.77678388357162476;
	setAttr -s 5 ".kox[3:4]"  1 0.62976723909378052;
	setAttr -s 5 ".koy[3:4]"  0 -0.77678388357162476;
createNode animCurveTA -n "animCurveTA640";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 65.119655550709041 0.01 65.119655550709041 
		0.015 65.119655550709027 88 74.754744621954103 100 65.119655550709041;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.92184704542160034;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.38755384087562561;
	setAttr -s 5 ".kox[3:4]"  1 0.92184704542160034;
	setAttr -s 5 ".koy[3:4]"  0 -0.38755384087562561;
createNode animCurveTL -n "animCurveTL232";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.75854111686822778 0.01 0.75854111686822778 
		0.015 0.75854111686822778 88 0.61083301393139333 100 0.75854111686822778;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.027070509269833565;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.9996335506439209;
	setAttr -s 5 ".kox[3:4]"  1 0.027070509269833565;
	setAttr -s 5 ".koy[3:4]"  0 0.9996335506439209;
createNode animCurveTL -n "animCurveTL233";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.1932952672205326 0.01 1.1932952672205326 
		0.015 1.1932952672205326 88 1.4644416293758407 100 1.1932952672205326;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.01475057378411293;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.99989122152328491;
	setAttr -s 5 ".kox[3:4]"  1 0.01475057378411293;
	setAttr -s 5 ".koy[3:4]"  0 -0.99989122152328491;
createNode animCurveTL -n "animCurveTL234";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.14314299916678522 0.01 0.14314299916678522 
		0.015 0.14314299916678522 88 0.14314299916678522 100 0.14314299916678522;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA641";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -5.7993291745893352 0.01 -5.7993291745893352 
		0.015 -5.7993291745893352 88 16.226511010665405 100 -5.7993291745893352;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.72100585699081421;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.6929289698600769;
	setAttr -s 5 ".kox[3:4]"  1 0.72100585699081421;
	setAttr -s 5 ".koy[3:4]"  0 -0.6929289698600769;
createNode animCurveTA -n "animCurveTA642";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.228264010471275 0.01 -1.228264010471275 
		0.015 -1.228264010471275 88 -8.513966085499284 100 -1.228264010471275;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.95300370454788208;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.30295869708061218;
	setAttr -s 5 ".kox[3:4]"  1 0.95300370454788208;
	setAttr -s 5 ".koy[3:4]"  0 0.30295869708061218;
createNode animCurveTA -n "animCurveTA643";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -60.456694896838378 0.01 -60.456694896838378 
		0.015 -60.456694896838378 88 -68.213989601412422 100 -60.456694896838378;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.9472118616104126;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.32060834765434265;
	setAttr -s 5 ".kox[3:4]"  1 0.9472118616104126;
	setAttr -s 5 ".koy[3:4]"  0 0.32060834765434265;
createNode animCurveTL -n "animCurveTL235";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL236";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL237";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1 0.01 -1 0.015 -1 88 -1 100 
		-1;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL238";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.10167917362943303 0.01 -0.10167917362943303 
		0.015 -0.10167917362943303 16 -0.73810969304757312 50 -0.62746827761432478 
		62 -0.38953982331974019 88 -0.38953982331974019 100 -0.10167917362943303;
	setAttr -s 8 ".kit[1:7]"  1 1 9 9 9 9 9;
	setAttr -s 8 ".kix[1:7]"  1 1 0.031672976911067963 0.0439467653632164 
		0.053162012249231339 0.04396023228764534 0.013894269242882729;
	setAttr -s 8 ".kiy[1:7]"  0 0 -0.99949830770492554 0.99903386831283569 
		0.99858587980270386 0.99903327226638794 0.99990344047546387;
createNode animCurveTL -n "animCurveTL239";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.40762644910266188 0.01 -0.40762644910266188 
		0.015 -0.40762644910266188 16 -0.36008784014046685 50 -0.36835227560145628 
		62 -0.3861245027015201 88 -0.3861245027015201 100 -0.40762644910266188;
	setAttr -s 8 ".kit[1:7]"  1 1 9 9 9 9 9;
	setAttr -s 8 ".kix[1:7]"  1 1 0.39054778218269348 0.5074540376663208 
		0.58039498329162598 0.50756967067718506 0.18289189040660858;
	setAttr -s 8 ".kiy[1:7]"  0 0 0.92058265209197998 -0.8616788387298584 
		-0.81433510780334473 -0.86161071062088013 -0.98313301801681519;
createNode animCurveTL -n "animCurveTL240";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.93129112588482243 0.01 -0.93129112588482243 
		0.015 -0.93129112588482243 16 -0.26526062035167752 50 -0.38104789696603014 
		62 -0.6300422506279183 88 -0.6300422506279183 100 -0.93129112588482243;
	setAttr -s 8 ".kit[1:7]"  1 1 9 9 9 9 9;
	setAttr -s 8 ".kix[1:7]"  1 1 0.030266674235463142 0.041997194290161133 
		0.050805602222681046 0.04201006144285202 0.013276886194944382;
	setAttr -s 8 ".kiy[1:7]"  0 0 0.99954187870025635 -0.99911773204803467 
		-0.99870854616165161 -0.99911719560623169 -0.9999118447303772;
createNode animCurveTA -n "animCurveTA644";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 12.253734489678925 0.01 12.253734489678925 
		0.015 12.253734489678925 16 -30.9480939356405 50 -30.9480939356405 56 -4.5572205384299966 
		62 -6.1909837740625866 88 -6.1909837740625866 100 12.253734489678925;
	setAttr -s 9 ".kit[0:8]"  9 1 1 1 1 1 9 
		1 9;
	setAttr -s 9 ".kot[0:8]"  9 9 9 1 1 1 9 
		1 9;
	setAttr -s 9 ".kix[1:8]"  1 1 0.99978601932525635 0.99928772449493408 
		0.99891889095306396 0.99964290857315063 0.99916380643844604 0.77904033660888672;
	setAttr -s 9 ".kiy[1:8]"  0 0 -0.020686674863100052 0.037736892700195313 
		0.046487588435411453 -0.026722842827439308 0.040886238217353821 0.62697380781173706;
	setAttr -s 9 ".kox[3:8]"  0.99978601932525635 0.99928772449493408 
		0.99891889095306396 0.99964290857315063 0.99916380643844604 0.77904033660888672;
	setAttr -s 9 ".koy[3:8]"  -0.020686613395810127 0.037736900150775909 
		0.046487588435411453 -0.026722842827439308 0.040886260569095612 0.62697380781173706;
createNode animCurveTA -n "animCurveTA645";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -65.746751280844961 0.01 -65.746751280844961 
		0.015 -65.746751280844975 16 3.4050850011440446 50 3.4050850011440446 56 
		-2.731134681043403 62 -20.279827517874502 88 -20.279827517874502 100 -65.746751280844961;
	setAttr -s 9 ".kit[0:8]"  9 1 1 1 9 1 1 
		1 9;
	setAttr -s 9 ".kot[0:8]"  9 9 9 1 9 1 1 
		1 9;
	setAttr -s 9 ".kix[1:8]"  1 1 0.99945199489593506 0.99678963422775269 
		0.82256478071212769 0.99914556741714478 0.99954098463058472 0.45011556148529053;
	setAttr -s 9 ".kiy[1:8]"  0 0 0.033101413398981094 -0.080065064132213593 
		-0.56867140531539917 -0.041329190135002136 -0.030295988544821739 -0.89297032356262207;
	setAttr -s 9 ".kox[3:8]"  0.99945199489593506 0.99678963422775269 
		0.82256478071212769 0.99914556741714478 0.99954098463058472 0.45011556148529053;
	setAttr -s 9 ".koy[3:8]"  0.033101387321949005 -0.080065064132213593 
		-0.56867140531539917 -0.041329149156808853 -0.030295960605144501 -0.89297032356262207;
createNode animCurveTA -n "animCurveTA646";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 3.871449260799477e-015 0.01 0 
		0.015 0 16 121.75656146190542 50 121.75656146190542 56 79.462118288292316 
		62 96.414413390666056 88 96.414413390666056 100 3.871449260799477e-015;
	setAttr -s 9 ".kit[0:8]"  9 1 1 1 1 1 1 
		1 9;
	setAttr -s 9 ".kot[0:8]"  9 9 9 1 1 1 1 
		1 9;
	setAttr -s 9 ".kix[1:8]"  1 1 0.99446982145309448 0.99992144107818604 
		0.99857199192047119 0.99883198738098145 0.99735945463180542 0.23126237094402313;
	setAttr -s 9 ".kiy[1:8]"  0 0 0.10502292215824127 -0.012532850727438927 
		-0.053422417491674423 0.048318751156330109 -0.072622932493686676 -0.97289139032363892;
	setAttr -s 9 ".kox[3:8]"  0.99446982145309448 0.99992144107818604 
		0.99857199192047119 0.99883198738098145 0.99735945463180542 0.23126237094402313;
	setAttr -s 9 ".koy[3:8]"  0.10502300411462784 -0.01253284327685833 
		-0.053422540426254272 0.048318739980459213 -0.072622872889041901 -0.97289139032363892;
createNode animCurveTA -n "animCurveTA647";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.061808866237337522 0.01 -0.061808866237337522 
		0.015 -0.061808866237340665 18 -17.704472501002773 52 -17.704472501002773 
		58 12.77993589815498 64 -6.0188443996937568 90 -6.0188443996937568 100 -0.061808866237337522;
	setAttr -s 9 ".kit[0:8]"  9 1 1 1 1 9 1 
		1 9;
	setAttr -s 9 ".kot[0:8]"  9 9 9 1 1 9 1 
		1 9;
	setAttr -s 9 ".kix[1:8]"  1 1 0.99967122077941895 0.99922651052474976 
		0.89087808132171631 0.99996465444564819 0.99996930360794067 0.95464026927947998;
	setAttr -s 9 ".kiy[1:8]"  0 0 -0.025640076026320457 0.039324142038822174 
		0.45424246788024902 -0.0084087355062365532 0.0078332005068659782 0.29776155948638916;
	setAttr -s 9 ".kox[3:8]"  0.99967122077941895 0.99922651052474976 
		0.89087808132171631 0.99996465444564819 0.99996930360794067 0.95464026927947998;
	setAttr -s 9 ".koy[3:8]"  -0.025640089064836502 0.039324149489402771 
		0.45424246788024902 -0.0084087401628494263 0.0078332051634788513 0.29776155948638916;
createNode animCurveTA -n "animCurveTA648";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -59.058178941076754 0.01 -59.058178941076754 
		0.015 -59.058178941076754 18 -29.571744447527752 52 -29.571744447527752 58 
		-26.216607353903047 64 -33.144840286769899 90 -33.144840286769899 100 -59.058178941076754;
	setAttr -s 9 ".kit[1:8]"  1 1 1 9 9 1 1 
		9;
	setAttr -s 9 ".kot[3:8]"  1 9 9 1 1 9;
	setAttr -s 9 ".kix[1:8]"  1 1 0.99982273578643799 0.99903696775436401 
		0.98806387186050415 0.99996083974838257 0.99989789724349976 0.59329068660736084;
	setAttr -s 9 ".kiy[1:8]"  0 0 0.018828960135579109 0.043876349925994873 
		-0.15404480695724487 -0.0088467095047235489 -0.014289409853518009 -0.8049883246421814;
	setAttr -s 9 ".kox[3:8]"  0.99982273578643799 0.99903696775436401 
		0.98806387186050415 0.99996083974838257 0.99989789724349976 0.59329068660736084;
	setAttr -s 9 ".koy[3:8]"  0.018828978762030602 0.043876349925994873 
		-0.15404480695724487 -0.0088467104360461235 -0.01428942009806633 -0.8049883246421814;
createNode animCurveTA -n "animCurveTA649";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 16.579147429757843 0.01 16.579147429757843 
		0.015 16.57914742975785 18 103.52550915527642 52 103.52550915527642 58 64.872217245627695 
		64 82.787625339019158 90 82.787625339019158 100 16.579147429757843;
	setAttr -s 9 ".kit[0:8]"  9 1 1 1 1 9 1 
		1 9;
	setAttr -s 9 ".kot[0:8]"  9 9 9 1 1 9 1 
		1 9;
	setAttr -s 9 ".kix[1:8]"  1 1 0.99846172332763672 0.9995957612991333 
		0.74149924516677856 0.99989610910415649 0.99917292594909668 0.27716052532196045;
	setAttr -s 9 ".kiy[1:8]"  0 0 0.055444896221160889 -0.0284314826130867 
		-0.67095369100570679 0.014412504620850086 -0.040663447231054306 -0.960823655128479;
	setAttr -s 9 ".kox[3:8]"  0.99846172332763672 0.9995957612991333 
		0.74149924516677856 0.99989610910415649 0.99917292594909668 0.27716052532196045;
	setAttr -s 9 ".koy[3:8]"  0.055444944649934769 -0.028431504964828491 
		-0.67095369100570679 0.014412523247301579 -0.040663488209247589 -0.960823655128479;
createNode animCurveTA -n "animCurveTA650";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 8.5572674112203622 0.01 8.5572674112203622 
		0.015 8.5572674112203639 16 58.582779512092145 50 58.582779512092145 56 86.242130081646962 
		62 81.24741764161665 88 81.24741764161665 100 8.5572674112203622;
	setAttr -s 9 ".kit[0:8]"  9 1 1 1 1 1 9 
		1 9;
	setAttr -s 9 ".kot[0:8]"  9 9 9 1 1 1 9 
		1 9;
	setAttr -s 9 ".kix[1:8]"  1 1 0.9991956353187561 0.99857437610626221 
		0.98429632186889648 0.99667710065841675 0.9999350905418396 0.30069616436958313;
	setAttr -s 9 ".kiy[1:8]"  0 0 0.040101170539855957 0.053377959877252579 
		0.17652410268783569 -0.08145422488451004 -0.011393418535590172 -0.95371997356414795;
	setAttr -s 9 ".kox[3:8]"  0.9991956353187561 0.99857437610626221 
		0.98429632186889648 0.99667710065841675 0.9999350905418396 0.30069616436958313;
	setAttr -s 9 ".koy[3:8]"  0.040101159363985062 0.053377967327833176 
		0.17652414739131927 -0.08145422488451004 -0.011393411085009575 -0.95371997356414795;
createNode animCurveTA -n "animCurveTA651";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 15.711328223519057 0.01 15.711328223519057 
		0.015 15.711328223519061 18 74.738908530409887 52 74.738908530409887 58 78.490824231517294 
		64 62.647493819837592 90 62.647493819837592 100 15.711328223519057;
	setAttr -s 9 ".kit[0:8]"  9 1 1 1 9 1 1 
		1 9;
	setAttr -s 9 ".kot[0:8]"  9 9 9 1 9 1 1 
		1 9;
	setAttr -s 9 ".kix[1:8]"  1 1 0.9992901086807251 0.99879616498947144 
		0.99571758508682251 0.99988210201263428 0.99978160858154297 0.37689825892448425;
	setAttr -s 9 ".kiy[1:8]"  0 0 0.037672847509384155 0.049053337424993515 
		-0.092447042465209961 0.01535438559949398 -0.020897040143609047 -0.92625468969345093;
	setAttr -s 9 ".kox[3:8]"  0.9992901086807251 0.99879616498947144 
		0.99571758508682251 0.99988210201263428 0.99978160858154297 0.37689825892448425;
	setAttr -s 9 ".koy[3:8]"  0.03767283633351326 0.049053337424993515 
		-0.092447035014629364 0.015354398638010025 -0.020897040143609047 -0.92625468969345093;
createNode animCurveTA -n "animCurveTA652";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 0.01 0 0.015 0 16 -89.23469156075106 
		50 -88.965806790659968 56 -64.64067100094897 62 -9.0085064870862368 88 -9.0085064870862368 
		100 0;
	setAttr -s 9 ".kit[1:8]"  1 1 1 1 9 1 9 
		9;
	setAttr -s 9 ".kot[3:8]"  1 1 9 1 9 9;
	setAttr -s 9 ".kix[1:8]"  1 1 0.99967694282531738 0.99958634376525879 
		0.27553653717041016 0.99947476387023926 0.99238407611846924 0.93068397045135498;
	setAttr -s 9 ".kiy[1:8]"  0 0 0.025417767465114594 0.0287591852247715 
		0.96129059791564941 0.03240605816245079 0.12318210303783417 0.36582422256469727;
	setAttr -s 9 ".kox[3:8]"  0.99967688322067261 0.99958634376525879 
		0.27553653717041016 0.99947476387023926 0.99238407611846924 0.93068397045135498;
	setAttr -s 9 ".koy[3:8]"  0.025417953729629517 0.028759192675352097 
		0.96129059791564941 0.032406099140644073 0.12318210303783417 0.36582422256469727;
createNode animCurveTA -n "animCurveTA653";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 0.01 0 0.015 0 16 -2.1568690181753367 
		50 -2.2223131615750473 56 -13.123813205420968 62 -38.055803341427172 88 -38.055803341427172 
		100 0;
	setAttr -s 9 ".kit[0:8]"  9 1 1 1 1 9 1 
		1 9;
	setAttr -s 9 ".kot[0:8]"  9 9 9 1 1 9 1 
		1 9;
	setAttr -s 9 ".kix[1:8]"  1 1 0.99999529123306274 0.99975574016571045 
		0.53880143165588379 0.99973618984222412 0.99967706203460693 0.51589912176132202;
	setAttr -s 9 ".kiy[1:8]"  0 0 -0.0030718571506440639 -0.022099953144788742 
		-0.84243279695510864 -0.02296898327767849 0.025413116440176964 0.85664933919906616;
	setAttr -s 9 ".kox[3:8]"  0.99999529123306274 0.99975574016571045 
		0.53880143165588379 0.99973618984222412 0.99967706203460693 0.51589912176132202;
	setAttr -s 9 ".koy[3:8]"  -0.0030718552879989147 -0.022099947556853294 
		-0.84243279695510864 -0.022969018667936325 0.02541310153901577 0.85664933919906616;
createNode animCurveTA -n "animCurveTA654";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 0.01 0 0.015 0 16 28.853948340524877 
		50 29.708827906094765 56 31.498616005606685 62 35.59190400300028 88 35.59190400300028 
		100 0;
	setAttr -s 9 ".kit[1:8]"  1 1 1 9 9 1 1 
		9;
	setAttr -s 9 ".kot[3:8]"  1 9 9 1 1 9;
	setAttr -s 9 ".kix[1:8]"  1 1 0.99952536821365356 0.99940133094787598 
		0.96859687566757202 0.99999994039535522 0.99989539384841919 0.54138922691345215;
	setAttr -s 9 ".kiy[1:8]"  0 0 0.030806178227066994 0.034597892314195633 
		0.24863651394844055 0.00035231371293775737 -0.014465834945440292 -0.84077209234237671;
	setAttr -s 9 ".kox[3:8]"  0.99952536821365356 0.99940133094787598 
		0.96859687566757202 0.99999994039535522 0.99989533424377441 0.54138922691345215;
	setAttr -s 9 ".koy[3:8]"  0.030806183815002441 0.034597892314195633 
		0.24863651394844055 0.00035231508081778884 -0.014465860091149807 -0.84077209234237671;
createNode animCurveTA -n "animCurveTA655";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 0.01 0 0.015 0 18 -112.47243023240544 
		52 -112.47243023240544 58 -67.570210237516164 64 -11.572994187279695 90 -11.572994187279695 
		100 0;
	setAttr -s 9 ".kit[0:8]"  9 1 1 1 1 9 1 
		1 9;
	setAttr -s 9 ".kot[0:8]"  9 9 9 1 1 9 1 
		1 9;
	setAttr -s 9 ".kix[1:8]"  1 1 0.99340808391571045 0.98966532945632935 
		0.22149816155433655 0.99987447261810303 0.99982792139053345 0.85523569583892822;
	setAttr -s 9 ".kiy[1:8]"  0 0 -0.11463171243667603 0.14339646697044373 
		0.97516077756881714 0.015845602378249168 -0.018552215769886971 0.51823920011520386;
	setAttr -s 9 ".kox[3:8]"  0.99340808391571045 0.98966532945632935 
		0.22149816155433655 0.99987447261810303 0.99982792139053345 0.85523569583892822;
	setAttr -s 9 ".koy[3:8]"  -0.11463171988725662 0.14339643716812134 
		0.97516077756881714 0.015845628455281258 -0.018552215769886971 0.51823920011520386;
createNode animCurveTA -n "animCurveTA656";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 0.01 0 0.015 0 18 -2.4424308231610814 
		52 -2.4424308231610814 58 -7.5569242983181137 64 -19.54288064138245 90 -19.54288064138245 
		100 0;
	setAttr -s 9 ".kit[0:8]"  9 1 1 1 1 9 1 
		1 9;
	setAttr -s 9 ".kot[0:8]"  9 9 9 1 1 9 1 
		1 9;
	setAttr -s 9 ".kix[1:8]"  1 1 0.99999541044235229 0.9999576210975647 
		0.8014795184135437 0.99999642372131348 0.99998503923416138 0.69893044233322144;
	setAttr -s 9 ".kiy[1:8]"  0 0 -0.0030349211301654577 -0.0092094177380204201 
		-0.5980222225189209 -0.0026723137125372887 0.0054732109420001507 0.71518963575363159;
	setAttr -s 9 ".kox[3:8]"  0.99999541044235229 0.9999576210975647 
		0.8014795184135437 0.99999642372131348 0.99998503923416138 0.69893044233322144;
	setAttr -s 9 ".koy[3:8]"  -0.0030349243897944689 -0.009209413081407547 
		-0.5980222225189209 -0.0026722992770373821 0.0054732211865484715 0.71518963575363159;
createNode animCurveTA -n "animCurveTA657";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 0.01 0 0.015 0 18 8.6530005453357788 
		52 8.6530005453357788 58 18.212366746087035 64 44.189450628586677 90 44.189450628586677 
		100 0;
	setAttr -s 9 ".kit[0:8]"  9 1 1 1 1 9 1 
		1 9;
	setAttr -s 9 ".kot[0:8]"  9 9 9 1 1 9 1 
		1 9;
	setAttr -s 9 ".kix[1:8]"  1 1 0.99999207258224487 0.99994802474975586 
		0.54198610782623291 0.99972045421600342 0.99932420253753662 0.39672982692718506;
	setAttr -s 9 ".kiy[1:8]"  0 0 -0.0039751962758600712 0.010193422436714172 
		0.84038746356964111 0.023644682019948959 -0.036757130175828934 -0.91793543100357056;
	setAttr -s 9 ".kox[3:8]"  0.99999207258224487 0.99994802474975586 
		0.54198610782623291 0.99972045421600342 0.99932420253753662 0.39672982692718506;
	setAttr -s 9 ".koy[3:8]"  -0.00397520512342453 0.010193432681262493 
		0.84038746356964111 0.023644696921110153 -0.036757122725248337 -0.91793543100357056;
createNode animCurveTA -n "animCurveTA658";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 10.423754966968488 0.01 10.423754966968488 
		0.015 10.423754966968488 50 10.423754966968488 62 7.7345395887176229 88 7.7345395887176229 
		100 10.423754966968488;
	setAttr -s 7 ".kit[1:6]"  1 1 9 9 9 9;
	setAttr -s 7 ".kot[3:6]"  1 9 9 9;
	setAttr -s 7 ".kix[1:6]"  1 1 0.99974209070205688 0.99931418895721436 
		0.99931418895721436 0.99318605661392212;
	setAttr -s 7 ".kiy[1:6]"  0 0 -0.022710442543029785 -0.037029057741165161 
		0.037029057741165161 0.11653962731361389;
	setAttr -s 7 ".kox[3:6]"  0.99318605661392212 0.99931418895721436 
		0.99931418895721436 0.99318605661392212;
	setAttr -s 7 ".koy[3:6]"  -0.11653962731361389 -0.037029057741165161 
		0.037029057741165161 0.11653962731361389;
createNode animCurveTA -n "animCurveTA659";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.722848255843903 0.01 27.722848255843903 
		0.015 27.7228482558439 50 27.722848255843903 62 39.353337765044174 88 39.353337765044174 
		100 27.722848255843903;
	setAttr -s 7 ".kit[1:6]"  1 1 9 9 9 9;
	setAttr -s 7 ".kot[3:6]"  1 9 9 9;
	setAttr -s 7 ".kix[1:6]"  1 1 0.99520862102508545 0.98740124702453613 
		0.98740124702453613 0.89174467325210571;
	setAttr -s 7 ".kiy[1:6]"  0 0 0.097774170339107513 0.15823651850223541 
		-0.15823651850223541 -0.45253893733024597;
	setAttr -s 7 ".kox[3:6]"  0.89174467325210571 0.98740124702453613 
		0.98740124702453613 0.89174467325210571;
	setAttr -s 7 ".koy[3:6]"  0.45253893733024597 0.15823651850223541 
		-0.15823651850223541 -0.45253893733024597;
createNode animCurveTA -n "animCurveTA660";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 21.576484776388227 0.01 21.576484776388227 
		0.015 21.576484776388224 50 21.576484776388227 62 20.998878908074921 88 20.998878908074921 
		100 21.576484776388227;
	setAttr -s 7 ".kit[1:6]"  1 1 9 9 9 9;
	setAttr -s 7 ".kot[3:6]"  1 9 9 9;
	setAttr -s 7 ".kix[1:6]"  1 1 0.99998807907104492 0.99996834993362427 
		0.99996834993362427 0.99968254566192627;
	setAttr -s 7 ".kiy[1:6]"  0 0 -0.0048790858127176762 -0.0079585295170545578 
		0.0079585295170545578 0.025194814428687096;
	setAttr -s 7 ".kox[3:6]"  0.99968254566192627 0.99996834993362427 
		0.99996834993362427 0.99968254566192627;
	setAttr -s 7 ".koy[3:6]"  -0.025194814428687096 -0.0079585295170545578 
		0.0079585295170545578 0.025194814428687096;
createNode animCurveTA -n "animCurveTA661";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA662";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA663";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.080064458283051 0.01 27.080064458283051 
		0.015 27.080064458283051 50 27.080064458283051 62 84.997397908619021 88 84.997397908619021 
		100 27.080064458283051;
	setAttr -s 7 ".kit[1:6]"  1 1 9 9 9 9;
	setAttr -s 7 ".kot[3:6]"  1 9 9 9;
	setAttr -s 7 ".kix[1:6]"  1 1 0.89826041460037231 0.78161633014678955 
		0.78161633014678955 0.36794710159301758;
	setAttr -s 7 ".kiy[1:6]"  0 0 0.43946352601051331 0.62375950813293457 
		-0.62375950813293457 -0.92984670400619507;
	setAttr -s 7 ".kox[3:6]"  0.36794710159301758 0.78161633014678955 
		0.78161633014678955 0.36794710159301758;
	setAttr -s 7 ".koy[3:6]"  0.92984670400619507 0.62375950813293457 
		-0.62375950813293457 -0.92984670400619507;
createNode animCurveTA -n "animCurveTA664";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA665";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA666";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA667";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA668";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA669";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 13.994403295754109 0.01 13.994403295754109 
		0.015 13.994403295754109 88 13.994403295754109 100 13.994403295754109;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA670";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA671";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA672";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 13.994403295754109 0.01 13.994403295754109 
		0.015 13.994403295754109 88 13.994403295754109 100 13.994403295754109;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA673";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA674";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA675";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.911632519594587 0.01 27.911632519594587 
		0.015 27.911632519594587 50 27.911632519594587 62 68.872546074178004 88 68.872546074178004 
		100 27.911632519594587;
	setAttr -s 7 ".kit[1:6]"  1 1 9 9 9 9;
	setAttr -s 7 ".kot[3:6]"  1 9 9 9;
	setAttr -s 7 ".kix[1:6]"  1 1 0.94502973556518555 0.8708687424659729 
		0.8708687424659729 0.48828214406967163;
	setAttr -s 7 ".kiy[1:6]"  0 0 0.3269844651222229 0.49151566624641418 
		-0.49151566624641418 -0.87268584966659546;
	setAttr -s 7 ".kox[3:6]"  0.48828214406967163 0.8708687424659729 
		0.8708687424659729 0.48828214406967163;
	setAttr -s 7 ".koy[3:6]"  0.87268584966659546 0.49151566624641418 
		-0.49151566624641418 -0.87268584966659546;
createNode animCurveTA -n "animCurveTA676";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA677";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA678";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA679";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.65073001024951671 0.01 -0.65073001024951671 
		0.015 -0.65073001024951671 50 0 62 -0.66805894317438608 88 -0.66805894317438608 
		100 -0.65073001024951671;
	setAttr -s 7 ".kit[1:6]"  1 1 9 1 9 9;
	setAttr -s 7 ".kot[3:6]"  1 1 9 9;
	setAttr -s 7 ".kix[1:6]"  1 1 1 0.99998956918716431 1 0.99999970197677612;
	setAttr -s 7 ".kiy[1:6]"  0 0 -0.00014638071297667921 -0.0045666135847568512 
		0.00023877389321569353 0.00075611728243529797;
	setAttr -s 7 ".kox[3:6]"  0.99957543611526489 0.99998956918716431 
		1 0.99999970197677612;
	setAttr -s 7 ".koy[3:6]"  -0.029137197881937027 -0.0045666112564504147 
		0.00023877389321569353 0.00075611728243529797;
createNode animCurveTA -n "animCurveTA680";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -4.2368721935960929 0.01 -4.2368721935960929 
		0.015 -4.2368721935960938 88 0 100 -4.2368721935960929;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.98333770036697388;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.1817881166934967;
	setAttr -s 5 ".kox[3:4]"  1 0.98333770036697388;
	setAttr -s 5 ".koy[3:4]"  0 -0.1817881166934967;
createNode animCurveTA -n "animCurveTA681";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.6995264082587447 0.01 2.6995264082587447 
		0.015 2.6995264082587447 16 2.1311620370562814 50 2.4994142951933482 62 4.6654369392297834 
		88 4.6654369392297834 100 2.6995264082587447;
	setAttr -s 8 ".kit[0:7]"  9 1 1 1 1 9 1 
		9;
	setAttr -s 8 ".kot[0:7]"  9 9 9 1 1 9 1 
		9;
	setAttr -s 8 ".kix[1:7]"  1 1 0.9997633695602417 0.99981456995010376 
		0.99955493211746216 0.99969220161437988 0.99634116888046265;
	setAttr -s 8 ".kiy[1:7]"  0 0 0.021754279732704163 0.019255299121141434 
		0.029832158237695694 -0.024809474125504494 -0.085465185344219208;
	setAttr -s 8 ".kox[3:7]"  0.9997633695602417 0.99981456995010376 
		0.99955493211746216 0.99969220161437988 0.99634116888046265;
	setAttr -s 8 ".koy[3:7]"  0.021754277870059013 0.019255297258496284 
		0.029832158237695694 -0.024809474125504494 -0.085465185344219208;
createNode animCurveTA -n "animCurveTA682";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 0.01 0 0.015 0 14 26.948460617942192 
		48 34.835161049291642 60 -41.237003248289064 86 -41.237003248289064 100 0;
	setAttr -s 8 ".kit[0:7]"  9 1 1 1 1 1 1 
		9;
	setAttr -s 8 ".kot[0:7]"  9 9 9 1 1 1 1 
		9;
	setAttr -s 8 ".kix[1:7]"  1 1 0.95619958639144897 0.99783271551132202 
		0.97779703140258789 0.99753439426422119 0.54404360055923462;
	setAttr -s 8 ".kiy[1:7]"  0 0 0.29271557927131653 -0.065801560878753662 
		-0.20955421030521393 0.070179015398025513 0.83905696868896484;
	setAttr -s 8 ".kox[3:7]"  0.9561995267868042 0.99783271551132202 
		0.97779703140258789 0.99753439426422119 0.54404360055923462;
	setAttr -s 8 ".koy[3:7]"  0.29271560907363892 -0.065801441669464111 
		-0.20955425500869751 0.070178993046283722 0.83905696868896484;
createNode animCurveTA -n "animCurveTA683";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 0.01 0 0.015 0 14 10.80960725653264 
		48 13.19123114343345 60 4.3085339042094519 86 4.3085339042094519 100 0;
	setAttr -s 8 ".kit[0:7]"  9 1 1 1 1 1 1 
		9;
	setAttr -s 8 ".kot[0:7]"  9 9 9 1 1 1 1 
		9;
	setAttr -s 8 ".kix[1:7]"  1 1 0.99780464172363281 0.99998325109481812 
		0.99988639354705811 0.99988764524459839 0.98726463317871094;
	setAttr -s 8 ".kiy[1:7]"  0 0 0.06622622162103653 0.0057839700020849705 
		-0.015072593465447426 -0.014991767704486847 -0.15908664464950562;
	setAttr -s 8 ".kox[3:7]"  0.99780464172363281 0.99998325109481812 
		0.99988639354705811 0.99988764524459839 0.98726463317871094;
	setAttr -s 8 ".koy[3:7]"  0.066226236522197723 0.0057839672081172466 
		-0.015072592534124851 -0.014991769567131996 -0.15908664464950562;
createNode animCurveTA -n "animCurveTA684";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 0.01 0 0.015 0 14 -21.546896188311798 
		48 -25.240571274691039 60 18.604454091883497 86 18.604454091883497 100 0;
	setAttr -s 8 ".kit[0:7]"  9 1 1 1 1 1 1 
		9;
	setAttr -s 8 ".kot[0:7]"  9 9 9 1 1 1 1 
		9;
	setAttr -s 8 ".kix[1:7]"  1 1 0.98883485794067383 0.99998337030410767 
		0.99904483556747437 0.99857568740844727 0.82084637880325317;
	setAttr -s 8 ".kiy[1:7]"  0 0 -0.14901542663574219 0.005766499787569046 
		0.043697115033864975 -0.053353570401668549 -0.57114905118942261;
	setAttr -s 8 ".kox[3:7]"  0.98883485794067383 0.99998337030410767 
		0.99904483556747437 0.99857568740844727 0.82084637880325317;
	setAttr -s 8 ".koy[3:7]"  -0.14901545643806458 0.0057665100321173668 
		0.043697100132703781 -0.053353574126958847 -0.57114905118942261;
createNode animCurveTA -n "animCurveTA685";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -4.0198472869727979 0.01 -4.0198472869727979 
		0.015 -4.0198472869727979 88 -4.9367554394300077 100 -4.0198472869727979;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.99920064210891724;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0.039975691586732864;
	setAttr -s 5 ".kox[3:4]"  1 0.99920064210891724;
	setAttr -s 5 ".koy[3:4]"  0 0.039975691586732864;
createNode animCurveTA -n "animCurveTA686";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -9.1335573833666519 0.01 -9.1335573833666519 
		0.015 -9.1335573833666519 88 -8.6986303327609935 100 -9.1335573833666519;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.99981999397277832;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.018973859027028084;
	setAttr -s 5 ".kox[3:4]"  1 0.99981999397277832;
	setAttr -s 5 ".koy[3:4]"  0 -0.018973859027028084;
createNode animCurveTA -n "animCurveTA687";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.2752136084709536 0.01 -2.2752136084709536 
		0.015 -2.2752136084709536 88 17.455917002855632 100 -2.2752136084709536;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 0.7578355073928833;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 -0.65244567394256592;
	setAttr -s 5 ".kox[3:4]"  1 0.7578355073928833;
	setAttr -s 5 ".koy[3:4]"  0 -0.65244567394256592;
createNode animCurveTA -n "animCurveTA688";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.8903601258661931 0.01 -1.8903601258661931 
		0.015 -1.8903601258661931 50 0 62 -1.2564524909752091 88 -1.2564524909752091 
		100 -1.8903601258661931;
	setAttr -s 7 ".kit[1:6]"  1 1 9 1 9 9;
	setAttr -s 7 ".kot[3:6]"  1 1 9 9;
	setAttr -s 7 ".kix[1:6]"  1 1 0.99998563528060913 0.99999898672103882 
		0.99996185302734375 0.99961769580841064;
	setAttr -s 7 ".kiy[1:6]"  0 0 0.0053546582348644733 -0.0014268377562984824 
		-0.0087342262268066406 -0.027648866176605225;
	setAttr -s 7 ".kox[3:6]"  0.99850058555603027 0.99999898672103882 
		0.99996185302734375 0.99961769580841064;
	setAttr -s 7 ".koy[3:6]"  -0.054740887135267258 -0.0014268415980041027 
		-0.0087342262268066406 -0.027648866176605225;
createNode animCurveTA -n "animCurveTA689";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.5597289571479034 0.01 2.5597289571479034 
		0.015 2.5597289571479034 50 0 62 0.014135747974148143 88 0.014135747974148143 
		100 2.5597289571479034;
	setAttr -s 7 ".kit[1:6]"  1 1 9 1 9 9;
	setAttr -s 7 ".kot[3:6]"  1 1 9 9;
	setAttr -s 7 ".kix[1:6]"  1 1 0.99976891279220581 1 0.99938541650772095 
		0.99388796091079712;
	setAttr -s 7 ".kiy[1:6]"  0 0 -0.021498128771781921 9.6627896709833294e-005 
		0.035053953528404236 0.11039359122514725;
	setAttr -s 7 ".kox[3:6]"  0.99999982118606567 1 0.99938541650772095 
		0.99388796091079712;
	setAttr -s 7 ".koy[3:6]"  0.00061678834026679397 9.6627860330045223e-005 
		0.035053953528404236 0.11039359122514725;
createNode animCurveTA -n "animCurveTA690";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.016811087403604 0.01 2.016811087403604 
		0.015 2.0168110874036045 16 1.9514592358355098 50 2.2886599125868741 62 2.9799025690958914 
		88 2.9799025690958914 100 2.016811087403604;
	setAttr -s 8 ".kit[1:7]"  1 1 1 9 9 1 9;
	setAttr -s 8 ".kot[3:7]"  1 9 9 1 9;
	setAttr -s 8 ".kix[1:7]"  1 1 0.99979007244110107 0.99993151426315308 
		0.99995464086532593 0.99997270107269287 0.99911820888519287;
	setAttr -s 8 ".kiy[1:7]"  0 0 0.020490268245339394 0.011705539189279079 
		0.009524141438305378 -0.0073889940977096558 -0.041985742747783661;
	setAttr -s 8 ".kox[3:7]"  0.99979007244110107 0.99993151426315308 
		0.99995464086532593 0.99997270107269287 0.99911820888519287;
	setAttr -s 8 ".koy[3:7]"  0.020490264520049095 0.011705539189279079 
		0.009524141438305378 -0.0073889852501451969 -0.041985742747783661;
createNode animCurveTA -n "animCurveTA691";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA692";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA693";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 33.429092416277157 0.01 33.429092416277157 
		0.015 33.429092416277157 50 33.429092416277157 62 81.243579340495145 88 81.243579340495145 
		100 33.429092416277157;
	setAttr -s 7 ".kit[1:6]"  1 1 9 9 9 9;
	setAttr -s 7 ".kot[3:6]"  1 9 9 9;
	setAttr -s 7 ".kix[1:6]"  1 1 0.92722517251968384 0.83505761623382568 
		0.83505761623382568 0.4322306215763092;
	setAttr -s 7 ".kiy[1:6]"  0 0 0.37450423836708069 0.55016249418258667 
		-0.55016249418258667 -0.90176308155059814;
	setAttr -s 7 ".kox[3:6]"  0.4322306215763092 0.83505761623382568 
		0.83505761623382568 0.4322306215763092;
	setAttr -s 7 ".koy[3:6]"  0.90176308155059814 0.55016249418258667 
		-0.55016249418258667 -0.90176308155059814;
createNode animCurveTA -n "animCurveTA694";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 8.2533422302317216 0.01 8.2533422302317216 
		0.015 8.2533422302317216 16 -17.674937457033032 50 -17.833301096478056 56 
		-3.1684042036287252 62 -16.194123631755591 88 -16.194123631755591 100 8.2533422302317216;
	setAttr -s 9 ".kit[1:8]"  1 1 1 9 9 9 9 
		9;
	setAttr -s 9 ".kot[3:8]"  1 9 9 9 9 9;
	setAttr -s 9 ".kix[1:8]"  1 1 1 0.98244422674179077 0.9974520206451416 
		0.97803282737731934 0.94767600297927856 0.68392223119735718;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0.18655641376972198 0.071340367197990417 
		-0.20845091342926025 0.31923371553421021 0.72955489158630371;
	setAttr -s 9 ".kox[3:8]"  1 0.98244422674179077 0.9974520206451416 
		0.97803282737731934 0.94767600297927856 0.68392223119735718;
	setAttr -s 9 ".koy[3:8]"  0 0.18655641376972198 0.071340367197990417 
		-0.20845091342926025 0.31923371553421021 0.72955489158630371;
createNode animCurveTA -n "animCurveTA695";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 23.263402056531085 0.01 23.263402056531085 
		0.015 23.263402056531085 16 17.664712222410962 50 17.481736682944508 56 25.523866905864168 
		62 21.688734331238155 88 21.688734331238155 100 23.263402056531085;
	setAttr -s 9 ".kit[1:8]"  1 1 1 9 9 9 9 
		9;
	setAttr -s 9 ".kot[3:8]"  1 9 9 9 9 9;
	setAttr -s 9 ".kix[1:8]"  1 1 0.99998211860656738 0.99474990367889404 
		0.98356610536575317 0.99803686141967773 0.99976468086242676 0.99764794111251831;
	setAttr -s 9 ".kiy[1:8]"  0 0 -0.0059803090989589691 0.10233598947525024 
		0.18054822087287903 -0.06262902170419693 0.021692108362913132 0.068546250462532043;
	setAttr -s 9 ".kox[3:8]"  0.99998211860656738 0.99474990367889404 
		0.98356610536575317 0.99803686141967773 0.99976468086242676 0.99764794111251831;
	setAttr -s 9 ".koy[3:8]"  -0.0059803086332976818 0.10233598947525024 
		0.18054822087287903 -0.06262902170419693 0.021692108362913132 0.068546250462532043;
createNode animCurveTA -n "animCurveTA696";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 20.166277752815617 0.01 20.166277752815617 
		0.015 20.166277752815617 16 -46.519150406160207 50 -48.949826619877371 56 
		21.836260885383837 62 23.47825627143548 88 23.47825627143548 100 20.166277752815617;
	setAttr -s 9 ".kit[1:8]"  1 1 1 9 9 9 9 
		9;
	setAttr -s 9 ".kot[3:8]"  1 9 9 9 9 9;
	setAttr -s 9 ".kix[1:8]"  1 1 0.99552017450332642 0.74522894620895386 
		0.30168533325195313 0.99963927268981934 0.99896031618118286 0.98971885442733765;
	setAttr -s 9 ".kiy[1:8]"  0 0 -0.094549313187599182 0.66680866479873657 
		0.95340752601623535 0.026857394725084305 -0.045588027685880661 -0.14302659034729004;
	setAttr -s 9 ".kox[3:8]"  0.99552017450332642 0.74522894620895386 
		0.30168533325195313 0.99963927268981934 0.99896031618118286 0.98971885442733765;
	setAttr -s 9 ".koy[3:8]"  -0.09454934298992157 0.66680866479873657 
		0.95340752601623535 0.026857394725084305 -0.045588027685880661 -0.14302659034729004;
createNode animCurveTA -n "animCurveTA697";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA698";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 0.01 0 0.015 0 88 0 100 0;
	setAttr -s 5 ".kit[1:4]"  1 1 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA699";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 17.254116939558369 0.01 17.254116939558369 
		0.015 17.254116939558369 50 17.254116939558369 62 68.118796800669443 88 68.118796800669443 
		100 17.254116939558369;
	setAttr -s 7 ".kit[1:6]"  1 1 9 9 9 9;
	setAttr -s 7 ".kot[3:6]"  1 9 9 9;
	setAttr -s 7 ".kix[1:6]"  1 1 0.91878139972686768 0.81890088319778442 
		0.81890088319778442 0.41079995036125183;
	setAttr -s 7 ".kiy[1:6]"  0 0 0.39476671814918518 0.57393497228622437 
		-0.57393497228622437 -0.91172552108764648;
	setAttr -s 7 ".kox[3:6]"  0.41079995036125183 0.81890088319778442 
		0.81890088319778442 0.41079995036125183;
	setAttr -s 7 ".koy[3:6]"  0.91172552108764648 0.57393497228622437 
		-0.57393497228622437 -0.91172552108764648;
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
createNode lightLinker -n "lightLinker1";
	setAttr ".ihi" 0;
	setAttr -s 21 ".lnk";
select -ne :time1;
	setAttr ".o" 35;
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
connectAttr "lsa_thinkingSource.st" "clipLibrary3.st[0]";
connectAttr "lsa_thinkingSource.du" "clipLibrary3.du[0]";
connectAttr "animCurveTL200.a" "clipLibrary3.cel[0].cev[0].cevr";
connectAttr "animCurveTL201.a" "clipLibrary3.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary3.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL203.a" "clipLibrary3.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary3.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA581.a" "clipLibrary3.cel[0].cev[5].cevr";
connectAttr "lsa_Hoop_Root_IK_FK_RFoot.a" "clipLibrary3.cel[0].cev[6].cevr"
		;
connectAttr "lsa_Hoop_Root_IK_FK_LFoot.a" "clipLibrary3.cel[0].cev[7].cevr"
		;
connectAttr "lsa_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary3.cel[0].cev[8].cevr"
		;
connectAttr "lsa_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary3.cel[0].cev[9].cevr"
		;
connectAttr "animCurveTU27.a" "clipLibrary3.cel[0].cev[10].cevr";
connectAttr "animCurveTU28.a" "clipLibrary3.cel[0].cev[11].cevr";
connectAttr "animCurveTU29.a" "clipLibrary3.cel[0].cev[12].cevr";
connectAttr "animCurveTU30.a" "clipLibrary3.cel[0].cev[13].cevr";
connectAttr "animCurveTA582.a" "clipLibrary3.cel[0].cev[14].cevr";
connectAttr "animCurveTA583.a" "clipLibrary3.cel[0].cev[15].cevr";
connectAttr "animCurveTA584.a" "clipLibrary3.cel[0].cev[16].cevr";
connectAttr "animCurveTL205.a" "clipLibrary3.cel[0].cev[17].cevr";
connectAttr "animCurveTL206.a" "clipLibrary3.cel[0].cev[18].cevr";
connectAttr "animCurveTL207.a" "clipLibrary3.cel[0].cev[19].cevr";
connectAttr "animCurveTL208.a" "clipLibrary3.cel[0].cev[20].cevr";
connectAttr "animCurveTL209.a" "clipLibrary3.cel[0].cev[21].cevr";
connectAttr "animCurveTL210.a" "clipLibrary3.cel[0].cev[22].cevr";
connectAttr "animCurveTA585.a" "clipLibrary3.cel[0].cev[23].cevr";
connectAttr "animCurveTA586.a" "clipLibrary3.cel[0].cev[24].cevr";
connectAttr "animCurveTA587.a" "clipLibrary3.cel[0].cev[25].cevr";
connectAttr "animCurveTL211.a" "clipLibrary3.cel[0].cev[26].cevr";
connectAttr "animCurveTL212.a" "clipLibrary3.cel[0].cev[27].cevr";
connectAttr "animCurveTL213.a" "clipLibrary3.cel[0].cev[28].cevr";
connectAttr "animCurveTA588.a" "clipLibrary3.cel[0].cev[29].cevr";
connectAttr "animCurveTA589.a" "clipLibrary3.cel[0].cev[30].cevr";
connectAttr "animCurveTA590.a" "clipLibrary3.cel[0].cev[31].cevr";
connectAttr "animCurveTA591.a" "clipLibrary3.cel[0].cev[32].cevr";
connectAttr "animCurveTA592.a" "clipLibrary3.cel[0].cev[33].cevr";
connectAttr "animCurveTA593.a" "clipLibrary3.cel[0].cev[34].cevr";
connectAttr "animCurveTA594.a" "clipLibrary3.cel[0].cev[35].cevr";
connectAttr "animCurveTA595.a" "clipLibrary3.cel[0].cev[36].cevr";
connectAttr "animCurveTA596.a" "clipLibrary3.cel[0].cev[37].cevr";
connectAttr "animCurveTA597.a" "clipLibrary3.cel[0].cev[38].cevr";
connectAttr "animCurveTA598.a" "clipLibrary3.cel[0].cev[39].cevr";
connectAttr "animCurveTA599.a" "clipLibrary3.cel[0].cev[40].cevr";
connectAttr "animCurveTA600.a" "clipLibrary3.cel[0].cev[41].cevr";
connectAttr "animCurveTA601.a" "clipLibrary3.cel[0].cev[42].cevr";
connectAttr "animCurveTA602.a" "clipLibrary3.cel[0].cev[43].cevr";
connectAttr "animCurveTL214.a" "clipLibrary3.cel[0].cev[44].cevr";
connectAttr "animCurveTL215.a" "clipLibrary3.cel[0].cev[45].cevr";
connectAttr "animCurveTL216.a" "clipLibrary3.cel[0].cev[46].cevr";
connectAttr "animCurveTL217.a" "clipLibrary3.cel[0].cev[47].cevr";
connectAttr "animCurveTL218.a" "clipLibrary3.cel[0].cev[48].cevr";
connectAttr "animCurveTL219.a" "clipLibrary3.cel[0].cev[49].cevr";
connectAttr "animCurveTL220.a" "clipLibrary3.cel[0].cev[50].cevr";
connectAttr "animCurveTL221.a" "clipLibrary3.cel[0].cev[51].cevr";
connectAttr "animCurveTL222.a" "clipLibrary3.cel[0].cev[52].cevr";
connectAttr "animCurveTA603.a" "clipLibrary3.cel[0].cev[53].cevr";
connectAttr "animCurveTA604.a" "clipLibrary3.cel[0].cev[54].cevr";
connectAttr "animCurveTA605.a" "clipLibrary3.cel[0].cev[55].cevr";
connectAttr "animCurveTA606.a" "clipLibrary3.cel[0].cev[56].cevr";
connectAttr "animCurveTA607.a" "clipLibrary3.cel[0].cev[57].cevr";
connectAttr "animCurveTA608.a" "clipLibrary3.cel[0].cev[58].cevr";
connectAttr "animCurveTA609.a" "clipLibrary3.cel[0].cev[59].cevr";
connectAttr "animCurveTA610.a" "clipLibrary3.cel[0].cev[60].cevr";
connectAttr "animCurveTA611.a" "clipLibrary3.cel[0].cev[61].cevr";
connectAttr "animCurveTA612.a" "clipLibrary3.cel[0].cev[62].cevr";
connectAttr "animCurveTA613.a" "clipLibrary3.cel[0].cev[63].cevr";
connectAttr "animCurveTA614.a" "clipLibrary3.cel[0].cev[64].cevr";
connectAttr "animCurveTA615.a" "clipLibrary3.cel[0].cev[65].cevr";
connectAttr "animCurveTA616.a" "clipLibrary3.cel[0].cev[66].cevr";
connectAttr "animCurveTA617.a" "clipLibrary3.cel[0].cev[67].cevr";
connectAttr "animCurveTA618.a" "clipLibrary3.cel[0].cev[68].cevr";
connectAttr "animCurveTA619.a" "clipLibrary3.cel[0].cev[69].cevr";
connectAttr "animCurveTA620.a" "clipLibrary3.cel[0].cev[70].cevr";
connectAttr "animCurveTA621.a" "clipLibrary3.cel[0].cev[71].cevr";
connectAttr "animCurveTA622.a" "clipLibrary3.cel[0].cev[72].cevr";
connectAttr "animCurveTA623.a" "clipLibrary3.cel[0].cev[73].cevr";
connectAttr "animCurveTA624.a" "clipLibrary3.cel[0].cev[74].cevr";
connectAttr "animCurveTA625.a" "clipLibrary3.cel[0].cev[75].cevr";
connectAttr "animCurveTA626.a" "clipLibrary3.cel[0].cev[76].cevr";
connectAttr "animCurveTA627.a" "clipLibrary3.cel[0].cev[77].cevr";
connectAttr "animCurveTA628.a" "clipLibrary3.cel[0].cev[78].cevr";
connectAttr "animCurveTA629.a" "clipLibrary3.cel[0].cev[79].cevr";
connectAttr "animCurveTA630.a" "clipLibrary3.cel[0].cev[80].cevr";
connectAttr "animCurveTA631.a" "clipLibrary3.cel[0].cev[81].cevr";
connectAttr "animCurveTL223.a" "clipLibrary3.cel[0].cev[82].cevr";
connectAttr "animCurveTL224.a" "clipLibrary3.cel[0].cev[83].cevr";
connectAttr "animCurveTL225.a" "clipLibrary3.cel[0].cev[84].cevr";
connectAttr "animCurveTA632.a" "clipLibrary3.cel[0].cev[85].cevr";
connectAttr "animCurveTA633.a" "clipLibrary3.cel[0].cev[86].cevr";
connectAttr "animCurveTA634.a" "clipLibrary3.cel[0].cev[87].cevr";
connectAttr "animCurveTL226.a" "clipLibrary3.cel[0].cev[88].cevr";
connectAttr "animCurveTL227.a" "clipLibrary3.cel[0].cev[89].cevr";
connectAttr "animCurveTL228.a" "clipLibrary3.cel[0].cev[90].cevr";
connectAttr "animCurveTA635.a" "clipLibrary3.cel[0].cev[91].cevr";
connectAttr "animCurveTA636.a" "clipLibrary3.cel[0].cev[92].cevr";
connectAttr "animCurveTA637.a" "clipLibrary3.cel[0].cev[93].cevr";
connectAttr "animCurveTL229.a" "clipLibrary3.cel[0].cev[94].cevr";
connectAttr "animCurveTL230.a" "clipLibrary3.cel[0].cev[95].cevr";
connectAttr "animCurveTL231.a" "clipLibrary3.cel[0].cev[96].cevr";
connectAttr "animCurveTA638.a" "clipLibrary3.cel[0].cev[97].cevr";
connectAttr "animCurveTA639.a" "clipLibrary3.cel[0].cev[98].cevr";
connectAttr "animCurveTA640.a" "clipLibrary3.cel[0].cev[99].cevr";
connectAttr "animCurveTL232.a" "clipLibrary3.cel[0].cev[100].cevr";
connectAttr "animCurveTL233.a" "clipLibrary3.cel[0].cev[101].cevr";
connectAttr "animCurveTL234.a" "clipLibrary3.cel[0].cev[102].cevr";
connectAttr "animCurveTA641.a" "clipLibrary3.cel[0].cev[103].cevr";
connectAttr "animCurveTA642.a" "clipLibrary3.cel[0].cev[104].cevr";
connectAttr "animCurveTA643.a" "clipLibrary3.cel[0].cev[105].cevr";
connectAttr "animCurveTL235.a" "clipLibrary3.cel[0].cev[106].cevr";
connectAttr "animCurveTL236.a" "clipLibrary3.cel[0].cev[107].cevr";
connectAttr "animCurveTL237.a" "clipLibrary3.cel[0].cev[108].cevr";
connectAttr "animCurveTL238.a" "clipLibrary3.cel[0].cev[109].cevr";
connectAttr "animCurveTL239.a" "clipLibrary3.cel[0].cev[110].cevr";
connectAttr "animCurveTL240.a" "clipLibrary3.cel[0].cev[111].cevr";
connectAttr "animCurveTA644.a" "clipLibrary3.cel[0].cev[112].cevr";
connectAttr "animCurveTA645.a" "clipLibrary3.cel[0].cev[113].cevr";
connectAttr "animCurveTA646.a" "clipLibrary3.cel[0].cev[114].cevr";
connectAttr "animCurveTA647.a" "clipLibrary3.cel[0].cev[115].cevr";
connectAttr "animCurveTA648.a" "clipLibrary3.cel[0].cev[116].cevr";
connectAttr "animCurveTA649.a" "clipLibrary3.cel[0].cev[117].cevr";
connectAttr "animCurveTA650.a" "clipLibrary3.cel[0].cev[118].cevr";
connectAttr "animCurveTA651.a" "clipLibrary3.cel[0].cev[119].cevr";
connectAttr "animCurveTA652.a" "clipLibrary3.cel[0].cev[120].cevr";
connectAttr "animCurveTA653.a" "clipLibrary3.cel[0].cev[121].cevr";
connectAttr "animCurveTA654.a" "clipLibrary3.cel[0].cev[122].cevr";
connectAttr "animCurveTA655.a" "clipLibrary3.cel[0].cev[123].cevr";
connectAttr "animCurveTA656.a" "clipLibrary3.cel[0].cev[124].cevr";
connectAttr "animCurveTA657.a" "clipLibrary3.cel[0].cev[125].cevr";
connectAttr "animCurveTA658.a" "clipLibrary3.cel[0].cev[126].cevr";
connectAttr "animCurveTA659.a" "clipLibrary3.cel[0].cev[127].cevr";
connectAttr "animCurveTA660.a" "clipLibrary3.cel[0].cev[128].cevr";
connectAttr "animCurveTA661.a" "clipLibrary3.cel[0].cev[129].cevr";
connectAttr "animCurveTA662.a" "clipLibrary3.cel[0].cev[130].cevr";
connectAttr "animCurveTA663.a" "clipLibrary3.cel[0].cev[131].cevr";
connectAttr "animCurveTA664.a" "clipLibrary3.cel[0].cev[132].cevr";
connectAttr "animCurveTA665.a" "clipLibrary3.cel[0].cev[133].cevr";
connectAttr "animCurveTA666.a" "clipLibrary3.cel[0].cev[134].cevr";
connectAttr "animCurveTA667.a" "clipLibrary3.cel[0].cev[135].cevr";
connectAttr "animCurveTA668.a" "clipLibrary3.cel[0].cev[136].cevr";
connectAttr "animCurveTA669.a" "clipLibrary3.cel[0].cev[137].cevr";
connectAttr "animCurveTA670.a" "clipLibrary3.cel[0].cev[138].cevr";
connectAttr "animCurveTA671.a" "clipLibrary3.cel[0].cev[139].cevr";
connectAttr "animCurveTA672.a" "clipLibrary3.cel[0].cev[140].cevr";
connectAttr "animCurveTA673.a" "clipLibrary3.cel[0].cev[141].cevr";
connectAttr "animCurveTA674.a" "clipLibrary3.cel[0].cev[142].cevr";
connectAttr "animCurveTA675.a" "clipLibrary3.cel[0].cev[143].cevr";
connectAttr "animCurveTA676.a" "clipLibrary3.cel[0].cev[144].cevr";
connectAttr "animCurveTA677.a" "clipLibrary3.cel[0].cev[145].cevr";
connectAttr "animCurveTA678.a" "clipLibrary3.cel[0].cev[146].cevr";
connectAttr "animCurveTA679.a" "clipLibrary3.cel[0].cev[147].cevr";
connectAttr "animCurveTA680.a" "clipLibrary3.cel[0].cev[148].cevr";
connectAttr "animCurveTA681.a" "clipLibrary3.cel[0].cev[149].cevr";
connectAttr "animCurveTA682.a" "clipLibrary3.cel[0].cev[150].cevr";
connectAttr "animCurveTA683.a" "clipLibrary3.cel[0].cev[151].cevr";
connectAttr "animCurveTA684.a" "clipLibrary3.cel[0].cev[152].cevr";
connectAttr "animCurveTA685.a" "clipLibrary3.cel[0].cev[153].cevr";
connectAttr "animCurveTA686.a" "clipLibrary3.cel[0].cev[154].cevr";
connectAttr "animCurveTA687.a" "clipLibrary3.cel[0].cev[155].cevr";
connectAttr "animCurveTA688.a" "clipLibrary3.cel[0].cev[156].cevr";
connectAttr "animCurveTA689.a" "clipLibrary3.cel[0].cev[157].cevr";
connectAttr "animCurveTA690.a" "clipLibrary3.cel[0].cev[158].cevr";
connectAttr "animCurveTA691.a" "clipLibrary3.cel[0].cev[159].cevr";
connectAttr "animCurveTA692.a" "clipLibrary3.cel[0].cev[160].cevr";
connectAttr "animCurveTA693.a" "clipLibrary3.cel[0].cev[161].cevr";
connectAttr "animCurveTA694.a" "clipLibrary3.cel[0].cev[162].cevr";
connectAttr "animCurveTA695.a" "clipLibrary3.cel[0].cev[163].cevr";
connectAttr "animCurveTA696.a" "clipLibrary3.cel[0].cev[164].cevr";
connectAttr "animCurveTA697.a" "clipLibrary3.cel[0].cev[165].cevr";
connectAttr "animCurveTA698.a" "clipLibrary3.cel[0].cev[166].cevr";
connectAttr "animCurveTA699.a" "clipLibrary3.cel[0].cev[167].cevr";
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
// End of lsa_thinking.ma
