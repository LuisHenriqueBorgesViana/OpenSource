SELECT -- Primeiro Nome
       SUBSTR('LUIS HENRIQUE BORGES VIANA', 1, INSTR(UPPER('LUIS HENRIQUE BORGES VIANA'), ' ')) 
       || 
			 -- �ltimo Nome
       REVERSE(TRIM(SUBSTR(REVERSE('LUIS HENRIQUE BORGES VIANA'), 1, INSTR(UPPER(REVERSE('LUIS HENRIQUE BORGES VIANA')), ' ')))) ds_nome_sobrenome
			 
  FROM DUAL 
