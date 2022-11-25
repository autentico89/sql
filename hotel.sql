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