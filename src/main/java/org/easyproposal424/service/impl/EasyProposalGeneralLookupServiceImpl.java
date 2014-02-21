/*
 * Copyright 2005-2010 The Kuali Foundation
 * 
 * Licensed under the Educational Community License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.opensource.org/licenses/ecl1.php
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.easyproposal424.service.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;

import org.drools.core.util.StringUtils;
import org.easyproposal424.service.EasyProposalGeneralLookupService;
import org.kuali.kra.bo.KcPerson;
import org.kuali.kra.bo.Unit;
import org.kuali.kra.service.KcPersonService;
import org.kuali.rice.kim.api.identity.IdentityService;
import org.kuali.rice.kim.api.identity.Person;
import org.kuali.rice.kim.api.identity.PersonService;
import org.kuali.rice.kim.impl.identity.PersonImpl;
import org.kuali.rice.krad.service.BusinessObjectService;

public class EasyProposalGeneralLookupServiceImpl implements EasyProposalGeneralLookupService {
    
    private BusinessObjectService businessObjectService;
    private PersonService personService;
    
    
    /**
     * @see org.easyproposal424.service.EasyProposalGeneralLookupService#findUnit(java.lang.String, java.lang.String)
     */
    @Override
    public Collection<Unit> findUnit(String unitNumber, String unitName) {
        HashMap<String,String> crit = new HashMap<String,String>();
        if (!StringUtils.isEmpty(unitNumber)) crit.put("unitNumber", unitNumber);
        if (!StringUtils.isEmpty(unitName)) crit.put("unitName", unitName);
        Collection<Unit> results = businessObjectService.findMatching(Unit.class, crit);
        return results;
    }
    
    @Override
    public Collection<Person> findPerson(String lastName, String firstName, String userName) {
        HashMap<String,String> crit = new HashMap<String,String>();
        if(!StringUtils.isEmpty(lastName)) crit.put("lastName", lastName.toUpperCase());
        if(!StringUtils.isEmpty(firstName)) crit.put("firstName", firstName.toUpperCase());
        if(!StringUtils.isEmpty(userName)) crit.put("principalName", userName.toUpperCase());
        List<Person> persons = personService.findPeople(crit);
        return persons;
    }
    
    
    @Override
    public Collection<Unit> findUnit(String matchString) {
        return findUnit(null,matchString);
    }
    
    public void setBusinessObjectService(BusinessObjectService businessObjectService) {
        this.businessObjectService = businessObjectService;
    }
    
    public void setPersonService(PersonService personService) {
        this.personService = personService;
    }

}
