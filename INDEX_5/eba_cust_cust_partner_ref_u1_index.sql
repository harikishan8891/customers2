  CREATE UNIQUE INDEX "%USER_NAME%"."EBA_CUST_CUST_PARTNER_REF_U1" ON "%USER_NAME%"."EBA_CUST_CUST_PARTNER_REF" ("CUSTOMER_ID","PARTNER_ID")
  PCTFREE 10 INITRANS 20 MAXTRANS 255 LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" 