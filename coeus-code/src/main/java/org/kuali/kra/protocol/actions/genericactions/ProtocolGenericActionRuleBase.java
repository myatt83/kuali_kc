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
package org.kuali.kra.protocol.actions.genericactions;

import org.kuali.kra.infrastructure.KeyConstants;
import org.kuali.coeus.sys.framework.rule.BusinessRuleInterface;
import org.kuali.coeus.sys.framework.rule.KcTransactionalDocumentRuleBase;

/**
 * Encapsulates the rules for performing a generic action.
 */
public abstract class ProtocolGenericActionRuleBase<E extends ProtocolGenericActionEventBase> extends KcTransactionalDocumentRuleBase implements BusinessRuleInterface<E> {
    
    private static final String ACTION_DATE_FIELD = "actionDate";
    
    /**
     * {@inheritDoc}
     * @see org.kuali.coeus.sys.framework.rule.BusinessRuleInterface#processRules(org.kuali.coeus.sys.framework.rule.KcDocumentEventBaseExtension)
     */
    public boolean processRules(E event) {
        boolean isValid = true;
        
        if (event.getProtocolGenericActionBean().getActionDate() == null) {
            isValid = false;
            reportError(ACTION_DATE_FIELD, KeyConstants.ERROR_PROTOCOL_GENERIC_ACTION_DATE_REQUIRED);  
        }
        
        return isValid;
    }

}
