
BEGIN 
dbms_cloud.create_credential('DEV_CRED', username=>'harikishan8891@gmail.com', password=>'NULL', enabled=>TRUE, windows_domain=>NULL, comments=>'{comments:Created via DBMS_CLOUD.create_credential}');
COMMIT; 
END; 
/ 