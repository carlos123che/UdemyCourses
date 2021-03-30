create database if not exists sqlUdemyCeroProf;
use sqlUdemyCeroProf;

create table if not exists Mascota(
	id int not null,
    nombre varchar(50) not null,
    id_dueno int not null, 
    servicio varchar(100) not null
);

create table if not exists Persona(
	id int not null,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    cod_zip int not null,
    tlf varchar(10)
);

create table if not exists direccion(
	zip int not null,
    nombre_zona varchar(50) not null,
    ruta varchar(100) not null
);

alter table Mascota add primary key (id);
alter table Persona add primary key (id);
alter table Mascota add constraint FK_PERSONA foreign key (id_dueno) references Persona(id);
ALTER TABLE DIRECCION ADD primary key(ZIP);
alter table Persona add constraint FK_DIREC foreign key (cod_zip) references direccion(zip);
alter table Persona add column email varchar(50);
alter table Persona add constraint Unique_email UNIQUE (email);
describe Mascota;
describe Persona;
describe direccion;
##########################################
alter table Mascota change nombre PRIMER_NOMBRE varchar(50);
alter table direccion modify ruta char(12);
describe Mascota;
describe direccion;