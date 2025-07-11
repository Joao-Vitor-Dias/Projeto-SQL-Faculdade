USE LocadoraVeiculos;

SELECT descricao,dataManutencao,custo FROM Manutencao;


SELECT SUM(valorTotal) from Pagamento
WHERE estado = 'Pago'
;


SELECT COUNT(v.idVeiculo) AS quantidade_locacoes ,v.marca,v.modelo FROM LocacaoVeiculo lv
INNER JOIN Veiculo v
	ON lv.idVeiculo = v.idVeiculo
INNER JOIN Locacao l
	ON lv.idLocacao = l.idLocacao

GROUP BY v.idVeiculo, v.marca, v.modelo
ORDER BY quantidade_locacoes DESC



SELECT c.nome,p.estado,p.valorTotal FROM Locacao l
INNER JOIN Cliente c
	ON l.idCliente = c.idCliente
INNER JOIN Pagamento p
	ON l.idPagamento = p.idPagamento

WHERE p.estado = 'Pendente'
ORDER BY c.nome 

