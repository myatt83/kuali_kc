DELIMITER /
delete from COI_DISCLOSURE_STATUS
/
insert into COI_DISCLOSURE_STATUS (COI_DISCLOSURE_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID) VALUES (1, 'In progress', NOW(), 'admin',  UUID())
/
insert into COI_DISCLOSURE_STATUS (COI_DISCLOSURE_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID) VALUES (2, 'Routed for Review', NOW(), 'admin',  UUID())
/
insert into COI_DISCLOSURE_STATUS (COI_DISCLOSURE_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID) VALUES (3, 'Approved', NOW(), 'admin',  UUID())
/
insert into COI_DISCLOSURE_STATUS (COI_DISCLOSURE_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID) VALUES (4, 'Disapproved', NOW(), 'admin',  UUID())
/
INSERT INTO COI_DISPOSITION_STATUS ( COI_DISPOSITION_CODE, COI_DISCLOSURE_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID ) VALUES ( 100, 1, 'In progress', NOW(), 'admin',  UUID() )
/
INSERT INTO COI_DISPOSITION_STATUS ( COI_DISPOSITION_CODE, COI_DISCLOSURE_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID ) VALUES ( 200, 2, 'Submitted for Review', NOW(), 'admin',  UUID() )
/
INSERT INTO COI_DISPOSITION_STATUS ( COI_DISPOSITION_CODE, COI_DISCLOSURE_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID ) VALUES ( 201, 2, 'Under Review by COI Reviewer', NOW(), 'admin',  UUID() )
/
INSERT INTO COI_DISPOSITION_STATUS ( COI_DISPOSITION_CODE, COI_DISCLOSURE_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID ) VALUES ( 202, 2, 'Under COI Office Review', NOW(), 'admin',  UUID() )
/
INSERT INTO COI_DISPOSITION_STATUS ( COI_DISPOSITION_CODE, COI_DISCLOSURE_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID ) VALUES ( 203, 2, 'Under COI Committee Review', NOW(), 'admin',  UUID() )
/
INSERT INTO COI_DISPOSITION_STATUS ( COI_DISPOSITION_CODE, COI_DISCLOSURE_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID ) VALUES ( 300, 3, 'Best Practices Memo', NOW(), 'admin',  UUID() )
/
INSERT INTO COI_DISPOSITION_STATUS ( COI_DISPOSITION_CODE, COI_DISCLOSURE_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID ) VALUES ( 301, 3, 'No Further Action', NOW(), 'admin',  UUID() )
/
INSERT INTO COI_DISPOSITION_STATUS ( COI_DISPOSITION_CODE, COI_DISCLOSURE_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID ) VALUES ( 302, 3, 'Disclosed Interests Eliminated', NOW(), 'admin',  UUID() )
/
INSERT INTO COI_DISPOSITION_STATUS ( COI_DISPOSITION_CODE, COI_DISCLOSURE_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID ) VALUES ( 303, 3, 'Disclosed Interests Reduced', NOW(), 'admin',  UUID() )
/
INSERT INTO COI_DISPOSITION_STATUS ( COI_DISPOSITION_CODE, COI_DISCLOSURE_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID ) VALUES ( 304, 3, 'Disclosed Interests Managed', NOW(), 'admin',  UUID() )
/
INSERT INTO COI_DISPOSITION_STATUS ( COI_DISPOSITION_CODE, COI_DISCLOSURE_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID ) VALUES ( 305, 3, 'No Conflict Exists', NOW(), 'admin',  UUID() )
/
INSERT INTO COI_DISPOSITION_STATUS ( COI_DISPOSITION_CODE, COI_DISCLOSURE_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID ) VALUES ( 306, 3, 'Exempt', NOW(), 'admin',  UUID() )
/
INSERT INTO COI_DISPOSITION_STATUS ( COI_DISPOSITION_CODE, COI_DISCLOSURE_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID ) VALUES ( 400, 4, 'Disclosed Interests Unmanageable', NOW(), 'admin',  UUID() )
/
DELIMITER ;
