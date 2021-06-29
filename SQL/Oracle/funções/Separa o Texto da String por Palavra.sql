DECLARE

  v_Nome_Entrada   VARCHAR2(4000);

BEGIN

  SELECT REPLACE('LUIS HENRIQUE BORGES VIANA',' ','|')
    INTO v_Nome_Entrada
    FROM dual;

  FOR c_Nomes
  IN (
        SELECT regexp_substr(v_String, v_Divisor, 1, level) ds_nomes
          FROM (SELECT v_Nome_Entrada v_String, '[^|]+' v_Divisor FROM dual)
        CONNECT BY regexp_substr(v_String, v_Divisor, 1, LEVEL) IS NOT NULL
     )
  LOOP

		DBMS_OUTPUT.PUT_LINE(c_Nomes.ds_nomes);

  END LOOP;

END;
