prompt --application/deployment/install/install_lookup
begin
--   Manifest
--     INSTALL: INSTALL-lookup
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
 p_id=>wwv_flow_imp.id(16659112106757815221)
,p_install_id=>wwv_flow_imp.id(17792099630550185630)
,p_name=>'lookup'
,p_sequence=>120
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_cust_error_lookup (',
'    constraint_name         varchar2(30)        not null',
'                                                constraint eba_cust_error_lookup_pk',
'                                                primary key,',
'    message                 varchar2(4000)      not null,',
'    language_code           varchar2(30)        not null',
')',
'/',
'create unique index eba_cust_error_lookup_uk on eba_cust_error_lookup (constraint_name,language_code);',
'',
'',
''))
);
wwv_flow_imp.component_end;
end;
/
