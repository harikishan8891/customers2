prompt --application/shared_components/user_interface/lovs/logo_sizes
begin
--   Manifest
--     LOGO SIZES
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
 p_id=>wwv_flow_imp.id(15042620477601246251)
,p_lov_name=>'LOGO SIZES'
,p_lov_query=>'.'||wwv_flow_imp.id(15042620477601246251)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15042620773795246253)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Small'
,p_lov_return_value=>'S'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15042621176523246254)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Medium'
,p_lov_return_value=>'M'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15042621621983246255)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Large'
,p_lov_return_value=>'L'
);
wwv_flow_imp.component_end;
end;
/
