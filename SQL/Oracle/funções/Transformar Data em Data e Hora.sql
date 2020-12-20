 SELECT * 
	 FROM    
  WHERE v_Dt_Agenda BETWEEN TO_DATE(TO_CHAR(v_Dt_Inicial,'dd/mm/YYYY') || TO_CHAR('00:00:01') ,'dd/mm/yyyy hh24:mi:ss') 
		                    AND TO_DATE(TO_CHAR(v_Dt_Final,'dd/mm/yyyy')   || TO_CHAR('23:59:59') ,'dd/mm/yyyy hh24:mi:ss')   
