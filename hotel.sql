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

