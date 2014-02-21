package org.easyproposal424.rest;

import java.util.Collection;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import org.easyproposal424.service.EasyProposalGeneralLookupService;
import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.rice.kim.api.identity.Person;


@Path("/person")
public class PersonResource {

    private EasyProposalGeneralLookupService lookupService;
    
    public PersonResource() {
        lookupService = KraServiceLocator.getService(EasyProposalGeneralLookupService.class);
    }
    
    
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Collection<Person> findPersons(@QueryParam("lastName") String lastName
            ,@QueryParam("firstName") String firstName
            ,@QueryParam("userName") String userName) {
        return lookupService.findPerson(lastName,firstName,userName);
    }
    
    
    
}
