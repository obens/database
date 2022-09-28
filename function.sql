-- Número1
--

/*CREATE or REPLACE FUNCTION funcao_increment(a int)
RETURNS int
AS
$$
DECLARE

BEGIN

    RETURN a  +1;


END;


$$ 
LANGUAGE plpgsql;
select * from funcao_increment(50);*/


-- Crie uma função capaz de retornar um texto passado por argumento;

CREATE or REPLACE FUNCTION funcao_texte(pessoa varchar)
 RETURNS varchar
 AS
 $$
DECLARE

BEGIN
    RETURN pessoa;
END;
$$

 LANGUAGE plpgsql;
select * from funcao_texte('I am Haitian, but now living in Brazil');

-- num 03 3- Crie uma tabela com a assinatura “usuario (id int, nome varchar(50))”. Após inserir 5 tuplas, faça uma função capaz de retornar os nomes com id maiores que a média;
create table usuario(id int, nome varchar)(
insert into usuario values (1 , paolo),
insert into usuario values (5 , paolo),
insert into usuario values (3 , paolo),
insert into usuario values (2 , paolo),
insert into usuario values (4 , paolo)
);
CREATE FUNCTION funcao_usuario(id  ,nome varchar)
RETURNS TABLE  (tep varchar(50))
AS
$$
BEGIN
    RETURN QUERY SELECT nome  FROM usuario where id> ( select avg(a.id) from usuario a);
                
END;
$$ 

LANGUAGE plpgsql;

