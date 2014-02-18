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
import org.codehaus.jackson.annotate.JsonProperty;
import org.kuali.kra.bo.Organization;
import org.kuali.kra.bo.Unit;
import org.kuali.kra.bo.UnitAdministrator;

public interface UnitMixin {

    @JsonProperty("unitNumber") String getUnitNumber();
    @JsonProperty("parentUnitNumber") String getParentUnitNumber();
    @JsonProperty("organizationId") String getOrganizationId();
    @JsonProperty("unitName") String getUnitName();
    @JsonProperty("code") String getCode();
    @JsonIgnore Unit getParentUnit();
    @JsonIgnore Organization getOrganization();
    @JsonIgnore List<UnitAdministrator> getUnitAdministrators();
    @JsonIgnore String getOrganizationIdForMaintenance();
    
}
