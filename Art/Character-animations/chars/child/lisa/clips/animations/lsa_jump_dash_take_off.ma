//Maya ASCII 4.0 scene
//Name: lsa_jump_dash_take_off.ma
//Last modified: Fri, Oct 11, 2002 03:00:31 PM
requires maya "4.0";
requires "p3dmayaexp" "18.6";
requires "p3dSimpleShader" "18.6";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "lsa_jump_dash_take_offSource";
	setAttr ".ihi" 0;
	setAttr ".du" 6;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL756";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "animCurveTL757";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.013223370898418536 1 0.013223370898418536 
		2 0.013223370898418536 3 0.013223370898418536 4 0.013223370898418536 5 0.013223370898418536 
		6 0.013223370898418536;
createNode animCurveTL -n "animCurveTL759";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 4.9740765977202308 1 4.9769364460867314 
		2 4.9937991776513977 3 5.0370895721119719 4 5.1048342701152443 5 5.1990066363335812 
		6 5.3379515365030885;
createNode animCurveTA -n "animCurveTA2154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0;
createNode animCurveTU -n "animCurveTU153";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "animCurveTU154";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "animCurveTU155";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "animCurveTU156";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_FK_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  6 1;
createNode animCurveTU -n "lsa_Hoop_Root_IK_FK_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  6 1;
createNode animCurveTU -n "animCurveTU159";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 3 1;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU160";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 3 1;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2155";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2156";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2157";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "animCurveTL761";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "animCurveTL762";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "animCurveTL763";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "animCurveTL764";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.19763288944005308 3 -0.22809301424382589 
		6 -0.23107466025851106;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.059698775410652161 0.31797808408737183;
	setAttr -s 3 ".koy[0:2]"  0 -0.99821645021438599 -0.94809806346893311;
createNode animCurveTL -n "animCurveTL765";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.36956228769602462 3 0.13800000000000001 
		6 0.45964862677960389;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.022195454686880112 0.0031089675612747669;
	setAttr -s 3 ".koy[0:2]"  0 0.99975365400314331 0.99999517202377319;
createNode animCurveTL -n "animCurveTL766";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 11.083276311928465 3 11.391786216253763 
		6 12.452615643348995;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.0014605567557737231 0.00094265822554007173;
	setAttr -s 3 ".koy[0:2]"  0 0.99999892711639404 0.99999958276748657;
createNode animCurveTA -n "animCurveTA2158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 68.750149689121002 3 66.753537441737635 
		6 35.302889577616533;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.32410979270935059 0.17922693490982056;
	setAttr -s 3 ".koy[0:2]"  0 -0.94601947069168091 -0.98380774259567261;
createNode animCurveTA -n "animCurveTA2159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 -3.5256945963156894 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 0.85167157649993896;
	setAttr -s 3 ".koy[0:2]"  0 0 0.52407592535018921;
createNode animCurveTA -n "animCurveTA2160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 4.8238895241523405 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 0.76497817039489746;
	setAttr -s 3 ".koy[0:2]"  0 0 -0.64405620098114014;
createNode animCurveTL -n "animCurveTL767";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.19697756422115981 3 0.21272156446259907 
		4 0.23561928002289681 5 0.26511851857202784 6 0.27978032926064766;
	setAttr -s 5 ".kit[0:4]"  3 3 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 3 9 9 9;
createNode animCurveTL -n "animCurveTL768";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.13800000000000001 3 0.1380615615975922 
		4 0.24745278999338202 5 0.32963362328939477 6 0.26740068424655106;
	setAttr -s 5 ".kit[0:4]"  3 3 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 3 9 9 9;
createNode animCurveTL -n "animCurveTL769";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 11.336616651963634 3 11.318238259942266 
		4 11.430158053499616 5 11.524355622836028 6 11.576901820832189;
	setAttr -s 5 ".kit[0:4]"  3 3 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 3 9 9 9;
createNode animCurveTA -n "animCurveTA2161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 5 55.323470847353462 6 
		86.108267527194343;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 0.17009316384792328 0.066392421722412109 
		0.061920005828142166;
	setAttr -s 4 ".koy[0:3]"  0 0.98542797565460205 0.99779361486434937 
		0.99808108806610107;
createNode animCurveTA -n "animCurveTA2162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2164";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2165";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2166";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2167";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2168";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2169";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL770";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 1 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL771";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 1 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL772";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 3 1 6 1;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 1 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL773";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 1 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL774";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 1 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL775";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 3 1 6 1;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 1 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL776";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.03051835782609956 3 0.03051835782609956 
		6 0.03051835782609956;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL777";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.76074829734573723 3 0.59726134361187688 
		6 0.92714697341349084;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.012018457986414433 0.0030313397292047739;
	setAttr -s 3 ".koy[0:2]"  0 0.99992775917053223 0.99999541044235229;
createNode animCurveTL -n "animCurveTL778";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 11.479724090761808 3 11.625152402116516 
		6 12.319514918004916;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.0023815387394279242 0.0014401684748008847;
	setAttr -s 3 ".koy[0:2]"  0 0.99999713897705078 0.99999898672103882;
createNode animCurveTA -n "animCurveTA2176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 40.92583813237421 3 31.660816129923894 
		6 15.777772212346544;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.41464897990226746 0.33933189511299133;
	setAttr -s 3 ".koy[0:2]"  0 -0.90998142957687378 -0.94066673517227173;
createNode animCurveTA -n "animCurveTA2177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2179";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2180";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2181";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.0984482521620249;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2182";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 18.588300303494186;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2183";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2184";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2185";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -22.686733334985114;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2186";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2187";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2188";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0579251312417479e-005;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2189";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2190";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2191";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.0984482535121209;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2192";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 18.588300300216805;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2193";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2194";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2195";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -22.686733333057838;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2196";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2197";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2198";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0579251312417479e-005;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2199";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2200";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2201";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2202";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2203";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2204";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "lsa_Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  6 -0.43524234076486068;
createNode animCurveTL -n "lsa_Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  6 -0.82665738350180629;
createNode animCurveTL -n "lsa_Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  6 0.27773886459742925;
createNode animCurveTA -n "lsa_Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  6 0;
createNode animCurveTA -n "lsa_Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  6 0;
createNode animCurveTA -n "lsa_Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  6 0;
createNode animCurveTL -n "lsa_Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  6 0.5198069948790518;
createNode animCurveTL -n "lsa_Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  6 -0.72394202659893114;
createNode animCurveTL -n "lsa_Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  6 0.36439499068905612;
createNode animCurveTA -n "lsa_Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  6 0;
createNode animCurveTA -n "lsa_Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  6 0;
createNode animCurveTA -n "lsa_Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  6 0;
createNode animCurveTL -n "animCurveTL779";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.82210850521844403 3 -0.82210850521844403 
		6 -0.97184961979027418;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.0133551936596632 0.0066780438646674156;
	setAttr -s 3 ".koy[0:2]"  0 -0.99991083145141602 -0.999977707862854;
createNode animCurveTL -n "animCurveTL780";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.1590792946011756 3 0.97841196865210966 
		6 1.6080624664332752;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.0044544655829668045 0.0015881806612014771;
	setAttr -s 3 ".koy[0:2]"  0 0.99999010562896729 0.99999874830245972;
createNode animCurveTL -n "animCurveTL781";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 14.916013395362574 3 16.892726491040602 
		6 17.879027689646549;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.00067498814314603806 0.0010138885118067265;
	setAttr -s 3 ".koy[0:2]"  0 0.9999997615814209 0.99999946355819702;
createNode animCurveTA -n "animCurveTA2211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.3566619347615223 3 7.3566619347615223 
		6 -9.115993314220681;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.57106173038482666 0.32851850986480713;
	setAttr -s 3 ".koy[0:2]"  0 -0.8209071159362793 -0.94449752569198608;
createNode animCurveTA -n "animCurveTA2212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 18.103084532249603 3 18.103084532249603 
		6 26.324117884677346;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.81252700090408325 0.57177698612213135;
	setAttr -s 3 ".koy[0:2]"  0 0.5829235315322876 0.82040905952453613;
createNode animCurveTA -n "animCurveTA2213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.384539512019494 3 27.384539512019494 
		6 34.555108709452107;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.84771233797073364 0.62423807382583618;
	setAttr -s 3 ".koy[0:2]"  0 0.53045618534088135 0.78123420476913452;
createNode animCurveTL -n "animCurveTL782";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.82023325218162457 3 0.82023325218162457 
		6 0.92343519692143572;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.019375842064619064 0.0096892854198813438;
	setAttr -s 3 ".koy[0:2]"  0 0.99981224536895752 0.99995303153991699;
createNode animCurveTL -n "animCurveTL783";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.99498110733416445 3 0.81431378138509825 
		6 1.6654512116023781;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.0029829684644937515 0.0011748975375667214;
	setAttr -s 3 ".koy[0:2]"  0 0.99999552965164185 0.9999992847442627;
createNode animCurveTL -n "animCurveTL784";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 14.921596563371637 3 16.898309659049666 
		6 17.877242090081179;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.00067667098483070731 0.0010215204674750566;
	setAttr -s 3 ".koy[0:2]"  0 0.9999997615814209 0.99999946355819702;
createNode animCurveTA -n "animCurveTA2214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.9282143981625879 3 8.9282143981625879 
		6 -9.0703748831085189;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.5370592474937439 0.30333605408668518;
	setAttr -s 3 ".koy[0:2]"  0 -0.84354454278945923 -0.95288366079330444;
createNode animCurveTA -n "animCurveTA2215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 23.419278912510141 3 23.419278912510141 
		6 -40.501771671985914;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.17645739018917084 0.089277297258377075;
	setAttr -s 3 ".koy[0:2]"  0 -0.98430830240249634 -0.99600678682327271;
createNode animCurveTA -n "animCurveTA2216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -3.9073136135656541 3 -3.9073136135656541 
		6 -16.843539022083927;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.66307920217514038 0.40496623516082764;
	setAttr -s 3 ".koy[0:2]"  0 -0.74854922294616699 -0.91433161497116089;
createNode animCurveTL -n "animCurveTL785";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 -0.075007643271199492 6 -0.075007643271199492;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.026654474437236786 1;
	setAttr -s 3 ".koy[0:2]"  0 -0.9996446967124939 0;
createNode animCurveTL -n "animCurveTL786";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 -0.0015683274246280649 6 
		-0.0015683274246280649;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.78691071271896362 1;
	setAttr -s 3 ".koy[0:2]"  0 -0.61706686019897461 0;
createNode animCurveTL -n "animCurveTL787";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 3 -0.99523236489475697 6 -0.99523236489475697;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.38683673739433289 1;
	setAttr -s 3 ".koy[0:2]"  0 0.92214822769165039 0;
createNode animCurveTL -n "animCurveTL788";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.10167917362943303 3 -0.046699535373194809 
		6 -0.046699535373194809;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.036353059113025665 1;
	setAttr -s 3 ".koy[0:2]"  0 0.99933898448944092 0;
createNode animCurveTL -n "animCurveTL789";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.40762644910266188 3 5.9724781342803249e-005 
		6 5.9724781342803249e-005;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.0049056750722229481 1;
	setAttr -s 3 ".koy[0:2]"  0 0.99998795986175537 0;
createNode animCurveTL -n "animCurveTL790";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.93129112588482243 3 -1.0033873591439757 
		6 -1.0033873591439757;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.027730030938982964 1;
	setAttr -s 3 ".koy[0:2]"  0 -0.99961543083190918 0;
createNode animCurveTA -n "animCurveTA2217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -10.587124207154311 3 46.171822403643489 
		6 -22.78039507191296;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.68483006954193115 0.082809507846832275;
	setAttr -s 3 ".koy[0:2]"  0 -0.72870278358459473 -0.99656540155410767;
createNode animCurveTA -n "animCurveTA2218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -60.592711499848903 3 -21.447120207264081 
		6 -59.78589307060367;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.99753051996231079 0.1478046178817749;
	setAttr -s 3 ".koy[0:2]"  0 0.070234313607215881 -0.98901659250259399;
createNode animCurveTA -n "animCurveTA2219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.15003680417244974 3 -62.992152333300986 
		6 34.574435665981952;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.31337940692901611 0.058623798191547394;
	setAttr -s 3 ".koy[0:2]"  0 0.94962799549102783 0.99828016757965088;
createNode animCurveTA -n "animCurveTA2220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 52.350458715167015 3 47.461809804954534 
		6 -4.3077020824181265;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.19823691248893738 0.11000309884548187;
	setAttr -s 3 ".koy[0:2]"  0 -0.98015415668487549 -0.99393123388290405;
createNode animCurveTA -n "animCurveTA2221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -49.562109142955329 3 -32.227511792878673 
		6 -49.658336589859132;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.99996471405029297 0.3122667670249939;
	setAttr -s 3 ".koy[0:2]"  0 -0.0083971330896019936 -0.94999444484710693;
createNode animCurveTA -n "animCurveTA2222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -64.60878798864384 3 -63.299510281091955 
		6 45.957278122761899;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.1030886247754097 0.052369430661201477;
	setAttr -s 3 ".koy[0:2]"  0 0.99467217922210693 0.99862778186798096;
createNode animCurveTA -n "animCurveTA2223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 72.938873120018542 3 73.532946642668335 
		6 64.255341242982553;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.79701334238052368 0.52544587850570679;
	setAttr -s 3 ".koy[0:2]"  0 -0.60396164655685425 -0.85082703828811646;
createNode animCurveTA -n "animCurveTA2224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 59.305463658789549 3 78.398801718513837 
		6 72.208811687058059;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.66402435302734375 0.6792871356010437;
	setAttr -s 3 ".koy[0:2]"  0 0.7477109432220459 -0.73387259244918823;
createNode animCurveTA -n "animCurveTA2225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -17.955810303398234 3 -5.0283522467414592 
		6 72.79493678537078;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.1252758800983429 0.073424197733402252;
	setAttr -s 3 ".koy[0:2]"  0 0.99212193489074707 0.99730080366134644;
createNode animCurveTA -n "animCurveTA2226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 10.082003051124259 3 33.009681214774616 
		6 35.224795679311441;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.41472098231315613 0.93272072076797485;
	setAttr -s 3 ".koy[0:2]"  0 0.90994864702224731 0.36059954762458801;
createNode animCurveTA -n "animCurveTA2227";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -4.7201893288928654 3 40.275991096737059 
		6 56.771965155298119;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.18319770693778992 0.32810413837432861;
	setAttr -s 3 ".koy[0:2]"  0 0.98307609558105469 0.94464153051376343;
createNode animCurveTA -n "animCurveTA2228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 20.127263792592359 3 -33.636490799689732 
		6 59.556508727470074;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.27907872200012207 0.061364911496639252;
	setAttr -s 3 ".koy[0:2]"  0 0.96026819944381714 0.9981154203414917;
createNode animCurveTA -n "animCurveTA2229";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 11.615881410206432 3 29.328994901054315 
		6 36.028288837490415;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.4249153733253479 0.64996218681335449;
	setAttr -s 3 ".koy[0:2]"  0 0.90523308515548706 0.75996655225753784;
createNode animCurveTA -n "animCurveTA2230";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.3215928107553504 3 -22.622358173865795 
		6 13.094680882304901;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.66778475046157837 0.15839080512523651;
	setAttr -s 3 ".koy[0:2]"  0 0.74435442686080933 0.98737651109695435;
createNode animCurveTA -n "animCurveTA2231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 143.15000228576875 3 143.15000228576875 
		6 143.15000228576875;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2232";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 53.910048648242871 3 53.910048648242878 
		6 53.910048648242878;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2233";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 43.127820754253491 3 43.127820754253513 
		6 43.127820754253513;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2234";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2235";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2236";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 86.382238158606057 3 59.219502482153104 
		6 59.219502482153104;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.38869693875312805 1;
	setAttr -s 3 ".koy[0:2]"  0 -0.92136567831039429 0;
createNode animCurveTA -n "animCurveTA2237";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2238";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2239";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2240";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 26.541511232508352;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2241";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 41.530156331423342;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2242";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 52.545459146006969;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2243";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 37.39895318822164;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2244";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 69.699093005590768;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2245";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 37.87925340126155;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2246";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2247";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2248";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 95.284705327631698 3 66.672206829852314 
		6 66.672206829852314;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.37178659439086914 1;
	setAttr -s 3 ".koy[0:2]"  0 -0.92831820249557495 0;
createNode animCurveTA -n "animCurveTA2249";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2250";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2251";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2252";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 -1.3600558986621039 6 -0.16135188088572175;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.99990087747573853 0.97880810499191284;
	setAttr -s 3 ".koy[0:2]"  0 -0.014079212211072445 0.20477969944477081;
createNode animCurveTA -n "animCurveTA2253";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 -1.7348136322083922 6 -2.1983501567531918;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.98209112882614136 0.99674338102340698;
	setAttr -s 3 ".koy[0:2]"  0 -0.1884065568447113 -0.08063892275094986;
createNode animCurveTA -n "animCurveTA2254";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.1280947740371978 3 18.025996084384893 
		6 -15.880312516295612;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.44581100344657898 0.16662046313285828;
	setAttr -s 3 ".koy[0:2]"  0 -0.89512711763381958 -0.98602110147476196;
createNode animCurveTA -n "animCurveTA2255";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2256";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2257";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 14.508952910281577 6 14.508952910281577;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.61980152130126953 1;
	setAttr -s 3 ".koy[0:2]"  0 0.78475862741470337 0;
createNode animCurveTA -n "animCurveTA2258";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0.6205628187730865 6 3.5615739804694475;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.95493936538696289 0.88964301347732544;
	setAttr -s 3 ".koy[0:2]"  0 0.2968008816242218 0.45665666460990906;
createNode animCurveTA -n "animCurveTA2259";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 6.1534707642816313 6 5.0593482146838156;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.91480457782745361 0.98225104808807373;
	setAttr -s 3 ".koy[0:2]"  0 0.40389668941497803 -0.18757106363773346;
createNode animCurveTA -n "animCurveTA2260";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -18.722937869975638 3 -32.810404800085166 
		6 -3.3664805278333754;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.59805464744567871 0.19101005792617798;
	setAttr -s 3 ".koy[0:2]"  0 0.80145531892776489 0.98158806562423706;
createNode animCurveTA -n "animCurveTA2261";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 -0.70293507907658626 6 -0.70293507907658626;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.99812382459640503 1;
	setAttr -s 3 ".koy[0:2]"  0 -0.061227567493915558 0;
createNode animCurveTA -n "animCurveTA2262";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 1.2717523854678625 6 1.2717523854678625;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.99389785528182983 1;
	setAttr -s 3 ".koy[0:2]"  0 0.11030410975217819 0;
createNode animCurveTA -n "animCurveTA2263";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 10.789123571196804 6 10.789123571196804;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.72807198762893677 1;
	setAttr -s 3 ".koy[0:2]"  0 0.68550068140029907 0;
createNode animCurveTA -n "animCurveTA2264";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2265";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2266";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 85.281921116584812 3 61.824373247854581 
		6 61.824373247854581;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.43893253803253174 1;
	setAttr -s 3 ".koy[0:2]"  0 -0.89851999282836914 0;
createNode animCurveTA -n "animCurveTA2267";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -122.90211145181451 3 -122.90211145181451 
		6 -122.90211145181451;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2268";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 38.578337509358107 3 38.578337509358107 
		6 38.578337509358107;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2269";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 45.467643381850571 3 45.467643381850564 
		6 45.467643381850564;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2270";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2271";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 6 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2272";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 77.470348806333035 3 50.17101925731437 
		6 50.17101925731437;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 0.38704407215118408 1;
	setAttr -s 3 ".koy[0:2]"  0 -0.92206120491027832 0;
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
	setAttr ".o" 6;
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
connectAttr "lsa_jump_dash_take_offSource.st" "clipLibrary1.st[0]";
connectAttr "lsa_jump_dash_take_offSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL756.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL757.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL759.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA2154.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU153.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU154.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU155.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU156.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "lsa_Hoop_Root_IK_FK_RArm.a" "clipLibrary1.cel[0].cev[10].cevr"
		;
connectAttr "lsa_Hoop_Root_IK_FK_LArm.a" "clipLibrary1.cel[0].cev[11].cevr"
		;
connectAttr "animCurveTU159.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU160.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA2155.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA2156.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA2157.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL761.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL762.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL763.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL764.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL765.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL766.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA2158.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA2159.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA2160.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL767.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL768.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL769.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA2161.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA2162.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA2163.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA2164.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA2165.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA2166.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA2167.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA2168.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA2169.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA2170.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA2171.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA2172.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA2173.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA2174.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA2175.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL770.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL771.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL772.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL773.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL774.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL775.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL776.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL777.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL778.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA2176.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA2177.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA2178.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA2179.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA2180.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA2181.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA2182.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA2183.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA2184.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA2185.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA2186.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA2187.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA2188.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA2189.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA2190.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA2191.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA2192.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA2193.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA2194.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA2195.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA2196.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA2197.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA2198.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA2199.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA2200.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA2201.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA2202.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA2203.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA2204.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "lsa_Right_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[82].cevr"
		;
connectAttr "lsa_Right_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[83].cevr"
		;
connectAttr "lsa_Right_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[84].cevr"
		;
connectAttr "lsa_Right_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[85].cevr"
		;
connectAttr "lsa_Right_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[86].cevr"
		;
connectAttr "lsa_Right_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[87].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[88].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[89].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[90].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[91].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[92].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[93].cevr"
		;
connectAttr "animCurveTL779.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL780.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL781.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA2211.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA2212.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA2213.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL782.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL783.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL784.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA2214.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA2215.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA2216.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL785.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL786.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL787.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL788.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL789.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL790.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA2217.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA2218.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA2219.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA2220.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA2221.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA2222.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA2223.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA2224.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA2225.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA2226.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA2227.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA2228.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA2229.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA2230.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA2231.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA2232.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA2233.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA2234.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA2235.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA2236.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA2237.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA2238.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA2239.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA2240.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA2241.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA2242.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA2243.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA2244.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA2245.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA2246.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA2247.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA2248.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA2249.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA2250.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA2251.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA2252.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA2253.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA2254.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA2255.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA2256.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA2257.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA2258.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA2259.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA2260.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA2261.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA2262.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA2263.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA2264.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA2265.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA2266.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA2267.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA2268.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA2269.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA2270.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA2271.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA2272.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of lsa_jump_dash_take_off.ma
