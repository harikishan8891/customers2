prompt --application/shared_components/logic/application_processes/timezone
begin
--   Manifest
--     APPLICATION PROCESS: timezone
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.3'
,p_default_workspace_id=>20
,p_default_application_id=>7170
,p_default_id_offset=>7728180845834644
,p_default_owner=>'ORACLE'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(16609875003990262046)
,p_process_sequence=>3
,p_process_point=>'AFTER_LOGIN'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'timezone'
,p_process_sql_clob=>'eba_cust_tz_init;'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to set time zone.'
,p_version_scn=>37166093824741
);
wwv_flow_imp.component_end;
end;
/
