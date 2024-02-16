CREATE OR REPLACE EDITIONABLE TRIGGER "%USER_NAME%"."BI_EBA_CUST_ERRORS" 
    before insert or update on eba_cust_errors
    for each row
begin
    if :new.id is null then
        select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
    end if;
end;
/
