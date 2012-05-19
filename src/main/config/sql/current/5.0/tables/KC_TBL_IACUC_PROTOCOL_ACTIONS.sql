CREATE TABLE IACUC_PROTOCOL_ACTIONS (	
  	IACUC_PROTOCOL_ACTION_ID NUMBER(12,0), 
	PROTOCOL_NUMBER VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	SEQUENCE_NUMBER NUMBER(4,0) NOT NULL ENABLE, 
	SUBMISSION_NUMBER NUMBER(4,0), 
	ACTION_ID NUMBER(6,0) NOT NULL ENABLE, 
	PROTOCOL_ACTION_TYPE_CODE VARCHAR2(3 BYTE) NOT NULL ENABLE, 
	PROTOCOL_ID NUMBER(12,0) NOT NULL ENABLE, 
	SUBMISSION_ID_FK NUMBER(12,0), 
	COMMENTS VARCHAR2(2000 BYTE), 
	ACTION_DATE DATE, 
	UPDATE_TIMESTAMP DATE, 
	UPDATE_USER VARCHAR2(60 BYTE), 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL ENABLE, 
	ACTUAL_ACTION_DATE DATE, 
	OBJ_ID VARCHAR2(36 BYTE) NOT NULL ENABLE, 
	PREV_SUBMISSION_STATUS_CODE VARCHAR2(3 BYTE), 
	SUBMISSION_TYPE_CODE VARCHAR2(3 BYTE), 
	PREV_PROTOCOL_STATUS_CODE VARCHAR2(3 BYTE), 
	FOLLOWUP_ACTION_CODE VARCHAR2(3 BYTE)
)
/
ALTER TABLE IACUC_PROTOCOL_ACTIONS
ADD CONSTRAINT PK_IACUC_PROTOCOL_ACTIONS
PRIMARY KEY (IACUC_PROTOCOL_ACTION_ID)
/


