load data
infile *
into table EN_DOC_HDR_CNTNT_T
INSERT
fields terminated by ',' optionally enclosed by "'"
TRAILING NULLCOLS 
(
DOC_HDR_ID, 
DOC_CNTNT_TXT LOBFILE(constant "DML/LOB-CTL/LOB-DATA/EN_DOC_HDR_CNTNT_T-DOC_CNTNT_TXT.dat") TERMINATED BY '<!--EOR-->'
)
BEGINDATA
'2080'
'2081'
'2082'
'2083'
'2345'
'2420'
'2421'
'2422'
'2423'
'2601'
'2602'
'2603'
'2604'
'2622'
'2623'
'2640'
'2641'
'2660'
'2661'
'2702'
'2703'
'2704'
'2705'
'2706'
'2707'
'2708'
'2709'
'2710'
'2711'
'2712'
'2713'
'2720'
'2721'
'2722'
'2723'
'2724'
'2725'
'2726'
'2727'
'2728'
'2729'
'2730'
'2731'
'2732'
'2733'
'2734'
'2735'
'2736'
'2737'
'2738'
'2739'
'2740'
'2760'
'2761'
'2762'
'2763'
'2764'
'2765'
'2766'
'2780'
'2781'
'2782'
'2783'
'2784'
'2785'
'2786'
'2787'
'2788'
'2789'
'2790'
'2791'
'2792'
'2793'
'2794'
'2795'
'2796'
'2797'
'2798'
'2799'
'2800'
'2820'
'2821'
'2822'
'2860'
