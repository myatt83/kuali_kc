 CREATE TABLE SPONSOR 
   (	SPONSOR_CODE CHAR(6) constraint SPONSOR_N1 NOT NULL ENABLE, 
	SPONSOR_NAME VARCHAR2(60) constraint SPONSOR_N2 NOT NULL ENABLE, 
	ACRONYM VARCHAR2(10), 
	SPONSOR_TYPE_CODE VARCHAR2(3) constraint SPONSOR_N3 NOT NULL ENABLE, 
	DUN_AND_BRADSTREET_NUMBER VARCHAR2(20), 
	DUNS_PLUS_FOUR_NUMBER VARCHAR2(20), 
	DODAC_NUMBER VARCHAR2(20), 
	CAGE_NUMBER VARCHAR2(20), 
	POSTAL_CODE VARCHAR2(15), 
	STATE VARCHAR2(30), 
	COUNTRY_CODE CHAR(3), 
	ROLODEX_ID NUMBER(6,0) constraint SPONSOR_N4 NOT NULL ENABLE, 
	AUDIT_REPORT_SENT_FOR_FY CHAR(4), 
	OWNED_BY_UNIT VARCHAR2(8) constraint SPONSOR_N5 NOT NULL ENABLE, 
	CREATE_USER VARCHAR2(60) constraint SPONSOR_N6 NOT NULL ENABLE, 
	UPDATE_TIMESTAMP DATE constraint SPONSOR_N7 NOT NULL ENABLE, 
	UPDATE_USER VARCHAR2(60) constraint SPONSOR_N8 NOT NULL ENABLE, 
	 VER_NBR NUMBER(8,0) DEFAULT 1  constraint  SPONSOR_N9  NOT NULL ENABLE,
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID()  constraint  SPONSORN_10  NOT NULL ENABLE,
	CONSTRAINT PK_SPONSOR_KRA PRIMARY KEY (SPONSOR_CODE) ENABLE
) 
/

 ALTER TABLE SPONSOR ADD (CONSTRAINT FK_SPONSOR_COUNTRY_CODE_KRA FOREIGN KEY (COUNTRY_CODE)
	  REFERENCES COUNTRY_CODE (COUNTRY_CODE) ) 
/

 ALTER TABLE SPONSOR ADD (CONSTRAINT FK_SPONSOR_ROLODEX_KRA FOREIGN KEY (ROLODEX_ID)
	  REFERENCES ROLODEX (ROLODEX_ID) ) 
/

 ALTER TABLE SPONSOR ADD (CONSTRAINT FK_SPONSOR_TYPE_CODE_KRA FOREIGN KEY (SPONSOR_TYPE_CODE)
	  REFERENCES SPONSOR_TYPE (SPONSOR_TYPE_CODE) ) 
/