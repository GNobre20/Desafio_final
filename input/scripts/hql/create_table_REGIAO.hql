#Criação da tabela externa de Regiao#


CREATE EXTERNAL TABLE IF NOT EXISTS desafio.regiao ( 
        Region_Code string,
        Region_Name string
    )
COMMENT 'Tabela de Regiao'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ';'
STORED AS TEXTFILE
location '/datalake/raw/REGIAO/'
TBLPROPERTIES ("skip.header.line.count"="1");
