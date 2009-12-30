/*
 * Copyright 2006-2009 The Kuali Foundation
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
package org.kuali.kra.proposaldevelopment.rules;

import java.sql.Date;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.kuali.kra.KraTestBase;
import org.kuali.kra.award.home.Award;
import org.kuali.kra.bo.versioning.VersionHistory;
import org.kuali.kra.infrastructure.Constants;
import org.kuali.kra.infrastructure.KeyConstants;
import org.kuali.kra.institutionalproposal.home.InstitutionalProposal;
import org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal;
import org.kuali.kra.proposaldevelopment.document.ProposalDevelopmentDocument;
import org.kuali.kra.proposaldevelopment.service.impl.ProposalDevelopmentServiceImpl;
import org.kuali.kra.s2s.bo.S2sOpportunity;
import org.kuali.rice.kns.UserSession;
import org.kuali.rice.kns.service.DocumentService;
import org.kuali.rice.kns.service.KNSServiceLocator;
import org.kuali.rice.kns.service.ParameterService;
import org.kuali.rice.kns.service.impl.ParameterServiceImpl;
import org.kuali.rice.kns.util.AuditCluster;
import org.kuali.rice.kns.util.AuditError;
import org.kuali.rice.kns.util.GlobalVariables;

/**
 * This class tests the ProposalDevelopmentSponsorProgramInformationAuditRule class
 */
public class ProposalDevelopmentSponsorProgramInformationAuditRuleTest extends KraTestBase {

    private DocumentService documentService = null;
    private ParameterService parameterService = null;
    private ProposalDevelopmentSponsorProgramInformationAuditRule auditRule = null;
    
    private String proposalTypeCodeRenewal;
    private String proposalTypeCodeRevision;
    private String proposalTypeCodeContinuation;
    private String proposalTypeCodeResubmission;
    private String proposalTypeCodeNew; 
    
    Date tomorrow;    

    @Before
    public void setUp() throws Exception {
        super.setUp();
        GlobalVariables.setUserSession(new UserSession("quickstart"));
        GlobalVariables.setAuditErrorMap(new HashMap());
        documentService = KNSServiceLocator.getDocumentService();
        parameterService = KNSServiceLocator.getParameterService();
        auditRule = new ProposalDevelopmentSponsorProgramInformationAuditRule();
        
        proposalTypeCodeRenewal = parameterService.getParameterValue(ProposalDevelopmentDocument.class, KeyConstants.PROPOSALDEVELOPMENT_PROPOSALTYPE_RENEWAL);
        proposalTypeCodeRevision = parameterService.getParameterValue(ProposalDevelopmentDocument.class, KeyConstants.PROPOSALDEVELOPMENT_PROPOSALTYPE_REVISION);
        proposalTypeCodeContinuation = parameterService.getParameterValue(ProposalDevelopmentDocument.class, KeyConstants.PROPOSALDEVELOPMENT_PROPOSALTYPE_CONTINUATION);
        proposalTypeCodeResubmission = parameterService.getParameterValue(ProposalDevelopmentDocument.class, KeyConstants.PROPOSALDEVELOPMENT_PROPOSALTYPE_RESUBMISSION);
        proposalTypeCodeNew = parameterService.getParameterValue(ProposalDevelopmentDocument.class, KeyConstants.PROPOSALDEVELOPMENT_PROPOSALTYPE_NEW);
        
        Calendar calendar = new GregorianCalendar();
        calendar.add(Calendar.DATE, 1);
        tomorrow = new Date(calendar.getTimeInMillis());           
    }

    @After
    public void tearDown() throws Exception {
        GlobalVariables.setUserSession(null);
        GlobalVariables.setAuditErrorMap(null);
        documentService = null;
        auditRule = null;
        super.tearDown();
    }

    @Test public void testValidDate() throws Exception {
        ProposalDevelopmentDocument document = (ProposalDevelopmentDocument) documentService.getNewDocument("ProposalDevelopmentDocument");

        document.getDevelopmentProposal().setDeadlineDate(tomorrow);;
        assertTrue("Audit Rule shouldn't produce any audit errors", auditRule.processRunAuditBusinessRules(document));
        assertEquals(0, GlobalVariables.getAuditErrorMap().size());
    }

    @Test public void testEmptyDate() throws Exception {
        ProposalDevelopmentDocument document = (ProposalDevelopmentDocument) documentService.getNewDocument("ProposalDevelopmentDocument");

        validateAuditRule(document, KeyConstants.WARNING_EMPTY_DEADLINE_DATE);
    }

    @Test public void testPastDate() throws Exception {
        ProposalDevelopmentDocument document = (ProposalDevelopmentDocument) documentService.getNewDocument("ProposalDevelopmentDocument");

        // Create a date in the past - yesterday
        Calendar calendar = new GregorianCalendar();
        calendar.add(Calendar.DATE, -1);
        Date deadlineDate = new Date(calendar.getTimeInMillis());

        document.getDevelopmentProposal().setDeadlineDate(deadlineDate);
        validateAuditRule(document, KeyConstants.WARNING_PAST_DEADLINE_DATE);
    }
    
    @Test public void testRequireSponsorIdWhenRenewal() throws Exception {
        ProposalDevelopmentDocument document = (ProposalDevelopmentDocument) documentService.getNewDocument("ProposalDevelopmentDocument");
        DevelopmentProposal proposal = document.getDevelopmentProposal();
        proposal.setDeadlineDate(tomorrow);
        proposal.setProposalTypeCode(proposalTypeCodeRenewal);
        proposal.setS2sOpportunity(new S2sOpportunity());
        proposal.getS2sOpportunity().setOpportunityId("12345");
        proposal.getS2sOpportunity().setCfdaNumber("00.000");
        proposal.setCfdaNumber("00.000");
        proposal.setProgramAnnouncementTitle("Test Title");
        
        auditRule.setProposalDevelopmentService(new ProposalDevelopmentServiceMock());
        validateGGAuditRules(document, Constants.SPONSOR_PROPOSAL_KEY, KeyConstants.ERROR_PROPOSAL_REQUIRE_PRIOR_AWARD, true);
        GlobalVariables.getAuditErrorMap().clear();
        proposal.setSponsorProposalNumber("AA123456");
        validateGGAuditRules(document, Constants.SPONSOR_PROPOSAL_KEY, KeyConstants.ERROR_PROPOSAL_REQUIRE_PRIOR_AWARD, false);
        GlobalVariables.getAuditErrorMap().clear();
        auditRule.setParameterService(new ParameterServiceMock("N"));
        proposal.setSponsorProposalNumber(null);
        proposal.setCurrentAwardNumber("000001-0001");
        validateGGAuditRules(document, Constants.SPONSOR_PROPOSAL_KEY, KeyConstants.ERROR_PROPOSAL_REQUIRE_PRIOR_AWARD, true);
        GlobalVariables.getAuditErrorMap().clear();        
        auditRule.setParameterService(new ParameterServiceMock("Y"));
        validateGGAuditRules(document, Constants.SPONSOR_PROPOSAL_KEY, KeyConstants.ERROR_PROPOSAL_REQUIRE_PRIOR_AWARD, false);
        GlobalVariables.getAuditErrorMap().clear();
        auditRule.setProposalDevelopmentService(null);
        auditRule.setParameterService(null);
    }

    @Test public void testRequireSponsorIdWhenResubmission() throws Exception {
        ProposalDevelopmentDocument document = (ProposalDevelopmentDocument) documentService.getNewDocument("ProposalDevelopmentDocument");
        DevelopmentProposal proposal = document.getDevelopmentProposal();
        proposal.setDeadlineDate(tomorrow);
        proposal.setProposalTypeCode(proposalTypeCodeResubmission);
        proposal.setS2sOpportunity(new S2sOpportunity());
        proposal.getS2sOpportunity().setOpportunityId("12345");
        proposal.getS2sOpportunity().setCfdaNumber("00.000");
        proposal.setCfdaNumber("00.000");
        proposal.setProgramAnnouncementTitle("Test Title");

        auditRule.setProposalDevelopmentService(new ProposalDevelopmentServiceMock());
        validateGGAuditRules(document, Constants.SPONSOR_PROPOSAL_KEY, KeyConstants.ERROR_PROPOSAL_REQUIRE_PRIOR_AWARD_FOR_RESUBMIT, true);
        GlobalVariables.getAuditErrorMap().clear();
        proposal.setSponsorProposalNumber("AA123456");
        validateGGAuditRules(document, Constants.SPONSOR_PROPOSAL_KEY, KeyConstants.ERROR_PROPOSAL_REQUIRE_PRIOR_AWARD_FOR_RESUBMIT, false);
        GlobalVariables.getAuditErrorMap().clear();
        proposal.setSponsorProposalNumber(null);
        proposal.setCurrentAwardNumber("000001-0001");
        validateGGAuditRules(document, Constants.SPONSOR_PROPOSAL_KEY, KeyConstants.ERROR_PROPOSAL_REQUIRE_PRIOR_AWARD_FOR_RESUBMIT, true);
        GlobalVariables.getAuditErrorMap().clear();
        proposal.setContinuedFrom("1");
        validateGGAuditRules(document, Constants.SPONSOR_PROPOSAL_KEY, KeyConstants.ERROR_PROPOSAL_REQUIRE_PRIOR_AWARD_FOR_RESUBMIT, false);
        GlobalVariables.getAuditErrorMap().clear();
        auditRule.setProposalDevelopmentService(null);
        auditRule.setParameterService(null);
    }

    /**
     * This method validates the audit rule processing
     * @param document document to check
     * @param messageKey messageKey for the AuditError
     */
    private void validateAuditRule(ProposalDevelopmentDocument document, String messageKey) {
        assertTrue("Audit Rule should produce a Warning audit error", auditRule.processRunAuditBusinessRules(document));
        assertEquals(1, GlobalVariables.getAuditErrorMap().size());
        AuditCluster auditCluster = (AuditCluster)GlobalVariables.getAuditErrorMap().get("sponsorProgramInformationAuditWarnings");

        assertEquals("Sponsor & Program Information", auditCluster.getLabel());
        List auditErrors = auditCluster.getAuditErrorList();
        assertEquals(1, auditErrors.size());
        AuditError auditError = (AuditError) auditErrors.get(0);

        assertEquals("document.developmentProposalList[0].deadlineDate", auditError.getErrorKey());
        assertEquals(messageKey, auditError.getMessageKey());
        assertEquals("proposal.SponsorProgramInformation", auditError.getLink());

        assertEquals("Warnings", auditCluster.getCategory());
    }
    
    private void validateGGAuditRules(ProposalDevelopmentDocument document, String fieldKey, String messageKey, boolean expectError) {
        assertTrue("Audit Rule did not produce expected results", auditRule.processRunAuditBusinessRules(document) ^ expectError);
        assertEquals(expectError?1:0, GlobalVariables.getAuditErrorMap().size());
        AuditCluster auditCluster = (AuditCluster)GlobalVariables.getAuditErrorMap().get("sponsorProgramInformationAuditErrors");

        if (expectError) {
            assertEquals("Sponsor & Program Information", auditCluster.getLabel());
            List auditErrors = auditCluster.getAuditErrorList();
            assertEquals(1, auditErrors.size());
            AuditError auditError = (AuditError) auditErrors.get(0);
    
            assertEquals(fieldKey, auditError.getErrorKey());
            assertEquals(messageKey, auditError.getMessageKey());
            assertEquals("proposal.SponsorProgramInformation", auditError.getLink());
    
            assertEquals(Constants.GRANTSGOV_ERRORS, auditCluster.getCategory());
        }
    }
    
    class ProposalDevelopmentServiceMock extends ProposalDevelopmentServiceImpl {
        public Award getProposalCurrentAwardVersion(ProposalDevelopmentDocument proposal) {
            if (StringUtils.isNotBlank(proposal.getDevelopmentProposal().getCurrentAwardNumber())) {
                Award award = new Award();
                award.setAwardNumber(proposal.getDevelopmentProposal().getCurrentAwardNumber());
                award.setSponsorAwardNumber("AW123456");
                return award;
            } else {
               return null;
            }
        }
        public InstitutionalProposal getProposalContinuedFromVersion(ProposalDevelopmentDocument doc) {
            if (StringUtils.isNotBlank(doc.getDevelopmentProposal().getContinuedFrom())) {
                InstitutionalProposal instProposal = new InstitutionalProposal();
                instProposal.setProposalNumber(doc.getDevelopmentProposal().getContinuedFrom());
                instProposal.setSponsorProposalNumber("IP123456");
                return instProposal;
            } else {
                return null;
            }
        }
    }
    
    class ParameterServiceMock extends ParameterServiceImpl {
        public String useCurrentAward = "N";
        public ParameterServiceMock(String useCurrentAward) {
            this.useCurrentAward = useCurrentAward;
        }
        public String getParameterValue(Class clazz, String name) {
            if (clazz.equals(ProposalDevelopmentDocument.class) 
                    && "FEDERAL_ID_COMES_FROM_CURRENT_AWARD".equals(name)) {
                return useCurrentAward;
            } else {
                return super.getParameterValue(clazz, name);
            }
        }
    }
    
    

}