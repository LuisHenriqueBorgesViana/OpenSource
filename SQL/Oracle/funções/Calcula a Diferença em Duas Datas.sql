-- Em minutos
SELECT TO_NUMBER(TRUNC(ROUND(ABS(v_Data_Hora_Inicial - v_Data_Hora_Final)*1440))) nr_diferenca_minutos
  FROM DUAL;
	 
-- Em Horas e Minutos (23:59)
SELECT (
				LPAD(TRUNC(MOD(TRUNC(ABS(v_Data_Hora_Inicial - v_Data_Hora_Final)*24),24)),2,'0')    || ':' || 
				LPAD(TRUNC(MOD(TRUNC(ABS(v_Data_Hora_Inicial - v_Data_Hora_Final)*24*60),60)),2,'0') ||''
			 ) hr_min_diferenca
			 
	FROM DUAL;
