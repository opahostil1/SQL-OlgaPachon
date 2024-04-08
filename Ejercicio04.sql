/*
1.	Crea una tabla llamada "Pedidos" con las columnas: "id" (entero, clave primaria), "id_usuario" (entero, clave foránea de la tabla "Usuarios") y "id_producto" (entero, clave foránea de la tabla "Productos").
*/
CREATE TABLE Pedidos (
    id SERIAL PRIMARY KEY,
    id_usuario INT REFERENCES Usuarios(id_usuario),
    id_producto INT REFERENCES Productos(id_producto)
);
/*2.	Inserta al menos tres registros en la tabla "Pedidos" que relacionen usuarios con productos*/
