prompt --application/deployment/install/install_create_sequence
begin
--   Manifest
--     INSTALL: INSTALL-create sequence
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.3'
,p_default_workspace_id=>20
,p_default_application_id=>7170
,p_default_id_offset=>7728180845834644
,p_default_owner=>'ORACLE'
);
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(17793192014031876141)
,p_install_id=>wwv_flow_imp.id(17792099630550185630)
,p_name=>'create sequence'
,p_sequence=>40
,p_script_type=>'INSTALL'
,p_script_clob=>'create sequence eba_cust_seq;'
);
wwv_flow_imp.component_end;
end;
/
