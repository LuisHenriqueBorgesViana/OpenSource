-- Sem Agrupamento (Simples com Condição)
SELECT SUM(CASE WHEN tp_situacao = 1 THEN 1 ELSE 0 END) qtd_por_situacao
     , SUM(CASE WHEN tp_situacao = 1 THEN tp_situacao ELSE 0 END) vlr_por_situacao
  FROM (
         SELECT 1 tp_situacao  
           FROM DUAL 
          
          UNION 
          
         SELECT 2 tp_situacao  
           FROM DUAL 
       );

-- Agrupado (Por Tipo de Dado)
SELECT tp_situacao
     , SUM(CASE WHEN tp_situacao = 1 THEN 1 ELSE 0 END) qtd_por_situacao
     , SUM(CASE WHEN tp_situacao = 1 THEN tp_situacao ELSE 0 END) vlr_por_situacao
  FROM (
	       SELECT 1 tp_situacao  
				   FROM DUAL 
					
				  UNION 
					
				 SELECT 2 tp_situacao  
				   FROM DUAL 
			 ) 
 GROUP BY tp_situaca;
