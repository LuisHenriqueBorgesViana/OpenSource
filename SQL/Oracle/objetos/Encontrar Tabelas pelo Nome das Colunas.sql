SELECT coluna_tabela.table_name nm_tabela
     , coluna_tabela.column_name nm_coluna
		 , coluna_tabela.data_type tp_dado
		 , coluna_tabela.histogram ds_utilizacao
		 , tabela.num_rows nr_linha
		 , tabela.status ds_situacao
		 , tabela.tablespace_name ds_table_space
			 
	FROM all_tab_columns            coluna_tabela
	JOIN all_tables                 tabela        ON tabela.table_name = coluna_tabela.table_name  
	
       -- Irá ser retornado somente os objetos que o usuário logado tem acesso (Executar a Query como DBA).
 WHERE coluna_tabela.column_name  LIKE UPPER('%'||'&NM_COLUNA'||'%')
   AND coluna_tabela.owner        = UPPER('&NM_ONWER')
	
 ORDER BY 
       1 ASC,
			 2 ASC

 
