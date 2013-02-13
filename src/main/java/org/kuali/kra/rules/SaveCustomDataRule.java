/*
 * Copyright 2005-2010 The Kuali Foundation
 * 
 * Licensed under the Educational Community License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.osedu.org/licenses/ECL-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.kuali.kra.rules;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.kuali.kra.bo.CustomAttribute;
import org.kuali.kra.bo.CustomAttributeDataType;
import org.kuali.kra.bo.CustomAttributeDocument;
import org.kuali.kra.bo.DocumentCustomData;
import org.kuali.kra.bo.KcPerson;
import org.kuali.kra.infrastructure.Constants;
import org.kuali.kra.infrastructure.KeyConstants;
import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.kra.lookup.keyvalue.ArgValueLookupValuesFinder;
import org.kuali.kra.rule.BusinessRuleInterface;
import org.kuali.kra.rule.event.SaveCustomDataEvent;
import org.kuali.kra.service.CustomAttributeService;
import org.kuali.kra.service.KcPersonService;
import org.kuali.rice.core.api.util.KeyValue;
import org.kuali.rice.core.api.util.RiceKeyConstants;
import org.kuali.rice.kns.datadictionary.validation.charlevel.AnyCharacterValidationPattern;
import org.kuali.rice.kns.datadictionary.validation.charlevel.NumericValidationPattern;
import org.kuali.rice.krad.datadictionary.validation.ValidationPattern;
import org.kuali.rice.krad.util.GlobalVariables;

/**
 * Validates the rules for a Custom Attribute save action.
 */
public class SaveCustomDataRule extends ResearchDocumentRuleBase implements BusinessRuleInterface<SaveCustomDataEvent> {

    private static final String STRING = "String";
    private static final String DATE = "Date";
    private static final String NUMBER = "Number";
    private static String CUSTOMATTRIBUTE_ERROR_START = "[";
    private static String CUSTOMATTRIBUTE_ERROR_END = "].value";   
    private static DateFormat dateFormat;
    private static final String DATE_REGEX = "(0?[1-9]|1[012])/(0?[1-9]|[12][0-9]|3[01])/(19|2[0-9])[0-9]{2}";
    private static Map<String, ValidationPattern> VALIDATION_CLASSES = new HashMap<String, ValidationPattern>();


    
    private CustomAttributeService customAttributeService;
    
    static {
        final Map<String, ValidationPattern> tempPatterns = new HashMap<String, ValidationPattern>();
        
        final AnyCharacterValidationPattern anyCharVal = new AnyCharacterValidationPattern();
        anyCharVal.setAllowWhitespace(true);
        
        tempPatterns.put(STRING, anyCharVal);
        tempPatterns.put(NUMBER, new NumericValidationPattern());
        
        VALIDATION_CLASSES = Collections.unmodifiableMap(tempPatterns);
        
        dateFormat = DateFormat.getDateInstance(DateFormat.SHORT);
        dateFormat.setLenient(false);
    }
    
    /**
     * {@inheritDoc}
     * @see org.kuali.kra.rule.BusinessRuleInterface#processRules(org.kuali.kra.rule.event.KraDocumentEventBaseExtension)
     */
    public boolean processRules(SaveCustomDataEvent event) {
        boolean rulePassed = true;
        Map<String, CustomAttributeDocument> customAttributeDocuments = event.getCustomAttributeDocuments();
        for (Map.Entry<String, CustomAttributeDocument> customAttributeDocumentEntry : customAttributeDocuments.entrySet()) {
            CustomAttributeDocument customAttributeDocument = customAttributeDocumentEntry.getValue();

            CustomAttribute customAttribute = customAttributeDocument.getCustomAttribute();
            List<? extends DocumentCustomData> customDataList = event.getCustomDataList();
            int index = 0;
            for (DocumentCustomData data : customDataList) {
                if (data.getCustomAttributeId() == customAttribute.getId().longValue()) {
                    customAttribute.setValue(data.getValue());
                    break;
                }
                index++;
            }
            String errorKey = event.getErrorPathPrefix() + CUSTOMATTRIBUTE_ERROR_START + index + CUSTOMATTRIBUTE_ERROR_END;
            if (StringUtils.isNotBlank(customAttribute.getValue())) {
                CustomAttributeDataType customAttributeDataType = customAttribute.getCustomAttributeDataType();
                if (customAttributeDataType == null && customAttribute.getDataTypeCode() != null) {
                    customAttributeDataType = getCustomAttributeService().getCustomAttributeDataType(customAttribute.getDataTypeCode());
                }

                if (customAttributeDataType != null) {
                    rulePassed &= validateAttributeFormat(customAttribute, errorKey);
                }
            }
            if (event.isValidateRequiredFields() && customAttributeDocument.isRequired() && StringUtils.isBlank(customAttribute.getValue())) {
                GlobalVariables.getMessageMap().putError(errorKey, RiceKeyConstants.ERROR_REQUIRED, 
                        customAttribute.getLabel(),customAttribute.getValue(), getValidFormat(customAttribute.getCustomAttributeDataType().getDescription()));
                 rulePassed = false;
            }
            
        }

        return rulePassed;
    }


    /**
     * 
     * This method is to validate the format/length of custom attribute
     * @param customAttribute
     * @param errorKey
     * @return
     */
    @SuppressWarnings("unchecked")
    protected boolean validateAttributeFormat(CustomAttribute customAttribute, String errorKey) {

        boolean isValid = true;
        CustomAttributeDataType customAttributeDataType = customAttribute.getCustomAttributeDataType();
        String attributeValue = customAttribute.getValue();
        if (customAttributeDataType == null && customAttribute.getDataTypeCode() != null) {
            customAttributeDataType = getCustomAttributeService().getCustomAttributeDataType(
                    customAttribute.getDataTypeCode());
        }
        if (customAttributeDataType != null) {
            Integer maxLength = customAttribute.getDataLength();
            if ((maxLength != null) && (maxLength.intValue() < attributeValue.length())) {
                reportError(errorKey, RiceKeyConstants.ERROR_MAX_LENGTH, customAttribute.getLabel(), maxLength.toString());
                isValid = false;
            }
                
            ValidationPattern validationPattern = VALIDATION_CLASSES.get(customAttributeDataType.getDescription());
            String validFormat = getValidFormat(customAttributeDataType.getDescription());
            if (validationPattern != null) {
                if (!validationPattern.matches(attributeValue)) {
                    reportError(errorKey, KeyConstants.ERROR_INVALID_FORMAT_WITH_FORMAT, customAttribute.getLabel(), attributeValue, validFormat);
                    isValid = false;
                }
            } else if (DATE.equals(customAttributeDataType.getDescription())) {
                if (attributeValue != null && !attributeValue.matches(DATE_REGEX)) {
                    reportError(errorKey, RiceKeyConstants.ERROR_INVALID_FORMAT, customAttribute.getLabel(), attributeValue, validFormat);
                    isValid = false;
                } else {
                    try {
                        dateFormat.parse(attributeValue);
                    }
                    catch (ParseException e) {
                        reportError(errorKey, KeyConstants.ERROR_DATE, attributeValue, customAttribute.getLabel());
                        isValid = false;
                    }
                }
            }
            
            // validate BO data against the database contents 
            String lookupClass = customAttribute.getLookupClass();
            if (lookupClass != null && lookupClass.equals("org.kuali.kra.bo.KcPerson"))
            {
                if (customAttribute.getDataTypeCode().equals("1") && customAttribute.getLookupReturn().equals("userName"))
                {
                    validFormat = getValidFormat(customAttributeDataType.getDescription());
                    KcPersonService kps = getKcPersonService();
                    KcPerson customPerson = kps.getKcPersonByUserName(customAttribute.getValue());
                    if (customPerson == null)
                    {
                        reportError(errorKey, RiceKeyConstants.ERROR_EXISTENCE, 
                            customAttribute.getLabel(), attributeValue, validFormat);
                        isValid = false;
                    }
                }
            } else if (lookupClass != null && lookupClass.equals("org.kuali.kra.bo.ArgValueLookup"))
            {
                    ArgValueLookupValuesFinder finder = new  ArgValueLookupValuesFinder();
                    finder.setArgName(customAttribute.getLookupReturn());
                    List<KeyValue> kv = finder.getKeyValues();
                    Iterator<KeyValue> i = kv.iterator();
                    boolean found = false;
                    while (i.hasNext())
                    {
                        KeyValue element = (KeyValue) i.next();
                        String label = element.getKey().toLowerCase();
                        if (label.equals(attributeValue.toLowerCase()))
                        {
                            found = true;
                        }      
                    }
                    if (!found) {
                        validFormat = getValidFormat(customAttributeDataType.getDescription());
                        reportError(errorKey, RiceKeyConstants.ERROR_EXISTENCE, 
                              customAttribute.getLabel(), attributeValue, validFormat);
                        isValid = false;
                    }
                        
            }
            else if (lookupClass != null)
            {    
                Class boClass = null;
                try
                {
                    boClass = Class.forName(lookupClass);
                }
                catch (ClassNotFoundException cnfE) {/* Do nothing, checked on input */ }

                if (isInvalid(boClass, keyValue(customAttribute.getLookupReturn(), customAttribute.getValue() ) ) )         
                {
                    validFormat = getValidFormat(customAttributeDataType.getDescription());
                    reportError(errorKey, RiceKeyConstants.ERROR_EXISTENCE, 
                             customAttribute.getLabel(), attributeValue, validFormat);
                    return false;
                }
            }                 
        }
        return isValid;
    }
    
    private String getValidFormat(String dataType) {
        String validFormat = Constants.DATA_TYPE_STRING;
        if (dataType.equalsIgnoreCase(NUMBER)) {
            validFormat = Constants.DATA_TYPE_NUMBER;
        } else if (dataType.equalsIgnoreCase(DATE)) {
            validFormat = Constants.DATA_TYPE_DATE;
        }
        return validFormat;
    }
    
    /**
     * Gets the Custom Attribute Service.
     * @return the Custom Attribute Service
     */
    public CustomAttributeService getCustomAttributeService() {
        if (customAttributeService == null) {
            customAttributeService = KraServiceLocator.getService(CustomAttributeService.class);
        }
        return customAttributeService;
    }
    
    /**
     * Sets the Custom Attribute Service.
     * @param customAttributeService the Custom Attribute Service
     */
    public void setCustomAttributeService(CustomAttributeService customAttributeService) {
        this.customAttributeService = customAttributeService;
    }

    /**
     * 
     * This method is a helper method to retrieve KcPersonService.
     * @return
     */
    protected KcPersonService getKcPersonService() {
        return KraServiceLocator.getService(KcPersonService.class);    
    }

    
}