set sqlblanklines on
set define off
spool KC-Release-3_0-Clean-Server-Oracle-Install.log
@krrelease/datasql/KC_KREN_CHNL_T.sql
@krrelease/datasql/KC_KRIM_ATTR_DEFN_T.sql
@krrelease/datasql/KC_KRIM_GRP_T.sql
@krrelease/datasql/KC_KRIM_PERM_T.sql
@krrelease/datasql/KC_KRIM_PERM_TMPL_T.sql
@krrelease/datasql/KC_KRIM_ROLE_T.sql
@krrelease/datasql/KC_KRIM_RSP_ATTR_DATA_T.sql
@krrelease/datasql/KC_KRIM_RSP_T.sql
@krrelease/datasql/KC_KRIM_TYP_T.sql
@krrelease/datasql/KC_KRNS_NMSPC_T.sql
@krrelease/datasql/KC_KRNS_PARM_DTL_TYP_T.sql
@krrelease/datasql/KC_KRNS_PARM_T.sql
@krrelease/datasql/KC_KRIM_PERM_ATTR_DATA_T.sql
@krrelease/datasql/KC_KRIM_ROLE_PERM_T.sql
@krrelease/datasql/KC_KRIM_ROLE_RSP_ACTN_T.sql
@krrelease/datasql/KC_KRIM_ROLE_RSP_T.sql
@krrelease/datasql/KC_KRIM_TYP_ATTR_T.sql
quit
