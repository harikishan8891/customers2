prompt --application/deployment/install/install_preferences
begin
--   Manifest
--     INSTALL: INSTALL-preferences
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
 p_id=>wwv_flow_imp.id(16659112282646817687)
,p_install_id=>wwv_flow_imp.id(17792099630550185630)
,p_name=>'preferences'
,p_sequence=>130
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_cust_preferences (',
'    id                      number              not null',
'                                                constraint eba_cust_preferences_pk',
'                                                primary key,',
'    preference_name         varchar2(255)       not null',
'                                                constraint eba_cust_prefs_prefname_ck',
'                                                check (upper(preference_name)=preference_name),',
'    preference_value        varchar2(255),',
'    created_by              varchar2(255)       not null,',
'    created_on              timestamp with time zone,',
'    updated_by              varchar2(255),',
'    updated_on              timestamp with time zone )',
'/',
'create unique index eba_cust_preferences_uk on eba_cust_preferences (preference_name)',
'/',
'',
'',
''))
);
wwv_flow_imp.component_end;
end;
/
