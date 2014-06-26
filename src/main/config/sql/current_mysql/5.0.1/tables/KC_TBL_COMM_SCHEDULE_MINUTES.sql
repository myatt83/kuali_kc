DELIMITER /
ALTER TABLE
  COMM_SCHEDULE_MINUTES 
ADD IACUC_PROTOCOL_ID_FK  DECIMAL(12,0) NULL
/

ALTER TABLE
  COMM_SCHEDULE_MINUTES 
ADD IACUC_SUBMISSION_ID_FK  DECIMAL(12,0) NULL
/

ALTER TABLE
  COMM_SCHEDULE_MINUTES 
ADD IACUC_PROTOCOL_ONLN_RVW_FK  DECIMAL(12,0) NULL
/

ALTER TABLE
  COMM_SCHEDULE_MINUTES 
ADD IACUC_REVIEWER_ID_FK  DECIMAL(12,0) NULL
/

DELIMITER ;