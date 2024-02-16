prompt --application/shared_components/user_interface/lovs/show_customer_views_checkbox
begin
--   Manifest
--     SHOW CUSTOMER VIEWS CHECKBOX
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
 p_id=>wwv_flow_imp.id(17948219055104366288)
,p_lov_name=>'SHOW CUSTOMER VIEWS CHECKBOX'
,p_lov_query=>'.'||wwv_flow_imp.id(17948219055104366288)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(17948219464523366292)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Show Customer Views'
,p_lov_return_value=>'Y'
);
wwv_flow_imp.component_end;
end;
/
