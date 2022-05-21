SELECT Destinatario, COUNT(IdPedido)
FROM Pedido
WHERE PaisDestinatario ='Alemania' AND(Destinatario LIKE '%P%' OR Destinatario LIKE '%R%')
GROUP BY Destinatario