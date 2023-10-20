use Codigo_py;

select*from stocks;

#colocando uma coluna nova

alter table stocks
add column price_date date after symbol;

#excluindo coluna nova
alter table stocks
drop column price_date;

#mudando o tipo da coluna
alter table stocks
modify column symbol varchar(20) not null;

#mudando o nome da coluna
alter table stocks
change column symbol simbolo varchar(20) not null;

#Mudando o nome da tabela inteira
alter table stocks
rename to acoes;

describe acoes;

/*
Exercicio 118:

Altere a tabela prices e exija que a coluna close não seja nula, permita 3 casas decimais e tenha um novo nome chamado "fechamento".

Exercício 119:

Altere o nome da tabela "transactions" para "movimentacoes" 

*/

alter table prices
change column close fechamento decimal(10,3) not null;
select*from prices;

alter table transactions
rename to movimentacoes;
select*from movimentacoes;