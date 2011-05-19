set define off
set sqlblanklines on
spool KC-demo-Demo-ORACLE-Install.log
@ORACLE/KC_DEMO1_SPONSOR_FORM_TEMPLATES.sql
commit;
exit
