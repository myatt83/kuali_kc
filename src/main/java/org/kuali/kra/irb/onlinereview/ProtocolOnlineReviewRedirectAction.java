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
package org.kuali.kra.irb.onlinereview;

import org.kuali.kra.iacuc.onlinereview.IacucProtocolOnlineReviewService;
import org.kuali.kra.irb.Protocol;
import org.kuali.kra.protocol.ProtocolBase;
import org.kuali.kra.protocol.onlinereview.ProtocolOnlineReviewRedirectActionBase;
import org.kuali.kra.protocol.onlinereview.ProtocolOnlineReviewService;

public class ProtocolOnlineReviewRedirectAction extends ProtocolOnlineReviewRedirectActionBase  {

    @Override
    protected Class<? extends ProtocolBase> getProtocolClass() {
        return Protocol.class;
    }

    @Override
    protected Class<? extends ProtocolOnlineReviewService> getProtocolOnlineReviewServiceClassHook() {
        return org.kuali.kra.irb.onlinereview.ProtocolOnlineReviewService.class;
    }

    protected String getAdminRoleName() {
        return "IRB Administrator";
    }
    
 // TODO ********************** commented out during IRB backfit ************************
    
//    private static final String PROTOCOL_DOCUMENT_NUMBER="protocolDocumentNumber";
//    private static final String PROTOCOL_ONLINE_REVIEW_DOCUMENT_NUMBER="protocolOnlineReviewDocumentNumber";
//    
//    public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
//    throws Exception {
//        ActionForward forward = super.execute(mapping, form, request, response);
//        return forward;
//    }
//
//   
//    public ActionForward redirectToProtocolFromReview(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
//    throws Exception {
//        ProtocolOnlineReviewForm protocolOnlineReviewForm = (ProtocolOnlineReviewForm)form;
//        super.loadDocument(protocolOnlineReviewForm);
//        Map<String,Object> keymap = new HashMap<String,Object>();
//                if (protocolOnlineReviewForm.getProtocolOnlineReviewDocument().getProtocolOnlineReview().isActive()) {
//            keymap.put( "protocolId", protocolOnlineReviewForm.getProtocolOnlineReviewDocument().getProtocolOnlineReview().getProtocolId() );
//            Protocol protocol = (Protocol)getBusinessObjectService().findByPrimaryKey(Protocol.class, keymap );
//            if (isOnlineReviewEnabled(form, protocol)) {
//                response.sendRedirect(String.format("protocolOnlineReview.do?methodToCall=startProtocolOnlineReview&%s=%s",PROTOCOL_DOCUMENT_NUMBER,protocol.getProtocolDocument().getDocumentNumber()));
//            } else {
//                return mapping.findForward(Constants.MAPPING_PROPOSAL_DISPLAY_INACTIVE);                
//            }
//        } else {
//            return mapping.findForward(Constants.MAPPING_PROPOSAL_DISPLAY_INACTIVE);
//        }
//        return null;
//    }
//    
//    
//    private boolean isOnlineReviewEnabled(ActionForm form, Protocol protocol) { 
//        String principalId = GlobalVariables.getUserSession().getPrincipalId();
//        ProtocolSubmission submission = protocol.getProtocolSubmission();
//        boolean isUserOnlineReviewer = getProtocolOnlineReviewService().isProtocolReviewer(principalId, false, submission);
//        boolean isProtocolInStateToBeReviewed = getProtocolOnlineReviewService().isProtocolInStateToBeReviewed(protocol);
//        boolean isUserIrbAdmin = getKraAuthorizationService().hasRole(GlobalVariables.getUserSession().getPrincipalId(), "KC-UNT", "IRB Administrator"); 
//        return isProtocolInStateToBeReviewed && (isUserOnlineReviewer || isUserIrbAdmin);
//    }
//    
//    private KraAuthorizationService getKraAuthorizationService() {
//        return KraServiceLocator.getService(KraAuthorizationService.class);
//    }
//
//    private ProtocolOnlineReviewService getProtocolOnlineReviewService() {
//        return KraServiceLocator.getService(ProtocolOnlineReviewService.class);
//    }
//
//    public ActionForward startProtocolOnlineReview(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
//        throws Exception {
//        String protocolOnlineReviewDocumentNumber = request.getParameter(PROTOCOL_ONLINE_REVIEW_DOCUMENT_NUMBER);
//        ((ProtocolOnlineReviewForm) form).setDocument(getDocumentService().getByDocumentHeaderId(
//                protocolOnlineReviewDocumentNumber));
//            return mapping.findForward(Constants.MAPPING_PROPOSAL_DISPLAY_INACTIVE);
//    }
//
//
//    public ActionForward onlineReview(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {        
//        return mapping.findForward(Constants.MAPPING_BASIC);
//    }
//    
//    @Override
//    public ActionForward close(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
//            throws Exception {
//        // TODO Auto-generated method stub
//      //  return super.close(mapping, form, request, response);
//        
//        return mapping.findForward(KRADConstants.MAPPING_PORTAL);
//    }
    
}
