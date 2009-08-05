CREATE TABLE TRANSACTION_DETAILS (
    TRANSACTION_DETAIL_ID NUMBER (10) NOT NULL, 
    AWARD_NUMBER VARCHAR2 (12) NOT NULL, 
    SEQUENCE_NUMBER NUMBER (4) NOT NULL, 
    TRANSACTION_ID NUMBER (10) NOT NULL, 
    TNM_DOCUMENT_NUMBER VARCHAR2 (10) NOT NULL, 
    COMMENTS VARCHAR2 (200) , 
    SOURCE_AWARD_NUMBER VARCHAR2 (12) NOT NULL, 
    DESTINATION_AWARD_NUMBER VARCHAR2 (12) NOT NULL, 
    OBLIGATED_AMOUNT NUMBER (12, 2) , 
    ANTICIPATED_AMOUNT NUMBER (12, 2) , 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2 (60) NOT NULL, 
    VER_NBR NUMBER (8, 0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2 (36) DEFAULT SYS_GUID () NOT NULL) ;

ALTER TABLE TRANSACTION_DETAILS 
    ADD CONSTRAINT PK_TRANSACTION_DETAILS 
            PRIMARY KEY (TRANSACTION_DETAIL_ID) ;