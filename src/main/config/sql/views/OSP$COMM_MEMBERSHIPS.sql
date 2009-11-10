-- View for Coeus compatibility 
CREATE OR REPLACE VIEW OSP$COMM_MEMBERSHIPS AS

SELECT
    COMMITTEE.COMMITTEE_ID,
    CASE 
      WHEN COMM_MEMBERSHIPS.PERSON_ID IS NULL THEN TO_CHAR(COMM_MEMBERSHIPS.ROLODEX_ID) 
      ELSE COMM_MEMBERSHIPS.PERSON_ID
    END AS PERSON_ID,
    COMM_MEMBERSHIPS.MEMBERSHIP_ID,
    COMMITTEE.SEQUENCE_NUMBER,
    COMM_MEMBERSHIPS.PERSON_NAME,
    CASE
      WHEN COMM_MEMBERSHIPS.PERSON_ID IS NULL THEN 'N'
      ELSE 'Y'
    END AS NON_EMPLOYEE_FLAG,
    COMM_MEMBERSHIPS.PAID_MEMBER_FLAG,
    COMM_MEMBERSHIPS.TERM_START_DATE,
    COMM_MEMBERSHIPS.TERM_END_DATE,
    COMM_MEMBERSHIPS.MEMBERSHIP_TYPE_CODE,
    COMM_MEMBERSHIPS.COMMENTS,
    COMM_MEMBERSHIPS.UPDATE_TIMESTAMP,
    COMM_MEMBERSHIPS.UPDATE_USER
FROM COMM_MEMBERSHIPS, COMMITTEE
WHERE COMM_MEMBERSHIPS.COMMITTEE_ID_FK = COMMITTEE.ID;