drop table award;

CREATE TABLE AWARD(
	AWARD_ID NUMBER NOT NULL,
	DOCUMENT_NUMBER VARCHAR2(10) NOT NULL,
	AWARD_NUMBER VARCHAR2(10) NOT NULL,
	SEQUENCE_NUMBER NUMBER(4) NOT NULL,
	SPONSOR_CODE VARCHAR2(6) NOT NULL,
	STATUS_CODE NUMBER(3) NOT NULL,
	TEMPLATE_CODE NUMBER(5),
	ACCOUNT_NUMBER VARCHAR2(7),
	APPRVD_EQUIPMENT_INDICATOR VARCHAR2(2) NOT NULL,
	APPRVD_FOREIGN_TRIP_INDICATOR VARCHAR2(2) NOT NULL,
	APPRVD_SUBCONTRACT_INDICATOR VARCHAR2(2) NOT NULL,
	AWARD_EFFECTIVE_DATE DATE,
	AWARD_EXECUTION_DATE DATE,
	BEGIN_DATE DATE,
	COST_SHARING_INDICATOR VARCHAR2(2) NOT NULL,
	IDC_INDICATOR VARCHAR2(2) NOT NULL,
	MODIFICATION_NUMBER VARCHAR2(50),
	NSF_CODE VARCHAR2(15),
	PAYMENT_SCHEDULE_INDICATOR VARCHAR2(2) NOT NULL,
	SCIENCE_CODE_INDICATOR VARCHAR2(2) NOT NULL,
	SPECIAL_REVIEW_INDICATOR VARCHAR2(2) NOT NULL,
	SPONSOR_AWARD_NUMBER VARCHAR2(70),
	TRANSFER_SPONSOR_INDICATOR VARCHAR2(2) NOT NULL,
	ACCOUNT_TYPE_CODE NUMBER(3),
	ACTIVITY_TYPE_CODE NUMBER(3) NOT NULL, 
	AWARD_TYPE_CODE NUMBER(3) NOT NULL, 
	PRIME_SPONSOR_CODE VARCHAR2(6), 
	BASIS_OF_PAYMENT_CODE NUMBER(3) NOT NULL,
	CFDA_NUMBER VARCHAR2(6),
	COMPETING_RENEWAL_PRPSL_DUE NUMBER(3),
	DFAFS_NUMBER VARCHAR2(20),
	FINAL_INVOICE_DUE NUMBER(3),
	INVOICE_NUMBER_OF_COPIES NUMBER(1),
	METHOD_OF_PAYMENT_CODE NUMBER(3) NOT NULL,
	NON_COMPETING_CONT_PRPSL_DUE NUMBER(3),
	PAYMENT_INVOICE_FREQ_CODE NUMBER(3),
	PRE_AWARD_AUTHORIZED_AMOUNT NUMBER(12,2),
	PRE_AWARD_EFFECTIVE_DATE DATE,
	PROCUREMENT_PRIORITY_CODE VARCHAR2(6),
	PROPOSAL_NUMBER VARCHAR2(8),
	SPECIAL_EB_RATE_OFF_CAMPUS NUMBER(5,2),
	SPECIAL_EB_RATE_ON_CAMPUS NUMBER(5,2),
	SUB_PLAN_FLAG VARCHAR2(1),
	TITLE VARCHAR2(200) NOT NULL,
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL,
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID()  NOT NULL,
	UPDATE_TIMESTAMP DATE NOT NULL,
	UPDATE_USER VARCHAR2(10) NOT NULL)
/

CREATE TABLE AWARD_DOCUMENT(
	DOCUMENT_NUMBER VARCHAR2(10) NOT NULL,
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL,
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID()  NOT NULL,
	UPDATE_TIMESTAMP DATE NOT NULL,
	UPDATE_USER VARCHAR2(10) NOT NULL)
/

CREATE TABLE PROTOCOL_TYPE ( 
	PROTOCOL_TYPE_CODE VARCHAR2(3) NOT NULL, 
	DESCRIPTION VARCHAR2(200) NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL,
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL) 
/

CREATE TABLE PROTOCOL_STATUS ( 
	PROTOCOL_STATUS_CODE VARCHAR2(3) NOT NULL, 
	DESCRIPTION VARCHAR2(200) NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL,
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL) 
/

CREATE TABLE PROTOCOL ( 
	PROTOCOL_ID NUMBER(12,0) NOT NULL,
	DOCUMENT_NUMBER NUMBER(10) NOT NULL,
	PROTOCOL_NUMBER VARCHAR2(20) NOT NULL, 
	SEQUENCE_NUMBER NUMBER(4,0) NOT NULL, 
	PROTOCOL_TYPE_CODE VARCHAR2(3) NOT NULL, 
	PROTOCOL_STATUS_CODE VARCHAR2(3) NOT NULL, 
	TITLE VARCHAR2(2000) NOT NULL, 
	DESCRIPTION VARCHAR2(2000), 
	APPLICATION_DATE DATE NOT NULL, 
	APPROVAL_DATE DATE, 
	EXPIRATION_DATE DATE, 
	LAST_APPROVAL_DATE DATE, 
	FDA_APPLICATION_NUMBER VARCHAR2(15), 
	REFERENCE_NUMBER_1 VARCHAR2(50), 
	REFERENCE_NUMBER_2 VARCHAR2(50), 
	IS_BILLABLE VARCHAR2(1) DEFAULT 'n' NOT NULL, 
	SPECIAL_REVIEW_INDICATOR VARCHAR2(2) DEFAULT 'n0' NOT NULL, 
	VULNERABLE_SUBJECT_INDICATOR VARCHAR2(2) DEFAULT 'n0' NOT NULL, 
	KEY_STUDY_PERSON_INDICATOR VARCHAR2(2) DEFAULT 'n0' NOT NULL, 
	FUNDING_SOURCE_INDICATOR VARCHAR2(2) DEFAULT 'n0' NOT NULL, 
	CORRESPONDENT_INDICATOR VARCHAR2(2) DEFAULT 'n0' NOT NULL, 
	REFERENCE_INDICATOR VARCHAR2(2) DEFAULT 'n0' NOT NULL, 
	RELATED_PROJECTS_INDICATOR VARCHAR2(2) DEFAULT 'n0' NOT NULL, 
	CREATE_TIMESTAMP DATE, 
	CREATE_USER VARCHAR2(8), 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL,
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL) 
/

CREATE TABLE AWARD_IDC_RATE ( 
	AWARD_IDC_RATE_ID NUMBER(12,0) NOT NULL, 
	AWARD_ID NUMBER(22,0) NOT NULL,	 	
	APPLICABLE_IDC_RATE NUMBER(5,2) NOT NULL, 
	IDC_RATE_TYPE_CODE NUMBER(3,0) NOT NULL, 
	FISCAL_YEAR VARCHAR2(4) NOT NULL, 
	ON_CAMPUS_FLAG VARCHAR2(1) NOT NULL, 
	UNDERRECOVERY_OF_IDC NUMBER(12,2), 
	SOURCE_ACCOUNT VARCHAR2(7) NULL, 
	DESTINATION_ACCOUNT VARCHAR2(7) NULL, 
	START_DATE DATE NOT NULL, 
	END_DATE DATE, 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL,
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL)
/

CREATE TABLE IDC_RATE_TYPE ( 	
	IDC_RATE_TYPE_CODE NUMBER(3,0) NOT NULL, 
	DESCRIPTION VARCHAR2(200) NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL,
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL)
/

CREATE TABLE VULNERABLE_SUBJECT_TYPE ( 
	VULNERABLE_SUBJECT_TYPE_CODE NUMBER(3,0) NOT NULL, 
	DESCRIPTION VARCHAR2(200) NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL,
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL) 
;

CREATE TABLE PROTOCOL_VULNERABLE_SUB ( 
    PROTOCOL_ID NUMBER(12,0) NOT NULL,
    PROTOCOL_NUMBER VARCHAR2(20) NOT NULL,  
    SEQUENCE_NUMBER NUMBER(4,0) NOT NULL, 
    VULNERABLE_SUBJECT_TYPE_CODE NUMBER(3,0) NOT NULL, 
    SUBJECT_COUNT NUMBER(6,0), 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2(60) NOT NULL,
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL) 
;

CREATE TABLE VALID_RATES ( 
	VALID_RATES_ID NUMBER(12,0) NOT NULL, 
	ON_CAMPUS_RATE NUMBER(5,2) NOT NULL, 
	OFF_CAMPUS_RATE NUMBER(5,2) NOT NULL, 
	RATE_CLASS_TYPE VARCHAR2(1) NOT NULL, 
	ADJUSTMENT_KEY VARCHAR2(6) NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL)
/

CREATE TABLE "RESEARCH_AREAS" 
   (	"RESEARCH_AREA_CODE" VARCHAR2(8) constraint RESEARCH_AREASN1 NOT NULL ENABLE, 
	"PARENT_RESEARCH_AREA_CODE" VARCHAR2(8) constraint RESEARCH_AREASN2 NOT NULL ENABLE, 
	"HAS_CHILDREN_FLAG" VARCHAR2(1) constraint RESEARCH_AREASN3 NOT NULL ENABLE, 
	"DESCRIPTION" VARCHAR2(200) constraint RESEARCH_AREASN4 NOT NULL ENABLE, 
	"UPDATE_TIMESTAMP" DATE constraint RESEARCH_AREASN5 NOT NULL ENABLE, 
	"UPDATE_USER" VARCHAR2(8) constraint RESEARCH_AREASN6 NOT NULL ENABLE, 
	 "VER_NBR" NUMBER(8,0) DEFAULT 1  constraint  RESEARCH_AREASN7  NOT NULL ENABLE,
	"OBJ_ID" VARCHAR2(36) DEFAULT SYS_GUID()  constraint  RESEARCH_AREASN8  NOT NULL ENABLE,
	CONSTRAINT "PK_RESEARCH_AREAS_KRA" PRIMARY KEY ("RESEARCH_AREA_CODE") ENABLE
)
/

CREATE TABLE PROTOCOL_RESEARCH_AREAS (
  PROTOCOL_ID NUMBER(12,0) NOT NULL,
  PROTOCOL_NUMBER     varchar2 (20)  NOT null,
  SEQUENCE_NUMBER     number (4, 0)    NOT null,
  RESEARCH_AREA_CODE  varchar2 (8)  NOT null,
  UPDATE_TIMESTAMP DATE NOT NULL, 
  UPDATE_USER VARCHAR2(60) NOT NULL,
  VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
  OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL)
/

CREATE TABLE RISK_LEVEL ( 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
	RISK_LEVEL_CODE NUMBER(3,0) NOT NULL, 
	DESCRIPTION VARCHAR2(200), 
	UPDATE_TIMESTAMP DATE, 
	UPDATE_USER VARCHAR2(60))
/

CREATE TABLE PROTOCOL_RISK_LEVELS ( 
	PROTOCOL_RISK_LEVELS_ID NUMBER(12,0) NOT NULL, 
	PROTOCOL_ID NUMBER(12,0) NOT NULL, 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
	PROTOCOL_NUMBER VARCHAR2(20) NOT NULL, 
	SEQUENCE_NUMBER NUMBER(4,0) NOT NULL, 
	RISK_LEVEL_CODE NUMBER(3,0) NOT NULL, 
	COMMENTS VARCHAR2(2000), 
	DATE_ASSIGNED DATE NOT NULL, 
	DATE_UPDATED DATE, 
	STATUS CHAR(1) NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL)
/

