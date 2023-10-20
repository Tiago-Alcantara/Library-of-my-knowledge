use mercado_br;


#aprender a fazer consultas
select*from cadastro_empresas;
select*from dados_fechamento;
select*from descricao_tempo;

#consulta com ordenação 
select*from cadastro_empresas
order by stockCodeCompany desc;

select*from descricao_tempo
order by datetime desc;

#selecionando colunas específicas
select stockCodeCompany,segmentCompany
from cadastro_empresas;



/*
Exercicio 122:

Selecione todos os dados da tabela dados_cambio.

Exercício 123:

Selecione as colunas de abreviação e nome da moeda na tabela cadastro_moedas.

Exercício 124:

Selecione a tabela dados_cambio ordenando a coluna valueCoin de maneira decrescente. 


*/


select*from dados_cambio;

select abbrevCoin,nameCoin from cadastro_moedas;

select*from dados_cambio
order by ValueCoin desc;

