UPDATE KIM_PERSON_QUAL_ATTR_T SET ATTRIBUTE_NAME = 'unitNumber' WHERE ATTRIBUTE_NAME = 'kra.unitNumber';
UPDATE KIM_PERSON_QUAL_ATTR_T SET ATTRIBUTE_NAME = 'subunits' WHERE ATTRIBUTE_NAME = 'kra.subunits';
UPDATE KIM_PERSON_QUAL_ATTR_T SET ATTRIBUTE_NAME = 'proposal' WHERE ATTRIBUTE_NAME = 'kra.proposal';
UPDATE KIM_PERSON_QUAL_ATTR_T SET ATTRIBUTE_NAME = 'protocol' WHERE ATTRIBUTE_NAME = 'kra.protocol';
UPDATE KIM_PERSON_QUAL_ATTR_T SET ATTRIBUTE_NAME = 'committee' WHERE ATTRIBUTE_NAME = 'kra.committee';
UPDATE KIM_PERSON_QUAL_ATTR_T SET ATTRIBUTE_NAME = 'award' WHERE ATTRIBUTE_NAME = 'kra.award';
UPDATE KIM_PERSON_QUAL_ATTR_T SET ATTRIBUTE_NAME = 'timeandmoney' WHERE ATTRIBUTE_NAME = 'kra.timeandmoney';

UPDATE KRIM_ATTR_DEFN_T SET NM = 'unitNumber' WHERE NM = 'kra.unitNumber';
UPDATE KRIM_ATTR_DEFN_T SET NM = 'subunits' WHERE NM = 'kra.subunits';

UPDATE KRIM_ATTR_DEFN_T SET NM = 'proposal' WHERE NM = 'kra.proposal';
UPDATE KRIM_ATTR_DEFN_T SET NM = 'protocol' WHERE NM = 'kra.protocol';
UPDATE KRIM_ATTR_DEFN_T SET NM = 'committee' WHERE NM = 'kra.committee';
UPDATE KRIM_ATTR_DEFN_T SET NM = 'timeandmoney' WHERE NM = 'kra.timeandmoney';
UPDATE KRIM_ATTR_DEFN_T SET NM = 'award' WHERE NM = 'kra.award';

COMMIT;