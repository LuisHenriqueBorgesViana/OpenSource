SELECT banco_dados.owner
     , banco_dados.name nm_objeto
     , banco_dados.type tp_objeto
     , banco_dados.line nr_linha
     , banco_dados.text ds_texto
  FROM all_source banco_dados
 WHERE UPPER(banco_dados.text) LIKE UPPER('%'||'&TEXTO'||'%')
   AND banco_dados.owner = UPPER('&OWNER')
	 
 ORDER BY 
       1 ASC,
			 2 ASC
		
