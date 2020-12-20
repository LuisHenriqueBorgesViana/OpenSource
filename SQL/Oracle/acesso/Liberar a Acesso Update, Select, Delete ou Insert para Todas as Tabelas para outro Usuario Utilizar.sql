BEGIN

 FOR c_Tabelas
  IN (
	      SELECT object_name table_name FROM all_objects WHERE object_type = 'TABLE' AND owner = 'DBAMV'
	   )
 LOOP

     EXECUTE IMMEDIATE 'GRANT ' || '&TP_ACAO_DML' || 'ON ' || c_Tabelas.table_name || ' TO ' || '&USUARIO';

  END LOOP;

END;



SELECT * FROM dba_tables WHERE owner = 'DBAMV'

SELECT object_name table_name FROM all_objects WHERE object_type = 'TABLE' AND owner = 'DBAMV'
