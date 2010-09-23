DELETE FROM KRIM_ROLE_T WHERE ROLE_NM = 'Protocol Unassigned' AND NMSPC_CD = 'KC-PROTOCOL';

INSERT INTO KRIM_ROLE_T ( ROLE_ID, OBJ_ID, VER_NBR, ROLE_NM, NMSPC_CD, DESC_TXT, KIM_TYP_ID, ACTV_IND, LAST_UPDT_DT )
VALUES( KRIM_ROLE_ID_S.NEXTVAL, SYS_GUID(), 1, 'IRB Online Reviewer', 'KC-PROTOCOL', 'Online Reviewers', (SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KC-WKFLW' AND NM = 'Derived Role: IRB Online Reviewer'), 'Y', sysdate );

INSERT INTO KRIM_ROLE_T (ROLE_ID, OBJ_ID, VER_NBR, ROLE_NM, NMSPC_CD, DESC_TXT, KIM_TYP_ID, ACTV_IND, LAST_UPDT_DT) 
VALUES (KRIM_ROLE_ID_S.NEXTVAL, SYS_GUID(), 1, 'Protocol Unassigned', 'KC-PROTOCOL', 'Protocol Unassigned - no permissions', (SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'Unit'), 'Y', sysdate);

COMMIT;