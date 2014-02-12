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

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.easyproposal424.service.EasyProposalService;
import org.kuali.kra.bo.Unit;
import org.kuali.kra.budget.core.BudgetService;
import org.kuali.kra.budget.summary.BudgetSummaryService;
import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.kra.kew.KraDocumentRejectionService;
import org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal;
import org.kuali.kra.proposaldevelopment.bo.ProposalPersonExtendedAttributes;
import org.kuali.kra.proposaldevelopment.bo.ProposalSite;
import org.kuali.kra.proposaldevelopment.document.ProposalDevelopmentDocument;
import org.kuali.kra.proposaldevelopment.service.NarrativeService;
import org.kuali.kra.proposaldevelopment.service.ProposalDevelopmentService;
import org.kuali.kra.proposaldevelopment.service.ProposalPersonBiographyService;
import org.kuali.kra.service.KraAuthorizationService;
import org.kuali.kra.web.struts.action.AuditActionHelper;
import org.kuali.rice.core.api.config.property.ConfigurationService;
import org.kuali.rice.coreservice.framework.parameter.ParameterService;
import org.kuali.rice.kew.api.WorkflowDocument;
import org.kuali.rice.kew.api.exception.WorkflowException;
import org.kuali.rice.kim.api.identity.IdentityService;
import org.kuali.rice.kim.api.identity.Person;
import org.kuali.rice.kim.api.identity.PersonService;
import org.kuali.rice.kns.service.SessionDocumentService;
import org.kuali.rice.kns.util.AuditCluster;
import org.kuali.rice.kns.util.AuditError;
import org.kuali.rice.kns.util.KNSGlobalVariables;
import org.kuali.rice.krad.bo.DocumentHeader;
import org.kuali.rice.krad.document.Document;
import org.kuali.rice.krad.rules.rule.event.DocumentAuditEvent;
import org.kuali.rice.krad.service.BusinessObjectService;
import org.kuali.rice.krad.service.DocumentService;
import org.kuali.rice.krad.service.KualiRuleService;
import org.kuali.rice.krad.util.GlobalVariables;
import org.kuali.rice.krad.util.MessageMap;
import org.kuali.rice.krad.workflow.service.WorkflowDocumentService;

public class EasyProposalServiceImpl implements EasyProposalService {

    private static final Log LOG = LogFactory.getLog(EasyProposalServiceImpl.class);
    
//  We are going to need most of these services eventually.
    
//    private BusinessObjectService businessObjectService;
//    private KraAuthorizationService kraAuthorizationService;
//    private ProposalHierarchyDao proposalHierarchyDao;
//    private NarrativeService narrativeService;
//    private BudgetService budgetService;
//    private BudgetSummaryService budgetSummaryService;
//    private ProposalPersonBiographyService propPersonBioService;
//    private ParameterService parameterService;
//    private IdentityService identityManagementService;
//    private ConfigurationService configurationService;
//    private KraDocumentRejectionService kraDocumentRejectionService;
//    private List<ProposalPersonExtendedAttributes> proposalPersonExtendedAttributesToDelete;


    private DocumentService documentService;
    private PersonService personService;
    private SessionDocumentService sessionDocumentService;
    private WorkflowDocumentService workflowDocumentService;
    private ProposalDevelopmentService proposalDevelopmentService;
    
    private KualiRuleService kualiRuleService;
    
    private String defaultPrincipalIdToInitiate = "admin";

    
    
    protected Person defaultInitPerson;
    private int createdSinceStarted = 0;
    
    private KualiRuleService ruleService; 
    
    
    public void init() {
        
        defaultInitPerson = personService.getPerson(defaultPrincipalIdToInitiate);
        
        if (defaultInitPerson==null) {
            throw new RuntimeException(String.format("Could not find valid person object with principalId %s",defaultPrincipalIdToInitiate));
        }
        
        if (LOG.isDebugEnabled()) {
            LOG.debug(String.format("Started EasyProposalServiceImpl, default principal initiate is $s",defaultPrincipalIdToInitiate));
        }
    }
    
    
    protected ProposalDevelopmentDocument createProposalDevelopmentDocument() {

        ProposalDevelopmentDocument newDoc = null;
        WorkflowDocument workflowDocument;
       
        try {
            workflowDocument = workflowDocumentService.createWorkflowDocument(PROPOSAL_DEVELOPMENT_DOCUMENT_TYPE, defaultInitPerson);
            //sessionDocumentService.addDocumentToUserSession(GlobalVariables.getUserSession(), workflowDocument);
            DocumentHeader documentHeader = new DocumentHeader();
            documentHeader.setWorkflowDocument(workflowDocument);
            documentHeader.setDocumentNumber(workflowDocument.getDocumentId().toString());
            newDoc = new ProposalDevelopmentDocument();
            newDoc.setDocumentHeader(documentHeader);
            newDoc.setDocumentNumber(documentHeader.getDocumentNumber());
            
            documentHeader.setDocumentDescription(String.format("Test Proposal %s Created by EasyProposalService",createdSinceStarted++));
            documentHeader.setOrganizationDocumentNumber("0000000");
            documentHeader.setExplanation("Magic");
            
        }
       
        catch (WorkflowException e) {
            LOG.error(String.format("Workflow Exception generated on create of document %s",e.getMessage()),e);
            throw new RuntimeException(String.format("Workflow Exception generated on create of document %s",e.getMessage()),e);
        }
       
        return newDoc;
    }
    
    protected String saveProposalDevelopmentDocument(ProposalDevelopmentDocument document) {
        
        try {
            documentService.saveDocument(document);
        }
        catch (WorkflowException e) {
            LOG.error(String.format("Workflow Exception generated on create of document %s",e.getMessage()),e);
            throw new RuntimeException(String.format("Workflow Exception generated on save of document %s",e.getMessage()),e);
        }
        return document.getDocumentNumber();
    }
    
    
    
    protected MessageMap auditProposalDevelopmentDocument(ProposalDevelopmentDocument document) {
        AuditActionHelper helper = new AuditActionHelper();
        boolean passed = helper.auditUnconditionally(document);
        return GlobalVariables.getMessageMap();
    }
    
    @Override
    public String createTest() {
        
        ProposalDevelopmentDocument doc = createProposalDevelopmentDocument();
        DevelopmentProposal prop = doc.getDevelopmentProposal();
        
        prop.setProposalTypeCode("1");
        prop.setTitle("This is a test proposal.");
        prop.setOwnedByUnitNumber("000001");
        prop.setApplicantOrganizationId("000001");
        prop.setActivityTypeCode("1");
        prop.setSponsorCode("000100");
        prop.setRequestedStartDateInitial(new java.sql.Date(2014-1900,11,9));
        prop.setRequestedEndDateInitial(new java.sql.Date(2016-1900,11,9));
        
        prop.refreshReferenceObject("ownedByUnit");
        prop.refreshReferenceObject("applicantOrganization");
        
        proposalDevelopmentService.initializeUnitOrganizationLocation(doc);
        proposalDevelopmentService.initializeProposalSiteNumbers(doc);
        
        String docNumber = saveProposalDevelopmentDocument(doc);
        Map<String,AuditCluster> audits = KNSGlobalVariables.getAuditErrorMap();
        
        auditProposalDevelopmentDocument(doc);
        
        for(String key:audits.keySet()) {
            LOG.info(String.format("Auditcluster %s found",key));
            AuditCluster a = audits.get(key);
            for(AuditError o: (List<AuditError>)(a.getAuditErrorList())) {
                LOG.info(String.format("Audit:%s:%s",o.getMessageKey(),o.getErrorKey()));
            }
        }
        
        return docNumber;
    }

    
    
    /*
     * For right now we are going to take the first unit the given principal has as the default
     * for th
     */
    
//    protected void initializeOwnedByUnitNumber(ProposalDevelopmentDocument document, String principalId) {
//        ProposalDevelopmentService proposalDevelopmentService = KraServiceLocator.getService(ProposalDevelopmentService.class);
//        List<Unit> userUnits = proposalDevelopmentService.getDefaultModifyProposalUnitsForUser(principalId);
//        
//        if(userUnits.size()>0) {
//            document.getDevelopmentProposal().setOwnedByUnitNumber(userUnits.get(0).getUnitNumber());
//            
//        } else {
//            throw new RuntimeException(String.format("User %s has no default modify prop units.",principalId));
//        }
//    }
//    
//    
    protected MessageMap validateProposal(ProposalDevelopmentDocument document) {
        
        return null;
    }
    
    
    public boolean auditUnconditionally(final Document document) {
        if (document == null) {
            throw new NullPointerException("the document is null");
        }
        
        return this.ruleService.applyRules(new DocumentAuditEvent(document));
    }
    
    

    protected WorkflowDocumentService getWorkflowDocumentService() {
        return workflowDocumentService;
    }

    public void setWorkflowDocumentService(WorkflowDocumentService workflowDocumentService) {
        this.workflowDocumentService = workflowDocumentService;
    }
    
    public void setDefaultPrincipalIdToInitiate(String defaultPrincipalIdToInitiate) {
        this.defaultPrincipalIdToInitiate = defaultPrincipalIdToInitiate;
    }

    public void setDocumentService(DocumentService documentService) {
        this.documentService = documentService;
    }

    public void setPersonService(PersonService personService) {
        this.personService = personService;
    }


    public void setSessionDocumentService(SessionDocumentService sessionDocumentService) {
        this.sessionDocumentService = sessionDocumentService;
    }


    public Person getDefaultInitPerson() {
        return defaultInitPerson;
    }


    public void setDefaultInitPerson(Person defaultInitPerson) {
        this.defaultInitPerson = defaultInitPerson;
    }


    public void setProposalDevelopmentService(ProposalDevelopmentService proposalDevelopmentService) {
        this.proposalDevelopmentService = proposalDevelopmentService;
    }


    public void setKualiRuleService(KualiRuleService kualiRuleService) {
        this.kualiRuleService = kualiRuleService;
    }

    
}
