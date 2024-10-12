CREATE SCHEMA db_adm;
CREATE TABLE id_user (
id INT PRIMARY KEY,
FName varchar (40),
LName varchar (50),
user_ varchar(10));

CREATE TABLE email_user(
id INT PRIMARY KEY,
email_user_ varchar(100));

CREATE TABLE user_role(
id INT PRIMARY KEY,
role_ varchar(10));


INSERT INTO id_user VALUES 
(1,"Federico", "Gaspari", "FGASPARI"),
(2,"Soledad", "Grondona", "SGRONDONA"),
(3,"Miguel", "Quispe", "MQUISPE"),
(4,"Valentina", "Perez", "VPEREZ"),
(5,"Ramiro", "Lezama", "RLEZAMA"),
(6,"Antonio", "Fermin", "AFERMIN"),
(7,"Ulises", "Lopez", "ULOPEZ"),
(8,"Maria", "Carmona", "MCARMONA");


SELECT * FROM id_user;

INSERT INTO email_user values 
(1,"FGASPARI@ROWING.COM.AR"),
(2,"SGRONDONA@ROWING.COM.AR"),
(3,"MQUISPE@ROWING.COM.AR"),
(4,"VPEREZ@ROWING.COM.AR"),
(5,"RLEZAMA@ROWING.COM.AR"),
(6,"AFERMIN@ROWING.COM.AR"),
(7,"ULOPEZ@ROWING.COM.AR"),
(8,"MCARMONA@ROWING.COM.AR");

SELECT * FROM email_user;


INSERT INTO user_role values 
(1, "ADMIN"),
(2, "ADMIN"),
(3, "ADMIN"),
(4, "NORMAL"),
(5,"ADMIN"),
(6,"PRO"),
(7,"PRO"),
(8,"PRO");