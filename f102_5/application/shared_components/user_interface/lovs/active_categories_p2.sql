prompt --application/shared_components/user_interface/lovs/active_categories_p2
begin
--   Manifest
--     ACTIVE_CATEGORIES_P2
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
 p_id=>wwv_flow_imp.id(17826482223874066631)
,p_lov_name=>'ACTIVE_CATEGORIES_P2'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select category d, id r',
'  from EBA_CUST_CATEGORIES',
' where is_active = ''Y''',
'    or ID = :P2_CATEGORY_ID',
' order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_imp.component_end;
end;
/
