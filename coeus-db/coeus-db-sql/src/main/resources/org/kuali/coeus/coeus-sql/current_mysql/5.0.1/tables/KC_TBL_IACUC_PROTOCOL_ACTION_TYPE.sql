DELIMITER /
ALTER TABLE IACUC_PROTOCOL_ACTION_TYPE ADD FINAL_ACTION_FOR_BATCH_CORRESP VARCHAR(1) DEFAULT 'N' NOT NULL
/

DELIMITER ;
