SELECT  "Tempo total de CPU"
      , "Quant. exec."
			
			, "Leituras no disco"
			, "Primeira utilização"
			, "Última utilização"
			, "Usuário analisado"
			, "SQL exec."
  FROM (  
	       SELECT ROUND ( ( (cpu_time / 1000000) / 60), 2) AS "Tempo total de CPU",
                 executions AS "Quant. exec.",
                 rows_processed AS "Quant. linhas proc.",
                 disk_reads AS "Leituras no disco",
                 first_load_time AS "Primeira utilização",
                 last_load_time AS "Última utilização",
                 parsing_schema_name AS "Usuário analisado",
                 sql_text AS "SQL exec."
								 
            FROM v$sqlarea
           WHERE parsing_schema_name NOT IN ('SYS', 'SYSTEM', 'SYSMAN', 'DBSNMP')
        ORDER BY 1 DESC
			 )
 WHERE ROWNUM <= 20;

/*******************************************************************************
Como funciona a query que avalia quem está mais consumindo a CPU do DB Oracle:
 
  "Tempo total de CPU" – nesse “campo” é retornado o tempo total de CPU gasto para executar todas as vezes o script em questão. Fiz uma continha para exibir o tempo em minutos;

  "Quant. exec" – nesse “campo” é retornado a quantidade de vezes que o SQL em questão foi executado desde sua primeira vez que foi submetido;

	"Quant. linhas proc." – nesse “campo” é exibido a quantidade total de linhas processadas em todas as execuções da SQL em questão;

	"Leituras no disco" – nesse “campo” é retornado a quantidade total de leituras realizadas no disco;

	"Primeira utilização" – informa a data e hora da primeira utilização da SQL em questão, ou pelo menos a mais recente das “primeiras vezes”;

	"Última utilização" – informa a data e hora da última utilização da SQL em questão;

	"Usuário analisado " – informa qual o usuário da instância Oracle que realizou a SQL;

	"SQL exec." – informa o script SQL submetido.
 
*******************************************************************************/
