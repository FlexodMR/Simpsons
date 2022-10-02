//Maya ASCII 4.0 scene
//Name: hom_thinking.ma
//Last modified: Wed, Feb 19, 2003 11:53:19 AM
requires maya "4.0";
requires "p3dmayaexp" "2.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "hom_thinkingSource";
	setAttr ".ihi" 0;
	setAttr ".du" 100;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL206";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 1 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.0039999675936996937;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.9999920129776001;
	setAttr -s 3 ".kox[1:2]"  1 0.0039999675936996937;
	setAttr -s 3 ".koy[1:2]"  0 -0.9999920129776001;
createNode animCurveTL -n "animCurveTL207";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  0 -0.051425456377630012 1 -0.049422731180897614 
		2 -0.047279086468584898 3 -0.045027042131098989 4 -0.042699118058847053 5 
		-0.040327834142236223 6 -0.037945710271673629 7 -0.035585266337566417 8 -0.033279022230321739 
		9 -0.031059497840346707 10 -0.028959213058048494 11 -0.027010687773834224 
		12 -0.025246441878111044 13 -0.023698995261286084 14 -0.022400867813766503 
		15 -0.021384579425959425 16 -0.020682649988272007 17 -0.02016493448832413 
		18 -0.019679972819030608 19 -0.019228312228740933 20 -0.018810499965804604 
		21 -0.018427083278571114 22 -0.018078609415389961 23 -0.017765625624610641 
		24 -0.017488679154582649 25 -0.017248317253655481 26 -0.017045087170178632 
		27 -0.016879536152501592 28 -0.016752211448973868 29 -0.016663660307944944 
		30 -0.016614429977764324 31 -0.016605067706781503 32 -0.016636120743345976 
		33 -0.016708136335807235 34 -0.016821661732514776 35 -0.016977244181818098 
		36 -0.0171754309320667 37 -0.017416769231610067 38 -0.017701806328797708 
		39 -0.018031089471979105 40 -0.018405165909503762 41 -0.018824582889721175 
		42 -0.019289887660980835 43 -0.019801627471632242 44 -0.020360349570024885 
		45 -0.020966601204508269 46 -0.021620929623431887 47 -0.022323882075145227 
		48 -0.023076005807997801 49 -0.023877848070339085 50 -0.024729956110518581 
		51 -0.026779245924605403 52 -0.030885756620746618 53 -0.036619716467202683 
		54 -0.043551353732234024 55 -0.051250896684101072 56 -0.059288573591064271 
		57 -0.067234612721384063 58 -0.074659242343320872 59 -0.08113269072513514 
		60 -0.086225186135087312 61 -0.089506956841437821 62 -0.090548231112447086 
		63 -0.090059721553491776 64 -0.089065050317757993 65 -0.087603809995220272 
		66 -0.085715593175853227 67 -0.083439992449631392 68 -0.080816600406529354 
		69 -0.077885009636521674 70 -0.074684812729582925 71 -0.071255602275687682 
		72 -0.067636970864810492 73 -0.063868511086925955 74 -0.059989815532008633 
		75 -0.056040476790033072 76 -0.05206008745097386 77 -0.048088240104805571 
		78 -0.044164527341502773 79 -0.040328541751040017 80 -0.036619875923391887 
		81 -0.033078122448532962 82 -0.029742873916437786 83 -0.026653722917080958 
		84 -0.023850262040437015 85 -0.021372083876480562 86 -0.019258781015186136 
		87 -0.017549946046528316 88 -0.016285171560481686 89 -0.015887790025912667 
		90 -0.016644797082634319 91 -0.018391280077041158 92 -0.02096232635552769 
		93 -0.024193023264488422 94 -0.027918458150317869 95 -0.031973718359410541 
		96 -0.036193891238160934 97 -0.040414064132963563 98 -0.04446932439021295 
		99 -0.048194759356303594 100 -0.051425456377630012;
createNode animCurveTL -n "hom_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  0 0 1 0.00033546245732857081 2 
		0.00068583239703164111 3 0.0010476696300096375 4 0.001417533967162987 5 0.0017919852193921161 
		6 0.0021675831975974508 7 0.0025408877126794184 8 0.0029084585755384451 9 
		0.0032668555970749584 10 0.0036126385881893848 11 0.003942367359782149 12 
		0.0042526017227536798 13 0.0045399014880044049 14 0.0048008264664347478 15 
		0.0050319364689451361 16 0.0052297913064359991 17 0.0054073446713563669 18 
		0.0055795940074302372 19 0.0057461651747652042 20 0.0059066840334688602 21 
		0.0060607764436487977 22 0.0062080682654126118 23 0.006348185358867893 24 
		0.0064807535841222372 25 0.0066053988012832379 26 0.0067217468704584863 27 
		0.0068294236517555777 28 0.0069280550052821027 29 0.007017266791145658 30 
		0.0070966848694538343 31 0.0071659351003142257 32 0.0072246433438344264 33 
		0.0072724354601220289 34 0.0073089373092846271 35 0.0073337747514298128 36 
		0.0073465736466651792 37 0.0073469598550983221 38 0.007334559236836834 39 
		0.0073089976519883065 40 0.0072699009606603335 41 0.0072168950229605103 42 
		0.0071496056989964274 43 0.0070676588488756799 44 0.0069706803327058602 45 
		0.0068582960105945615 46 0.0067301317426493789 47 0.006585813388977904 48 
		0.0064249668096877299 49 0.0062472178648864509 50 0.0060521924146816584 51 
		0.0053779842505095789 52 0.0038749266708955374 53 0.0017110013738881654 54 
		-0.00094580994246390416 55 -0.0039275255801120403 56 -0.0070661638410076093 
		57 -0.010193743027101979 58 -0.01314228144034652 59 -0.015743797382692597 
		60 -0.01783030915609158 61 -0.019233835062494837 62 -0.019786393403853728 
		63 -0.019756009357004597 64 -0.019533016494727055 65 -0.019132895712887368 
		66 -0.018571127907351812 67 -0.017863193973986662 68 -0.01702457480865819 
		69 -0.016070751307232675 70 -0.015017204365576383 71 -0.013879414879555591 
		72 -0.012672863745036581 73 -0.011413031857885616 74 -0.010115400113968975 
		75 -0.0087954494091529323 76 -0.0074686606393037612 77 -0.0061505147002877359 
		78 -0.0048564924879711362 79 -0.0036020748982202194 80 -0.0024027428269012803 
		81 -0.0012739771698805776 82 -0.00023125882302439023 83 0.0007099313178010046 
		84 0.0015341123567293347 85 0.0022258033978943314 86 0.0027695235454297108 
		87 0.003149791903469203 88 0.0033511275761465486 89 0.0033961884486308157 
		90 0.0033286749173912283 91 0.0031646690396996795 92 0.0029202528728280654 
		93 0.002611508474048277 94 0.0022545179006322096 95 0.0018653632098517567 
		96 0.0014601264589788132 97 0.0010548897052852708 98 0.0006657350060430263 
		99 0.00030874441852397081 100 0;
createNode animCurveTA -n "hom_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU45";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 1 95 1 100 0;
	setAttr -s 4 ".kit[0:3]"  1 2 2 1;
	setAttr -s 4 ".kot[0:3]"  9 2 2 5;
	setAttr -s 4 ".kix[0:3]"  0 0.16439899802207947 1 0.16439883410930634;
	setAttr -s 4 ".kiy[0:3]"  0 0.98639392852783203 0 -0.98639392852783203;
createNode animCurveTU -n "animCurveTU46";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 1 95 1 100 0;
	setAttr -s 4 ".kit[0:3]"  1 2 2 1;
	setAttr -s 4 ".kot[0:3]"  9 2 2 5;
	setAttr -s 4 ".kix[0:3]"  0 0.16439899802207947 1 0.16439883410930634;
	setAttr -s 4 ".kiy[0:3]"  0 0.98639392852783203 0 -0.98639392852783203;
createNode animCurveTU -n "animCurveTU47";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 100 1;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU48";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 100 1;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA567";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA568";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA569";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL211";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL212";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL213";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.26454016861507795 100 -0.26454016861507795;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL215";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.13806192026723146 16 0.13964711708164665 
		22 0.18434154906913075 25 0.13964711708164665 29 0.13964711708164665 34 0.15202747474217984 
		37 0.13964711708164665 50 0.13964711708164665 62 0.1378963593953989 88 0.1378963593953989 
		173 0.13806192026723146;
	setAttr -s 11 ".kit[0:10]"  1 3 9 3 3 9 3 
		3 3 1 9;
	setAttr -s 11 ".kot[0:10]"  9 1 9 3 3 9 3 
		3 3 3 9;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 1 1 1 1 0.99998295307159424;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0.0058432258665561676;
	setAttr -s 11 ".kox[1:10]"  1 1 1 1 1 1 1 1 1 0.99998295307159424;
	setAttr -s 11 ".koy[1:10]"  0 0 0 0 0 0 0 0 0 0.0058432258665561676;
createNode animCurveTL -n "animCurveTL216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.064904406754016042 100 -0.064904406754016042;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA570";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 16 0 22 -18.917444470195793 
		25 0 29 0 34 -5.6024739392502898 37 0 50 0 62 0.79226904145708898 88 0.79226904145708898 
		173 0;
	setAttr -s 11 ".kit[0:10]"  1 3 3 3 3 9 9 
		3 3 1 9;
	setAttr -s 11 ".kot[0:10]"  9 1 3 3 3 9 3 
		3 3 3 9;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 0.98360532522201538 
		1 1 1 0.99998807907104492;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0.18033471703529358 
		0 0 0 -0.004880308173596859;
	setAttr -s 11 ".kox[1:10]"  0.99449610710144043 1 1 1 1 1 1 
		1 1 0.99998807907104492;
	setAttr -s 11 ".koy[1:10]"  -0.10477379709482193 0 0 0 0 0 
		0 0 0 -0.004880308173596859;
createNode animCurveTA -n "animCurveTA571";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -25.948901905116401 100 -25.948901905116401;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA572";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 100 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.21594587158542247 100 0.21594587158542247;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.1380615615975922 100 0.1380615615975922;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.00078430246903575811 100 0.00078430246903575811;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA573";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 100 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA574";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 100 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA575";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 100 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA576";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA577";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA578";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA579";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA580";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA581";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL220";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL221";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL222";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 88 1 100 1;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL223";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL224";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL225";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 88 1 100 1;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.076472881617957691 16 -0.030756398785928899 
		50 -0.036774997039785789 62 -0.13465090339168634 88 -0.024217072333354791 
		100 -0.076472881617957691;
	setAttr -s 6 ".kit[0:5]"  1 9 1 9 9 9;
	setAttr -s 6 ".kot[2:5]"  1 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.38710522651672363 0.24752064049243927 
		0.71014845371246338 0.21273867785930634 0.076323233544826508;
	setAttr -s 6 ".kiy[0:5]"  0 0.92203551530838013 -0.96888262033462524 
		0.70405197143554688 0.97710913419723511 -0.99708312749862671;
	setAttr -s 6 ".kox[2:5]"  0.24752096831798553 0.71014845371246338 
		0.21273867785930634 0.076323233544826508;
	setAttr -s 6 ".koy[2:5]"  -0.96888256072998047 0.70405197143554688 
		0.97710913419723511 -0.99708312749862671;
createNode animCurveTL -n "animCurveTL227";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.93105416142265018 16 0.97213662196606154 
		50 0.9720856959261599 62 0.97587185394296794 88 0.97587185394296794 100 0.93105416142265018;
	setAttr -s 6 ".kit[1:5]"  9 1 1 1 9;
	setAttr -s 6 ".kot[0:5]"  9 1 1 1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.37633064389228821 0.99544626474380493 
		0.98842084407806396 0.92911249399185181 0.088897101581096649;
	setAttr -s 6 ".kiy[0:5]"  0 0.92648541927337646 0.095324315130710602 
		0.15173758566379547 -0.3697972297668457 -0.99604082107543945;
	setAttr -s 6 ".kox[1:5]"  0.99998992681503296 0.99544626474380493 
		0.98842066526412964 0.92911237478256226 0.088897101581096649;
	setAttr -s 6 ".koy[1:5]"  -0.004493428859859705 0.09532427042722702 
		0.15173843502998352 -0.36979743838310242 -0.99604082107543945;
createNode animCurveTL -n "animCurveTL228";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 16 0.0077770279475376028 50 
		0.0089999900177527969 62 -0.029423608986724536 88 0.004983337056563405 100 
		0;
	setAttr -s 6 ".kit[3:5]"  9 1 9;
	setAttr -s 6 ".kot[0:5]"  9 1 1 9 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.77958440780639648 0.73992252349853516 
		0.95322209596633911 0.90291005373001099 0.62596619129180908;
	setAttr -s 6 ".kiy[0:5]"  0 0.62629717588424683 -0.67269206047058105 
		-0.30227074027061462 0.42982950806617737 -0.77985018491744995;
	setAttr -s 6 ".kox[1:5]"  0.77958416938781738 0.73992067575454712 
		0.95322209596633911 0.90291047096252441 0.62596619129180908;
	setAttr -s 6 ".koy[1:5]"  0.6262974739074707 -0.67269414663314819 
		-0.30227074027061462 0.42982861399650574 -0.77985018491744995;
createNode animCurveTA -n "animCurveTA582";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.62843630316474508 88 0 100 
		-0.62843630316474508;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99962425231933594;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.027410408481955528;
	setAttr -s 3 ".kox[1:2]"  1 0.99962425231933594;
	setAttr -s 3 ".koy[1:2]"  0 -0.027410408481955528;
createNode animCurveTA -n "animCurveTA583";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -5.8284402688137167 88 0 100 
		-5.8284402688137167;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.9691508412361145;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.24646835029125214;
	setAttr -s 3 ".kox[1:2]"  1 0.9691508412361145;
	setAttr -s 3 ".koy[1:2]"  0 -0.24646835029125214;
createNode animCurveTA -n "animCurveTA584";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.295636019309746 16 1.5273506473629141 
		50 1.2953906634023735 62 -2.2701334503400394 88 0 100 -1.295636019309746;
	setAttr -s 6 ".kit[1:5]"  9 1 3 1 9;
	setAttr -s 6 ".kot[0:5]"  9 1 1 3 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99963212013244629 0.999611496925354 
		1 0.99831700325012207 0.9984058141708374;
	setAttr -s 6 ".kiy[0:5]"  0 0.027123186737298965 -0.027871806174516678 
		0 0.057992585003376007 -0.056442670524120331;
	setAttr -s 6 ".kox[1:5]"  0.99999362230300903 0.999611496925354 
		1 0.99831700325012207 0.9984058141708374;
	setAttr -s 6 ".koy[1:5]"  -0.0035721524618566036 -0.027871806174516678 
		0 0.057992588728666306 -0.056442670524120331;
createNode animCurveTA -n "animCurveTA585";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA586";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA587";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA588";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA589";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA590";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA591";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA592";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA593";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA594";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA595";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA596";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA597";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA598";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA599";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA600";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA601";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA602";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA603";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA604";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA605";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA606";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA607";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA608";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA609";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA610";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL229";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.43524234076486068 16 0.52588537528673795 
		50 0.36732259274780832 62 0.062074125016377303 88 0.062074125016377303 100 
		-0.43524234076486068;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.020762275904417038 0.033041372895240784 
		0.041460566222667694 0.025461776182055473 0.0080429064109921455;
	setAttr -s 6 ".kiy[0:5]"  0 0.99978446960449219 -0.99945396184921265 
		-0.99914014339447021 -0.99967581033706665 -0.99996763467788696;
createNode animCurveTL -n "animCurveTL230";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.82665738350180629 16 0.24261047541359035 
		50 0.0045135107202548853 62 -0.46942381579058678 88 -0.46942381579058678 
		100 -0.82665738350180629;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.020048003643751144 0.021529551595449448 
		0.026716919615864754 0.035435393452644348 0.01119645219296217;
	setAttr -s 6 ".kiy[0:5]"  0 0.99979901313781738 -0.99976819753646851 
		-0.99964302778244019 -0.99937194585800171 -0.99993729591369629;
createNode animCurveTL -n "animCurveTL231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.27773886459742925 16 0.45535171955418435 
		50 0.38285941913512583 62 0.22696860849171466 88 0.22696860849171466 100 
		0.27773886459742925;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.15659217536449432 0.066987834870815277 
		0.080986551940441132 0.2420697808265686 0.078542888164520264;
	setAttr -s 6 ".kiy[0:5]"  0 0.98766332864761353 -0.9977537989616394 
		-0.99671518802642822 0.97025883197784424 0.99691075086593628;
createNode animCurveTA -n "animCurveTA611";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.8121934161072299e-015 16 4.4197345729753632 
		50 4.8201520000774494 62 5.6812282590278436 88 5.6812282590278436 100 1.8121934161072299e-015;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99872851371765137 0.99989694356918335 
		0.99992960691452026 0.99695003032684326 0.97062236070632935;
	setAttr -s 6 ".kiy[0:5]"  0 0.050412330776453018 0.01435757614672184 
		0.011863861232995987 -0.078042410314083099 -0.24060796201229095;
createNode animCurveTA -n "animCurveTA612";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 28.652637602052774 16 22.646910800576748 
		50 22.158853296581952 62 21.109311747439843 88 21.109311747439843 100 28.652637602052774;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99769580364227295 0.99984687566757202 
		0.99989545345306396 0.99464172124862671 0.94987154006958008;
	setAttr -s 6 ".kiy[0:5]"  0 -0.067846059799194336 -0.0174991674721241 
		-0.014460032805800438 0.1033819168806076 0.31264045834541321;
createNode animCurveTA -n "animCurveTA613";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 64.676908227303443 16 76.603079733540241 
		50 76.655991791448727 62 76.769776342877606 88 76.769776342877606 100 64.676908227303443;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99222350120544434 0.99999821186065674 
		0.99999874830245972 0.986400306224823 0.88443106412887573;
	setAttr -s 6 ".kiy[0:5]"  0 0.12446914613246918 0.0018974344711750746 
		0.0015678256750106812 -0.16436053812503815 -0.46667090058326721;
createNode animCurveTL -n "animCurveTL232";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.5198069948790518 88 0.20623790699604494 
		100 0.5198069948790518;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.012755320407450199;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99991863965988159;
	setAttr -s 3 ".kox[1:2]"  1 0.012755320407450199;
	setAttr -s 3 ".koy[1:2]"  0 0.99991863965988159;
createNode animCurveTL -n "animCurveTL233";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.72394202659893114 88 -0.94615818397708606 
		100 -0.72394202659893114;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.017997574061155319;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99983805418014526;
	setAttr -s 3 ".kox[1:2]"  1 0.017997574061155319;
	setAttr -s 3 ".koy[1:2]"  0 0.99983805418014526;
createNode animCurveTL -n "animCurveTL234";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.36439499068905612 88 0.023808763748733922 
		100 0.36439499068905612;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.011743644252419472;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99993103742599487;
	setAttr -s 3 ".kox[1:2]"  1 0.011743644252419472;
	setAttr -s 3 ".koy[1:2]"  0 0.99993103742599487;
createNode animCurveTA -n "animCurveTA614";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.7976222737965317 88 8.1910546202722809 
		100 7.7976222737965317;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99985265731811523;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.017164198681712151;
	setAttr -s 3 ".kox[1:2]"  1 0.99985265731811523;
	setAttr -s 3 ".koy[1:2]"  0 -0.017164198681712151;
createNode animCurveTA -n "animCurveTA615";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -30.409274105849079 88 -16.680769289981995 
		100 -30.409274105849079;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.85786396265029907;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.51387691497802734;
	setAttr -s 3 ".kox[1:2]"  1 0.85786396265029907;
	setAttr -s 3 ".koy[1:2]"  0 -0.51387691497802734;
createNode animCurveTA -n "animCurveTA616";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -64.859940280210893 88 -64.609749241846473 
		100 -64.859940280210893;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99994039535522461;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.010915993712842464;
	setAttr -s 3 ".kox[1:2]"  1 0.99994039535522461;
	setAttr -s 3 ".koy[1:2]"  0 -0.010915993712842464;
createNode animCurveTL -n "animCurveTL235";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.98071836797454492 88 -0.8448236677023373 
		100 -0.98071836797454492;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.029421808198094368;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.99956709146499634;
	setAttr -s 3 ".kox[1:2]"  1 0.029421808198094368;
	setAttr -s 3 ".koy[1:2]"  0 -0.99956709146499634;
createNode animCurveTL -n "animCurveTL236";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.6432964864655397 88 1.5117481219250299 
		100 1.6432964864655397;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.030393015593290329;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99953800439834595;
	setAttr -s 3 ".kox[1:2]"  1 0.030393015593290329;
	setAttr -s 3 ".koy[1:2]"  0 0.99953800439834595;
createNode animCurveTL -n "animCurveTL237";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.097994651149805143 88 -0.097994651149805143 
		100 -0.097994651149805143;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA617";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 5.4739599453216465 88 5.4739599453216474 
		100 5.4739599453216465;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA618";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.5874521608419823 88 8.5874521608419823 
		100 8.5874521608419823;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA619";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 74.754744621954103 88 74.754744621954103 
		100 74.754744621954103;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL238";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.76309120872911718 88 0.61083301393139333 
		100 0.76309120872911718;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.026262098923325539;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99965506792068481;
	setAttr -s 3 ".kox[1:2]"  1 0.026262098923325539;
	setAttr -s 3 ".koy[1:2]"  0 0.99965506792068481;
createNode animCurveTL -n "animCurveTL239";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.6150490657878991 88 1.4644416293758407 
		100 1.6150490657878991;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.026549749076366425;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99964749813079834;
	setAttr -s 3 ".kox[1:2]"  1 0.026549749076366425;
	setAttr -s 3 ".koy[1:2]"  0 0.99964749813079834;
createNode animCurveTL -n "animCurveTL240";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.14314299916678522 88 0.14314299916678522 
		100 0.14314299916678522;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA620";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 16.226511010665412 88 16.226511010665405 
		100 16.226511010665412;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA621";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -8.5139660854992858 88 -8.513966085499284 
		100 -8.5139660854992858;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA622";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -68.213989601412422 88 -68.213989601412422 
		100 -68.213989601412422;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL241";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL242";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL243";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 88 -1 100 -1;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL244";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.10167917362943303 16 -0.73810969304757312 
		50 -0.62746827761432478 62 -0.38953982331974019 88 -0.38953982331974019 100 
		-0.10167917362943303;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.031682472676038742 0.0439467653632164 
		0.053162012249231339 0.04396023228764534 0.013894269242882729;
	setAttr -s 6 ".kiy[0:5]"  0 -0.99949800968170166 0.99903386831283569 
		0.99858587980270386 0.99903327226638794 0.99990344047546387;
createNode animCurveTL -n "animCurveTL245";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.40762644910266188 16 -0.36008784014046685 
		50 -0.36835227560145628 62 -0.3861245027015201 88 -0.3861245027015201 100 
		-0.40762644910266188;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.39064711332321167 0.5074540376663208 
		0.58039498329162598 0.50756967067718506 0.18289189040660858;
	setAttr -s 6 ".kiy[0:5]"  0 0.92054051160812378 -0.8616788387298584 
		-0.81433510780334473 -0.86161071062088013 -0.98313301801681519;
createNode animCurveTL -n "animCurveTL246";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.93129112588482243 16 -0.26526062035167752 
		50 -0.38104789696603014 62 -0.6300422506279183 88 -0.6300422506279183 100 
		-0.93129112588482243;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.030275749042630196 0.041997194290161133 
		0.050805602222681046 0.04201006144285202 0.013276886194944382;
	setAttr -s 6 ".kiy[0:5]"  0 0.99954158067703247 -0.99911773204803467 
		-0.99870854616165161 -0.99911719560623169 -0.9999118447303772;
createNode animCurveTA -n "animCurveTA623";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 12.253734489678925 16 -36.420486952490243 
		50 -36.420486952490243 56 -3.8173978733758016 62 -28.553630756784099 88 -28.553630756784099 
		100 12.253734489678925;
	setAttr -s 7 ".kit[3:6]"  9 1 1 9;
	setAttr -s 7 ".kot[0:6]"  9 1 1 9 1 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.99867475032806396 0.99955666065216064 
		0.94583004713058472 0.99849182367324829 0.99998342990875244 0.48967951536178589;
	setAttr -s 7 ".kiy[0:6]"  0 -0.05146586149930954 0.029774166643619537 
		0.32466217875480652 -0.054900765419006348 0.0057537993416190147 0.87190252542495728;
	setAttr -s 7 ".kox[1:6]"  0.99867475032806396 0.99955666065216064 
		0.94583004713058472 0.99849182367324829 0.99998342990875244 0.48967951536178589;
	setAttr -s 7 ".koy[1:6]"  -0.051465857774019241 0.029774146154522896 
		0.32466217875480652 -0.054900761693716049 0.0057538142427802086 0.87190252542495728;
createNode animCurveTA -n "animCurveTA624";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -65.746751280844975 16 5.0872314969051686 
		50 5.0872314969051686 56 -3.6958508476636154 62 -8.5778742053950232 88 -8.5778742053950232 
		100 -65.746751280844975;
	setAttr -s 7 ".kit[3:6]"  9 1 1 9;
	setAttr -s 7 ".kot[0:6]"  9 1 1 9 1 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.99897748231887817 0.99988299608230591 
		0.85890960693359375 0.99998235702514648 0.99929231405258179 0.37210100889205933;
	setAttr -s 7 ".kiy[0:6]"  0 0.045209940522909164 0.015297739766538143 
		-0.51212722063064575 0.0059378771111369133 -0.037614569067955017 -0.92819225788116455;
	setAttr -s 7 ".kox[1:6]"  0.99897748231887817 0.99988299608230591 
		0.85890960693359375 0.99998235702514648 0.99929231405258179 0.37210100889205933;
	setAttr -s 7 ".koy[1:6]"  0.045209899544715881 0.015297736041247845 
		-0.51212722063064575 0.0059378771111369133 -0.037614550441503525 -0.92819225788116455;
createNode animCurveTA -n "animCurveTA625";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 16 111.7979636897249 50 111.7979636897249 
		56 66.322520554366406 62 104.85997357207584 88 104.85997357207584 100 0;
	setAttr -s 7 ".kit[3:6]"  9 1 1 9;
	setAttr -s 7 ".kot[0:6]"  9 1 1 9 1 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.99745875597000122 0.99975508451461792 
		0.95710498094558716 0.99780178070068359 0.99965518712997437 0.21352073550224304;
	setAttr -s 7 ".kiy[0:6]"  0 0.071246542036533356 -0.02212982065975666 
		-0.28974142670631409 0.066269539296627045 -0.026258032768964767 -0.97693854570388794;
	setAttr -s 7 ".kox[1:6]"  0.99745875597000122 0.99975508451461792 
		0.95710498094558716 0.99780178070068359 0.99965518712997437 0.21352073550224304;
	setAttr -s 7 ".koy[1:6]"  0.071246512234210968 -0.022129863500595093 
		-0.28974142670631409 0.066269546747207642 -0.026258017867803574 -0.97693854570388794;
createNode animCurveTA -n "animCurveTA626";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.061808866237340665 18 -7.0852278196163399 
		52 -7.0852278196163399 58 19.293344874054057 64 -9.8526589037945751 90 -9.8526589037945751 
		100 -0.061808866237340665;
	setAttr -s 7 ".kit[3:6]"  9 1 1 9;
	setAttr -s 7 ".kot[0:6]"  9 1 1 9 1 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.99991726875305176 0.99982815980911255 
		0.99278825521469116 0.9994741678237915 0.99998396635055542 0.88987988233566284;
	setAttr -s 7 ".kiy[0:6]"  0 -0.012863028794527054 0.01853768527507782 
		-0.11988113075494766 -0.032425597310066223 0.0056676957756280899 0.45619493722915649;
	setAttr -s 7 ".kox[1:6]"  0.99991726875305176 0.99982815980911255 
		0.99278825521469116 0.9994741678237915 0.99998396635055542 0.88987988233566284;
	setAttr -s 7 ".koy[1:6]"  -0.012863017618656158 0.018537674099206924 
		-0.11988113075494766 -0.032425548881292343 0.0056676967069506645 0.45619493722915649;
createNode animCurveTA -n "animCurveTA627";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -59.058178941076754 18 -11.904181708398919 
		90 -11.440614551688087 100 -59.058178941076754;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99993664026260376 0.9996715784072876 
		0.37225693464279175;
	setAttr -s 4 ".kiy[0:3]"  0 0.011258058249950409 -0.025626266375184059 
		-0.92812973260879517;
	setAttr -s 4 ".kox[1:3]"  0.99993664026260376 0.9996715784072876 
		0.37225693464279175;
	setAttr -s 4 ".koy[1:3]"  0.011258011683821678 -0.025626286864280701 
		-0.92812973260879517;
createNode animCurveTA -n "animCurveTA628";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 16.57914742975785 18 90.707128041225445 
		52 90.707128041225445 58 51.838002195772724 64 101.5670421328784 90 101.5670421328784 
		100 16.57914742975785;
	setAttr -s 7 ".kit[3:6]"  9 1 1 9;
	setAttr -s 7 ".kot[0:6]"  9 1 1 9 1 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.99856990575790405 0.99860465526580811 
		0.9036787748336792 0.99911761283874512 0.99959844350814819 0.21925337612628937;
	setAttr -s 7 ".kiy[0:6]"  0 0.053461089730262756 -0.052808236330747604 
		0.4282110333442688 0.041999273002147675 -0.028335755690932274 -0.97566795349121094;
	setAttr -s 7 ".kox[1:6]"  0.99856990575790405 0.99860465526580811 
		0.9036787748336792 0.99911767244338989 0.99959844350814819 0.21925337612628937;
	setAttr -s 7 ".koy[1:6]"  0.053461074829101563 -0.052808254957199097 
		0.4282110333442688 0.041999228298664093 -0.02833576500415802 -0.97566795349121094;
createNode animCurveTA -n "animCurveTA629";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.5572674112203639 16 70.031939645487569 
		50 70.031939645487569 56 60.694827325285779 62 66.45156971636473 88 66.45156971636473 
		100 8.5572674112203639;
	setAttr -s 7 ".kit[0:6]"  1 1 9 9 9 1 9;
	setAttr -s 7 ".kot[1:6]"  1 9 9 9 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.99861353635787964 0.99261349439620972 
		0.98801606893539429 0.99559301137924194 0.99936085939407349 0.36807364225387573;
	setAttr -s 7 ".kiy[0:6]"  0 0.052640512585639954 -0.12131971120834351 
		-0.15435095131397247 0.093779362738132477 -0.035747576504945755 -0.92979663610458374;
	setAttr -s 7 ".kox[1:6]"  0.99861353635787964 0.99261349439620972 
		0.98801606893539429 0.99559301137924194 0.99936085939407349 0.36807364225387573;
	setAttr -s 7 ".koy[1:6]"  0.05264054611325264 -0.12131971120834351 
		-0.15435095131397247 0.093779362738132477 -0.035747595131397247 -0.92979663610458374;
createNode animCurveTA -n "animCurveTA630";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 15.711328223519061 18 71.131239685416787 
		52 71.131239685416787 58 62.659118742633574 64 34.860564827601465 90 34.860564827601465 
		100 15.711328223519061;
	setAttr -s 7 ".kit[2:6]"  9 9 1 1 9;
	setAttr -s 7 ".kot[0:6]"  9 1 9 9 1 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.99993091821670532 0.99390673637390137 
		0.53416818380355835 0.99933838844299316 0.99970251321792603 0.70616984367370605;
	setAttr -s 7 ".kiy[0:6]"  0 0.011754391714930534 -0.11022406816482544 
		-0.84537822008132935 -0.036369416862726212 -0.024391418322920799 -0.70804250240325928;
	setAttr -s 7 ".kox[1:6]"  0.99993091821670532 0.99390673637390137 
		0.53416818380355835 0.99933838844299316 0.99970251321792603 0.70616984367370605;
	setAttr -s 7 ".koy[1:6]"  0.011754392646253109 -0.11022406816482544 
		-0.84537822008132935 -0.036369405686855316 -0.024391436949372292 -0.70804250240325928;
createNode animCurveTA -n "animCurveTA631";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 16 -83.370861956835398 50 -83.370861956835398 
		56 -64.64067100094897 62 -9.0085064870862368 88 -9.0085064870862368 100 0;
	setAttr -s 7 ".kit[3:6]"  9 1 9 9;
	setAttr -s 7 ".kot[0:6]"  9 1 1 9 1 9 9;
	setAttr -s 7 ".kix[0:6]"  0 0.99906879663467407 0.99784862995147705 
		0.2945270836353302 0.99984431266784668 0.99238407611846924 0.93068397045135498;
	setAttr -s 7 ".kiy[0:6]"  0 -0.043144878000020981 0.06556035578250885 
		0.95564311742782593 0.017645897343754768 0.12318210303783417 0.36582422256469727;
	setAttr -s 7 ".kox[1:6]"  0.99906879663467407 0.99784862995147705 
		0.2945270836353302 0.99984431266784668 0.99238407611846924 0.93068397045135498;
	setAttr -s 7 ".koy[1:6]"  -0.043144967406988144 0.065560318529605865 
		0.95564311742782593 0.017645858228206635 0.12318210303783417 0.36582422256469727;
createNode animCurveTA -n "animCurveTA632";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 16 -1.880398479908749 50 -1.880398479908749 
		56 -13.123813205420968 62 -38.055803341427172 88 -38.055803341427172 100 
		0;
	setAttr -s 7 ".kit[1:6]"  9 1 9 1 1 9;
	setAttr -s 7 ".kot[0:6]"  9 9 1 9 1 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.99980616569519043 0.99998575448989868 
		0.53517240285873413 0.99957001209259033 0.99999475479125977 0.51589912176132202;
	setAttr -s 7 ".kiy[0:6]"  0 -0.019687671214342117 -0.0053367987275123596 
		-0.84474283456802368 -0.029321936890482903 0.0032422526273876429 0.85664933919906616;
	setAttr -s 7 ".kox[2:6]"  0.99998575448989868 0.53517240285873413 
		0.99957001209259033 0.99999475479125977 0.51589912176132202;
	setAttr -s 7 ".koy[2:6]"  -0.0053368010558187962 -0.84474283456802368 
		-0.029321970418095589 0.0032422516960650682 0.85664933919906616;
createNode animCurveTA -n "animCurveTA633";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 16 13.631374839662424 50 13.631374839662424 
		56 31.498616005606685 62 35.59190400300028 88 35.59190400300028 100 0;
	setAttr -s 7 ".kit[3:6]"  9 1 1 9;
	setAttr -s 7 ".kot[0:6]"  9 1 1 9 1 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.99986165761947632 0.99986553192138672 
		0.72203308343887329 0.99994820356369019 0.99981647729873657 0.54138922691345215;
	setAttr -s 7 ".kiy[0:6]"  0 0.01663270965218544 0.016400264576077461 
		0.69185853004455566 0.010180427692830563 -0.019157154485583305 -0.84077209234237671;
	setAttr -s 7 ".kox[1:6]"  0.99986165761947632 0.99986553192138672 
		0.72203308343887329 0.99994820356369019 0.99981647729873657 0.54138922691345215;
	setAttr -s 7 ".koy[1:6]"  0.016632702201604843 0.016400283202528954 
		0.69185853004455566 0.010180426761507988 -0.019157148897647858 -0.84077209234237671;
createNode animCurveTA -n "animCurveTA634";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 18 -90.159059577282719 52 -90.159059577282719 
		58 -67.570210237516164 64 -11.572994187279695 90 -11.572994187279695 100 
		0;
	setAttr -s 7 ".kit[3:6]"  9 1 1 9;
	setAttr -s 7 ".kot[0:6]"  9 1 1 9 1 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.99928689002990723 0.99293243885040283 
		0.27997046709060669 0.99942392110824585 0.9986305832862854 0.85523569583892822;
	setAttr -s 7 ".kiy[0:6]"  0 -0.037759341299533844 0.1186811774969101 
		0.96000862121582031 0.033937998116016388 0.052315562963485718 0.51823920011520386;
	setAttr -s 7 ".kox[1:6]"  0.99928689002990723 0.99293243885040283 
		0.27997046709060669 0.99942392110824585 0.9986305832862854 0.85523569583892822;
	setAttr -s 7 ".koy[1:6]"  -0.037759356200695038 0.1186811774969101 
		0.96000862121582031 0.03393801674246788 0.052315570414066315 0.51823920011520386;
createNode animCurveTA -n "animCurveTA635";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 18 -2.3150038642762212 52 -2.3150038642762212 
		58 -7.5569242983181137 64 -19.54288064138245 90 -19.54288064138245 100 0;
	setAttr -s 7 ".kit[3:6]"  9 1 1 9;
	setAttr -s 7 ".kot[0:6]"  9 1 1 9 1 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.99992173910140991 1 0.79934424161911011 
		0.99995326995849609 0.99997878074645996 0.69893044233322144;
	setAttr -s 7 ".kiy[0:6]"  0 -0.01251237653195858 -0.00018892867956310511 
		-0.60087335109710693 -0.0096657974645495415 0.0065182335674762726 0.71518963575363159;
	setAttr -s 7 ".kox[1:6]"  0.99992173910140991 1 0.79934424161911011 
		0.99995326995849609 0.99997878074645996 0.69893044233322144;
	setAttr -s 7 ".koy[1:6]"  -0.012512373737990856 -0.00018892958178184927 
		-0.60087335109710693 -0.0096658002585172653 0.0065182335674762726 0.71518963575363159;
createNode animCurveTA -n "animCurveTA636";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 18 6.8249366417476303 52 6.8249366417476303 
		58 18.212366746087035 64 44.189450628586677 90 44.189450628586677 100 0;
	setAttr -s 7 ".kit[3:6]"  9 1 1 9;
	setAttr -s 7 ".kot[0:6]"  9 1 1 9 1 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.99938642978668213 0.99973362684249878 
		0.52285194396972656 0.99862641096115112 0.9992334246635437 0.39672982692718506;
	setAttr -s 7 ".kiy[0:6]"  0 0.035026006400585175 0.023079995065927505 
		0.85242354869842529 0.052395928651094437 -0.039148610085248947 -0.91793543100357056;
	setAttr -s 7 ".kox[1:6]"  0.99938642978668213 0.99973362684249878 
		0.52285194396972656 0.99862641096115112 0.9992334246635437 0.39672982692718506;
	setAttr -s 7 ".koy[1:6]"  0.035025987774133682 0.023080004379153252 
		0.85242354869842529 0.052395917475223541 -0.039148580282926559 -0.91793543100357056;
createNode animCurveTA -n "animCurveTA637";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 10.423754966968488 50 10.423754966968488 
		62 7.7345395887176229 88 7.7345395887176229 100 10.423754966968488;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99974220991134644 0.99931418895721436 
		0.99931418895721436 0.99318605661392212;
	setAttr -s 5 ".kiy[0:4]"  0 -0.022704949602484703 -0.037029057741165161 
		0.037029057741165161 0.11653962731361389;
	setAttr -s 5 ".kox[1:4]"  0.99318605661392212 0.99931418895721436 
		0.99931418895721436 0.99318605661392212;
	setAttr -s 5 ".koy[1:4]"  -0.11653962731361389 -0.037029057741165161 
		0.037029057741165161 0.11653962731361389;
createNode animCurveTA -n "animCurveTA638";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.7228482558439 50 27.722848255843903 
		62 39.353337765044174 88 39.353337765044174 100 27.7228482558439;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99521094560623169 0.98740124702453613 
		0.98740124702453613 0.89174467325210571;
	setAttr -s 5 ".kiy[0:4]"  0 0.097750745713710785 0.15823651850223541 
		-0.15823651850223541 -0.45253893733024597;
	setAttr -s 5 ".kox[1:4]"  0.89174467325210571 0.98740124702453613 
		0.98740124702453613 0.89174467325210571;
	setAttr -s 5 ".koy[1:4]"  0.45253893733024597 0.15823651850223541 
		-0.15823651850223541 -0.45253893733024597;
createNode animCurveTA -n "animCurveTA639";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 21.576484776388224 50 21.576484776388227 
		62 20.998878908074921 88 20.998878908074921 100 21.576484776388224;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99998807907104492 0.99996834993362427 
		0.99996834993362427 0.99968254566192627;
	setAttr -s 5 ".kiy[0:4]"  0 -0.004877905361354351 -0.0079585295170545578 
		0.0079585295170545578 0.025194814428687096;
	setAttr -s 5 ".kox[1:4]"  0.99968254566192627 0.99996834993362427 
		0.99996834993362427 0.99968254566192627;
	setAttr -s 5 ".koy[1:4]"  -0.025194814428687096 -0.0079585295170545578 
		0.0079585295170545578 0.025194814428687096;
createNode animCurveTA -n "animCurveTA640";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA641";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA642";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.080064458283051 50 27.080064458283051 
		62 84.997397908619021 88 84.997397908619021 100 27.080064458283051;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.89830237627029419 0.78161633014678955 
		0.78161633014678955 0.36794710159301758;
	setAttr -s 5 ".kiy[0:4]"  0 0.43937775492668152 0.62375950813293457 
		-0.62375950813293457 -0.92984670400619507;
	setAttr -s 5 ".kox[1:4]"  0.36794710159301758 0.78161633014678955 
		0.78161633014678955 0.36794710159301758;
	setAttr -s 5 ".koy[1:4]"  0.92984670400619507 0.62375950813293457 
		-0.62375950813293457 -0.92984670400619507;
createNode animCurveTA -n "animCurveTA643";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA644";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA645";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA646";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA647";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA648";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.994403295754109 88 13.994403295754109 
		100 13.994403295754109;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA649";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA650";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA651";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.994403295754109 88 13.994403295754109 
		100 13.994403295754109;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA652";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA653";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA654";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.911632519594587 50 27.911632519594587 
		62 68.872546074178004 88 68.872546074178004 100 27.911632519594587;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.94505417346954346 0.8708687424659729 
		0.8708687424659729 0.48828214406967163;
	setAttr -s 5 ".kiy[0:4]"  0 0.32691380381584167 0.49151566624641418 
		-0.49151566624641418 -0.87268584966659546;
	setAttr -s 5 ".kox[1:4]"  0.48828214406967163 0.8708687424659729 
		0.8708687424659729 0.48828214406967163;
	setAttr -s 5 ".koy[1:4]"  0.87268584966659546 0.49151566624641418 
		-0.49151566624641418 -0.87268584966659546;
createNode animCurveTA -n "animCurveTA655";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA656";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA657";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA658";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.6507300102495166 50 0 62 -0.66805894317438608 
		88 -0.66805894317438608 100 -0.6507300102495166;
	setAttr -s 5 ".kit[0:4]"  1 9 1 9 9;
	setAttr -s 5 ".kot[1:4]"  1 1 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 0.99998956918716431 1 0.99999970197677612;
	setAttr -s 5 ".kiy[0:4]"  0 -0.00014634529361501336 -0.0045666135847568512 
		0.00023877389321569353 0.00075611728243529797;
	setAttr -s 5 ".kox[1:4]"  0.99957543611526489 0.99998956918716431 
		1 0.99999970197677612;
	setAttr -s 5 ".koy[1:4]"  -0.029137197881937027 -0.0045666112564504147 
		0.00023877389321569353 0.00075611728243529797;
createNode animCurveTA -n "animCurveTA659";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -4.2368721935960929 88 0 100 
		-4.2368721935960929;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.98333770036697388;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.1817881166934967;
	setAttr -s 3 ".kox[1:2]"  1 0.98333770036697388;
	setAttr -s 3 ".koy[1:2]"  0 -0.1817881166934967;
createNode animCurveTA -n "animCurveTA660";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.7398866450636863 16 2.1311620370562814 
		50 2.4994142951933482 62 4.6654369392297834 88 4.6654369392297834 100 8.7398866450636863;
	setAttr -s 6 ".kit[3:5]"  9 1 9;
	setAttr -s 6 ".kot[0:5]"  9 1 1 9 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.9997633695602417 0.99981456995010376 
		0.99955493211746216 0.99969220161437988 0.98456186056137085;
	setAttr -s 6 ".kiy[0:5]"  0 0.021754279732704163 0.019255299121141434 
		0.029832158237695694 -0.024809474125504494 0.17503683269023895;
	setAttr -s 6 ".kox[1:5]"  0.9997633695602417 0.99981456995010376 
		0.99955493211746216 0.99969220161437988 0.98456186056137085;
	setAttr -s 6 ".koy[1:5]"  0.021754277870059013 0.019255297258496284 
		0.029832158237695694 -0.024809474125504494 0.17503683269023895;
createNode animCurveTA -n "animCurveTA661";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 14 11.696914239820224 48 11.626286126062523 
		60 -41.237003248289064 86 -41.237003248289064 100 0;
	setAttr -s 6 ".kit[5]"  9;
	setAttr -s 6 ".kot[0:5]"  9 1 1 1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99947130680084229 0.99783271551132202 
		0.97779703140258789 0.99753439426422119 0.54404360055923462;
	setAttr -s 6 ".kiy[0:5]"  0 0.03251262754201889 -0.065801560878753662 
		-0.20955421030521393 0.070179015398025513 0.83905696868896484;
	setAttr -s 6 ".kox[1:5]"  0.99947130680084229 0.99783271551132202 
		0.97779703140258789 0.99753439426422119 0.54404360055923462;
	setAttr -s 6 ".koy[1:5]"  0.032512634992599487 -0.065801441669464111 
		-0.20955425500869751 0.070178993046283722 0.83905696868896484;
createNode animCurveTA -n "animCurveTA662";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 14 13.02804381839586 48 13.19123114343345 
		60 4.3085339042094519 86 4.3085339042094519 100 0;
	setAttr -s 6 ".kit[5]"  9;
	setAttr -s 6 ".kot[0:5]"  9 1 1 1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.9998551607131958 0.99998325109481812 
		0.99988639354705811 0.99988764524459839 0.98726463317871094;
	setAttr -s 6 ".kiy[0:5]"  0 0.017019756138324738 0.0057839700020849705 
		-0.015072593465447426 -0.014991767704486847 -0.15908664464950562;
	setAttr -s 6 ".kox[1:5]"  0.9998551607131958 0.99998325109481812 
		0.99988639354705811 0.99988764524459839 0.98726463317871094;
	setAttr -s 6 ".koy[1:5]"  0.017019772902131081 0.0057839672081172466 
		-0.015072592534124851 -0.014991769567131996 -0.15908664464950562;
createNode animCurveTA -n "animCurveTA663";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 14 -25.624552357369627 48 -25.240571274691039 
		60 18.604454091883497 86 18.604454091883497 100 0;
	setAttr -s 6 ".kit[5]"  9;
	setAttr -s 6 ".kot[0:5]"  9 1 1 1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99997049570083618 0.99998337030410767 
		0.99904483556747437 0.99857568740844727 0.82084637880325317;
	setAttr -s 6 ".kiy[0:5]"  0 0.0076841004192829132 0.005766499787569046 
		0.043697115033864975 -0.053353570401668549 -0.57114905118942261;
	setAttr -s 6 ".kox[1:5]"  0.99997049570083618 0.99998337030410767 
		0.99904483556747437 0.99857568740844727 0.82084637880325317;
	setAttr -s 6 ".koy[1:5]"  0.0076840627007186413 0.0057665100321173668 
		0.043697100132703781 -0.053353574126958847 -0.57114905118942261;
createNode animCurveTA -n "animCurveTA664";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 4.8714700432790465 16 -4.9367554394300077 
		88 -4.9367554394300077 100 4.8714700432790465;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99998736381530762 1 0.91934692859649658;
	setAttr -s 4 ".kiy[0:3]"  0 -0.0050237691029906273 0 0.39344793558120728;
	setAttr -s 4 ".kox[1:3]"  0.99998736381530762 1 0.91934692859649658;
	setAttr -s 4 ".koy[1:3]"  -0.0050237663090229034 0 0.39344793558120728;
createNode animCurveTA -n "animCurveTA665";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 11.783606204137087 16 -8.6986303327609935 
		88 -8.6986303327609935 100 11.783606204137087;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99970686435699463 1 0.74562305212020874;
	setAttr -s 4 ".kiy[0:3]"  0 -0.024210840463638306 0 0.66636800765991211;
	setAttr -s 4 ".kox[1:3]"  0.99970686435699463 1 0.74562305212020874;
	setAttr -s 4 ".koy[1:3]"  -0.024210857227444649 0 0.66636800765991211;
createNode animCurveTA -n "animCurveTA666";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 7.5423825101935931 16 17.455917002855632 
		88 17.455917002855632 100 7.5423825101935931;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99995428323745728 1 0.91781449317932129;
	setAttr -s 4 ".kiy[0:3]"  0 0.0095619382336735725 0 -0.39700949192047119;
	setAttr -s 4 ".kox[1:3]"  0.99995428323745728 1 0.91781449317932129;
	setAttr -s 4 ".koy[1:3]"  0.0095619391649961472 0 -0.39700949192047119;
createNode animCurveTA -n "animCurveTA667";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.8903601258661931 50 0 62 -1.2564524909752091 
		88 -1.2564524909752091 100 -1.8903601258661931;
	setAttr -s 5 ".kit[0:4]"  1 9 1 9 9;
	setAttr -s 5 ".kot[1:4]"  1 1 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99998569488525391 0.99999898672103882 
		0.99996185302734375 0.99961769580841064;
	setAttr -s 5 ".kiy[0:4]"  0 0.0053533627651631832 -0.0014268377562984824 
		-0.0087342262268066406 -0.027648866176605225;
	setAttr -s 5 ".kox[1:4]"  0.99850058555603027 0.99999898672103882 
		0.99996185302734375 0.99961769580841064;
	setAttr -s 5 ".koy[1:4]"  -0.054740887135267258 -0.0014268415980041027 
		-0.0087342262268066406 -0.027648866176605225;
createNode animCurveTA -n "animCurveTA668";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.5597289571479034 50 0 62 0.014135747974148143 
		88 0.014135747974148143 100 2.5597289571479034;
	setAttr -s 5 ".kit[0:4]"  1 9 1 9 9;
	setAttr -s 5 ".kot[1:4]"  1 1 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99976897239685059 1 0.99938541650772095 
		0.99388796091079712;
	setAttr -s 5 ".kiy[0:4]"  0 -0.021492930129170418 9.6627896709833294e-005 
		0.035053953528404236 0.11039359122514725;
	setAttr -s 5 ".kox[1:4]"  0.99999982118606567 1 0.99938541650772095 
		0.99388796091079712;
	setAttr -s 5 ".koy[1:4]"  0.00061678834026679397 9.6627860330045223e-005 
		0.035053953528404236 0.11039359122514725;
createNode animCurveTA -n "animCurveTA669";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.0168110874036045 16 1.9514592358355098 
		50 2.2886599125868741 62 2.9799025690958914 88 2.9799025690958914 100 2.0168110874036045;
	setAttr -s 6 ".kit[0:5]"  1 1 9 9 1 9;
	setAttr -s 6 ".kot[1:5]"  1 9 9 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99979007244110107 0.99993151426315308 
		0.99995464086532593 0.99997270107269287 0.99911820888519287;
	setAttr -s 6 ".kiy[0:5]"  0 0.020490268245339394 0.011705539189279079 
		0.009524141438305378 -0.0073889940977096558 -0.041985742747783661;
	setAttr -s 6 ".kox[1:5]"  0.99979007244110107 0.99993151426315308 
		0.99995464086532593 0.99997270107269287 0.99911820888519287;
	setAttr -s 6 ".koy[1:5]"  0.020490264520049095 0.011705539189279079 
		0.009524141438305378 -0.0073889852501451969 -0.041985742747783661;
createNode animCurveTA -n "animCurveTA670";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA671";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA672";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 33.429092416277157 50 33.429092416277157 
		62 81.243579340495145 88 81.243579340495145 100 33.429092416277157;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.92725664377212524 0.83505761623382568 
		0.83505761623382568 0.4322306215763092;
	setAttr -s 5 ".kiy[0:4]"  0 0.37442633509635925 0.55016249418258667 
		-0.55016249418258667 -0.90176308155059814;
	setAttr -s 5 ".kox[1:4]"  0.4322306215763092 0.83505761623382568 
		0.83505761623382568 0.4322306215763092;
	setAttr -s 5 ".koy[1:4]"  0.90176308155059814 0.55016249418258667 
		-0.55016249418258667 -0.90176308155059814;
createNode animCurveTA -n "animCurveTA673";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.2533422302317216 16 -17.674937457033032 
		50 -17.833301096478056 56 -3.1684042036287252 62 -16.194123631755591 88 -16.194123631755591 
		100 8.2533422302317216;
	setAttr -s 7 ".kit[0:6]"  1 1 9 9 9 9 9;
	setAttr -s 7 ".kot[1:6]"  1 9 9 9 9 9;
	setAttr -s 7 ".kix[0:6]"  0 1 0.98244422674179077 0.9974520206451416 
		0.97803282737731934 0.94767600297927856 0.68392223119735718;
	setAttr -s 7 ".kiy[0:6]"  0 0 0.18655641376972198 0.071340367197990417 
		-0.20845091342926025 0.31923371553421021 0.72955489158630371;
	setAttr -s 7 ".kox[1:6]"  1 0.98244422674179077 0.9974520206451416 
		0.97803282737731934 0.94767600297927856 0.68392223119735718;
	setAttr -s 7 ".koy[1:6]"  0 0.18655641376972198 0.071340367197990417 
		-0.20845091342926025 0.31923371553421021 0.72955489158630371;
createNode animCurveTA -n "animCurveTA674";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 23.263402056531085 16 17.664712222410962 
		50 17.481736682944508 56 25.523866905864168 62 21.688734331238155 88 21.688734331238155 
		100 23.263402056531085;
	setAttr -s 7 ".kit[0:6]"  1 1 9 9 9 9 9;
	setAttr -s 7 ".kot[1:6]"  1 9 9 9 9 9;
	setAttr -s 7 ".kix[0:6]"  0 0.99998211860656738 0.99474990367889404 
		0.98356610536575317 0.99803686141967773 0.99976468086242676 0.99764794111251831;
	setAttr -s 7 ".kiy[0:6]"  0 -0.0059803090989589691 0.10233598947525024 
		0.18054822087287903 -0.06262902170419693 0.021692108362913132 0.068546250462532043;
	setAttr -s 7 ".kox[1:6]"  0.99998211860656738 0.99474990367889404 
		0.98356610536575317 0.99803686141967773 0.99976468086242676 0.99764794111251831;
	setAttr -s 7 ".koy[1:6]"  -0.0059803086332976818 0.10233598947525024 
		0.18054822087287903 -0.06262902170419693 0.021692108362913132 0.068546250462532043;
createNode animCurveTA -n "animCurveTA675";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 20.166277752815617 16 -46.519150406160207 
		50 -48.949826619877371 56 21.836260885383837 62 23.47825627143548 88 23.47825627143548 
		100 20.166277752815617;
	setAttr -s 7 ".kit[0:6]"  1 1 9 9 9 9 9;
	setAttr -s 7 ".kot[1:6]"  1 9 9 9 9 9;
	setAttr -s 7 ".kix[0:6]"  0 0.99552017450332642 0.74522894620895386 
		0.30168533325195313 0.99963927268981934 0.99896031618118286 0.98971885442733765;
	setAttr -s 7 ".kiy[0:6]"  0 -0.094549313187599182 0.66680866479873657 
		0.95340752601623535 0.026857394725084305 -0.045588027685880661 -0.14302659034729004;
	setAttr -s 7 ".kox[1:6]"  0.99552017450332642 0.74522894620895386 
		0.30168533325195313 0.99963927268981934 0.99896031618118286 0.98971885442733765;
	setAttr -s 7 ".koy[1:6]"  -0.09454934298992157 0.66680866479873657 
		0.95340752601623535 0.026857394725084305 -0.045588027685880661 -0.14302659034729004;
createNode animCurveTA -n "animCurveTA676";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA677";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA678";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 17.254116939558369 50 17.254116939558369 
		62 68.118796800669443 88 68.118796800669443 100 17.254116939558369;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.91881603002548218 0.81890088319778442 
		0.81890088319778442 0.41079995036125183;
	setAttr -s 5 ".kiy[0:4]"  0 0.39468610286712646 0.57393497228622437 
		-0.57393497228622437 -0.91172552108764648;
	setAttr -s 5 ".kox[1:4]"  0.41079995036125183 0.81890088319778442 
		0.81890088319778442 0.41079995036125183;
	setAttr -s 5 ".koy[1:4]"  0.91172552108764648 0.57393497228622437 
		-0.57393497228622437 -0.91172552108764648;
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
select -ne :characterPartition;
select -ne :hyperGraphLayout;
	setAttr ".cch" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".img" -type "string" "";
	setAttr ".ims" 1;
select -ne :ikSystem;
connectAttr "hom_thinkingSource.st" "clipLibrary2.st[0]";
connectAttr "hom_thinkingSource.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL206.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL207.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary2.cel[0].cev[2].cevr"
		;
connectAttr "hom_Motion_Root_translateY.a" "clipLibrary2.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary2.cel[0].cev[4].cevr"
		;
connectAttr "hom_Motion_Root_rotateY.a" "clipLibrary2.cel[0].cev[5].cevr"
		;
connectAttr "hom_Hoop_Root_IK_FK_RFoot.a" "clipLibrary2.cel[0].cev[6].cevr"
		;
connectAttr "hom_Hoop_Root_IK_FK_LFoot.a" "clipLibrary2.cel[0].cev[7].cevr"
		;
connectAttr "hom_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary2.cel[0].cev[8].cevr"
		;
connectAttr "hom_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary2.cel[0].cev[9].cevr"
		;
connectAttr "animCurveTU45.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU46.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU47.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU48.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA567.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA568.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA569.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL211.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL212.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL213.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL214.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL215.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL216.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA570.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA571.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA572.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL217.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL218.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL219.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA573.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA574.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA575.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA576.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA577.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA578.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA579.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA580.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA581.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTL220.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTL221.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTL222.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTL223.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTL224.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTL225.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL226.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL227.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL228.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTA582.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTA583.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTA584.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTA585.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTA586.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTA587.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA588.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA589.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA590.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA591.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA592.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA593.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA594.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA595.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA596.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA597.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA598.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA599.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA600.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA601.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA602.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA603.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA604.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA605.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA606.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA607.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA608.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA609.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA610.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTL229.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTL230.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTL231.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA611.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA612.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA613.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL232.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL233.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL234.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA614.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA615.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA616.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL235.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL236.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL237.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA617.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA618.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA619.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL238.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL239.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL240.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA620.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA621.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA622.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL241.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL242.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL243.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTL244.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTL245.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTL246.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTA623.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTA624.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTA625.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTA626.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTA627.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTA628.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA629.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA630.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA631.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA632.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA633.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA634.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA635.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA636.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA637.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA638.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA639.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA640.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA641.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA642.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA643.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA644.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA645.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA646.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA647.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA648.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA649.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA650.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA651.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA652.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA653.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA654.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA655.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA656.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA657.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA658.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA659.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA660.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA661.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA662.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA663.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA664.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA665.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA666.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA667.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA668.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA669.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA670.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA671.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA672.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA673.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA674.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA675.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA676.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA677.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA678.a" "clipLibrary2.cel[0].cev[161].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[2].olnk";
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
// End of hom_thinking.ma
