insert into KIM_PERMISSIONS_T (ID,NAME,DESCRIPTION,NAMESPACE_ID) values(12,'SUBMIT_TO_SPONSOR','Submit a Proposal to Grants.gov', 2);
insert into KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) values(8,12);
insert into UNIT_ACL (ID, PERSON_ID, ROLE_ID, UNIT_NUMBER, SUBUNITS, ACTIVE_FLAG)
values (1, '000000003', 8, '000001', 'N', 'Y');
insert into UNIT_ACL (ID, PERSON_ID, ROLE_ID, UNIT_NUMBER, SUBUNITS, ACTIVE_FLAG)
values (1, '000000003', 8, 'BL-IIDC', 'N', 'Y');
insert into UNIT_ACL (ID, PERSON_ID, ROLE_ID, UNIT_NUMBER, SUBUNITS, ACTIVE_FLAG)
values (1, '000000003', 8, 'IN-CARD', 'N', 'Y');
commit;