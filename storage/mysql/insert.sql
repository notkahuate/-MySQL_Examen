
INSERT INTO Miembro (id, nombre, direccion, fecha_nac, cc)
VALUES
(1, 'Juan Perez', 'Calle Ficticia 123', '1985-06-15', 1235),
(2, 'Ana Garcia', 'Avenida Principal 456', '1990-09-10', 6789),
(3, 'Carlos Lopez', 'Calle Secundaria 789', '1982-03-22', 1122);


INSERT INTO Autores (id, nombre, direccion, fecha_nac)
VALUES
(1, 'Gabriel Garcia Marquez', 'Calle del Sol 111', '1927-03-06'),
(2, 'Isabel', 'Avenida Libertador 333', '1942-08-02'),
(3, 'Mario Vargas Llosa', 'Calle de la Paz 444', '1936-03-28');


INSERT INTO editorial (id, nombre, direccion)
VALUES
(1, 'Editorial Planeta', 'Avenida de la Cultura 100'),
(2, 'Penguin Random House', 'Calle de los Libros 200'),
(3, 'Alfaguara', 'Avenida de la Literatura 300');


INSERT INTO libros (id, titulo, genero, ISBN, cantidad, Autor_id, ID_editorial)
VALUES
(1, 'Cien años de soledad', 'Realismo mágico', 9780, 10, 1, 1),
(2, 'La casa de los espíritus', 'Ficción histórica', 9788, 5, 2, 2),
(3, 'La ciudad y los perros', 'Novela histórica', 9785, 8, 3, 3);


INSERT INTO estado (id, disponilbe, id_libro)
VALUES
(1, 'Disponible', 1),
(2, 'Prestado', 2),
(3, 'Disponible', 3);


INSERT INTO prestamo (id, id_estado, fecha_prestamo, fecha_devolucion)
VALUES
(1, 2, '2025-03-01', '2025-03-15'),
(2, 1, '2025-03-05', '2025-03-19'),
(3, 1, '2025-03-08', '2025-03-22');


INSERT INTO transaccion (id, id_miembro, id_prestamo, fecha)
VALUES
(1, 1, 1, '2025-03-01'),
(2, 2, 2, '2025-03-05'),
(3, 3, 3, '2025-03-08');

INSERT INTO edicion (id, nombre, fecha_remitido, paginas, id_libro)
VALUES
(1, 'Edición Especial', '2025-03-01', 300, 1),
(4, 'Edición league of legends', '2024-03-01', 300, 1),
(2, 'Edición Revisada', '2025-03-05', 250, 2),
(3, 'Edición de Colección', '2025-03-08', 400, 3);


INSERT INTO publicacion (id_publicacion, id_edicion, fecha_publicacion)
VALUES
(1, 1, '2025-03-10'),
(2, 2, '2025-03-12'),
(3, 3, '2025-03-15');


INSERT INTO libroAutor (id_autor, id_libro)
VALUES
(1, 1),
(2, 2),
(3, 3); 







