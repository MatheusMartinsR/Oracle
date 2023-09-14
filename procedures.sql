set serveroutput on;


create or replace procedure procedure_fgts is 
begin 
v_valor := calcula_FGTS(5000);
dbms_output.put_line('O valor do FGTS é: ' || to_char(v_valor));
end procedure_FGTS;

exec procedure_FGTS();