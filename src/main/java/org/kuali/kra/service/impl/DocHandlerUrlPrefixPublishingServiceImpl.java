/*
 * Copyright 2005-2014 The Kuali Foundation
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
package org.kuali.kra.service.impl;

import org.apache.commons.lang.StringUtils;
import org.kuali.kra.service.DocHandlerUrlPrefixPublishingService;
import org.kuali.rice.core.api.config.ConfigurationException;
import org.kuali.rice.core.api.config.module.RunMode;
import org.kuali.rice.core.api.config.property.ConfigContext;
import org.kuali.rice.coreservice.api.parameter.EvaluationOperator;
import org.kuali.rice.coreservice.api.parameter.Parameter;
import org.kuali.rice.coreservice.api.parameter.ParameterType;
import org.kuali.rice.coreservice.framework.parameter.ParameterService;
import org.kuali.rice.kew.api.KewApiServiceLocator;
import org.springframework.beans.factory.InitializingBean;

/**
 * The DocHandlerUrlPrefixPublishingService Implementation.
 *
 * @author Kuali Research Administration Team (kualidev@oncourse.iu.edu)
 */
public class DocHandlerUrlPrefixPublishingServiceImpl implements DocHandlerUrlPrefixPublishingService, InitializingBean {
    private static final org.apache.log4j.Logger LOG = org.apache.log4j.Logger.getLogger(DocHandlerUrlPrefixPublishingServiceImpl.class);
    private String parameterName;
    private String parameterApplicationId;
    private String parameterNamespaceCode;
    private String parameterComponentCode;
    private String parameterTypeCode;
    private String parameterValue;
    /**
     * Enabled by default to be backwards compatible. If disabled, then the system parameter will not be published.
     */
    private boolean publishingEnabled = true;

    private ParameterService parameterService;

    public String getParameterName() {
        return parameterName;
    }

    public void setParameterName(String parameterName) {
        this.parameterName = parameterName;
    }

    public String getParameterApplicationId() {
        return parameterApplicationId;
    }

    public void setParameterApplicationId(String parameterApplicationId) {
        this.parameterApplicationId = parameterApplicationId;
    }

    public String getParameterNamespaceCode() {
        return parameterNamespaceCode;
    }

    public void setParameterNamespaceCode(String parameterNamespaceCode) {
        this.parameterNamespaceCode = parameterNamespaceCode;
    }

    public String getParameterComponentCode() {
        return parameterComponentCode;
    }

    public void setParameterComponentCode(String parameterComponentCode) {
        this.parameterComponentCode = parameterComponentCode;
    }

    public String getParameterTypeCode() {
        return parameterTypeCode;
    }

    public void setParameterTypeCode(String parameterTypeCode) {
        this.parameterTypeCode = parameterTypeCode;
    }

    public String getParameterValue() {
        return parameterValue;
    }

    public void setParameterValue(String parameterValue) {
        this.parameterValue = parameterValue;
    }

    /**
     * Gets the publishingEnabled attribute.
     * @return Returns the publishingEnabled.
     */
    public boolean isPublishingEnabled() {
        return publishingEnabled;
    }

    /**
     * Sets the publishingEnabled attribute value.
     * @param publishingEnabled The publishingEnabled to set.
     */
    public void setPublishingEnabled(boolean publishingEnabled) {
        LOG.debug("setPublishingEnabled(boolean " + publishingEnabled + ")");
        this.publishingEnabled = publishingEnabled;
    }

    public void setParameterService(ParameterService parameterService) {
        this.parameterService = parameterService;
    }
    
    public RunMode getKewRunMode() {      
        String propertyName = KewApiServiceLocator.KEW_RUN_MODE_PROPERTY;
        String runMode = ConfigContext.getCurrentContextConfig().getProperty(propertyName);
        if (StringUtils.isBlank(runMode)) {
            throw new ConfigurationException("Failed to determine kew run mode.  Please be sure to set configuration parameter kew.mode");
        }        
        return RunMode.valueOf(runMode.toUpperCase());
    }
    
    @Override
    public void publishDocHandlerUrlPrefix() {
        if (publishingEnabled) {
            LOG.info("Publishing system parameter: " + parameterName + " = " + parameterValue);
            if (RunMode.EMBEDDED == getKewRunMode()) {
                ParameterType.Builder parameterType = ParameterType.Builder.create(parameterTypeCode);
                Parameter.Builder parameter = Parameter.Builder.create(parameterApplicationId, parameterNamespaceCode, parameterComponentCode, parameterName, parameterType);
                parameter.setDescription("KC application docHandler prefix");
                parameter.setValue(parameterValue);
                parameter.setEvaluationOperator(EvaluationOperator.ALLOW);
                Parameter existingParameter = parameterService.getParameter(parameterNamespaceCode, parameterComponentCode, parameterName);
                if(existingParameter == null) {
                    parameterService.createParameter(parameter.build());
                } else if(!StringUtils.equals(existingParameter.getValue(), parameterValue)) {
                    parameter.setObjectId(existingParameter.getObjectId());
                    parameter.setVersionNumber(existingParameter.getVersionNumber());
                    parameterService.updateParameter(parameter.build());
                }
            }
        }
    }  

    @Override
    public void afterPropertiesSet() throws Exception {
        publishDocHandlerUrlPrefix();
    }
}