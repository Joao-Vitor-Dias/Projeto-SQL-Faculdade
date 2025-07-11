CREATE DATABASE LocadoraVeiculos;

USE LocadoraVeiculos;

CREATE TABLE Cliente (

	idCliente INT AUTO_INCREMENT PRIMARY KEY,
	CPF VARCHAR(20) NOT NULL,
	nome VARCHAR(50) NOT NULL,
	telefone VARCHAR(20) NOT NULL,
	email VARCHAR(50) NOT NULL,
	endereco VARCHAR(100) NOT NULL

);


CREATE TABLE Pagamento (

	idPagamento INT AUTO_INCREMENT PRIMARY KEY,
	forma ENUM('Cartão','Pix','Dinheiro') NOT NULL,
	dataPagamento DATE NOT NULL,
	valorTotal DECIMAL(7,2) NOT NULL,
	estado ENUM('Pago','Pendente') NOT NULL

);


CREATE TABLE Locacao (

	idLocacao INT AUTO_INCREMENT PRIMARY KEY,
	idCliente INT NOT NULL,
	idPagamento INT NOT NULL,
	dataInicio DATE NOT NULL,
	dataFim DATE NOT NULL,

	FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente),
	FOREIGN KEY (idPagamento) REFERENCES Pagamento(idPagamento)

);


CREATE TABLE Veiculo (

	idVeiculo INT AUTO_INCREMENT PRIMARY KEY,
	modelo VARCHAR(50) NOT NULL,
	marca VARCHAR(50) NOT NULL,
	ano INT NOT NULL,
	placa VARCHAR(10) NOT NULL,
	valorDiaria DECIMAL(7,2) NOT NULL,
	estado ENUM('Disponível','Alugado','Manutenção') NOT NULL

);



CREATE TABLE Manutencao (

	idManutencao INT AUTO_INCREMENT PRIMARY KEY,
	idVeiculo INT NOT NULL,
	descricao VARCHAR(100) NOT NULL,
	dataManutencao DATE NOT NULL,
	custo DECIMAL(7,2) NOT NULL,

	FOREIGN KEY (idVeiculo) REFERENCES Veiculo(idVeiculo)

);



CREATE TABLE LocacaoVeiculo (

	idLocacao INT NOT NULL,
	idVeiculo INT NOT NULL,

	PRIMARY KEY (idLocacao, idVeiculo),

	FOREIGN KEY (idLocacao) REFERENCES Locacao(idLocacao),
	FOREIGN KEY (idVeiculo) REFERENCES Veiculo(idVeiculo)

);