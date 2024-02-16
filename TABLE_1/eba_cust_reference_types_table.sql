  CREATE TABLE "%USER_NAME%"."EBA_CUST_REFERENCE_TYPES" 
   (	"ID" NUMBER NOT NULL ENABLE,
	"ROW_VERSION_NUMBER" NUMBER,
	"REFERENCE_TYPE" VARCHAR2(60) NOT NULL ENABLE,
	"IS_ACTIVE" VARCHAR2(1) DEFAULT 'Y',
	"CREATED" TIMESTAMP (6) WITH TIME ZONE NOT NULL ENABLE,
	"CREATED_BY" VARCHAR2(255) NOT NULL ENABLE,
	"UPDATED" TIMESTAMP (6) WITH TIME ZONE,
	"UPDATED_BY" VARCHAR2(255),
	CONSTRAINT "EBA_CUST_REFERENCE_TYPES_PK" PRIMARY KEY ("ID")
  USING INDEX
  PCTFREE 10 INITRANS 20 MAXTRANS 255 LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA"  ENABLE,
	CONSTRAINT "EBA_CUST_REFERENCE_TYPES_UK" UNIQUE ("REFERENCE_TYPE")
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