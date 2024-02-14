DEFINE workspace_id = &1
DEFINE apex_id = &2
set serveroutput on 
begin
 apex_application_install.set_workspace(q'[&workspace_id]');
apex_application_install.set_application_id(q'[&apex_id]');
 apex_application_install.set_auto_install_sup_obj(
 p_auto_install_sup_obj => true );
end;
 /

@install.sql
set ddl storage off
set ddl partitioning off
set ddl segment_attributes off
set ddl tablespace off
set ddl emit_schema off
lb update -changelog-file database/controller.xml