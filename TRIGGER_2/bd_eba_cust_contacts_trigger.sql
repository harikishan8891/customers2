CREATE OR REPLACE EDITIONABLE TRIGGER "%USER_NAME%"."BD_EBA_CUST_CONTACTS" 
    before delete on eba_cust_contacts
    for each row
begin
    eba_cust_fw.tag_sync(
        p_new_tags      => null,
        p_old_tags      => :old.tags,
        p_content_type  => 'CONTACT',
        p_content_id    => :old.id );
end;
/
