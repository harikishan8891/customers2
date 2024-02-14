  CREATE TABLE "%USER_NAME%"."EBA_CUST_LINKS" 
   (	"ID" NUMBER NOT NULL ENABLE,
	"ROW_VERSION_NUMBER" NUMBER,
	"CUSTOMER_ID" NUMBER NOT NULL ENABLE,
	"CONTACT_ID" NUMBER,
	"LINK" VARCHAR2(4000) NOT NULL ENABLE,
	"LINK_DESC" VARCHAR2(255),
	"LINK_TYPE" VARCHAR2(10),
	"LINK_COMMENTS" VARCHAR2(4000),
	"TAGS" VARCHAR2(4000),
	"CREATED" TIMESTAMP (6) WITH TIME ZONE NOT NULL ENABLE,
	"CREATED_BY" VARCHAR2(255) NOT NULL ENABLE,
	"UPDATED" TIMESTAMP (6) WITH TIME ZONE,
	"UPDATED_BY" VARCHAR2(255),
	CONSTRAINT "EBA_CUST_LINKS_PK" PRIMARY KEY ("ID")
  USING INDEX
  PCTFREE 10 INITRANS 20 MAXTRANS 255 LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA"  ENABLE
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 10 NOCOMPRESS LOGGING
  STORAGE( INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA"