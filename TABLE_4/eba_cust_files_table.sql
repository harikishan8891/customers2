  CREATE TABLE "%USER_NAME%"."EBA_CUST_FILES" 
   (	"ID" NUMBER NOT NULL ENABLE,
	"ROW_VERSION_NUMBER" NUMBER NOT NULL ENABLE,
	"CUSTOMER_ID" NUMBER NOT NULL ENABLE,
	"FILE_NAME" VARCHAR2(512),
	"FILE_MIMETYPE" VARCHAR2(512),
	"FILE_CHARSET" VARCHAR2(512),
	"FILE_LASTUPD" DATE,
	"FILE_BLOB" BLOB,
	"FILE_COMMENTS" VARCHAR2(4000),
	"TAGS" VARCHAR2(4000),
	"CREATED" TIMESTAMP (6) WITH TIME ZONE NOT NULL ENABLE,
	"CREATED_BY" VARCHAR2(255) NOT NULL ENABLE,
	"UPDATED" TIMESTAMP (6) WITH TIME ZONE,
	"UPDATED_BY" VARCHAR2(255),
	CONSTRAINT "EBA_CUST_FILES_PK" PRIMARY KEY ("ID")
  USING INDEX
  PCTFREE 10 INITRANS 20 MAXTRANS 255 LOGGING
  TABLESPACE "DATA"  ENABLE
   ) SEGMENT CREATION DEFERRED
  PCTFREE 10 PCTUSED 40 INITRANS 10 NOCOMPRESS LOGGING
  TABLESPACE "DATA"
 LOB ("FILE_BLOB") STORE AS SECUREFILE  (
  TABLESPACE "DATA" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING NOCOMPRESS KEEP_DUPLICATES )