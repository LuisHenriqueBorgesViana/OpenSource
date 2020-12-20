SELECT REPLACE(INITCAP(TO_CHAR(dt_atual,'MONTH','NLS_DATE_LANGUAGE=PORTUGUESE')),' ',NULL) || ' de ' || TO_CHAR(dt_atual,'yyyy') ds_competencia_atual
  FROM (SELECT SYSDATE dt_atual FROM DUAL)
