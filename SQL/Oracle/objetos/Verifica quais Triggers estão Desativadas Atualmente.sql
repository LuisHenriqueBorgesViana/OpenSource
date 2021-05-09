SELECT  owner
      , table_name
      , trigger_name
      , status
  FROM all_triggers
 WHERE status       = 'DISABLED'
   AND owner        NOT IN ('SYS','MDSYS','LBACSYS','WMSYS')
   
   
