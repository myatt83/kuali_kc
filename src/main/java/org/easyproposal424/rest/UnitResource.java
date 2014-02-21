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
package org.easyproposal424.rest;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import org.codehaus.jackson.map.ObjectMapper;
import org.easyproposal424.bo.kc.UnitDTO;
import org.easyproposal424.bo.mixins.UnitMixin;
import org.easyproposal424.service.EasyProposalGeneralLookupService;
import org.kuali.kra.bo.Unit;
import org.kuali.kra.infrastructure.KraServiceLocator;


@Path("/unit")
public class UnitResource {
    
    
    private EasyProposalGeneralLookupService lookupService;
    
    
    
    
    public UnitResource() {
        lookupService = KraServiceLocator.getService(EasyProposalGeneralLookupService.class);
    }
    
  
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<UnitDTO> findUnits( @QueryParam("unitNumber") String unitNumber,@QueryParam("unitName") String unitName) {
        Collection<Unit> res = lookupService.findUnit(unitNumber, unitName);
        List<UnitDTO> outputList = new ArrayList<UnitDTO>();
        for (Unit unit:res) {
            outputList.add(UnitDTO.fromUnit(unit));
        }
        return outputList;
    }
    
    
    @GET
    @Path("/mappedUnit")
    @Produces(MediaType.APPLICATION_JSON)
    public Collection<Unit> findMappedUnits( @QueryParam("unitNumber") String unitNumber,@QueryParam("unitName") String unitName) {
        Collection<Unit> res = lookupService.findUnit(unitNumber, unitName);
        return res;
    }
    
    @GET
    @Path("/userUnits")
    @Produces(MediaType.APPLICATION_JSON)
    public Collection<Unit> findUserAuthorizedUnits( @QueryParam("userid") String userid) {
        Collection<Unit> res = lookupService.findUserAuthorizedUnits(userid);      
        return res;
    }
    
 
}
