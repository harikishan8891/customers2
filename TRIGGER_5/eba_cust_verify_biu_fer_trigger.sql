CREATE OR REPLACE EDITIONABLE TRIGGER "%USER_NAME%"."EBA_CUST_VERIFY_BIU_FER" 
   before insert or update on eba_cust_verifications
   for each row
begin
   if :new.id is null then
     :new.id := eba_cust_seq.nextval;
   end if;
   if inserting then
       :new.created := current_timestamp;
       :new.created_by := nvl(apex_application.g_user,user);
   end if;
   if inserting or updating then
       :new.updated := current_timestamp;
       :new.updated_by := nvl(apex_application.g_user,user);
   end if;
end;
/
