prompt --application/deployment/install/install_customer_after_delete_trigger
begin
--   Manifest
--     INSTALL: INSTALL-customer after delete trigger
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
 p_id=>wwv_flow_imp.id(4012989358382065173)
,p_install_id=>wwv_flow_imp.id(17792099630550185630)
,p_name=>'customer after delete trigger'
,p_sequence=>580
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace trigger ad_eba_cust_customers',
'    after delete on eba_cust_customers',
'    for each row',
'begin',
'    insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value)',
'    values ',
'    (''CUSTOMERS'', :old.row_key, :old.id, ''CUSTOMER_REMOVED'', substr(:old.customer_name,0,4000), null ); ',
'end ad_eba_cust_customers;',
'/',
'alter trigger ad_eba_cust_customers enable',
'/'))
);
wwv_flow_imp.component_end;
end;
/
