DELIMITER /
--
-- Copyright 2005-2013 The Kuali Foundation
--
-- Licensed under the Educational Community License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
-- http://www.opensource.org/licenses/ecl2.php
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--

ALTER TABLE KREW_DOC_TYP_T CHANGE DOC_TYP_ID DOC_TYP_ID VARCHAR(40)
/
ALTER TABLE KREW_DOC_TYP_T CHANGE PARNT_ID PARNT_ID VARCHAR(40)
/
ALTER TABLE KREW_DOC_TYP_T CHANGE PREV_DOC_TYP_VER_NBR PREV_DOC_TYP_VER_NBR VARCHAR(40)
/
ALTER TABLE KREW_DOC_HDR_T CHANGE DOC_TYP_ID DOC_TYP_ID VARCHAR(40)
/
ALTER TABLE KREW_DOC_TYP_PLCY_RELN_T CHANGE DOC_TYP_ID DOC_TYP_ID VARCHAR(40)
/
ALTER TABLE KREW_DOC_TYP_APP_DOC_STAT_T CHANGE DOC_TYP_ID DOC_TYP_ID VARCHAR(40)
/
ALTER TABLE KREW_DOC_TYP_ATTR_T CHANGE DOC_TYP_ID DOC_TYP_ID VARCHAR(40)
/
ALTER TABLE KREW_RTE_NODE_T CHANGE DOC_TYP_ID DOC_TYP_ID VARCHAR(40)
/
ALTER TABLE KREW_DOC_TYP_PROC_T CHANGE DOC_TYP_ID DOC_TYP_ID VARCHAR(40)
/

DELIMITER ;
