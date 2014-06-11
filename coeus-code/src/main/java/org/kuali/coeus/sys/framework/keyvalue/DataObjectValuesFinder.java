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
package org.kuali.coeus.sys.framework.keyvalue;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.beanutils.PropertyUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.kuali.rice.core.api.criteria.QueryByCriteria;
import org.kuali.rice.core.api.util.ConcreteKeyValue;
import org.kuali.rice.core.api.util.KeyValue;
import org.kuali.rice.krad.data.DataObjectService;
import org.kuali.rice.krad.uif.control.UifKeyValuesFinderBase;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
@Component("dataObjectValuesFinder")
public class DataObjectValuesFinder extends UifKeyValuesFinderBase {

    private static final Log LOG = LogFactory.getLog(DataObjectValuesFinder.class);
    private static final long serialVersionUID = 1L;

    protected Class<?> dataObjectClass;
    protected String keyAttributeName;
    protected String labelAttributeName;
    protected boolean includeKeyInDescription = false;
    protected String blankRowValue = "select";
    protected Map<String,String> matchingCriteria = new HashMap<String,String>();

    @Autowired
    @Qualifier("dataObjectService")
    private DataObjectService dataObjectService;
    
    /**
     * Build the list of KeyValues using the key (keyAttributeName) and
     * label (labelAttributeName) of the list of all data objects found
     * for the BO class specified.
     */
    @Override
	public List<KeyValue> getKeyValues() {
        List<KeyValue> labels = new ArrayList<KeyValue>();
    	try {
            Collection<?> objects = null;
            if(matchingCriteria == null || matchingCriteria.isEmpty()) {
            	objects = getDataObjectService().findAll(dataObjectClass).getResults();
            }else {
            	objects = getDataObjectService().findMatching(dataObjectClass,QueryByCriteria.Builder.andAttributes(matchingCriteria).build()).getResults();
            }
            if(isAddBlankOption()) {
            	labels.add(new ConcreteKeyValue("", blankRowValue));
            }
            for (Object object : objects) {
            	Object key = PropertyUtils.getProperty(object, keyAttributeName);
            	String label = (String)PropertyUtils.getProperty(object, labelAttributeName);
            	if (includeKeyInDescription) {
            	    label = key + " - " + label;
            	}
            	labels.add(new ConcreteKeyValue(key.toString(), label));
    	    }
    	} catch (Exception e) {
            LOG.error("Exception occurred while trying to build keyValues List: " + this, e);
    	}
        return labels;
    }

    public void setDataObjectClass(Class<?> dataObjectClass) {
        this.dataObjectClass = dataObjectClass;
    }

    public void setIncludeKeyInDescription(boolean includeKeyInDescription) {
        this.includeKeyInDescription = includeKeyInDescription;
    }

    public void setKeyAttributeName(String keyAttributeName) {
        this.keyAttributeName = keyAttributeName;
    }

    public void setLabelAttributeName(String labelAttributeName) {
        this.labelAttributeName = labelAttributeName;
    }

    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder();
        builder.append("PersistableDataObjectValuesFinder [dataObjectClass=").append(this.dataObjectClass)
                .append(", keyAttributeName=").append(this.keyAttributeName).append(", labelAttributeName=")
                .append(this.labelAttributeName).append(", includeKeyInDescription=")
                .append(this.includeKeyInDescription).append(", includeBlankRow=").append(isAddBlankOption())
                .append("]");
        return builder.toString();
    }

	public DataObjectService getDataObjectService() {
		return dataObjectService;
	}

	public void setBlankRowValue(String blankRowValue) {
		this.blankRowValue = blankRowValue;
	}

	public Map<String, String> getMatchingCriteria() {
		return matchingCriteria;
	}

	public void setMatchingCriteria(Map<String, String> matchingCriteria) {
		this.matchingCriteria = matchingCriteria;
	}

	public void setDataObjectService(DataObjectService dataObjectService) {
		this.dataObjectService = dataObjectService;
	}
    
}
