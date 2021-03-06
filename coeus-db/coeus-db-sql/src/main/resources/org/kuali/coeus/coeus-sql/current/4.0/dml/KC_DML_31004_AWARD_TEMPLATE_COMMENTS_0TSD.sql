INSERT INTO AWARD_TEMPLATE_COMMENTS (AWARD_TEMPLATE_COMMENTS_ID,AWARD_TEMPLATE_CODE,COMMENT_TYPE_CODE,CHECKLIST_PRINT_FLAG,COMMENTS,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQ_AWARD_TEMPLATE.NEXTVAL,(SELECT AWARD_TEMPLATE_CODE FROM AWARD_TEMPLATE WHERE DESCRIPTION = 'Test Sponsor Template' AND STATUS_CODE = (SELECT STATUS_CODE FROM AWARD_STATUS WHERE DESCRIPTION = 'Active')),(SELECT COMMENT_TYPE_CODE FROM COMMENT_TYPE WHERE DESCRIPTION = 'Invoice Instructions'),'N','Invoicing remarks from sync to Test Sponsor Template.','admin',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_TEMPLATE_COMMENTS (AWARD_TEMPLATE_COMMENTS_ID,AWARD_TEMPLATE_CODE,COMMENT_TYPE_CODE,CHECKLIST_PRINT_FLAG,COMMENTS,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQ_AWARD_TEMPLATE.NEXTVAL,(SELECT AWARD_TEMPLATE_CODE FROM AWARD_TEMPLATE WHERE DESCRIPTION = 'Test Sponsor Template' AND STATUS_CODE = (SELECT STATUS_CODE FROM AWARD_STATUS WHERE DESCRIPTION = 'Active')),(SELECT COMMENT_TYPE_CODE FROM COMMENT_TYPE WHERE DESCRIPTION = 'General Comments'),'N','General remarks from sync to Test Sponsor Template.','admin',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_TEMPLATE_COMMENTS (AWARD_TEMPLATE_COMMENTS_ID,AWARD_TEMPLATE_CODE,COMMENT_TYPE_CODE,CHECKLIST_PRINT_FLAG,COMMENTS,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQ_AWARD_TEMPLATE.NEXTVAL,(SELECT AWARD_TEMPLATE_CODE FROM AWARD_TEMPLATE WHERE DESCRIPTION = 'Test Sponsor Template' AND STATUS_CODE = (SELECT STATUS_CODE FROM AWARD_STATUS WHERE DESCRIPTION = 'Active')),(SELECT COMMENT_TYPE_CODE FROM COMMENT_TYPE WHERE DESCRIPTION = 'Fiscal Report Comments'),'N','Financial Rpt remarks from sync to Test Sponsor Template.','admin',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_TEMPLATE_COMMENTS (AWARD_TEMPLATE_COMMENTS_ID,AWARD_TEMPLATE_CODE,COMMENT_TYPE_CODE,CHECKLIST_PRINT_FLAG,COMMENTS,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQ_AWARD_TEMPLATE.NEXTVAL,(SELECT AWARD_TEMPLATE_CODE FROM AWARD_TEMPLATE WHERE DESCRIPTION = 'Test Sponsor Template' AND STATUS_CODE = (SELECT STATUS_CODE FROM AWARD_STATUS WHERE DESCRIPTION = 'Active')),(SELECT COMMENT_TYPE_CODE FROM COMMENT_TYPE WHERE DESCRIPTION = 'Intellectual Property Comments'),'N','IP remarks from sync to Test Sponsor Template.','admin',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_TEMPLATE_COMMENTS (AWARD_TEMPLATE_COMMENTS_ID,AWARD_TEMPLATE_CODE,COMMENT_TYPE_CODE,CHECKLIST_PRINT_FLAG,COMMENTS,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQ_AWARD_TEMPLATE.NEXTVAL,(SELECT AWARD_TEMPLATE_CODE FROM AWARD_TEMPLATE WHERE DESCRIPTION = 'Test Sponsor Template' AND STATUS_CODE = (SELECT STATUS_CODE FROM AWARD_STATUS WHERE DESCRIPTION = 'Active')),(SELECT COMMENT_TYPE_CODE FROM COMMENT_TYPE WHERE DESCRIPTION = 'Procurement Comments'),'N','Procurement remarks from sync to Test Sponsor Template.','admin',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_TEMPLATE_COMMENTS (AWARD_TEMPLATE_COMMENTS_ID,AWARD_TEMPLATE_CODE,COMMENT_TYPE_CODE,CHECKLIST_PRINT_FLAG,COMMENTS,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQ_AWARD_TEMPLATE.NEXTVAL,(SELECT AWARD_TEMPLATE_CODE FROM AWARD_TEMPLATE WHERE DESCRIPTION = 'Test Sponsor Template' AND STATUS_CODE = (SELECT STATUS_CODE FROM AWARD_STATUS WHERE DESCRIPTION = 'Active')),(SELECT COMMENT_TYPE_CODE FROM COMMENT_TYPE WHERE DESCRIPTION = 'Property Comments'),'N','Property/Equipment remarks from sync to Test Sponsor Template.','admin',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_TEMPLATE_COMMENTS (AWARD_TEMPLATE_COMMENTS_ID,AWARD_TEMPLATE_CODE,COMMENT_TYPE_CODE,CHECKLIST_PRINT_FLAG,COMMENTS,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQ_AWARD_TEMPLATE.NEXTVAL,(SELECT AWARD_TEMPLATE_CODE FROM AWARD_TEMPLATE WHERE DESCRIPTION = 'Test Sponsor Template' AND STATUS_CODE = (SELECT STATUS_CODE FROM AWARD_STATUS WHERE DESCRIPTION = 'Active')),(SELECT COMMENT_TYPE_CODE FROM COMMENT_TYPE WHERE DESCRIPTION = 'Cost Sharing Comments'),'N','Cost sharing remarks from sync to Test Sponsor Template.','admin',SYSDATE,SYS_GUID(),0)
/
