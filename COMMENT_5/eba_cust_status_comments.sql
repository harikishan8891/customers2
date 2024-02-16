
   COMMENT ON COLUMN "EBA_CUST_STATUS"."ID" IS 'Primary Key, never changes.  Automatically generated by Oracle Database';
   COMMENT ON COLUMN "EBA_CUST_STATUS"."STATUS" IS 'The unique name for the Status.';
   COMMENT ON COLUMN "EBA_CUST_STATUS"."DESCRIPTION" IS 'A brief description about the Status.';
   COMMENT ON COLUMN "EBA_CUST_STATUS"."IS_ACTIVE" IS 'Used to Enable or Disable a Customer Status from being used in the transaction.';
   COMMENT ON COLUMN "EBA_CUST_STATUS"."CREATED" IS 'The date on which the record is created, automatically updated.';
   COMMENT ON COLUMN "EBA_CUST_STATUS"."CREATED_BY" IS 'The user who created the record, automatically updated.';
   COMMENT ON COLUMN "EBA_CUST_STATUS"."UPDATED" IS 'The date on which the record is last updated, automatically updated.';
   COMMENT ON COLUMN "EBA_CUST_STATUS"."UPDATED_BY" IS 'The user who last updated the record, automatically updated.';
   COMMENT ON TABLE "EBA_CUST_STATUS"  IS 'Stores Status information.';