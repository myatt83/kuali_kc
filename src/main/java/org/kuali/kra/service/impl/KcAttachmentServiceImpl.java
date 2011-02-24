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
package org.kuali.kra.service.impl;

import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.struts.upload.FormFile;
import org.kuali.kra.bo.KcAttachment;
import org.kuali.kra.service.KcAttachmentService;
import org.kuali.rice.kns.util.ObjectUtils;

/**
 * KC Attachment Service Implementation.
 */
public class KcAttachmentServiceImpl implements KcAttachmentService {
    
    private Map<String, String> mimeTypeIcons;
    private String defaultIcon;
    private String offendingChars;
    /**
     * Currently determining the icon based only on the mime type and using the default icon
     * if a mime type is not mapped in mimeTypeIcons. The full attachment is being passed here
     * so more advanced file type detection can be implemented if necessary.
     * @see org.kuali.kra.service.KcAttachmentService#getFileTypeIcon(org.kuali.kra.bo.KcAttachment)
     */
    public String getFileTypeIcon(KcAttachment attachment) {
        String iconPath = getMimeTypeIcons().get(attachment.getType());
        if (iconPath == null) {
            return getDefaultIcon();
        } else {
            return iconPath;
        }
    }

    protected Map<String, String> getMimeTypeIcons() {
        return mimeTypeIcons;
    }

    public void setMimeTypeIcons(Map<String, String> mimeTypeIcons) {
        this.mimeTypeIcons = mimeTypeIcons;
    }

    protected String getDefaultIcon() {
        return defaultIcon;
    }

    public void setDefaultIcon(String defaultIcon) {
        this.defaultIcon = defaultIcon;
    }

    /**
     * Checking to see if attachment files have invalid characters in the file name.
     * @see org.kuali.kra.service.KcAttachmentService#isValidFileName(org.apache.struts.upload.FormFile)
     */
    public boolean isValidFileName(String fileName) {
        if (ObjectUtils.isNotNull(fileName)) {
            String regex = "(['`%~@#$!^\\s&:>\\/<+*(){}|\"\\\\,?])";
            Pattern pattern = Pattern.compile(regex);
            Matcher matcher = pattern.matcher(fileName);

            if (matcher.find()) {
                setOffendingChars(matcher.group(1));
                return false;
            }
        }
        return true;
    }
    
    protected void setOffendingChars(String offendingChars) {
        this.offendingChars = offendingChars;
    }
    
    public String getOffendingChars() {
        // TODO Auto-generated method stub
        return offendingChars; 

    }
}
