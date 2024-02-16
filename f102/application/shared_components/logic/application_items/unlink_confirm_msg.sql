prompt --application/shared_components/logic/application_items/unlink_confirm_msg
begin
--   Manifest
--     APPLICATION ITEM: UNLINK_CONFIRM_MSG
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.3'
,p_default_workspace_id=>20
,p_default_application_id=>7170
,p_default_id_offset=>7728180845834644
,p_default_owner=>'ORACLE'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(17833527060990440611)
,p_name=>'UNLINK_CONFIRM_MSG'
,p_protection_level=>'S'
,p_escape_on_http_output=>'N'
,p_version_scn=>37166093824741
);
wwv_flow_imp.component_end;
end;
/
