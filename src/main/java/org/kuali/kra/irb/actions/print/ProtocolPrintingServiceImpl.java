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
package org.kuali.kra.irb.actions.print;

import java.util.HashMap;

import org.kuali.kra.protocol.actions.print.ProtocolPrintHelper;
import org.kuali.kra.protocol.actions.print.ProtocolPrintType;
import org.kuali.kra.protocol.actions.print.ProtocolPrintingServiceImplBase;

/**
 * 
 * This class to implement the getProtocolPrintable.
 */
public class ProtocolPrintingServiceImpl extends ProtocolPrintingServiceImplBase implements ProtocolPrintingService {

    public enum IRBPrintTypes {
        PROTOCOL_SUMMARY_VIEW_REPORT("ProtocolSummary.xsl", "ProtocolSummary", "Protocol_Summary_Report.pdf"), 
        PROTOCOL_FULL_PROTOCOL_REPORT("ProtocolSummary.xsl","FullProtocolReport", "Full_Protocol_Report.pdf"),
        PROTOCOL_PROTOCOL_HISTORY_REPORT("ProtocolHistoryReport.xsl","ProtocolHistoryReport", "Protocol_History_Report.pdf"), 
        PROTOCOL_REVIEW_COMMENTS_REPORT("ReviewCommentsReport.xsl","ProtocolReviewComments", "Protocol_Review_Comments_Report.pdf");

        private final String template;
        private final String reportName;
        private final String fileName;

        IRBPrintTypes(String template,String reportName, String fileName) {
            this.template = template;
            this.reportName = reportName;
            this.fileName = fileName;
        }

        public String getFileName() {
            return fileName;
        }
        public String getTemplate() {
            return template;
        }
        public String getReportName() {
            return reportName;
        }
    }
    
    @Override
    protected HashMap<ProtocolPrintType, ProtocolPrintHelper> getProtocolPrintParameterHook() {
        HashMap<ProtocolPrintType, ProtocolPrintHelper> printParameter = new HashMap<ProtocolPrintType, ProtocolPrintHelper>(); 
        for (ProtocolPrintType protocolPrintType : ProtocolPrintType.values()) {
            ProtocolPrintHelper printHelper = null;
            switch(protocolPrintType) {
                case PROTOCOL_FULL_PROTOCOL_REPORT :
                    printHelper = new ProtocolPrintHelper(IRBPrintTypes.PROTOCOL_FULL_PROTOCOL_REPORT.getTemplate(),
                            IRBPrintTypes.PROTOCOL_FULL_PROTOCOL_REPORT.getReportName(), 
                            IRBPrintTypes.PROTOCOL_FULL_PROTOCOL_REPORT.getFileName());
                    break;
                case PROTOCOL_PROTOCOL_HISTORY_REPORT :
                    printHelper = new ProtocolPrintHelper(IRBPrintTypes.PROTOCOL_PROTOCOL_HISTORY_REPORT.getTemplate(),
                            IRBPrintTypes.PROTOCOL_PROTOCOL_HISTORY_REPORT.getReportName(), 
                            IRBPrintTypes.PROTOCOL_PROTOCOL_HISTORY_REPORT.getFileName());
                    break;
                case PROTOCOL_REVIEW_COMMENTS_REPORT :
                    printHelper = new ProtocolPrintHelper(IRBPrintTypes.PROTOCOL_REVIEW_COMMENTS_REPORT.getTemplate(),
                            IRBPrintTypes.PROTOCOL_REVIEW_COMMENTS_REPORT.getReportName(), 
                            IRBPrintTypes.PROTOCOL_REVIEW_COMMENTS_REPORT.getFileName());
                    break;
                case PROTOCOL_SUMMARY_VIEW_REPORT :
                    printHelper = new ProtocolPrintHelper(IRBPrintTypes.PROTOCOL_SUMMARY_VIEW_REPORT.getTemplate(),
                            IRBPrintTypes.PROTOCOL_SUMMARY_VIEW_REPORT.getReportName(), 
                            IRBPrintTypes.PROTOCOL_SUMMARY_VIEW_REPORT.getFileName());
                    break;
                default :
                    throw new IllegalArgumentException(ERROR_MESSAGE);
            }
            printParameter.put(protocolPrintType, printHelper);
        }
        return printParameter;
    }
    
 // TODO ********************** commented out during IRB backfit ************************    
//    private static final String ERROR_MESSAGE = "Unknown report type specified";
//    private ProtocolFullProtocolPrint protocolFullProtocolPrint;
//    private ProtocolHistoryPrint protocolHistoryPrint;
//    private ProtocolReviewCommentsPrint protocolReviewCommentsPrint;
//    private ProtocolSummaryViewPrint protocolSummaryViewPrint;
//
//    private String reportName;
//    /**
//     * 
//     * @see org.kuali.kra.irb.actions.print.ProtocolPrintingService#getProtocolPrintable(org.kuali.kra.irb.actions.print.ProtocolPrintType)
//     */
//    public Printable getProtocolPrintable(ProtocolPrintType reportType) {
//        Printable printable = null;
//        
//        switch(reportType) {
//            case PROTOCOL_FULL_PROTOCOL_REPORT :
//                printable = getProtocolFullProtocolPrint();
//                break;
//            case PROTOCOL_PROTOCOL_HISTORY_REPORT :
//                printable = getProtocolHistoryPrint();
//                break;
//            case PROTOCOL_REVIEW_COMMENTS_REPORT :
//                printable = getProtocolReviewCommentsPrint();
//                break;
//            case PROTOCOL_SUMMARY_VIEW_REPORT :
//                printable = getProtocolSummaryViewPrint();
//                break;
//            default :
//                throw new IllegalArgumentException(ERROR_MESSAGE);
//        }
//        return printable;
//    }
//    
//    /**
//     * 
//     * @see org.kuali.kra.irb.actions.print.ProtocolPrintingService#getProtocolPrintArtifacts(org.kuali.kra.irb.Protocol)
//     */
//     public Printable getProtocolPrintArtifacts(Protocol protocol) { 
//         
//         ProtocolPrintType printType = ProtocolPrintType.PROTOCOL_FULL_PROTOCOL_REPORT;
//         AbstractPrint printable = (AbstractPrint)getProtocolPrintable(printType);
//         printable.setPrintableBusinessObject(protocol);
//         return printable;
//     }
//        
//    public ProtocolFullProtocolPrint getProtocolFullProtocolPrint() {
//        return protocolFullProtocolPrint;
//    }
//
//    public void setProtocolFullProtocolPrint(ProtocolFullProtocolPrint protocolFullProtocolPrint) {
//        this.protocolFullProtocolPrint = protocolFullProtocolPrint;
//    }
//
//    public ProtocolHistoryPrint getProtocolHistoryPrint() {
//        return protocolHistoryPrint;
//    }
//
//    public void setProtocolHistoryPrint(ProtocolHistoryPrint protocolHistoryPrint) {
//        this.protocolHistoryPrint = protocolHistoryPrint;
//    }
//
//    public ProtocolReviewCommentsPrint getProtocolReviewCommentsPrint() {
//        return protocolReviewCommentsPrint;
//    }
//
//    public void setProtocolReviewCommentsPrint(ProtocolReviewCommentsPrint protocolReviewCommentsPrint) {
//        this.protocolReviewCommentsPrint = protocolReviewCommentsPrint;
//    }
//
//    public ProtocolSummaryViewPrint getProtocolSummaryViewPrint() {
//        return protocolSummaryViewPrint;
//    }
//
//    public void setProtocolSummaryViewPrint(ProtocolSummaryViewPrint protocolSummaryViewPrint) {
//        this.protocolSummaryViewPrint = protocolSummaryViewPrint;
//    }
//    
//    @Override
//    public String getReportName() {
//        return reportName;
//    }
//
//    /**
//     * Sets the reportName attribute value.
//     * @param reportName The reportName to set.
//     */
//    public void setReportName(String reportName) {
//        this.reportName = reportName;
//    }
//
//    public AttachmentDataSource print(String reportName, List<Printable> printableArtifactList) throws PrintingException {
//        setReportName(reportName);
//        return super.print(printableArtifactList);
//    }
    
}
