delimiter /
TRUNCATE TABLE SCHOOL_CODE
/
INSERT INTO SCHOOL_CODE (SCHOOL_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (1,'DUNS','admin',NOW(),UUID(),1)
/
INSERT INTO SCHOOL_CODE (SCHOOL_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (9,'DUNS+4','admin',NOW(),UUID(),1)
/
INSERT INTO SCHOOL_CODE (SCHOOL_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (10,'DODACC','admin',NOW(),UUID(),1)
/
INSERT INTO SCHOOL_CODE (SCHOOL_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (33,'CAGE','admin',NOW(),UUID(),1)
/
delimiter ;