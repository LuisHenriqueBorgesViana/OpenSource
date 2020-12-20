SELECT 'NLS_DATE_LANGUAGE=PORTUGUESE' ds_formato_padrao_pt_br -- TO_CHAR(dh_atual,'MONTH',NLS_DATE_LANGUAGE=PORTUGUESE') Exemplo do nome do m�s em Pt-Br 
       
      -- DIA

    
		  -- M�S
	   , TO_CHAR(dh_atual,'MM') nr_mes            -- M�s (01-12; JAN = 01)
		 , TO_CHAR(dh_atual,'MON') nm_mes_abrev     -- Nome abreviado do m�s.
		 , TO_CHAR(dh_atual,'MONTH') nm_mes         -- Nome do m�s, preenchido com espa�os em branco para 9 caracteres.
		 , TO_CHAR(dh_atual,'RM') nr_mes_romano     -- N�mero do m�s em romano (I-XII; JAN = I)
		 
		 -- ANO
		 , TO_CHAR(dh_atual,'Q') nr_trimestre_ano   -- Trimestre do ano (1, 2, 3, 4; JAN-MAR = 1)
		 , TO_CHAR(dh_atual,'IYYY') nr_ano_iso      -- Ano de 4 d�gitos com base no padr�o ISO
     , TO_CHAR(dh_atual,'IYY') nr_ano_tres_iso  -- �ltimos 3 d�gitos do ano no padr�o ISO
     , TO_CHAR(dh_atual,'IY') nr_ano_dois_iso   -- �ltimos 2 d�gitos do ano no padr�o ISO
     , TO_CHAR(dh_atual,'I') nr_ano_dois_iso    -- �ltimo d�gito do ano no padr�o ISO
		 , TO_CHAR(dh_atual,'YEAR') nm_ano          -- Ano, explicitado Em ingl�s
		 , TO_CHAR(dh_atual,'YYYY') nr_ano          -- N�mero do Ano completo
		 , TO_CHAR(dh_atual,'YYY') nr_ano_tres      -- �ltimos 3 d�gitos do ano
		 , TO_CHAR(dh_atual,'YY') nr_ano_dois       -- �ltimos 2 d�gitos do ano
		 , TO_CHAR(dh_atual,'Y') nr_ano_um          -- �ltimo d�gito do ano
			
			-- SEMANA
     , TO_CHAR(dh_atual,'WW') nr_semana_ano     -- Semana do ano (1-53), onde a primeira semana come�a no primeiro dia do ano e continua at� o s�timo dia do ano.
     , TO_CHAR(dh_atual,'IW') nr_semana_ano_iso -- Semana do ano (1-52 ou 1-53) com base no padr�o ISO.
		 , TO_CHAR(dh_atual,'W') nr_semana_mes      -- Semana do m�s (1-5), onde a semana 1 come�a no primeiro dia do m�s e termina no s�timo

       -- HORA
     , TO_CHAR(dh_atual,'HH12') hr_am_pm        -- Hora do dia (1-12) (AM e PM)
     , TO_CHAR(dh_atual,'HH24') hr_atual        -- Hora do dia (0-23) (24 HORAS)

  FROM (SELECT SYSDATE dh_atual FROM DUAL) data_hora_atual
