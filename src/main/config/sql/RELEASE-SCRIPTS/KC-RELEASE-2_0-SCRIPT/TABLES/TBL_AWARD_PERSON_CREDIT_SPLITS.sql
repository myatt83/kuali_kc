CREATE TABLE AWARD_PERSON_CREDIT_SPLITS (
    AWARD_PERSON_CREDIT_SPLIT_ID number (22, 0) NOT NULL, 
    AWARD_PERSON_ID number (22, 0) NOT NULL, 
    INV_CREDIT_TYPE_CODE varchar2 (3) NOT NULL, 
    CREDIT decimal (5, 2) , 
    UPDATE_TIMESTAMP date NOT NULL, 
    UPDATE_USER varchar2 (60) NOT NULL, 
    VER_NBR decimal (8) NOT NULL, 
    OBJ_ID varchar2 (36) NOT NULL) ;

ALTER TABLE AWARD_PERSON_CREDIT_SPLITS 
    ADD CONSTRAINT PK_AWARD_PERSON_CREDIT_SPLIT 
            PRIMARY KEY (AWARD_PERSON_CREDIT_SPLIT_ID) ; 