
CREATE OR REPLACE VIEW OSP$DEGREE_TYPE ( DEGREE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, DEGREE_LEVEL) 
	   AS select DEGREE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, null
	from DEGREE_TYPE
