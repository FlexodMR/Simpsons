//Maya ASCII 4.0 scene
//Name: mlh_get_into_car.ma
//Last modified: Tue, Jun 25, 2002 02:24:30 PM
requires maya "4.0";
requires "p3dSimpleShader" "17.1";
requires "p3dmayaexp" "17.7";
requires "p3dDeformer" "17.1.0.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mlh_get_into_carSource";
	setAttr ".ihi" 0;
	setAttr ".du" 26;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL165";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTL -n "animCurveTL166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -0.037367575899315227 1 -0.033884108187742061 
		2 -0.030465646083262674 3 -0.027047183932705356 4 -0.023563716082898419 5 
		-0.019950236880670155 6 -0.016141740672848872 7 -0.012105668338242889 8 -0.0059461880180825969 
		9 0.0013679577132436546 10 0.0086213263768898669 11 0.018303782875708184 
		12 0.032905192112550753 13 0.055923460650679616 14 0.085086012411739118 15 
		0.11422698833615477 16 0.13718052936435213 17 0.14718826959286913 18 0.1492433792970479 
		19 0.15480730368552043 20 0.17534148796691862 21 0.26597262215040546 22 0.42772611592050874 
		23 0.59091194614296683 24 0.73277755498003616 25 0.87607549994939315 26 1.0193734309499074;
createNode animCurveTL -n "animCurveTL168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 1 0.01480809046817907 2 0.028933274177090983 
		3 0.043058458394721437 4 0.05786655038905613 5 0.074040457428080755 6 0.092263086779781039 
		7 0.12118939597347538 8 0.15579700476568084 9 0.18367063452995894 10 0.20941357769122573 
		11 0.23872059143529786 12 0.27728643294799193 13 0.3377628485157026 14 0.41340158355115292 
		15 0.48079739392965232 16 0.51654503552651021 17 0.52540447661930689 18 0.53054855958032032 
		19 0.5361913337816866 20 0.54654684859554192 21 0.57850757484684256 22 0.62904591865561921 
		23 0.67249575029149999 24 0.69258220138397586 25 0.70558013799196728 26 0.73464803202924611;
createNode animCurveTA -n "animCurveTA471";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0;
createNode animCurveTU -n "animCurveTU9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTU -n "animCurveTU10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTU -n "animCurveTU11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTU -n "animCurveTU12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTU -n "animCurveTU13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTU -n "animCurveTU14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTU -n "animCurveTU15";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 1;
createNode animCurveTU -n "animCurveTU16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 1;
createNode animCurveTA -n "animCurveTA472";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA473";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA474";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTL -n "animCurveTL170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTL -n "animCurveTL171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTL -n "animCurveTL172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTL -n "animCurveTL173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.21764441145149604 6 -0.2173751638612961 
		8 -0.17721361257686638 12 0.014387102308690393 16 0.019043121068561687 20 
		0.028822034365029829 23 0.82409193837269812 26 1.867784314272809;
	setAttr -s 8 ".kit[5:7]"  1 9 9;
	setAttr -s 8 ".kot[5:7]"  1 9 9;
	setAttr -s 8 ".kix[5:7]"  0.017231516540050507 0.0010875692823901772 
		0.00095813639927655458;
	setAttr -s 8 ".kiy[5:7]"  0.9998515248298645 0.99999940395355225 
		0.9999995231628418;
	setAttr -s 8 ".kox[5:7]"  0.01723160594701767 0.0010875692823901772 
		0.00095813639927655458;
	setAttr -s 8 ".koy[5:7]"  0.9998515248298645 0.99999940395355225 
		0.9999995231628418;
createNode animCurveTL -n "animCurveTL174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.1521050350093231 6 0.21218793707500705 
		8 0.25861102390683555 12 0.18381928724669791 16 0.21939540220047499 20 0.71918268285638098 
		23 0.89960345004200182 26 0.89009961395345705;
createNode animCurveTL -n "animCurveTL175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.064904406754016042 6 -0.064904406754016042 
		8 0.38761032248211302 12 0.92356787827008124 16 0.91265126660440776 20 1.0360842716704537 
		23 1.6060127615703055 26 2.0769609843387942;
	setAttr -s 8 ".kit[1:7]"  1 9 9 9 9 9 9;
	setAttr -s 8 ".kot[1:7]"  1 9 9 9 9 9 9;
	setAttr -s 8 ".kix[1:7]"  0.41586130857467651 0.0020233201794326305 
		0.0050789033994078636 0.023693595081567764 0.0033652286510914564 0.0019214536296203732 
		0.0021233712323009968;
	setAttr -s 8 ".kiy[1:7]"  0.90942806005477905 0.99999797344207764 
		0.99998712539672852 0.99971926212310791 0.99999433755874634 0.99999815225601196 
		0.99999773502349854;
	setAttr -s 8 ".kox[1:7]"  0.41586148738861084 0.0020233201794326305 
		0.0050789033994078636 0.023693595081567764 0.0033652286510914564 0.0019214536296203732 
		0.0021233712323009968;
	setAttr -s 8 ".koy[1:7]"  0.90942800045013428 0.99999797344207764 
		0.99998712539672852 0.99971926212310791 0.99999433755874634 0.99999815225601196 
		0.99999773502349854;
createNode animCurveTA -n "animCurveTA475";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 15.829425701546842 8 14.331626443463124 
		12 -10.811641225563552 16 22.593134942179454 20 63.16108123139599 23 3.3423255055965062 
		26 -28.33147073208438;
createNode animCurveTA -n "animCurveTA476";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -25.948901905116401 6 -25.948901905116429 
		8 -0.4082319874018141 12 9.0830972443010491 16 5.4726526619269746 20 35.595363845044297 
		23 -42.70484598509212 26 -10.113681911874204;
	setAttr -s 8 ".kit[1:7]"  1 9 9 9 9 9 9;
	setAttr -s 8 ".kot[1:7]"  1 9 9 9 9 9 9;
	setAttr -s 8 ".kix[1:7]"  0.99546581506729126 0.3108954131603241 
		0.93325561285018921 0.4993138313293457 0.2673909068107605 0.24317258596420288 
		0.1731463223695755;
	setAttr -s 8 ".kiy[1:7]"  0.095119811594486237 0.95044416189193726 
		0.35921290516853333 0.86642122268676758 -0.96358811855316162 -0.96998304128646851 
		0.98489612340927124;
	setAttr -s 8 ".kox[1:7]"  0.99546587467193604 0.3108954131603241 
		0.93325561285018921 0.4993138313293457 0.2673909068107605 0.24317258596420288 
		0.1731463223695755;
	setAttr -s 8 ".koy[1:7]"  0.095119617879390717 0.95044416189193726 
		0.35921290516853333 0.86642122268676758 -0.96358811855316162 -0.96998304128646851 
		0.98489612340927124;
createNode animCurveTA -n "animCurveTA477";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 0 8 0.50956548566278548 12 
		2.954679702671601 16 -2.3144369118160042 20 -1.8224410758254592 23 9.2988248217141081 
		26 3.6896128937020114;
	setAttr -s 8 ".kit[1:7]"  1 9 9 9 9 9 9;
	setAttr -s 8 ".kot[1:7]"  1 9 9 9 9 9 9;
	setAttr -s 8 ".kix[1:7]"  0.99998509883880615 0.96832883358001709 
		0.98334437608718872 0.95443600416183472 0.75494009256362915 0.90116506814956665 
		0.71457284688949585;
	setAttr -s 8 ".kiy[1:7]"  0.0054611046798527241 0.24967822432518005 
		-0.18175207078456879 -0.29841569066047668 0.65579378604888916 0.43347612023353577 
		-0.69956105947494507;
	setAttr -s 8 ".kox[1:7]"  0.99998509883880615 0.96832883358001709 
		0.98334437608718872 0.95443600416183472 0.75494009256362915 0.90116506814956665 
		0.71457284688949585;
	setAttr -s 8 ".koy[1:7]"  0.0054611093364655972 0.24967822432518005 
		-0.18175207078456879 -0.29841569066047668 0.65579378604888916 0.43347612023353577 
		-0.69956105947494507;
createNode animCurveTL -n "animCurveTL176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.1393832443869546 6 0.13920637091726681 
		8 0.13920637091726681 12 0.13963627310524832 16 0.78871766039456459 20 0.78871766039456459 
		23 1.4361886848485597 26 2.3060948547374549;
	setAttr -s 8 ".kit[4:7]"  3 3 9 9;
	setAttr -s 8 ".kot[4:7]"  3 3 9 9;
createNode animCurveTL -n "animCurveTL177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.1521046763396838 6 0.15313429998533568 
		8 0.15313429998533568 12 0.23853535213070526 16 0.78001930404657405 20 0.78001930404657405 
		23 1.0116405815805274 26 0.87347624816498559;
	setAttr -s 8 ".kit[4:7]"  3 3 9 9;
	setAttr -s 8 ".kot[4:7]"  3 3 9 9;
createNode animCurveTL -n "animCurveTL178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.00078430246903575811 6 0.00078430246903575811 
		8 0.00078430246903575811 12 0.14969380950094124 16 1.2889513117444105 20 
		1.2889513117444105 23 1.849376552618327 26 2.0375250222419705;
	setAttr -s 8 ".kit[2:7]"  3 9 3 3 9 9;
	setAttr -s 8 ".kot[2:7]"  3 9 3 3 9 9;
createNode animCurveTA -n "animCurveTA478";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 0 8 0 12 44.388556084713827 
		16 -17.613616873884094 20 -17.613616873884094 23 -22.174262600566369 26 -27.647037481197394;
	setAttr -s 8 ".kit[2:7]"  1 9 3 3 9 9;
	setAttr -s 8 ".kot[2:7]"  1 9 3 3 9 9;
	setAttr -s 8 ".kix[2:7]"  0.98760360479354858 0.65526700019836426 
		1 1 0.75235998630523682 0.72312659025192261;
	setAttr -s 8 ".kiy[2:7]"  0.1569683700799942 -0.75539737939834595 
		0 0 -0.6587522029876709 -0.690715491771698;
	setAttr -s 8 ".kox[2:7]"  0.98760360479354858 0.65526700019836426 
		1 1 0.75235998630523682 0.72312659025192261;
	setAttr -s 8 ".koy[2:7]"  0.15696841478347778 -0.75539737939834595 
		0 0 -0.6587522029876709 -0.690715491771698;
createNode animCurveTA -n "animCurveTA479";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 0 8 0 12 8.3467315155771242 
		16 40.787271126349502 20 40.787271126349502 23 22.996288908790323 26 1.6471102606573029;
	setAttr -s 8 ".kit[4:7]"  3 3 9 9;
	setAttr -s 8 ".kot[4:7]"  3 3 9 9;
createNode animCurveTA -n "animCurveTA480";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 0 8 0 12 -7.7471581766269448 
		16 7.3958374073208715 20 7.3958374073208715 23 7.5760086727188929 26 7.792214191643251;
	setAttr -s 8 ".kit[2:7]"  3 9 3 3 9 9;
	setAttr -s 8 ".kot[2:7]"  3 9 3 3 9 9;
createNode animCurveTA -n "animCurveTA481";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA482";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA483";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA484";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA485";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA486";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA487";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA488";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA489";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA490";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA491";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA492";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTL -n "animCurveTL179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTL -n "animCurveTL180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTL -n "animCurveTL181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 6 1 8 1 12 1 16 1 20 1 26 1;
createNode animCurveTL -n "animCurveTL182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTL -n "animCurveTL183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTL -n "animCurveTL184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 6 1 8 1 12 1 16 1 20 1 26 1;
createNode animCurveTL -n "animCurveTL185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.076472881617957691 6 -0.033034131700396582 
		8 -0.01216889566532684 12 0.067340596773508177 16 0.28074045826882532 20 
		0.35883700050921535 23 1.2093034727697225 26 2.0861514784787571;
	setAttr -s 8 ".kit[5:7]"  1 9 9;
	setAttr -s 8 ".kot[5:7]"  1 9 9;
	setAttr -s 8 ".kix[5:7]"  0.0051155253313481808 0.0011578659759834409 
		0.0011404479155316949;
	setAttr -s 8 ".kiy[5:7]"  0.99998688697814941 0.99999934434890747 
		0.99999934434890747;
	setAttr -s 8 ".kox[5:7]"  0.0051155011169612408 0.0011578659759834409 
		0.0011404479155316949;
	setAttr -s 8 ".koy[5:7]"  0.99998688697814941 0.99999934434890747 
		0.99999934434890747;
createNode animCurveTL -n "animCurveTL186";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.96474337111153452 6 0.9224657007074174 
		8 0.91524338550816797 12 0.92948217727043758 16 0.96472071093595801 20 1.4137363308028799 
		23 1.5410418720851644 26 1.296696676473504;
	setAttr -s 8 ".kit[4:7]"  1 9 9 9;
	setAttr -s 8 ".kot[4:7]"  1 9 9 9;
	setAttr -s 8 ".kix[4:7]"  0.019300941377878189 0.0040486352518200874 
		0.017085731029510498 0.0040925373323261738;
	setAttr -s 8 ".kiy[4:7]"  0.9998137354850769 0.999991774559021 
		-0.99985402822494507 -0.99999159574508667;
	setAttr -s 8 ".kox[4:7]"  0.019300926476716995 0.0040486352518200874 
		0.017085731029510498 0.0040925373323261738;
	setAttr -s 8 ".koy[4:7]"  0.9998137354850769 0.999991774559021 
		-0.99985402822494507 -0.99999159574508667;
createNode animCurveTL -n "animCurveTL187";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 0.18881674669046031 8 0.31883914369988964 
		12 0.56746770564493954 16 1.0571113164685229 20 1.1185101373429109 23 1.3762650282477633 
		26 1.5034599015899144;
	setAttr -s 8 ".kit[4:7]"  1 1 9 1;
	setAttr -s 8 ".kot[4:7]"  1 1 9 1;
	setAttr -s 8 ".kix[4:7]"  0.013435677625238895 0.011537405662238598 
		0.0051954127848148346 0.0036338632926344872;
	setAttr -s 8 ".kiy[4:7]"  0.99990975856781006 0.99993342161178589 
		0.99998652935028076 0.99999338388442993;
	setAttr -s 8 ".kox[4:7]"  0.013435684144496918 0.011537428013980389 
		0.0051954127848148346 0.0036338306963443756;
	setAttr -s 8 ".koy[4:7]"  0.99990975856781006 0.99993342161178589 
		0.99998652935028076 0.99999338388442993;
createNode animCurveTA -n "animCurveTA493";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.62843630316474508 6 -4.0647210446877668 
		8 -2.935775021023272 12 -3.0762169050940038 16 -6.5591355069755881 20 -6.5591355069755881 
		23 -10.96697467846017 26 -14.532001338790588;
	setAttr -s 8 ".kit[4:7]"  1 1 9 1;
	setAttr -s 8 ".kot[4:7]"  1 1 9 1;
	setAttr -s 8 ".kix[4:7]"  0.9971427321434021 0.99222195148468018 
		0.82086223363876343 0.98606038093566895;
	setAttr -s 8 ".kiy[4:7]"  -0.075540885329246521 -0.1244812086224556 
		-0.57112622261047363 0.16638776659965515;
	setAttr -s 8 ".kox[4:7]"  0.9971427321434021 0.99222195148468018 
		0.82086223363876343 0.98606038093566895;
	setAttr -s 8 ".koy[4:7]"  -0.075540848076343536 -0.12448132038116455 
		-0.57112622261047363 0.16638772189617157;
createNode animCurveTA -n "animCurveTA494";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -5.8284402688137167 6 6.129632983176454 
		8 13.600868200262255 12 21.932677743389643 16 -3.7197865316961756 20 -3.7197865316961756 
		23 -2.6849411150377636 26 0;
	setAttr -s 8 ".kit[4:7]"  1 9 9 1;
	setAttr -s 8 ".kot[4:7]"  1 9 9 1;
	setAttr -s 8 ".kix[4:7]"  0.90011471509933472 0.997017502784729 
		0.95114231109619141 0.7920384407043457;
	setAttr -s 8 ".kiy[4:7]"  -0.43565288186073303 0.07717539370059967 
		0.30875280499458313 0.61047124862670898;
	setAttr -s 8 ".kox[4:7]"  0.90011477470397949 0.997017502784729 
		0.95114231109619141 0.7920384407043457;
	setAttr -s 8 ".koy[4:7]"  -0.43565282225608826 0.07717539370059967 
		0.30875280499458313 0.61047118902206421;
createNode animCurveTA -n "animCurveTA495";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.295636019309746 6 -1.7490863204697844 
		8 -0.84256151123097234 12 -1.3015925165258879 16 -5.0537228151421463 20 -5.0537228151421463 
		23 -3.5942040383448104 26 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  1;
	setAttr -s 8 ".kix[7]"  0.70366525650024414;
	setAttr -s 8 ".kiy[7]"  0.71053165197372437;
	setAttr -s 8 ".kox[7]"  0.70366513729095459;
	setAttr -s 8 ".koy[7]"  0.71053171157836914;
createNode animCurveTA -n "animCurveTA496";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA497";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA498";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA499";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA500";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA501";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA502";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA503";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA504";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA505";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA506";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA507";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA508";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA509";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA510";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA511";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA512";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA513";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA514";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA515";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA516";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA517";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA518";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA519";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 0 12 0 16 0;
	setAttr -s 3 ".kit[0:2]"  3 9 1;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA520";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 0 12 0 16 0;
	setAttr -s 3 ".kit[0:2]"  3 9 1;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA521";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 0 12 -24.501661700242042 16 0;
	setAttr -s 3 ".kit[0:2]"  3 9 1;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
	setAttr -s 3 ".kix[2]"  0.29765972495079041;
	setAttr -s 3 ".kiy[2]"  0.95467203855514526;
createNode animCurveTL -n "animCurveTL188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 -0.43524234076486068;
createNode animCurveTL -n "animCurveTL189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL190";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0.27773886459742925;
createNode animCurveTA -n "animCurveTA522";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA523";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 28.652637602052774;
createNode animCurveTA -n "animCurveTA524";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 64.676908227303443;
createNode animCurveTL -n "animCurveTL191";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0.5198069948790518;
createNode animCurveTL -n "animCurveTL192";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL193";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0.36439499068905612;
createNode animCurveTA -n "animCurveTA525";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 7.7976222737965299;
createNode animCurveTA -n "animCurveTA526";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 -30.409274105849079;
createNode animCurveTA -n "animCurveTA527";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 -64.859940280210878;
createNode animCurveTL -n "animCurveTL194";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.95617276109671878 6 -0.91837917750249576 
		8 -0.89437419462442036 12 -0.79254435424317993 16 -0.50802692925305393 20 
		-0.09225560444291149 26 2.523942799853089;
	setAttr -s 7 ".kit[5:6]"  1 9;
	setAttr -s 7 ".kot[5:6]"  1 9;
	setAttr -s 7 ".kix[5:6]"  0.0027542985044419765 0.00076446786988526583;
	setAttr -s 7 ".kiy[5:6]"  0.99999618530273438 0.99999970197677612;
	setAttr -s 7 ".kox[5:6]"  0.0027542784810066223 0.00076446786988526583;
	setAttr -s 7 ".koy[5:6]"  0.99999618530273438 0.99999970197677612;
createNode animCurveTL -n "animCurveTL195";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.337567966080949 6 1.2376327523903852 
		8 1.2598377302979162 12 1.3355470437254813 16 1.5019588733907707 20 2.7988454248546248 
		26 1.7845883259061959;
	setAttr -s 7 ".kit[4:6]"  1 9 9;
	setAttr -s 7 ".kot[4:6]"  1 9 9;
	setAttr -s 7 ".kix[4:6]"  0.0042146164923906326 0.011793185956776142 
		0.001971883000805974;
	setAttr -s 7 ".kiy[4:6]"  0.99999111890792847 0.99993044137954712 
		-0.99999803304672241;
	setAttr -s 7 ".kox[4:6]"  0.0042146611958742142 0.011793185956776142 
		0.001971883000805974;
	setAttr -s 7 ".koy[4:6]"  0.99999111890792847 0.99993044137954712 
		-0.99999803304672241;
createNode animCurveTL -n "animCurveTL196";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.15344773832016864 6 0.18811956002607613 
		8 0.40817563733893863 12 0.97154473824728926 16 1.7084459967887549 20 2.5428736101001692 
		26 2.3761223177317867;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[0:6]"  0.0016631035832688212 0.010468113236129284 
		0.0025528839323669672 0.0020508512388914824 0.0016970748547464609 0.004992376547306776 
		0.011993048712611198;
	setAttr -s 7 ".kiy[0:6]"  -0.99999862909317017 0.99994522333145142 
		0.99999672174453735 0.99999791383743286 0.99999856948852539 0.99998754262924194 
		-0.9999280571937561;
	setAttr -s 7 ".kox[0:6]"  0.0016630792524665594 0.010468113236129284 
		0.0025528839323669672 0.0020508512388914824 0.0016970748547464609 0.004992376547306776 
		0.011993048712611198;
	setAttr -s 7 ".koy[0:6]"  -0.99999862909317017 0.99994522333145142 
		0.99999672174453735 0.99999791383743286 0.99999856948852539 0.99998754262924194 
		-0.9999280571937561;
createNode animCurveTA -n "animCurveTA528";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -13.607468531903837 6 -10.826424546146567 
		8 -10.826466618605725 12 -10.345092866137652 16 -29.971309712113101 20 -99.357306583188404 
		26 -33.734888782993899;
createNode animCurveTA -n "animCurveTA529";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 30.431517060217057 6 28.562123998386923 
		8 27.007566258096951 12 16.457368745399648 16 -36.465641622030631 20 47.240579136546721 
		26 14.870586397896899;
createNode animCurveTA -n "animCurveTA530";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 56.915544200805968 6 52.637498007569562 
		8 53.986957445494888 12 48.871451458157736 16 20.091500423830848 20 -41.619546305829736 
		26 30.592169336881899;
createNode animCurveTL -n "animCurveTL197";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.61083301393139333 6 0.71855072776607709 
		8 0.79768864264128636 12 1.2216982766104969 16 1.6615405618010601 20 1.6615405618010601 
		26 4.0284850094086249;
createNode animCurveTL -n "animCurveTL198";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.2715101940363902 6 1.5241480002158414 
		8 1.642659415129353 12 2.1458374442121051 16 2.1873530019833729 20 2.1873530019833729 
		26 1.8767468197018944;
createNode animCurveTL -n "animCurveTL199";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.11675050707915499 6 0.66996185967789745 
		8 0.83013864918616787 12 0.9774450882183453 16 1.4120938891850821 20 1.4120938891850821 
		26 2.4869335592373649;
createNode animCurveTA -n "animCurveTA531";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.14751373646059329 6 55.598837649680043 
		8 30.40552687334386 12 0.53074525458670618 16 -9.3708019553636923 20 -9.3708019553636923 
		26 -26.203413720634725;
createNode animCurveTA -n "animCurveTA532";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -8.513966085499284 6 -30.973734338623142 
		8 -57.071878589129092 12 -30.368244126557347 16 -29.306594429857483 20 -29.306594429857483 
		26 -14.791961579779638;
createNode animCurveTA -n "animCurveTA533";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -58.29195475029789 6 -82.208920420259716 
		8 -59.188089930048456 12 43.401113370080203 16 65.912336754634623 20 65.912336754634623 
		26 -45.895436695401962;
createNode animCurveTL -n "animCurveTL200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0.17523930523423681 8 0.15311553630748009 
		12 0.063331173333856433 16 0.063331173333856433 20 0.063331173333856433 26 
		0.063331173333856433;
createNode animCurveTL -n "animCurveTL201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 -0.00072435787012014696 8 
		-0.37298796460009648 12 -0.69960805773293522 16 -0.69960805773293522 20 -0.69960805773293522 
		26 -0.69960805773293522;
createNode animCurveTL -n "animCurveTL202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1 6 -0.80201435285893019 8 -0.70922931248881582 
		12 -0.66762598980258558 16 -0.66762598980258558 20 -0.66762598980258558 26 
		-0.66762598980258558;
createNode animCurveTL -n "animCurveTL203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.10167917362943303 6 -0.31054502397108613 
		8 -0.31054502397108613 12 -0.31054502397108613 16 -0.31054502397108613 20 
		-0.31054502397108613 26 -0.31054502397108613;
createNode animCurveTL -n "animCurveTL204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.40762644910266188 6 -0.55640530640609931 
		8 -0.55640530640609931 12 -0.55640530640609931 16 -0.55640530640609931 20 
		-0.55640530640609931 26 -0.55640530640609931;
createNode animCurveTL -n "animCurveTL205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.93129112588482243 6 -0.57914122395678103 
		8 -0.57914122395678103 12 -0.57914122395678103 16 -0.57914122395678103 20 
		-0.57914122395678103 26 -0.57914122395678103;
createNode animCurveTA -n "animCurveTA534";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 12.253734489678925 6 12.253734489678925 
		8 12.253734489678925 12 12.253734489678925 16 12.253734489678925 20 12.253734489678925 
		26 12.253734489678925;
createNode animCurveTA -n "animCurveTA535";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -65.746751280844975 6 -65.746751280844961 
		8 -65.746751280844961 12 -65.746751280844961 16 -65.746751280844961 20 -65.746751280844961 
		26 -65.746751280844961;
createNode animCurveTA -n "animCurveTA536";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTA -n "animCurveTA537";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.061808866237340665 6 -0.061808866237337522 
		8 -0.061808866237337522 12 -0.061808866237337522 16 -0.061808866237337522 
		20 -0.061808866237337522 26 -0.061808866237337522;
createNode animCurveTA -n "animCurveTA538";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -59.058178941076754 6 -59.058178941076754 
		8 -59.058178941076754 12 -59.058178941076754 16 -59.058178941076754 20 -59.058178941076754 
		26 -59.058178941076754;
createNode animCurveTA -n "animCurveTA539";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 16.57914742975785 6 16.579147429757843 
		8 16.579147429757843 12 16.579147429757843 16 16.579147429757843 20 16.579147429757843 
		26 16.579147429757843;
createNode animCurveTA -n "animCurveTA540";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.5572674112203657 6 8.5572674112203622 
		8 8.5572674112203622 12 8.5572674112203622 16 8.5572674112203622 20 8.5572674112203622 
		26 8.5572674112203622;
createNode animCurveTA -n "animCurveTA541";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 15.711328223519061 6 15.711328223519057 
		8 15.711328223519057 12 15.711328223519057 16 15.711328223519057 20 15.711328223519057 
		26 15.711328223519057;
createNode animCurveTA -n "animCurveTA542";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTA -n "animCurveTA543";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTA -n "animCurveTA544";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTA -n "animCurveTA545";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTA -n "animCurveTA546";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTA -n "animCurveTA547";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTA -n "animCurveTA548";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 143.71460997127252 6 10.423754966968488 
		8 10.423754966968488 12 10.423754966968488 16 10.423754966968488 20 10.423754966968488 
		26 10.423754966968488;
createNode animCurveTA -n "animCurveTA549";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.804554996454378 6 27.722848255843903 
		8 27.722848255843903 12 27.722848255843903 16 27.722848255843903 20 27.722848255843903 
		26 27.722848255843903;
createNode animCurveTA -n "animCurveTA550";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 29.452980944098744 6 21.576484776388227 
		8 21.576484776388227 12 21.576484776388227 16 21.576484776388227 20 21.576484776388227 
		26 21.576484776388227;
createNode animCurveTA -n "animCurveTA551";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTA -n "animCurveTA552";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTA -n "animCurveTA553";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.080064458283051 6 27.080064458283051 
		8 27.080064458283051 12 27.080064458283051 16 27.080064458283051 20 27.080064458283051 
		26 27.080064458283051;
createNode animCurveTA -n "animCurveTA554";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA555";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA556";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA557";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA558";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA559";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 13.994403295754109;
createNode animCurveTA -n "animCurveTA560";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA561";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA562";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 13.994403295754109;
createNode animCurveTA -n "animCurveTA563";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTA -n "animCurveTA564";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTA -n "animCurveTA565";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.911632519594587 6 27.911632519594587 
		8 27.911632519594587 12 27.911632519594587 16 27.911632519594587 20 27.911632519594587 
		26 27.911632519594587;
createNode animCurveTA -n "animCurveTA566";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTA -n "animCurveTA567";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTA -n "animCurveTA568";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTA -n "animCurveTA569";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.65073001024951671 6 7.8430056866173823 
		8 7.8430056866173823 12 7.8430056866173823 16 18.820843871529618 20 18.820843871529618 
		26 -1.3731006602189262;
createNode animCurveTA -n "animCurveTA570";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -4.2368721935960938 6 -2.4212113907903019 
		8 -2.4212113907903019 12 -2.4212113907903019 16 -8.442588645585376 20 -8.442588645585376 
		26 0.38374158911587303;
createNode animCurveTA -n "animCurveTA571";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.6995264082587447 6 14.868855041301886 
		8 14.868855041301886 12 14.868855041301886 16 16.699953369662587 20 16.699953369662587 
		26 0.96901743689791309;
createNode animCurveTA -n "animCurveTA572";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 7.1097278539792699 8 7.1097278539792699 
		12 7.1097278539792699 16 7.1097278539792699 20 7.1097278539792699 26 -2.2144674450583466;
createNode animCurveTA -n "animCurveTA573";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 -5.36423803921525;
createNode animCurveTA -n "animCurveTA574";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 -10.223981770737328;
createNode animCurveTA -n "animCurveTA575";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 -8.2806877228551272 8 -8.9764510997163622 
		12 -5.2494090226201955 16 -5.2378895149391758 20 3.7903101035041509 26 4.9690701715193724;
	setAttr -s 7 ".kit[0:6]"  1 1 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  1 1 9 9 9 9 9;
	setAttr -s 7 ".kix[0:6]"  0.68566244840621948 0.91116088628768921 
		0.96674752235412598 0.97134435176849365 0.86064779758453369 0.88194912672042847 
		0.99475091695785522;
	setAttr -s 7 ".kiy[0:6]"  -0.72791963815689087 -0.4120507538318634 
		0.25573271512985229 0.23767659068107605 0.50920075178146362 0.47134461998939514 
		0.10232625156641006;
	setAttr -s 7 ".kox[0:6]"  0.68566250801086426 0.91116094589233398 
		0.96674752235412598 0.97134435176849365 0.86064779758453369 0.88194912672042847 
		0.99475091695785522;
	setAttr -s 7 ".koy[0:6]"  -0.72791957855224609 -0.41205063462257385 
		0.25573271512985229 0.23767659068107605 0.50920075178146362 0.47134461998939514 
		0.10232625156641006;
createNode animCurveTA -n "animCurveTA576";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.3805507989552517 6 -8.5086629712104536 
		8 -6.9980377420294353 12 -7.4288331807529291 16 -25.174728286073833 20 -7.1873577666484181 
		26 -2.9904681746768538;
	setAttr -s 7 ".kit[0:6]"  1 1 1 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  1 1 1 9 9 9 9;
	setAttr -s 7 ".kix[0:6]"  0.2466607540845871 0.99601650238037109 
		0.95914065837860107 0.64345020055770874 0.99987512826919556 0.65243446826934814 
		0.93900340795516968;
	setAttr -s 7 ".kiy[0:6]"  -0.96910190582275391 -0.089168936014175415 
		0.28292959928512573 -0.76548796892166138 0.015802554786205292 0.75784516334533691 
		0.34390780329704285;
	setAttr -s 7 ".kox[0:6]"  0.24666078388690948 0.99601650238037109 
		0.95914071798324585 0.64345020055770874 0.99987512826919556 0.65243446826934814 
		0.93900340795516968;
	setAttr -s 7 ".koy[0:6]"  -0.96910190582275391 -0.089168921113014221 
		0.28292950987815857 -0.76548796892166138 0.015802554786205292 0.75784516334533691 
		0.34390780329704285;
createNode animCurveTA -n "animCurveTA577";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.2812188442221184 6 2.7699961656737804 
		8 -3.9211858859008832 12 -9.0042663726048282 16 -5.9821952362403241 20 14.550786262996995 
		26 16.853052292944845;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[0:6]"  0.50709331035614014 0.92656463384628296 
		0.69745242595672607 0.99102425575256348 0.54418915510177612 0.64155560731887817 
		0.98040860891342163;
	setAttr -s 7 ".kiy[0:6]"  0.86189115047454834 -0.37613561749458313 
		-0.71663111448287964 -0.13368198275566101 0.83896255493164063 0.76707649230957031 
		0.19697447121143341;
	setAttr -s 7 ".kox[0:6]"  0.50709331035614014 0.92656463384628296 
		0.69745242595672607 0.99102425575256348 0.54418915510177612 0.64155560731887817 
		0.98040860891342163;
	setAttr -s 7 ".koy[0:6]"  0.86189115047454834 -0.37613561749458313 
		-0.71663111448287964 -0.13368198275566101 0.83896255493164063 0.76707649230957031 
		0.19697447121143341;
createNode animCurveTA -n "animCurveTA578";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.8903601258661935 6 -1.8903601258661931 
		8 -1.8903601258661931 12 -1.8903601258661931 16 -1.8903601258661931 20 -1.8903601258661931 
		26 2.211833892135727;
createNode animCurveTA -n "animCurveTA579";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.5597289571479038 6 2.5597289571479034 
		8 2.5597289571479034 12 2.5597289571479034 16 2.5597289571479034 20 2.5597289571479034 
		26 1.708673036061555;
createNode animCurveTA -n "animCurveTA580";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.0168110874036049 6 2.016811087403604 
		8 2.016811087403604 12 2.016811087403604 16 2.016811087403604 20 2.016811087403604 
		26 2.7082804953288209;
createNode animCurveTA -n "animCurveTA581";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTA -n "animCurveTA582";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTA -n "animCurveTA583";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 33.429092416277157 6 33.429092416277157 
		8 33.429092416277157 12 33.429092416277157 16 33.429092416277157 20 33.429092416277157 
		26 33.429092416277157;
createNode animCurveTA -n "animCurveTA584";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 106.91515461315004 6 8.2533422302317216 
		8 8.2533422302317216 12 8.2533422302317216 16 8.2533422302317216 20 8.2533422302317216 
		26 8.2533422302317216;
createNode animCurveTA -n "animCurveTA585";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 28.612774017129322 6 23.263402056531085 
		8 23.263402056531085 12 23.263402056531085 16 23.263402056531085 20 23.263402056531085 
		26 23.263402056531085;
createNode animCurveTA -n "animCurveTA586";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 17.632837226638053 6 20.166277752815617 
		8 20.166277752815617 12 20.166277752815617 16 20.166277752815617 20 20.166277752815617 
		26 20.166277752815617;
createNode animCurveTA -n "animCurveTA587";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTA -n "animCurveTA588";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 8 0 12 0 16 0 20 0 26 0;
createNode animCurveTA -n "animCurveTA589";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 17.254116939558369 6 17.254116939558369 
		8 17.254116939558369 12 17.254116939558369 16 17.254116939558369 20 17.254116939558369 
		26 17.254116939558369;
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
	setAttr -s 24 ".lnk";
select -ne :time1;
	setAttr ".o" 26;
select -ne :renderPartition;
	setAttr -s 24 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 24 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 4 ".u";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 4 ".tx";
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
	setAttr -s 678 ".gn";
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
connectAttr "mlh_get_into_carSource.st" "clipLibrary1.st[0]";
connectAttr "mlh_get_into_carSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL165.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL166.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL168.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA471.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU9.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU10.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU11.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU12.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU13.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU14.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU15.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU16.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA472.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA473.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA474.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL170.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL171.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL172.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL173.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL174.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL175.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA475.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA476.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA477.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL176.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL177.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL178.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA478.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA479.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA480.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA481.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA482.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA483.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA484.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA485.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA486.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA487.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA488.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA489.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA490.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA491.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA492.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL179.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL180.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL181.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL182.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL183.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL184.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL185.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL186.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL187.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA493.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA494.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA495.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA496.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA497.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA498.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA499.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA500.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA501.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA502.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA503.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA504.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA505.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA506.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA507.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA508.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA509.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA510.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA511.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA512.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA513.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA514.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA515.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA516.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA517.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA518.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA519.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA520.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA521.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL188.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL189.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL190.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA522.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA523.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA524.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL191.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL192.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL193.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA525.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA526.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA527.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL194.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL195.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL196.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA528.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA529.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA530.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL197.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL198.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL199.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA531.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA532.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA533.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL200.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL201.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL202.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL203.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL204.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL205.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA534.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA535.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA536.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA537.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA538.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA539.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA540.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA541.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA542.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA543.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA544.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA545.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA546.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA547.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA548.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA549.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA550.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA551.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA552.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA553.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA554.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA555.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA556.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA557.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA558.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA559.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA560.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA561.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA562.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA563.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA564.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA565.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA566.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA567.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA568.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA569.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA570.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA571.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA572.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA573.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA574.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA575.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA576.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA577.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA578.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA579.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA580.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA581.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA582.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA583.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA584.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA585.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA586.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA587.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA588.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA589.a" "clipLibrary1.cel[0].cev[167].cevr";
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
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[21].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[22].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[23].llnk";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of mlh_get_into_car.ma
