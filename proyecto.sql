-- Creacion de base de datos del proyecto formativo.
drop database proyecto;
-- sellecionar la base de datos.

create database if not exists Proyecto;



use proyecto;

-- creacion de tablas.

-- tabla tipo_usuario
create table if not exists Tipo_usuario (
id int primary key,
rol varchar (50) not null);
-- tabla tipo_documento

create table if not exists tipo_documento (
id int primary key,
tipo_documento  varchar (50)  not null
);
-- tabla sexo
create table if not exists sexo (
id int primary key,
sexo  varchar (50)  not null
);
-- tabla persona
create table if not exists persona (
id int primary key,
nombre  varchar (50)  not null,
apellido varchar (50) not null,
direccion Varchar (50) not null,
telefono int (10) not null,
sexo int not null,
id_tipo_documento int not null,


constraint fkPersonasexo
foreign key (sexo)
references sexo (id)
on delete no action,

constraint fkPersonaTipoDoc
foreign key (id_tipo_documento)
references tipo_documento (id)
on delete no action

);

-- tabla usuario
create table if not exists Usuario (
usuario int primary key,
contraseña  varchar (50)  not null,
id_tipo_usuario int not null,
id_persona int not null,

constraint fkTipoUsuarioUsuario
foreign key (id_tipo_usuario)
references tipo_usuario (id)
on delete no action,

constraint fkUsuarioPersona
foreign key (id_persona)
references persona (id)
on delete no action
);



-- tabla coordinador
create table if not exists coordinador (
id int primary key,
id_persona int not null,

constraint fkcoordinadorPersona
foreign key (id_persona)
references persona (id)
on delete no action
);
-- tabla estudiante
create table if not exists Estudiante (
id int primary key,
curso varchar (50),
id_persona int not null,

constraint fkestudiantePersona
foreign key (id_persona)
references persona (id)
on delete no action
);
-- tabla docente
create table if not exists docente(
id int primary key,
especialidad varchar (50),
id_persona int not null,

constraint fkdocentePersona
foreign key (id_persona)
references persona (id)
on delete no action
);
-- tabla administrador
create table if not exists administrativo (
id int primary key,
cargo varchar(50),
id_persona int not null,

constraint fkadminPersona
foreign key (id_persona)
references persona (id)
on delete no action
);

-- tabla asistencia
create table if not exists Asistencia (
id int primary key,
hora_entrada time not null,
hora_salida time not null,
fecha date not null
);
-- tabla coord_Asist
create table if not exists coord_Asist (
id_coordinador int primary key,
id_asistencia int not null,

constraint fkCoordinadorAsistencia
foreign key (id_coordinador)
references coordinador (id)
on delete no action,

constraint fkAsistenciacoordinador
foreign key (id_asistencia)
references asistencia (id)
on delete no action
);
-- tabla est_Asist
create table if not exists Est_Asist (
id_estudiante int primary key,
id_asistencia int not null,

constraint fkEstudianteAsistencia
foreign key (id_estudiante)
references estudiante (id)
on delete no action,

constraint fkAsistenciaEstudiante
foreign key (id_asistencia)
references asistencia (id)
on delete no action
);

-- tabla doce_Asist

create table if not exists doce_Asist (
id_docente int primary key,
id_asistencia int not null,

constraint fkDocenteAsistencia
foreign key (id_docente)
references docente (id)
on delete no action,

constraint fkAsistenciadocente
foreign key (id_asistencia)
references asistencia (id)
on delete no action
);
-- tabla Admin_Asist

create table if not exists admin_Asist (
id_administrativo int primary key,
id_asistencia int not null,

constraint fkadminAsistencia
foreign key (id_administrativo)
references administrativo (id)
on delete no action,

constraint fkAsistenciaadmin
foreign key (id_asistencia)
references asistencia (id)
on delete no action
);

-- tabla invitado

create table if not exists invitado (
id int primary key,
nombre varchar (50) not null,
apellido varchar (50) not null,
documento int not null,
motivo_visita Text (200) not null
);
-- tabla invitado_asit

create table if not exists invitado_Asist (
id_invitado int primary key,
id_asistencia int not null,

constraint fkinvitadoAsistencia
foreign key (id_invitado)
references invitado (id)
on delete no action,

constraint fkAsistenciainvitado
foreign key (id_asistencia)
references asistencia (id)
on delete no action
);



