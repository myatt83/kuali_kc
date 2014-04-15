DELIMITER /
INSERT INTO SEQUENCE_AWARD_ID VALUES(NULL)
/
INSERT INTO AWARD_HIERARCHY (AWARD_HIERARCHY_ID,AWARD_NUMBER,ROOT_AWARD_NUMBER,PARENT_AWARD_NUMBER,ORIGINATING_AWARD_NUMBER,ACTIVE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQUENCE_AWARD_ID),'001002-00001','001002-00001','000000-00000','001002-00001','Y','quickstart',NOW(),UUID(),0)
/
INSERT INTO SEQUENCE_AWARD_ID VALUES(NULL)
/
INSERT INTO AWARD_HIERARCHY (AWARD_HIERARCHY_ID,AWARD_NUMBER,ROOT_AWARD_NUMBER,PARENT_AWARD_NUMBER,ORIGINATING_AWARD_NUMBER,ACTIVE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQUENCE_AWARD_ID),'001002-00002','001002-00001','001002-00001','001002-00001','Y','quickstart',NOW(),UUID(),0)
/
INSERT INTO SEQUENCE_AWARD_ID VALUES(NULL)
/
INSERT INTO AWARD_HIERARCHY (AWARD_HIERARCHY_ID,AWARD_NUMBER,ROOT_AWARD_NUMBER,PARENT_AWARD_NUMBER,ORIGINATING_AWARD_NUMBER,ACTIVE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQUENCE_AWARD_ID),'001002-00003','001002-00001','001002-00001','001002-00001','Y','quickstart',NOW(),UUID(),0)
/
INSERT INTO SEQUENCE_AWARD_ID VALUES(NULL)
/
INSERT INTO AWARD_HIERARCHY (AWARD_HIERARCHY_ID,AWARD_NUMBER,ROOT_AWARD_NUMBER,PARENT_AWARD_NUMBER,ORIGINATING_AWARD_NUMBER,ACTIVE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQUENCE_AWARD_ID),'001002-00004','001002-00001','001002-00003','001002-00001','Y','quickstart',NOW(),UUID(),0)
/
INSERT INTO SEQUENCE_AWARD_ID VALUES(NULL)
/
INSERT INTO AWARD_HIERARCHY (AWARD_HIERARCHY_ID,AWARD_NUMBER,ROOT_AWARD_NUMBER,PARENT_AWARD_NUMBER,ORIGINATING_AWARD_NUMBER,ACTIVE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQUENCE_AWARD_ID),'001002-00005','001002-00001','001002-00001','001002-00001','Y','quickstart',NOW(),UUID(),0)
/
INSERT INTO SEQUENCE_AWARD_ID VALUES(NULL)
/
INSERT INTO AWARD_HIERARCHY (AWARD_HIERARCHY_ID,AWARD_NUMBER,ROOT_AWARD_NUMBER,PARENT_AWARD_NUMBER,ORIGINATING_AWARD_NUMBER,ACTIVE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQUENCE_AWARD_ID),'001002-00006','001002-00001','001002-00005','001002-00001','Y','quickstart',NOW(),UUID(),0)
/
INSERT INTO SEQUENCE_AWARD_ID VALUES(NULL)
/
INSERT INTO AWARD_HIERARCHY (AWARD_HIERARCHY_ID,AWARD_NUMBER,ROOT_AWARD_NUMBER,PARENT_AWARD_NUMBER,ORIGINATING_AWARD_NUMBER,ACTIVE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQUENCE_AWARD_ID),'001002-00007','001002-00001','001002-00005','001002-00001','Y','quickstart',NOW(),UUID(),0)
/
INSERT INTO SEQUENCE_AWARD_ID VALUES(NULL)
/
INSERT INTO AWARD_HIERARCHY (AWARD_HIERARCHY_ID,AWARD_NUMBER,ROOT_AWARD_NUMBER,PARENT_AWARD_NUMBER,ORIGINATING_AWARD_NUMBER,ACTIVE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQUENCE_AWARD_ID),'001002-00008','001002-00001','001002-00007','001002-00001','Y','quickstart',NOW(),UUID(),0)
/
INSERT INTO SEQUENCE_AWARD_ID VALUES(NULL)
/
INSERT INTO AWARD_HIERARCHY (AWARD_HIERARCHY_ID,AWARD_NUMBER,ROOT_AWARD_NUMBER,PARENT_AWARD_NUMBER,ORIGINATING_AWARD_NUMBER,ACTIVE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQUENCE_AWARD_ID),'001002-00009','001002-00001','001002-00002','001002-00002','Y','quickstart',NOW(),UUID(),0)
/
DELIMITER ;