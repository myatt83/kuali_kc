TRUNCATE TABLE PROPOSAL_LOG_STATUS DROP STORAGE
/
INSERT INTO PROPOSAL_LOG_STATUS (PROPOSAL_LOG_STATUS_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('1','Pending','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO PROPOSAL_LOG_STATUS (PROPOSAL_LOG_STATUS_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('2','Merged','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO PROPOSAL_LOG_STATUS (PROPOSAL_LOG_STATUS_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('3','Submitted','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO PROPOSAL_LOG_STATUS (PROPOSAL_LOG_STATUS_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('4','Void','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO PROPOSAL_LOG_STATUS (PROPOSAL_LOG_STATUS_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('5','Temporary','admin',SYSDATE,SYS_GUID(),1)
/
