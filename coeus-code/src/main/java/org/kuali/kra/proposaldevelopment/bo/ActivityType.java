/*
 * Copyright 2005-2013 The Kuali Foundation
 *
 * Licensed under the Educational Community License, Version 2.0 (the License);
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
package org.kuali.kra.proposaldevelopment.bo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import org.kuali.kra.bo.KraPersistableBusinessObjectBase;

@Entity
@Table(name = "ACTIVITY_TYPE")
public class ActivityType extends KraPersistableBusinessObjectBase {

    @Id
    @Column(name = "ACTIVITY_TYPE_CODE")
    private String activityTypeCode;

    @Column(name = "DESCRIPTION")
    private String description;

    @Column(name = "HIGHER_EDUCATION_FUNCTION_CODE")
    private String higherEducationFunctionCode;

    public String getHigherEducationFunctionCode() {
        return higherEducationFunctionCode;
    }

    public void setHigherEducationFunctionCode(String higherEducationFunctionCode) {
        this.higherEducationFunctionCode = higherEducationFunctionCode;
    }

    public String getActivityTypeCode() {
        return activityTypeCode;
    }

    public void setActivityTypeCode(String activityTypeCode) {
        this.activityTypeCode = activityTypeCode;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
