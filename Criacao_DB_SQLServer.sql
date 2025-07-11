CREATE DATABASE LocadoraVeiculos;

USE LocadoraVeiculos;

CREATE TABLE Cliente (
	idCliente INTEGER IDENTITY(1,1) PRIMARY KEY ,
	CPF VARCHAR(20) NOT NULL,
	nome VARCHAR(50) NOT NULL,
	telefone VARCHAR(20) NOT NULL,
	email VARCHAR(50) NOT NULL,
	endereco VARCHAR(100) NOT NULL
);

CREATE TABLE Pagamento(
	idPagamento INTEGER IDENTITY(1,1) PRIMARY KEY NOT NULL,
	forma VARCHAR(20) NOT NULL CHECK (forma IN('Cartão','Pix','Dinheiro')),
	dataPagamento DATE NOT NULL,
	valorTotal DECIMAL (7,2) NOT NULL,
	estado VARCHAR(20) NOT NULL CHECK(estado IN('Pago','Pendente'))

);

CREATE TABLE Locacao(
	idLocacao INTEGER IDENTITY(1,1) PRIMARY KEY NOT NULL,
	idCliente INTEGER NOT NULL,
	idPagamento INTEGER NOT NULL,
	dataInicio DATE NOT NULL,
	dataFim DATE NOT NULL,

	FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente),
	FOREIGN KEY (idPagamento) REFERENCES Pagamento(idPagamento)

);

CREATE TABLE Veiculo(
	idVeiculo INTEGER IDENTITY(1,1) PRIMARY KEY NOT NULL,
	modelo VARCHAR (50) NOT NULL,
	marca VARCHAR (50) NOT NULL,
	ano INT NOT NULL,
	placa VARCHAR (10),
	valorDiaria DECIMAL(7,2),

	estado VARCHAR (20) NOT NULL CHECK(Estado in('Disponível','Alugado','Manutenção'))

);

CREATE TABLE Manutencao(
	idManutencao INTEGER IDENTITY(1,1) PRIMARY KEY NOT NULL,
	idVeiculo INTEGER NOT NULL,
	descricao VARCHAR(100) NOT NULL,
	dataManutencao DATE NOT NULL,
	custo DECIMAL(7,2) NOT NULL

	FOREIGN KEY (idVeiculo) REFERENCES Veiculo(idVeiculo)

);

CREATE TABLE LocacaoVeiculo(
	idLocacao INTEGER NOT NULL,
	idVeiculo INTEGER NOT NULL,

	PRIMARY KEY (idLocacao, idVeiculo),

	FOREIGN KEY (idLocacao) REFERENCES Locacao(idLocacao),
	FOREIGN KEY (idVeiculo) REFERENCES Veiculo(idVeiculo)

);
