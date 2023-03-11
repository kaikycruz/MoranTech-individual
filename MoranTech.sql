CREATE DATABASE MoranTech;
USE MoranTech;


CREATE TABLE cadastro (
idCliente int primary key auto_increment,
Nome varchar(60) NOT NULL,
Email varchar(30) UNIQUE NOT NULL, constraint chkEmail CHECK (email like '%@%'),
Senha varchar(20) NOT NULL,
Telefone char(13) default('(00)000000000'),
CNPJ char(18) NOT NULL
);

INSERT INTO cadastro (Nome, Email, Senha, Telefone, CNPJ) VALUES
('KAIKY CRUZ', 'KAIKY.SOUSA@GMAIL.COM', '12345678', '119080712', '00.112.112/0001-39'),
('GUSTAVO MEDEIROS', 'GUSTAVO.MEDEIROS@GMAIL.COM','984547516', '119089659', '00.142.172/0251-43'),
('ANNA PAULA', 'ANNA.PAULA@GMAIL.COM','Ek4714458', '119742501', '00.155.005/0864-55'),
('SAMUEL AUGUSTO', 'SAMUEL.AUGUSTO@GMAIL.COM','Sa94726585', '119964237', '00.185.193/0227-01');


DESC cadastro;
SELECT * FROM cadastro;


CREATE TABLE sensores (
idSensores INT PRIMARY KEY auto_increment,
Modelo VARCHAR(10),
qtdSensores INT,
tipoMedicao VARCHAR(25)
);

INSERT INTO sensores (Modelo, qtdSensores, tipoMedicao) VALUES
('LM35', '15', 'TEMPERATURA'),
('DHT11', '18', 'UMIDADE E TEMPERATURA');

DESC sensores;
SELECT * FROM sensores;


CREATE TABLE funcionarios (
idFuncionario INT PRIMARY KEY auto_increment,
NomeFuncionario VARCHAR(60),
CPF CHAR(14) UNIQUE,
Especializacao VARCHAR(25),
CargaHoraria INT
);

INSERT INTO funcionarios (NomeFuncionario, CPF, Cargo, cargaHoratia) VALUES
( 'Gustavo Medeiros', '697.476.112-00', 'Gerente de Projeto', 36),
( 'Kaiky Cruz', '574.335.746-17', 'Desenvolvedor de Software', 36),
( 'Vinicius inácio', '154.665.349-35', 'Análista de sistemas', 36);

DESC funcionarios;
SELECT * FROM funcionarios;


CREATE TABLE cliente (
idCliente INT PRIMARY KEY auto_increment,
localização VARCHAR(50),
qtdMorango INT
);

INSERT INTO cliente ( localização, qtdMorango) VALUES
('SÃO PAULO-SP', 10000),
('BELO HORIZONTE-MG', 15000),
('RECIFE-PE', 20000);

DESC cliente;
SELECT* FROM cliente;


 

