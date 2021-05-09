SELECT h.session_id     sessao_travadora
			,ub.username      usuario_travador
			,w.session_id     sessao_esperando
			,uw.username      usuario_esperando
			,w.lock_type      tipo_bloqueio
			,h.mode_held      modo_atual
			,w.mode_requested mod_requisicao
			,w.lock_id1       bloqueio_causador
			,w.lock_id2       bloqueio_aguardando
			
	FROM dba_locks w
			,dba_locks h
			,v$session ub
			,v$session uw
			
 WHERE h.blocking_others = 'Blocking'
	 AND h.mode_held      != 'None'
	 AND h.mode_held      != 'Null'
	 AND h.session_id      = ub.sid
	 AND w.mode_requested != 'None'
	 AND w.lock_type       = h.lock_type
	 AND w.lock_id1        = h.lock_id1
	 AND w.lock_id2        = h.lock_id2
	 AND w.session_id      = uw.sid;
