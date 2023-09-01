-- drop database oficina;
create database oficina;
use oficina;

-- tabela cliente

CREATE TABLE IF NOT EXISTS Cliente (
  idCliente INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  cpf CHAR(11) NOT NULL UNIQUE,
  telefone VARCHAR(13) NULL,
  email VARCHAR(45) NULL,
  endereco VARCHAR(255) NOT NULL,
  abreviacaoEstado VARCHAR(2) NOT NULL,
  cidade VARCHAR(60) NOT NULL,
  PRIMARY KEY (idCliente)
  );
  
  ALTER TABLE Cliente AUTO_INCREMENT = 1;

-- tabela peça

CREATE TABLE IF NOT EXISTS Peça (
  idPeca INT NOT NULL AUTO_INCREMENT,
  tipoPeca VARCHAR(45) NOT NULL,
  fabricante VARCHAR(45) NOT NULL,
  quantidade INT NOT NULL,
  preco FLOAT NOT NULL,
  PRIMARY KEY (idPeca)
  );

-- tabela manutenção

CREATE TABLE IF NOT EXISTS Manutencao (
  idManutencao INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(90) NOT NULL,
  preco FLOAT NOT NULL,
  descricao VARCHAR(255) NOT NULL,
  PRIMARY KEY (idManutencao)
  );

-- tabela veículo

CREATE TABLE IF NOT EXISTS Veiculo (
  idVeiculo INT NOT NULL AUTO_INCREMENT,
  marca VARCHAR(45) NOT NULL,
  modelo VARCHAR(45) NOT NULL,
  anoFabricacao DATE NULL,
  placa VARCHAR(7) NOT NULL UNIQUE,
  cor VARCHAR(15) NOT NULL,
  quilometrosRodados INT NULL,
  PRIMARY KEY (idVeiculo)
  );

-- tabela pagamento

CREATE TABLE IF NOT EXISTS Pagamento (
  idPagamento INT NOT NULL AUTO_INCREMENT,
  tipoPagamento ENUM('Cartão', 'Boleto', 'Pix', 'Dinheiro') NOT NULL,
  valorPago FLOAT NOT NULL,
  PRIMARY KEY (idPagamento));

-- tabela serviço

CREATE TABLE IF NOT EXISTS Servico (
  idServico INT NOT NULL AUTO_INCREMENT,
  cliente_idCliente INT NOT NULL,
  veiculo_idVeiculo INT NOT NULL,
  pagamento_idPagamento INT NOT NULL,
  dataSolicitacao DATE NOT NULL,
  estadoPagamento ENUM('Processando', 'Pago', 'Não Pago') NULL,
  valorTotal FLOAT NULL,
  PRIMARY KEY (idServico, cliente_idCliente, veiculo_idVeiculo, pagamento_idPagamento),
  CONSTRAINT cliente_idCliente FOREIGN KEY (cliente_idCliente) REFERENCES Cliente (idCliente),
  CONSTRAINT veiculo_idVeiculo FOREIGN KEY (veiculo_idVeiculo) REFERENCES Veiculo (idVeiculo),
  CONSTRAINT pagamento_idPagamento FOREIGN KEY (pagamento_idPagamento) REFERENCES Pagamento (idPagamento));

-- tabelas relacionais vendaPecas e vendaManutencao

CREATE TABLE IF NOT EXISTS vendaPecas (
  peca_idPeca INT NOT NULL,
  servico_idServico INT NOT NULL,
  PRIMARY KEY (peca_idPeca, servico_idServico),
  CONSTRAINT peca_idPeca FOREIGN KEY (peca_idPeca) REFERENCES Peça (idPeca),
  CONSTRAINT servico_idServico FOREIGN KEY (servico_idServico) REFERENCES servico (idServico)
);

CREATE TABLE IF NOT EXISTS vendaManutencao (
  servico_idServico INT NOT NULL,
  manutencao_idManutencao INT NOT NULL,
  PRIMARY KEY (servico_idServico, manutencao_idManutencao),
  CONSTRAINT servico_idServicoManutencao FOREIGN KEY (servico_idServico) REFERENCES servico (idServico),
  CONSTRAINT manutencao_idManutencao FOREIGN KEY (manutencao_idManutencao) REFERENCES Manutencao (idManutencao)
  );