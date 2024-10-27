create database RedMedical;
use Redmedical;


create table Pacientes (
	PxID INT NOT NULL auto_increment,
    Name varchar (25)not null,
    Apellido varchar (30) not null,
    Dirección varchar (100) not null,
    Edad varchar (3),
	DNI INT NOT NULL,
    PRIMARY KEY (PxID)
);

INSERT INTO pacientes (Name, Apellido, Dirección, DNI) VALUES
('Juan', 'Pérez', 'Calle Falsa 123, Ciudad', 12345678),
('María', 'Gómez', 'Avenida Siempre Viva 456, Ciudad', 23456789),
('Luis', 'Martínez', 'Calle de la Paz 789, Ciudad', 34567890);

UPDATE pacientes 
SET edad = 23 
where PxId = 1;

UPDATE pacientes 
SET edad = 25
where PxId = 3;

UPDATE pacientes 
SET edad = 30
where PxId = 2;

SELECT * FROM Pacientes;
    


    
create table Cobertura(
	CoberturaID INT NOT NULL auto_increment,
    PxDNI INT NOT NULL,
    Empresa varchar (25) not null,
    Plan varchar (15) not null,
    PRIMARY KEY (CoberturaID),
    foreign key (PxDNI)references pacientes (PxID)
    
);

ALTER TABLE COBERTURA ADD DNI INT NOT NULL;
ALTER TABLE PACIENTES ADD INDEX idx_px (PxID asc);


INSERT INTO Cobertura (PxDNI, Empresa, Plan)VALUES
(1,"SWISS MEDICAL", "SMG20"),
(3,"OSDE", "210"),
(2,"MEDICUS", "PLAN CELESTE");







CREATE TABLE Diagnosticos (
	DxID INT NOT NULL AUTO_INCREMENT,
    Diagnostico VARCHAR (30),
    PRIMARY KEY (DxID)
);


INSERT INTO Diagnosticos (Diagnostico) VALUES
("ACIDOSIS LACTICA TIPO B"),
("PANCREATITIS"),
("ESCLEROSIS MULTIPLE"),
("ARTRITIS"),
("GASTROENTERITIS");

SELECT * FROM DIAGNOSTICOS;



CREATE TABLE TRATAMIENTOS (
	TratamientosID INT NOT NULL AUTO_INCREMENT,
    PxID INT NOT NULL,
	DxID INT NOT NULL,
    Tratamiento varchar (30),
    PRIMARY KEY (TratamientosID),
    FOREIGN KEY (PxID) references pacientes (PxID),
    FOREIGN KEY (DxID) references diagnosticos (DxID)
);


INSERT INTO Tratamientos (PxID, DxID, Tratamiento) Values 
(1,2, "Inyeccion de Fosforo"),
(2,5, "Dieta Liquida y Solucion Salina"),
(3,4, "Solo administrar analgesicos");

ALTER TABLE Tratamientos
MODIFY COLUMN Tratamiento varchar (50);


SELECT * FROM COBERTURA;
SELECT * FROM DIAGNOSTICOS;
SELECT * FROM PACIENTES;
SELECT * FROM TRATAMIENTOS ORDER BY DxID asc;


select t.PxID as PacienteID, t.Tratamiento as Tratamiento, p.Name as Nombre  from tratamientos t inner join pacientes p on t.PxID = p.PxId;
