/*
	Non-normally distributed data set:
	D-KEFS Color-Word Interference Task
*/

ods html;
ods html style=statistical;
ods html path='R:\Krawczyk- Adult SMART-TBI-Stroke study\Warrior Study\
Database Files\SASdata\Output\';
ods graphics / reset; * Clear the html graphics from previous output;

ods graphics on/imagefmt=jpeg;
ods preferences;

option nodate pageno=1 center ps=80 orientation=portrait;
title ;
title2 ;
Footnote ;
footnote2 ;

libname nn 'R:\Krawczyk- Adult SMART-TBI-Stroke study\Warrior Study\
Database Files\SASdata\SAS Datasets\NonNormal';


data nn.dkefs_cw;
	infile 'R:\Krawczyk- Adult SMART-TBI-Stroke study\Warrior Study\
Database Files\SASdata\Data\Non-Normal Data\dkefs_cw_nn.csv' firstobs=2
dsd missover; 
	length  DOD_ID $ 8. ;
	length 	TGroup $ 5. ;
    input   DOD_ID $ : TGroup $ : 
			T1_CW_Cnd1_RS T1_CW_Cnd2_RS T1_CW_Cnd3_RS T1_CW_Cnd4_RS T1_CW_Cnd1_TotErrs_RS 
			T1_CW_Cnd2_TotErrs_RS T1_CW_Cnd3_TotErrs_RS T1_CW_Cnd4_TotErrs_RS T2_CW_Cnd1_RS 
			T2_CW_Cnd2_RS T2_CW_Cnd3_RS T2_CW_Cnd4_RS T2_CW_Cnd1_TotErrs_RS 
			T2_CW_Cnd2_TotErrs_RS T2_CW_Cnd3_TotErrs_RS T2_CW_Cnd4_TotErrs_RS T3_CW_Cnd1_RS 
			T3_CW_Cnd2_RS T3_CW_Cnd3_RS T3_CW_Cnd4_RS T3_CW_Cnd1_TotErrs_RS 
			T3_CW_Cnd2_TotErrs_RS T3_CW_Cnd3_TotErrs_RS T3_CW_Cnd4_TotErrs_RS ;


	label 	DOD_ID					= "DoD ID"
			TGroup					= "Training Group (BHW or SMART)"
			T1_CW_Cnd1_RS     		= "(Pre) CW Condition 1 Color Naming RS"
			T1_CW_Cnd2_RS     		= "(Pre) CW Condition 2 Word Reading RS"
			T1_CW_Cnd3_RS     		= "(Pre) CW Condition 3 Inhibition RS"
			T1_CW_Cnd4_RS     		= "(Pre) CW Condition 4 Inhibition/Switching RS"
			T1_CW_Cnd1_TotErrs_RS  	= "(Pre) CW Condition 1 Total Errors RS"
			T1_CW_Cnd2_TotErrs_RS   = "(Pre) CW Condition 2 Total Errors RS"
			T1_CW_Cnd3_TotErrs_RS   = "(Pre) CW Condition 3 Total Errors RS"
			T1_CW_Cnd4_TotErrs_RS   = "(Pre) CW Condition 4 Total Errors RS"
			T2_CW_Cnd1_RS     		= "(Post) CW Condition 1 Color Naming RS"
			T2_CW_Cnd2_RS     		= "(Post) CW Condition 2 Word Reading RS"
			T2_CW_Cnd3_RS     		= "(Post) CW Condition 3 Inhibition RS"
			T2_CW_Cnd4_RS     		= "(Post) CW Condition 4 Inhibition/Switching RS"
			T2_CW_Cnd1_TotErrs_RS   = "(Post) CW Condition 1 Total Errors RS"
			T2_CW_Cnd2_TotErrs_RS   = "(Post) CW Condition 2 Total Errors RS"
			T2_CW_Cnd3_TotErrs_RS   = "(Post) CW Condition 3 Total Errors RS"
			T2_CW_Cnd4_TotErrs_RS   = "(Post) CW Condition 4 Total Errors RS"
			T3_CW_Cnd1_RS     		= "(DPost) CW Condition 1 Color Naming RS"
			T3_CW_Cnd2_RS     		= "(DPost) CW Condition 2 Word Reading RS"
			T3_CW_Cnd3_RS     		= "(DPost) CW Condition 3 Inhibition RS"
			T3_CW_Cnd4_RS     		= "(DPost) CW Condition 4 Inhibition/Switching RS"
			T3_CW_Cnd1_TotErrs_RS   = "(DPost) CW Condition 1 Total Errors RS"
			T3_CW_Cnd2_TotErrs_RS   = "(DPost) CW Condition 2 Total Errors RS"
			T3_CW_Cnd3_TotErrs_RS   = "(DPost) CW Condition 3 Total Errors RS"
			T3_CW_Cnd4_TotErrs_RS   = "(DPost) CW Condition 4 Total Errors RS"

;
run;

proc contents data=nn.dkefs_cw;
run;

proc print data=nn.dkefs_cw noobs label ;
	title "DKEFS Color-Word Interference Task - Labels (Raw Scores Only)";

run;
title;

proc print data=nn.dkefs_cw noobs ;
	title "DKEFS Color-Word Interference Task - No Labels (Raw Scores Only)";
run;
title;

proc univariate data=nn.dkefs_cw normaltest plots;
*	class 	TGroup;
	var 	T1_CW_Cnd1_RS T1_CW_Cnd2_RS T1_CW_Cnd3_RS T1_CW_Cnd4_RS T1_CW_Cnd1_TotErrs_RS 
			T1_CW_Cnd2_TotErrs_RS T1_CW_Cnd3_TotErrs_RS T1_CW_Cnd4_TotErrs_RS T2_CW_Cnd1_RS 
			T2_CW_Cnd2_RS T2_CW_Cnd3_RS T2_CW_Cnd4_RS T2_CW_Cnd1_TotErrs_RS 
			T2_CW_Cnd2_TotErrs_RS T2_CW_Cnd3_TotErrs_RS T2_CW_Cnd4_TotErrs_RS T3_CW_Cnd1_RS 
			T3_CW_Cnd2_RS T3_CW_Cnd3_RS T3_CW_Cnd4_RS T3_CW_Cnd1_TotErrs_RS 
			T3_CW_Cnd2_TotErrs_RS T3_CW_Cnd3_TotErrs_RS T3_CW_Cnd4_TotErrs_RS;

run;

quit;
