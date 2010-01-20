ALTER TABLE COMM_SCHEDULE_MINUTES 
ADD ("REVIEWER_ID_FK" NUMBER(12, 0))
;

ALTER TABLE COMM_SCHEDULE_MINUTES 
ADD CONSTRAINT COMM_SCHEDULE_MINUTES_PRO_FK1 FOREIGN KEY 
(
"COMM_SCHEDULE_MINUTES_ID"
) REFERENCES PROTOCOL_REVIEWERS 
(
"PROTOCOL_REVIEWER_ID"
) ENABLE
;