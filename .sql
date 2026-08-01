SELECT * FROM tabelafornecedores WHERE pa_s_de_origem = 'China'

-- O SELECT serve para selecionar algo de um banco de dados -----> Neste caso o * está selecionando tudo, todas as informações
-- O FROM serve para selecionar a tabela que você deseja buscar as informações
-- O WHERE  serve para filtrar as linhas da tabela 
-- Tudo isso que  falei é sobre o codigo acima! 

SELECT DISTINCT cliente FROM tabelapedidos;

-- O DISTINCT que utilizei logo acima serve para você selecionar uma informação, como o nome diz, distinta.  ----> Assim, vindo logo após o SELECT

CREATE TABLE tabelaclientes (
 ID_Cliente INT PRIMARY KEY,
 Nome_cliente VARCHAR (250),
 Informaçõe_de_Contato VARCHAR (250)
 );

SELECT*from tabelaclientes

-- Aqui, temos o CREATE TABLE que serve para criar uma tabela nova como o nome já diz! assim escolhemos o nome dela e abrimos parenteses para passar as informações para ela
-- INT significa que vai ser um numero inteiro 
-- O VARCHAR serve para delimitar a quantidade de digitos 

1 - Texto (String):

--CHAR: Armazena strings de tamanho fixo. Usado quando os valores têm um comprimento constante.
--VARCHAR: Armazena strings de tamanho variável. Apropriado para valores com comprimentos variáveis.
--TEXTO (TEXT): Armazena strings muito longas, como documentos ou descrições.
2 - Numérico:

--INTEGER (INT): Armazena números inteiros.
--FLOAT: Armazena números de ponto flutuante, geralmente usados para valores com casas decimais.
--NUMERIC (DECIMAL): Armazena números com uma precisão específica, geralmente usados em aplicações financeiras.
3 - Data e Hora:

--DATE: Armazena datas sem informações de horário.
--TIME: Armazena informações de horário.
--TIMESTAMP: Combina data e horário em um único tipo.
4 - Booleano:
  
--BOOLEAN (BOOL): Armazena valores verdadeiros ou falsos.
5 - Binário:

--BLOB (Binary Large Object): Armazena dados binários, como imagens, vídeos ou arquivos.
--BIT: Armazena valores binários, como 0 ou 1.


Para criar um banco de dados usamos:
CREATE DATABASE "nome que deseja dar para o seu banco de dados";

Para criar um esquema no banco de dados
CREATE SCHEMA "nome do seu esquema"


SELECT*from tabelaclientes


ALTER TABLE tabelaclientes ADD Edereço_cliente VARCHAR (250)

-- O ALTER TABLE serve para mudar ou alterar uma tabela
 
DROP TABLE tabelaclientes

-- O DROP TABLE serve para a gente excluir uma tabela no SQL

Por exemplo, para adicionar uma coluna chamada "Idade" à tabela "Estudantes", você usaria:

ALTER TABLE Estudantes
ADD Idade INT;


Falando sobre PRIMARY KEY ---

-- A chave primária é um dado que serve como identificador único para cada linha em uma tabela, não podendo ter valores repetidos. Ela garante que cada registro seja exclusivo, como o ID_Cliente ou um número de documento.


INSERT INTO tabelaclientes
( id_cliente,
 nome_cliente,
 informaçõe_de_contato,
 endereço_cliente)
 
 -- Mesma ordem de valor - caluna! Mesma sequencia que o insert --> values
 VALUES
 ('1', 'Ana Silva', 'ana.silva@gmail.com','rua flores- casa 1');

-- O INSERT INTO serve para vc inserir informações em cada uma das linhas e colunas respectivas
-- O INTO serve para acompanhar o INSERT, usado aqui para mostrar onde tem que inserir os dados
-- O VALUES serve para colcoar as informações em cada uma das colunas da tabela na qual vc selecionou! ----> E cada informação do value deve ser Colocada nos respectivos lugares no INSERT 


Aulas: 
 
CREATE TABLE TabelaCategorias (
   ID_categoria INT PRIMARY KEY,
   Nome_Categoria VARCHAR (250),
  Descrição_Categoria TEXT
);




ALTER TABLE tabelaclientes ADD Edereço_cliente VARCHAR (250)

DROP TABLE tabelaclientes






 -- SELECT * FROM tabelafornecedores WHERE pa_s_de_origem = 'China'
-- SELECT DISTINCT cliente FROm tabelapedidos;
--CREATE TABLE tabelaclientes (
--  ID_Cliente INT PRIMARY KEY,
-- Nome_cliente VARCHAR (250),
-- Informaçõe_de_Contato VARCHAR (250)
--  );
SELECT*from tabelaclientes






CREATE TABLE TabelaProdutos (
  ID_produto INT PRIMARY KEY,
  Nome_produto VARCHAR (250),
  Descruição TEXT,
  Categoria INT,
  Preço_Produto DECIMAL (10,2),
  Unidade VARCHAR (50),
  Fornecedor INT,
  Data_de_Inclusão DATE,
  FOrEIGN KEY (Categoria) REFERENCES TabelaCategorias (id_categoria),
  FOREIGN KEY (fornecedor) REFERENCES tabelafornecedores (id)
  );

