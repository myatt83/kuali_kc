CREATE TABLE EPS_PROP_CONG_DISTRICT (
    PROPOSAL_NUMBER varchar2 (8) NOT NULL, 
    SITE_NUMBER decimal (3) NOT NULL, 
    CONG_DISTRICT varchar2 (50) NOT NULL, 
    UPDATE_TIMESTAMP date NOT NULL, 
    UPDATE_USER varchar2 (8) NOT NULL) ;

ALTER TABLE EPS_PROP_CONG_DISTRICT 
    ADD CONSTRAINT PK_EPS_PROP_CONG_DISTRICT 
            PRIMARY KEY (PROPOSAL_NUMBER, SITE_NUMBER, CONG_DISTRICT) ;