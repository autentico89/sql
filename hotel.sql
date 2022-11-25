hotel_laravel;

create table
`reserva`(
    `id_reserva`integer auto_increment not null,
    `tipo_de_habitacion`text null,
    `cantidad_personas`integer not null,
    `fecha_entrada`datetime not null,
    `fecha_salida`datetime not null,
    primary key(`id_reserva`)
);

create table
`pago`(
    `id_pago`integer auto_increment not null,
    `tipo_de_pago`varchar(200) not null,
    `fecha`datetime not null,
    primary key(`id_pago`)
)

create table
`cliente`(
    `id_cliente`integer auto_increment not null,
    `nombre`varchar(200) not null,
    `apellido`varchar(200) not null,
    `direccion`varchar(200) not null,
    primary key(`id_cliente`)
)

create table
`habitacion`(
    `id_habitacion`integer auto_increment not null,
    `tipo_de_habitacion`text null,
    `numero_de_habitacion`integer not null,
    `precio`integer not null,
    primary key(`id_habitacion`)
)

create table
`registro`(
    `id_registro`integer auto_increment not null,
    `id_cliente`integer not null,
    `id_pago`integer not null,
    `id_habitacion`integer not null,
    `id_reserva`integer not null,
    `nombre`varchar(200) not null,
    `apellido`varchar(200) not null,
    `direccion`varchar(200) not null,
    primary key(`id_registro`),
    constraint `FK_cliente_registro` foreign key(`id_cliente`)
    references `cliente`(`id_cliente`)
    constraint `FK_pago_registro` foreign key(`id_pago`)
    references `pago`(`id_pago`)
    constraint `FK_habitacion_registro` foreign key(`id_habitacion`)
    references `habitacion`(`id_habitacion`)
    constraint `FK_reserva_registro` foreign key(`id_reserva`)
    references `reserva`(`id_reserva`)

    
)
