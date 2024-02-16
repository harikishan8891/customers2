prompt --application/shared_components/security/authorizations/edit_competitors
begin
--   Manifest
--     SECURITY SCHEME: Edit Competitors
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.3'
,p_default_workspace_id=>20
,p_default_application_id=>7170
,p_default_id_offset=>7728180845834644
,p_default_owner=>'ORACLE'
);
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(1358982675546222610)
,p_name=>'Edit Competitors'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return eba_cust.get_feature_level(:APP_USER, ''EDIT_COMPETITORS'');'
,p_error_message=>'Insufficient privileges, user is not allowed to edit competitors.'
,p_caching=>'BY_USER_BY_SESSION'
);
wwv_flow_imp.component_end;
end;
/
