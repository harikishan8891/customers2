CREATE OR REPLACE EDITIONABLE TRIGGER "%USER_NAME%"."BIU_EBA_CUST_CONTACTS" 
   before insert or update on eba_cust_contacts
   for each row
   begin
      if :new.tags is not null then
            :new.tags := eba_cust_fw.tags_cleaner(:new.tags);
      end if;
      if inserting then
         if :NEW.ID is null then
           select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
           into :new.id
           from dual;
         end if;
         :NEW.CREATED := current_timestamp;
         :NEW.CREATED_BY := nvl(v('APP_USER'),USER);
         :NEW.UPDATED := current_timestamp;
         :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
         :new.row_version_number := 1;
        eba_cust_fw.tag_sync(
            p_new_tags      => :new.tags,
            p_old_tags      => null,
            p_content_type  => 'CONTACT',
            p_content_id    => :new.id );
      end if;
      if updating then
         :NEW.UPDATED := current_timestamp;
         :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
         :new.row_version_number := nvl(:new.row_version_number,0) + 1;
        eba_cust_fw.tag_sync(
            p_new_tags      => :new.tags,
            p_old_tags      => :old.tags,
            p_content_type  => 'CONTACT',
            p_content_id    => :new.id );
      end if;
   end;
/
