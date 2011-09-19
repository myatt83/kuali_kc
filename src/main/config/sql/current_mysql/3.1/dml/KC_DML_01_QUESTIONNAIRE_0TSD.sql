DELIMITER /
INSERT INTO QUESTIONNAIRE(QUESTIONNAIRE_REF_ID,DOCUMENT_NUMBER,QUESTIONNAIRE_ID,SEQUENCE_NUMBER,NAME,DESCRIPTION,IS_FINAL,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES(1,(SELECT DOC_HDR_ID FROM KRNS_DOC_HDR_T WHERE FDOC_DESC = 'IRB Long V1'),10002,1,'IRB Long','IRB Long Questionnaire','Y','admin',NOW(),UUID(),1)
/
INSERT INTO QUESTIONNAIRE(QUESTIONNAIRE_REF_ID,DOCUMENT_NUMBER,QUESTIONNAIRE_ID,SEQUENCE_NUMBER,NAME,DESCRIPTION,IS_FINAL,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES(14,(SELECT DOC_HDR_ID FROM KRNS_DOC_HDR_T WHERE FDOC_DESC = 'IRB Short V1'),10003,1,'IRB Short','IRB Short Questionnaire','Y','admin',NOW(),UUID(),1)
/
INSERT INTO QUESTIONNAIRE(QUESTIONNAIRE_REF_ID,DOCUMENT_NUMBER,QUESTIONNAIRE_ID,SEQUENCE_NUMBER,NAME,DESCRIPTION,IS_FINAL,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES(18,(SELECT DOC_HDR_ID FROM KRNS_DOC_HDR_T WHERE FDOC_DESC = 'IRB Long V2'),10002,2,'IRB Long','IRB Long Questionnaire','Y','admin',NOW(),UUID(),1)
/
DELIMITER ;
