/*TALLER DE BASE DE DATOS*/
/*BASE DE DATOS "COMEDOR ESCOLAR"*/
CREATE DATABASE Comedor
GO

USE Comedor
GO

/*CREACIÓN DE TABLAS*/

CREATE TABLE Adeudo(id int NOT NULL,
					idTutor int NOT NULL,
					idVentaCredito int NOT NULL,
					adeudoTotal money NOT NULL)
GO

CREATE TABLE Alergia(	id int NOT NULL,
						alimento varchar(15))
GO

CREATE TABLE Alumno(id int NOT NULL,
					idPersona int NOT NULL,
					edad tinyint NOT NULL,
					idNivel tinyint NOT NULL,
					grado tinyint NOT NULL)
GO

CREATE TABLE AlumnoAlergia(	idAlumno int NOT NULL,
							idAlergia int NOT NULL)
GO

CREATE TABLE AlumnoTutor(	idAlumno int NOT NULL,
							idTutor int NOT NULL)
GO

CREATE TABLE Calle(	id int NOT NULL,
					calle varchar(15) NOT NULL)
GO

CREATE TABLE Ciudad(	id int NOT NULL,
						nombre varchar(15) NOT NULL)
GO

CREATE TABLE Colonia(	id int NOT NULL,
						nombre varchar(15) NOT NULL,
						idCalle int NOT NULL)
GO

CREATE TABLE Comedor(	rfc varchar (12) NOT NULL,
						nombre varchar (15) NOT NULL,
						horario date NOT NULL,
						idDireccion int NOT NULL)
GO

CREATE TABLE Comida(id int NOT NULL,
					nombre varchar(15) NOT NULL,
					descripcion varchar(30) NOT NULL,
					idTipoComida tinyint NOT NULL,
					idInformacionNutricional int NOT NULL,
					costo money NOT NULL)
GO

CREATE TABLE ComidaIngrediente(	idComida int NOT NULL,
								idIngrediente int NOT NULL,
								cantidad int NOT NULL)
GO

CREATE TABLE DetalleInventario(	id int NOT NULL,
								idIngrediente int NOT NULL,
								cantidad int NOT NULL)
GO

CREATE TABLE Direccion(	id int NOT NULL,
						idCiudad int NOT NULL,
						idColonia int NOT NULL,
						numero int NOT NULL,
						codigoPostal int NOT NULL)
GO

CREATE TABLE DireccionTutor(idDireccion int NOT NULL,
							idTutor int NOT NULL)
GO

CREATE TABLE InformacionNutriocional(	id Int NOT NULL,
										calorias int NOT NULL,
										carbohidratos int NOT NULL,
										grasas int NOT NULL,
										proteinas int NOT NULL)
GO

CREATE TABLE Ingrediente(	id int NOT NULL,
							nombre varchar (15),
							descripcion varchar (30))
GO

CREATE TABLE Inventario(id int NOT NULL,
						idDetalleInventario int NOT NULL,
						fecha date NOT NULL)
GO

CREATE TABLE Menu(	id int NOT NULL,
					fecha date NOT NULL,
					costo money NOT NULL)
GO

CREATE TABLE MenuComida(idMenu int NOT NULL,
						idComida int NOT NULL)
GO

CREATE TABLE MenuEspecial(	idMenu int NOT NULL,
							idAlumno int NOT NULL,
							costo money NOT NULL,
							costoExtra money NOT NULL)
GO

CREATE TABLE Nivel(	id tinyint NOT NULL,
					nivel varchar (15))
GO

CREATE TABLE Nutriologo(id tinyint NOT NULL,
						idPersona int NOT NULL,
						idTelefono int NOT NULL)
GO

CREATE TABLE Pago(	id int NOT NULL,
					cantidad money NOT NULL,
					fecha date NOT NULL,
					idTutor int NOT NULL,
					idAdeudo int NOT NULL)
GO

CREATE TABLE Persona(	id int NOT NULL,
						RFC varchar (18) NOT NULL,
						nombre varchar (15) NOT NULL,
						apellido_pat varchar (15) NOT NULL,
						apellido_mat varchar (15) NOT NULL)
GO

CREATE TABLE Telefono(	id int NOT NULL,
						numero varchar (10) NOT NULL)
GO

CREATE TABLE TelefonoTutor(	idTelefono int NOT NULL,
							idTutor int NOT NULL,
							tipo varchar(9) NOT NULL)
GO

CREATE TABLE TipoComida(id tinyint NOT NULL,
						tipo varchar(15) NOT NULL)
GO

CREATE TABLE TrabajoTutor(	RFC varchar (12) NOT NULL,
							nombre varchar (15) NOT NULL,
							idDireccion int NOT NULL)
GO

CREATE TABLE Tutor(	idPersona int NOT NULL,
					idTrabajoTutor varchar (12) NOT NULL)
GO

CREATE TABLE  Venta(	id int NOT NULL,
						idTutor int NOT NULL,
						fecha date NOT NULL,
						idMenu int NOT NULL)
GO

CREATE TABLE  VentaCredito(	id int NOT NULL,
							idTutor int NOT NULL,
							fecha date NOT NULL,
							idMenu int NOT NULL)
GO

/*CREACIÓN DE LLAVES PRIMARIAS*/

ALTER TABLE Adeudo
ADD CONSTRAINT PK_Adeudo
PRIMARY KEY (id)
GO

ALTER TABLE Alergia
ADD CONSTRAINT PK_Alergia
PRIMARY KEY (id)
GO

ALTER TABLE Alumno
ADD CONSTRAINT PK_Alumno
PRIMARY KEY (id)
GO

ALTER TABLE Calle
ADD CONSTRAINT PK_Calle
PRIMARY KEY (id)
GO

ALTER TABLE Ciudad
ADD CONSTRAINT PK_Ciudad
PRIMARY KEY (id)
GO

ALTER TABLE Colonia
ADD CONSTRAINT PK_Colonia
PRIMARY KEY (id)
GO

ALTER TABLE Comedor
ADD CONSTRAINT PK_Comedor
PRIMARY KEY (rfc)
GO

ALTER TABLE Comida
ADD CONSTRAINT PK_Comida
PRIMARY KEY (id)
GO

ALTER TABLE DetalleInventario
ADD CONSTRAINT PK_DetalleInventario
PRIMARY KEY (id)
GO

ALTER TABLE Direccion
ADD CONSTRAINT PK_Direccion
PRIMARY KEY (id)
GO

ALTER TABLE InformacionNutriocional
ADD CONSTRAINT PK_InformacionNutriocional
PRIMARY KEY (id)
GO

ALTER TABLE Ingrediente
ADD CONSTRAINT PK_Ingrediente
PRIMARY KEY (id)
GO

ALTER TABLE Inventario
ADD CONSTRAINT PK_Inventario
PRIMARY KEY (id)
GO

ALTER TABLE Menu
ADD CONSTRAINT PK_Menu
PRIMARY KEY (id)
GO

ALTER TABLE MenuEspecial
ADD CONSTRAINT PK_MenuEspecial
PRIMARY KEY (idMenu)
GO

ALTER TABLE Nivel
ADD CONSTRAINT PK_Nivel
PRIMARY KEY (id)
GO

ALTER TABLE Nutriologo
ADD CONSTRAINT PK_Nutriologo
PRIMARY KEY (id)
GO

ALTER TABLE Pago
ADD CONSTRAINT PK_Pago
PRIMARY KEY (id)
GO

ALTER TABLE Persona
ADD CONSTRAINT PK_Persona
PRIMARY KEY (id)
GO

ALTER TABLE Telefono
ADD CONSTRAINT PK_Telefono
PRIMARY KEY (id)
GO

ALTER TABLE TipoComida
ADD CONSTRAINT PK_TipoComida
PRIMARY KEY (id)
GO

ALTER TABLE TrabajoTutor
ADD CONSTRAINT PK_TrabajoTutor
PRIMARY KEY (RFC)
GO

ALTER TABLE Tutor
ADD CONSTRAINT PK_Tutor
PRIMARY KEY (idPersona)
GO

ALTER TABLE Venta
ADD CONSTRAINT PK_Venta
PRIMARY KEY (id)
GO

ALTER TABLE VentaCredito
ADD CONSTRAINT PK_VentaCredito
PRIMARY KEY (id)
GO

/*CREACIÓN DE LLAVES FORANEAS*/

ALTER TABLE Adeudo
ADD CONSTRAINT FK_Adeudo_Tutor
FOREIGN KEY (idTutor) REFERENCES Tutor(idPersona)
GO

ALTER TABLE Adeudo
ADD CONSTRAINT FK_Adeudo_VentaCredito
FOREIGN KEY (idVentaCredito) REFERENCES VentaCredito(id)
GO

ALTER TABLE Alumno
ADD CONSTRAINT FK_Alumno_Persona
FOREIGN KEY (idPersona) REFERENCES Persona(id)
GO

ALTER TABLE Alumno
ADD CONSTRAINT FK_Alumno_Nivel
FOREIGN KEY (idNivel) REFERENCES Nivel(id)
GO

ALTER TABLE AlumnoAlergia
ADD CONSTRAINT FK_AlumnoAlergia_Alumno
FOREIGN KEY (idAlumno) REFERENCES Alumno(id)
GO

ALTER TABLE AlumnoAlergia
ADD CONSTRAINT FK_AlumnoAlergia_Alergia
FOREIGN KEY (idAlergia) REFERENCES Alergia(id)
GO

ALTER TABLE AlumnoTutor
ADD CONSTRAINT FK_AlumnoTutor_Alumno
FOREIGN KEY (idAlumno) REFERENCES Alumno(id)
GO

ALTER TABLE AlumnoTutor
ADD CONSTRAINT FK_AlumnoTutor_Tutor
FOREIGN KEY (idTutor) REFERENCES Tutor(idPersona)
GO

ALTER TABLE Colonia
ADD CONSTRAINT FK_Colonia_Calle
FOREIGN KEY (idCalle) REFERENCES Calle(id)
GO

ALTER TABLE Comedor
ADD CONSTRAINT FK_Comedor_Direccion
FOREIGN KEY (idDireccion) REFERENCES Direccion(id)
GO

ALTER TABLE Comida
ADD CONSTRAINT FK_Comida_TipoComida
FOREIGN KEY (idTipoComida) REFERENCES TipoComida(id)
GO

ALTER TABLE Comida
ADD CONSTRAINT FK_Comida_InformacionNutriocional
FOREIGN KEY (idInformacionNutricional) REFERENCES InformacionNutriocional(id)
GO

ALTER TABLE ComidaIngrediente
ADD CONSTRAINT FK_ComidaIngrediente_Comida
FOREIGN KEY (idComida) REFERENCES Comida(id)
GO

ALTER TABLE ComidaIngrediente
ADD CONSTRAINT FK_ComidaIngrediente_Ingrediente
FOREIGN KEY (idIngrediente) REFERENCES Ingrediente(id)
GO

ALTER TABLE DetalleInventario
ADD CONSTRAINT FK_DetalleInventario_Ingrediente
FOREIGN KEY (idIngrediente) REFERENCES Ingrediente(id)
GO

ALTER TABLE Direccion
ADD CONSTRAINT FK_Direccion_Ciudad
FOREIGN KEY (idCiudad) REFERENCES Ciudad(id)
GO

ALTER TABLE Direccion
ADD CONSTRAINT FK_Direccion_Colonia
FOREIGN KEY (idColonia) REFERENCES Colonia(id)
GO

ALTER TABLE DireccionTutor
ADD CONSTRAINT FK_DireccionTutor_Direccion
FOREIGN KEY (idDireccion) REFERENCES Direccion(id)
GO

ALTER TABLE DireccionTutor
ADD CONSTRAINT FK_DireccionTutor_Tutor
FOREIGN KEY (idTutor) REFERENCES Tutor(idPersona)
GO

ALTER TABLE Inventario
ADD CONSTRAINT FK_Inventario_DetalleInventario
FOREIGN KEY (idDetalleInventario) REFERENCES DetalleInventario(id)
GO

ALTER TABLE MenuComida
ADD CONSTRAINT FK_MenuComida_Menu
FOREIGN KEY (idMenu) REFERENCES Menu(id)
GO

ALTER TABLE MenuComida
ADD CONSTRAINT FK_MenuComida_Comida
FOREIGN KEY (idComida) REFERENCES Comida(id)
GO

ALTER TABLE MenuEspecial
ADD CONSTRAINT FK_MenuEspecial_Menu
FOREIGN KEY (idMenu) REFERENCES Menu(id)
GO

ALTER TABLE MenuEspecial
ADD CONSTRAINT FK_MenuEspecial_Alumno
FOREIGN KEY (idAlumno) REFERENCES Alumno(id)
GO

ALTER TABLE Nutriologo
ADD CONSTRAINT FK_Nutriologo_Persona
FOREIGN KEY (idPersona) REFERENCES Persona(id)
GO

ALTER TABLE Nutriologo
ADD CONSTRAINT FK_Nutriologo_Telefono
FOREIGN KEY (idTelefono) REFERENCES Telefono(id)
GO

ALTER TABLE Pago
ADD CONSTRAINT FK_Pago_Tutor
FOREIGN KEY (idTutor) REFERENCES Tutor(idPersona)
GO

ALTER TABLE Pago
ADD CONSTRAINT FK_Pago_Adeudo
FOREIGN KEY (idAdeudo) REFERENCES Adeudo(id)
GO

ALTER TABLE TelefonoTutor
ADD CONSTRAINT FK_TelefonoTutor_Telefono
FOREIGN KEY (idTelefono) REFERENCES Telefono(id)
GO

ALTER TABLE TelefonoTutor
ADD CONSTRAINT FK_TelefonoTutor_Tutor
FOREIGN KEY (idTutor) REFERENCES Tutor(idPersona)
GO

ALTER TABLE TrabajoTutor
ADD CONSTRAINT FK_TrabajoTutor_Direccion
FOREIGN KEY (idDireccion) REFERENCES Direccion(id)
GO

ALTER TABLE Tutor
ADD CONSTRAINT FK_Tutor_Persona
FOREIGN KEY (idPersona) REFERENCES Persona(id)
GO

ALTER TABLE Tutor
ADD CONSTRAINT FK_Tutor_TrabajoTutor
FOREIGN KEY (idTrabajoTutor) REFERENCES TrabajoTutor(RFC)
GO

ALTER TABLE Venta
ADD CONSTRAINT FK_Venta_Tutor
FOREIGN KEY (idTutor) REFERENCES Tutor(idPersona)
GO

ALTER TABLE Venta
ADD CONSTRAINT FK_Venta_Menu
FOREIGN KEY (idMenu) REFERENCES Menu(id)
GO

ALTER TABLE VentaCredito
ADD CONSTRAINT FK_VentaCredito_Tutor
FOREIGN KEY (idTutor) REFERENCES Tutor(idPersona)
GO

ALTER TABLE VentaCredito
ADD CONSTRAINT FK_VentaCredito_Menu
FOREIGN KEY (idMenu) REFERENCES Menu(id)
GO

/*CREACIÓN DE INDICES*/

CREATE NONCLUSTERED INDEX IX_Adeudo_Tutor
ON Adeudo (idTutor)
GO

CREATE NONCLUSTERED INDEX IX_Adeudo_VentaCredito
ON  Adeudo (idVentaCredito)
GO

CREATE NONCLUSTERED INDEX IX_Alumno_Persona
ON Alumno (idPersona)
GO

CREATE NONCLUSTERED INDEX IX_Alumno_Nivel
ON Alumno (idNivel)
GO

CREATE NONCLUSTERED INDEX IX_AlumnoAlergia_Alumno
ON AlumnoAlergia (idAlumno)
GO

CREATE NONCLUSTERED INDEX IX_AlumnoAlergia_Alergia
ON AlumnoAlergia (idAlergia)
GO

CREATE NONCLUSTERED INDEX IX_AlumnoTutor_Alumno
ON AlumnoTutor (idAlumno)
GO

CREATE NONCLUSTERED INDEX IX_AlumnoTutor_Tutor
ON AlumnoTutor (idTutor)
GO

CREATE NONCLUSTERED INDEX IX_Colonia_Calle
ON Colonia (idCalle) 
GO

CREATE NONCLUSTERED INDEX IX_Comedor_Direccion
ON Comedor (idDireccion)
GO

CREATE NONCLUSTERED INDEX IX_Comida_TipoComida
ON Comida (idTipoComida) 
GO

CREATE NONCLUSTERED INDEX IX_Comida_InformacionNutriocional
ON Comida (idInformacionNutricional)
GO

CREATE NONCLUSTERED INDEX IX_ComidaIngrediente_Comida
ON ComidaIngrediente (idComida)
GO

CREATE NONCLUSTERED INDEX IX_ComidaIngrediente_Ingrediente
ON ComidaIngrediente (idIngrediente)
GO

CREATE NONCLUSTERED INDEX IX_DetalleInventario_Ingrediente
ON DetalleInventario (idIngrediente)
GO

CREATE NONCLUSTERED INDEX IX_Direccion_Ciudad
ON Direccion (idCiudad)
GO

CREATE NONCLUSTERED INDEX IX_Direccion_Colonia
ON Direccion (idColonia)
GO

CREATE NONCLUSTERED INDEX IX_DireccionTutor_Direccion
ON DireccionTutor (idDireccion)
GO

CREATE NONCLUSTERED INDEX IX_DireccionTutor_Tutor
ON DireccionTutor (idTutor)
GO

CREATE NONCLUSTERED INDEX IX_Inventario_DetalleInventario
ON Inventario (idDetalleInventario)
GO

CREATE NONCLUSTERED INDEX IX_MenuComida_Menu
ON MenuComida (idMenu)
GO

CREATE NONCLUSTERED INDEX IX_MenuComida_Comida
ON MenuComida (idComida)
GO

CREATE NONCLUSTERED INDEX IX_MenuEspecial_Menu
ON MenuEspecial (idMenu)
GO

CREATE NONCLUSTERED INDEX IX_MenuEspecial_Alumno
ON MenuEspecial (idAlumno)
GO

CREATE NONCLUSTERED INDEX IX_Nutriologo_Persona
ON Nutriologo (idPersona)
GO

CREATE NONCLUSTERED INDEX IX_Nutriologo_Telefono
ON Nutriologo (idTelefono)
GO

CREATE NONCLUSTERED INDEX IX_Pago_Tutor
ON Pago (idTutor)
GO

CREATE NONCLUSTERED INDEX IX_Pago_Adeudo
ON Pago (idAdeudo)
GO

CREATE NONCLUSTERED INDEX IX_TelefonoTutor_Telefono
ON TelefonoTutor (idTelefono)
GO

CREATE NONCLUSTERED INDEX IX_TelefonoTutor_Tutor
ON TelefonoTutor (idTutor)
GO

CREATE NONCLUSTERED INDEX IX_TrabajoTutor_Direccion
ON TrabajoTutor (idDireccion)
GO

CREATE NONCLUSTERED INDEX IX_Tutor_Persona
ON Tutor (idPersona)
GO

CREATE NONCLUSTERED INDEX IX_Tutor_TrabajoTutor
ON Tutor (idTrabajoTutor)
GO

CREATE NONCLUSTERED INDEX IX_Venta_Tutor
ON Venta (idTutor)
GO

CREATE NONCLUSTERED INDEX IX_Venta_Menu
ON Venta (idMenu)
GO

CREATE NONCLUSTERED INDEX IX_VentaCredito_Tutor
ON VentaCredito (idTutor)
GO

CREATE NONCLUSTERED INDEX IX_VentaCredito_Menu
ON VentaCredito (idMenu) 
GO

/*CREACIÓN DE RESTRICCIONES*/

ALTER TABLE Adeudo
ADD CONSTRAINT UQ_Adeudo_Tutor
UNIQUE (idTutor)
GO

ALTER TABLE Adeudo
ADD CONSTRAINT CK_Adeudo_AdeudoTotal
CHECK (adeudoTotal>=0)
GO

ALTER TABLE Alumno
ADD CONSTRAINT UQ_Alumno_Persona
UNIQUE (idPersona)
GO

ALTER TABLE Alumno
ADD CONSTRAINT CK_Alumno_Edad
CHECK (edad>0)
GO

ALTER TABLE Alumno
ADD CONSTRAINT CK_Alumno_Nivel
CHECK (idNivel>0 AND idNivel<5)
GO

ALTER TABLE Alumno
ADD CONSTRAINT CK_Alumno_Grado
CHECK (grado>0 AND grado<7)
GO

ALTER TABLE AlumnoTutor
ADD CONSTRAINT UQ_AlumnoTutor_Alumno
UNIQUE (idAlumno)
GO

ALTER TABLE Comedor
ADD CONSTRAINT UQ_Comedor_Nombre
UNIQUE (nombre)
GO

ALTER TABLE Comida
ADD CONSTRAINT CK_Comida_TipoComida
CHECK (idTipoComida>0 AND idTipoComida<4)
GO

ALTER TABLE Comida
ADD CONSTRAINT CK_Comida_Costo
CHECK (costo>=0)
GO

ALTER TABLE ComidaIngrediente
ADD CONSTRAINT CK_ComidaIngrediente_Cantidad
CHECK (cantidad>=0)
GO

ALTER TABLE DetalleInventario
ADD CONSTRAINT UQ_DetalleInventario_Ingrediente
UNIQUE (idIngrediente)
GO

ALTER TABLE DetalleInventario
ADD CONSTRAINT CK_DetalleInventario_Cantidad
CHECK (cantidad>=0)
GO

ALTER TABLE InformacionNutriocional
ADD CONSTRAINT CK_InformacionNutriocional_Calorias
CHECK (calorias>=0)
GO

ALTER TABLE InformacionNutriocional
ADD CONSTRAINT CK_InformacionNutriocional_Carbohidratos
CHECK (carbohidratos>=0)
GO

ALTER TABLE InformacionNutriocional
ADD CONSTRAINT CK_InformacionNutriocional_Grasas
CHECK (grasas>=0)
GO

ALTER TABLE InformacionNutriocional
ADD CONSTRAINT CK_InformacionNutriocional_Proteinas
CHECK (proteinas>=0)
GO

ALTER TABLE Ingrediente
ADD CONSTRAINT UQ_Ingrediente_Nombre
UNIQUE (nombre)
GO

ALTER TABLE Menu
ADD CONSTRAINT CK_Menu_Costo
CHECK (costo>=0)
GO

ALTER TABLE MenuEspecial
ADD CONSTRAINT CK_MenuEspecial_Costo
CHECK (costo>=0)
GO

ALTER TABLE MenuEspecial
ADD CONSTRAINT CK_MenuEspecial_CostoExtra
CHECK (costoExtra>=0)
GO

ALTER TABLE Nivel
ADD CONSTRAINT CK_Nivel_Nivel
CHECK (nivel='Preescolar' AND nivel='Primaria' AND nivel='Secundaria' AND nivel='Preparatoria')
GO

ALTER TABLE Nutriologo
ADD CONSTRAINT UQ_Nutriologo_Persona
UNIQUE (idPersona)
GO

ALTER TABLE Nutriologo
ADD CONSTRAINT UQ_Nutriologo_Telefono
UNIQUE (idTelefono)
GO

ALTER TABLE Pago
ADD CONSTRAINT CK_Pago_Cantidad
CHECK (cantidad>=0)
GO

ALTER TABLE Persona
ADD CONSTRAINT UQ_Persona_RFC
UNIQUE (RFC)
GO

ALTER TABLE Telefono
ADD CONSTRAINT UQ_Telefono_Numero
UNIQUE (numero)
GO

ALTER TABLE TipoComida
ADD CONSTRAINT CK_TipoComida_Tipo
CHECK (tipo='Comida' AND tipo='Postre' AND tipo='Bebida')
GO
