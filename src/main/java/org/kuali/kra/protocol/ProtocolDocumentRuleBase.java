/*
 * Copyright 2005-2010 The Kuali Foundation
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
package org.kuali.kra.protocol;

import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang.StringUtils;
import org.kuali.kra.bo.Unit;
import org.kuali.kra.common.permissions.bo.PermissionsUser;
import org.kuali.kra.common.permissions.web.bean.User;
import org.kuali.kra.infrastructure.KeyConstants;
import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.kra.protocol.noteattachment.SubmitProtocolAttachmentProtocolRuleImplBase;
import org.kuali.kra.protocol.permission.ProtocolPermissionsRule;
import org.kuali.kra.protocol.personnel.AddProtocolAttachmentPersonnelEvent;
import org.kuali.kra.protocol.personnel.AddProtocolAttachmentPersonnelRule;
import org.kuali.kra.protocol.personnel.AddProtocolUnitEvent;
import org.kuali.kra.protocol.personnel.AddProtocolUnitRule;
import org.kuali.kra.protocol.personnel.ProtocolAttachmentPersonnelRuleBase;
import org.kuali.kra.protocol.personnel.ProtocolPersonnelAuditRuleBase;
import org.kuali.kra.protocol.personnel.ProtocolUnitRuleBase;
import org.kuali.kra.protocol.actions.decision.CommitteeDecision;
import org.kuali.kra.protocol.actions.decision.CommitteeDecisionRuleBase;
import org.kuali.kra.protocol.actions.decision.CommitteePersonBase;
import org.kuali.kra.protocol.actions.decision.ExecuteCommitteeDecisionAbstainerRule;
import org.kuali.kra.protocol.actions.decision.ExecuteCommitteeDecisionRecuserRule;
import org.kuali.kra.protocol.actions.decision.ExecuteCommitteeDecisionRule;
import org.kuali.kra.protocol.actions.submit.ProtocolSubmitActionRuleBase;
import org.kuali.kra.protocol.actions.submit.ExecuteProtocolSubmitActionRule;
import org.kuali.kra.protocol.actions.submit.ProtocolSubmitAction;
import org.kuali.kra.protocol.protocol.funding.AddProtocolFundingSourceEventBase;
import org.kuali.kra.protocol.protocol.funding.ProtocolFundingSourceAuditRuleBase;
import org.kuali.kra.protocol.protocol.funding.ProtocolFundingSourceRuleBase;
import org.kuali.kra.protocol.protocol.location.AddProtocolLocationEvent;
import org.kuali.kra.protocol.protocol.location.AddProtocolLocationRule;
import org.kuali.kra.protocol.protocol.location.ProtocolLocationRuleBase;
import org.kuali.kra.protocol.protocol.reference.AddProtocolReferenceEventBase;
import org.kuali.kra.protocol.protocol.reference.AddProtocolReferenceRule;
import org.kuali.kra.protocol.protocol.reference.ProtocolReferenceRuleBase;
import org.kuali.kra.protocol.protocol.research.ProtocolResearchAreaBase;
import org.kuali.kra.protocol.protocol.research.ProtocolResearchAreaAuditRuleBase;
import org.kuali.kra.rule.BusinessRuleInterface;
import org.kuali.kra.rule.event.KraDocumentEventBaseExtension;
import org.kuali.kra.rules.ResearchDocumentRuleBase;
import org.kuali.kra.service.UnitService;
import org.kuali.rice.krad.document.Document;
import org.kuali.rice.krad.util.GlobalVariables;
import org.kuali.rice.krad.util.MessageMap;

/**
 * Main Business Rule class for <code>{@link ProtocolDocumentBase}</code>. Responsible for delegating rules to independent rule classes.
 *
 * @author Kuali Nervous System Team (kualidev@oncourse.iu.edu)
 */
public abstract class ProtocolDocumentRuleBase<CD extends CommitteeDecision<? extends CommitteePersonBase>>
                                                                    extends ResearchDocumentRuleBase   
                                                                    implements                                                                  
                                                                                AddProtocolReferenceRule, 
                                                                                AddProtocolLocationRule,
                                                                                AddProtocolAttachmentPersonnelRule, 
                                                                                AddProtocolUnitRule,
                                                                                BusinessRuleInterface,                                                                                 
                                                                                ExecuteProtocolSubmitActionRule,
// TODO *********commented the code below during IACUC refactoring*********                                                                                 
//                                                                                ExecuteProtocolAssignCmtSchedRule, 
//                                                                                ExecuteProtocolAssignReviewersRule, 
//                                                                                ExecuteProtocolAdminCorrectionRule,
                                                                                
                                                                                ExecuteCommitteeDecisionRule<CD>,                                                                                
                                                                                ExecuteCommitteeDecisionAbstainerRule<CD>, 
                                                                                ExecuteCommitteeDecisionRecuserRule<CD>
                                                                                
//                                                                                ExecuteProtocolModifySubmissionRule, 
//                                                                                ExecuteProtocolReviewNotRequiredRule, 
//                                                                                PermissionsRule 
                                                                                                    {

    private static final String PROTOCOL_LUN_FORM_ELEMENT="protocolHelper.leadUnitNumber";
    private static final String ERROR_PROPERTY_ORGANIZATION_ID = "protocolHelper.newProtocolLocation.organizationId";
    private static final String PROTOCOL_DOC_LUN_FORM_ELEMENT = "document.protocolList[0].leadUnitNumber";
    private static final String SAVE_SPECIAL_REVIEW_FIELD = "document.protocolList[0].specialReviews";
    private static final String SEPERATOR = ".";
    private static final String INACTIVE_RESEARCH_AREAS_PREFIX = "document.protocolList[0].protocolResearchAreas.inactive";
    

    @Override
    protected boolean processCustomRouteDocumentBusinessRules(Document document) {
        boolean retval = true;
        retval &= super.processCustomRouteDocumentBusinessRules(document);
        
        return retval;
    }

    @Override
    protected boolean processCustomSaveDocumentBusinessRules(Document document) {
        if (!(document instanceof ProtocolDocumentBase)) {
            return false;
        }

        MessageMap errorMap = GlobalVariables.getMessageMap();
        errorMap.addToErrorPath(DOCUMENT_ERROR_PATH);
        getKnsDictionaryValidationService().validateDocumentAndUpdatableReferencesRecursively(
               document, getMaxDictionaryValidationDepth(),
               VALIDATION_REQUIRED, CHOMP_LAST_LETTER_S_FROM_COLLECTION_NAME);
        errorMap.removeFromErrorPath(DOCUMENT_ERROR_PATH);

        boolean valid = true;
        ProtocolDocumentBase protocolDocument = (ProtocolDocumentBase) document;
        
         
        if ( ( protocolDocument.getDocumentHeader().getWorkflowDocument().isInitiated() || protocolDocument.getDocumentHeader().getWorkflowDocument().isSaved() ) 
                && getInProgressProtocolStatusCodeHook().equals(protocolDocument.getProtocol().getProtocolStatusCode())
                && StringUtils.isBlank(protocolDocument.getDocumentHeader().getDocumentTemplateNumber()) ) {
            valid &= processProtocolResearchAreaBusinessRules((ProtocolDocumentBase) document);
        }
        
       
        valid &= processLeadUnitBusinessRules((ProtocolDocumentBase) document);
        valid &= processProtocolLocationBusinessRules((ProtocolDocumentBase) document);            
        valid &= processProtocolPersonnelBusinessRules((ProtocolDocumentBase) document);
        
// TODO *********commented the code below during IACUC refactoring*********        
//        valid &= processProtocolCustomDataBusinessRules((ProtocolDocumentBase) document);
//        valid &= processProtocolSpecialReviewBusinessRules((ProtocolDocumentBase) document);
        
        
        return valid;
    }

    protected abstract String getInProgressProtocolStatusCodeHook();

    /**
     * This method will check if all the research areas that have been added to the protocol are indeed active.
     * @param document
     * @return
     */
    public boolean processProtocolResearchAreaBusinessRules(ProtocolDocumentBase document) {
        boolean inactiveFound = false;
        StringBuffer inactiveResearchAreaIndices = new StringBuffer();
        
        List<ProtocolResearchAreaBase> pras = document.getProtocol().getProtocolResearchAreas();
        // iterate over all the research areas for this protocol looking for inactive research areas
        if(CollectionUtils.isNotEmpty(pras)) {
            int raIndex = 0;
            for (ProtocolResearchAreaBase protocolResearchArea : pras) {
                if(!(protocolResearchArea.getResearchAreas().isActive())) {
                    inactiveFound = true;
                    inactiveResearchAreaIndices.append(raIndex).append(SEPERATOR);
                }
                raIndex++;
            }
        }
        // if we found any inactive research areas in the above loop, report as a single error key suffixed by the list of indices of the inactive areas
        if(inactiveFound) { 
            String protocolResearchAreaInactiveErrorPropertyKey = INACTIVE_RESEARCH_AREAS_PREFIX + SEPERATOR + inactiveResearchAreaIndices.toString();
            reportError(protocolResearchAreaInactiveErrorPropertyKey, KeyConstants.ERROR_PROTOCOL_RESEARCH_AREA_INACTIVE);
        }
        
        return !inactiveFound;
    }

    
    
    /**
     * @see org.kuali.core.rule.DocumentAuditRule#processRunAuditBusinessRules(org.kuali.rice.krad.document.Document)
     */
    @Override
    public boolean processRunAuditBusinessRules(Document document){
        boolean retval = true;  
        retval &= super.processRunAuditBusinessRules(document);      
        retval &= getNewProtocolFundingSourceAuditRuleInstanceHook().processRunAuditBusinessRules((ProtocolDocumentBase) document);         
        retval &= getNewProtocolResearchAreaAuditRuleInstanceHook().processRunAuditBusinessRules((ProtocolDocumentBase) document);
        retval &= getNewProtocolPersonnelAuditRuleInstanceHook().processRunAuditBusinessRules(document);
        retval &= this.processNoteAndAttachmentAuditRules((ProtocolDocumentBase) document);

// TODO *********commented the code below during IACUC refactoring*********         
//        retval &= new ProtocolQuestionnaireAuditRuleBase().processRunAuditBusinessRules((ProtocolDocumentBase) document);
        
        return retval;
    }
    
    
    protected abstract ProtocolFundingSourceAuditRuleBase getNewProtocolFundingSourceAuditRuleInstanceHook();

    protected abstract ProtocolPersonnelAuditRuleBase getNewProtocolPersonnelAuditRuleInstanceHook();
    
    protected abstract ProtocolResearchAreaAuditRuleBase getNewProtocolResearchAreaAuditRuleInstanceHook();

    /**
     * Validates lead unit rules for a {@link ProtocolDocumentBase ProtocolDocumentBase}.
     * @param document the document
     * @return true if validation passes false if not
     * @throws NullPointerException if the document is null
     */
    public boolean processLeadUnitBusinessRules(ProtocolDocumentBase document) {
        boolean isValid = true;
        
        if (document == null) {
            throw new NullPointerException("the document was null");
        }
        ProtocolBase protocol = document.getProtocol();
        
        if (StringUtils.isNotBlank(protocol.getLeadUnitNumber())) {
            Unit unit = getUnitService().getUnit(protocol.getLeadUnitNumber());
            if (unit == null) {
                if (getErrorReporter().propertyHasErrorReported(PROTOCOL_DOC_LUN_FORM_ELEMENT)) {
                    getErrorReporter().removeErrors(PROTOCOL_DOC_LUN_FORM_ELEMENT);
                }
                reportError(PROTOCOL_LUN_FORM_ELEMENT, KeyConstants.ERROR_PROTOCOL_LEAD_UNIT_NUM_INVALID);
                isValid = false;
            }
        }
        
        return isValid;
    }
 
    
    /**
     * At least one organization must be entered.  
     * If the default value is removed, another organization must be added before user 
     * can save
     * @see org.kuali.kra.irb.rule.SaveProtocolLocationRule#processSaveProtocolLocationBusinessRules(org.kuali.kra.irb.rule.event.SaveProtocolLocationEvent)
     */
    public boolean processProtocolLocationBusinessRules(ProtocolDocumentBase document) {
        boolean isValid = true;
        if(CollectionUtils.isEmpty(document.getProtocol().getProtocolLocations())) {
            reportError(ERROR_PROPERTY_ORGANIZATION_ID, KeyConstants.ERROR_PROTOCOL_LOCATION_SHOULD_EXIST);
            isValid = false;
        }
        return isValid;
    }
    
    private boolean processProtocolPersonnelBusinessRules(ProtocolDocumentBase document) {
        return processRules(getSaveProtocolPersonnelEventHook(document));
    }
    
    protected abstract KraDocumentEventBaseExtension getSaveProtocolPersonnelEventHook(ProtocolDocumentBase document);

// TODO *********uncomment the code below in increments as needed during refactoring*********         
//    
//    private boolean processProtocolCustomDataBusinessRules(ProtocolDocumentBase document) {
//        return processRules(new SaveCustomAttributeEvent(Constants.EMPTY_STRING, document));
//    }
//    
//    private boolean processProtocolSpecialReviewBusinessRules(ProtocolDocumentBase document) {
//        List<ProtocolSpecialReviewBase> specialReviews = document.getProtocol().getSpecialReviews();
//        return processRules(new SaveSpecialReviewEvent<ProtocolSpecialReviewBase>(SAVE_SPECIAL_REVIEW_FIELD, document, specialReviews, false));
//    }

    public boolean processAddProtocolReferenceBusinessRules(AddProtocolReferenceEventBase addProtocolReferenceEvent) {
        return getNewProtocolReferenceRuleInstanceHook().processAddProtocolReferenceBusinessRules(addProtocolReferenceEvent);        
    }
    
    protected abstract ProtocolReferenceRuleBase getNewProtocolReferenceRuleInstanceHook();


    /**
     * @see org.kuali.kra.irb.protocol.location.AddProtocolLocationRule#processAddProtocolLocationBusinessRules(org.kuali.kra.irb.protocol.location.AddProtocolLocationEvent)
     */
    public boolean processAddProtocolLocationBusinessRules(AddProtocolLocationEvent addProtocolLocationEvent) {
        return getNewProtocolLocationRuleInstanceHook().processAddProtocolLocationBusinessRules(addProtocolLocationEvent);       
    }    
    
    protected abstract ProtocolLocationRuleBase getNewProtocolLocationRuleInstanceHook();
    
         
    /**
     * @see org.kuali.kra.irb.protocol.AddProtocolFundingSourceRule#processAddProtocolFundingSourceBusinessRules(org.org.kuali.kra.irb.protocol.funding.AddProtocolFundingSourceEventBase)
     */
    public boolean processAddProtocolFundingSourceBusinessRules(AddProtocolFundingSourceEventBase addProtocolFundingSourceEvent) {

        return getNewProtocolFundingSourceRuleInstanceHook().processAddProtocolFundingSourceBusinessRules(addProtocolFundingSourceEvent);
        
    }

    protected abstract ProtocolFundingSourceRuleBase getNewProtocolFundingSourceRuleInstanceHook();

    public boolean processAddPermissionsUserBusinessRules(Document document, List<User> users, PermissionsUser newUser) {
      return new ProtocolPermissionsRule().processAddPermissionsUserBusinessRules(document, users, newUser);
  }  
    
// TODO *********commented the code below during IACUC refactoring*********    
//    /**
//     * @see org.kuali.kra.common.permissions.rule.PermissionsRule#processAddPermissionsUserBusinessRules(org.kuali.core.document.Document, java.util.List, org.kuali.kra.common.permissions.bo.PermissionsUser)
//     */
//    public boolean processAddPermissionsUserBusinessRules(Document document, List<User> users, PermissionsUser newUser) {
//        return new ProtocolPermissionsRule().processAddPermissionsUserBusinessRules(document, users, newUser);
//    }
//
//    /**
//     * @see org.kuali.kra.common.permissions.rule.PermissionsRule#processDeletePermissionsUserBusinessRules(org.kuali.core.document.Document, java.util.List, int)
//     */
//    public boolean processDeletePermissionsUserBusinessRules(Document document, List<User> users, int index) {
//        return new ProtocolPermissionsRule().processDeletePermissionsUserBusinessRules(document, users, index);     
//    }
//
//    /**
//     * @see org.kuali.kra.common.permissions.rule.PermissionsRule#processEditPermissionsUserRolesBusinessRules(org.kuali.core.document.Document, java.util.List, org.kuali.kra.common.permissions.bo.PermissionsUserEditRoles)
//     */
//    public boolean processEditPermissionsUserRolesBusinessRules(Document document, List<User> users,
//            PermissionsUserEditRoles editRoles) {
//        return new ProtocolPermissionsRule().processEditPermissionsUserRolesBusinessRules(document, users, editRoles);
//    }

    public boolean processAddProtocolAttachmentPersonnelRules(AddProtocolAttachmentPersonnelEvent addProtocolAttachmentPersonnelEvent) {
        return getProtocolAttachmentPersonnelRuleInstanceHook().processAddProtocolAttachmentPersonnelRules(addProtocolAttachmentPersonnelEvent);
    }
    
    public abstract ProtocolAttachmentPersonnelRuleBase getProtocolAttachmentPersonnelRuleInstanceHook();


    /**
     * @see org.kuali.kra.iacuc.personnel.AddProtocolUnitRule#processAddProtocolUnitBusinessRules(org.kuali.kra.irb.personnel.AddProtocolUnitEvent)
     */
    public boolean processAddProtocolUnitBusinessRules(AddProtocolUnitEvent addProtocolUnitEvent) {

        return getNewProtocolUnitRuleInstanceHook().processAddProtocolUnitBusinessRules(addProtocolUnitEvent);
        
    }
    
    protected abstract ProtocolUnitRuleBase getNewProtocolUnitRuleInstanceHook();
    
    /**
     * 
     * @see org.kuali.kra.rule.BusinessRuleInterface#processRules(org.kuali.kra.rule.event.KraDocumentEventBaseExtension)
     */
    public boolean processRules(KraDocumentEventBaseExtension event) {
        boolean retVal = false;
        retVal = event.getRule().processRules(event);
        return retVal;
    }

    
    /**
     * Executes the notes and attachment related audit rules.
     * @param document the document.
     * @return true if valid.
     */
    private boolean processNoteAndAttachmentAuditRules(ProtocolDocumentBase document) {
        assert document != null : "the document was null";
        
        boolean valid = true;
        valid &= newSubmitProtocolAttachmentProtocolRuleImplInstanceHook().processSubmitProtocolAttachmentProtocolRules(document);
     
        return valid;
    }
    
    protected abstract SubmitProtocolAttachmentProtocolRuleImplBase newSubmitProtocolAttachmentProtocolRuleImplInstanceHook();

    /**
     * @see org.kuali.kra.irb.actions.submit.ExecuteProtocolSubmitActionRule#processSubmitAction(org.kuali.kra.irb.ProtocolDocumentBase, org.kuali.kra.irb.actions.submit.ProtocolSubmitActionBean)
     */
    public boolean processSubmitAction(ProtocolDocumentBase document, ProtocolSubmitAction submitAction) {
        return newProtocolSubmitActionRuleInstanceHook().processSubmitAction(document, submitAction);
    }

    protected abstract ExecuteProtocolSubmitActionRule newProtocolSubmitActionRuleInstanceHook();

// TODO *********commented the code below during IACUC refactoring*********     
//    /**
//     * @see org.kuali.kra.irb.actions.assigncmtsched.ExecuteProtocolAssignCmtSchedRule#processAssignToCommitteeSchedule(org.kuali.kra.irb.ProtocolDocumentBase, org.kuali.kra.irb.actions.assigncmtsched.ProtocolAssignCmtSchedBean)
//     */
//    public boolean processAssignToCommitteeSchedule(ProtocolDocumentBase document, ProtocolAssignCmtSchedBean actionBean) {
//        return new ProtocolAssignCmtSchedRule().processAssignToCommitteeSchedule(document, actionBean);
//    }
//
//    /**
//     * @see org.kuali.kra.irb.actions.assignreviewers.ExecuteProtocolAssignReviewersRule#processAssignReviewers(org.kuali.kra.irb.ProtocolDocumentBase, org.kuali.kra.irb.actions.assignreviewers.ProtocolAssignReviewersBean)
//     */
//    public boolean processAssignReviewers(ProtocolDocumentBase document, ProtocolAssignReviewersBean actionBean) {
//        return new ProtocolAssignReviewersRule().processAssignReviewers(document, actionBean);
//    }
//    
//    public boolean processAdminCorrectionRule(ProtocolDocumentBase document, AdminCorrectionBean actionBean) {
//        return new ProtocolAdminCorrectionRuleBase().processAdminCorrectionRule(document, actionBean);
//    }
    
    /**
     * @see org.kuali.kra.irb.actions.decision.ExecuteCommitteeDecisionRule#proccessCommitteeDecisionRule(org.kuali.kra.irb.ProtocolDocumentBase, org.kuali.kra.irb.actions.decision.CommitteeDecision)
     */
    public boolean proccessCommitteeDecisionRule(ProtocolDocumentBase document, CD actionBean) {
        return newCommitteeDecisionRuleInstanceHook().proccessCommitteeDecisionRule(document, actionBean);
    }

    protected abstract CommitteeDecisionRuleBase<CD> newCommitteeDecisionRuleInstanceHook();

// TODO *********commented the code below during IACUC refactoring*********     
//    public boolean processModifySubmissionRule(ProtocolDocumentBase document, ProtocolModifySubmissionBean actionBean) {
//        return new ProtocolModifySubmissionRule().processModifySubmissionRule(document, actionBean);
//    }
//    
    /**
     * 
     * @see org.kuali.kra.irb.actions.decision.ExecuteCommitteeDecisionAbstainerRule#proccessCommitteeDecisionAbstainerRule(org.kuali.kra.irb.ProtocolDocumentBase, org.kuali.kra.irb.actions.decision.CommitteeDecision)
     */
    public boolean proccessCommitteeDecisionAbstainerRule(ProtocolDocumentBase document, CD actionBean) {
        return newCommitteeDecisionAbstainerRuleInstanceHook().proccessCommitteeDecisionAbstainerRule(document, actionBean);
    }
    
    protected abstract ExecuteCommitteeDecisionAbstainerRule<CD> newCommitteeDecisionAbstainerRuleInstanceHook();

    
    /**
     * 
     * @see org.kuali.kra.irb.actions.decision.ExecuteCommitteeDecisionRecuserRule#proccessCommitteeDecisionRecuserRule(org.kuali.kra.irb.ProtocolDocumentBase, org.kuali.kra.irb.actions.decision.CommitteeDecision)
     */
    public boolean proccessCommitteeDecisionRecuserRule(ProtocolDocumentBase document, CD actionBean) {
        return newCommitteeDecisionRecuserRuleInstanceHook().proccessCommitteeDecisionRecuserRule(document, actionBean);
    }

    protected abstract ExecuteCommitteeDecisionRecuserRule<CD> newCommitteeDecisionRecuserRuleInstanceHook();

    
    private UnitService getUnitService() {
        return KraServiceLocator.getService(UnitService.class);
    }


// TODO *********commented the code below during IACUC refactoring*********     
//    public boolean processReviewNotRequiredRule(ProtocolDocumentBase document, ProtocolReviewNotRequiredBean actionBean) {
//        return new ProtocolReviewNotRequiredRuleBase().processReviewNotRequiredRule(document, actionBean);
//    }
    
    
}
