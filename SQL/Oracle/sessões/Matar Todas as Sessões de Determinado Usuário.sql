BEGIN

  FOR sessoes IN (SELECT sid,serial# FROM v$session WHERE schemaname = '&CD_USUARIO')
	
  LOOP
	
      EXECUTE IMMEDIATE 'alter system kill session ''' || sessoes.sid  || ',' || sessoes.serial# || ''' immediate';
			
  END LOOP;
	
END;
