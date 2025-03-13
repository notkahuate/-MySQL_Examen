CREATE table Miembro(
id int primary key,
nombre varchar (45) not null,
direccion varchar(45) not null,
fecha_nac date not null,
cc smallint not null
);

CREATE table libros (
id smallint primary key,
titulo varchar(45) not null,
genero varchar(45) not null,
ISBN smallint not null,
cantidad int not null,
Autor_id int not null,
ID_editorial int not null,
foreign key (Autor_id) references Autores(id),
foreign key (ID_editorial) references editorial(id)
);

CREATE table Autores(
id int primary key,
nombre varchar (45) not null,
direccion varchar(45) not null,
fecha_nac date not null
);


CREATE table editorial(
    id int primary key,
    nombre varchar(45) not null,
    direccion varchar(45) not null
);

CREATE table estado(
    id int primary key,
    disponilbe varchar(45) not null,
    id_libro smallint not null,
    foreign key (id_libro) references libros(id)

);

CREATE table prestamo( 
    id int primary key,
    id_estado int not null,
    fecha_prestamo date not null,
    fecha_devolucion date not null,
    foreign key (id_estado) references estado(id)

);

CREATE table transaccion ( 
    id int primary key,
    id_miembro int not null,
    id_prestamo int not null,
    fecha date not null,
    foreign key (id_miembro) references Miembro(id),
    foreign key (id_prestamo) references prestamo(id)

);

CREATE table edicion( 
    id int primary key,
    nombre varchar(45) not null,
    fecha_remitido date not null,
    paginas int not null,
    id_libro smallint not null,
    foreign key (id_libro) references libros(id)

);

CREATE table publicacion(
id_publicacion int primary key,
id_edicion int not null,
fecha_publicacion date,
foreign key (id_edicion) references edicion(id)
);


CREATE table libroAutor(
id_autor int not null,
id_libro smallint not null,
primary key (id_autor,id_libro),
foreign key (id_autor) references Autores(id),
foreign key (id_libro) references libros(id)
);





