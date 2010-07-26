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
package org.kuali.kra.triage.suite;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

@RunWith(Suite.class)
@SuiteClasses(  {

    org.kuali.kra.test.OjbRepositoryMappingTest.class,
    org.kuali.kra.HtmlUnitUtilTest.class,
    org.kuali.kra.institutionalproposal.customdata.InstitutionalProposalCustomDataTest.class,
    org.kuali.kra.award.rule.AwardCommentsRuleTest.class,
    org.kuali.kra.irb.protocol.participant.ProtocolParticipantRuleTest.class,
    org.kuali.kra.irb.actions.assigncmtsched.ProtocolAssignCmtSchedServiceTest.class,
    org.kuali.kra.proposaldevelopment.lookup.keyvalue.NoticeOfOpportunityValuesFinderTest.class,
    org.kuali.kra.committee.keyvalue.MonthTest.class,
    org.kuali.kra.document.CostElementMaintenanceDocumentTest.class,
    org.kuali.kra.service.impl.KcPersonServiceImplTest.class,
    org.kuali.kra.document.ActivityTypeMaintenanceDocumentTest.class,
    org.kuali.kra.irb.actions.request.ProtocolRequestServiceTest.class,
    org.kuali.kra.budget.calculator.BudgetDecimalTest.class,
    org.kuali.kra.service.impl.TaskAuthorizationServiceImplTest.class,
    org.kuali.kra.institutionalproposal.contacts.InstitutionalProposalProjectPersonsAuditRuleTest.class,
    org.kuali.kra.irb.noteattachment.ProtocolAttachmentBaseRuleHelperTest.class,
    org.kuali.kra.web.WorkflowWebTest.class,
    org.kuali.kra.award.AwardDocumentRuleTest.class,
    org.kuali.kra.irb.protocol.funding.ProtocolFundingSourceRuleTest.class,
    org.kuali.kra.award.commitments.AwardFandaRateRuleTest.class,
    org.kuali.kra.questionnaire.QuestionnaireLookupableHelperServiceTest.class,
    org.kuali.kra.budget.bo.BudgetPeriodTest.class,
    org.kuali.kra.proposaldevelopment.rules.ProposalDevelopmentPersonnelAttachmentRuleTest.class,
    org.kuali.kra.award.home.ValidRatesTest.class,
    org.kuali.kra.award.lookup.keyvalue.ReportClassValuesFinderTest.class,
    org.kuali.kra.irb.actions.delete.ProtocolDeleteServiceTest.class,
    org.kuali.kra.proposaldevelopment.service.KeyPersonnelServiceTest.class,
    org.kuali.kra.award.paymentreports.specialapproval.approvedequipment.AwardApprovedEquipmentRuleIntegrationTest.class,
    org.kuali.kra.bo.CostShareTypeTest.class,
    org.kuali.kra.infrastructure.KraServiceLocatorTest.class,
    org.kuali.kra.committee.CommitteeVersioningTest.class,
    org.kuali.kra.irb.protocol.ProtocolVersionServiceTest.class,
    org.kuali.kra.budget.rules.BudgetValidationUnrecoveredFandARuleTest.class,
    org.kuali.kra.award.web.struts.action.AwardCommitmentsActionTest.class,
    org.kuali.kra.award.awardhierarchy.AwardHierarchyBeanTest.class,
    org.kuali.kra.award.paymentreports.closeout.AwardCloseoutRuleImplTest.class,
    org.kuali.kra.irb.ProtocolSubmissionLookupHelperServiceTest.class,
    org.kuali.kra.award.paymentreports.specialapproval.approvedequipment.ApprovedEquipmentBeanTest.class,
    org.kuali.kra.scheduling.util.Time24HrFmtTest.class,
    org.kuali.kra.proposaldevelopment.lookup.keyvalue.NarrativeStatusValuesFinderTest.class,
    org.kuali.kra.award.notesandattachments.notes.AwardNotepadTest.class,
    org.kuali.kra.award.contacts.AwardCreditSplitBeanTest.class,
    org.kuali.kra.irb.protocol.funding.AddProtocolFundingSourceTest.class,
    org.kuali.kra.irb.actions.submit.ProtocolUpdateActionServiceTest.class,
    org.kuali.kra.rules.SpecialReviewRuleTest.class,
    org.kuali.kra.award.awardhierarchy.AwardHierarchyTest.class,
    org.kuali.kra.service.OrganizationServiceTest.class,
    org.kuali.kra.budget.rules.AddBudgetProjectIncomeRuleTest.class,
    org.kuali.kra.award.home.fundingproposal.CommentsDataFeedCommandTest.class,
    org.kuali.kra.irb.ProtocolVersioningTest.class,
    org.kuali.kra.award.htmlunitwebtest.AwardTimeAndMoneyWebTest.class,
    org.kuali.kra.award.htmlunitwebtest.AwardDirectFandADistributionWebTest.class,
    org.kuali.kra.award.web.struts.action.AwardHomeActionTest.class,
    org.kuali.kra.award.lookup.keyvalue.FrequencyBaseCodeValuesFinderTest.class,
    org.kuali.kra.baseline.BaseLineAppStartTest.class,
    org.kuali.kra.budget.rules.InstituteRateRateTypeRateClassRuleTest.class,
    org.kuali.kra.irb.protocol.funding.LookupProtocolFundingSourceRuleTest.class,
    org.kuali.kra.proposaldevelopment.rules.ProposalDevelopmentAbstractsRuleTest.class,
    org.kuali.kra.service.impl.AwardSponsorTermServiceImplTest.class,
    org.kuali.kra.service.impl.AwardNumberServiceTest.class,
    org.kuali.kra.award.home.AwardTransferringSponsorTest.class,
    org.kuali.kra.committee.authorizers.ModifyCommitteeAuthorizerTest.class,
    org.kuali.kra.committee.authorizers.CommitteeActionAuthorizerTest.class,
    org.kuali.kra.committee.service.CommitteeBatchCorrespondenceServiceTest.class,
    org.kuali.kra.institutionalproposal.contacts.InstitutionalProposalPersonTest.class,
    org.kuali.kra.document.InstituteLaRateMaintenanceDocumentTest.class,
    org.kuali.kra.document.CustomAttributeMaintenanceDocumentTest.class,
    org.kuali.kra.proposaldevelopment.rules.InvestigatorCreditTypeRuleTest.class,
    org.kuali.kra.document.InstituteRateMaintenanceDocumentTest.class,
    org.kuali.kra.infrastructure.RateDecimalFormatterTest.class,
    org.kuali.kra.committee.web.CommitteeScheduleWebRuleTest.class,
    org.kuali.kra.committee.bo.ScheduleStatusTest.class,
    org.kuali.kra.institutionalproposal.contacts.InstitutionalProposalCreditSplitBeanTest.class,
    org.kuali.kra.award.home.fundingproposal.AwardFundingProposalBeanTest.class,
    org.kuali.kra.award.contacts.AwardProjectPersonAddRuleImplTest.class,
    org.kuali.kra.irb.protocol.reference.ProtocolReferenceRuleTest.class,
    org.kuali.kra.meeting.ViewScheduleAuthorizerTest.class,
    org.kuali.kra.service.impl.AwardFandaRateServiceImplTest.class,
    org.kuali.kra.document.BudgetCategoryMaintenanceDocumentTest.class,
    org.kuali.kra.irb.noteattachment.ProtocolAttachmentServiceImplTest.class,
    org.kuali.kra.questionnaire.QuestionnaireAuthorizationServiceTest.class,
    org.kuali.kra.timeandmoney.service.impl.ActivePendingTransactionServiceImplTest.class,
    org.kuali.kra.award.home.fundingproposal.SponsorDataFeedCommandTest.class,
    org.kuali.kra.award.htmlunitwebtest.AwardNotesAndAttachmentsWebTest.class,
    org.kuali.kra.award.htmlunitwebtest.AwardPaymentsAndTermsWebTest.class,
    org.kuali.kra.service.impl.ArgValueLookupServiceImplTest.class,
    org.kuali.kra.award.contacts.AwardProjectPersonsAuditRuleTest.class,
    org.kuali.kra.committee.service.CommitteeLookupHelperServiceTest.class,
    org.kuali.kra.proposaldevelopment.rules.BudgetModularTotalDirectCostRuleTest.class,
    org.kuali.kra.irb.web.ProtocolDataValidationWebTest.class,
    org.kuali.kra.award.paymentreports.specialapproval.approvedequipment.AwardApprovedEquipmentTest.class,
    org.kuali.kra.institutionalproposal.htmlunitwebtest.InstitutionalProposalDistributionWebTest.class,
    org.kuali.kra.questionnaire.QuestionnaireServiceTest.class,
    org.kuali.kra.committee.authorizers.ViewCommitteeAuthorizerTest.class,
    org.kuali.kra.committee.rules.CommitteeScheduleDeadlineRuleTest.class,
    org.kuali.kra.proposaldevelopment.rules.ProposalDevelopmentSponsorProgramInformationAuditRuleTest.class,
    org.kuali.kra.institutionalproposal.home.InstitutionalProposalCostShareTest.class,
    org.kuali.kra.proposaldevelopment.rules.PersonEditableFieldRuleTest.class,
    org.kuali.kra.meeting.ModifyScheduleAuthorizerTest.class,
    org.kuali.kra.irb.protocol.summary.ProtocolSummaryTest.class,
    org.kuali.kra.service.impl.SponsorServiceImplTest.class,
    org.kuali.kra.budget.rules.InstituteRateMaintenanceDocumentRuleTest.class,
    org.kuali.kra.budget.rules.ValidCalcTypeMaintenanceDocumentRuleTest.class,
    org.kuali.kra.service.FundingSourceTypeServiceTest.class,
    org.kuali.kra.award.lookup.keyvalue.ReportCodeValuesFinderTest.class,
    org.kuali.kra.maintenance.KraMaintainableImplTest.class,
    org.kuali.kra.questionnaire.question.QuestionServiceTest.class,
    org.kuali.kra.rules.CustomAttributeMaintenanceDocumentRuleTest.class,
    org.kuali.kra.award.commitments.AwardCostShareRuleTest.class,
    org.kuali.kra.document.ResearchDocumentBaseTest.class,
    org.kuali.kra.web.IFrameWebPortalPageTest.class,
    org.kuali.kra.service.impl.ResearchAreasServiceTest.class,
    org.kuali.kra.budget.web.BudgetJustificationWrapperTest.class,
    org.kuali.kra.award.document.AwardDocumentIntegrationTest.class,
    org.kuali.kra.util.NaturalStringComparatorTest.class,
    org.kuali.kra.proposaldevelopment.rules.ProposalDevelopmentPermissionsRuleTest.class,
    org.kuali.kra.institutionalproposal.ipreview.IntellectualPropertyReviewActivityTypeTest.class,
    org.kuali.kra.award.timeandmoney.AwardDirectFandADistributionRuleTest.class,
    org.kuali.kra.committee.rules.CommitteeScheduleDayRuleTest.class,
    org.kuali.kra.committee.rules.CommitteeActionGenerateBatchCorrespondenceRuleTest.class,
    org.kuali.kra.committee.rules.CommitteeActionFilterBatchCorrespondenceHistoryRuleTest.class,
    org.kuali.kra.committee.rules.CommitteeActionViewBatchCorrespondenceRuleTest.class,
    org.kuali.kra.committee.rules.CommitteeActionPrintCommitteeDocumentRuleTest.class,
    org.kuali.kra.web.struts.action.AuditMapSorterTest.class,
    org.kuali.kra.meeting.AlternateForValuesFinderTest.class,
    org.kuali.kra.questionnaire.question.QuestionMaintenanceDocumentRuleTest.class,
    org.kuali.kra.award.htmlunitwebtest.AwardActionsWebTest.class,
    org.kuali.kra.award.paymentreports.specialapproval.foreigntravel.ApprovedForeignTravelBeanTest.class,
    org.kuali.kra.budget.rules.BudgetPersonnelRuleTest.class,
    org.kuali.kra.award.timeandmoney.AwardDirectFandADistributionTest.class,
    org.kuali.kra.irb.web.ProtocolRequiredFieldsWebTest.class,
    org.kuali.kra.award.customdata.AwardCustomDataTest.class,
    org.kuali.kra.award.htmlunitwebtest.AwardHomeWebTest.class,
    org.kuali.kra.meeting.ProtocolValuesFinderTest.class,
    org.kuali.kra.award.paymentreports.specialapproval.approvedequipment.AwardApprovedEquipmentRuleTest.class,
    org.kuali.kra.proposaldevelopment.rules.CreditSplitValidatorTest.class,
    org.kuali.kra.institutionalproposal.rules.InstitutionalProposalUnrecoveredFanARuleTest.class,
    org.kuali.kra.irb.actions.submit.ProtocolSubmitActionServiceTest.class,
    org.kuali.kra.lookup.NonOrganizationalRolodexLookupableHelperServiceImplTest.class,
    org.kuali.kra.budget.document.ObjectUtilsTest.class,
    org.kuali.kra.proposaldevelopment.lookup.keyvalue.CopyBudgetVersionsValuesFinderTest.class,
    org.kuali.kra.budget.service.JobCodeServiceTest.class,
    org.kuali.kra.dao.ResearchAreaDaoTest.class,
    org.kuali.kra.award.home.approvedsubawards.AwardApprovedSubawardRuleTest.class,
    org.kuali.kra.award.web.struts.action.AwardPaymentReportsAndTermsActionTest.class,
    org.kuali.kra.irb.auth.ProtocolAssignCmtSchedAuthorizerTest.class,
    org.kuali.kra.committee.rules.CommitteeScheduleTimeRuleTest.class,
    org.kuali.kra.irb.auth.ProtocolAuthorizationServiceImplTest.class,
    org.kuali.kra.bo.KcPersonExtrendedAttributesTest.class,
    org.kuali.kra.proposaldevelopment.service.QuickStartUserLookupTest.class,
    org.kuali.kra.irb.personnel.ProtocolPersonnelServiceTest.class,
    org.kuali.kra.rules.ResearchDocumentBaseAuditRuleTest.class,
    org.kuali.kra.budget.service.BudgetServiceTest.class,
    org.kuali.kra.dao.RolodexDaoOjbTest.class,
    org.kuali.kra.irb.protocol.reference.ProtocolReferenceServiceTest.class,
    org.kuali.kra.lookup.KraPessimisticLockLookupableHelperServiceImplTest.class,
    org.kuali.kra.award.commitments.AwardFandaRateTest.class,
    org.kuali.kra.lookup.keyvalue.AbstractTypeValuesFinderTest.class,
    org.kuali.kra.award.AwardAmountInfoServiceImplTest.class,
    org.kuali.kra.award.paymentreports.specialapproval.approvedequipment.AwardApprovedEquipmentRuleHelperIntegrationTest.class,
    org.kuali.kra.service.impl.CountryCodeServiceImplTest.class,
    org.kuali.kra.lookup.keyvalue.NsfCodeValuesFinderTest.class,
    org.kuali.kra.service.impl.AwardCustomAttributeServiceImplTest.class,
    org.kuali.kra.budget.bo.BudgetUnrecoveredFandATest.class,
    org.kuali.kra.rules.KraMaintenanceDocumentRuleBaseTest.class,
    org.kuali.kra.institutionalproposal.InstitutionalProposalVersioningTest.class,
    org.kuali.kra.institutionalproposal.rules.InstitutionalProposalCostShareRuleTest.class,
    org.kuali.kra.irb.ProtocolLookupHelperServiceTest.class,
    org.kuali.kra.institutionalproposal.ProposalCommentTest.class,
    org.kuali.kra.award.detailsdates.AwardDetailsAndDatesRuleImplTest.class,
    org.kuali.kra.award.awardhierarchy.AwardHierarchyServiceImplTest.class,
    org.kuali.kra.bo.SponsorTermTypeTest.class,
    org.kuali.kra.irb.actions.assigncmtsched.ProtocolAssignCmtSchedRuleTest.class,
    org.kuali.kra.award.web.struts.action.AwardActionTest.class,
    org.kuali.kra.budget.rules.ValidCeRateTypeMaintenanceDocumentRuleTest.class,
    org.kuali.kra.committee.web.CommitteeScheduleWebCommitteeSchedulePanel.class,
    org.kuali.kra.institutionalproposal.ipreview.IntellectualPropertyReviewActivityTest.class,
    org.kuali.kra.bo.KraPersistableBusinessObjectBaseTest.class,
    org.kuali.kra.irb.protocol.participant.ParticipantTypeValuesFinderTest.class,
    org.kuali.kra.budget.document.BudgetDocumentIntegrationTest.class,
    org.kuali.kra.budget.service.BudgetJustificationServiceTest.class,
    org.kuali.kra.committee.authorizers.CreateCommitteeAuthorizerTest.class,
    org.kuali.kra.committee.web.struts.form.schedule.ScheduleDataTest.class,
    org.kuali.kra.irb.auth.ModifyProtocolAuthorizerTest.class,
    org.kuali.kra.irb.actions.submit.ProtocolActionServiceTest.class,
    org.kuali.kra.irb.ProtocolFinderDaoOjbTest.class,
    org.kuali.kra.irb.noteattachment.ProtocolAttachmentFileTest.class,
    org.kuali.kra.committee.service.CommitteeMembershipServiceTest.class,
    org.kuali.kra.institutionalproposal.contacts.InstitutionalProposalProjectPersonsSaveRuleImplTest.class,
    org.kuali.kra.award.MinimalAwardTest.class,
    org.kuali.kra.award.awardhierarchy.AwardHierarchyServiceImplIntegrationTest.class,
    org.kuali.kra.irb.ProtocolDocumentRuleTest.class,
    org.kuali.kra.institutionalproposal.ipreview.IntellectualPropertyReviewTest.class,
    org.kuali.kra.irb.actions.submit.ProtocolActionAjaxServiceTest.class,
    org.kuali.kra.irb.protocol.ProtocolNumberServiceTest.class,
    org.kuali.kra.award.contacts.AwardProjectPersonsSaveRuleImplTest.class,
    org.kuali.kra.institutionalproposal.ipreview.IntellectualPropertyReviewRequirementTypeTest.class,
    org.kuali.kra.irb.personnel.ProtocolPersonnelAuditRuleTest.class,
    org.kuali.kra.irb.protocol.research.ProtocolResearchAreaAuditRuleTest.class,
    org.kuali.kra.service.impl.AwardCommentServiceImplTest.class,
    org.kuali.kra.bo.CommentTypeTest.class,
    org.kuali.kra.proposaldevelopment.rules.ProposalDevelopmentProposalSpecialReviewRuleTest.class,
    org.kuali.kra.irb.protocol.participant.ProtocolParticipantServiceTest.class,
    org.kuali.kra.service.impl.AwardDirectFandADistributionServiceImplTest.class,
    org.kuali.kra.institutionalproposal.contacts.InstitutionalProposalProjectPersonAddRuleImplTest.class,
    org.kuali.kra.questionnaire.QuestionnaireMaintenanceDocumentRuleTest.class,
    org.kuali.kra.committee.web.struts.form.schedule.util.ScheduleOptionsUtilTest.class,
    org.kuali.kra.award.paymentreports.awardreports.AwardReportTermRecipientRuleImplTest.class,
    org.kuali.kra.committee.keyvalue.WeekDayTest.class,
    org.kuali.kra.award.paymentreports.specialapproval.approvedequipment.AwardApprovedEquipmentRuleHelperTest.class,
    org.kuali.kra.committee.keyvalue.MonthsWeekTest.class,
    org.kuali.kra.proposaldevelopment.lookup.keyvalue.NarrativeTypeTest.class,
    org.kuali.kra.irb.auth.CreateProtocolAuthorizerTest.class,
    org.kuali.kra.proposaldevelopment.lookup.keyvalue.LeadUnitValuesFinderTest.class,
    org.kuali.kra.committee.web.CommitteeScheduleWebFilterTest.class,
    org.kuali.kra.service.impl.InstitutionalProposalCustomAttributeServiceImplTest.class,
    org.kuali.kra.infrastructure.BudgetDecimalFormatterTest.class,
    org.kuali.kra.irb.actions.assignreviewers.ProtocolAssignReviewersServiceTest.class,
    org.kuali.kra.committee.service.CommitteeScheduleLookupHelperServiceTest.class,
    org.kuali.kra.award.AwardSponsorTermRuleTest.class,
    org.kuali.kra.budget.bo.BudgetProjectIncomeTest.class,
    org.kuali.kra.proposaldevelopment.rules.ProposalDevelopmentYNQRuleTest.class,
    org.kuali.kra.service.impl.KcPessimisticLockServiceImplTest.class,
    org.kuali.kra.service.impl.CustomAttributeServiceImplTest.class,
    org.kuali.kra.committee.rules.CommitteeScheduleFilterDatesRuleTest.class,
    org.kuali.kra.award.paymentreports.closeout.AwardCloseoutServiceImplTest.class,
    org.kuali.kra.budget.bo.BudgetCostShareTest.class,
    org.kuali.kra.award.home.AwardSponsorTermTest.class,
    org.kuali.kra.budget.rules.OrganizationMaintenanceDocumentRuleTest.class,
    org.kuali.kra.award.lookup.keyvalue.FrequencyCodeValuesFinderTest.class,
    org.kuali.kra.irb.noteattachment.ProtocolAttachmentProtocolRuleHelperTest.class,
    org.kuali.kra.irb.actions.amendrenew.ProtocolMergeTest.class,
    org.kuali.kra.proposaldevelopment.lookup.keyvalue.DeadlineTypeValuesFinderTest.class,
    org.kuali.kra.award.AwardVersioningTest.class,
    org.kuali.kra.irb.actions.amendrenew.ProtocolCreateAmendmentRuleTest.class,
    org.kuali.kra.service.impl.KraAuthorizationServiceImplTest.class,
    org.kuali.kra.bo.SponsorTermTest.class,
    org.kuali.kra.service.SequenceUtilsTest.class,
    org.kuali.kra.service.VersionHistoryServiceTest.class,
    org.kuali.kra.proposaldevelopment.rules.ProposalDevelopmentInstituteAttachmentRuleTest.class,
    org.kuali.kra.irb.protocol.research.ProtocolResearchAreaServiceTest.class,
    org.kuali.kra.committee.rules.CommitteeScheduleDateConflictRuleTest.class,
    org.kuali.kra.award.paymentreports.paymentschedule.AwardPaymentScheduleRuleTest.class,
    org.kuali.kra.institutionalproposal.home.InstitutionalProposalUnrecoveredFandATest.class,
    org.kuali.kra.rice.integration.ManyToManyValidationTest.class,
    org.kuali.kra.irb.actions.submit.CheckListServiceTest.class,
    org.kuali.kra.service.impl.VersionHistoryServiceImplTest.class,
    org.kuali.kra.award.paymentreports.specialapproval.foreigntravel.AwardApprovedForeignTravelRuleIntegrationTest.class,
    org.kuali.kra.irb.noteattachment.ProtocolAttachmentTypeByGroupValuesFinderTest.class,
    org.kuali.kra.service.impl.AwardReportsServiceImplTest.class,
    org.kuali.kra.meeting.MeetingServiceTest.class,
    org.kuali.kra.institutionalproposal.htmlunitwebtest.InstitutionalProposalHomeWebTest.class,
    org.kuali.kra.irb.noteattachment.ProtocolAttachmentPersonnelRuleHelperTest.class,
    org.kuali.kra.rules.UnitMaintenanceDocumentRuleTest.class,
    org.kuali.kra.committee.service.CommitteeServiceTest.class,
    org.kuali.kra.award.commitments.AwardFandARateAuditRuleTest.class,
    org.kuali.kra.committee.web.CommitteeResearchAreasWebTest.class,
    org.kuali.kra.committee.web.CommitteeActionsWebTest.class,
    org.kuali.kra.lookup.WebLookupTest.class,
    org.kuali.kra.irb.actions.withdraw.ProtocolWithdrawServiceTest.class,
    org.kuali.kra.budget.service.BudgetRatesServiceTest.class,
    org.kuali.kra.proposaldevelopment.lookup.keyvalue.ProposalNarrativeTypeValuesFinderTest.class,
    org.kuali.kra.workflow.test.ProposalDevelopmentDocumentAlternateRoutingTest.class,
    org.kuali.kra.award.home.approvedsubawards.AwardApprovedSubawardTest.class,
    org.kuali.kra.proposaldevelopment.rules.BudgetVersionRuleTest.class,
    org.kuali.kra.irb.web.ProtocolAuthorizationTest.class,
    org.kuali.kra.award.contacts.ContactCategoryConversionTest.class,
    org.kuali.kra.irb.actions.notifyirb.ProtocolNotifyIrbServiceTest.class,
    org.kuali.kra.award.contacts.AwardPersonTest.class,
    org.kuali.kra.questionnaire.question.QuestionVersioningTest.class,
    org.kuali.kra.institutionalproposal.ipreview.IntellectualPropertyReviewResultTypeTest.class,
    org.kuali.kra.service.NihSponsorHandlingUnitTest.class,
    org.kuali.kra.document.OrganizationMaintenanceDocumentTest.class,
    org.kuali.kra.workflow.test.ProposalDevelopmentDocumentRoutingWebTest.class,
    org.kuali.kra.institutionalproposal.IntellectualPropertyReviewVersioningTest.class,
    org.kuali.kra.lookup.LookupServiceTest.class,
    org.kuali.kra.committee.rules.CommitteeScheduleStartAndEndDateRuleTest.class,
    org.kuali.kra.service.impl.VersioningServiceImplTest.class,
    org.kuali.kra.document.ValidCalcTypeMaintenanceDocumentTest.class,
    org.kuali.kra.proposaldevelopment.service.ProposalStateServiceTest.class,
    org.kuali.kra.award.htmlunitwebtest.AwardActionsWebTest.class,
    org.kuali.kra.award.htmlunitwebtest.AwardNotesAndAttachmentsWebTest.class,
    org.kuali.kra.award.htmlunitwebtest.AwardPaymentsAndTermsWebTest.class,
    org.kuali.kra.institutionalproposal.htmlunitwebtest.InstitutionalProposalDistributionWebTest.class,
    org.kuali.kra.institutionalproposal.htmlunitwebtest.InstitutionalProposalHomeWebTest.class,
    org.kuali.kra.irb.web.ProtocolDataValidationWebTest.class,
    org.kuali.kra.committee.web.CommitteeWebTest.class,
    org.kuali.kra.proposaldevelopment.rules.ProposalDevelopmentRequiredFieldsAuditRuleTest.class,
    org.kuali.kra.award.htmlunitwebtest.AwardDirectFandADistributionWebTest.class,
    org.kuali.kra.irb.protocol.ProtocolProtocolServiceTest.class,
    org.kuali.kra.committee.web.CommitteeScheduleWebAddSchedulePanelTest.class,
    org.kuali.kra.meeting.MinuteEntryTypeValuesFinderTest.class,
    org.kuali.kra.questionnaire.question.QuestionLookupableHelperServiceTest.class,
    org.kuali.kra.irb.correspondence.ProtocolCorrespondenceTemplateRuleTest.class,
    org.kuali.kra.irb.correspondence.ProtocolCorrespondenceTemplateServiceTest.class,
    org.kuali.kra.irb.correspondence.BatchCorrespondenceDetailRuleTest.class,
    org.kuali.kra.questionnaire.answer.QuestionnaireAnswerServiceTest.class,
    org.kuali.kra.questionnaire.answer.QuestionnaireAnswerRuleTest.class,
    org.kuali.kra.irb.actions.assignagenda.ProtocolAssignToAgendaServiceTest.class,
    org.kuali.kra.irb.actions.assignagenda.ProtocolAssignToAgendaRuleTest.class,
    org.kuali.kra.proposaldevelopment.lookup.keyvalue.ProposalColumnsValuesFinderTest.class,
    org.kuali.kra.proposaldevelopment.document.ProposalColumnsToAlterMaintainableImplTest.class,
    org.kuali.kra.committee.service.CommitteeScheduleServiceImplTest.class,
    org.kuali.kra.irb.personnel.ProtocolPersonnelRuleTest.class,
    org.kuali.kra.rules.KraCustomAttributeRulesTest.class,
    org.kuali.kra.committee.rules.CommitteeMembershipSaveRuleTest.class,
    org.kuali.kra.award.paymentreports.awardreports.AwardReportTermRuleImplTest.class,
    org.kuali.kra.irb.auth.ModifyProtocolPermissionsAuthorizerTest.class,
    org.kuali.kra.committee.web.CommitteeAuthorizationTest.class,
    org.kuali.kra.committee.rules.CommitteeRuleTest.class,
    org.kuali.kra.scheduling.quartz.KcCronTriggerBeanTest.class,
    org.kuali.kra.award.home.AwardTest.class,
    org.kuali.kra.service.SpecialReviewServiceTest.class,
    org.kuali.kra.budget.document.BudgetDocumentRuleTest.class,
    org.kuali.kra.document.SponsorFormTemplateMaintenanceDocumentTest.class,
    org.kuali.kra.award.commitments.AwardCostShareAuditRuleTest.class,
    org.kuali.kra.award.home.AwardCommentFactoryTest.class,
    org.kuali.kra.irb.actions.request.ProtocolRequestRuleTest.class,
    org.kuali.kra.irb.actions.submit.ProtocolSubmitActionRuleTest.class,
    org.kuali.kra.irb.protocol.location.ProtocolLocationServiceTest.class,
    org.kuali.kra.irb.actions.genericactions.ProtocolGenericActionsServiceTest.class,
    org.kuali.kra.irb.actions.approve.ProtocolApproveServiceImplTest.class,
    org.kuali.kra.meeting.MeetingAddMinuteRuleTest.class,
    org.kuali.kra.meeting.MeetingAddOtherRuleTest.class,
    org.kuali.kra.meeting.MeetingPresentOtherOrVotingRuleTest.class,
    org.kuali.kra.meeting.MeetingSaveRuleTest.class,
    org.kuali.kra.s2s.generator.impl.AttachmentsV1_1GeneratorTest.class,
    org.kuali.kra.s2s.generator.impl.EDGEPA427V1_0GeneratorTest.class,
    org.kuali.kra.s2s.generator.impl.EDGEPA427V1_1GeneratorTest.class,
    org.kuali.kra.s2s.generator.impl.NASAOtherProjectInformationV1_0GeneratorTest.class,
    org.kuali.kra.s2s.generator.impl.NSFApplicationChecklistV1_0GeneratorTest.class,
    org.kuali.kra.s2s.generator.impl.NSFApplicationChecklistV1_1GeneratorTest.class,
    org.kuali.kra.s2s.generator.impl.NSFApplicationChecklistV1_2GeneratorTest.class,
    org.kuali.kra.s2s.generator.impl.NSFDeviationAuthorizationV1_0GeneratorTest.class,
    org.kuali.kra.s2s.generator.impl.NSFDeviationAuthorizationV1_1GeneratorTest.class,
    org.kuali.kra.s2s.generator.impl.NSFSuggestedReviewersV1_0GeneratorTest.class,
    org.kuali.kra.s2s.generator.impl.NSFSuggestedReviewersV1_1GeneratorTest.class,
    org.kuali.kra.s2s.generator.impl.PHS398ChecklistV1_1GeneratorTest.class,
    org.kuali.kra.s2s.generator.impl.PHS398ResearchPlanV1_0GeneratorTest.class,
    org.kuali.kra.s2s.generator.impl.PHS398ResearchPlanV1_1GeneratorTest.class,
    org.kuali.kra.s2s.generator.impl.PHS398ResearchPlanV1_2GeneratorTest.class,
    org.kuali.kra.s2s.generator.impl.RRKeyPersonExpandedV1_2GeneratorTest.class,
    org.kuali.kra.s2s.generator.impl.RRPersonalDataV1_0GeneratorTest.class,
    org.kuali.kra.s2s.generator.impl.RRPersonalDataV1_1GeneratorTest.class,
    org.kuali.kra.s2s.generator.impl.RRPersonalDataV1_2GeneratorTest.class,
    org.kuali.kra.s2s.polling.S2SPollingTaskTest.class,
    org.kuali.kra.s2s.service.PrintFormTest.class,
    org.kuali.kra.irb.protocol.location.ProtocolLocationRuleTest.class,
    org.kuali.kra.irb.actions.amendrenew.ProtocolAmendRenewServiceTest.class,
    org.kuali.kra.award.home.AwardCommentTest.class,
    org.kuali.kra.award.commitments.AwardCostShareTest.class,
    org.kuali.kra.award.notesandattachments.notes.AwardNoteAddRuleTest.class,
    org.kuali.kra.institutionalproposal.rules.InstitutionalProposalNoteAddRuleTest.class,
    org.kuali.kra.irb.protocol.funding.ProtocolFundingSourceServiceTest.class,
    org.kuali.kra.s2s.generator.impl.BudgetV1_1GeneratorTest.class,
    org.kuali.kra.s2s.generator.impl.EDAbstractV1_0GeneratorTest.class,
    org.kuali.kra.s2s.generator.impl.EDAbstractV1_1GeneratorTest.class,
    org.kuali.kra.s2s.generator.impl.OtherV1_0GeneratorTest.class,
    org.kuali.kra.s2s.generator.impl.OtherV1_1GeneratorTest.class,
    org.kuali.kra.s2s.generator.impl.PHS398CoverLetterV1_0GeneratorTest.class,
    org.kuali.kra.s2s.generator.impl.PHS398CoverLetterV1_1GeneratorTest.class,
    org.kuali.kra.s2s.generator.impl.ProjectV1_0GeneratorTest.class,
    org.kuali.kra.s2s.generator.impl.ProjectV1_1GeneratorTest.class,
    org.kuali.kra.irb.auth.GenericProtocolAuthorizerTest.class,
    org.kuali.kra.irb.actions.correspondence.ProtocolActionTypeToCorrespondenceTemplateServiceTest.class,
    org.kuali.kra.irb.actions.correspondence.ProtocolActionCorrespondenceGenerationServiceTest.class,
    org.kuali.kra.questionnaire.print.QuestionnairePrintingServiceTest.class,
    org.kuali.kra.irb.actions.submit.ProtocolRouteTest.class,
    org.kuali.kra.irb.actions.print.ProtocolPrintingServiceTest.class,
    org.kuali.kra.irb.actions.decision.CommitteeDecisionRuleTest.class,
    org.kuali.kra.irb.actions.decision.CommitteeDecisionRecuserRuleTest.class,
    org.kuali.kra.irb.actions.decision.CommitteeDecisionAbstainerRuleTest.class,
    org.kuali.kra.irb.actions.decision.CommitteeDecisionServiceTest.class,
    org.kuali.kra.irb.actions.risklevel.ProtocolRiskLevelRuleTest.class,
    org.kuali.kra.committee.rules.DeleteCommitteeMemberRuleTest.class,
    org.kuali.kra.committee.rules.DeleteCommitteeScheduleRuleTest.class,
    org.kuali.kra.award.htmlunitwebtest.AwardReportsWebTest.class,
    org.kuali.kra.irb.web.ProtocolLocationWebTest.class,
    org.kuali.kra.award.htmlunitwebtest.AwardDataValidationWebTest.class,
    org.kuali.kra.award.htmlunitwebtest.AwardAttachmentsWebTest.class,
    org.kuali.kra.award.htmlunitwebtest.AwardCommentWebTest.class,
    org.kuali.kra.irb.web.ProtocolParticipantPanelWebTest.class,
    org.kuali.kra.irb.web.ProtocolStatusAndDatesWebTest.class,
    org.kuali.kra.committee.web.CommitteeMembershipWebTest.class,
    org.kuali.kra.irb.web.ProtocolFundingSourceWebTest.class,
    org.kuali.kra.irb.web.ProtocolPersonnelWebTest.class,
    org.kuali.kra.irb.web.ProtocolSpecialReviewWebTest.class,
    org.kuali.kra.irb.web.ProtocolActionsWebTest.class,
    org.kuali.kra.irb.web.ProtocolNoteAndAttachmentWebTest.class,
    org.kuali.kra.irb.correspondence.BatchCorrespondenceDetailWebTest.class,
    org.kuali.kra.proposaldevelopment.web.AbstractsPanelWebTest.class,
    org.kuali.kra.proposaldevelopment.web.CustomDataWebTest.class,
    // Data needs to be loaded with sql loader.
    org.kuali.kra.proposaldevelopment.web.KeyPersonnelWebTest.class,
    org.kuali.kra.proposaldevelopment.web.ProposalYnqWebTest.class,
    org.kuali.kra.proposaldevelopment.web.SponsorProgramInformationPanelWebTest.class
})
/** these are all the test class where all the test methods are currently passing. */
public class PassSuite {

}
