
-- create sequence
CREATE SEQUENCE SEQ_PERSON_EDITABLE_FIELD
    INCREMENT BY 1
    START WITH 1001
    MAXVALUE 9999999999999999999999999999
    NOMINVALUE
    NOCYCLE
    NOCACHE
    ORDER;

-- save old table
create table PERSON_EDITABLE_FIELDS_old as select * from PERSON_EDITABLE_FIELDS;

--alter table PERSON_EDITABLE_FIELDS drop constraint PERSON_EDITABLE_FIELDSP1;

-- drop and recreate table
drop table PERSON_EDITABLE_FIELDS;
CREATE TABLE PERSON_EDITABLE_FIELDS ( 
    PERSON_EDITABLE_FIELD_ID   NUMBER(12,0) NOT NULL,
    MODULE_CODE        NUMBER(3,0) NOT NULL,
    FIELD_NAME      	VARCHAR2(255) NOT NULL,
    ACTIVE_FLAG     	CHAR(1) NULL,
    UPDATE_TIMESTAMP	DATE NOT NULL,
    UPDATE_USER     	VARCHAR2(60) NOT NULL,
    VER_NBR         	NUMBER(8,0) DEFAULT 1 NOT NULL,
    OBJ_ID          	VARCHAR2(36) NOT NULL);


ALTER TABLE PERSON_EDITABLE_FIELDS 
ADD CONSTRAINT PK_PERSON_EDITABLE_FIELDS 
PRIMARY KEY (PERSON_EDITABLE_FIELD_ID);

-- restore data for PD and add data for protocol.

insert into PERSON_EDITABLE_FIELDS(PERSON_EDITABLE_FIELD_ID, MODULE_CODE, FIELD_NAME, ACTIVE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
 select SEQ_PERSON_EDITABLE_FIELD.nextval, '3', FIELD_NAME, ACTIVE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID from PERSON_EDITABLE_FIELDS_old;
insert into PERSON_EDITABLE_FIELDS(PERSON_EDITABLE_FIELD_ID, MODULE_CODE, FIELD_NAME, ACTIVE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
 select SEQ_PERSON_EDITABLE_FIELD.nextval, '7', FIELD_NAME, ACTIVE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, SYS_GUID() from PERSON_EDITABLE_FIELDS_old;


-- modify Protocol_person

alter table protocol_persons add
        ( SSN VARCHAR2(9)
        , LAST_NAME VARCHAR2(30)
        , FIRST_NAME VARCHAR2(30)
        , MIDDLE_NAME VARCHAR2(30)
        , FULL_NAME VARCHAR2(90)
        , PRIOR_NAME VARCHAR2(30)
        , USER_NAME VARCHAR2(60)
        , EMAIL_ADDRESS VARCHAR2(60)
        , DATE_OF_BIRTH DATE
        , AGE NUMBER(3)
        , AGE_BY_FISCAL_YEAR NUMBER(3)
        , GENDER VARCHAR2(30)
        , RACE VARCHAR2(30)
        , EDUCATION_LEVEL VARCHAR2(30)
        , DEGREE VARCHAR2(11)
        , MAJOR VARCHAR2(30)
        , IS_HANDICAPPED CHAR(1)
        , HANDICAP_TYPE VARCHAR2(30)
        , IS_VETERAN CHAR(1)
        , VETERAN_TYPE VARCHAR2(30)
        , VISA_CODE VARCHAR2(20)
        , VISA_TYPE VARCHAR2(30)
        , VISA_RENEWAL_DATE DATE
        , HAS_VISA CHAR(1)
        , OFFICE_LOCATION VARCHAR2(30)
        , OFFICE_PHONE VARCHAR2(20)
        , SECONDRY_OFFICE_LOCATION VARCHAR2(30)
        , SECONDRY_OFFICE_PHONE VARCHAR2(20)
        , SCHOOL VARCHAR2(50)
        , YEAR_GRADUATED VARCHAR2(30)
        , DIRECTORY_DEPARTMENT VARCHAR2(30)
        , SALUTATION VARCHAR2(30)
        , COUNTRY_OF_CITIZENSHIP VARCHAR2(30)
        , PRIMARY_TITLE VARCHAR2(51)
        , DIRECTORY_TITLE VARCHAR2(50)
        , HOME_UNIT VARCHAR2(8)
        , IS_FACULTY CHAR(1)
        , IS_GRADUATE_STUDENT_STAFF CHAR(1)
        , IS_RESEARCH_STAFF CHAR(1)
        , IS_SERVICE_STAFF CHAR(1)
        , IS_SUPPORT_STAFF CHAR(1)
        , IS_OTHER_ACCADEMIC_GROUP CHAR(1)
        , IS_MEDICAL_STAFF CHAR(1)
        , VACATION_ACCURAL CHAR(1)
        , IS_ON_SABBATICAL CHAR(1)
        , ID_PROVIDED VARCHAR2(30)
        , ID_VERIFIED VARCHAR2(30)
        , ADDRESS_LINE_1 VARCHAR2(80)
        , ADDRESS_LINE_2 VARCHAR2(80)
        , ADDRESS_LINE_3 VARCHAR2(80)
        , CITY VARCHAR2(30)
        , COUNTY VARCHAR2(30)
        , STATE VARCHAR2(30)
        , POSTAL_CODE VARCHAR2(15)
        , COUNTRY_CODE CHAR(3)
        , FAX_NUMBER VARCHAR2(20)
        , PAGER_NUMBER VARCHAR2(20)
        , MOBILE_PHONE_NUMBER VARCHAR2(20)
        , ERA_COMMONS_USER_NAME VARCHAR2(20));

-- if restore data to PERSON_EDITABLE_FIELDS is fine then can run the following script to drop temp table
-- drop table PERSON_EDITABLE_FIELDS_old;