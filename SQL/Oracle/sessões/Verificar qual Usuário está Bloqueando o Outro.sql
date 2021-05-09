SELECT h.session_id     Sessao_Travadora
			,ub.username      Usuario_Travador
			,w.session_id     Sessao_Esperando
			,uw.username      Usuario_Esperando
			,w.lock_type
			,h.mode_held
			,w.mode_requested
			,w.lock_id1
			,w.lock_id2
	FROM dba_locks w
			,dba_locks h
			,v$session ub
			,v$session uw
 WHERE h.blocking_others   = 'Blocking'
	 AND h.mode_held        != 'None'
	 AND h.mode_held        != 'Null'
	 AND h.session_id        = ub.sid
	 AND w.mode_requested   != 'None'
	 AND w.lock_type         = h.lock_type
	 AND w.lock_id1          = h.lock_id1
	 AND w.lock_id2          = h.lock_id2
	 AND w.session_id        = uw.sid;
