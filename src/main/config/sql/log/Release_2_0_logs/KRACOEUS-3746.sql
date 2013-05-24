DELETE FROM KRIM_ROLE_MBR_T M2 WHERE M2.ROLE_MBR_ID IN (SELECT M.ROLE_MBR_ID 
FROM KRIM_ROLE_MBR_T M, KRIM_ROLE_T R 
WHERE M.MBR_TYP_CD = 'P' AND R.ROLE_NM = 'Proposal Creator' 
AND M.MBR_ID NOT IN (SELECT P.PRNCPL_ID FROM KRIM_PRNCPL_T P));

COMMIT;