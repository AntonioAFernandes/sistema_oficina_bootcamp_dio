SELECT v.modelo AS modelo_veiculo, MAX(s.valorTotal) AS servico_mais_caro
FROM Veiculo v
JOIN Servico s ON v.idVeiculo = s.veiculo_idVeiculo;

SELECT p.fabricante AS fabricante_peca, COUNT(vp.peca_idPeca) AS total_vendas
FROM vendaPecas vp
JOIN Peça p ON vp.peca_idPeca = p.idPeca
GROUP BY p.fabricante
ORDER BY total_vendas DESC
LIMIT 1;

SELECT AVG(quilometrosRodados) AS media_quilometros
FROM Veiculo;

SELECT c.nome AS cliente, p.tipoPagamento
FROM Cliente c
JOIN Servico s ON c.idCliente = s.cliente_idCliente
JOIN Pagamento p ON s.pagamento_idPagamento = p.idPagamento
WHERE p.tipoPagamento = 'Boleto';

SELECT tipoPeca, fabricante, preco
FROM Peça
WHERE preco > 100.00;