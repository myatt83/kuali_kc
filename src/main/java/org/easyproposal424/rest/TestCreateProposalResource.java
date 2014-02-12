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

import java.util.concurrent.Callable;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.easyproposal424.service.EasyProposalService;
import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.rice.kew.api.exception.WorkflowException;
import org.kuali.rice.krad.UserSession;
import org.kuali.rice.krad.service.KualiRuleService;
import org.kuali.rice.krad.util.GlobalVariables;
import org.kuali.rice.krad.util.KRADConstants;
import org.springframework.core.task.AsyncTaskExecutor;
import org.springframework.core.task.support.TaskExecutorAdapter;

@Path("/testcreate")
public class TestCreateProposalResource {
    
    
    /*
     * This is the principal that the service will act as if no other is available.
     * 
     */
    private String defaultPrincipalId = "admin";
    //
    private static final Log LOG =  LogFactory.getLog(TestCreateProposalResource.class);
    //We need the rules service to perform the audit.
    
    // The Java method will process HTTP GET requests
    @GET
    // The Java method will produce content identified by the MIME Media
    // type "text/plain"
    @Produces("application/json")
    public String testCreate() {
        
        String result = "";
               
        
        
        try {
          result =  GlobalVariables.doInNewGlobalVariables(establishUserSession(defaultPrincipalId), new Callable<String> () {
              public String call() {
                  String returningDocNumber = null;
                      EasyProposalService easyProposalService = KraServiceLocator.getService(EasyProposalService.class);
                      returningDocNumber = easyProposalService.createTest();
                      return returningDocNumber;
              }
          }
         );
        }
        catch (WorkflowException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
        return result;
       
    }
    
    
    
    
    
    /**
     * Establishes the UserSession if one does not already exist.
     */
    protected UserSession establishUserSession(String principalId) throws WorkflowException {
       if (GlobalVariables.getUserSession() == null) {
            return new UserSession(principalId);
        } else {
            return GlobalVariables.getUserSession();
        }
    }
}