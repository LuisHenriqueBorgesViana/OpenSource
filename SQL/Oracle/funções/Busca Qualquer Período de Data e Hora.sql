-- Complexo com Data e Hora Concatenados
SELECT * 
  FROM DUAL  
 WHERE TO_DATE(TO_CHAR(v_Data,'dd/mm/yyyy') || ' ' || TO_CHAR(v_Hora,'hh24:mm:ss'),'dd/mm/yyyy hh24:mi:ss')
           BETWEEN TO_DATE(TO_CHAR(TRUNC(v_Data_Inicial - v_Qt_Nr_Dias)),'dd/mm/yyyy') || TO_CHAR('00:00:01'),'dd/mm/yyyy hh24:mi:ss')
               AND TO_DATE(TO_CHAR(TRUNC(v_Data_Final   + v_Qt_Nr_Dias)),'dd/mm/yyyy') || TO_CHAR('23:59:59'),'dd/mm/yyyy hh24:mi:ss')


-- Somente Data
SELECT * 
  FROM DUAL  
 WHERE TO_DATE(TO_CHAR(v_Data,'dd/mm/yyyy')
           BETWEEN TO_DATE(TO_CHAR(TRUNC(v_Data_Inicial - v_Qt_Nr_Dias)),'dd/mm/yyyy'),'dd/mm/yyyy')
               AND TO_DATE(TO_CHAR(TRUNC(v_Data_Final   + v_Qt_Nr_Dias)),'dd/mm/yyyy'),'dd/mm/yyyy')

-- Busca Somente Horas (Minutos) Futuros ou Passados (+ ou -)
SELECT * 
  FROM DUAL  
 WHERE TO_CHAR(v_Data_Hora, 'hh24:mi:ss', 'nls_date_language=''brazilian portuguese''' )
         BETWEEN TO_CHAR(v_Data_Hora_Inicial, 'hh24:mi:ss', 'nls_date_language=''brazilian portuguese''' )
             AND TO_CHAR(v_Data_Hora_Final + v_Nr_Minutos /1440, ' hh24:mi:ss', 'nls_date_language=''brazilian portuguese''' )
						  OR TO_CHAR(v_Data_Hora_Final - v_Nr_Minutos /1440, ' hh24:mi:ss', 'nls_date_language=''brazilian portuguese''' )

-- Busca do Dia atual até o Último dia do Mês (Data e Hora)
SELECT * 
  FROM DUAL  
 WHERE v_Data_Hora BETWEEN TO_DATE(TO_DATE(v_Data_Inicial,'dd/mm/yyyy') || ' ' || TO_CHAR(TO_CHAR(v_Hora_Inicial,'hh24:mi:ss')),'dd/mm/rrrr hh24:mi:ss') 
                       AND TO_DATE(LAST_DAY(TO_DATE(v_Data_Final,'dd/mm/yyyy') || ' ' || TO_CHAR(TO_CHAR(v_Hora_Final,'hh24:mi:ss')), 'dd/mm/rrrr hh24:mi:ss')    


-- Busca do Dia Primeiro até o Último dia do Mês (Data e Hora)
SELECT * 
  FROM DUAL  
 WHERE v_Data_Hora BETWEEN TO_DATE(TO_DATE('01/'||TO_CHAR(v_Data_Inicial,'mm/yyyy'),'dd/mm/yyyy') || ' ' || '00:00:01', 'dd/mm/rrrr hh24:mi:ss') 
                       AND TO_DATE(LAST_DAY(TO_DATE(v_Data_Final,'dd/mm/yyyy')) || ' ' || '23:59:59', 'dd/mm/rrrr hh24:mi:ss')  

