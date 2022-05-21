SELECT Pedido.IdPedido,
	Pedido.FechaPedido,
	Producto.NombreProducto,
	CONCAT(Producto.PrecioUnidad,'/', Pedido.Cargo) AS 'precio/total',
	CONCAT(Producto.PrecioUnidad / Pedido.Cargo,'%') AS 'porcentaje del pedido'
FROM Pedido JOIN Detalles_de_Pedido ON Pedido.IdPedido = Detalles_de_Pedido.IdPedido
JOIN Producto ON Detalles_de_Pedido.IdPedido = Producto.IdProducto

WHERE Pedido.FechaPedido BETWEEN '1997-02-15' AND '1997-02-28'
GROUP BY Pedido.IdPedido