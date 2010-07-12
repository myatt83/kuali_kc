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
package org.kuali.kra.irb.actions.risklevel;

import java.sql.Date;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.kuali.kra.infrastructure.Constants;
import org.kuali.kra.infrastructure.KeyConstants;
import org.kuali.kra.irb.ProtocolDocument;
import org.kuali.kra.irb.test.ProtocolFactory;
import org.kuali.kra.irb.test.ProtocolRuleTestBase;
import org.kuali.rice.kns.UserSession;
import org.kuali.rice.kns.util.GlobalVariables;
import org.kuali.rice.test.data.PerSuiteUnitTestData;
import org.kuali.rice.test.data.UnitTestData;
import org.kuali.rice.test.data.UnitTestFile;

@PerSuiteUnitTestData(@UnitTestData(sqlFiles = {
        @UnitTestFile(filename = "classpath:sql/dml/load_protocol_status.sql", delimiter = ";"),
        @UnitTestFile(filename = "classpath:sql/dml/load_PROTOCOL_ORG_TYPE.sql", delimiter = ";"),
        @UnitTestFile(filename = "classpath:sql/dml/load_PROTOCOL_PERSON_ROLES.sql", delimiter = ";"),
        @UnitTestFile(filename = "classpath:sql/dml/load_protocol_type.sql", delimiter = ";")
}))
public class ProtocolRiskLevelRuleTest extends ProtocolRuleTestBase {
    
    private Date currentDate;
    
    @Before
    public void setUp() throws Exception {
        super.setUp();
        GlobalVariables.setUserSession(new UserSession("quickstart"));
        currentDate = new Date(System.currentTimeMillis());
    }
    
    @After
    public void tearDown() throws Exception {
        super.tearDown();
        GlobalVariables.clear();
    }
    
    @Test
    public void testOK() throws Exception {
        ProtocolDocument protocolDocument = ProtocolFactory.createProtocolDocument();
        
        ProtocolRiskLevel protocolRiskLevel = new ProtocolRiskLevel();
        protocolRiskLevel.setProtocol(protocolDocument.getProtocol());
        protocolRiskLevel.setRiskLevelCode("1");
        protocolRiskLevel.setDateAssigned(currentDate);
        protocolRiskLevel.setStatus("A");
        
        ProtocolRiskLevelEvent event = new ProtocolRiskLevelEvent(protocolDocument, Constants.PROTOCOL_ENTER_RISK_LEVEL_KEY, protocolRiskLevel);
        ProtocolRiskLevelRule rule = new ProtocolRiskLevelRule();
        assertTrue(rule.processRules(event));
    }
    
    @Test
    public void testAbsentRiskLevel() throws Exception {
        ProtocolDocument protocolDocument = ProtocolFactory.createProtocolDocument();
        
        ProtocolRiskLevel protocolRiskLevel = new ProtocolRiskLevel();
        protocolRiskLevel.setProtocol(protocolDocument.getProtocol());
        protocolRiskLevel.setDateAssigned(currentDate);
        protocolRiskLevel.setStatus("A");
        
        ProtocolRiskLevelEvent event = new ProtocolRiskLevelEvent(protocolDocument, Constants.PROTOCOL_ENTER_RISK_LEVEL_KEY, protocolRiskLevel);
        ProtocolRiskLevelRule rule = new ProtocolRiskLevelRule();
        assertFalse(rule.processRules(event));
        assertError(Constants.PROTOCOL_ENTER_RISK_LEVEL_KEY + ".riskLevelCode", KeyConstants.ERROR_REQUIRED);
    }
    
    @Test
    public void testAbsentDateAssigned() throws Exception {
        ProtocolDocument protocolDocument = ProtocolFactory.createProtocolDocument();
        
        ProtocolRiskLevel protocolRiskLevel = new ProtocolRiskLevel();
        protocolRiskLevel.setProtocol(protocolDocument.getProtocol());
        protocolRiskLevel.setRiskLevelCode("1");
        protocolRiskLevel.setDateAssigned(null);
        protocolRiskLevel.setStatus("A");
        
        ProtocolRiskLevelEvent event = new ProtocolRiskLevelEvent(protocolDocument, Constants.PROTOCOL_ENTER_RISK_LEVEL_KEY, protocolRiskLevel);
        ProtocolRiskLevelRule rule = new ProtocolRiskLevelRule();
        assertFalse(rule.processRules(event));
        assertError(Constants.PROTOCOL_ENTER_RISK_LEVEL_KEY + ".dateAssigned", KeyConstants.ERROR_REQUIRED);
    }
    
    @Test
    public void testAbsentStatus() throws Exception {
        ProtocolDocument protocolDocument = ProtocolFactory.createProtocolDocument();
        
        ProtocolRiskLevel protocolRiskLevel = new ProtocolRiskLevel();
        protocolRiskLevel.setProtocol(protocolDocument.getProtocol());
        protocolRiskLevel.setRiskLevelCode("1");
        protocolRiskLevel.setDateAssigned(currentDate);
        
        ProtocolRiskLevelEvent event = new ProtocolRiskLevelEvent(protocolDocument, Constants.PROTOCOL_ENTER_RISK_LEVEL_KEY, protocolRiskLevel);
        ProtocolRiskLevelRule rule = new ProtocolRiskLevelRule();
        assertFalse(rule.processRules(event));
        assertError(Constants.PROTOCOL_ENTER_RISK_LEVEL_KEY + ".status", KeyConstants.ERROR_REQUIRED);
    }
    
    @Test
    public void testDuplicateRiskLevels() throws Exception {
        ProtocolDocument protocolDocument = ProtocolFactory.createProtocolDocument();
        
        ProtocolRiskLevel protocolRiskLevel = new ProtocolRiskLevel();
        protocolRiskLevel.setProtocol(protocolDocument.getProtocol());
        protocolRiskLevel.setRiskLevelCode("1");
        protocolRiskLevel.setDateAssigned(currentDate);
        protocolRiskLevel.setStatus("A");
        protocolRiskLevel.setComments("Original");
        
        protocolDocument.getProtocol().getProtocolRiskLevels().add(protocolRiskLevel);
        
        ProtocolRiskLevel duplicateProtocolRiskLevel = new ProtocolRiskLevel();
        duplicateProtocolRiskLevel.setProtocol(protocolDocument.getProtocol());
        duplicateProtocolRiskLevel.setRiskLevelCode("1");
        duplicateProtocolRiskLevel.setDateAssigned(currentDate);
        duplicateProtocolRiskLevel.setStatus("A");
        duplicateProtocolRiskLevel.setComments("Duplicate");
        
        ProtocolRiskLevelEvent event = new ProtocolRiskLevelEvent(protocolDocument, Constants.PROTOCOL_ENTER_RISK_LEVEL_KEY, duplicateProtocolRiskLevel);
        ProtocolRiskLevelRule rule = new ProtocolRiskLevelRule();
        assertFalse(rule.processRules(event));
        assertError(Constants.PROTOCOL_ENTER_RISK_LEVEL_KEY + ".riskLevelCode", KeyConstants.ERROR_PROTOCOL_DUPLICATE_RISK_LEVEL);
    }
    
}