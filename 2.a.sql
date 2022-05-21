DROP FUNCTION IF EXISTS Nep;
CREATE FUNCTION Nep(Cliente VARCHAR (5)) RETURN CHAR (2)
BEGIN
	SET @pais = (SELECT Cliente.Pais FROM Cliente WHERE Cliente.IdCliente=Cliente);
	SET @resultado = IF (@pais = 'Francia','SI','NO');
	RETURN @resultado;
END;

SELECT Nep('FISSA'), Nep('ALFKI');