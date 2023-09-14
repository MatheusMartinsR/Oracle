declare 
minhaexe exception;
n number := 10;
begin
for i in &i .. &n loop
dbms_output.put_line(i * i);
if i * 2 = 10 then
raise minhaexe;

end if;
end loop;

exception
when minhaexe then
raise_application_error(-20015, 'Você caiu na exceção');
end;