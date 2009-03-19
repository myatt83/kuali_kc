CREATE TABLE ACCOUNT_TYPE ( 
	ACCOUNT_TYPE_CODE NUMBER(3,0) NOT NULL, 
	DESCRIPTION VARCHAR2(200) NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL, 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);
	
CREATE TABLE AFFILIATION_TYPE ( 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
	AFFILIATION_TYPE_CODE NUMBER(3,0) NOT NULL, 
	DESCRIPTION VARCHAR2(200) NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL);

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
	BASIS_OF_PAYMENT_CODE NUMBER(3),
	CFDA_NUMBER VARCHAR2(6),
	COMPETING_RENEWAL_PRPSL_DUE NUMBER(3),
	DFAFS_NUMBER VARCHAR2(20),
	FINAL_INVOICE_DUE NUMBER(3),
	INVOICE_NUMBER_OF_COPIES NUMBER(1),
	METHOD_OF_PAYMENT_CODE NUMBER(3),
	NON_COMPETING_CONT_PRPSL_DUE NUMBER(3),
	PAYMENT_INVOICE_FREQ_CODE NUMBER(3),
	PRE_AWARD_AUTHORIZED_AMOUNT NUMBER(12,2),
	PRE_AWARD_EFFECTIVE_DATE DATE,
	PRE_AWARD_IN_AUTHORIZED_AMOUNT   NUMBER(12,2),
    PRE_AWARD_INST_EFFECTIVE_DATE      DATE,
	PROCUREMENT_PRIORITY_CODE VARCHAR2(6),
	PROPOSAL_NUMBER VARCHAR2(8),
	SPECIAL_EB_RATE_OFF_CAMPUS NUMBER(5,2),
	SPECIAL_EB_RATE_ON_CAMPUS NUMBER(5,2),
	SUB_PLAN_FLAG VARCHAR2(1),
	TITLE VARCHAR2(200) NOT NULL,
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL,
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID()  NOT NULL,
	UPDATE_TIMESTAMP DATE NOT NULL,
	UPDATE_USER VARCHAR2(10) NOT NULL);

CREATE TABLE AWARD_APPROVED_EQUIPMENT (
   AWARD_APPROVED_EQUIPMENT_ID NUMBER(22,0) NOT NULL,
   AWARD_ID NUMBER(22,0) NOT NULL,
   AWARD_NUMBER varchar2(10) NOT NULL,
   SEQUENCE_NUMBER NUMBER(4) NOT NULL,
   ITEM varchar2(100) NOT NULL,
   VENDOR varchar2(50),
   MODEL varchar2(50),
   AMOUNT NUMBER(12,2) NOT NULL,
   UPDATE_TIMESTAMP date NOT NULL,
   UPDATE_USER varchar2(60) NOT NULL,
   VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL,
   OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL
);

CREATE TABLE AWARD_APPROVED_FOREIGN_TRAVEL (
   AWARD_APPR_FORN_TRAVEL_ID NUMBER(22,0) NOT NULL,
   AWARD_ID NUMBER(22,0) NOT NULL,
   AWARD_NUMBER varchar2(10) NOT NULL,
   SEQUENCE_NUMBER NUMBER(4) NOT NULL,
   TRAVELER_ID VARCHAR2(9) NOT NULL,
   TRAVELER_NAME varchar2(90),
   DESTINATION varchar2(30) NOT NULL,
   START_DATE DATE NOT NULL,
   END_DATE DATE,
   AMOUNT NUMBER(12,2),
   UPDATE_TIMESTAMP date NOT NULL,
   UPDATE_USER varchar2(60) NOT NULL,
   VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL,
   OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL
);

CREATE TABLE AWARD_APPROVED_SUBAWARDS ( 
	AWARD_APPROVED_SUBAWARD_ID	NUMBER(8,0),
	AWARD_ID					NUMBER,
	AWARD_NUMBER				VARCHAR2(10),
	SEQUENCE_NUMBER				NUMBER(8,0),
	ORGANIZATION_NAME			VARCHAR2(60),
	AMOUNT						NUMBER(12,2),
    UPDATE_TIMESTAMP       		DATE,
    UPDATE_USER            		VARCHAR2(60),
    VER_NBR 					NUMBER(8,0) DEFAULT 1,
	OBJ_ID 						VARCHAR2(36) DEFAULT SYS_GUID()
);

CREATE TABLE AWARD_BASIS_OF_PAYMENT ( 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
	BASIS_OF_PAYMENT_CODE VARCHAR2(3) NOT NULL, 
	DESCRIPTION VARCHAR2(200) NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL);

CREATE TABLE AWARD_COMMENT ( 
	AWARD_COMMENT_ID			NUMBER(8,0),
	AWARD_ID					NUMBER,
	AWARD_NUMBER				VARCHAR2(10),
	SEQUENCE_NUMBER				NUMBER(8,0),
	COMMENT_TYPE_CODE			VARCHAR2(3),
	CHECKLIST_PRINT_FLAG		VARCHAR2(1),
	COMMENTS					CLOB,
    UPDATE_TIMESTAMP       		DATE,
    UPDATE_USER            		VARCHAR2(60),
    VER_NBR 					NUMBER(8,0) DEFAULT 1,
	OBJ_ID 						VARCHAR2(36) DEFAULT SYS_GUID()
);

CREATE TABLE AWARD_COST_SHARE ( 
	AWARD_COST_SHARE_ID		NUMBER(8,0),
    AWARD_ID       			NUMBER,
    AWARD_NUMBER			VARCHAR2(10),
    SEQUENCE_NUMBER        	NUMBER(8,0),
    FISCAL_YEAR            	VARCHAR2(4),
    COST_SHARE_PERCENTAGE	NUMBER(5,2),
    COST_SHARE_TYPE_CODE 	NUMBER(3,0),
    SOURCE         			VARCHAR2(7),
    DESTINATION		    	VARCHAR2(7),
    COMMITMENT_AMOUNT       NUMBER(12,2),
    VERIFICATION_DATE DATE, 
    COST_SHARE_MET NUMBER(12,2),
    UPDATE_TIMESTAMP       	DATE,
    UPDATE_USER            	VARCHAR2(60),
    VER_NBR 				NUMBER(8,0) DEFAULT 1,
	OBJ_ID 					VARCHAR2(36) DEFAULT SYS_GUID()
);

CREATE TABLE AWARD_DOCUMENT(
	DOCUMENT_NUMBER VARCHAR2(10) NOT NULL,
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL,
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID()  NOT NULL,
	UPDATE_TIMESTAMP DATE NOT NULL,
	UPDATE_USER VARCHAR2(10) NOT NULL);

CREATE TABLE AWARD_EXEMPT_NUMBER (	
		AWARD_EXEMPT_NUMBER_ID  NUMBER(12,0) NOT NULL,
   		AWARD_SPECIAL_REVIEW_ID NUMBER(12,0) NOT NULL, 
		EXEMPTION_TYPE_CODE VARCHAR2(3 BYTE) NOT NULL ENABLE, 
		UPDATE_USER VARCHAR2(60 BYTE) NOT NULL ENABLE, 
		UPDATE_TIMESTAMP DATE NOT NULL ENABLE, 
		VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL ENABLE, 
		OBJ_ID VARCHAR2(36 BYTE) DEFAULT SYS_GUID() NOT NULL ENABLE
		);

CREATE TABLE AWARD_IDC_RATE ( 
	AWARD_NUMBER VARCHAR2(10) NOT NULL,
	SEQUENCE_NUMBER NUMBER(8) NOT NULL,
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
	UPDATE_USER VARCHAR2(60) NOT NULL);

CREATE TABLE AWARD_METHOD_OF_PAYMENT ( 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
	METHOD_OF_PAYMENT_CODE VARCHAR2(3) NOT NULL, 
	DESCRIPTION VARCHAR2(200) NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL);

CREATE TABLE AWARD_PAYMENT_SCHEDULE ( 
	AWARD_PAYMENT_SCHEDULE_ID NUMBER(12,0) NOT NULL, 
	AWARD_ID NUMBER(12,0) NOT NULL, 
	AWARD_NUMBER VARCHAR2(10) NOT NULL, 
	SEQUENCE_NUMBER NUMBER(4,0) NOT NULL, 
	DUE_DATE DATE NOT NULL, 
	AMOUNT NUMBER(12,2), 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL, 
	SUBMIT_DATE DATE, 
	SUBMITTED_BY VARCHAR2(9), 
	INVOICE_NUMBER VARCHAR2(10), 
	STATUS_DESCRIPTION VARCHAR2(50),
	STATUS VARCHAR2(5),
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);

CREATE TABLE AWARD_REP_TERMS_RECNT (
    AWARD_REP_TERMS_RECNT_ID NUMBER(12,0) NOT NULL,
	AWARD_REPORT_TERMS_ID NUMBER(12,0) NOT NULL,	 
	CONTACT_TYPE_CODE VARCHAR2(3) NOT NULL, 
	CONTACT_ID NUMBER(12,0),
	ROLODEX_ID NUMBER(6,0) NOT NULL,
	NUMBER_OF_COPIES NUMBER(2,0),
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL);

CREATE TABLE AWARD_REPORT_TERMS ( 
	AWARD_REPORT_TERMS_ID NUMBER(12,0) NOT NULL, 
	AWARD_ID NUMBER(12,0) NOT NULL,
	AWARD_NUMBER VARCHAR2(10) NOT NULL, 
	SEQUENCE_NUMBER NUMBER(4,0) NOT NULL, 
	REPORT_CLASS_CODE VARCHAR2(3) NOT NULL, 
	REPORT_CODE VARCHAR2(3) NOT NULL, 
	FREQUENCY_CODE VARCHAR2(3) NOT NULL, 
	FREQUENCY_BASE_CODE VARCHAR2(3) NOT NULL, 
	OSP_DISTRIBUTION_CODE VARCHAR2(3) NOT NULL, 
	DUE_DATE DATE NOT NULL, 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL);

CREATE TABLE AWARD_SCIENCE_KEYWORD ( 
	AWARD_SCIENCE_KEYWORD_ID NUMBER(12,0) NOT NULL, 
	AWARD_ID NUMBER(12,0) NOT NULL, 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
	SCIENCE_KEYWORD_CODE VARCHAR2(15) NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL);

CREATE TABLE AWARD_SPECIAL_REVIEW ( 
	AWARD_SPECIAL_REVIEW_ID NUMBER(12,0) NOT NULL, 
	AWARD_ID NUMBER(12,0) NOT NULL, 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
	SPECIAL_REVIEW_NUMBER NUMBER(3,0) NOT NULL, 
	SPECIAL_REVIEW_CODE NUMBER(3,0) NOT NULL, 
	APPROVAL_TYPE_CODE NUMBER(3,0) NOT NULL, 
	PROTOCOL_NUMBER VARCHAR2(20), 
	APPLICATION_DATE DATE, 
	APPROVAL_DATE DATE,
	EXPIRATION_DATE DATE, 
	COMMENTS CLOB, 
	UPDATE_USER VARCHAR2(60) NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL);

CREATE TABLE AWARD_SPONSOR_TERM ( 
	AWARD_SPONSOR_TERM_ID	NUMBER(8,0),
    AWARD_ID       			NUMBER(22,0),
    AWARD_NUMBER			VARCHAR2(10),
    SEQUENCE_NUMBER        	NUMBER(8,0),
    SPONSOR_TERM_ID			NUMBER(12,0),
    UPDATE_TIMESTAMP       	DATE,
    UPDATE_USER            	VARCHAR2(60),
    VER_NBR 				NUMBER(8,0) DEFAULT 1,
	OBJ_ID 					VARCHAR2(36) DEFAULT SYS_GUID()
);

CREATE TABLE AWARD_STATUS ( 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
	STATUS_CODE VARCHAR2(3) NOT NULL, 
	DESCRIPTION VARCHAR2(200) NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL);

CREATE TABLE AWARD_TEMPLATE ( 
	AWARD_TEMPLATE_CODE NUMBER(5,0) NOT NULL, 
	DESCRIPTION VARCHAR2(200) NOT NULL, 
	STATUS_CODE VARCHAR2(3) NOT NULL, 
	PRIME_SPONSOR_CODE CHAR(6), 
	NON_COMPETING_CONT_PRPSL_DUE VARCHAR2(3), 
	COMPETING_RENEWAL_PRPSL_DUE VARCHAR2(3), 
	BASIS_OF_PAYMENT_CODE VARCHAR2(3) NOT NULL, 
	METHOD_OF_PAYMENT_CODE VARCHAR2(3) NOT NULL, 
	PAYMENT_INVOICE_FREQ_CODE VARCHAR2(3), 
	INVOICE_NUMBER_OF_COPIES NUMBER(3,0), 
	FINAL_INVOICE_DUE NUMBER(3,0), 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL,
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);

CREATE TABLE AWARD_TEMPLATE_CONTACT ( 
	AWARD_TEMPLATE_CONTACT_ID NUMBER(12,0) NOT NULL, 
	AWARD_TEMPLATE_CODE NUMBER(5,0) NOT NULL, 
	CONTACT_TYPE_CODE VARCHAR2(3) NOT NULL, 
	ROLODEX_ID NUMBER(6,0) NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL,
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);

CREATE TABLE AWARD_TEMPLATE_COMMENTS ( 
	AWARD_TEMPLATE_COMMENTS_ID NUMBER(12,0) NOT NULL, 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
	AWARD_TEMPLATE_CODE NUMBER(5,0) NOT NULL, 
	COMMENT_TYPE_CODE VARCHAR2(3) NOT NULL, 
	CHECKLIST_PRINT_FLAG CHAR(1) NOT NULL, 
	COMMENTS CLOB, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL);
	
CREATE TABLE AWARD_TEMPLATE_REPORT_TERMS ( 
	TEMPLATE_REPORT_TERMS_ID NUMBER(12,0) NOT NULL, 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
	AWARD_TEMPLATE_CODE NUMBER(5,0) NOT NULL, 
	REPORT_CLASS_CODE VARCHAR2(3) NOT NULL, 
	REPORT_CODE VARCHAR2(3) NOT NULL, 
	FREQUENCY_CODE VARCHAR2(3) NOT NULL, 
	FREQUENCY_BASE_CODE VARCHAR2(3) NOT NULL, 
	OSP_DISTRIBUTION_CODE VARCHAR2(3) NOT NULL, 
	DUE_DATE DATE NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL);

CREATE TABLE AWARD_TEMPL_REP_TERMS_RECNT(	
	TEMPL_REP_TERMS_RECNT_ID NUMBER(12,0) NOT NULL ENABLE, 
	TEMPLATE_REPORT_TERMS_ID NUMBER(12,0) NOT NULL ENABLE, 
	CONTACT_TYPE_CODE VARCHAR2(3 BYTE) NOT NULL ENABLE, 
	ROLODEX_ID NUMBER(6,0) NOT NULL ENABLE, 
	NUMBER_OF_COPIES NUMBER(2,0), 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL ENABLE, 
	OBJ_ID VARCHAR2(36 BYTE) DEFAULT SYS_GUID() NOT NULL ENABLE, 
	UPDATE_TIMESTAMP DATE NOT NULL ENABLE, 
	UPDATE_USER VARCHAR2(60 BYTE) NOT NULL ENABLE
	);

CREATE TABLE AWARD_TEMPLATE_TERMS ( 
	AWARD_TEMPLATE_TERMS_ID NUMBER(12,0) NOT NULL, 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
	AWARD_TEMPLATE_CODE NUMBER(5,0) NOT NULL, 
	SPONSOR_TERM_ID NUMBER(12,0) NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL);

CREATE TABLE AWARD_TRANSFERRING_SPONSOR ( 
	AWARD_TRANSFERRING_SPONSOR_ID NUMBER(12,0) NOT NULL, 
	AWARD_ID NUMBER(12,0) NOT NULL, 
	AWARD_NUMBER CHAR(10) NOT NULL, 
	SEQUENCE_NUMBER NUMBER(4,0) NOT NULL, 
	SPONSOR_CODE CHAR(6) NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL, 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);
	
CREATE TABLE AWARD_TYPE ( 
	AWARD_TYPE_CODE NUMBER(3,0) NOT NULL, 
	DESCRIPTION VARCHAR2(200) NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL, 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);
	
CREATE TABLE COMM_MEMBERSHIPS ( 
    COMM_MEMBERSHIP_ID NUMBER(12,0) NOT NULL,
    ID NUMBER(12,0) NOT NULL,
    COMMITTEE_ID VARCHAR2(15) NOT NULL,
    PERSON_ID VARCHAR2(9) NOT NULL,
    ROLODEX_ID NUMBER(12,0) NULL, 
    PERSON_NAME VARCHAR2(90) NOT NULL, 
    MEMBERSHIP_ID VARCHAR2(10) NOT NULL,
    SEQUENCE_NUMBER NUMBER(4,0) NOT NULL,
    PAID_MEMBER_FLAG VARCHAR2(1) NOT NULL,
    TERM_START_DATE DATE NOT NULL,
    TERM_END_DATE DATE,
    MEMBERSHIP_TYPE_CODE VARCHAR2(3) NOT NULL,
    COMMENTS CLOB,
    CONTACT_NOTES CLOB,
    TRAINING_NOTES CLOB,
    UPDATE_TIMESTAMP DATE, 
    UPDATE_USER VARCHAR2(60), 
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);

CREATE TABLE COMM_MEMBER_ROLES ( 
    COMM_MEMBER_ROLES_ID NUMBER(12,0) NOT NULL, 
    COMM_MEMBERSHIP_ID NUMBER(12,0) NOT NULL, 
    MEMBERSHIP_ID VARCHAR2(10) NOT NULL, 
    SEQUENCE_NUMBER NUMBER(4,0) NOT NULL, 
    MEMBERSHIP_ROLE_CODE VARCHAR2(3) NOT NULL, 
    START_DATE DATE NOT NULL, 
    END_DATE DATE NOT NULL, 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2(60) NOT NULL, 
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL,
    OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);
    
create table comm_schedule (
  id					 number(12)     not null,
  schedule_id            varchar2 (10)  not null,
  committee_id           number(12)     not null,
  scheduled_date         date           not null,
  place                  varchar2 (200),
  time                   date,
  protocol_sub_deadline  date           not null,
  schedule_status_code   number (3)     not null,
  meeting_date           date,
  start_time             date,
  end_time               date,
  agenda_prod_rev_date   date,
  max_protocols          number (4),
  comments               varchar2 (2000),
  UPDATE_TIMESTAMP DATE NOT NULL, 
  UPDATE_USER VARCHAR2(60) NOT NULL,
  VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
  OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);

create table comm_schedule_frequency (
  frequency_code    number (3)    not null PRIMARY KEY,
  description       varchar2 (200)  not null,
  no_of_days        number (3),
  UPDATE_TIMESTAMP DATE NOT NULL, 
  UPDATE_USER VARCHAR2(60) NOT NULL,
  VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
  OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);  

CREATE TABLE COMMENT_TYPE ( 
	COMMENT_TYPE_CODE			VARCHAR2(3),
	DESCRIPTION					VARCHAR2(200),
	TEMPLATE_FLAG				VARCHAR2(1),
	CHECKLIST_FLAG				VARCHAR2(1),
	AWARD_COMMENT_SCREEN_FLAG	VARCHAR2(1),
    UPDATE_TIMESTAMP       		DATE,
    UPDATE_USER            		VARCHAR2(60),
    VER_NBR 					NUMBER(8,0) DEFAULT 1,
	OBJ_ID 						VARCHAR2(36) DEFAULT SYS_GUID()
);

CREATE TABLE COMMITTEE ( 
    ID NUMBER(12,0) NOT NULL,
    DOCUMENT_NUMBER NUMBER(10) NOT NULL,
    COMMITTEE_ID VARCHAR2(15) NOT NULL,
    COMMITTEE_NAME VARCHAR2(60) NOT NULL,
    HOME_UNIT_NUMBER VARCHAR2(8) NOT NULL,
    DESCRIPTION VARCHAR2(2000),
    SCHEDULE_DESCRIPTION VARCHAR2(2000),
    COMMITTEE_TYPE_CODE VARCHAR2(3) NOT NULL,
    MINIMUM_MEMBERS_REQUIRED NUMBER(3,0),
    MAX_PROTOCOLS NUMBER(4,0),
    ADV_SUBMISSION_DAYS_REQ NUMBER(3,0),
    DEFAULT_REVIEW_TYPE_CODE VARCHAR2(3),
    APPLICABLE_REVIEW_TYPE_CODE VARCHAR2(3) NOT NULL,
    CREATE_TIMESTAMP DATE, 
    CREATE_USER VARCHAR2(8),
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2(60) NOT NULL,
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);

CREATE TABLE COMMITTEE_DOCUMENT ( 
    DOCUMENT_NUMBER NUMBER(10) NOT NULL,
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2(60) NOT NULL,
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);

CREATE TABLE COMMITTEE_TYPE ( 
    COMMITTEE_TYPE_CODE VARCHAR2(3) NOT NULL, 
    DESCRIPTION VARCHAR2(200) NOT NULL, 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2(60) NOT NULL,
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);

CREATE TABLE COMM_MEMBERSHIP_TYPE (
    MEMBERSHIP_TYPE_CODE VARCHAR2(3) NOT NULL,
    DESCRIPTION VARCHAR2(200) NOT NULL, 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2(60) NOT NULL, 
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);

CREATE TABLE CONTACT_TYPE ( 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
	CONTACT_TYPE_CODE VARCHAR2(3) NOT NULL, 
	DESCRIPTION VARCHAR2(200) NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL);

CREATE TABLE COST_SHARE_TYPE ( 
	COST_SHARE_TYPE_CODE	NUMBER(3,0),
	DESCRIPTION				VARCHAR2(200),
    UPDATE_TIMESTAMP       	DATE,
    UPDATE_USER            	VARCHAR2(60),
    VER_NBR 				NUMBER(8,0),
	OBJ_ID 					VARCHAR2(36) DEFAULT SYS_GUID()
);

CREATE TABLE DISTRIBUTION ( 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
	OSP_DISTRIBUTION_CODE VARCHAR2(3) NOT NULL, 
	DESCRIPTION VARCHAR2(200) NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL);

CREATE TABLE FREQUENCY ( 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
	FREQUENCY_CODE VARCHAR2(3) NOT NULL, 
	DESCRIPTION VARCHAR2(200) NOT NULL, 
	NUMBER_OF_DAYS NUMBER(3,0), 
	NUMBER_OF_MONTHS NUMBER(2,0), 
	REPEAT_FLAG CHAR(1) NOT NULL, 
	PROPOSAL_DUE_FLAG CHAR(1) NOT NULL, 
	INVOICE_FLAG CHAR(1) NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL, 
	ADVANCE_NUMBER_OF_DAYS NUMBER(3,0), 
	ADVANCE_NUMBER_OF_MONTHS NUMBER(2,0));

CREATE TABLE FREQUENCY_BASE ( 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
	FREQUENCY_BASE_CODE VARCHAR2(3) NOT NULL, 
	DESCRIPTION VARCHAR2(200) NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL);

CREATE TABLE FUNDING_SOURCE_TYPE ( 
    FUNDING_SOURCE_TYPE_CODE NUMBER(3,0) NOT NULL, 
    DESCRIPTION VARCHAR2(200) NOT NULL, 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2(60) NOT NULL, 
    FUNDING_SOURCE_TYPE_FLAG VARCHAR2(1), 
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);

CREATE TABLE IDC_RATE_TYPE ( 	
	IDC_RATE_TYPE_CODE NUMBER(3,0) NOT NULL, 
	DESCRIPTION VARCHAR2(200) NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL,
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);

CREATE TABLE MEMBERSHIP_ROLE ( 
    MEMBERSHIP_ROLE_CODE VARCHAR2(3) NOT NULL,
    DESCRIPTION VARCHAR2(200) NOT NULL,
    UPDATE_TIMESTAMP DATE NOT NULL,
    UPDATE_USER VARCHAR2(60) NOT NULL,
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL,
    OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);

CREATE TABLE PERSON_TRAINING ( 
	PERSON_TRAINING_ID NUMBER(12,0) NOT NULL, 
	PERSON_ID VARCHAR2(9) NOT NULL, 
	TRAINING_NUMBER NUMBER(4,0) NOT NULL, 
	TRAINING_CODE NUMBER(4,0) NOT NULL, 
	DATE_REQUESTED DATE, 
	DATE_SUBMITTED DATE, 
	DATE_ACKNOWLEDGED DATE, 
	FOLLOWUP_DATE DATE, 
	SCORE VARCHAR2(9), 
	COMMENTS CLOB, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL, 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);

CREATE TABLE PROTOCOL ( 
	PROTOCOL_ID NUMBER(12,0) NOT NULL,
	DOCUMENT_NUMBER NUMBER(10) NOT NULL,
	PROTOCOL_NUMBER VARCHAR2(20) NOT NULL, 
	SEQUENCE_NUMBER NUMBER(4,0) NOT NULL, 
	PROTOCOL_TYPE_CODE VARCHAR2(3) NOT NULL, 
	PROTOCOL_STATUS_CODE VARCHAR2(3) NOT NULL, 
	TITLE VARCHAR2(2000) NOT NULL, 
	DESCRIPTION VARCHAR2(2000), 
	APPLICATION_DATE DATE, 
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
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);

CREATE TABLE PROTOCOL_DOCUMENT(
DOCUMENT_NUMBER NUMBER(10) NOT NULL,
VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL,
OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID()  NOT NULL,
UPDATE_TIMESTAMP DATE NOT NULL,
UPDATE_USER VARCHAR2(10) NOT NULL);

CREATE TABLE PROTOCOL_EXEMPT_NUMBER (
    PROTOCOL_EXEMPT_NUMBER_ID  NUMBER(12,0) NOT NULL,
    PROTOCOL_SPECIAL_REVIEW_ID NUMBER(12,0) NOT NULL,
    EXEMPTION_TYPE_CODE VARCHAR2(3 BYTE) NOT NULL ENABLE,
    UPDATE_USER VARCHAR2(60 BYTE) NOT NULL ENABLE,
    UPDATE_TIMESTAMP DATE NOT NULL ENABLE,
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL ENABLE,
    OBJ_ID VARCHAR2(36 BYTE) DEFAULT SYS_GUID() NOT NULL ENABLE);

CREATE TABLE PROTOCOL_FUNDING_SOURCE ( 
    PROTOCOL_FUNDING_SOURCE_ID NUMBER(12,0) NOT NULL, 
    PROTOCOL_ID NUMBER(12,0) NOT NULL, 
    PROTOCOL_NUMBER VARCHAR2(20)  NULL, 
    SEQUENCE_NUMBER NUMBER(4,0)  NULL, 
    FUNDING_SOURCE_TYPE_CODE NUMBER(3,0) NOT NULL, 
    FUNDING_SOURCE VARCHAR2(200) NOT NULL, 
    FUNDING_SOURCE_NAME VARCHAR2(200) NULL, 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2(60) NOT NULL, 
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);

CREATE TABLE PROTOCOL_LOCATION ( 
	PROTOCOL_LOCATION_ID NUMBER(12,0) NOT NULL, 
	PROTOCOL_ID NUMBER(12,0) NOT NULL, 
	PROTOCOL_NUMBER VARCHAR2(20) NOT NULL, 
	SEQUENCE_NUMBER NUMBER(4,0) NOT NULL, 
	PROTOCOL_ORG_TYPE_CODE VARCHAR2(3) NOT NULL, 
	ORGANIZATION_ID VARCHAR2(8) NOT NULL, 
	ROLODEX_ID NUMBER(6,0), 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL, 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);

CREATE TABLE PROTOCOL_ORG_TYPE ( 
	PROTOCOL_ORG_TYPE_CODE VARCHAR2(3) NOT NULL, 
	DESCRIPTION VARCHAR2(200) NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL, 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);

CREATE TABLE PROTOCOL_PERSONS ( 
	PROTOCOL_PERSON_ID NUMBER(12,0) NOT NULL, 
	PROTOCOL_ID NUMBER(12,0) NOT NULL, 
	PROTOCOL_NUMBER VARCHAR2(20) NOT NULL, 
	SEQUENCE_NUMBER NUMBER(4,0) NOT NULL, 
	PERSON_ID VARCHAR2(9) NULL, 
	PERSON_NAME VARCHAR2(90) NOT NULL, 
	PROTOCOL_PERSON_ROLE_ID VARCHAR2(12), 
	ROLODEX_ID NUMBER(12,0) NULL, 
	AFFILIATION_TYPE_CODE NUMBER(3,0), 
	UPDATE_TIMESTAMP DATE, 
	UPDATE_USER VARCHAR2(60),
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);

CREATE TABLE PROTOCOL_PERSON_ROLES(
  PROTOCOL_PERSON_ROLE_ID VARCHAR2(12) NOT NULL,
  DESCRIPTION       VARCHAR2(250) NOT NULL,
  UNIT_DETAILS_REQUIRED CHAR(1) DEFAULT 'N' NOT NULL,
  UPDATE_TIMESTAMP DATE, 
  UPDATE_USER VARCHAR2(60),
  VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL,
  OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);

CREATE TABLE PROTOCOL_PERSON_ROLE_MAPPING(
  ROLE_MAPPING_ID NUMBER(12) NOT NULL,
  SOURCE_ROLE_ID VARCHAR2(12) NOT NULL,
  TARGET_ROLE_ID VARCHAR2(12) NOT NULL,
  UPDATE_TIMESTAMP DATE, 
  UPDATE_USER VARCHAR2(60),
  VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL,
  OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);

create table protocol_reference_type (
  protocol_reference_type_code  number (3)    not null,
  description                   varchar2 (200)  not null,
  update_timestamp              date          not null,
  update_user                   varchar2 (60)  not null,
  ver_nbr 						number(8) default 1 not null,
  obj_id						varchar2 (36) default sys_guid() not null);
  
create table protocol_references (
  protocol_reference_id         number (4)	    not null,
  protocol_id 					number (12) 	not null,
  protocol_number               varchar2 (20)  	not null,
  sequence_number               number (4)    	not null,
  protocol_reference_number     number (4)    	not null,
  protocol_reference_type_code  number (3)    	not null,
  reference_key                 varchar2 (50)  	not null,
  application_date              date,
  approval_date                 date,
  comments                      long,
  update_timestamp              date          	not null,
  update_user                   varchar2 (60)  	not null,
  ver_nbr 						number(8) default 1 not null,
  obj_id						varchar2 (36) default sys_guid() not null);

CREATE TABLE PROTOCOL_RESEARCH_AREAS (
  ID NUMBER(12) NOT null,
  PROTOCOL_ID NUMBER(12,0) NOT NULL,
  PROTOCOL_NUMBER     varchar2 (20)  NOT null,
  SEQUENCE_NUMBER     number (4, 0)    NOT null,
  RESEARCH_AREA_CODE  varchar2 (8)  NOT null,
  UPDATE_TIMESTAMP DATE NOT NULL, 
  UPDATE_USER VARCHAR2(60) NOT NULL,
  VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
  OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);

CREATE TABLE PROTOCOL_REVIEW_TYPE ( 
    PROTOCOL_REVIEW_TYPE_CODE VARCHAR2(3) NOT NULL, 
    DESCRIPTION VARCHAR2(200) NOT NULL, 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2(60) NOT NULL,
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);

CREATE TABLE PROTOCOL_RISK_LEVELS ( 
	PROTOCOL_RISK_LEVELS_ID NUMBER(12,0) NOT NULL, 
	PROTOCOL_ID NUMBER(12,0) NOT NULL, 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
	PROTOCOL_NUMBER VARCHAR2(20) NOT NULL, 
	SEQUENCE_NUMBER NUMBER(4,0) NOT NULL, 
	RISK_LEVEL_CODE VARCHAR2(3) NOT NULL, 
	COMMENTS VARCHAR2(2000), 
	DATE_ASSIGNED DATE NOT NULL, 
	DATE_UPDATED DATE, 
	STATUS CHAR(1) NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL);

CREATE TABLE PROTOCOL_SPECIAL_REVIEW (
    PROTOCOL_SPECIAL_REVIEW_ID NUMBER(12,0) NOT NULL,
    PROTOCOL_ID NUMBER(12,0) NOT NULL,
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL,
    OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL,
    SPECIAL_REVIEW_NUMBER NUMBER(3,0) NOT NULL,
    SPECIAL_REVIEW_CODE NUMBER(3,0) NOT NULL,
    APPROVAL_TYPE_CODE NUMBER(3,0) NOT NULL,
    PROTOCOL_NUMBER VARCHAR2(20),
    APPLICATION_DATE DATE,
    APPROVAL_DATE DATE,
    EXPIRATION_DATE DATE,
    COMMENTS CLOB,
    UPDATE_USER VARCHAR2(60) NOT NULL,
    UPDATE_TIMESTAMP DATE NOT NULL);

CREATE TABLE PROTOCOL_STATUS ( 
	PROTOCOL_STATUS_CODE VARCHAR2(3) NOT NULL, 
	DESCRIPTION VARCHAR2(200) NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL,
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);

CREATE TABLE PROTOCOL_TYPE ( 
	PROTOCOL_TYPE_CODE VARCHAR2(3) NOT NULL, 
	DESCRIPTION VARCHAR2(200) NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL,
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);

CREATE TABLE PROTOCOL_UNITS ( 
	PROTOCOL_UNITS_ID NUMBER(12,0) NOT NULL, 
	PROTOCOL_PERSON_ID NUMBER(12,0) NOT NULL,
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
	PROTOCOL_NUMBER VARCHAR2(20) NULL, 
	SEQUENCE_NUMBER NUMBER(4,0) NULL, 
	UNIT_NUMBER VARCHAR2(8) NOT NULL, 
	LEAD_UNIT_FLAG VARCHAR2(1) NOT NULL, 
	PERSON_ID VARCHAR2(9) NULL, 
	UPDATE_TIMESTAMP DATE, 
	UPDATE_USER VARCHAR2(60));

CREATE TABLE PROTOCOL_VULNERABLE_SUB (
    PROTOCOL_VULNERABLE_SUB_ID NUMBER(12,0) NOT NULL,
    PROTOCOL_ID NUMBER(12,0) NOT NULL,
    PROTOCOL_NUMBER VARCHAR2(20) NOT NULL,  
    SEQUENCE_NUMBER NUMBER(4,0) NOT NULL, 
    VULNERABLE_SUBJECT_TYPE_CODE VARCHAR2(3) NOT NULL, 
    SUBJECT_COUNT NUMBER(6,0), 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2(60) NOT NULL,
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);
    
CREATE TABLE REPORT ( 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
	REPORT_CODE VARCHAR2(3) NOT NULL, 
	DESCRIPTION VARCHAR2(200) NOT NULL, 
	FINAL_REPORT_FLAG CHAR(1) NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL);

CREATE TABLE REPORT_CLASS ( 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
	REPORT_CLASS_CODE VARCHAR2(3) NOT NULL, 
	DESCRIPTION VARCHAR2(200) NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL, 
	GENERATE_REPORT_REQUIREMENTS VARCHAR2(1) DEFAULT 'N' NOT NULL);

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
);

CREATE TABLE RISK_LEVEL ( 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
	RISK_LEVEL_CODE VARCHAR2(3) NOT NULL, 
	DESCRIPTION VARCHAR2(200), 
	UPDATE_TIMESTAMP DATE, 
	UPDATE_USER VARCHAR2(60));

CREATE TABLE SPONSOR_TERM ( 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
	SPONSOR_TERM_ID NUMBER(12,0) NOT NULL, 
	SPONSOR_TERM_CODE VARCHAR2(3) NOT NULL, 
	SPONSOR_TERM_TYPE_CODE VARCHAR2(3) NOT NULL, 
	DESCRIPTION VARCHAR2(200) NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL);
	
CREATE TABLE SPONSOR_TERM_TYPE ( 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
	SPONSOR_TERM_TYPE_CODE VARCHAR2(3) NOT NULL, 
	DESCRIPTION VARCHAR2(200) NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL);
	
create table schedule_status (
  schedule_status_code  number (3)    not null,
  description           varchar2 (200)  not null,
  UPDATE_TIMESTAMP DATE NOT NULL, 
  UPDATE_USER VARCHAR2(60) NOT NULL,
  VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
  OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);

CREATE TABLE VALID_CLASS_REPORT_FREQ ( 
	VALID_CLASS_REPORT_FREQ_ID NUMBER(12,0) NOT NULL, 
	REPORT_CLASS_CODE VARCHAR2(3) NOT NULL, 
	REPORT_CODE VARCHAR2(3) NOT NULL, 
	FREQUENCY_CODE VARCHAR2(3) NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL, 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);

CREATE TABLE VALID_FREQUENCY_BASE ( 
	VALID_FREQUENCY_BASE_ID NUMBER(12,0) NOT NULL, 
	FREQUENCY_CODE VARCHAR2(3) NOT NULL, 
	FREQUENCY_BASE_CODE VARCHAR2(3) NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL, 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);

CREATE TABLE VALID_RATES ( 
	VALID_RATES_ID NUMBER(12,0) NOT NULL, 
	ON_CAMPUS_RATE NUMBER(5,2) NOT NULL, 
	OFF_CAMPUS_RATE NUMBER(5,2) NOT NULL, 
	RATE_CLASS_TYPE VARCHAR2(1) NOT NULL, 
	ADJUSTMENT_KEY VARCHAR2(6) NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL);

CREATE TABLE VULNERABLE_SUBJECT_TYPE ( 
	VULNERABLE_SUBJECT_TYPE_CODE VARCHAR2(3) NOT NULL, 
	DESCRIPTION VARCHAR2(200) NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL,
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);

