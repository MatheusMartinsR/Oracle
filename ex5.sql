create or replace procedure insert_cliente (p_codigo_cliente in meus_cliente.codigo_cliente%type,
                                            p_nome_cliente in meus_cliente.nome_cliente%type,
                                            p_cpf in meus_cliente.cpf%type,
                                            p_data_nasc in meus_cliente.data_nasc%type,
                                            p_sexo in meus_cliente.sexo%type,
                                            p_estado_civil in meus_cliente.estado_civi%type) is
begin 
insert into meus_cliente(
codigo_cliente,
nome_cliente,
cpf,
data_nasc,
sexo,
estado_civi
)values (
p_codigo_cliente,
p_nome_cliente,
p_cpf,
p_data_nasc,
p_sexo,
p_estado_civil);
commit;
end;

exec insert_cliente(111, 'Matheus', '497.555.222-30','29/08/03', 'M', 'Solteiro');
select * from meus_cliente;

create or replace procedure delete_cliente(p_codigo_cliente in meus_cliente.codigo_cliente%type) is
begin 
delete from meus_cliente where codigo_cliente = p_codigo_cliente;
commit;
end;

call delete_cliente(111);




