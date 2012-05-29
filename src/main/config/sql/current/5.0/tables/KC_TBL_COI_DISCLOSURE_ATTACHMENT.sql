ALTER TABLE COI_DISCLOSURE_ATTACHMENT ADD FIN_ENTITY_ID_FK NUMBER(12,0)
/
ALTER TABLE COI_DISCLOSURE_ATTACHMENT
add CONSTRAINT fe_fk
  FOREIGN KEY (FIN_ENTITY_ID_FK)
  REFERENCES PERSON_FIN_INT_DISCLOSURE (PERSON_FIN_INT_DISCLOSURE_ID)
/
ALTER TABLE COI_DISCLOSURE_ATTACHMENT DROP COLUMN ENTITY_NUMBER
/
ALTER TABLE COI_DISCLOSURE_ATTACHMENT DROP COLUMN ENTITY_SEQUENCE_NUMBER
/
ALTER TABLE COI_DISCLOSURE_ATTACHMENT MODIFY UPDATE_USER VARCHAR(60)
/
ALTER TABLE COI_DISCLOSURE_ATTACHMENT ADD ATTACHMENT_TYPE VARCHAR(5)
/
alter table COI_DISCLOSURE_ATTACHMENT ADD EVENT_TYPE_CODE VARCHAR2(3)
/
alter table COI_DISCLOSURE_ATTACHMENT MODIFY PROJECT_ID VARCHAR2(20)
/
