use Codigo_py;

#Estrutura da Query
#insert into nome_da_tabela(column1,column2,column3) values(value1,value2,value3);

insert into stocks (symbol,name,sector,price,volume) values ('AAPL','Apple Inc.','Tecnologia',102.34,123456);

#para inserir várias informações ao mesmo tempo, podemos fazer assim:
insert into stocks (symbol,name,sector,price,volume) values ('AAPL','Apple Inc.','Tecnologia',102.34,123456),
															('GOOG','Google LLC','Tecnologia',12345.34,9876),
                                                            ('FB','Facebook Inc.','Tecnologia',90.12,654321);

#isso dificilmente vai ser usado, só pra dados específicos mesmo. No dia a dia você irá jogar dados do Python direto pro MySQL com o Pandas.

#também é possível inserir apenas partes das informações
insert into stocks (symbol,price) values ('PETR4',20.21);

#o formato de data do MySQL é "ano-mes-dia"!
insert into transactions (id, date, type, symbol, shares, price, customer_id) VALUES (1, '2022-12-05', 'compra', 'AAPL', 10, 102.34, 123);

insert into transactions (id, date, type, symbol, shares, price, customer_id) VALUES (2, '2022-12-05', 'venda', 'AAPL', 10, 102.34, 123);

/*
Exercicio 117:

Popule com dois exemplos de dados a tabela prices criada no exercício 116. Preencha todas as colunas com dados.

*/

insert into prices (date, symbol, open, high, low, close) values ('2022-12-05', 'WEGE3', 30.45, 33.30, 30.00, 30.55), 
																	('2022-12-05', 'PETR4', 20.30, 21.54, 20.15, 20.24);