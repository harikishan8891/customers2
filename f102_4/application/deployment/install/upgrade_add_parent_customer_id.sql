prompt --application/deployment/install/upgrade_add_parent_customer_id
begin
--   Manifest
--     INSTALL: UPGRADE-Add parent_customer_id
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
 p_id=>wwv_flow_imp.id(18731741558876892955)
,p_install_id=>wwv_flow_imp.id(17792099630550185630)
,p_name=>'Add parent_customer_id'
,p_sequence=>20
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select column_name',
'from user_tab_columns',
'where table_name = ''EBA_CUST_CUSTOMERS''',
'    and column_name = ''PARENT_CUSTOMER_ID'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table eba_cust_customers',
'    add ( parent_customer_id number,',
'        customer_account_number varchar2(255) )',
'/',
'alter table eba_cust_customers',
'    add constraint eba_customers_parent_fk',
'        foreign key (parent_customer_id)',
'        references eba_cust_customers (id) on delete cascade',
'/',
'create index eba_cust_customers_07 on eba_cust_customers (parent_customer_id);',
'/'))
);
wwv_flow_imp.component_end;
end;
/
