INSERT INTO NOTIFICATION_TYPE (NOTIFICATION_TYPE_ID, MODULE_CODE, ACTION_CODE, DESCRIPTION, SUBJECT, MESSAGE, PROMPT_USER, SEND_NOTIFICATION, UPDATE_USER, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID)
	VALUES (SEQ_NOTIFICATION_TYPE_ID.NEXTVAL, 5, '100','Negotiation Closed Status','Negotiation activities are complete.',
	'The negotiation is complete.<br/><br/>Negotiation ID: {NEGOTIATION_ID}<br/>Negotiator: {NEGOTIATOR}<br/>Negotiation Status: {NEGOTIATION_STATUS}<br/>Anticipated Project Start Date: {ANTICIPATED_START_DATE}<br/>Negotiation Start Date: {START_DATE}<br/>Negotiation End Date: {END_DATE}<br/>Title: {TITLE}<br/>Primary Investigator: {PI}<br/>Lead Unit: {LEAD_UNIT_NAME} ({LEAD_UNIT_NUMBER})<br/>Sponsor: {SPONSOR_NAME} ({SPONSOR_CODE})<br/>Prime Sponsor: {PRIME_SPONSOR_NAME} ({PRIME_SPONSOR_CODE})<br/>',  'Y', 'Y', 'admin', SYSDATE, 1, SYS_GUID())
/

INSERT INTO NOTIFICATION_TYPE_RECIPIENT (NOTIFICATION_TYPE_RECIPIENT_ID, NOTIFICATION_TYPE_ID, ROLE_NAME, TO_OR_CC, UPDATE_USER, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID)
	VALUES (SEQ_NOTIFICATION_TYPE_ID.NEXTVAL, (select NOTIFICATION_TYPE_ID from notification_type where DESCRIPTION = 'Negotiation Closed Status'), 'KC-NEGOTIATION:Negotiator', 'T', 'admin', SYSDATE, 1, SYS_GUID())
/

INSERT INTO NOTIFICATION_TYPE_RECIPIENT (NOTIFICATION_TYPE_RECIPIENT_ID, NOTIFICATION_TYPE_ID, ROLE_NAME, TO_OR_CC, UPDATE_USER, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID)
	VALUES (SEQ_NOTIFICATION_TYPE_ID.NEXTVAL, (select NOTIFICATION_TYPE_ID from notification_type where DESCRIPTION = 'Negotiation Closed Status'), 'KC-NEGOTIATION:PI', 'T', 'admin', SYSDATE, 1, SYS_GUID())
/

INSERT INTO NOTIFICATION_TYPE_RECIPIENT (NOTIFICATION_TYPE_RECIPIENT_ID, NOTIFICATION_TYPE_ID, ROLE_NAME, TO_OR_CC, UPDATE_USER, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID)
	VALUES (SEQ_NOTIFICATION_TYPE_ID.NEXTVAL, (select NOTIFICATION_TYPE_ID from notification_type where DESCRIPTION = 'Negotiation Closed Status'), 'KC-ADM:OSP Administrator', 'T', 'admin', SYSDATE, 1, SYS_GUID())
/

INSERT INTO NOTIFICATION_TYPE_RECIPIENT (NOTIFICATION_TYPE_RECIPIENT_ID, NOTIFICATION_TYPE_ID, ROLE_NAME, TO_OR_CC, UPDATE_USER, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID)
	VALUES (SEQ_NOTIFICATION_TYPE_ID.NEXTVAL, (select NOTIFICATION_TYPE_ID from notification_type where DESCRIPTION = 'Negotiation Closed Status'), 'KC-WKFLW:Unit Administrator', 'T', 'admin', SYSDATE, 1, SYS_GUID())
/

insert into NOTIFICATION_MODULE_ROLE (NOTIFICATION_MODULE_ROLE_ID, MODULE_CODE, ROLE_NAME, OBJ_ID, VER_NBR, UPDATE_TIMESTAMP, UPDATE_USER)
	VALUES (SEQ_NTFCTN_MODULE_ROLE_ID.nextval, 5, 'KC-NEGOTIATION:Negotiator', sys_guid(), 1, sysdate, 'admin')
/
	
insert into NOTIFICATION_MODULE_ROLE (NOTIFICATION_MODULE_ROLE_ID, MODULE_CODE, ROLE_NAME, OBJ_ID, VER_NBR, UPDATE_TIMESTAMP, UPDATE_USER)
	VALUES (SEQ_NTFCTN_MODULE_ROLE_ID.nextval, 5, 'KC-NEGOTIATION:Investigators', sys_guid(), 1, sysdate, 'admin')
/
	
insert into NOTIFICATION_MODULE_ROLE (NOTIFICATION_MODULE_ROLE_ID, MODULE_CODE, ROLE_NAME, OBJ_ID, VER_NBR, UPDATE_TIMESTAMP, UPDATE_USER)
	VALUES (SEQ_NTFCTN_MODULE_ROLE_ID.nextval, 5, 'KC-NEGOTIATION:PI', sys_guid(), 1, sysdate, 'admin')
/
	
insert into NOTIFICATION_MODULE_ROLE (NOTIFICATION_MODULE_ROLE_ID, MODULE_CODE, ROLE_NAME, OBJ_ID, VER_NBR, UPDATE_TIMESTAMP, UPDATE_USER)
	VALUES (SEQ_NTFCTN_MODULE_ROLE_ID.nextval, 5, 'KC-NEGOTIATION:COI', sys_guid(), 1, sysdate, 'admin')
/
	
insert into NOTIFICATION_MODULE_ROLE (NOTIFICATION_MODULE_ROLE_ID, MODULE_CODE, ROLE_NAME, OBJ_ID, VER_NBR, UPDATE_TIMESTAMP, UPDATE_USER)
	VALUES (SEQ_NTFCTN_MODULE_ROLE_ID.nextval, 5, 'KC-NEGOTIATION:KP', sys_guid(), 1, sysdate, 'admin')
/
	
insert into NOTIFICATION_MODULE_ROLE (NOTIFICATION_MODULE_ROLE_ID, MODULE_CODE, ROLE_NAME, OBJ_ID, VER_NBR, UPDATE_TIMESTAMP, UPDATE_USER)
	VALUES (SEQ_NTFCTN_MODULE_ROLE_ID.nextval, 5, 'KC-NEGOTIATION:Negotiation Creator', sys_guid(), 1, sysdate, 'admin')
/

insert into NOTIFICATION_MODULE_ROLE (NOTIFICATION_MODULE_ROLE_ID, MODULE_CODE, ROLE_NAME, OBJ_ID, VER_NBR, UPDATE_TIMESTAMP, UPDATE_USER)
	VALUES (SEQ_NTFCTN_MODULE_ROLE_ID.nextval, 5, 'KC-ADM:OSP Administrator', sys_guid(), 1, sysdate, 'admin')
/

insert into NOTIFICATION_MODULE_ROLE (NOTIFICATION_MODULE_ROLE_ID, MODULE_CODE, ROLE_NAME, OBJ_ID, VER_NBR, UPDATE_TIMESTAMP, UPDATE_USER)
	VALUES (SEQ_NTFCTN_MODULE_ROLE_ID.nextval, 5, 'KC-WKFLW:Unit Administrator', sys_guid(), 1, sysdate, 'admin')
/

insert into NOTIFICATION_MDL_ROLE_QLFR (NOTIFICATION_MDL_ROLE_QLFR_ID, NOTIFICATION_MODULE_ROLE_ID, QUALIFIER, OBJ_ID, VER_NBR, UPDATE_TIMESTAMP, UPDATE_USER)
	VALUES (SEQ_NTFCTN_MDL_ROLE_QLFR_ID.nextval, (select NOTIFICATION_MODULE_ROLE_ID from NOTIFICATION_MODULE_ROLE where MODULE_CODE = 5 and ROLE_NAME = 'KC-NEGOTIATION:Negotiator'),
			'negotiation', sys_guid(), 1, sysdate, 'admin')
/

insert into NOTIFICATION_MDL_ROLE_QLFR (NOTIFICATION_MDL_ROLE_QLFR_ID, NOTIFICATION_MODULE_ROLE_ID, QUALIFIER, OBJ_ID, VER_NBR, UPDATE_TIMESTAMP, UPDATE_USER)
	VALUES (SEQ_NTFCTN_MDL_ROLE_QLFR_ID.nextval, (select NOTIFICATION_MODULE_ROLE_ID from NOTIFICATION_MODULE_ROLE where MODULE_CODE = 5 and ROLE_NAME = 'KC-NEGOTIATION:Investigators'),
			'negotiation', sys_guid(), 1, sysdate, 'admin')
/
			
insert into NOTIFICATION_MDL_ROLE_QLFR (NOTIFICATION_MDL_ROLE_QLFR_ID, NOTIFICATION_MODULE_ROLE_ID, QUALIFIER, OBJ_ID, VER_NBR, UPDATE_TIMESTAMP, UPDATE_USER)
	VALUES (SEQ_NTFCTN_MDL_ROLE_QLFR_ID.nextval, (select NOTIFICATION_MODULE_ROLE_ID from NOTIFICATION_MODULE_ROLE where MODULE_CODE = 5 and ROLE_NAME = 'KC-NEGOTIATION:PI'),
			'negotiation', sys_guid(), 1, sysdate, 'admin')
/

insert into NOTIFICATION_MDL_ROLE_QLFR (NOTIFICATION_MDL_ROLE_QLFR_ID, NOTIFICATION_MODULE_ROLE_ID, QUALIFIER, OBJ_ID, VER_NBR, UPDATE_TIMESTAMP, UPDATE_USER)
	VALUES (SEQ_NTFCTN_MDL_ROLE_QLFR_ID.nextval, (select NOTIFICATION_MODULE_ROLE_ID from NOTIFICATION_MODULE_ROLE where MODULE_CODE = 5 and ROLE_NAME = 'KC-NEGOTIATION:COI'),
			'negotiation', sys_guid(), 1, sysdate, 'admin')
/

insert into NOTIFICATION_MDL_ROLE_QLFR (NOTIFICATION_MDL_ROLE_QLFR_ID, NOTIFICATION_MODULE_ROLE_ID, QUALIFIER, OBJ_ID, VER_NBR, UPDATE_TIMESTAMP, UPDATE_USER)
	VALUES (SEQ_NTFCTN_MDL_ROLE_QLFR_ID.nextval, (select NOTIFICATION_MODULE_ROLE_ID from NOTIFICATION_MODULE_ROLE where MODULE_CODE = 5 and ROLE_NAME = 'KC-NEGOTIATION:KP'),
			'negotiation', sys_guid(), 1, sysdate, 'admin')
/

insert into NOTIFICATION_MDL_ROLE_QLFR (NOTIFICATION_MDL_ROLE_QLFR_ID, NOTIFICATION_MODULE_ROLE_ID, QUALIFIER, OBJ_ID, VER_NBR, UPDATE_TIMESTAMP, UPDATE_USER)
	VALUES (SEQ_NTFCTN_MDL_ROLE_QLFR_ID.nextval, (select NOTIFICATION_MODULE_ROLE_ID from NOTIFICATION_MODULE_ROLE where MODULE_CODE = 5 and ROLE_NAME = 'KC-NEGOTIATION:Negotiation Creator'),
			'negotiation', sys_guid(), 1, sysdate, 'admin')
/

insert into NOTIFICATION_MDL_ROLE_QLFR (NOTIFICATION_MDL_ROLE_QLFR_ID, NOTIFICATION_MODULE_ROLE_ID, QUALIFIER, OBJ_ID, VER_NBR, UPDATE_TIMESTAMP, UPDATE_USER)
	VALUES (SEQ_NTFCTN_MDL_ROLE_QLFR_ID.nextval, (select NOTIFICATION_MODULE_ROLE_ID from NOTIFICATION_MODULE_ROLE where MODULE_CODE = 5 and ROLE_NAME = 'KC-ADM:OSP Administrator'),
			'unitNumber', sys_guid(), 1, sysdate, 'admin')
/

insert into NOTIFICATION_MDL_ROLE_QLFR (NOTIFICATION_MDL_ROLE_QLFR_ID, NOTIFICATION_MODULE_ROLE_ID, QUALIFIER, OBJ_ID, VER_NBR, UPDATE_TIMESTAMP, UPDATE_USER)
	VALUES (SEQ_NTFCTN_MDL_ROLE_QLFR_ID.nextval, (select NOTIFICATION_MODULE_ROLE_ID from NOTIFICATION_MODULE_ROLE where MODULE_CODE = 5 and ROLE_NAME = 'KC-WKFLW:Unit Administrator'),
			'unitNumber', sys_guid(), 1, sysdate, 'admin')
/
