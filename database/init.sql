CREATE TABLE members (
    id serial primary key,
	nombre varchar(50),
	apellido varchar(50),
	legajo int,
	feature varchar(10),
	servicio varchar(30),
	estado varchar(20)
);

INSERT INTO members (nombre, apellido, legajo, feature, servicio, estado)
VALUES  ('Rodrigo', 'Castaño', 33659, '02', 'Frontend', 'Completado'),
        ('Conrado', 'Cemino', 32058, '01', 'Coordinación', 'Completado'),
        ('Matías', 'Cortés', 31966, '05', 'Portainer', 'Completado'),
        ('Ángeles', 'Schneeberger', 33589, '03', 'Backend', 'Completado'),
        ('Paula', 'Zacarías', 33638, '04', 'Database', 'Completado');