CREATE TABLE S2S_FORM_TO_QUESTIONNAIRE  ( 
    S2S_FORM_TO_QUESTIONNAIRE_ID	DECIMAL(12,0) NOT NULL,
	OPP_NAME_SPACE                  VARCHAR(200) NOT NULL,
	FORM_NAME                       VARCHAR(100) NOT NULL,
    QUESTIONNAIRE_ID                DECIMAL(12,0) NOT NULL,
	UPDATE_TIMESTAMP                DATE NOT NULL,
	UPDATE_USER                     VARCHAR(60) NOT NULL,
    OBJ_ID                          VARCHAR(36) NOT NULL,
    VER_NBR                         DECIMAL(8,0) NOT NULL
);

ALTER TABLE S2S_FORM_TO_QUESTIONNAIRE ADD (
	CONSTRAINT S2S_FORM_TO_QUESTIONNAIRE_PK
	PRIMARY KEY ( S2S_FORM_TO_QUESTIONNAIRE_ID )
);

ALTER TABLE S2S_FORM_TO_QUESTIONNAIRE ADD (
	CONSTRAINT S2S_FORM_TO_QUESTIONNAIRE_UQ
	UNIQUE ( S2S_FORM_TO_QUESTIONNAIRE_ID, OPP_NAME_SPACE )
);