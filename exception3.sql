create or replace procedure meu_delete (p_codigo in cliente.codigo%type) is
begin 
delete from cliente where codigo_cliente = p_codigo;

commit;

end meu_delete;