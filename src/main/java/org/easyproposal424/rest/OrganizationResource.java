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

import java.util.Collection;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import org.codehaus.jackson.map.ObjectMapper;
import org.easyproposal424.bo.mixins.SponsorMixin;
import org.easyproposal424.service.EasyProposalGeneralLookupService;
import org.kuali.kra.bo.Organization;
import org.kuali.kra.infrastructure.KraServiceLocator;


@Path("/organization")
public class OrganizationResource {
    
    private EasyProposalGeneralLookupService lookupService;
    
    public OrganizationResource() {
        lookupService = KraServiceLocator.getService(EasyProposalGeneralLookupService.class); 
    }  
  
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Collection<Organization> findOrganization( @QueryParam("searchVal") String searchVal) {
        Collection<Organization> res = lookupService.findOrganization(searchVal);
        return res;
    }
   
}
