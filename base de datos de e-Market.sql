use emarket;
#--------- PARTE UNO --------------
# CATEGORIAS Y PRODUCTOS

SELECT * FROM categorias;
SELECT CategoriaNombre, Descripcion FROM categorias;
SELECT * FROM productos;
SELECT * FROM productos WHERE Discontinuado = 1;
SELECT p.* FROM productos p JOIN proveedores pr ON p.ProveedorID = pr.ProveedorID 
WHERE pr.ProveedorID = 8;
SELECT * FROM productos WHERE PrecioUnitario BETWEEN 10 AND 22;
SELECT * FROM productos WHERE UnidadesStock < NivelReorden;
SELECT * FROM productos WHERE UnidadesStock < NivelReorden AND UnidadesPedidas = 0;

#CLIENTES

SELECT Contacto, Compania, Titulo, Pais FROM clientes ORDER BY Pais;
SELECT * FROM clientes WHERE Titulo = 'Owner';
SELECT * FROM clientes WHERE Contacto LIKE 'C%';

#FACTURAS

SELECT * FROM facturas ORDER BY FechaFactura;
SELECT * FROM facturas WHERE PaisEnvio = 'USA' AND EnvioVia <> 3;
SELECT * FROM facturas WHERE ClienteID = (SELECT ClienteID FROM clientes WHERE Contacto = 'GOURL');
SELECT * FROM facturas WHERE EmpleadoID IN (2, 3, 5, 8, 9);

#----------- PARTE DOS ----------
# PRODUCTOS
SELECT * FROM productos ORDER BY PrecioUnitario DESC;
SELECT * FROM productos ORDER BY PrecioUnitario DESC LIMIT 5;
SELECT * FROM productos ORDER BY UnidadesStock DESC LIMIT 10;

#FACTURA DETALLE
SELECT FacturaID, ProductoID, Cantidad FROM FacturaDetalle;
SELECT FacturaID, ProductoID, Cantidad FROM FacturaDetalle ORDER BY Cantidad DESC;
SELECT FacturaID, ProductoID, Cantidad FROM FacturaDetalle WHERE Cantidad BETWEEN 50 AND 100 ORDER BY Cantidad DESC;
SELECT FacturaID AS NroFactura, ProductoID AS Producto, PrecioUnitario * Cantidad AS Total FROM FacturaDetalle;

#EXTRAS

SELECT * FROM clientes WHERE Pais = 'Brazil' OR Pais = 'Mexico' OR Titulo LIKE 'Sales%';
SELECT * FROM clientes WHERE Compania LIKE 'A%';
SELECT Ciudad, Contacto AS 'Apellido y Nombre', Titulo AS 'Puesto' FROM clientes WHERE Ciudad = 'Madrid';
SELECT * FROM facturas WHERE FacturaID BETWEEN 10000 AND 10500;
SELECT * FROM facturas WHERE FacturaID BETWEEN 10000 AND 10500 OR ClienteID LIKE 'B%';
SELECT * FROM facturas WHERE CiudadEnvio = 'Vancouver' OR EnvioVia = 3;
SELECT EmpleadoID FROM empleados WHERE Apellido = 'Buchanan';
SELECT * FROM facturas WHERE EmpleadoID = 5;





