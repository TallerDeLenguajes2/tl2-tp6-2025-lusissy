--
-- Archivo generado con SQLiteStudio v3.4.4 el vie oct 24 07:16:52 2025
--
-- Codificaci—n de texto usada: macintosh
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Tabla: Presupuesto
CREATE TABLE IF NOT EXISTS Presupuesto (IdPresupueto INTEGER, "NombreDestinatario " TEXT (100), FechaCreacion DATE);
INSERT INTO Presupuesto (IdPresupueto, "NombreDestinatario ", FechaCreacion) VALUES (3, 'Carlos Gonz‡lez', '2025-10-20');
INSERT INTO Presupuesto (IdPresupueto, "NombreDestinatario ", FechaCreacion) VALUES (2, 'Mar’a L—pez', '2025-10-18');
INSERT INTO Presupuesto (IdPresupueto, "NombreDestinatario ", FechaCreacion) VALUES (1, 'Juan PŽrez', '2025-10-15');

-- Tabla: PresupuestoDetalle
CREATE TABLE IF NOT EXISTS PresupuestoDetalle (IdPresupuesto INTEGER, IdProducto INTEGER, Cantidad INTEGER);
INSERT INTO PresupuestoDetalle (IdPresupuesto, IdProducto, Cantidad) VALUES (1, 1, 2);

-- Tabla: Producto
CREATE TABLE IF NOT EXISTS Producto (IdProducto INTEGER, Descripcion TEXT (100), Precio NUMERIC (10, 2));
INSERT INTO Producto (IdProducto, Descripcion, Precio) VALUES (4, 'Mouse inal‡mbrico Logitech', 24900);
INSERT INTO Producto (IdProducto, Descripcion, Precio) VALUES (3, 'Notebook Lenovo IdeaPad 15', 699900);
INSERT INTO Producto (IdProducto, Descripcion, Precio) VALUES (2, 'Teclado mec‡nico Redragon', 35900);
INSERT INTO Producto (IdProducto, Descripcion, Precio) VALUES (1, 'Monitor LED 24" Samsung', 129900);
INSERT INTO Producto (IdProducto, Descripcion, Precio) VALUES (4, 'Mouse inal‡mbrico Logitech', 24900);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
