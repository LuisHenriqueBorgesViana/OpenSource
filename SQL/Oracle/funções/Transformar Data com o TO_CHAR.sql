SELECT 'NLS_DATE_LANGUAGE=PORTUGUESE' ds_formato_padrao_pt_br -- TO_CHAR(dh_atual,'MONTH',NLS_DATE_LANGUAGE=PORTUGUESE') Exemplo do nome do mês em Pt-Br 
       
      -- DIA

    
		  -- MÊS
	   , TO_CHAR(dh_atual,'MM') nr_mes            -- Mês (01-12; JAN = 01)
		 , TO_CHAR(dh_atual,'MON') nm_mes_abrev     -- Nome abreviado do mês.
		 , TO_CHAR(dh_atual,'MONTH') nm_mes         -- Nome do mês, preenchido com espaços em branco para 9 caracteres.
		 , TO_CHAR(dh_atual,'RM') nr_mes_romano     -- Número do mês em romano (I-XII; JAN = I)
		 
		 -- ANO
		 , TO_CHAR(dh_atual,'Q') nr_trimestre_ano   -- Trimestre do ano (1, 2, 3, 4; JAN-MAR = 1)
		 , TO_CHAR(dh_atual,'IYYY') nr_ano_iso      -- Ano de 4 dígitos com base no padrão ISO
     , TO_CHAR(dh_atual,'IYY') nr_ano_tres_iso  -- Últimos 3 dígitos do ano no padrão ISO
     , TO_CHAR(dh_atual,'IY') nr_ano_dois_iso   -- Últimos 2 dígitos do ano no padrão ISO
     , TO_CHAR(dh_atual,'I') nr_ano_dois_iso    -- Último dígito do ano no padrão ISO
		 , TO_CHAR(dh_atual,'YEAR') nm_ano          -- Ano, explicitado Em inglês
		 , TO_CHAR(dh_atual,'YYYY') nr_ano          -- Número do Ano completo
		 , TO_CHAR(dh_atual,'YYY') nr_ano_tres      -- Últimos 3 dígitos do ano
		 , TO_CHAR(dh_atual,'YY') nr_ano_dois       -- Últimos 2 dígitos do ano
		 , TO_CHAR(dh_atual,'Y') nr_ano_um          -- Último dígito do ano
			
			-- SEMANA
     , TO_CHAR(dh_atual,'WW') nr_semana_ano     -- Semana do ano (1-53), onde a primeira semana começa no primeiro dia do ano e continua até o sétimo dia do ano.
     , TO_CHAR(dh_atual,'IW') nr_semana_ano_iso -- Semana do ano (1-52 ou 1-53) com base no padrão ISO.
		 , TO_CHAR(dh_atual,'W') nr_semana_mes      -- Semana do mês (1-5), onde a semana 1 começa no primeiro dia do mês e termina no sétimo

       -- HORA
     , TO_CHAR(dh_atual,'HH12') hr_am_pm        -- Hora do dia (1-12) (AM e PM)
     , TO_CHAR(dh_atual,'HH24') hr_atual        -- Hora do dia (0-23) (24 HORAS)

  FROM (SELECT SYSDATE dh_atual FROM DUAL) data_hora_atual
