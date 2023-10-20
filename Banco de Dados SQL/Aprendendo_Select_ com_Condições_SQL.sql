#Como selecionar linhas a partir de condições?
select *from cadastro_moedas;

select*from dados_cambio
order by valueCoin desc;

select*from dados_cambio
where keyCoin = 1
order by valueCoin desc;

select*from dados_cambio
where keyCoin = 1;

#Podemos fazer com tempo também
select*from descricao_tempo;

select*from descricao_tempo
where yeartime= 2000;

#podemos usar condicionais igual no Python com as cláusulas AND e OR. Bem parecido com as condicionais do Python mesmo
select*from descricao_tempo
where yearTime = 2000 and monthCompleteTime = "FEVEREIRO";

select*from descricao_tempo
where dayWeekAbbrevTime = "SEG" or dayWeekCompleteTime = "SABADO";

select*from descricao_tempo
where (dayWeekAbbrevTime = "SEG" or dayWeekCompleteTime = "SABADO") and
		(yearTime = 2000 or yearTime = 2001);


#No python podemos fazer condionais utilizando "in" com uma lista. No SQL podemos fazer o mesmo.


select*from descricao_tempo
where dayWeekAbbrevTime in ("SEG","TER");


select *from descricao_tempo
where dayWeekAbbrevTime not in ("SEG","TER");




#Trabalhando datas, podemos usar o operador "between"

select*from descricao_tempo
where yearTime between 2000 and 2003;

select*from descricao_tempo
where datetime between 2014 and 2016;

#também serve pra números ou ordem alfabética

select*from dados_cambio
where valueCoin between 2 and 4;

select*from cadastro_empresas
where nameCompany between "BRADESPAR" and "DEXXOS PAR"
order by nameCompany;


#Mas e se eu quiser puxar a lista de nome das empresas, sem duplicatas?
select distinct nameCompany from cadastro_empresas
where nameCompany between "BRADESPAR" and "DEXXOS PAR"
order by nameCompany; 


#Como pegar todas as empresas da base
select distinct nameCompany from cadastro_empresas;

#Pra finalizar, se eu quiser todas as empresas que tem S.A. no nome?
select distinct nameCompany from cadastro_empresas
where nameCompany LIKE "%S.A.%";#o % subistui nenhum ou vários caracteres

#Todas as empresas que começam com W

select distinct nameCompany from cadastro_empresas
where nameCompany like "W%";


#Todas as empresas que termina com A

select distinct nameCompany from cadastro_empresas
where nameCompany like "%A";

/*
Exercício 125:

Selecione as linhas na tabela cadastro_empresas onde o nome da empresa é "WEG"

Exercício 126:

Selecione empresas da tabela cadastro_empresas que estão presentes no SMLL ou IGNM (coluna sectorCodeCompany).

Exercício 127:

Selecione empresas da tabela cadastro_empresas que estão no SMLL e possuem final "3" no código.

Exercício 128:

Extraia a lista de todos os setores que existem na tabela cadastro_empresas (coluna sectorCompany)

Exercício 129:

Selecione as linhas entre o ano 2010 e 2014 da tabela descricao_tempo.
*/

select*from cadastro_empresas
where nameCompany = "WEG";

select*from cadastro_empresas
where sectorCodeCompany in ("SMLL","IGNM");

select distinct sectorCompany from cadastro_empresas;

select*from descricao_tempo
where yearTime between 2010 and 2014
order by yearTime desc;
