ALTER TABLE "%USER_NAME%"."EBA_CUST_PRODUCT_USES" ADD CONSTRAINT "EBA_CUST_PROD_USES_CONTACT_FK" FOREIGN KEY ("CUSTOMER_CONTACT_ID")
	  REFERENCES "%USER_NAME%"."EBA_CUST_CONTACTS" ("ID") ON DELETE CASCADE ENABLE;