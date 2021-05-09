SELECT texto_sql.sql_id
     , texto_sql.action
     , texto_sql.sql_text
     , texto_sql.sql_fulltext
     , texto_sql.parsing_schema_name

  FROM v$sql texto_sql  

 WHERE UPPER(texto_sql.parsing_schema_name)  = UPPER('&CD_USUARIO' )
   AND UPPER(texto_sql.action)               LIKE NVL(UPPER('%&CD_MODULO%'),texto_sql.action)
   AND UPPER(texto_sql.sql_fulltext)         LIKE NVL(UPPER('%&DS_SQL%'),texto_sql.sql_fulltext)
