/*
1.	Crea una tabla llamada "Pedidos" con las columnas: "id" (entero, clave primaria), "id_usuario" (entero, clave foránea de la tabla "Usuarios") y "id_producto" (entero, clave foránea de la tabla "Productos").
*/
CREATE TABLE Pedidos (
    id SERIAL PRIMARY KEY,
    id_usuario INTEGER REFERENCES Usuarios(id_usuario),
    id_producto INTEGER REFERENCES Productos(id)
);
/*2.	Inserta al menos tres registros en la tabla "Pedidos" que relacionen usuarios con productos*/
INSERT INTO Usuarios (id_usuario)
VALUES (1);
INSERT INTO Usuarios (id_usuario)
VALUES (2);
INSERT INTO Usuarios (id_usuario)
VALUES (3);
INSERT INTO Pedidos (id_usuario, id_producto) VALUES (1, 1), (2,2), (3,3);
/*3.	Realiza una consulta que muestre los nombres de los usuarios y los nombres de los productos que han comprado, incluidos aquellos que no han realizado ningún pedido (utiliza LEFT JOIN y COALESCE).*/
SELECT DISTINCT (clientes.nombre), productos.nombre, clientes.id
FROM clientes
LEFT JOIN ventas ON clientes.id = id_cliente
LEFT JOIN productos ON productos.id = id_producto
WHERE COALESCE (ventas.precio, 0) = 0
OR ventas.precio IS NOT NULL
ORDER BY clientes.id ASC;
/*4.	Realiza una consulta que muestre los nombres de los usuarios que han realizado un pedido, pero también los que no han realizado ningún pedido (utiliza LEFT JOIN).*/
SELECT U.nombre AS nombre_usuario
FROM Usuarios U
LEFT JOIN Pedidos Pe ON U.id = Pe.id_usuario
GROUP BY U.nombre;
/*5.	Agrega una nueva columna llamada "cantidad" a la tabla "Pedidos" y actualiza los registros existentes con un valor (utiliza ALTER TABLE y UPDATE)*/
ALTER TABLE Pedidos
ADD cantidad INT;
UPDATE Pedidos
SET cantidad = 10;