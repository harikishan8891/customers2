prompt --application/deployment/install/upgrade_eba_cust_type
begin
--   Manifest
--     INSTALL: UPGRADE-eba_cust_type
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
 p_id=>wwv_flow_imp.id(17000047752082160292)
,p_install_id=>wwv_flow_imp.id(17792099630550185630)
,p_name=>'eba_cust_type'
,p_sequence=>300
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tables',
'where table_name = ''EBA_CUST_TYPE'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_cust_type (',
'   id                      number       not null,',
'   row_version_number      number,',
'   type                  varchar2(60) not null,',
'   description             varchar2(4000) ,',
'   is_active               varchar2(1)  default ''Y'',',
'',
'   --',
'   created               timestamp with time zone not null,',
'   created_by            varchar2(255) not null,',
'   updated               timestamp with time zone,',
'   updated_by            varchar2(255)',
'  )',
'/',
'alter table eba_cust_type',
'   add constraint eba_cust_type_pk',
'       primary key (id)',
'/',
'create unique index eba_cust_type_uk on eba_cust_type(type)',
'/',
'alter table eba_cust_type',
'   add constraint eba_cust_type_uk',
'       unique (type)',
'       using index eba_cust_type_uk',
'/',
'',
'',
'create or replace trigger biu_eba_cust_type',
'   before insert or update on eba_cust_type',
'   for each row',
'   begin',
'      if inserting then',
'         if :NEW.ID is null then',
'            select to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'')',
'            into :new.id',
'           from dual;',
'         end if;',
'         :NEW.CREATED := current_timestamp;',
'         :NEW.CREATED_BY := nvl(v(''APP_USER''),USER);',
'         :NEW.UPDATED := current_timestamp;',
'         :NEW.UPDATED_BY := nvl(v(''APP_USER''),USER);',
'         :new.row_version_number := 1;',
'      end if;',
'',
'      if updating then',
'         :NEW.UPDATED := current_timestamp;',
'         :NEW.UPDATED_BY := nvl(v(''APP_USER''),USER);',
'         :new.row_version_number := nvl(:new.row_version_number,0) + 1;',
'      end if;',
'   end;',
'/',
'show errors',
'',
'insert into eba_cust_type (id, type, Description ) values (1,''Production / Closed'', ''Production / Closed'');',
'insert into eba_cust_type (id, type, Description ) values (2,''Evaluation / Testing'', ''Evaluation / Testing'');',
'insert into eba_cust_type (id, type, Description ) values (3,''Proof of Concept (PoC)'', ''Proof of Concept (PoC)'');',
'insert into eba_cust_type (id, type, Description ) values (4,''Planning / Prospecting'', ''Planning / Prospecting'');',
'commit;'))
);
wwv_flow_imp.component_end;
end;
/
