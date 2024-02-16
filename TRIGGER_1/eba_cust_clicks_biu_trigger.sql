CREATE OR REPLACE EDITIONABLE TRIGGER "%USER_NAME%"."EBA_CUST_CLICKS_BIU" 
    before insert on eba_cust_clicks
    for each row
begin
     if :new.id is null then
         :new.id := eba_cust_seq.nextval;
     end if;
     :new.view_timestamp := current_timestamp;
     :new.app_username := nvl(v('APP_USER'),user);
     :new.app_session := v('APP_SESSION');
end;
/
