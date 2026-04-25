CREATE TABLE members (
    id serial primary key,
	nombre varchar(50),
	apellido varchar(50),
	legajo int,
	feature varchar(10),
	servicio varchar(30),
	estado varchar(20) check (estado in ('Activo', 'Inactivo'))
);

INSERT INTO members (nombre, apellido, legajo, feature, servicio, estado)
VALUES  ('Rodrigo', 'Castaño', 33659, '02', 'Frontend', 'Activo'),
        ('Conrado', 'Cemino', 32058, '01', 'Coordinación', 'Activo'),
        ('Matías', 'Cortés', 31966, '05', 'Portainer', 'Activo'),
        ('Ángeles', 'Schneeberger', 33589, '03', 'Backend', 'Activo'),
        ('Paula', 'Zacarías', 33638, '04', 'Database', 'Activo');