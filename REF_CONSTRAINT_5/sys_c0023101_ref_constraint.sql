ALTER TABLE "%USER_NAME%"."EBA_CUST_NOTES" ADD FOREIGN KEY ("CONTACT_ID")
	  REFERENCES "%USER_NAME%"."EBA_CUST_CONTACTS" ("ID") ON DELETE CASCADE ENABLE;