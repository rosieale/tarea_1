create database Tarea1

create Table Dia(
	IdDia varchar(2) PRIMARY KEY NOT NULL,
	Dia varchar(20) NOT NULL,
);

create Table Datos(
	IdDatos varchar(3) PRIMARY KEY NOT NULL,
	Horas int NOT NULL,
	Horario varchar(20) NOT NULL
);

create Table TiposdePeriodos(
	idPeriodo varchar(3) PRIMARY KEY NOT NULL,
	NombredePeriodo varchar(20) NOT NULL,
	IdDia varchar(2) CONSTRAINT fk_dia_tipo FOREIGN KEY(IdDia) REFERENCES Dia(IdDia) NOT NULL,
	IdDatos varchar(3) CONSTRAINT fk_datos_tipo FOREIGN KEY(IdDatos) REFERENCES Datos(idDatos) NOT NULL
);

