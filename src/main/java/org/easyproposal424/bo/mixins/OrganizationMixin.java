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
package org.easyproposal424.bo.mixins;

import java.util.List;

import org.codehaus.jackson.annotate.JsonIgnore;

import org.kuali.kra.bo.OrganizationAudit;
import org.kuali.kra.bo.OrganizationIndirectcost;
import org.kuali.kra.bo.OrganizationType;
import org.kuali.kra.bo.OrganizationYnq;
import org.kuali.kra.bo.Rolodex;

public interface OrganizationMixin extends KraPersistableBusinessObjectBaseMixin {
    @JsonIgnore Rolodex getCognizantAuditorRolodex();
    @JsonIgnore Rolodex getOnrResidentRepRolodex();
    @JsonIgnore Rolodex getRolodex();
    @JsonIgnore List<OrganizationYnq> getOrganizationYnqs();
    @JsonIgnore List<OrganizationType> getOrganizationTypes();
    @JsonIgnore List<OrganizationIndirectcost> getOrganizationIdcs();
    @JsonIgnore List<OrganizationAudit> getOrganizationAudits();
}
