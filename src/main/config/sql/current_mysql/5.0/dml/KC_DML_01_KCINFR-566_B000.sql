DELIMITER /
INSERT INTO SEQ_KC_KRMS_TERM_FUNCTION_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUNCTION values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID),'KC1009','IS_FEDERAL_SPONSOR','java.lang.String',null,NOW(),'admin',1,UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM_SPEC values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID),(SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID),'sponsorCode','java.lang.Object',1,NOW(),'admin',1,UUID())
/
DELIMITER ;
