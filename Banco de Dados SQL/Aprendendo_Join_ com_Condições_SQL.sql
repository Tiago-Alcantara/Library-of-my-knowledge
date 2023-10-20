#Qual a importância de chaves estrangeiras?
SELECT * FROM cadastro_moedas;

DELETE FROM cadastro_moedas WHERE keyCoin = 1;

#como juntar os dados das tabelas
select*from dados_cambio
join cadastro_moedas;

select dados_cambio.keyTime, cadastro_moedas.nameCoin, dados_cambioValueCoin from dados_cambio
join cadastro_moedas;

#podemos abreviar as tabelas
select dc.keyTime, c.nameCoin, dc.valueCoin from dados_cambio as dc
join cadastro_moedas as c;

select*from cadastro _moedas;
select*from dados_cambio;

#quando especificamos quais as chaves em cada tabela, o join vem sem repetições

select dc.keyTime, c.nameCoin, dc.valueCoin from dados_cambio as dc
inner join cadastro_moedas as c on c.keyCoin = dc.keyCoin;

#podemos colocar a clausula WHERE depois do join para apenas juntar determinadas chaves
select dc.keyTime, c.nameCoin, dc.valueCoin from dados_cambio as dc
inner join cadastro_moedas as c on c.keyCoin = dc.keyCoin
where c.keyCoin = 2; 

#agora vamos juntar tres tabelas
SELECT dt.datetime, c.nameCoin, dc.valueCoin 
FROM dados_cambio as dc
INNER JOIN cadastro_moedas as c on c.keyCoin = dc.keyCoin
INNER JOIN descricao_tempo as dt on dt.keyTime = dc.keyTime;

#puxando dados de moedas em determinados períodos
SELECT dt.datetime, c.nameCoin, dc.valueCoin 
FROM dados_cambio as dc
INNER JOIN cadastro_moedas as c on c.keyCoin = dc.keyCoin
INNER JOIN descricao_tempo as dt on dt.keyTime = dc.keyTime
WHERE c.nameCoin = "DOLAR" AND dt.datetime BETWEEN 2010 AND 2014;

SELECT * FROM dados_cambio;

INSERT INTO dados_cambio VALUES (4, 3, 1);
												
SELECT dt.datetime, c.nameCoin, dc.valueCoin FROM dados_cambio as dc
LEFT JOIN cadastro_moedas as c on c.keyCoin = dc.keyCoin
INNER JOIN descricao_tempo as dt on dt.keyTime = dc.keyTime;

#Outros tipos de Join




/*
Exercício 130:

Selecione a coluna nome, código e fechamento das tabelas cadastro_empresas e dados_fechamento, utilizando chaves e um INNER JOIN.

Exercício 131:

Selecione a coluna nome, código, datetime e fechamento das tabelas cadastro_empresas, dados_fechamento e descricao_tempo. Ordene da data mais antiga para a mais nova.

Exercício 132:

Selecione as cotações da WEGE3 entre 2018 e 2022.

*/

SELECT c.stockCodeCompany, c.nameCompany, df.closeValueStock FROM dados_fechamento as df
INNER JOIN cadastro_empresas as c on c.keyCompany = df.keyCompany;


SELECT dt.datetime, c.stockCodeCompany, c.nameCompany, df.closeValueStock FROM dados_fechamento as df
INNER JOIN cadastro_empresas as c on c.keyCompany = df.keyCompany
INNER JOIN descricao_tempo as dt on dt.keyTime = df.keyTime
ORDER BY dt.datetime;

SELECT dt.datetime, c.stockCodeCompany, c.nameCompany, df.closeValueStock FROM dados_fechamento as df
INNER JOIN cadastro_empresas as c on c.keyCompany = df.keyCompany
INNER JOIN descricao_tempo as dt on dt.keyTime = df.keyTime
WHERE c.stockCodeCompany = "WEGE3" AND dt.datetime BETWEEN 2018 AND 2022;