  CREATE TABLE "%USER_NAME%"."ESQL_594" 
   (	"ABORT_STEP" NUMBER,
	"ACCESS_METHOD" VARCHAR2(16),
	"ANCESTOR_OBJECT_NAME" VARCHAR2(128),
	"ANCESTOR_OBJECT_SCHEMA" VARCHAR2(128),
	"ANCESTOR_OBJECT_TYPE" VARCHAR2(128),
	"ANCESTOR_PROCESS_ORDER" NUMBER,
	"BASE_OBJECT_NAME" VARCHAR2(128),
	"BASE_OBJECT_SCHEMA" VARCHAR2(128),
	"BASE_OBJECT_TYPE" VARCHAR2(128),
	"BASE_PROCESS_ORDER" NUMBER,
	"BLOCK_SIZE" NUMBER,
	"CLUSTER_OK" NUMBER,
	"COMPLETED_BYTES" NUMBER,
	"COMPLETED_ROWS" NUMBER,
	"COMPLETION_TIME" DATE,
	"CONTROL_QUEUE" VARCHAR2(128),
	"CREATION_LEVEL" NUMBER,
	"CREATION_TIME" DATE,
	"CUMULATIVE_TIME" NUMBER,
	"DATA_BUFFER_SIZE" NUMBER,
	"DATA_IO" NUMBER,
	"DATAOBJ_NUM" NUMBER,
	"DB_VERSION" VARCHAR2(60),
	"DEGREE" NUMBER,
	"DOMAIN_PROCESS_ORDER" NUMBER,
	"DUMP_ALLOCATION" NUMBER,
	"DUMP_FILEID" NUMBER,
	"DUMP_LENGTH" NUMBER,
	"DUMP_ORIG_LENGTH" NUMBER,
	"DUMP_POSITION" NUMBER,
	"DUPLICATE" NUMBER,
	"ELAPSED_TIME" NUMBER,
	"ERROR_COUNT" NUMBER,
	"EXTEND_SIZE" NUMBER,
	"FILE_MAX_SIZE" NUMBER,
	"FILE_NAME" VARCHAR2(4000),
	"FILE_TYPE" NUMBER,
	"FLAGS" NUMBER,
	"GRANTOR" VARCHAR2(128),
	"GRANULES" NUMBER,
	"GUID" RAW(16),
	"IN_PROGRESS" CHAR(1),
	"INSTANCE" VARCHAR2(60),
	"INSTANCE_ID" NUMBER,
	"IS_DEFAULT" NUMBER,
	"JOB_MODE" VARCHAR2(21),
	"JOB_VERSION" VARCHAR2(60),
	"LAST_FILE" NUMBER,
	"LAST_UPDATE" DATE,
	"LOAD_METHOD" NUMBER,
	"METADATA_BUFFER_SIZE" NUMBER,
	"METADATA_IO" NUMBER,
	"NAME" VARCHAR2(128),
	"OBJECT_INT_OID" VARCHAR2(130),
	"OBJECT_LONG_NAME" VARCHAR2(4000),
	"OBJECT_NAME" VARCHAR2(200),
	"OBJECT_NUMBER" NUMBER,
	"OBJECT_PATH_SEQNO" NUMBER,
	"OBJECT_ROW" NUMBER,
	"OBJECT_SCHEMA" VARCHAR2(128),
	"OBJECT_TABLESPACE" VARCHAR2(128),
	"OBJECT_TYPE" VARCHAR2(128),
	"OBJECT_TYPE_PATH" VARCHAR2(200),
	"OLD_VALUE" VARCHAR2(4000),
	"OPERATION" VARCHAR2(8),
	"OPTION_TAG" VARCHAR2(128),
	"ORIG_BASE_OBJECT_NAME" VARCHAR2(128),
	"ORIG_BASE_OBJECT_SCHEMA" VARCHAR2(128),
	"ORIGINAL_OBJECT_NAME" VARCHAR2(1024),
	"ORIGINAL_OBJECT_SCHEMA" VARCHAR2(128),
	"PACKET_NUMBER" NUMBER,
	"PARALLELIZATION" NUMBER,
	"PARENT_OBJECT_NAME" VARCHAR2(128),
	"PARENT_OBJECT_SCHEMA" VARCHAR2(128),
	"PARENT_PROCESS_ORDER" NUMBER,
	"PARTITION_NAME" VARCHAR2(128),
	"PHASE" NUMBER,
	"PLATFORM" VARCHAR2(101),
	"PROCESS_NAME" VARCHAR2(128),
	"PROCESS_ORDER" NUMBER,
	"PROCESSING_STATE" CHAR(1),
	"PROCESSING_STATUS" CHAR(1),
	"PROPERTY" NUMBER,
	"PROXY_SCHEMA" VARCHAR2(128),
	"PROXY_VIEW" VARCHAR2(128),
	"QUEUE_TABNUM" NUMBER,
	"REMOTE_LINK" VARCHAR2(128),
	"SCN" NUMBER,
	"SEED" NUMBER,
	"SERVICE_NAME" VARCHAR2(64),
	"SIZE_ESTIMATE" NUMBER,
	"SRC_COMPAT" VARCHAR2(60),
	"START_TIME" DATE,
	"STATE" VARCHAR2(12),
	"STATUS_QUEUE" VARCHAR2(128),
	"SUBPARTITION_NAME" VARCHAR2(128),
	"TARGET_XML_CLOB" CLOB,
	"TDE_REWRAPPED_KEY" RAW(2000),
	"TEMPLATE_TABLE" VARCHAR2(128),
	"TIMEZONE" VARCHAR2(64),
	"TOTAL_BYTES" NUMBER,
	"TRIGFLAG" NUMBER,
	"UNLOAD_METHOD" NUMBER,
	"USER_DIRECTORY" VARCHAR2(4000),
	"USER_FILE_NAME" VARCHAR2(4000),
	"USER_NAME" VARCHAR2(128),
	"VALUE_N" NUMBER,
	"VALUE_T" VARCHAR2(4000),
	"VERSION" NUMBER,
	"WORK_ITEM" VARCHAR2(21),
	"XML_CLOB" CLOB
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 100 NOCOMPRESS LOGGING
  STORAGE( INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA"
  NO INMEMORY 
 LOB ("TARGET_XML_CLOB") STORE AS SECUREFILE  (
  TABLESPACE "DATA" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING NOCOMPRESS KEEP_DUPLICATES 
  STORAGE( INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT))
 LOB ("XML_CLOB") STORE AS SECUREFILE  (
  TABLESPACE "DATA" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING NOCOMPRESS KEEP_DUPLICATES 
  STORAGE( INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT))