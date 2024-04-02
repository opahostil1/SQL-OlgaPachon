/*1.	Crea una tabla llamada "Productos" con las columnas: "id" (entero, clave primaria), "nombre" (texto) y "precio" (numérico).*/
CREATE TABLE IF NOT EXISTS public.productos(
	id INT PRIMARY KEY,
	nombre VARCHAR (255),
	precio INT
)
/*2.	Inserta al menos cinco registros en la tabla "Productos".*/
INSERT INTO public.productos (id, nombre,precio)
VALUES (1,'Jose',2),(2,'Maria',4),(3,'Jesus',6),(4,'Melchor',8),(5,'Gaspar',10)
/*3.	Actualiza el precio de un producto en la tabla "Productos".*/
UPDATE public.productos
SET precio= 7
WHERE id = 3;
/*4.	Elimina un producto de la tabla "Productos*/
DELETE FROM public.productos
WHERE id= 3;
/*5.	Realiza una consulta que muestre los nombres de los usuarios junto con los nombres de los productos que han comprado (utiliza un INNER JOIN con la tabla "Productos").*/
NI IDEA