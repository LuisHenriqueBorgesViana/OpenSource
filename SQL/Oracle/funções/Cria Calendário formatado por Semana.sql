with x
      as (
   select *
     from (
   select to_char(trunc(SYSDATE,'mm')+level-1,'iw') wk,
          to_char(trunc(SYSDATE,'mm')+level-1,'dd') dm,
          to_number(to_char(trunc(SYSDATE,'mm')+level-1,'d')) dw,
          to_char(trunc(SYSDATE,'mm')+level-1,'mm') curr_mth,
          to_char(SYSDATE,'mm') mth
    from dual
   connect by level <= 31
         )
   where curr_mth = mth
  )
  select max(case dw when 2 then dm end) seg,
         max(case dw when 3 then dm end) ter,
         max(case dw when 4 then dm end) qua,
         max(case dw when 5 then dm end) qui,
         max(case dw when 6 then dm end) sex,
         max(case dw when 7 then dm end) sab,
         max(case dw when 1 then dm end) dom
    from x
   group by wk
   order by wk
