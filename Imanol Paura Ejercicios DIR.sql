-- IMANOL PAURA
-- Creación de base de datos
create database pwi;
-- Usar la base de datos
use pwi;
-- Creación de tabla
create table empleados(
id_emp int not null auto_increment primary key,
Nombre varchar(50),
Apellido varchar(50),
Trabajo varchar(50),
Edad int not null,
Salario float,
Mail varchar(100)
);
-- Insersión de datos en la tabla
insert into empleados(id_emp, Nombre, Apellido, Trabajo, Edad, Salario, Mail) values
(1, "Juan", "Hagan", "Programador Senior", 32, 1200, "juan_hagan@bignet.com"),
(2, "Gonzalo", "Pillai", "Programador Senior", 32, 1100, "g_pillai@bignet.com"),
(3, "Ana", "Dharma", "Desarrollador Web", 27, 900, "ana@bignet.com"),
(4, "Maria", "Anchor", "Desarrollador Web", 26, 850, "mary@bignet.com"),
(5, "Alfred", "Fernandez", "Programador", 31, 750, "af@bignet.com"),
(6, "Juan", "Agüero", "Programador", 36, 850, "juan@bignet.com"),
(7, "Eduardo", "Sacan", "Programador", 25, 850, "eddi@bignet.com"),
(8, "Alejandro", "Nanda", "Programador", 32, 700, "alenanda@bignet.com"),
(9, "Hernan", "Rosso", "Especialista Multimedia", 33, 900, "hernan@bignet.com"),
(10, "Pablo", "Simon", "Especialista Multimedia", 43, 850, "ps@bignet.com"),
(11, "Arturo", "Hernandez", "Especialista Multimedia", 32, 750, "arturo@bignet.com"),
(12, "Jimena", "Cazado", "Diseñador Web", 32, 1100, "jimena@bignet.com"),
(13, "Roberto", "Luis", "Administrador de sistemas", 35, 1000, "roberto@bignet.com"),
(14, "Daniel", "Gutierrez", "Administrador de sistemas", 34, 9000, "daniel@bignet.com"),
(15, "Miguel", "Harper", "Ejecutivo de Ventas Senior", 36, 1200, "miguel@bignet.com"),
(16, "Monica", "Sanchez", "Ejecutivo de Ventas", 30, 900, "monica@bignet.com"),
(17, "Alicia", "Simlai", "Ejecutivo de Ventas", 27, 700, "alicia@bignet.com"),
(18, "Jose", "Iriarte", "Ejecutivo de Ventas", 27, 720, "jose@bignet.com"),
(19, "Sabrina", "Allende", "Gerente de Soporte tecnico", 32, 2000, "sabrina@bignet.com"),
(20, "Pedro", "Campeon", "Gerente de finanzas", 36, 2200, "pedro@bignet.com"),
(21, "Mariano", "Dharma", "Presidente", 28, 3000, "mariano@bignet.com");
-- Punto 1)
select Nombre, Trabajo from empleados;
-- Punto 2)
select Nombre, Edad from empleados;
-- Punto 3)
select Nombre, Edad from empleados where Trabajo = "Programador";
-- Punto 4)
select * from empleados where Edad > 30;
-- Punto 5)
select Apellido, Mail from empleados where Nombre = "Juan";
-- Punto 6)
select Nombre from empleados where Trabajo = "Programador" or Trabajo = "Desarrollador Web";
-- Punto 7)
select id_emp, Nombre, Apellido, Trabajo from empleados where id_emp between 15 and 20;
-- Punto 8)
select * from empleados where trabajo = "Programador" and Salario < 800;
-- Punto 9)
select * from empleados where trabajo = "Programador" and Salario between 750 and 900;
-- Punto 10)
select * from empleados where upper(Apellido) like 'S%';
-- Punto 11)
select * from empleados where upper(Nombre) like '%l';
-- Punto 12)
insert into empleados(id_emp, Nombre, Apellido, Trabajo, Edad, Salario, Mail) values
(22, "Francisco", "Perez", "Programador", 26, 900, "francisco@bignet.com");
-- Punto 13)
delete from empleados where Nombre = "Hernan" and Apellido = "Rosso";
-- Punto 14)
update empleados set Salario = 900 where Nombre = "Daniel" and Apellido = "Gutierrez";