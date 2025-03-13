# BIBLIOTECA CAMPUS
Creacion de una base de datos para la correcta administracion de una base de datos teniendo en cuenta libros autores prestamos miemrbos etc para que asi haya uan correcta distribuicion de este 


# Consultas

Listar todos los libros disponibles
```sql
SELECT l.id, l.titulo, l.genero, l.ISBN, l.cantidad
FROM libros l
JOIN estado ON l.id = estado.id_libro
WHERE estado.disponilbe = 'Disponible';
```
Buscar libros por género
```sql
SELECT id, titulo, genero, ISBN, cantidad
FROM libros
WHERE genero = 'Realismo mágico'; 
```
Obtener información de un libro por ISBN
```sql
SELECT id, titulo, genero, ISBN, cantidad
FROM libros
WHERE ISBN = 9788;

```
Contar el número de libros en la biblioteca
```sql

SELECT COUNT(*) AS total_libros
FROM libros;
```
Listar todos los autores
```sql
SELECT id, nombre, direccion, fecha_nac
FROM Autores;
```
Buscar autores por nombre
```sql
SELECT id, nombre, direccion, fecha_nac
FROM Autores
WHERE nombre LIKE 'Isabel';
```
Obtener todos los libros de un autor específico
```sql
SELECT l.id, l.titulo, l.genero, l.ISBN, l.cantidad
FROM libros l
JOIN libroAutor la ON l.id = la.id_libro
WHERE la.id_autor = 1; 
```
Listar todas las ediciones de un libro
```sql
SELECT e.id, e.nombre, e.fecha_remitido, e.paginas
FROM edicion e
JOIN libros l ON e.id_libro = l.id
WHERE l.id = 1; 
```
Obtener la última edición de un libro
```sql
SELECT e.id, e.nombre, e.fecha_remitido, e.paginas
FROM edicion e
JOIN libros l ON e.id_libro = l.id
WHERE l.id = 1  
ORDER BY e.fecha_remitido DESC
LIMIT 1;
```
Contar cuántas ediciones hay de un libro específico
```sql
SELECT COUNT(*) AS total_ediciones
FROM edicion
WHERE id_libro = 1; 
```
Listar todas las transacciones de préstamo
```sql
SELECT t.id, t.id_miembro, t.id_prestamo, t.fecha
FROM transaccion t;
```
Obtener los libros prestados actualmente
```sql
SELECT l.id, l.titulo, l.genero, l.ISBN, l.cantidad
FROM libros l
JOIN estado e ON l.id = e.id_libro
JOIN prestamo p ON e.id = p.id_estado
WHERE estado.disponilbe = 'Prestado';
```
Contar el número de transacciones de un miembro específico
```sql

SELECT COUNT(*) AS total_transacciones
FROM transaccion
WHERE id_miembro = 1;  
```
Listar todos los miembros de la biblioteca
```sql
SELECT id, nombre, direccion, fecha_nac, cc
FROM Miembro;

```
Buscar un miembro por nombre:
```sql
SELECT id, nombre, direccion, fecha_nac, cc
FROM Miembro
WHERE nombre LIKE 'Juan Perez';
```
Obtener las transacciones de un miembro específico
```sql
SELECT t.id, t.id_prestamo, t.fecha
FROM transaccion t
WHERE t.id_miembro = 1; 
```
Listar todos los libros y sus autores
```sql
SELECT l.id, l.titulo, l.genero, l.ISBN, a.nombre AS autor
FROM libros l
JOIN libroAutor la ON l.id = la.id_libro
JOIN Autores a ON la.id_autor = a.id;
```
Obtener el historial de préstamos de un libro específico
```sql
SELECT t.id as transaccion_ID, l.titulo as libro,
p.fecha_prestamo, p.fecha_devolucion,t.fecha as fecha_transaccion 
from transaccion t
JOIN prestamo p on t.id_prestamo = p.id
JOIN estado e on p.id_estado = e.id
JOIN libros l on e.id_libro = l.id
where l.id = 2;

```
Contar cuántos libros han sido prestados en total
```sql
SELECT COUNT(*) AS libros_prestados
FROM libros l
JOIN estado ON l.id = estado.id_libro
WHERE estado.disponilbe = 'prestado';

```


Listar todos los libros junto con su última edición y estado de disponibilidad
```sql
SELECT e.id, e.nombre, e.fecha_remitido, e.paginas, estado.disponilbe
FROM edicion e
JOIN libros l ON e.id_libro = l.id
JOIN estado ON l.id = estado.id_libro;

```