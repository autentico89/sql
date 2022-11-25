                     create database
base_de_datos_juegos;

create table
`multilenguaje`(
    `id_multi`integer auto_increment not null,
    `nombre` varchar(200) not null,
    primary key(`id_multi`)
);

create table
`idioma`(
    `id_idioma`integer auto_increment not null,
    `id_multi`integer not null,
    `nombre` varchar(100) not null,
    primary key(`id_idioma`),
    constraint `FK_multilenguaje_idioma` foreign key(`id_multi`)
    references `multilenguaje`(`id_multi`)

);

create table
`estado`(
    `id_estado`integer auto_increment not null,
    `disponibilidad` boolean not null,
    `oferta`integer not null,
    primary key(`id_estado`)
);

create table
`plataforma`(
    `id_plataforma`integer auto_increment not null,
    `nombre` varchar(200) not null,
    primary key(`id_plataforma`)
);

create table
`categoria`(
    `id_categoria`integer auto_increment not null,
    `nombre` varchar(200) not null,
    `descripcion`text null,
    primary key(`id_categoria`)
);


create table
`juego`(
    `id_juego`integer auto_increment not null,
    `id_idioma`integer not null,
    `id_estado`integer not null,
    `id_plataforma`integer not null,
    `id_cotegoria`integer not null, 
    `nombre` varchar(100) not null,
    `descripcion`text null,
    `precio` integer not null,
    `f_lanzamiento` date null,
    `formato` varchar(150) not null,
    `restriccion_edad` varchar(100) not null,
    `n_jugadores` integer null,
    primary key(`id_juego`),
    constraint `FK_idioma_juego` foreign key(`id_idioma`)
    references `idioma`(`id_idioma`)
    constraint `FK_estado_juego` foreign key(`id_estado`)
    references `estado`(`id_estado`)
    constraint `FK_plataforma_juego` foreign key(`id_plataforma`)
    references `plataforma`(`id_plataforma`)
    constraint `FK_categoria_juego` foreign key(`id_categoria`)
    references `categoria`(`id_categoria`)


);

create table
`g_fotos`(
    `id_fotos`integer auto_increment not null,
    `id_juego`integer not null,
    `galeria_fotos` varchar(200) not null,
    primary key(`id_fotos`)
);

create table
`oferta`(
    `id_oferta`integer auto_increment not null,
    `id_juego`integer not null,
    `f_inicio` datetime not null,
    `f_termino` datetime not null,
    primary key(`id_oferta`)
);

