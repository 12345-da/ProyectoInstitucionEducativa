-- insertar datos a la base de datos proyecto
-- datos tabla tipo documento
insert into tipo_documento (id, tipo_documento)
values (1, 'tarjeta de identidad'),(2, 'cedula'),(3, 'cedula de extranjeria');

-- datos tabla sexo
insert into sexo (id,sexo)
values (1, 'hombre'),(2, 'mujer');

-- datos tabla tipo usuario
insert into tipo_usuario (id,rol)
values (1, 'coordinador'),(2, 'estudiante'),
(3, 'docente'),(4, 'administrativo');

-- datos tabla persona
insert into persona (id,nombre, apellido, direccion, telefono, sexo, id_tipo_documento)
values 
(101, 'catalina','Lopez','cra9 n 8-10', 3127624837, 2, 1),
(102, 'manuel', 'paez','cra10 n 1-10', 3001827287, 1,2),
(103, 'lucia','Martinez','av68 n 8-22',3127663537, 2, 3),
(104, 'jorge', 'toro','cll1 n 26-10', 3004537287, 1,2),
(105, 'Laura','Lopez','av30 n 15-10', 3254874837, 2, 1),
(106, 'luis', 'perez','av15 n 34-4', 3005417287, 1,2),
(107, 'lola','Martin','cra39 n 6-10', 3127633537, 2, 3),
(108, 'jesus', 'Becerra','cll45 n 8-11', 3004548287, 1,2);

-- datos tabla coordinador
insert into coordinador (id, id_persona)
values (10,103), (11,107);

-- datos tabla estudiante
insert into estudiante (id, curso, id_persona)
values (1, '4º',101),(2,'3º',105);

-- datos tabla docente
insert into docente (id, especialidad, id_persona)
values (20, 'linguistica',102),(21,'matematicas',106);

-- datos tabla administrativo
insert into administrativo (id, cargo, id_persona)
values (1,'servicio general',104),(2, 'vigilante',108);


 
-- datos tabla usuario 
insert into usuario (usuario, contraseña, id_tipo_usuario,id_persona)
values (202, 'cata123',2,101), 
(203, '123manuel',3,102),
(204, 'Lucia010',1,103), 
(205, '321JToro',4,104),
(206, 'lauris645',2,105), 
(207, 'luisper',3,106),
(208, 'lolala',1,107), 
(209, 'becejesu',4,108);

-- datos tabla asistencia
insert into asistencia (id, hora_entrada, hora_salida,fecha)
values (301, '07:00:00','04:00:00','12/02/2020'), 
(302, '06:49:00','04:30:00','11/02/2020'),
(303, '06:50:00','04:00:00','12/02/2020'), 
(304, '06:00:00','04:30:00','11/02/2020'),
(305, '06:50:00','04:02:00','13/02/2020'), 
(306, '06:39:00','04:20:00','11/02/2020'),
(307, '06:50:00','04:03:00','12/02/2020'), 
(308, '06:00:00','04:35:00','14/02/2020'),
(309, '06:30:30','04:03:00','12/02/2020'), 
(310, '06:30:20','04:35:00','14/02/2020');

-- datos tabla invitado
insert into invitado (id,nombre, apellido, documento, motivo_visita)
values (1, 'carolina','Peña', 1000524524, 'Citacion'),
(2, 'fernanda', 'Tapia', 1024578022, 'citacion');

-- datos tabla coord_asist
insert into coord_asist(id_coordinador, id_asistencia)
values (10, 302), 
(11,306);
-- datos tabla doce_asist
insert into doce_asist (id_docente, id_asistencia)
values (20, 303), 
(21,307);
-- datos tabla Est_asist
insert into est_asist (id_estudiante, id_asistencia)
values (1, 301), 
(2,304);
-- datos tabla admin_asist
insert into admin_asist (id_administrativo, id_asistencia)
values (1, 305), 
(2,308);
-- datos tabla invitado_asist
insert into invitado_asist(id_invitado, id_asistencia)
values (1, 309), 
(2,310);

select * from admin_asist; 
select * from administrativo;
select * from asistencia;
select * from coord_asist;
select * from coordinador;
select * from doce_asist;
select * from docente;
select * from est_asist;
select * from estudiante;
select * from invitado;
select * from invitado_asist;
select * from persona;
select * from sexo;
select * from tipo_documento;
select * from tipo_usuario;
select * from usuario;



