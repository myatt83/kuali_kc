CREATE OR REPLACE VIEW OSP$FREQUENCY AS SELECT 
	FREQUENCY_CODE, 
	DESCRIPTION, 
	NUMBER_OF_DAYS, 
	NUMBER_OF_MONTHS, 
	REPEAT_FLAG, 
	PROPOSAL_DUE_FLAG, 
	INVOICE_FLAG, 
	UPDATE_TIMESTAMP, 
	UPDATE_USER, 
	ADVANCE_NUMBER_OF_DAYS, 
	ADVANCE_NUMBER_OF_MONTHS
FROM FREQUENCY
/