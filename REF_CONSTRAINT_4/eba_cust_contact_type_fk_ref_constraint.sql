ALTER TABLE "%USER_NAME%"."EBA_CUST_CONTACTS" ADD CONSTRAINT "EBA_CUST_CONTACT_TYPE_FK" FOREIGN KEY ("CONTACT_TYPE_ID")
	  REFERENCES "%USER_NAME%"."EBA_CUST_CONTACT_TYPES" ("ID") ON DELETE CASCADE ENABLE;