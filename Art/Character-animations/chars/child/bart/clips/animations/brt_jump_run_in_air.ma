//Maya ASCII 4.0 scene
//Name: brt_jump_run_in_air.ma
//Last modified: Tue, May 27, 2003 01:51:45 PM
requires maya "4.0";
requires "p3dDeformer" "2.0";
requires "p3dmayaexp" "2.0.3.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "brt_jump_run_in_airSource";
	setAttr ".ihi" 0;
	setAttr ".du" 19;
	setAttr ".ci" no;
createNode animCurveTL -n "brt_Extra_Attributes_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTL -n "brt_Extra_Attributes_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 -0.021572320882147555 1 -0.021572320882147555 
		2 -0.021572320882147555 3 -0.021572320882147555 4 -0.021572320882147555 5 
		-0.021572320882147555 6 -0.021572320882147555 7 -0.021572320882147555 8 -0.021572320882147555 
		9 -0.021572320882147555 10 -0.021572320882147555 11 -0.021572320882147555 
		12 -0.02227418028387905 13 -0.023677899087342042 14 -0.024730688189939284 
		15 -0.024379758489073537 16 -0.021572320882147555 17 -0.012259067533803476 
		18 0.0019282096057425557 19 0.013520649960726747;
createNode animCurveTL -n "Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 19 0;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTU -n "animCurveTU149";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 1;
createNode animCurveTU -n "animCurveTU150";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 1;
createNode animCurveTU -n "animCurveTU151";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTU -n "animCurveTU152";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "brt_Hoop_Root_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "brt_Hoop_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "brt_Hoop_Root_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTL -n "brt_Hoop_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTL -n "brt_Hoop_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTL -n "brt_Hoop_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTL -n "Right_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 -0.19763288944005308 1 -0.21388439484436461 
		2 -0.23242789042708631 3 -0.2498253910775928 4 -0.26263891168525855 5 -0.26743046713945823 
		6 -0.26259004197570202 7 -0.25078795345791915 8 -0.23500671556811198 9 -0.21822884228828307 
		10 -0.20343684760043487 11 -0.19361324548656986 12 -0.18855179991783796 13 
		-0.18620397593796068 14 -0.18678883913779762 15 -0.19052545510820851 16 -0.19763288944005308 
		17 -0.2189196056896586 18 -0.24916402928292658 19 -0.26454016861507795;
createNode animCurveTL -n "Right_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0.48491964391260112 1 0.50011898040498115 
		2 0.52151668850724908 3 0.53981520874494915 4 0.54571698164362603 5 0.52992444772882474 
		6 0.48538041144552679 7 0.41876575502834895 8 0.34139003568727833 9 0.26456281063230719 
		10 0.19959363707342337 11 0.15779207222061739 12 0.14809863865576758 13 0.16369748119431823 
		14 0.19226359039661714 15 0.22147195682300866 16 0.2389975710338379 17 0.2274114015918568 
		18 0.2061972648613449 19 0.21839942310493612;
createNode animCurveTL -n "Right_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 -0.1186747255115902 1 0.03758512990427576 
		2 0.21647799249925595 3 0.38405434839839186 4 0.50636468372672538 5 0.5494594846093015 
		6 0.5011393904353163 7 0.38851317718598682 8 0.23659353587437459 9 0.070393157513547758 
		10 -0.085075266883430742 11 -0.20479904630349283 12 -0.29942648311433495 
		13 -0.3874404583593245 14 -0.45558014903888178 15 -0.4905847321534389 16 
		-0.47919338470342127 17 -0.27631749536682809 18 0.030878874690883188 19 0.10727753973808414;
createNode animCurveTA -n "animCurveTA2039";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 58.991545356860456 1 39.729485741389624 
		2 17.75494548869441 3 -2.8633547456030377 4 -18.056694305880587 5 -23.756352536516083 
		6 -18.118836882811102 7 -4.3167427133281704 8 14.194518742663409 9 33.959536255894342 
		10 51.522898597095342 11 63.42919453699708 12 69.770392152768181 13 72.941636588915529 
		14 72.942282217177322 15 69.771683409291782 16 63.42919453699708 17 43.460744495292715 
		18 14.682683965757791 19 0;
createNode animCurveTA -n "animCurveTA2040";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 -6.72749308651166 18 -19.221408818604743 
		19 -25.948901905116401;
createNode animCurveTA -n "animCurveTA2041";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0;
createNode animCurveTL -n "Left_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0.19697756422115981 1 0.19686577702007405 
		2 0.19664220261790252 3 0.19647452181627395 4 0.19653041541681679 5 0.19697756422115981 
		6 0.19803203836100872 7 0.19959110745016939 8 0.20134425151342047 9 0.20298095057554058 
		10 0.20419068466130835 11 0.20466293379550235 12 0.20363799662271564 13 0.20128070749416868 
		14 0.1986673499945808 15 0.19687420770867137 16 0.19697756422115981 17 0.20252210336297333 
		18 0.21134157718133817 19 0.21594587158542247;
createNode animCurveTL -n "Left_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0.24451179278747248 1 0.27603651272568536 
		2 0.31110721725273299 3 0.34440493828150837 4 0.37061070772490645 5 0.38440555749582056 
		6 0.38556846040409953 7 0.37868467865859301 8 0.36564467827068681 9 0.34833892525176952 
		10 0.32865788561322851 11 0.30849202536645393 12 0.28290472999318111 13 0.24979804455793989 
		14 0.21532042444631658 15 0.18562032504389359 16 0.16684620173625336 17 0.16559360464008738 
		18 0.18330496600930107 19 0.21839906443529672;
createNode animCurveTL -n "Left_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 -0.38789357694348481 1 -0.39775096120116687 
		2 -0.42058483065830943 3 -0.43693047742232116 4 -0.42732319360060822 5 -0.37229827130057674 
		6 -0.25736053980405715 7 -0.096552459019766293 8 0.086784233004547268 9 0.26930779822113998 
		10 0.42767649858226264 11 0.5385485960401718 12 0.59268045203808806 13 0.60420943792046122 
		14 0.58486533049139822 15 0.54637790655499485 16 0.50047694291535572 17 0.42874690379881103 
		18 0.31470191573014933 19 0.17296624896113655;
createNode animCurveTA -n "animCurveTA2042";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 7.0836138343503396 1 20.003966686705301 
		2 34.605258241756147 3 48.366080798116478 4 58.765026654399897 5 63.280688109220009 
		6 61.2980191768917 7 54.888569181878196 8 45.560823388015727 9 34.823267059140456 
		10 24.184385459088585 11 15.152663851696316 12 6.6790726682933608 13 -2.471750798659949 
		14 -11.070820993631532 15 -17.889152361089305 16 -21.697759345501197 17 -16.914228970465299 
		18 -6.0462523357325182 19 0;
createNode animCurveTA -n "animCurveTA2043";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0;
createNode animCurveTA -n "animCurveTA2044";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0;
createNode animCurveTA -n "brt_Right_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "brt_Right_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "brt_Right_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "brt_Left_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "brt_Left_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "brt_Left_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "brt_Right_Toe_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "brt_Right_Toe_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "brt_Right_Toe_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "brt_Left_Toe_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "brt_Left_Toe_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "brt_Left_Toe_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTL -n "animCurveTL729";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 16 0 19 0;
createNode animCurveTL -n "animCurveTL730";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 16 0 19 0;
createNode animCurveTL -n "animCurveTL731";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 5 1 11 1 16 1 19 1;
createNode animCurveTL -n "animCurveTL732";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 16 0 19 0;
createNode animCurveTL -n "animCurveTL733";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 16 0 19 0;
createNode animCurveTL -n "animCurveTL734";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 5 1 11 1 16 1 19 1;
createNode animCurveTL -n "Character_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 -0.048692319506319928 1 -0.048692319506319928 
		2 -0.048692319506319928 3 -0.048692319506319928 4 -0.048692319506319928 5 
		-0.048692319506319928 6 -0.048692319506319928 7 -0.048692319506319928 8 -0.048692319506319928 
		9 -0.048692319506319928 10 -0.048692319506319928 11 -0.048692319506319928 
		12 -0.050276533018826446 13 -0.05344496004383946 14 -0.055821280312599225 
		15 -0.055029173556345963 16 -0.048692319506319928 17 -0.029623082627669332 
		18 0.0004476373560751678 19 0.03051835782609956;
createNode animCurveTL -n "Character_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0.87578059271716846 1 0.86532634782994067 
		2 0.85487210299469041 3 0.84441785820530246 4 0.83396361345566217 5 0.82350936873965463 
		6 0.81305512405116331 7 0.80260087938407598 8 0.79214663473227453 9 0.78169239008964608 
		10 0.77123814545007519 11 0.76078390080744729 12 0.75032965615564706 13 0.73987541148855795 
		14 0.72942116680006719 15 0.71896692208405921 16 0.70851267733441858 17 0.69805843254503075 
		18 0.68760418770978049 19 0.67714994282255281;
createNode animCurveTL -n "Character_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 0 2 6.4152529719057607e-016 
		3 0 4 0 5 6.4152529719057607e-016 6 0 7 0 8 0 9 0 10 0 11 0 12 1.2830505943811521e-015 
		13 0 14 0 15 0 16 0 17 0 18 1.2830505943811521e-015 19 1.2830505943811521e-015;
createNode animCurveTA -n "animCurveTA2057";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 20.950825280283908 1 10.486487357452976 
		2 -0.75886090939977258 3 -11.613704340487388 4 -20.906527756022907 5 -27.4658159762194 
		6 -31.249768116769367 7 -33.269676080071257 8 -33.93366386639704 9 -33.649855476018679 
		10 -32.826374909208148 11 -31.871346166237402 12 -30.237729886522441 13 -27.466694835489395 
		14 -24.098677202425446 15 -20.674113176617762 16 -17.73343894735353 17 -15.500963741612047 
		18 -13.611818997867633 19 -11.722674222649985;
createNode animCurveTA -n "animCurveTA2058";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 -6.8139232258102842 1 -6.791845117789661 
		2 -6.7738368401583466 3 -6.7537936456404903 4 -6.7256107869602397 5 -6.6831835168417442 
		6 -6.6205274636033504 7 -6.5417591439940974 8 -6.4559251433841673 9 -6.3720720471437424 
		10 -6.2992464406430031 11 -6.2464949092521325 12 -6.3460174715595894 13 -6.5927013546295532 
		14 -6.7896239565457872 15 -6.7398626753920565 16 -6.2464949092521254 17 -4.7427091366038807 
		18 -2.3713546347474592 19 0;
createNode animCurveTA -n "animCurveTA2059";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 -1.4726187357019898 1 -0.73691804407775863 
		2 0.042927135406498923 3 0.80070009856081958 4 1.4701841411952412 5 1.9851625591198019 
		6 2.3422885341954354 7 2.5985257593042839 8 2.7781232967881961 9 2.9053302089890205 
		10 3.0043955582486066 11 3.0995684069088036 12 3.2263979349863785 13 3.358485448172186 
		14 3.4271581973192053 15 3.3637434332804159 16 3.0995684069087965 17 2.3533760162204169 
		18 1.1766880288325556 19 0;
createNode animCurveTA -n "brt_R_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "brt_R_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "brt_R_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 4.0984482521620249;
createNode animCurveTA -n "brt_R_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 18.588300303494186;
createNode animCurveTA -n "brt_R_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "brt_R_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "brt_R_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 -22.686733334985114;
createNode animCurveTA -n "brt_R_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "brt_R_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "brt_R_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1.0579251312417479e-005;
createNode animCurveTA -n "brt_L_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "brt_L_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "brt_L_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 4.0984482535121209;
createNode animCurveTA -n "brt_L_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 18.588300300216805;
createNode animCurveTA -n "brt_L_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "brt_L_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "brt_L_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 -22.686733333057838;
createNode animCurveTA -n "brt_L_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "brt_L_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "brt_L_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1.0579251312417479e-005;
createNode animCurveTA -n "brt_R_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "brt_R_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "brt_R_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 2.4782236286598098;
createNode animCurveTA -n "brt_L_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "brt_L_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "brt_L_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTL -n "animCurveTL744";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  18 -0.98061208805004418;
createNode animCurveTL -n "animCurveTL745";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  18 0.63150002143062933;
createNode animCurveTL -n "animCurveTL746";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  18 12.453949396124056;
createNode animCurveTA -n "animCurveTA2092";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  18 -42.867554010787885;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  0.77098405361175537;
	setAttr ".koy[0]"  0.63685446977615356;
createNode animCurveTA -n "animCurveTA2093";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  18 28.149690506654711;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  0.99853867292404175;
	setAttr ".koy[0]"  -0.05404147133231163;
createNode animCurveTA -n "animCurveTA2094";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  18 30.109428848425473;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  0.97700017690658569;
	setAttr ".koy[0]"  0.21323844790458679;
createNode animCurveTL -n "animCurveTL747";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  18 0.92493013705870175;
createNode animCurveTL -n "animCurveTL748";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  18 0.53859139700882563;
createNode animCurveTL -n "animCurveTL749";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  18 12.62154166463254;
createNode animCurveTA -n "animCurveTA2095";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  18 -2.1513976318227264;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2096";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  18 -29.430271342549375;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA2097";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  18 -43.400827249869813;
	setAttr ".kot[0]"  1;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "animCurveTL750";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 16 0 19 0.44879925919486569;
createNode animCurveTL -n "animCurveTL751";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 16 0 19 -2.1086769476633807;
createNode animCurveTL -n "animCurveTL752";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1 5 -1 11 -1 16 -1 19 -0.18536689079245133;
createNode animCurveTL -n "animCurveTL753";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 16 0 19 -0.5126104209518183;
createNode animCurveTL -n "animCurveTL754";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 16 0 19 -1.3386630780291868;
createNode animCurveTL -n "animCurveTL755";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1 5 -1 11 -1 16 -1 19 -0.049199106950677696;
createNode animCurveTA -n "animCurveTA2098";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 38.288355439467409 4 -9.7806751951410718 
		12 -58.519680197032365 16 -31.571577954490724 19 -42.771826393301765;
createNode animCurveTA -n "animCurveTA2099";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -34.477986237269441 4 -8.4296852078207465 
		12 33.527431276659861 16 7.3574512395266103 19 -50.50902704873203;
createNode animCurveTA -n "animCurveTA2100";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -58.841273892169454 4 13.309227169289349 
		12 48.24819198542562 16 35.617654615044998 19 34.78650961055213;
createNode animCurveTA -n "animCurveTA2101";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 55.55104118666123 4 -39.047870538844734 
		12 -78.55054160946581 16 -34.843094200493795 19 -18.096320074856848;
createNode animCurveTA -n "animCurveTA2102";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -22.864898916390906 4 34.228246858113778 
		12 47.006849538266806 16 2.1260275889345177 19 -49.220253033269849;
createNode animCurveTA -n "animCurveTA2103";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -66.560432261884458 4 31.092418731050284 
		12 5.0067341800000937 16 -4.0384343808384129 19 22.481085713744079;
createNode animCurveTA -n "animCurveTA2104";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 42.061717197589253 4 63.595530963034982 
		12 18.413186094630159 16 50.602895361976628 19 44.432703580981681;
createNode animCurveTA -n "animCurveTA2105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 39.540454462093251 4 15.683132976672461 
		12 29.822033701000105 16 76.952784880962497 19 50.842923737118142;
createNode animCurveTA -n "animCurveTA2106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -20.023139945693767 4 -20.023139945693767 
		12 45.026792796940271 16 -20.023139945693767 19 60.563198486797667;
createNode animCurveTA -n "animCurveTA2107";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 26.671328910479655 4 26.671328910479655 
		12 26.671328910479694 16 26.671328910479655 19 26.360430176523643;
createNode animCurveTA -n "animCurveTA2108";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 5.3717556430426301 4 5.3717556430426301 
		12 5.3717556430426114 16 5.3717556430426301 19 33.197555990358396;
createNode animCurveTA -n "animCurveTA2109";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -50.380399976743753 4 5.5563002740969507 
		12 -14.855460620052202 16 5.5563002740969507 19 59.556508727470074;
createNode animCurveTA -n "animCurveTA2110";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 17.011015481116551 4 17.01101548111658 
		12 3.4359667312808053 16 17.01101548111658 19 36.028288837490415;
createNode animCurveTA -n "animCurveTA2111";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -5.3376311675567187 4 -5.3376311675567338 
		12 -8.2007816812803718 16 -5.3376311675567338 19 13.094680882304901;
createNode animCurveTA -n "brt_Thumb_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 -135.99575007373303;
createNode animCurveTA -n "brt_Thumb_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 60.679225746638807;
createNode animCurveTA -n "brt_Thumb_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 48.350963991229975;
createNode animCurveTA -n "animCurveTA2115";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 12 0 16 0 19 0;
createNode animCurveTA -n "animCurveTA2116";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 12 0 16 0 19 0;
createNode animCurveTA -n "animCurveTA2117";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 67.810939637714412 4 67.810939637714412 
		12 67.810939637714412 16 67.810939637714412 19 59.219502482153104;
createNode animCurveTA -n "brt_Pelvis_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "brt_Pelvis_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "brt_Pelvis_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "brt_Thumb_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 27.70521891534332;
createNode animCurveTA -n "brt_Thumb_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 43.35103828268312;
createNode animCurveTA -n "brt_Thumb_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 54.235722998003197;
createNode animCurveTA -n "brt_Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 39.038703285259977;
createNode animCurveTA -n "brt_Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 72.755037061650995;
createNode animCurveTA -n "brt_Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 38.926480273156798;
createNode animCurveTA -n "animCurveTA2127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 12 0 16 0 19 0;
createNode animCurveTA -n "animCurveTA2128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 12 0 16 0 19 0;
createNode animCurveTA -n "animCurveTA2129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 40.637834425062678 4 40.637834425062678 
		12 40.637834425062678 16 40.637834425062678 19 66.672206829852314;
createNode animCurveTA -n "animCurveTA2130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 12 0 16 0 19 0;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 12 0 16 0 19 0;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 12 0 16 0 19 0;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -7.660020298875442 4 -20.174528203279309 
		12 9.3168978960520814 16 8.4064065218267139 19 -1.5829914574537056;
createNode animCurveTA -n "animCurveTA2134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.4575024756080202 4 3.5015358300888062 
		12 -2.6412510516012935 16 -3.9144739663283423 19 -1.7175900971389688;
createNode animCurveTA -n "animCurveTA2135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 11.303295119228467 4 -18.434669853316674 
		12 -16.499523597698332 16 0.31929352552719664 19 26.300887772213173;
createNode animCurveTA -n "animCurveTA2136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 12 0 16 0 19 0;
createNode animCurveTA -n "animCurveTA2137";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 12 0 16 0 19 0;
createNode animCurveTA -n "animCurveTA2138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 12 0 16 0 19 14.508952910281577;
createNode animCurveTA -n "animCurveTA2139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.88855738406062901 4 0.88855738406062901 
		12 7.4551353158152267 16 6.0738884979870953 19 3.6375267832064915;
createNode animCurveTA -n "animCurveTA2140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -8.2331616608723177 4 -8.2331616608723177 
		12 3.2100512689098402 16 5.3890682779967127 19 5.005087459058303;
createNode animCurveTA -n "animCurveTA2141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -7.5844312513428269 4 -7.5844312513428269 
		12 2.0594213626924698 16 0.069580784890004577 19 -2.5006014476938456;
	setAttr -s 5 ".kit[2:4]"  1 1 9;
	setAttr -s 5 ".kot[2:4]"  1 1 9;
	setAttr -s 5 ".kix[2:4]"  0.85773366689682007 0.73541063070297241 
		0.91240519285202026;
	setAttr -s 5 ".kiy[2:4]"  0.51409429311752319 -0.67762172222137451 
		-0.40928804874420166;
	setAttr -s 5 ".kox[2:4]"  0.85773360729217529 0.73541074991226196 
		0.91240519285202026;
	setAttr -s 5 ".koy[2:4]"  0.51409435272216797 -0.67762154340744019 
		-0.40928804874420166;
createNode animCurveTA -n "animCurveTA2142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 12 0 16 0 19 -0.18869730455872094;
createNode animCurveTA -n "animCurveTA2143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 12 0 16 0 19 1.4407607497566994;
createNode animCurveTA -n "animCurveTA2144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 12 0 16 0 19 35.157428558935315;
createNode animCurveTA -n "animCurveTA2145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 12 0 16 0 19 0;
createNode animCurveTA -n "animCurveTA2146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 12 0 16 0 19 0;
createNode animCurveTA -n "animCurveTA2147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 66.910735171519136 4 66.910735171519136 
		12 66.910735171519136 16 66.910735171519136 19 61.824373247854581;
createNode animCurveTA -n "brt_Thumb_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 -129.34036054043401;
createNode animCurveTA -n "brt_Thumb_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 42.116293762219648;
createNode animCurveTA -n "brt_Thumb_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 51.312599966148383;
createNode animCurveTA -n "animCurveTA2151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 12 0 16 0 19 0;
createNode animCurveTA -n "animCurveTA2152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 12 0 16 0 19 0;
createNode animCurveTA -n "animCurveTA2153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 55.749331591600708 4 55.749331591600708 
		12 55.749331591600708 16 55.749331591600708 19 50.17101925731437;
createNode clipLibrary -n "clipLibrary1";
	setAttr -s 156 ".cel[0].cev";
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
	setAttr ".o" 2;
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
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -k on ".ra";
	setAttr -k on ".clip";
	setAttr -k on ".edm";
	setAttr -k on ".edl";
	setAttr -k on ".esr";
	setAttr -k on ".ors";
	setAttr -k on ".outf";
	setAttr -k on ".gama";
	setAttr ".top" 478;
	setAttr -k on ".left";
	setAttr -k on ".bot";
	setAttr ".rght" 638;
	setAttr -k on ".urr";
	setAttr ".fs" 1;
	setAttr ".ef" 10;
	setAttr -k on ".bf";
	setAttr -k on ".bfs";
	setAttr -k on ".be";
	setAttr -k on ".fec";
	setAttr -k on ".sec";
	setAttr -k on ".ofc";
	setAttr -k on ".comp";
	setAttr -k on ".cth";
	setAttr -k on ".rd";
	setAttr -k on ".lp";
	setAttr -k on ".sp";
	setAttr -k on ".shs";
	setAttr -k on ".lpr";
	setAttr -k on ".mm";
	setAttr -k on ".npu";
	setAttr -k on ".shp";
	setAttr -k on ".uf";
	setAttr -k on ".oi";
	setAttr -k on ".rut";
	setAttr -k on ".mbf";
	setAttr -k on ".afp";
	setAttr -k on ".pfb";
	setAttr -k on ".bll";
	setAttr -k on ".bls";
	setAttr -k on ".smv";
	setAttr -k on ".ubc";
	setAttr -k on ".mbc";
	setAttr -k on ".udbx";
	setAttr -k on ".smc";
	setAttr -k on ".kmv";
	setAttr -k on ".rgpn";
	setAttr -k on ".rlsd";
	setAttr -k on ".frts";
	setAttr -k on ".tlwd";
	setAttr -k on ".tlht";
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
connectAttr "brt_jump_run_in_airSource.st" "clipLibrary1.st[0]";
connectAttr "brt_jump_run_in_airSource.du" "clipLibrary1.du[0]";
connectAttr "brt_Extra_Attributes_translateX.a" "clipLibrary1.cel[0].cev[0].cevr"
		;
connectAttr "brt_Extra_Attributes_translateY.a" "clipLibrary1.cel[0].cev[1].cevr"
		;
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "brt_Hoop_Root_IK_FK_RFoot.a" "clipLibrary1.cel[0].cev[6].cevr"
		;
connectAttr "brt_Hoop_Root_IK_FK_LFoot.a" "clipLibrary1.cel[0].cev[7].cevr"
		;
connectAttr "brt_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary1.cel[0].cev[8].cevr"
		;
connectAttr "brt_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary1.cel[0].cev[9].cevr"
		;
connectAttr "animCurveTU149.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU150.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU151.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU152.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "brt_Hoop_Root_rotateX.a" "clipLibrary1.cel[0].cev[14].cevr"
		;
connectAttr "brt_Hoop_Root_rotateY.a" "clipLibrary1.cel[0].cev[15].cevr"
		;
connectAttr "brt_Hoop_Root_rotateZ.a" "clipLibrary1.cel[0].cev[16].cevr"
		;
connectAttr "brt_Hoop_Root_translateX.a" "clipLibrary1.cel[0].cev[17].cevr"
		;
connectAttr "brt_Hoop_Root_translateY.a" "clipLibrary1.cel[0].cev[18].cevr"
		;
connectAttr "brt_Hoop_Root_translateZ.a" "clipLibrary1.cel[0].cev[19].cevr"
		;
connectAttr "Right_Foot_Hoop_translateX.a" "clipLibrary1.cel[0].cev[20].cevr"
		;
connectAttr "Right_Foot_Hoop_translateY.a" "clipLibrary1.cel[0].cev[21].cevr"
		;
connectAttr "Right_Foot_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[22].cevr"
		;
connectAttr "animCurveTA2039.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA2040.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA2041.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "Left_Foot_Hoop_translateX.a" "clipLibrary1.cel[0].cev[26].cevr"
		;
connectAttr "Left_Foot_Hoop_translateY.a" "clipLibrary1.cel[0].cev[27].cevr"
		;
connectAttr "Left_Foot_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[28].cevr"
		;
connectAttr "animCurveTA2042.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA2043.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA2044.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "brt_Right_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[32].cevr"
		;
connectAttr "brt_Right_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[33].cevr"
		;
connectAttr "brt_Right_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[34].cevr"
		;
connectAttr "brt_Left_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[35].cevr"
		;
connectAttr "brt_Left_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[36].cevr"
		;
connectAttr "brt_Left_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[37].cevr"
		;
connectAttr "brt_Right_Toe_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[38].cevr"
		;
connectAttr "brt_Right_Toe_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[39].cevr"
		;
connectAttr "brt_Right_Toe_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[40].cevr"
		;
connectAttr "brt_Left_Toe_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[41].cevr"
		;
connectAttr "brt_Left_Toe_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[42].cevr"
		;
connectAttr "brt_Left_Toe_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[43].cevr"
		;
connectAttr "animCurveTL729.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL730.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL731.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL732.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL733.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL734.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "Character_Hoop_translateX.a" "clipLibrary1.cel[0].cev[50].cevr"
		;
connectAttr "Character_Hoop_translateY.a" "clipLibrary1.cel[0].cev[51].cevr"
		;
connectAttr "Character_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[52].cevr"
		;
connectAttr "animCurveTA2057.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA2058.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA2059.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "brt_R_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "brt_R_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "brt_R_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "brt_R_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[59].cevr"
		;
connectAttr "brt_R_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[60].cevr"
		;
connectAttr "brt_R_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[61].cevr"
		;
connectAttr "brt_R_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[62].cevr"
		;
connectAttr "brt_R_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[63].cevr"
		;
connectAttr "brt_R_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[64].cevr"
		;
connectAttr "brt_R_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[65].cevr"
		;
connectAttr "brt_L_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "brt_L_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "brt_L_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "brt_L_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[69].cevr"
		;
connectAttr "brt_L_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[70].cevr"
		;
connectAttr "brt_L_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[71].cevr"
		;
connectAttr "brt_L_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[72].cevr"
		;
connectAttr "brt_L_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[73].cevr"
		;
connectAttr "brt_L_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[74].cevr"
		;
connectAttr "brt_L_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[75].cevr"
		;
connectAttr "brt_R_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[76].cevr"
		;
connectAttr "brt_R_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[77].cevr"
		;
connectAttr "brt_R_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[78].cevr"
		;
connectAttr "brt_L_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[79].cevr"
		;
connectAttr "brt_L_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[80].cevr"
		;
connectAttr "brt_L_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[81].cevr"
		;
connectAttr "animCurveTL744.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL745.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL746.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA2092.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA2093.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA2094.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL747.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL748.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL749.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA2095.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA2096.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA2097.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL750.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL751.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL752.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL753.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL754.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL755.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA2098.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA2099.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA2100.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA2101.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA2102.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA2103.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA2104.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA2105.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA2106.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA2107.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA2108.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA2109.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA2110.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA2111.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "brt_Thumb_Base_L_rotateX.a" "clipLibrary1.cel[0].cev[126].cevr"
		;
connectAttr "brt_Thumb_Base_L_rotateY.a" "clipLibrary1.cel[0].cev[127].cevr"
		;
connectAttr "brt_Thumb_Base_L_rotateZ.a" "clipLibrary1.cel[0].cev[128].cevr"
		;
connectAttr "animCurveTA2115.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA2116.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA2117.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "brt_Pelvis_rotateX.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "brt_Pelvis_rotateY.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "brt_Pelvis_rotateZ.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "brt_Thumb_R_rotateX.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "brt_Thumb_R_rotateY.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "brt_Thumb_R_rotateZ.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "brt_Thumb_L_rotateX.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "brt_Thumb_L_rotateY.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "brt_Thumb_L_rotateZ.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA2127.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA2128.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA2129.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA2130.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA2131.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA2132.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA2133.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA2134.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA2135.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA2136.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA2137.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA2138.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA2139.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA2140.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA2141.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA2142.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA2143.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA2144.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA2145.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA2146.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA2147.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "brt_Thumb_Base_R_rotateX.a" "clipLibrary1.cel[0].cev[162].cevr"
		;
connectAttr "brt_Thumb_Base_R_rotateY.a" "clipLibrary1.cel[0].cev[163].cevr"
		;
connectAttr "brt_Thumb_Base_R_rotateZ.a" "clipLibrary1.cel[0].cev[164].cevr"
		;
connectAttr "animCurveTA2151.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA2152.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA2153.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of brt_jump_run_in_air.ma
