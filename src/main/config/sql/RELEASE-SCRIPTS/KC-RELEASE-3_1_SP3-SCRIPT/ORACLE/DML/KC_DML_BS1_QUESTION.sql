update QUESTION 
        set QUESTION_TYPE_ID = 6, 
            LOOKUP_CLASS = 'org.kuali.kra.bo.ArgValueLookup',
            LOOKUP_RETURN = 'GraduateLevelDegree' 
        where QUESTION_ID = (select QUESTION_ID from QUESTION where QUESTION = 'Please select the type of degree sought during the proposed award, from the list of options provided. If the degree being sought does not appear on the list, please select the most appropriate "other" degree type from the list.' and GROUP_TYPE_CODE = 4 and SEQUENCE_NUMBER = 2);

update QUESTION 
        set QUESTION_TYPE_ID = 6, 
            LOOKUP_CLASS = 'org.kuali.kra.bo.ArgValueLookup',
            LOOKUP_RETURN = 'FieldOfTraining-SubCategory' 
        where QUESTION_ID = (select QUESTION_ID from QUESTION where QUESTION = 'Select the field of training that best applies to the proposed award from the sub category list. A list of broad categories is available if there is no suitable subcategory, though use of broad categories is discouraged by the sponsor.' and SEQUENCE_NUMBER = 2);

update QUESTION 
        set QUESTION_TYPE_ID = 6, 
            LOOKUP_CLASS = 'org.kuali.kra.bo.ArgValueLookup',
            LOOKUP_RETURN = 'FieldOfTraining-Broad' 
        where QUESTION_ID = (select QUESTION_ID from QUESTION where QUESTION = 'Please only use one of these broader category descriptions of field of training if it is truly the best fit.' and SEQUENCE_NUMBER = 2);

update QUESTION 
        set QUESTION_TYPE_ID = 6, 
            LOOKUP_CLASS = 'org.kuali.kra.bo.ArgValueLookup',
            LOOKUP_RETURN = 'GraduateLevelDegree' 
        where QUESTION_ID = (select QUESTION_ID from QUESTION where QUESTION = 'Please select the type of graduate level degree earned from the list.  If the degree you''ve earned does not appear in the list, please select the most appropriate "other" degree type from the list.' and SEQUENCE_NUMBER = 2);

update QUESTION 
        set QUESTION_TYPE_ID = 6, 
            LOOKUP_CLASS = 'org.kuali.kra.bo.ArgValueLookup',
            LOOKUP_RETURN = 'Kirschstein-NRSASupportLevel' 
        where QUESTION_ID = (select QUESTION_ID from QUESTION where QUESTION = 'Was the Kirschstein NRSA support level for Predoctoral or Postdoctoral training?' and SEQUENCE_NUMBER = 2);

update QUESTION 
        set QUESTION_TYPE_ID = 6, 
            LOOKUP_CLASS = 'org.kuali.kra.bo.ArgValueLookup',
            LOOKUP_RETURN = 'Kirschstein-NRSAAwardTYPE' 
        where QUESTION_ID = (select QUESTION_ID from QUESTION where QUESTION = 'Was the prior Kirschstein NRSA support for an Individual or an Institution?' and SEQUENCE_NUMBER = 2);

update QUESTION 
        set QUESTION_TYPE_ID = 6, 
            LOOKUP_CLASS = 'org.kuali.kra.bo.ArgValueLookup',
            LOOKUP_RETURN = 'AcademicAppointmentPeriod' 
        where QUESTION_ID = (select QUESTION_ID from QUESTION where QUESTION = 'Please select the academic period of time on which the salary is determined (e.g., academic year of 9 months, full-time 12 months, etc.  Select a value from the list presented:' and SEQUENCE_NUMBER = 2);

update QUESTION 
        set QUESTION_TYPE_ID = 6, 
            LOOKUP_CLASS = 'org.kuali.kra.bo.ArgValueLookup',
            LOOKUP_RETURN = 'GraduateLevelDegree1-2' 
        where QUESTION_ID = (select QUESTION_ID from QUESTION where QUESTION = 'Please select the type of degree sought during the proposed award, from the list of options provided. If the degree being sought does not appear on the list, please select the most appropriate "other" degree type from the list.' and GROUP_TYPE_CODE = 5 and SEQUENCE_NUMBER = 1);

commit;