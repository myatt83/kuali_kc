delimiter /
TRUNCATE TABLE UNIT
/
INSERT INTO UNIT (UNIT_NUMBER,UNIT_NAME,ORGANIZATION_ID,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
    VALUES ('000001','University','000001','admin',NOW(),UUID(),1)
/
delimiter ;
