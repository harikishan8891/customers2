prompt --application/shared_components/user_interface/lovs/data_load_tab_status
begin
--   Manifest
--     DATA_LOAD_TAB_STATUS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.3'
,p_default_workspace_id=>20
,p_default_application_id=>7170
,p_default_id_offset=>7728180845834644
,p_default_owner=>'ORACLE'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(17801950198794185101)
,p_lov_name=>'DATA_LOAD_TAB_STATUS'
,p_lov_query=>'.'||wwv_flow_imp.id(17801950198794185101)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(17801950407976185108)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Enable'
,p_lov_return_value=>'ENABLE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(17801950594226185114)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Disable'
,p_lov_return_value=>'DISABLE'
);
wwv_flow_imp.component_end;
end;
/
