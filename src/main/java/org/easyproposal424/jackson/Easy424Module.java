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
package org.easyproposal424.jackson;

import org.codehaus.jackson.Version;
import org.codehaus.jackson.map.module.SimpleModule;
import org.easyproposal424.bo.mixins.OrganizationMixin;
import org.easyproposal424.bo.mixins.SponsorMixin;
import org.easyproposal424.bo.mixins.UnitMixin;
import org.kuali.kra.bo.Organization;
import org.kuali.kra.bo.Sponsor;
import org.kuali.kra.bo.Unit;

public class Easy424Module extends SimpleModule {

    public Easy424Module() {
        super("Easy424Module", new Version(0,0,1,null));
    }
    
//    public Easy424Module(String name, Version version) {
//        super(name, version);
//    }


    @Override
    public void setupModule(SetupContext context) {
        super.setupModule(context);
        context.setMixInAnnotations(Unit.class,UnitMixin.class);
        context.setMixInAnnotations(Sponsor.class,SponsorMixin.class);
        context.setMixInAnnotations(Organization.class,OrganizationMixin.class);
    }
    
}
