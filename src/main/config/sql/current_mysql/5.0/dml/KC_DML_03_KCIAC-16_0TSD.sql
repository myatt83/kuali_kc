DELIMITER /
INSERT INTO SEQ_QUESTIONNAIRE_REF_ID VALUES(NULL)
/
INSERT INTO SEQ_QUESTIONNAIRE_ID VALUES(NULL)
/
INSERT INTO QUESTIONNAIRE(QUESTIONNAIRE_REF_ID,QUESTIONNAIRE_ID,NAME,DESCRIPTION,SEQUENCE_NUMBER,IS_FINAL,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_QUESTIONNAIRE_REF_ID),(SELECT (MAX(ID)) FROM SEQ_QUESTIONNAIRE_ID),'IACUC Long','IACUC Long Questionnaire',1,'Y','admin',NOW(),UUID(),1)
/
INSERT INTO SEQ_QUESTIONNAIRE_REF_ID VALUES(NULL)
/
INSERT INTO SEQ_QUESTIONNAIRE_ID VALUES(NULL)
/
INSERT INTO QUESTIONNAIRE(QUESTIONNAIRE_REF_ID,QUESTIONNAIRE_ID,NAME,DESCRIPTION,SEQUENCE_NUMBER,IS_FINAL,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_QUESTIONNAIRE_REF_ID),(SELECT (MAX(ID)) FROM SEQ_QUESTIONNAIRE_ID),'IACUC Short','IACUC Short Questionnaire',1,'Y','admin',NOW(),UUID(),1)
/
INSERT INTO SEQ_QUESTIONNAIRE_REF_ID VALUES(NULL)
/
INSERT INTO QUESTIONNAIRE_USAGE(QUESTIONNAIRE_USAGE_ID,QUESTIONNAIRE_REF_ID_FK,MODULE_ITEM_CODE,MODULE_SUB_ITEM_CODE,RULE_ID,QUESTIONNAIRE_LABEL,QUESTIONNAIRE_SEQUENCE_NUMBER,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_QUESTIONNAIRE_REF_ID),(SELECT QUESTIONNAIRE_REF_ID FROM QUESTIONNAIRE WHERE NAME = 'IACUC Long' AND SEQUENCE_NUMBER = 1),(SELECT MODULE_CODE FROM COEUS_MODULE WHERE DESCRIPTION = 'IACUC Protocol'),0,0,'IACUC Long Questionnaire',1,'admin',NOW(),UUID(),1)
/
INSERT INTO SEQ_QUESTIONNAIRE_REF_ID VALUES(NULL)
/
INSERT INTO QUESTIONNAIRE_USAGE(QUESTIONNAIRE_USAGE_ID,QUESTIONNAIRE_REF_ID_FK,MODULE_ITEM_CODE,MODULE_SUB_ITEM_CODE,RULE_ID,QUESTIONNAIRE_LABEL,QUESTIONNAIRE_SEQUENCE_NUMBER,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_QUESTIONNAIRE_REF_ID),(SELECT QUESTIONNAIRE_REF_ID FROM QUESTIONNAIRE WHERE NAME = 'IACUC Short' AND SEQUENCE_NUMBER = 1),(SELECT MODULE_CODE FROM COEUS_MODULE WHERE DESCRIPTION = 'IACUC Protocol'),0,0,'IACUC Short Questionnaire',1,'admin',NOW(),UUID(),1)
/
INSERT INTO SEQ_QUESTIONNAIRE_REF_ID VALUES(NULL)
/
INSERT INTO QUESTIONNAIRE_QUESTIONS (CONDITION_FLAG,OBJ_ID,PARENT_QUESTION_NUMBER,QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_NUMBER,QUESTION_REF_ID_FK,QUESTION_SEQ_NUMBER,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
VALUES ('N',UUID(),0,(SELECT (MAX(ID)) FROM SEQ_QUESTIONNAIRE_REF_ID),(SELECT QUESTIONNAIRE_REF_ID from QUESTIONNAIRE WHERE NAME='IACUC Long'),1,1,1,NOW(),'admin',1)
/
INSERT INTO SEQ_QUESTIONNAIRE_REF_ID VALUES(NULL)
/
INSERT INTO QUESTIONNAIRE_QUESTIONS (CONDITION_FLAG,OBJ_ID,PARENT_QUESTION_NUMBER,QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_NUMBER,QUESTION_REF_ID_FK,QUESTION_SEQ_NUMBER,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
VALUES ('N',UUID(),0,(SELECT (MAX(ID)) FROM SEQ_QUESTIONNAIRE_REF_ID),(SELECT QUESTIONNAIRE_REF_ID from QUESTIONNAIRE WHERE NAME='IACUC Long'),2,33,2,NOW(),'admin',1)
/
INSERT INTO SEQ_QUESTIONNAIRE_REF_ID VALUES(NULL)
/
INSERT INTO QUESTIONNAIRE_QUESTIONS (CONDITION_FLAG,OBJ_ID,PARENT_QUESTION_NUMBER,QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_NUMBER,QUESTION_REF_ID_FK,QUESTION_SEQ_NUMBER,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
VALUES ('N',UUID(),0,(SELECT (MAX(ID)) FROM SEQ_QUESTIONNAIRE_REF_ID),(SELECT QUESTIONNAIRE_REF_ID from QUESTIONNAIRE WHERE NAME='IACUC Long'),3,85,3,NOW(),'admin',1)
/
INSERT INTO SEQ_QUESTIONNAIRE_REF_ID VALUES(NULL)
/
INSERT INTO QUESTIONNAIRE_QUESTIONS (CONDITION_FLAG,OBJ_ID,PARENT_QUESTION_NUMBER,QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_NUMBER,QUESTION_REF_ID_FK,QUESTION_SEQ_NUMBER,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
VALUES ('N',UUID(),0,(SELECT (MAX(ID)) FROM SEQ_QUESTIONNAIRE_REF_ID),(SELECT QUESTIONNAIRE_REF_ID from QUESTIONNAIRE WHERE NAME='IACUC Long'),4,89,4,NOW(),'admin',1)
/
INSERT INTO SEQ_QUESTIONNAIRE_REF_ID VALUES(NULL)
/
INSERT INTO QUESTIONNAIRE_QUESTIONS (CONDITION_FLAG,OBJ_ID,PARENT_QUESTION_NUMBER,QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_NUMBER,QUESTION_REF_ID_FK,QUESTION_SEQ_NUMBER,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
VALUES ('N',UUID(),0,(SELECT (MAX(ID)) FROM SEQ_QUESTIONNAIRE_REF_ID),(SELECT QUESTIONNAIRE_REF_ID from QUESTIONNAIRE WHERE NAME='IACUC Long'),5,301,5,NOW(),'admin',1)
/
INSERT INTO SEQ_QUESTIONNAIRE_REF_ID VALUES(NULL)
/
INSERT INTO QUESTIONNAIRE_QUESTIONS (CONDITION_FLAG,OBJ_ID,PARENT_QUESTION_NUMBER,QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_NUMBER,QUESTION_REF_ID_FK,QUESTION_SEQ_NUMBER,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
VALUES ('N',UUID(),0,(SELECT (MAX(ID)) FROM SEQ_QUESTIONNAIRE_REF_ID),(SELECT QUESTIONNAIRE_REF_ID from QUESTIONNAIRE WHERE NAME='IACUC Long'),6,309,6,NOW(),'admin',1)
/
INSERT INTO SEQ_QUESTIONNAIRE_REF_ID VALUES(NULL)
/
INSERT INTO QUESTIONNAIRE_QUESTIONS (CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,OBJ_ID,PARENT_QUESTION_NUMBER,QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_NUMBER,QUESTION_REF_ID_FK,QUESTION_SEQ_NUMBER,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
VALUES ('N','4','Y',UUID(),1,(SELECT (MAX(ID)) FROM SEQ_QUESTIONNAIRE_REF_ID),(SELECT QUESTIONNAIRE_REF_ID from QUESTIONNAIRE WHERE NAME='IACUC Long'),7,9,1,NOW(),'admin',1)
/
INSERT INTO SEQ_QUESTIONNAIRE_REF_ID VALUES(NULL)
/
INSERT INTO QUESTIONNAIRE_QUESTIONS (CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,OBJ_ID,PARENT_QUESTION_NUMBER,QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_NUMBER,QUESTION_REF_ID_FK,QUESTION_SEQ_NUMBER,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
VALUES ('N','4','Y',UUID(),1,(SELECT (MAX(ID)) FROM SEQ_QUESTIONNAIRE_REF_ID),(SELECT QUESTIONNAIRE_REF_ID from QUESTIONNAIRE WHERE NAME='IACUC Long'),8,33,2,NOW(),'admin',1)
/
INSERT INTO SEQ_QUESTIONNAIRE_REF_ID VALUES(NULL)
/
INSERT INTO QUESTIONNAIRE_QUESTIONS (CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,OBJ_ID,PARENT_QUESTION_NUMBER,QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_NUMBER,QUESTION_REF_ID_FK,QUESTION_SEQ_NUMBER,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
VALUES ('N','8','5',UUID(),3,(SELECT (MAX(ID)) FROM SEQ_QUESTIONNAIRE_REF_ID),(SELECT QUESTIONNAIRE_REF_ID from QUESTIONNAIRE WHERE NAME='IACUC Long'),9,37,1,NOW(),'admin',1)
/
INSERT INTO SEQ_QUESTIONNAIRE_REF_ID VALUES(NULL)
/
INSERT INTO QUESTIONNAIRE_QUESTIONS (CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,OBJ_ID,PARENT_QUESTION_NUMBER,QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_NUMBER,QUESTION_REF_ID_FK,QUESTION_SEQ_NUMBER,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
VALUES ('Y','4','Arizona',UUID(),5,(SELECT (MAX(ID)) FROM SEQ_QUESTIONNAIRE_REF_ID),(SELECT QUESTIONNAIRE_REF_ID from QUESTIONNAIRE WHERE NAME='IACUC Long'),10,305,1,NOW(),'admin',1)
/
INSERT INTO SEQ_QUESTIONNAIRE_REF_ID VALUES(NULL)
/
INSERT INTO QUESTIONNAIRE_QUESTIONS (CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,OBJ_ID,PARENT_QUESTION_NUMBER,QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_NUMBER,QUESTION_REF_ID_FK,QUESTION_SEQ_NUMBER,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
VALUES ('N','11','01/01/2010',UUID(),6,(SELECT (MAX(ID)) FROM SEQ_QUESTIONNAIRE_REF_ID),(SELECT QUESTIONNAIRE_REF_ID from QUESTIONNAIRE WHERE NAME='IACUC Long'),11,313,1,NOW(),'admin',1)
/
INSERT INTO SEQ_QUESTIONNAIRE_REF_ID VALUES(NULL)
/
INSERT INTO QUESTIONNAIRE_QUESTIONS (CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,OBJ_ID,PARENT_QUESTION_NUMBER,QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_NUMBER,QUESTION_REF_ID_FK,QUESTION_SEQ_NUMBER,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
VALUES ('N','1','N',UUID(),7,(SELECT (MAX(ID)) FROM SEQ_QUESTIONNAIRE_REF_ID),(SELECT QUESTIONNAIRE_REF_ID from QUESTIONNAIRE WHERE NAME='IACUC Long'),12,69,1,NOW(),'admin',1)
/
INSERT INTO SEQ_QUESTIONNAIRE_REF_ID VALUES(NULL)
/
INSERT INTO QUESTIONNAIRE_QUESTIONS (CONDITION_FLAG,OBJ_ID,PARENT_QUESTION_NUMBER,QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_NUMBER,QUESTION_REF_ID_FK,QUESTION_SEQ_NUMBER,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
VALUES ('N',UUID(),0,(SELECT (MAX(ID)) FROM SEQ_QUESTIONNAIRE_REF_ID),(SELECT QUESTIONNAIRE_REF_ID from QUESTIONNAIRE WHERE NAME='IACUC Short'),1,1,1,NOW(),'admin',1)
/
INSERT INTO SEQ_QUESTIONNAIRE_REF_ID VALUES(NULL)
/
INSERT INTO QUESTIONNAIRE_QUESTIONS (CONDITION_FLAG,OBJ_ID,PARENT_QUESTION_NUMBER,QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_NUMBER,QUESTION_REF_ID_FK,QUESTION_SEQ_NUMBER,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
VALUES ('N',UUID(),0,(SELECT (MAX(ID)) FROM SEQ_QUESTIONNAIRE_REF_ID),(SELECT QUESTIONNAIRE_REF_ID from QUESTIONNAIRE WHERE NAME='IACUC Short'),2,69,2,NOW(),'admin',1)
/
INSERT INTO SEQ_QUESTIONNAIRE_REF_ID VALUES(NULL)
/
INSERT INTO QUESTIONNAIRE_QUESTIONS (CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,OBJ_ID,PARENT_QUESTION_NUMBER,QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_NUMBER,QUESTION_REF_ID_FK,QUESTION_SEQ_NUMBER,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
VALUES ('Y','1','GOOG',UUID(),2,(SELECT (MAX(ID)) FROM SEQ_QUESTIONNAIRE_REF_ID),(SELECT QUESTIONNAIRE_REF_ID from QUESTIONNAIRE WHERE NAME='IACUC Short'),3,17,1,NOW(),'admin',1)
/
DELIMITER ;
