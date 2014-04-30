DELIMITER //
CREATE PROCEDURE RemoveAllTransactionalData()
BEGIN

DECLARE exit handler for sqlexception
  BEGIN
    -- ERROR
  ROLLBACK;
END;

DECLARE exit handler for sqlwarning
 BEGIN
    -- WARNING
 ROLLBACK;
END;

START TRANSACTION;

-- select * from krim_entity_t;
-- delete all entities except admin
delete from krim_entity_emp_info_t where ENTITY_AFLTN_ID in (select ENTITY_AFLTN_ID from krim_entity_afltn_t where ENTITY_ID != '1100');
delete from krim_entity_afltn_t where ENTITY_ID != '1100';
delete from krim_entity_t where ENTITY_ID != '1100';

-- select * from iacuc_protocol;
delete from iacuc_principles;
delete from iacuc_protocol_actions;
delete from iacuc_protocol_attach_protocol;
delete from iacuc_protocol_funding_source;
delete from iacuc_protocol_location;
delete from iacuc_protocol_notepad;
delete from iacuc_protocol_persons;
delete from iacuc_protocol_research_areas;
delete from iacuc_proc_person_responsible;
delete from iacuc_protocol_study_groups;
delete from iacuc_protocol_species;
delete from iacuc_protocol_study_group_dtl;
delete from iacuc_protocol_study_group_hdr;
delete from iacuc_proto_study_group_locs;
delete from comm_schedule_minutes;
delete from iacuc_protocol;

-- select * from protocol;
delete from protocol_correspondence;
delete from protocol_actions;
delete from protocol_attachment_protocol;
delete from protocol_funding_source;
delete from protocol_location;
delete from protocol_notepad;
delete from protocol_onln_rvws;
delete from protocol_attachment_personnel;
delete from protocol_persons;
delete from protocol_research_areas;
delete from comm_schedule_minutes;
delete from protocol_reviewers;
delete from protocol_exempt_number;
delete from protocol_special_review;
delete from protocol_expidited_chklst;
delete from protocol_submission;
delete from protocol_vulnerable_sub;
delete from proto_amend_renew_modules;
delete from proto_amend_renewal;
delete from protocol_risk_levels;
delete from protocol;

-- select * from negotiation;
delete from negotiation_attachment;
delete from negotiation_activity;
delete from negotiation;

-- select * from proposal;
delete from proposal_comments;
delete from proposal_ip_review_join;
delete from proposal_cost_sharing;
delete from proposal_admin_details;
delete from award_funding_proposals;
delete from proposal_special_review;
delete from proposal;

delete from eps_prop_per_credit_split;
delete from eps_prop_unit_credit_split;
delete from eps_proposal_budget_status;
delete from eps_prop_sites;
delete from eps_prop_ynq;
delete from narrative_user_rights;
delete from narrative;
delete from s2s_opportunity;
delete from s2s_opp_forms;
delete from eps_prop_special_review;
delete from awd_bgt_det_cal_amts_ext;
delete from budget_details_cal_amts;
delete from budget_rate_and_base;
delete from budget_per_det_rate_and_base;
delete from awd_budget_per_cal_amts_ext;
delete from budget_personnel_cal_amts;
delete from awd_budget_per_det_ext;
delete from budget_personnel_details;
delete from award_budget_details_ext;
delete from budget_details;
delete from budget_persons;
delete from eps_prop_person;
delete from eps_prop_science_keyword;
delete from eps_prop_abstract;
delete from eps_proposal;

delete from KRNS_DOC_HDR_T where DOC_HDR_ID IN (select DOCUMENT_NUMBER from EPS_PROPOSAL_DOCUMENT);
delete from krew_actn_itm_t where DOC_HDR_ID IN (select DOCUMENT_NUMBER from EPS_PROPOSAL_DOCUMENT);
delete from krew_doc_hdr_t where DOC_HDR_ID IN (select DOCUMENT_NUMBER from EPS_PROPOSAL_DOCUMENT);

delete from EPS_PROPOSAL_DOCUMENT;

COMMIT;

END //
DELIMITER ;

call RemoveAllTransactionalData();
