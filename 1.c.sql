SELECT Pedido.IdPedido, Cargo FROM Pedido
WHERE Pedido.IdEmpleado IN (SELECT Empleado.IdEmpleado FROM Empleado
WHERE YEAR(Empleado.FechaContratacion) = 1993 AND MONTH(Empleado.FechaContratacion)=10)
ORDER BY Cargo DESC
LINIT 5
;