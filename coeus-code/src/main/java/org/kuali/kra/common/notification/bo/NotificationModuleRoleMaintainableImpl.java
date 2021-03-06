/*
 * Copyright 2005-2013 The Kuali Foundation
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
package org.kuali.kra.common.notification.bo;

import org.apache.commons.lang.StringUtils;
import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.kra.maintenance.KraMaintainableImpl;
import org.kuali.rice.kns.document.MaintenanceDocument;
import org.kuali.rice.kns.maintenance.Maintainable;
import org.kuali.rice.kns.web.ui.Field;
import org.kuali.rice.kns.web.ui.Row;
import org.kuali.rice.kns.web.ui.Section;
import org.kuali.rice.krad.service.SequenceAccessorService;

import java.util.List;

/**
 * Maintainable implementation for handling the sequence for Notification Number.
 */
public class NotificationModuleRoleMaintainableImpl extends KraMaintainableImpl {

    private static final long serialVersionUID = 5816092888763757328L;
    
    private static final String NOTIFICATION_MODULE_ROLE_ID_SEQUENCE_NAME = "SEQ_NTFCTN_MODULE_ROLE_ID";
    private static final String NOTIFICATION_MODULE_ROLE_SECTION_ID = "Edit Notification Module Role";
    private static final String NOTIFICATION_MODULE_ROLE_ID_NAME = "notificationModuleRoleId";
    
    private transient SequenceAccessorService sequenceAccessorService;
    
    
    /**
     * {@inheritDoc}
     * @see org.kuali.rice.kns.maintenance.KualiMaintainableImpl#setGenerateDefaultValues(java.lang.String)
     */
    @Override
    public void setGenerateDefaultValues(String docTypeName) {
        super.setGenerateDefaultValues(docTypeName);
        
        NotificationModuleRole notificationModuleRole = (NotificationModuleRole) getBusinessObject();
        Long nextNotificationModuleRoleId = getSequenceAccessorService().getNextAvailableSequenceNumber(NOTIFICATION_MODULE_ROLE_ID_SEQUENCE_NAME, NotificationModuleRole.class);
        notificationModuleRole.setNotificationModuleRoleId(nextNotificationModuleRoleId);
    }
    
    /**
     * {@inheritDoc}
     * @see org.kuali.kra.maintenance.KraMaintainableImpl#getSections(org.kuali.rice.kns.document.MaintenanceDocument, 
     *      org.kuali.rice.kns.maintenance.Maintainable)
     */
    @SuppressWarnings("unchecked")
    public List<Section> getSections(MaintenanceDocument document, Maintainable oldMaintainable) {
        List<Section> sections = super.getSections(document, oldMaintainable);
        
        for (Section section : sections) {
            if (StringUtils.equals(section.getSectionId(), NOTIFICATION_MODULE_ROLE_SECTION_ID)) {
                for (Row row : section.getRows()) {
                    for (Field field : row.getFields()) {
                        if (StringUtils.equals(field.getPropertyName(), NOTIFICATION_MODULE_ROLE_ID_NAME)) {
                            field.setReadOnly(true);
                        }
                    }
                }
            }
        }

        return sections;
    }
    
    public SequenceAccessorService getSequenceAccessorService() {
        if (sequenceAccessorService == null) {
            sequenceAccessorService = KraServiceLocator.getService(SequenceAccessorService.class);
        }
        return sequenceAccessorService;
    }

    public void setSequenceAccessorService(SequenceAccessorService sequenceAccessorService) {
        this.sequenceAccessorService = sequenceAccessorService;
    }

}