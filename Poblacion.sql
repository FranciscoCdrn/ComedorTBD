use Comedor

/*Poblacion de Las tablas*/

insert Alergia(id,alimento)
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
			
				/* TIPOS DE COMIDA */
INSERT INTO TipoComida(id,tipo)
VALUES('01','Comida');
INSERT INTO TipoComida(id,tipo)
VALUES('02','Postre');
INSERT INTO TipoComida(id,tipo)
VALUES('03','Bebida');
SELECT * FROM Ingrediente
				

				/*INFORMACION NUTRICIONAL */
	/*COMIDAS*/
/* Quesadilla con Carne y Queso */
INSERT INTO InformacionNutriocional(id,calorias,carbohidratos,grasas,proteinas)
VALUES('01','596','37','35','32');
/*Pasta con Salsa de Carne*/
INSERT INTO InformacionNutriocional(id,calorias,carbohidratos,grasas,proteinas)
VALUES('02','329','34','13','20');
/*Ensalada de Atun*/
INSERT INTO InformacionNutriocional(id,calorias,carbohidratos,grasas,proteinas)
VALUES('03','287','10','17','22');
/*Huevos Revueltos con Queso*/
INSERT INTO InformacionNutriocional(id,calorias,carbohidratos,grasas,proteinas)
VALUES('04','140','2','10','9');
/*Caldo de Pollo*/
INSERT INTO InformacionNutriocional(id,calorias,carbohidratos,grasas,proteinas)
VALUES('05','140','2','10','9');
/*Nachos de Carne de Res, Frijoles y Queso*/
INSERT INTO InformacionNutriocional(id,calorias,carbohidratos,grasas,proteinas)
VALUES('06','787','53','46','40');
/*Papas a la Francesa*/
INSERT INTO InformacionNutriocional(id,calorias,carbohidratos,grasas,proteinas)
VALUES('07','223','26','11','3');
/*Pizza de Queso*/
INSERT INTO InformacionNutriocional(id,calorias,carbohidratos,grasas,proteinas)
VALUES('08','237','26','10','10');
/*Burrito de Carne*/
INSERT INTO InformacionNutriocional(id,calorias,carbohidratos,grasas,proteinas)
VALUES('09','430','34','20','27');
/*Hamburguesa con Queso*/
INSERT INTO InformacionNutriocional(id,calorias,carbohidratos,grasas,proteinas)
VALUES('10','317','28','15','17');


	/*BEBIDAS*/
/*AGUA EMBOTELLADA*/
INSERT INTO InformacionNutriocional(id,calorias,carbohidratos,grasas,proteinas)
VALUES('20','0','0','0','0');
/*Jugo de Manzana*/
INSERT INTO InformacionNutriocional(id,calorias,carbohidratos,grasas,proteinas)
VALUES('21','117','36','1','1');
/*Jugo de Naranja*/
INSERT INTO InformacionNutriocional(id,calorias,carbohidratos,grasas,proteinas)
VALUES('22','112','25','1','2');
/*Jugo de Zanahoria*/
INSERT INTO InformacionNutriocional(id,calorias,carbohidratos,grasas,proteinas)
VALUES('23','94','23','1','2');
/*Jugo de Uva*/
INSERT INTO InformacionNutriocional(id,calorias,carbohidratos,grasas,proteinas)
VALUES('24','154','38','1','1');
/*Agua de Jamaica*/
INSERT INTO InformacionNutriocional(id,calorias,carbohidratos,grasas,proteinas)
VALUES('25','69','18','1','1');
/*Batido de Chocolate*/
INSERT INTO InformacionNutriocional(id,calorias,carbohidratos,grasas,proteinas)
VALUES('26','478','77','14','13');
/*Batido de Vainilla*/
INSERT INTO InformacionNutriocional(id,calorias,carbohidratos,grasas,proteinas)
VALUES('27','556','74','25','13');
/*Limonada*/
INSERT INTO InformacionNutriocional(id,calorias,carbohidratos,grasas,proteinas)
VALUES('28','99','1','26','1');
/*Soda*/
INSERT INTO InformacionNutriocional(id,calorias,carbohidratos,grasas,proteinas)
VALUES('29','144','36','1','1');

	/*POSTRES*/
/*Panqueques de Mantequilla*/
INSERT INTO InformacionNutriocional(id,calorias,carbohidratos,grasas,proteinas)
VALUES('30','144','36','4','3');
/*Pan Dulce*/
INSERT INTO InformacionNutriocional(id,calorias,carbohidratos,grasas,proteinas)
VALUES('31','223','31','10','4');
/*Waffle Sencillo*/
INSERT INTO InformacionNutriocional(id,calorias,carbohidratos,grasas,proteinas)
VALUES('32','121','19','4','3');
/*Crepe Relleno de Frutas*/
INSERT INTO InformacionNutriocional(id,calorias,carbohidratos,grasas,proteinas)
VALUES('33','144','21','5','4');
/*Brownie*/
INSERT INTO InformacionNutriocional(id,calorias,carbohidratos,grasas,proteinas)
VALUES('34','129','21','5','2');
/*Donas Glaseadas con Chocolate*/
INSERT INTO InformacionNutriocional(id,calorias,carbohidratos,grasas,proteinas)
VALUES('35','250','34','12','3');
/*Helado de Vainilla*/
INSERT INTO InformacionNutriocional(id,calorias,carbohidratos,grasas,proteinas)
VALUES('36','145','17','8','3');
/*Muffin de Arandanos*/
INSERT INTO InformacionNutriocional(id,calorias,carbohidratos,grasas,proteinas)
VALUES('37','313','54','7','6');
/*Pudin de Chocolate*/
INSERT INTO InformacionNutriocional(id,calorias,carbohidratos,grasas,proteinas)
VALUES('38','157','26','5','3');
/*Yogur Congelado*/
INSERT INTO InformacionNutriocional(id,calorias,carbohidratos,grasas,proteinas)
VALUES('39','214','40','3','9');

				/*	COMIDA	*/
INSERT INTO Comida(id,nombre,descripcion,idTipoComida,idInformacionNutricional,costo)
VALUES('01','Quesadilla','Una quesadilla','01','01','50');
INSERT INTO Comida(id,nombre,descripcion,idTipoComida,idInformacionNutricional,costo)
VALUES('02','Pasta','Pasta preparada','01','02','100');
INSERT INTO Comida(id,nombre,descripcion,idTipoComida,idInformacionNutricional,costo)
VALUES('03','Ensalada Atún','ensalada','01','03','35');
INSERT INTO Comida(id,nombre,descripcion,idTipoComida,idInformacionNutricional,costo)
VALUES('04','Huevos','Tortilla','01','04','55');
INSERT INTO Comida(id,nombre,descripcion,idTipoComida,idInformacionNutricional,costo)
VALUES('05','Caldo','Caldito de pollo','01','05','65');
INSERT INTO Comida(id,nombre,descripcion,idTipoComida,idInformacionNutricional,costo)
VALUES('06','Nachos','Nachos con carne','01','06','75');
INSERT INTO Comida(id,nombre,descripcion,idTipoComida,idInformacionNutricional,costo)
VALUES('07','Papas','Orden ','01','07','35');
INSERT INTO Comida(id,nombre,descripcion,idTipoComida,idInformacionNutricional,costo)
VALUES('08','Pizza de Queso','2 piezas por persona','01','08','50');
INSERT INTO Comida(id,nombre,descripcion,idTipoComida,idInformacionNutricional,costo)
VALUES('09','Burrito','2 Burritos','01','09','45');
INSERT INTO Comida(id,nombre,descripcion,idTipoComida,idInformacionNutricional,costo)
VALUES('10','Hamburguesa','Hamburguesa','01','10','65');

				/*	BEBIDAS	*/
INSERT INTO Comida(id,nombre,descripcion,idTipoComida,idInformacionNutricional,costo)
VALUES('20','Agua','Agua','02','20','15');
INSERT INTO Comida(id,nombre,descripcion,idTipoComida,idInformacionNutricional,costo)
VALUES('21','Jugo Manzanas','jugo','02','21','20');
INSERT INTO Comida(id,nombre,descripcion,idTipoComida,idInformacionNutricional,costo)
VALUES('22','Jugo Naranja','Vaso','02','22','30');
INSERT INTO Comida(id,nombre,descripcion,idTipoComida,idInformacionNutricional,costo)
VALUES('23','Jugo Zanahoria','Vaso','02','23','30');
INSERT INTO Comida(id,nombre,descripcion,idTipoComida,idInformacionNutricional,costo)
VALUES('24','Jugo de Uva','Vaso de Jugo de Uva','02','24','30');
INSERT INTO Comida(id,nombre,descripcion,idTipoComida,idInformacionNutricional,costo)
VALUES('25','Agua de Jamica','Jamaica preparada fresca','02','25','25');
INSERT INTO Comida(id,nombre,descripcion,idTipoComida,idInformacionNutricional,costo)
VALUES('26','Chocolate','Batido','02','26','40');
INSERT INTO Comida(id,nombre,descripcion,idTipoComida,idInformacionNutricional,costo)
VALUES('27','Vainilla','Batido','02','27','40');
INSERT INTO Comida(id,nombre,descripcion,idTipoComida,idInformacionNutricional,costo)
VALUES('28','Limonada','Limonada fresca','02','28','25');
INSERT INTO Comida(id,nombre,descripcion,idTipoComida,idInformacionNutricional,costo)
VALUES('29','Soda','Botella de Soda','02','29','20');

				/*	POSTRES	*/
INSERT INTO Comida(id,nombre,descripcion,idTipoComida,idInformacionNutricional,costo)
VALUES('30','Panqueques','mantequilla','03','30','25');
INSERT INTO Comida(id,nombre,descripcion,idTipoComida,idInformacionNutricional,costo)
VALUES('31','Pan','dulce','03','31','20');
INSERT INTO Comida(id,nombre,descripcion,idTipoComida,idInformacionNutricional,costo)
VALUES('32','Waffle Sencillo','Waffle chido de postre','03','32','25');
INSERT INTO Comida(id,nombre,descripcion,idTipoComida,idInformacionNutricional,costo)
VALUES('33','CrepA','con frutas','03','33','45');
INSERT INTO Comida(id,nombre,descripcion,idTipoComida,idInformacionNutricional,costo)
VALUES('34','Brownie','Brownie sencillo','03','34','20');
INSERT INTO Comida(id,nombre,descripcion,idTipoComida,idInformacionNutricional,costo)
VALUES('35','Donas','Donas Glaseadas con Chocolate','03','35','15');
INSERT INTO Comida(id,nombre,descripcion,idTipoComida,idInformacionNutricional,costo)
VALUES('36','Vainilla','Cono de Helado','03','36','20');
INSERT INTO Comida(id,nombre,descripcion,idTipoComida,idInformacionNutricional,costo)
VALUES('37','Muffins','especial','03','37','20');
INSERT INTO Comida(id,nombre,descripcion,idTipoComida,idInformacionNutricional,costo)
VALUES('38','Pudin','Chocolate','03','38','30');
INSERT INTO Comida(id,nombre,descripcion,idTipoComida,idInformacionNutricional,costo)
VALUES('39','Yogur Congelado','Yogur','03','39','25');

				/* INGREDIENTE */
INSERT INTO Ingrediente(id,nombre,descripcion)
VALUES('01','Papa','Pieza de Papa');
INSERT INTO Ingrediente(id,nombre,descripcion)
VALUES('02','Huevo','huevo');
INSERT INTO Ingrediente(id,nombre,descripcion)
VALUES('03','Harina','harina');
INSERT INTO Ingrediente(id,nombre,descripcion)
VALUES('04','Agua','agua');
INSERT INTO Ingrediente(id,nombre,descripcion)/**/
VALUES('05','Queso','queso para quesadillas');
INSERT INTO Ingrediente(id,nombre,descripcion)
VALUES('06','Pan','Pieza de pan');
INSERT INTO Ingrediente(id,nombre,descripcion)
VALUES('07','Salsa','salsa preparada');
INSERT INTO Ingrediente(id,nombre,descripcion)
VALUES('08','Condimentos','especias');
INSERT INTO Ingrediente(id,nombre,descripcion)
VALUES('09','Aceite','para cocina');
INSERT INTO Ingrediente(id,nombre,descripcion)
VALUES('10','Carnes','frescas');

				/* INVENTARIO */
INSERT INTO DetalleInventario(id,idIngrediente,cantidad)
VALUES('01','01','100');
INSERT INTO DetalleInventario(id,idIngrediente,cantidad)
VALUES('02','02','40');
INSERT INTO DetalleInventario(id,idIngrediente,cantidad)
VALUES('03','03','20');
INSERT INTO DetalleInventario(id,idIngrediente,cantidad)
VALUES('04','04','100');
INSERT INTO DetalleInventario(id,idIngrediente,cantidad)
VALUES('05','05','15');
INSERT INTO DetalleInventario(id,idIngrediente,cantidad)
VALUES('06','06','200');
INSERT INTO DetalleInventario(id,idIngrediente,cantidad)
VALUES('07','07','25');
INSERT INTO DetalleInventario(id,idIngrediente,cantidad)
VALUES('08','08','10');
INSERT INTO DetalleInventario(id,idIngrediente,cantidad)
VALUES('09','09','30');
INSERT INTO DetalleInventario(id,idIngrediente,cantidad)
VALUES('10','10','35');

			/*COMIDA INGREDIENTE*/
INSERT INTO ComidaIngrediente(idComida,idIngrediente,cantidad)
VALUES('1','05','2')
INSERT INTO ComidaIngrediente(idComida,idIngrediente,cantidad)
VALUES('2','07','3')
INSERT INTO ComidaIngrediente(idComida,idIngrediente,cantidad)
VALUES('3','08','1')
INSERT INTO ComidaIngrediente(idComida,idIngrediente,cantidad)
VALUES('4','01','3')
INSERT INTO ComidaIngrediente(idComida,idIngrediente,cantidad)
VALUES('5','07','2')
INSERT INTO ComidaIngrediente(idComida,idIngrediente,cantidad)
VALUES('6','10','4')
INSERT INTO ComidaIngrediente(idComida,idIngrediente,cantidad)
VALUES('7','01','4')
INSERT INTO ComidaIngrediente(idComida,idIngrediente,cantidad)
VALUES('8','05','4')
INSERT INTO ComidaIngrediente(idComida,idIngrediente,cantidad)
VALUES('9','10','3')
INSERT INTO ComidaIngrediente(idComida,idIngrediente,cantidad)
VALUES('10','10','5')

				/* MENU DIAS*/
INSERT INTO Menu(id,fecha,costo)
VALUES('01','01/01/2018','90');
INSERT INTO Menu(id,fecha,costo)
VALUES('02','02/01/2018','100');
INSERT INTO Menu(id,fecha,costo)
VALUES('03','03/01/2018','120');
INSERT INTO Menu(id,fecha,costo)
VALUES('04','04/01/2018','80');
INSERT INTO Menu(id,fecha,costo)
VALUES('05','05/01/2018','110');
INSERT INTO Menu(id,fecha,costo)
VALUES('06','08/01/2018','100');
INSERT INTO Menu(id,fecha,costo)
VALUES('07','09/01/2018','95');
INSERT INTO Menu(id,fecha,costo)
VALUES('08','10/01/2018','120');
INSERT INTO Menu(id,fecha,costo)
VALUES('09','11/01/2018','60');
INSERT INTO Menu(id,fecha,costo)
VALUES('10','12/01/2018','80');

				/* MENU COMIDAS */-------------------------------------------
	/*MENU 01*/
INSERT INTO MenuComida(idMenu,idComida)
VALUES('01','01');
INSERT INTO MenuComida(idMenu,idComida)
VALUES('01','20');
INSERT INTO MenuComida(idMenu,idComida)
VALUES('01','30');
	/*MENU 02*/
INSERT INTO MenuComida(idMenu,idComida)
VALUES('02','02');
INSERT INTO MenuComida(idMenu,idComida)
VALUES('02','21');
INSERT INTO MenuComida(idMenu,idComida)
VALUES('02','31');
	/*MENU 03*/
INSERT INTO MenuComida(idMenu,idComida)
VALUES('03','03');
INSERT INTO MenuComida(idMenu,idComida)
VALUES('03','22');
INSERT INTO MenuComida(idMenu,idComida)
VALUES('03','32');
	/*MENU 04*/
INSERT INTO MenuComida(idMenu,idComida)
VALUES('04','04');
INSERT INTO MenuComida(idMenu,idComida)
VALUES('04','23');
INSERT INTO MenuComida(idMenu,idComida)
VALUES('04','33');
	/*MENU 05*/
INSERT INTO MenuComida(idMenu,idComida)
VALUES('05','05');
INSERT INTO MenuComida(idMenu,idComida)
VALUES('05','24');
INSERT INTO MenuComida(idMenu,idComida)
VALUES('05','34');
	/*MENU 06*/
INSERT INTO MenuComida(idMenu,idComida)
VALUES('06','06');
INSERT INTO MenuComida(idMenu,idComida)
VALUES('06','25');
INSERT INTO MenuComida(idMenu,idComida)
VALUES('06','35');
	/*MENU 07*/
INSERT INTO MenuComida(idMenu,idComida)
VALUES('07','07');
INSERT INTO MenuComida(idMenu,idComida)
VALUES('07','26');
INSERT INTO MenuComida(idMenu,idComida)
VALUES('07','36');
	/*MENU 08*/
INSERT INTO MenuComida(idMenu,idComida)
VALUES('08','08');
INSERT INTO MenuComida(idMenu,idComida)
VALUES('08','27');
INSERT INTO MenuComida(idMenu,idComida)
VALUES('08','37');
	/*MENU 09*/
INSERT INTO MenuComida(idMenu,idComida)
VALUES('09','09');
INSERT INTO MenuComida(idMenu,idComida)
VALUES('09','28');
INSERT INTO MenuComida(idMenu,idComida)
VALUES('09','38');
	/*MENU 10*/
INSERT INTO MenuComida(idMenu,idComida)
VALUES('10','10');
INSERT INTO MenuComida(idMenu,idComida)
VALUES('10','29');
INSERT INTO MenuComida(idMenu,idComida)
VALUES('10','39');
select * from Menu
			/*MENU ESPECIAL*/
INSERT INTO MenuEspecial(idMenu,idAlumno,costo,costoExtra)
VALUES('1','2','90','30'); 
INSERT INTO MenuEspecial(idMenu,idAlumno,costo,costoExtra)
VALUES('7','1','95','30'); 
INSERT INTO MenuEspecial(idMenu,idAlumno,costo,costoExtra)
VALUES('8','3','120','30'); 
INSERT INTO MenuEspecial(idMenu,idAlumno,costo,costoExtra)
VALUES('10','4','80','30'); 
INSERT INTO MenuEspecial(idMenu,idAlumno,costo,costoExtra)
VALUES('6','5','100','30'); 
INSERT INTO MenuEspecial(idMenu,idAlumno,costo,costoExtra)
VALUES('9','9','60','30'); 
INSERT INTO MenuEspecial(idMenu,idAlumno,costo,costoExtra)
VALUES('5','6','110','30'); 
INSERT INTO MenuEspecial(idMenu,idAlumno,costo,costoExtra)
VALUES('4','7','80','30'); 
INSERT INTO MenuEspecial(idMenu,idAlumno,costo,costoExtra)
VALUES('3','10','120','30'); 
INSERT INTO MenuEspecial(idMenu,idAlumno,costo,costoExtra)
VALUES('2','8','100','30'); 
