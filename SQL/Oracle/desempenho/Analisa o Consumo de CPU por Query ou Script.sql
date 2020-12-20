SELECT  "Tempo total de CPU"
      , "Quant. exec."
			
			, "Leituras no disco"
			, "Primeira utiliza��o"
			, "�ltima utiliza��o"
			, "Usu�rio analisado"
			, "SQL exec."
  FROM (  
	       SELECT ROUND ( ( (cpu_time / 1000000) / 60), 2) AS "Tempo total de CPU",
                 executions AS "Quant. exec.",
                 rows_processed AS "Quant. linhas proc.",
                 disk_reads AS "Leituras no disco",
                 first_load_time AS "Primeira utiliza��o",
                 last_load_time AS "�ltima utiliza��o",
                 parsing_schema_name AS "Usu�rio analisado",
                 sql_text AS "SQL exec."
								 
            FROM v$sqlarea
           WHERE parsing_schema_name NOT IN ('SYS', 'SYSTEM', 'SYSMAN', 'DBSNMP')
        ORDER BY 1 DESC
			 )
 WHERE ROWNUM <= 20;

/*******************************************************************************
Como funciona a query que avalia quem est� mais consumindo a CPU do DB Oracle:
 
  "Tempo total de CPU" � nesse �campo� � retornado o tempo total de CPU gasto para executar todas as vezes o script em quest�o. Fiz uma continha para exibir o tempo em minutos;

  "Quant. exec" � nesse �campo� � retornado a quantidade de vezes que o SQL em quest�o foi executado desde sua primeira vez que foi submetido;

	"Quant. linhas proc." � nesse �campo� � exibido a quantidade total de linhas processadas em todas as execu��es da SQL em quest�o;

	"Leituras no disco" � nesse �campo� � retornado a quantidade total de leituras realizadas no disco;

	"Primeira utiliza��o" � informa a data e hora da primeira utiliza��o da SQL em quest�o, ou pelo menos a mais recente das �primeiras vezes�;

	"�ltima utiliza��o" � informa a data e hora da �ltima utiliza��o da SQL em quest�o;

	"Usu�rio analisado " � informa qual o usu�rio da inst�ncia Oracle que realizou a SQL;

	"SQL exec." � informa o script SQL submetido.
 
*******************************************************************************/
