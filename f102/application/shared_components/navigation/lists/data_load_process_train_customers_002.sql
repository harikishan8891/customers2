prompt --application/shared_components/navigation/lists/data_load_process_train_customers_002
begin
--   Manifest
--     LIST: Data Load Process Train - customers
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.3'
,p_default_workspace_id=>20
,p_default_application_id=>7170
,p_default_id_offset=>7728180845834644
,p_default_owner=>'ORACLE'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(18131972262933550602)
,p_name=>'Data Load Process Train - customers'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp.component_end;
end;
/
