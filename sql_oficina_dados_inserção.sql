-- Valores gerados pelo Bing AI com o propósito de facilitar a inserção de dados

INSERT INTO Cliente (nome, cpf, telefone, email, endereco, abreviacaoEstado, cidade) VALUES
('João Silva', '12345678901', '5512345678901', 'joao@email.com', 'Rua das Flores, 123', 'SP', 'São Paulo'),
('Maria Santos', '23456789012', '5511987654321', 'maria@email.com', 'Avenida Central, 456', 'RJ', 'Rio de Janeiro'),
('Pedro Souza', '34567890123', '5521345678901', 'pedro@email.com', 'Rua das Palmeiras, 789', 'MG', 'Belo Horizonte'),
('Ana Oliveira', '45678901234', '5531345678901', 'ana@email.com', 'Travessa das Árvores, 101', 'BA', 'Salvador'),
('Carlos Pereira', '56789012345', '5541345678901', 'carlos@email.com', 'Avenida das Montanhas, 345', 'PR', 'Curitiba'),
('Lúcia Costa', '67890123456', '5561345678901', 'lucia@email.com', 'Rua dos Lagos, 567', 'SC', 'Florianópolis'),
('Ricardo Santos', '78901234567', '5571345678901', 'ricardo@email.com', 'Avenida dos Rios, 789', 'RS', 'Porto Alegre'),
('Isabel Oliveira', '89012345678', '5581345678901', 'isabel@email.com', 'Rua das Praias, 123', 'RJ', 'Rio de Janeiro'),
('Fernando Costa', '90123456789', '5591345678901', 'fernando@email.com', 'Avenida das Montanhas, 456', 'SP', 'São Paulo'),
('Marta Silva', '01234567890', '5510345678901', 'marta@email.com', 'Rua das Estrelas, 789', 'MG', 'Belo Horizonte'),
('Gustavo Pereira', '11223344556', '5599345678901', 'gustavo@email.com', 'Avenida das Flores, 101', 'BA', 'Salvador'),
('Carla Souza', '22334455667', '5592345678901', 'carla@email.com', 'Rua das Árvores, 201', 'PR', 'Curitiba'),
('Lucas Santos', '33445566778', '5593345678901', 'lucas@email.com', 'Avenida das Montanhas, 303', 'SC', 'Florianópolis'),
('Cristina Costa', '44556677889', '5594345678901', 'cristina@email.com', 'Travessa dos Rios, 401', 'RS', 'Porto Alegre');

INSERT INTO Peça (tipoPeca, fabricante, quantidade, preco) VALUES
('Pneu Dianteiro', 'Michelin', 4, 300.00),
('Pastilhas de Freio', 'Bosch', 8, 120.00),
('Correia Dentada', 'Gates', 2, 50.00),
('Filtro de Óleo', 'Mann-Filter', 10, 10.00),
('Bateria', 'Exide', 5, 100.00),
('Amortecedores', 'Monroe', 4, 180.00),
('Velas de Ignição', 'NGK', 8, 40.00),
('Filtro de Ar', 'K&N', 10, 30.00),
('Óleo de Câmbio', 'Castrol', 2, 120.00),
('Lâmpadas', 'Osram', 20, 5.00),
('Filtro de Combustível', 'Bosch', 8, 20.00),
('Correia do Alternador', 'Contitech', 2, 20.00),
('Sensor de Oxigênio', 'Bosch', 4, 80.00),
('Bomba de Combustível', 'Delphi', 3, 150.00),
('Termostato', 'Behr', 2, 25.00),
('Pneu Traseiro', 'Michelin', 6, 350.00),
('Lâmpadas de Freio', 'Bosch', 12, 15.00),
('Filtro de Ar', 'K&N', 15, 35.00),
('Pastilhas de Freio', 'Bosch', 10, 130.00);

-- Inserir valores na tabela Manutencao
INSERT INTO Manutencao (nome, preco, descricao) VALUES
('Troca de Pneus', 300.00, 'Substituição dos pneus dianteiros ou traseiros'),
('Troca de Pastilhas de Freio', 120.00, 'Substituição das pastilhas de freio'),
('Troca de Correia Dentada', 50.00, 'Substituição da correia dentada'),
('Troca de Filtro de Óleo', 10.00, 'Substituição do filtro de óleo'),
('Troca de Bateria', 100.00, 'Substituição da bateria do veículo'),
('Troca de Amortecedores', 180.00, 'Substituição dos amortecedores'),
('Troca de Velas de Ignição', 40.00, 'Substituição das velas de ignição'),
('Troca de Filtro de Ar', 30.00, 'Substituição do filtro de ar'),
('Troca de Óleo de Câmbio', 120.00, 'Substituição do óleo de câmbio'),
('Troca de Lâmpadas', 5.00, 'Substituição das lâmpadas do veículo'),
('Troca de Filtro de Combustível', 20.00, 'Substituição do filtro de combustível'),
('Troca de Correia do Alternador', 20.00, 'Substituição da correia do alternador'),
('Troca de Sensor de Oxigênio', 80.00, 'Substituição do sensor de oxigênio'),
('Troca de Bomba de Combustível', 150.00, 'Substituição da bomba de combustível'),
('Troca de Termostato', 25.00, 'Substituição do termostato');

INSERT INTO Veiculo (marca, modelo, anoFabricacao, placa, cor, quilometrosRodados) VALUES
('Toyota', 'Corolla', '2020-01-01', 'ABC1234', 'Prata', 15000),
('Honda', 'Civic', '2019-01-01', 'XYZ5678', 'Preto', 20000),
('Ford', 'Fiesta', '2021-01-01', 'DEF9876', 'Azul', 10000),
('Volkswagen', 'Gol', '2020-01-01', 'GHI3456', 'Branco', 18000),
('Chevrolet', 'Onix', '2019-01-01', 'JKL4321', 'Vermelho', 22000),
('Nissan', 'Sentra', '2021-01-01', 'MNO6789', 'Prata', 12000),
('Renault', 'Kwid', '2019-01-01', 'PQR7890', 'Verde', 25000),
('Hyundai', 'HB20', '2020-01-01', 'STU2345', 'Cinza', 19000),
('Kia', 'Sportage', '2021-01-01', 'VWX5678', 'Preto', 14000),
('Fiat', 'Uno', '2018-01-01', 'YZA8765', 'Amarelo', 28000),
('Peugeot', '208', '2019-01-01', 'BCD1234', 'Azul', 21000),
('Citroën', 'C3', '2020-01-01', 'EFG5678', 'Branco', 16000),
('Mitsubishi', 'Lancer', '2021-01-01', 'HIJ9876', 'Cinza', 13000),
('Subaru', 'Impreza', '2019-01-01', 'KLM4321', 'Prata', 24000),
('Audi', 'A3', '2020-01-01', 'NOP6789', 'Preto', 17000);

INSERT INTO Pagamento (tipoPagamento, valorPago) VALUES
('Cartão', 300.00),
('Boleto', 120.00),
('Pix', 50.00),
('Dinheiro', 10.00),
('Cartão', 100.00),
('Boleto', 180.00),
('Pix', 40.00),
('Dinheiro', 30.00),
('Cartão', 120.00),
('Boleto', 5.00),
('Pix', 20.00),
('Dinheiro', 20.00),
('Cartão', 80.00),
('Boleto', 150.00),
('Pix', 25.00);

INSERT INTO Servico (cliente_idCliente, veiculo_idVeiculo, pagamento_idPagamento, dataSolicitacao, estadoPagamento, valorTotal) VALUES
(1, 1, 1, '2023-08-01', 'Processando', 300.00),
(2, 2, 2, '2023-08-02', 'Pago', 120.00),
(3, 3, 3, '2023-08-03', 'Não Pago', 50.00),
(4, 4, 4, '2023-08-04', 'Processando', 10.00),
(5, 5, 5, '2023-08-05', 'Pago', 100.00),
(6, 6, 6, '2023-08-06', 'Não Pago', 180.00),
(7, 7, 7, '2023-08-07', 'Processando', 40.00),
(8, 8, 8, '2023-08-08', 'Pago', 30.00),
(9, 9, 9, '2023-08-09', 'Não Pago', 120.00),
(10, 10, 10, '2023-08-10', 'Processando', 5.00),
(11, 11, 11, '2023-08-11', 'Pago', 20.00),
(12, 12, 12, '2023-08-12', 'Não Pago', 20.00),
(13, 13, 13, '2023-08-13', 'Processando', 80.00),
(14, 14, 14, '2023-08-14', 'Pago', 150.00),
(15, 15, 15, '2023-08-15', 'Não Pago', 25.00);

INSERT INTO vendaPecas (peca_idPeca, servico_idServico) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);

INSERT INTO vendaManutencao (servico_idServico, manutencao_idManutencao) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);