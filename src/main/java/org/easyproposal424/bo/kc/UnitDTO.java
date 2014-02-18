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
package org.easyproposal424.bo.kc;

import java.io.Serializable;
import org.kuali.kra.bo.Unit;


public class UnitDTO implements Serializable {
    
    private static final long serialVersionUID = 1L;
    
    private String unitNumber;
    private String parentUnitNumber;
    private String organizationId;
    private String unitName;
    private String code;
    private boolean active;

    public UnitDTO() {
        
    }

    public UnitDTO(Unit unit) {
        this.setUnitNumber(unit.getUnitNumber());
        this.setParentUnitNumber(unit.getParentUnitNumber());
        this.setOrganizationId(unit.getOrganizationId());
        this.setUnitName(unit.getUnitName());
        this.setCode(unit.getCode());
        this.setActive(unit.isActive());
    }
    
    
    
    public static UnitDTO fromUnit(Unit fromUnit) {
        UnitDTO result = new UnitDTO();
        result.setUnitNumber(fromUnit.getUnitNumber());
        result.setParentUnitNumber(fromUnit.getParentUnitNumber());
        result.setOrganizationId(fromUnit.getOrganizationId());
        result.setUnitName(fromUnit.getUnitName());
        result.setCode(fromUnit.getCode());
        result.setActive(fromUnit.isActive());
        return result;
    }
    

    public String getUnitNumber() {
        return unitNumber;
    }

    public void setUnitNumber(String unitNumber) {
        this.unitNumber = unitNumber;
    }

    public String getParentUnitNumber() {
        return parentUnitNumber;
    }

    public void setParentUnitNumber(String parentUnitNumber) {
        this.parentUnitNumber = parentUnitNumber;
    }

    public String getOrganizationId() {
        return organizationId;
    }

    public void setOrganizationId(String organizationId) {
        this.organizationId = organizationId;
    }

    public String getUnitName() {
        return unitName;
    }

    public void setUnitName(String unitName) {
        this.unitName = unitName;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }
    
    
    

    
    
    
    
    
}
