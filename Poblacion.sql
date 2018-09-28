use Comedor

/*Poblacion de Las tablas*/

insert Alergia 
	values	(1,'Chocolate'),
			(2,'Pepino'),
			(3,'Pavo'),
			(4,'Puerco'),
			(5,'Huevo'),
			(6,'Platano'),
			(7,'Miel'),
			(8,'Leche'),
			(9,'Fresa'),
			(10,'Maiz')

insert Persona(id,RFC,nombre,apellido_pat,apellido_mat) 
	values	(1,'ASDF1325RCS01','Juan','Perez','Soto'),
			(2,'SJDOF15489QW2','Ramon','Calderon','Burgueño'),
			(3,'ASFDS56SDF401','Pedro','Rodriguez','Solano'),
			(4,'ASDKLASKDL452','Maria','Bustillos','Muñiz'),
			(5,'BKFGFG45SWDF4','Benito','Rosales','Soto'),
			(6,'SDF6WET2GH15R','Federica','Davalos','De Peluche'),
			(7,'ASD564DF42DG2','Ludovico','Peluche','Felix'),
			(8,'FH45FH8J7FF54','Joaquin','Guzman','Loera'),
			(9,'YUI51HJK4H8Y5','Javier','Hernandez','Lopez'),
			(10,'HYY5YUI7YYU52','Guillermo','Ochoa','Samaniego'),
			(11,'SDFGJKSAF5452','Manuel','Casas','Corvera'),
			(12,'WRETWERT65EW8','Francisco','Villa','Rocha'),
			(13,'FGHFG64565GH4','Cesar','Carrera','Cazares'),
			(14,'DGH5DFG21H5DG','Pedro','Medrano','Carrillo'),
			(15,'DGFH5454FGH21','Maria','Noriega','Perez'),
			(16,'DGH21235465D8','Juana','Garza','Inzunza'),
			(17,'RTYU215YU4U5R','Maribel','Guardia','Beltran'),
			(18,'IUYI545T88TU2','Galilea','Montijo','Lomas'),
			(19,'UTIO5P4TYI5O5','Patricia','Chapoy','Lopez'),
			(20,'ZV6DFG5DFG656','Jose','Jimenez','Quintero'),
			(21,'ADFAETADFARRD','Alfredo','Rodriguez','Guzman'),
			(22,'WRETWESDFSDFD','Miguel','Ramos','Loera'),
			(23,'FGHFGHFHFTF56','Mario','Valenzuela','Beltran'),
			(24,'DGH5DFG21H566','Enrique','Barraza','Zambada'),
			(25,'DGFH545456546','Octavio','Lopez','Inzunza'),
			(26,'DGH2127746456','Samuel','Fuentes','Guitierrez'),
			(27,'RTYU215YU9876','Jorge','Aguirre','Melendez'),
			(28,'IUYI523423445','Antonio','Montana','Paez'),
			(29,'UTIO5P4TYI523','Jaime','Cartas','Machado'),
			(30,'ZV6DFG5DFG876','Pedro','Sola','Bastidas')

insert Nivel(id,nivel) 
	values	(1,'Preescolar'),
			(2,'Primaria'),
			(3,'Secundaria'),
			(4,'Preparatoria')

insert Alumno(id,idPersona,FechaNac,idNivel,grado) 
	values	(1,1,'2011-08-02',2,2),
			(2,2,'2012-02-15',2,1),
			(3,3,'2015-12-22',1,2),
			(4,4,'2010-05-01',2,3),
			(5,5,'2010-06-13',2,3),
			(6,6,'2011-11-30',2,2),
			(7,7,'2014-07-07',1,3),
			(8,8,'2012-01-06',2,1),
			(9,9,'2015-04-08',1,2),
			(10,10,'2016-04-25',1,1)

insert AlumnoAlergia(idAlumno,idAlergia)
	values	(1,1),
			(2,2),
			(3,3),
			(4,4),
			(5,5),
			(6,6),
			(7,7),
			(8,8),
			(9,9),
			(10,10)

insert Ciudad(id,nombre)
	values	(1,'Culiacan'),
			(2,'Mazatlan'),
			(3,'Hermosillo'),
			(4,'Obregon'),
			(5,'Los mochis'),
			(6,'Guadalajara'),
			(7,'Veracruz'),
			(8,'Queretaro'),
			(9,'Juarez'),
			(10,'Morelia')

insert Calle(id,calle)
	values	(1,'Mario Ramos'),
			(2,'Cruz Galves'),
			(3,'Girasoles'),
			(4,'Rosendo Castro'),
			(5,'Ruben Baez'),
			(6,'Cruz Medina'),
			(7,'Tlaxcaltecas'),
			(8,'Aztecas'),
			(9,'Toltecas'),
			(10,'Mayas')

insert Colonia(id,idCalle,nombre)
	values	(1,1,'La campana'),
			(2,2,'Obispo'),
			(3,3,'Alamedas'),
			(4,4,'Canaco'),
			(5,5,'Nakayama'),
			(6,6,'Rincon Real'),
			(7,7,'San Juan'),
			(8,8,'Villa Bonita'),
			(9,9,'Tulipanes'),
			(10,10,'Montebello')

insert Direccion(id,idCiudad,idColonia,codigoPostal,numero)
	values	(1,1,1,80019,2356),
			(2,2,2,80297,6589),
			(3,3,3,80058,7689),
			(4,4,4,80009,2350),
			(5,5,5,80184,1432),
			(6,6,6,90324,9087),
			(7,7,7,25986,4532),
			(8,8,8,12097,3456),
			(9,9,9,87245,2312),
			(10,10,10,23091,8084)

insert DireccionTutor(idDireccion,idTutor)
	values	(1,11),
			(2,12),
			(3,13),
			(4,14),
			(5,15),
			(6,16),
			(7,17),
			(8,18),
			(9,19),
			(10,20)

insert TrabajoTutor(RFC,nombre,idDireccion)
	values	('JKSFKASFO340','Coca-cola',1),
			('SDFJLKSDJFWE','Bimbo',2),
			('ASDKLAL23142','Gamesa',3),
			('SFSLKDFSFSLK','Coppel',4),
			('SDJK35893450','Parisina',5),
			('KLQWERLKFLQ4','Michoacana',6),
			('QEFKQPDLFKQE','Calzapato',7),
			('DFMLSJD38493','Lala',8),
			('LPSKFNFJWKEK','Soriana',9),
			('2JLDFKWF9834','Ley',10)

insert Tutor(idPersona,idTrabajoTutor)
	values	(11,'JKSFKASFO340'),
			(12,'SDFJLKSDJFWE'),
			(13,'ASDKLAL23142'),
			(14,'SFSLKDFSFSLK'),
			(15,'SDJK35893450'),
			(16,'KLQWERLKFLQ4'),
			(17,'QEFKQPDLFKQE'),
			(18,'DFMLSJD38493'),
			(19,'LPSKFNFJWKEK'),
			(20,'2JLDFKWF9834')

insert AlumnoTutor(idAlumno,idTutor)
	values	(1,11),
			(2,12),
			(3,13),
			(4,14),
			(5,15),
			(6,16),
			(7,17),
			(8,18),
			(9,19),
			(10,20)

insert Telefono(id,numero)
	values	(1,'6671092356'),
			(2,'6823599349'),
			(3,'6234992358'),
			(4,'6752834882'),
			(5,'6672348829'),
			(6,'6237482934'),
			(7,'6723482348'),
			(8,'6723482349'),
			(9,'6776823482'),
			(10,'6621234234'),
			(11,'6671092345'),
			(12,'6823599364'),
			(13,'6234994564'),
			(14,'6752834897'),
			(15,'6672336783'),
			(16,'6296784546'),
			(17,'6723487545'),
			(18,'6723856788'),
			(19,'6776856856'),
			(20,'6621298765')

insert TelefonoTutor(idTelefono,idTutor,tipo)
	values	(1,11,'Celular'),
			(2,12,'Celular'),
			(3,13,'Celular'),
			(4,14,'Celular'),
			(5,15,'Celular'),
			(6,16,'Celular'),
			(7,17,'Celular'),
			(8,18,'Celular'),
			(9,19,'Celular'),
			(10,20,'Celular')

insert Nutriologo(id,idPersona,idTelefono)
	values	(1,21,11),
			(2,22,12),
			(3,23,13),
			(4,24,14),
			(5,25,15),
			(6,26,16),
			(7,27,17),
			(8,28,18),
			(9,29,19),
			(10,30,20)