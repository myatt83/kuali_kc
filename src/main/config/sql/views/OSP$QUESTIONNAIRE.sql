-- View for Coeus compatibility 
CREATE OR REPLACE VIEW OSP$QUESTIONNAIRE AS SELECT 
    QUESTIONNAIRE_ID, 
    NAME, 
    DESCRIPTION, 
    UPDATE_TIMESTAMP, 
    UPDATE_USER, 
    IS_FINAL
FROM QUESTIONNAIRE;