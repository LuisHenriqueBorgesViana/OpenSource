SELECT s.username
			,o.owner
			,o.object_name
			,s.sid
			,s.serial#
			,s.inst_id
			,p.spid
			,s.program
			,s.machine
			,s.osuser
			,s.port
			,s.logon_time
			,sq.sql_text
			,sq.sql_fulltext
			,'alter system kill session ''' || s.sid || ',' || s.serial# || ',@' || s.inst_id || ''' immediate;' cmd
			
	FROM gv$locked_object l
			,dba_objects      o
			,gv$session       s
			,gv$process       p
			,gv$sql           sq
			
 WHERE o.object_id   = l.object_id
	 AND s.sid         = l.session_id
	 AND s.inst_id     = l.inst_id
	 AND p.addr        = s.paddr
	 AND sq.address(+) = s.sql_address
	 
 ORDER BY 
       s.username
		  ,s.inst_id
			,s.sid
		  ,s.serial#
			,o.object_name;
