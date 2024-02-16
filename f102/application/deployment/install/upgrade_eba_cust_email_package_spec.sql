prompt --application/deployment/install/upgrade_eba_cust_email_package_spec
begin
--   Manifest
--     INSTALL: UPGRADE-eba_cust_email package spec
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
 p_id=>wwv_flow_imp.id(18733763739348430624)
,p_install_id=>wwv_flow_imp.id(17792099630550185630)
,p_name=>'eba_cust_email package spec'
,p_sequence=>400
,p_script_type=>'UPGRADE'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace package eba_cust_email as',
'',
'    procedure send_feedback_email',
'    (',
'        p_app_id        in number,',
'        p_page_id       in number,',
'        p_submitter     in varchar2,',
'        p_feedback_type in varchar2,',
'        p_feedback      in varchar2',
'    );',
'',
'end eba_cust_email;',
'/',
'show errors'))
);
wwv_flow_imp.component_end;
end;
/
