SELECT texto_sql.sql_id
     , texto_sql.action
     , texto_sql.sql_text
     , texto_sql.sql_fulltext
     , texto_sql.parsing_schema_name

  FROM v$sql texto_sql  

 WHERE UPPER(texto_sql.sql_fulltext) LIKE NVL(UPPER('%&DS_SQL%'),texto_sql.sql_fulltext)
