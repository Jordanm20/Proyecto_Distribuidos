create database proyectobd;
use proyectobd;


CREATE TABLE localizacion (
  CodigoPostal INT NOT NULL,
  Numero INT NOT NULL,
  Calle_Principal VARCHAR(50) NOT NULL,
  Calle_Secundaria VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (CodigoPostal));
CREATE TABLE pastelero (
  CedulaPanadero VARCHAR(25) NOT NULL,
  Nombre VARCHAR(50) NOT NULL,
  telefono INT NULL DEFAULT NULL,
  Correo VARCHAR(50) NOT NULL,
  Contraseña VARCHAR(50) NOT NULL,
  Cod_postal INT NULL DEFAULT NULL,
  PRIMARY KEY (CedulaPanadero),
    FOREIGN KEY (Cod_postal)
    REFERENCES localizacion (CodigoPostal));
CREATE TABLE cliente (
  Cedula VARCHAR(25) NOT NULL,
  Nombre VARCHAR(50) NOT NULL,
  telefono INT NULL DEFAULT NULL,
  Correo VARCHAR(50) NOT NULL,
  Contraseña VARCHAR(50) NOT NULL,
  PRIMARY KEY (Cedula));
CREATE TABLE IF NOT EXISTS calificaciones (
    Id_calif VARCHAR(10) NOT NULL,
    Nota_cali FLOAT NOT NULL,
    Comentario VARCHAR(250) NULL DEFAULT NULL,
    Fecha DATE NULL DEFAULT NULL,
    cliente_Cedula VARCHAR(25) NOT NULL,
    Ced_Pas VARCHAR(25) NULL DEFAULT NULL,
    PRIMARY KEY (Id_calif),
    FOREIGN KEY (Ced_Pas)
        REFERENCES pastelero (CedulaPanadero),
    FOREIGN KEY (cliente_Cedula)
        REFERENCES cliente (Cedula));
CREATE TABLE categoria (
  Id_Categoria INT NOT NULL,
  Nombre_categoria VARCHAR(50) NOT NULL,
  PRIMARY KEY (Id_Categoria));
CREATE TABLE cuentabancaria (
  Numero_cuenta INT NOT NULL,
  Tipo_de_cuenta VARCHAR(25) NOT NULL,
  Ced_clie VARCHAR(25) NOT NULL,
  saldo float not null,
  PRIMARY KEY (Numero_cuenta),
    FOREIGN KEY (Ced_clie)
    REFERENCES cliente (Cedula));
CREATE TABLE pedido (
  Pedido_id VARCHAR(10) NOT NULL,
  Fecha DATE NOT NULL,
  Total FLOAT NOT NULL,
  Estado VARCHAR(45) NOT NULL,
  cliente_Cedula VARCHAR(25) NOT NULL,
  pastelero_CedulaPanadero VARCHAR(25) NOT NULL,
  calificado varchar(25),
  PRIMARY KEY (Pedido_id, cliente_Cedula),
    FOREIGN KEY (cliente_Cedula)
    REFERENCES cliente (Cedula),
    FOREIGN KEY (pastelero_CedulaPanadero)
    REFERENCES pastelero (CedulaPanadero));
CREATE TABLE producto (
  Prod_Id VARCHAR(25) NOT NULL,
  Nombre VARCHAR(50) NOT NULL,
  Canti INT NULL DEFAULT NULL,
  Precio FLOAT NOT NULL,
  Id_Cate INT NULL DEFAULT NULL,
  pastelero_CedulaPanadero VARCHAR(25) NOT NULL,
  PRIMARY KEY (Prod_Id),
    FOREIGN KEY (Id_Cate)
    REFERENCES categoria (Id_Categoria),
    FOREIGN KEY (pastelero_CedulaPanadero)
    REFERENCES pastelero (CedulaPanadero));
CREATE TABLE requerimiento_pedido_especial (
  Porciones INT NOT NULL,
  Tamaño FLOAT NULL DEFAULT NULL,
  Sabor VARCHAR(50) NOT NULL,
  pedido_Pedido_id VARCHAR(10) NOT NULL,
  pedido_cliente_Cedula VARCHAR(25) NOT NULL,
  PRIMARY KEY (pedido_Pedido_id),
    FOREIGN KEY (pedido_Pedido_id , pedido_cliente_Cedula)
    REFERENCES pedido (Pedido_id , cliente_Cedula));   
CREATE TABLE IF NOT EXISTS tarjeta_credito (
  Numerotarjeta INT NOT NULL,
  cvv VARCHAR(3) NOT NULL,
  Fecha_Exp DATE NOT NULL,
  Ced_clie VARCHAR(25) NOT NULL,
  PRIMARY KEY (Numerotarjeta),
    FOREIGN KEY (Ced_clie)
    REFERENCES cliente (Cedula));
CREATE TABLE IF NOT EXISTS Entrega_domicilio (
  Codigo INT NOT NULL,
  Domicilio VARCHAR(50) NOT NULL,
  Fecha DATE NOT NULL,
  hora TIME NOT NULL,
  Ced_clie VARCHAR(25) NOT NULL,
  pastelero_CedulaPanadero VARCHAR(25) NOT NULL,
  PRIMARY KEY (Codigo),
    FOREIGN KEY (Ced_clie)
    REFERENCES cliente (Cedula),
    FOREIGN KEY (pastelero_CedulaPanadero)
    REFERENCES pastelero (CedulaPanadero));


INSERT INTO Cliente  VALUES('093121344','Juan',239201,'juan@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('093732773','Pedro',283920,'pedro@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('123483837','Daniel',213020,'daniel@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('238485959','David',222111,'david@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('794737848','Paul',333222,'paul@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('983364848','Mabel',444111,'mabel@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('098332832','Daniela',444222,'daniela@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('098724923','Javier',555533,'javier@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('092737492','Xavier',986324,'xavier@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('293857398','Jordan',983749,'jordan@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('000000010','Juan',2392401,'juan1@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('000000011','Pedro',2839320,'pedr2o@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('000000012','Daniel',2213020,'dani3el@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('000000013','David',2223111,'david4@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('000000014','Paul',3332422,'paul5@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('000000015','Mabel',4434111,'mab4el@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('000000016','Daniela',4344222,'da4niela@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('000000017','Javier',5525533,'javi53er@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('000000018','Xavier',9864324,'xavier@43gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('000000019','Jordan',9833749,'jordan@g3mail.com','kjdskjds');
INSERT INTO Cliente  VALUES('000000020','Juan',2392201,'juan3@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('000000021','Pedro',2833920,'ped3ro@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('000000022','Daniel',2213020,'dan3iel@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('000000023','David',2222111,'davi3d43@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('000000024','Paul',3334222,'pau4l@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('000000025','Mabel',4434111,'ma3bel@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('000000026','Daniela',444222,'d45aniela@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('000000027','Javier',5555533,'javi34er@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('000000028','Xavier',9836324,'xavier4334@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('000000029','Jordan',9843749,'jordan@g43mail.com','kjdskjds');
INSERT INTO Cliente  VALUES('000000030','Juan',2392201,'juan@gmail.343com','kjdskjds');
INSERT INTO Cliente  VALUES('000000031','Pedro',2833920,'pedr343o@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('000000032','Daniel',2143020,'danie4334l@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('000000033','David',222111,'david34@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('000000034','Paul',3332222,'paul@gm34ail.com','kjdskjds');
INSERT INTO Cliente  VALUES('000000035','Mabel',4446111,'mabe3l@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('000000036','Daniela',4454222,'dan34iela@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('000000037','Javier',5556533,'javie222r@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('000000038','Xavier',9846324,'xavier343@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('000000039','Jordan',983749,'jordan232@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('000000040','Juan',2393201,'jua343n@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('000000041','Pedro',2834920,'pedr232o@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('000000042','Daniel',2163020,'danie232l@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('000000043','David',2221611,'davi324d@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('000000044','Paul',3335222,'paul@gma23233il.com','kjdskjds');
INSERT INTO Cliente  VALUES('000000045','Mabel',4444111,'mabe322l@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('000000046','Daniela',4434222,'dani32ela@gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('000000047','Javier',5555233,'javier@32gmail.com','kjdskjds');
INSERT INTO Cliente  VALUES('000000048','Xavier',9863124,'xavier@g32345mail.com','kjdskjds');
INSERT INTO Cliente  VALUES('000000049','Jordan',9837149,'jordan434@gmail.com','kjdskjds');

/************************************************************************/
INSERT INTO CuentaBancaria  VALUES(11111111,'Corriente','093121344',110.0);
INSERT INTO CuentaBancaria  VALUES(22222222,'Ahorro','093732773',110.0);
INSERT INTO CuentaBancaria  VALUES(33333333,'Corriente','093732773',110.0);
INSERT INTO CuentaBancaria  VALUES(44444444,'Ahorro','093121344',110.0);
INSERT INTO CuentaBancaria  VALUES(55555555,'Corriente','098332832',110.0);
INSERT INTO CuentaBancaria  VALUES(66666666,'Ahorro','983364848',110.0);
INSERT INTO CuentaBancaria  VALUES(77777777,'Corriente','794737848',110.0);
INSERT INTO CuentaBancaria  VALUES(88888888,'Ahorro','293857398',110.0);
INSERT INTO CuentaBancaria  VALUES(99999999,'Corriente','123483837',110.0);
INSERT INTO CuentaBancaria  VALUES(11111112,'Ahorro','098724923',110.0);
INSERT INTO CuentaBancaria  VALUES(000001,'Corriente','000000010',110.0);
INSERT INTO CuentaBancaria  VALUES(000002,'Ahorro','000000011',110.0);
INSERT INTO CuentaBancaria  VALUES(000003,'Corriente','000000012',110.0);
INSERT INTO CuentaBancaria  VALUES(000004,'Ahorro','000000013',110.0);
INSERT INTO CuentaBancaria  VALUES(000005,'Corriente','000000014',110.0);
INSERT INTO CuentaBancaria  VALUES(000006,'Ahorro','000000015',110.0);
INSERT INTO CuentaBancaria  VALUES(000007,'Corriente','000000016',110.0);
INSERT INTO CuentaBancaria  VALUES(000008,'Ahorro','000000017',110.0);
INSERT INTO CuentaBancaria  VALUES(000009,'Corriente','000000018',110.0);
INSERT INTO CuentaBancaria  VALUES(000010,'Ahorro','000000019',110.0);
INSERT INTO CuentaBancaria  VALUES(000011,'Corriente','000000020',110.0);
INSERT INTO CuentaBancaria  VALUES(000012,'Ahorro','000000021',110.0);
INSERT INTO CuentaBancaria  VALUES(000013,'Corriente','000000022',110.0);
INSERT INTO CuentaBancaria  VALUES(000014,'Ahorro','000000023',110.0);
INSERT INTO CuentaBancaria  VALUES(000015,'Corriente','000000024',110.0);
INSERT INTO CuentaBancaria  VALUES(000016,'Ahorro','000000025',110.0);
INSERT INTO CuentaBancaria  VALUES(000017,'Corriente','000000026',110.0);
INSERT INTO CuentaBancaria  VALUES(000018,'Ahorro','000000027',110.0);
INSERT INTO CuentaBancaria  VALUES(000019,'Corriente','000000028',110.0);
INSERT INTO CuentaBancaria  VALUES(000020,'Ahorro','000000029',110.0);
INSERT INTO CuentaBancaria  VALUES(000021,'Corriente','000000030',110.0);
INSERT INTO CuentaBancaria  VALUES(000022,'Ahorro','000000031',110.0);
INSERT INTO CuentaBancaria  VALUES(000023,'Corriente','000000032',110.0);
INSERT INTO CuentaBancaria  VALUES(000024,'Ahorro','000000033',110.0);
INSERT INTO CuentaBancaria  VALUES(000025,'Corriente','000000034',110.0);
INSERT INTO CuentaBancaria  VALUES(000026,'Ahorro','000000035',110.0);
INSERT INTO CuentaBancaria  VALUES(000027,'Corriente','000000036',110.0);
INSERT INTO CuentaBancaria  VALUES(000028,'Ahorro','000000037',110.0);
INSERT INTO CuentaBancaria  VALUES(000029,'Corriente','000000038',110.0);
INSERT INTO CuentaBancaria  VALUES(000030,'Ahorro','000000039',110.0);
INSERT INTO CuentaBancaria  VALUES(000031,'Corriente','000000040',110.0);
INSERT INTO CuentaBancaria  VALUES(000032,'Ahorro','000000041',110.0);
INSERT INTO CuentaBancaria  VALUES(000033,'Corriente','000000042',110.0);
INSERT INTO CuentaBancaria  VALUES(000034,'Ahorro','000000043',110.0);
INSERT INTO CuentaBancaria  VALUES(000035,'Corriente','000000044',110.0);
INSERT INTO CuentaBancaria  VALUES(000036,'Ahorro','000000045',110.0);
INSERT INTO CuentaBancaria  VALUES(000037,'Corriente','000000046',110.0);
INSERT INTO CuentaBancaria  VALUES(000038,'Ahorro','000000047',110.0);
INSERT INTO CuentaBancaria  VALUES(000039,'Corriente','000000048',110.0);
INSERT INTO CuentaBancaria  VALUES(000040,'Ahorro','000000049',110.0);




INSERT INTO Tarjeta_Credito  VALUES(134111,'123','2020-03-21','093121344');
INSERT INTO Tarjeta_Credito  VALUES(252222,'234','2020-03-21','093732773');
INSERT INTO Tarjeta_Credito  VALUES(323343,'012','2020-03-21','123483837');
INSERT INTO Tarjeta_Credito  VALUES(478744,'034','2020-03-21','238485959');
INSERT INTO Tarjeta_Credito  VALUES(534215,'021','2020-03-21','794737848');
INSERT INTO Tarjeta_Credito  VALUES(354678,'235','2020-03-21','983364848');
INSERT INTO Tarjeta_Credito  VALUES(342321,'672','2020-03-21','098332832');
INSERT INTO Tarjeta_Credito  VALUES(456543,'567','2020-03-21','098724923');
INSERT INTO Tarjeta_Credito  VALUES(323463,'120','2020-03-21','092737492');
INSERT INTO Tarjeta_Credito  VALUES(983646,'230','2020-03-21','293857398');
INSERT INTO Tarjeta_Credito  VALUES(0000001,'123','2020-03-21','000000010');
INSERT INTO Tarjeta_Credito  VALUES(000002,'234','2020-03-21','000000011');
INSERT INTO Tarjeta_Credito  VALUES(000003,'012','2020-03-21','000000012');
INSERT INTO Tarjeta_Credito  VALUES(000004,'034','2020-03-21','000000013');
INSERT INTO Tarjeta_Credito  VALUES(000005,'021','2020-03-21','000000014');
INSERT INTO Tarjeta_Credito  VALUES(000006,'235','2020-03-21','000000015');
INSERT INTO Tarjeta_Credito  VALUES(000007,'672','2020-03-21','000000016');
INSERT INTO Tarjeta_Credito  VALUES(000008,'567','2020-03-21','000000017');
INSERT INTO Tarjeta_Credito  VALUES(000009,'120','2020-03-21','000000018');
INSERT INTO Tarjeta_Credito  VALUES(000010,'230','2020-03-21','000000019');
INSERT INTO Tarjeta_Credito  VALUES(000011,'123','2020-03-21','000000020');
INSERT INTO Tarjeta_Credito  VALUES(000012,'234','2020-03-21','000000021');
INSERT INTO Tarjeta_Credito  VALUES(000013,'012','2020-03-21','000000022');
INSERT INTO Tarjeta_Credito  VALUES(000014,'034','2020-03-21','000000023');
INSERT INTO Tarjeta_Credito  VALUES(000015,'021','2020-03-21','000000024');
INSERT INTO Tarjeta_Credito  VALUES(000016,'235','2020-03-21','000000025');
INSERT INTO Tarjeta_Credito  VALUES(000017,'672','2020-03-21','000000026');
INSERT INTO Tarjeta_Credito  VALUES(000018,'567','2020-03-21','000000027');
INSERT INTO Tarjeta_Credito  VALUES(000019,'120','2020-03-21','000000028');
INSERT INTO Tarjeta_Credito  VALUES(000020,'230','2020-03-21','000000029');
INSERT INTO Tarjeta_Credito  VALUES(000021,'123','2020-03-21','000000030');
INSERT INTO Tarjeta_Credito  VALUES(000022,'234','2020-03-21','000000031');
INSERT INTO Tarjeta_Credito  VALUES(000023,'012','2020-03-21','000000032');
INSERT INTO Tarjeta_Credito  VALUES(000024,'034','2020-03-21','000000033');
INSERT INTO Tarjeta_Credito  VALUES(000025,'021','2020-03-21','000000034');
INSERT INTO Tarjeta_Credito  VALUES(000026,'235','2020-03-21','000000035');
INSERT INTO Tarjeta_Credito  VALUES(000027,'672','2020-03-21','000000036');
INSERT INTO Tarjeta_Credito  VALUES(000028,'567','2020-03-21','000000037');
INSERT INTO Tarjeta_Credito  VALUES(000029,'120','2020-03-21','000000038');
INSERT INTO Tarjeta_Credito  VALUES(000030,'230','2020-03-21','000000039');
INSERT INTO Tarjeta_Credito  VALUES(000031,'123','2020-03-21','000000040');
INSERT INTO Tarjeta_Credito  VALUES(000032,'234','2020-03-21','000000041');
INSERT INTO Tarjeta_Credito  VALUES(000033,'012','2020-03-21','000000042');
INSERT INTO Tarjeta_Credito  VALUES(000034,'034','2020-03-21','000000043');
INSERT INTO Tarjeta_Credito  VALUES(000035,'021','2020-03-21','000000044');
INSERT INTO Tarjeta_Credito  VALUES(000036,'235','2020-03-21','000000045');
INSERT INTO Tarjeta_Credito  VALUES(000037,'672','2020-03-21','000000046');
INSERT INTO Tarjeta_Credito  VALUES(000038,'567','2020-03-21','000000047');
INSERT INTO Tarjeta_Credito  VALUES(000039,'120','2020-03-21','000000048');
INSERT INTO Tarjeta_Credito  VALUES(000040,'230','2020-03-21','000000049');






INSERT INTO Localizacion  VALUES(1341,12,'Prosperina',null);
INSERT INTO Localizacion  VALUES(2522,34,'Espol peñas','aula123');
INSERT INTO Localizacion  VALUES(3433,132,'Sauces','sauces9');
INSERT INTO Localizacion  VALUES(7444,344,'Alborada','5ta etapa');
INSERT INTO Localizacion  VALUES(2155,44,'Urdesa',null);
INSERT INTO Localizacion  VALUES(3546,43,'Urdesa',null);
INSERT INTO Localizacion  VALUES(3427,22,'Urdesa',null);
INSERT INTO Localizacion  VALUES(4438,35,'Samanes',null);
INSERT INTO Localizacion  VALUES(3639,126,'Monte Sinai','hospital monte sinai');
INSERT INTO Localizacion  VALUES(9460,239,'Prosperina','Mercador la prosperina');
INSERT INTO Localizacion  VALUES(0001,12,'Prosperina',null);
INSERT INTO Localizacion  VALUES(0002,34,'Espol peñas','aula123');
INSERT INTO Localizacion  VALUES(0003,132,'Sauces','sauces9');
INSERT INTO Localizacion  VALUES(0004,344,'Alborada','5ta etapa');
INSERT INTO Localizacion  VALUES(0005,44,'Urdesa',null);
INSERT INTO Localizacion  VALUES(0006,43,'Urdesa',null);
INSERT INTO Localizacion  VALUES(0007,22,'Urdesa',null);
INSERT INTO Localizacion  VALUES(0008,35,'Samanes',null);
INSERT INTO Localizacion  VALUES(0009,126,'Monte Sinai','hospital monte sinai');
INSERT INTO Localizacion  VALUES(0010,239,'Prosperina','Mercador la prosperina');
INSERT INTO Localizacion  VALUES(0011,12,'Prosperina',null);
INSERT INTO Localizacion  VALUES(0012,34,'Espol peñas','aula123');
INSERT INTO Localizacion  VALUES(0013,132,'Sauces','sauces9');
INSERT INTO Localizacion  VALUES(0014,344,'Alborada','5ta etapa');
INSERT INTO Localizacion  VALUES(0015,44,'Urdesa',null);
INSERT INTO Localizacion  VALUES(0016,43,'Urdesa',null);
INSERT INTO Localizacion  VALUES(0017,22,'Urdesa',null);
INSERT INTO Localizacion  VALUES(0018,35,'Samanes',null);
INSERT INTO Localizacion  VALUES(0019,126,'Monte Sinai','hospital monte sinai');
INSERT INTO Localizacion  VALUES(0020,239,'Prosperina','Mercador la prosperina');
INSERT INTO Localizacion  VALUES(0021,12,'Prosperina',null);
INSERT INTO Localizacion  VALUES(0022,34,'Espol peñas','aula123');
INSERT INTO Localizacion  VALUES(0023,132,'Sauces','sauces9');
INSERT INTO Localizacion  VALUES(0024,344,'Alborada','5ta etapa');
INSERT INTO Localizacion  VALUES(0025,44,'Urdesa',null);
INSERT INTO Localizacion  VALUES(0026,43,'Urdesa',null);
INSERT INTO Localizacion  VALUES(0027,22,'Urdesa',null);
INSERT INTO Localizacion  VALUES(0028,35,'Samanes',null);
INSERT INTO Localizacion  VALUES(0029,126,'Monte Sinai','hospital monte sinai');
INSERT INTO Localizacion  VALUES(0030,239,'Prosperina','Mercador la prosperina');
INSERT INTO Localizacion  VALUES(0031,12,'Prosperina',null);
INSERT INTO Localizacion  VALUES(0032,34,'Espol peñas','aula123');
INSERT INTO Localizacion  VALUES(0033,132,'Sauces','sauces9');
INSERT INTO Localizacion  VALUES(0034,344,'Alborada','5ta etapa');
INSERT INTO Localizacion  VALUES(0035,44,'Urdesa',null);
INSERT INTO Localizacion  VALUES(0036,43,'Urdesa',null);
INSERT INTO Localizacion  VALUES(0037,22,'Urdesa',null);
INSERT INTO Localizacion  VALUES(0038,35,'Samanes',null);
INSERT INTO Localizacion  VALUES(0039,126,'Monte Sinai','hospital monte sinai');
INSERT INTO Localizacion  VALUES(0040,239,'Prosperina','Mercador la prosperina');
INSERT INTO Localizacion  VALUES(0041,12,'Prosperina',null);
INSERT INTO Localizacion  VALUES(0042,34,'Espol peñas','aula123');
INSERT INTO Localizacion  VALUES(0043,132,'Sauces','sauces9');
INSERT INTO Localizacion  VALUES(0044,344,'Alborada','5ta etapa');
INSERT INTO Localizacion  VALUES(0045,44,'Urdesa',null);
INSERT INTO Localizacion  VALUES(0046,43,'Urdesa',null);
INSERT INTO Localizacion  VALUES(0047,22,'Urdesa',null);
INSERT INTO Localizacion  VALUES(0048,35,'Samanes',null);
INSERT INTO Localizacion  VALUES(0049,126,'Monte Sinai','hospital monte sinai');
INSERT INTO Localizacion  VALUES(0050,239,'Prosperina','Mercador la prosperina');






INSERT INTO Pastelero  VALUES('095121344','Carlos',239221,'carlos@gmail.com','kjdskjds',1341);
INSERT INTO Pastelero  VALUES('096732773','Ismael',234822,'ismael@gmail.com','kjdskjds',2522);
INSERT INTO Pastelero  VALUES('122483837','Daniel',398321,'daniel2@gmail.com','kjdskjds',3433);
INSERT INTO Pastelero  VALUES('231485959','David',382989,'david2@gmail.com','kjdskjds',7444);
INSERT INTO Pastelero  VALUES('797737848','Paul',283839,'paul2@gmail.com','kjdskjds',2155);
INSERT INTO Pastelero  VALUES('986364848','Mabel',283939,'mabel2@gmail.com','kjdskjds',3546);
INSERT INTO Pastelero  VALUES('093332832','Daniela',102039,'daniela2@gmail.com','kjdskjds',3427);
INSERT INTO Pastelero  VALUES('096724923','Javier',139202,'javier2@gmail.com','kjdskjds',4438);
INSERT INTO Pastelero  VALUES('099737492','Xavier',239210,'xavier2@gmail.com','kjdskjds',3639);
INSERT INTO Pastelero  VALUES('299857398','Jordan',923432,'jordan2@gmail.com','kjdskjds',9460);
INSERT INTO Pastelero  VALUES('000000100','Carlos',239221,'carlos@gmail.com','kjdskjds',0001);
INSERT INTO Pastelero  VALUES('000000101','Ismael',234822,'ismael@gmail.com','kjdskjds',0002);
INSERT INTO Pastelero  VALUES('000000102','Daniel',398321,'daniel2@gmail.com','kjdskjds',0003);
INSERT INTO Pastelero  VALUES('000000103','David',382989,'david2@gmail.com','kjdskjds',0004);
INSERT INTO Pastelero  VALUES('000000104','Paul',283839,'paul2@gmail.com','kjdskjds',0005);
INSERT INTO Pastelero  VALUES('000000105','Mabel',283939,'mabel2@gmail.com','kjdskjds',0006);
INSERT INTO Pastelero  VALUES('000000106','Daniela',102039,'daniela2@gmail.com','kjdskjds',0007);
INSERT INTO Pastelero  VALUES('000000107','Javier',139202,'javier2@gmail.com','kjdskjds',0008);
INSERT INTO Pastelero  VALUES('000000108','Xavier',239210,'xavier2@gmail.com','kjdskjds',0009);
INSERT INTO Pastelero  VALUES('000000109','Jordan',923432,'jordan2@gmail.com','kjdskjds',0010);
INSERT INTO Pastelero  VALUES('000000110','Carlos',239221,'carlos@gmail.com','kjdskjds',0011);
INSERT INTO Pastelero  VALUES('000000111','Ismael',234822,'ismael@gmail.com','kjdskjds',0012);
INSERT INTO Pastelero  VALUES('000000112','Daniel',398321,'daniel2@gmail.com','kjdskjds',0013);
INSERT INTO Pastelero  VALUES('000000113','David',382989,'david2@gmail.com','kjdskjds',0014);
INSERT INTO Pastelero  VALUES('000000114','Paul',283839,'paul2@gmail.com','kjdskjds',0015);
INSERT INTO Pastelero  VALUES('000000115','Mabel',283939,'mabel2@gmail.com','kjdskjds',0016);
INSERT INTO Pastelero  VALUES('000000116','Daniela',102039,'daniela2@gmail.com','kjdskjds',0017);
INSERT INTO Pastelero  VALUES('000000117','Javier',139202,'javier2@gmail.com','kjdskjds',0018);
INSERT INTO Pastelero  VALUES('000000118','Xavier',239210,'xavier2@gmail.com','kjdskjds',0019);
INSERT INTO Pastelero  VALUES('000000119','Jordan',923432,'jordan2@gmail.com','kjdskjds',0021);
INSERT INTO Pastelero  VALUES('000000120','Carlos',239221,'carlos@gmail.com','kjdskjds',0022);
INSERT INTO Pastelero  VALUES('000000121','Ismael',234822,'ismael@gmail.com','kjdskjds',0023);
INSERT INTO Pastelero  VALUES('000000122','Daniel',398321,'daniel2@gmail.com','kjdskjds',0024);
INSERT INTO Pastelero  VALUES('000000123','David',382989,'david2@gmail.com','kjdskjds',0025);
INSERT INTO Pastelero  VALUES('000000124','Paul',283839,'paul2@gmail.com','kjdskjds',0026);
INSERT INTO Pastelero  VALUES('000000125','Mabel',283939,'mabel2@gmail.com','kjdskjds',0027);
INSERT INTO Pastelero  VALUES('000000126','Daniela',102039,'daniela2@gmail.com','kjdskjds',0028);
INSERT INTO Pastelero  VALUES('000000127','Javier',139202,'javier2@gmail.com','kjdskjds',0029);
INSERT INTO Pastelero  VALUES('000000128','Xavier',239210,'xavier2@gmail.com','kjdskjds',0030);
INSERT INTO Pastelero  VALUES('000000129','Jordan',923432,'jordan2@gmail.com','kjdskjds',0031);
INSERT INTO Pastelero  VALUES('000000130','Carlos',239221,'carlos@gmail.com','kjdskjds',0032);
INSERT INTO Pastelero  VALUES('000000131','Ismael',234822,'ismael@gmail.com','kjdskjds',0033);
INSERT INTO Pastelero  VALUES('000000132','Daniel',398321,'daniel2@gmail.com','kjdskjds',0034);
INSERT INTO Pastelero  VALUES('000000133','David',382989,'david2@gmail.com','kjdskjds',0035);
INSERT INTO Pastelero  VALUES('000000134','Paul',283839,'paul2@gmail.com','kjdskjds',0036);
INSERT INTO Pastelero  VALUES('000000135','Mabel',283939,'mabel2@gmail.com','kjdskjds',0037);
INSERT INTO Pastelero  VALUES('000000136','Daniela',102039,'daniela2@gmail.com','kjdskjds',0038);
INSERT INTO Pastelero  VALUES('000000137','Javier',139202,'javier2@gmail.com','kjdskjds',0039);
INSERT INTO Pastelero  VALUES('000000138','Xavier',239210,'xavier2@gmail.com','kjdskjds',0040);
INSERT INTO Pastelero  VALUES('000000139','Jordan',923432,'jordan2@gmail.com','kjdskjds',0041);
INSERT INTO Pastelero  VALUES('000000140','Carlos',239221,'carlos@gmail.com','kjdskjds',0042);
INSERT INTO Pastelero  VALUES('000000141','Ismael',234822,'ismael@gmail.com','kjdskjds',0043);
INSERT INTO Pastelero  VALUES('000000142','Daniel',398321,'daniel2@gmail.com','kjdskjds',0044);
INSERT INTO Pastelero  VALUES('000000143','David',382989,'david2@gmail.com','kjdskjds',0045);
INSERT INTO Pastelero  VALUES('000000144','Paul',283839,'paul2@gmail.com','kjdskjds',0046);
INSERT INTO Pastelero  VALUES('000000145','Mabel',283939,'mabel2@gmail.com','kjdskjds',0047);
INSERT INTO Pastelero  VALUES('000000146','Daniela',102039,'daniela2@gmail.com','kjdskjds',0048);
INSERT INTO Pastelero  VALUES('000000147','Javier',139202,'javier2@gmail.com','kjdskjds',0049);
INSERT INTO Pastelero  VALUES('000000148','Xavier',239210,'xavier2@gmail.com','kjdskjds',0050);






INSERT INTO entrega_domicilio  VALUES(1341111,'Prosperina','2020-03-21','18:30:00','093121344','099737492');
INSERT INTO entrega_domicilio  VALUES(2522222,'Espol peñas','2020-03-21','11:30:00','093732773','099737492');
INSERT INTO entrega_domicilio  VALUES(3233433,'Sauces','2020-03-21','12:30:00','123483837','299857398');
INSERT INTO entrega_domicilio  VALUES(4787444,'Alborada','2020-03-21','10:30:00','238485959','299857398');
INSERT INTO entrega_domicilio  VALUES(5342155,'Urdesa','2020-03-21','12:35:00','794737848','099737492');
INSERT INTO entrega_domicilio  VALUES(3546786,'Urdesa','2020-03-21','18:40:00','983364848','986364848');
INSERT INTO entrega_domicilio  VALUES(3423217,'Urdesa','2020-03-21','19:30:00','098332832','986364848');
INSERT INTO entrega_domicilio  VALUES(4565438,'Samanes','2020-03-21','19:00:00','098724923','797737848');
INSERT INTO entrega_domicilio  VALUES(3234639,'Monte Sinai','2020-03-21','18:00:00','092737492','797737848');
INSERT INTO entrega_domicilio  VALUES(9836460,'Prosperina','2020-03-21','18:00:00','293857398','797737848');
INSERT INTO entrega_domicilio  VALUES(0100,'Prosperina','2020-03-21','18:30:00','093121344','099737492');
INSERT INTO entrega_domicilio  VALUES(0101,'Espol peñas','2020-03-21','11:30:00','093732773','099737492');
INSERT INTO entrega_domicilio  VALUES(0102,'Sauces','2020-03-21','12:30:00','123483837','299857398');
INSERT INTO entrega_domicilio  VALUES(0103,'Alborada','2020-03-21','10:30:00','238485959','299857398');
INSERT INTO entrega_domicilio  VALUES(0104,'Urdesa','2020-03-21','12:35:00','794737848','099737492');
INSERT INTO entrega_domicilio  VALUES(0105,'Urdesa','2020-03-21','18:40:00','983364848','986364848');
INSERT INTO entrega_domicilio  VALUES(0106,'Urdesa','2020-03-21','19:30:00','098332832','986364848');
INSERT INTO entrega_domicilio  VALUES(0107,'Samanes','2020-03-21','19:00:00','098724923','797737848');
INSERT INTO entrega_domicilio  VALUES(0108,'Monte Sinai','2020-03-21','18:00:00','092737492','797737848');
INSERT INTO entrega_domicilio  VALUES(0109,'Prosperina','2020-03-21','18:00:00','293857398','797737848');
INSERT INTO entrega_domicilio  VALUES(0110,'Prosperina','2020-03-21','18:30:00','093121344','099737492');
INSERT INTO entrega_domicilio  VALUES(0111,'Espol peñas','2020-03-21','11:30:00','093732773','099737492');
INSERT INTO entrega_domicilio  VALUES(0112,'Sauces','2020-03-21','12:30:00','123483837','299857398');
INSERT INTO entrega_domicilio  VALUES(0113,'Alborada','2020-03-21','10:30:00','238485959','299857398');
INSERT INTO entrega_domicilio  VALUES(0114,'Urdesa','2020-03-21','12:35:00','794737848','099737492');
INSERT INTO entrega_domicilio  VALUES(0115,'Urdesa','2020-03-21','18:40:00','983364848','986364848');
INSERT INTO entrega_domicilio  VALUES(0116,'Urdesa','2020-03-21','19:30:00','098332832','986364848');
INSERT INTO entrega_domicilio  VALUES(0117,'Samanes','2020-03-21','19:00:00','098724923','797737848');
INSERT INTO entrega_domicilio  VALUES(0118,'Monte Sinai','2020-03-21','18:00:00','092737492','797737848');
INSERT INTO entrega_domicilio  VALUES(0119,'Prosperina','2020-03-21','18:00:00','293857398','797737848');
INSERT INTO entrega_domicilio  VALUES(0120,'Prosperina','2020-03-21','18:30:00','093121344','099737492');
INSERT INTO entrega_domicilio  VALUES(0121,'Espol peñas','2020-03-21','11:30:00','093732773','099737492');
INSERT INTO entrega_domicilio  VALUES(0122,'Sauces','2020-03-21','12:30:00','123483837','299857398');
INSERT INTO entrega_domicilio  VALUES(0123,'Alborada','2020-03-21','10:30:00','238485959','299857398');
INSERT INTO entrega_domicilio  VALUES(0124,'Urdesa','2020-03-21','12:35:00','794737848','099737492');
INSERT INTO entrega_domicilio  VALUES(0125,'Urdesa','2020-03-21','18:40:00','983364848','986364848');
INSERT INTO entrega_domicilio  VALUES(0126,'Urdesa','2020-03-21','19:30:00','098332832','986364848');
INSERT INTO entrega_domicilio  VALUES(0127,'Samanes','2020-03-21','19:00:00','098724923','797737848');
INSERT INTO entrega_domicilio  VALUES(0128,'Monte Sinai','2020-03-21','18:00:00','092737492','797737848');
INSERT INTO entrega_domicilio  VALUES(0129,'Prosperina','2020-03-21','18:00:00','293857398','797737848');
INSERT INTO entrega_domicilio  VALUES(0130,'Prosperina','2020-03-21','18:30:00','093121344','099737492');
INSERT INTO entrega_domicilio  VALUES(0131,'Espol peñas','2020-03-21','11:30:00','093732773','099737492');
INSERT INTO entrega_domicilio  VALUES(0132,'Sauces','2020-03-21','12:30:00','123483837','299857398');
INSERT INTO entrega_domicilio  VALUES(0133,'Alborada','2020-03-21','10:30:00','238485959','299857398');
INSERT INTO entrega_domicilio  VALUES(0134,'Urdesa','2020-03-21','12:35:00','794737848','099737492');
INSERT INTO entrega_domicilio  VALUES(0135,'Urdesa','2020-03-21','18:40:00','983364848','986364848');
INSERT INTO entrega_domicilio  VALUES(0136,'Urdesa','2020-03-21','19:30:00','098332832','986364848');
INSERT INTO entrega_domicilio  VALUES(0137,'Samanes','2020-03-21','19:00:00','098724923','797737848');
INSERT INTO entrega_domicilio  VALUES(0138,'Monte Sinai','2020-03-21','18:00:00','092737492','797737848');
INSERT INTO entrega_domicilio  VALUES(0139,'Prosperina','2020-03-21','18:00:00','293857398','797737848');
INSERT INTO entrega_domicilio  VALUES(0140,'Prosperina','2020-03-21','18:30:00','093121344','099737492');
INSERT INTO entrega_domicilio  VALUES(0141,'Espol peñas','2020-03-21','11:30:00','093732773','099737492');
INSERT INTO entrega_domicilio  VALUES(0142,'Sauces','2020-03-21','12:30:00','123483837','299857398');
INSERT INTO entrega_domicilio  VALUES(0143,'Alborada','2020-03-21','10:30:00','238485959','299857398');
INSERT INTO entrega_domicilio  VALUES(0144,'Urdesa','2020-03-21','12:35:00','794737848','099737492');
INSERT INTO entrega_domicilio  VALUES(0145,'Urdesa','2020-03-21','18:40:00','983364848','986364848');
INSERT INTO entrega_domicilio  VALUES(0146,'Urdesa','2020-03-21','19:30:00','098332832','986364848');
INSERT INTO entrega_domicilio  VALUES(0147,'Samanes','2020-03-21','19:00:00','098724923','797737848');
INSERT INTO entrega_domicilio  VALUES(0148,'Monte Sinai','2020-03-21','18:00:00','092737492','797737848');
INSERT INTO entrega_domicilio  VALUES(0149,'Prosperina','2020-03-21','18:00:00','293857398','797737848');


INSERT INTO Categoria  VALUES(11111,'Tortas');
INSERT INTO Categoria  VALUES(22222,'Cheescake');
INSERT INTO Categoria  VALUES(32323,'Panes');


INSERT INTO Producto  VALUES('0001','Tarta de manzana',12,2.50,11111,'797737848');
INSERT INTO Producto  VALUES('0002','Pan de piña',20,0.50,32323,'797737848');
INSERT INTO Producto  VALUES('0003','Torta mojada de chocolate',25,3.50,11111,'797737848');
INSERT INTO Producto  VALUES('0004','Dulce de tres leche',12,2.50,11111,'797737848');
INSERT INTO Producto  VALUES('0005','Cara sucia',30,0.50,32323,'099737492');
INSERT INTO Producto  VALUES('0006','Pan Integral',12,0.25,32323,'099737492');
INSERT INTO Producto  VALUES('0007','Tarta de pera',12,2.50,11111,'099737492');
INSERT INTO Producto  VALUES('0008','Cheescake',12,2.50,22222,'099737492');
INSERT INTO Producto  VALUES('0009','Torta de chocolate',12,2.50,11111,'099737492');
INSERT INTO Producto  VALUES('0010','tarta de durazano',12,2.50,11111,'000000101');
INSERT INTO Producto  VALUES('0011','Tarta de manzana',12,2.50,11111,'000000102');
INSERT INTO Producto  VALUES('0012','Pan de piña',20,0.50,32323,'000000103');
INSERT INTO Producto  VALUES('0013','Torta mojada de chocolate',25,3.50,11111,'000000104');
INSERT INTO Producto  VALUES('0014','Dulce de tres leche',12,2.50,11111,'000000105');
INSERT INTO Producto  VALUES('0015','Cara sucia',30,0.50,32323,'000000106');
INSERT INTO Producto  VALUES('0016','Pan Integral',12,0.25,32323,'000000107');
INSERT INTO Producto  VALUES('0017','Tarta de pera',12,2.50,11111,'000000108');
INSERT INTO Producto  VALUES('0018','Cheescake',12,2.50,22222,'000000109');
INSERT INTO Producto  VALUES('0019','Torta de chocolate',12,2.50,11111,'000000110');
INSERT INTO Producto  VALUES('0020','tarta de durazano',12,2.50,11111,'000000111');
INSERT INTO Producto  VALUES('0021','Tarta de manzana',12,2.50,11111,'000000112');
INSERT INTO Producto  VALUES('0022','Pan de piña',20,0.50,32323,'000000113');
INSERT INTO Producto  VALUES('0023','Torta mojada de chocolate',25,3.50,11111,'000000114');
INSERT INTO Producto  VALUES('0024','Dulce de tres leche',12,2.50,11111,'000000115');
INSERT INTO Producto  VALUES('0025','Cara sucia',30,0.50,32323,'000000116');
INSERT INTO Producto  VALUES('0026','Pan Integral',12,0.25,32323,'000000117');
INSERT INTO Producto  VALUES('0027','Tarta de pera',12,2.50,11111,'000000118');
INSERT INTO Producto  VALUES('0028','Cheescake',12,2.50,22222,'000000119');
INSERT INTO Producto  VALUES('0029','Torta de chocolate',12,2.50,11111,'000000120');
INSERT INTO Producto  VALUES('0030','tarta de durazano',12,2.50,11111,'000000121');
INSERT INTO Producto  VALUES('0031','Tarta de manzana',12,2.50,11111,'000000122');
INSERT INTO Producto  VALUES('0032','Pan de piña',20,0.50,32323,'000000123');
INSERT INTO Producto  VALUES('0033','Torta mojada de chocolate',25,3.50,11111,'000000124');
INSERT INTO Producto  VALUES('0034','Dulce de tres leche',12,2.50,11111,'000000125');
INSERT INTO Producto  VALUES('0035','Cara sucia',30,0.50,32323,'000000126');
INSERT INTO Producto  VALUES('0036','Pan Integral',12,0.25,32323,'000000127');
INSERT INTO Producto  VALUES('0037','Tarta de pera',12,2.50,11111,'000000128');
INSERT INTO Producto  VALUES('0038','Cheescake',12,2.50,22222,'000000129');
INSERT INTO Producto  VALUES('0039','Torta de chocolate',12,2.50,11111,'000000130');
INSERT INTO Producto  VALUES('0040','tarta de durazano',12,2.50,11111,'000000131');
INSERT INTO Producto  VALUES('0041','Tarta de manzana',12,2.50,11111,'000000132');
INSERT INTO Producto  VALUES('0042','Pan de piña',20,0.50,32323,'000000133');
INSERT INTO Producto  VALUES('0043','Torta mojada de chocolate',25,3.50,11111,'000000134');
INSERT INTO Producto  VALUES('0044','Dulce de tres leche',12,2.50,11111,'000000135');
INSERT INTO Producto  VALUES('0045','Cara sucia',30,0.50,32323,'000000136');
INSERT INTO Producto  VALUES('0046','Pan Integral',12,0.25,32323,'000000137');
INSERT INTO Producto  VALUES('0047','Tarta de pera',12,2.50,11111,'000000138');
INSERT INTO Producto  VALUES('0048','Cheescake',12,2.50,22222,'000000139');
INSERT INTO Producto  VALUES('0049','Torta de chocolate',12,2.50,11111,'000000140');
INSERT INTO Producto  VALUES('0050','tarta de durazano',12,2.50,11111,'000000141');





select * from calificaciones;

INSERT INTO pedido  VALUES('1029','2020-03-21',12.5,'Pendiente','293857398','099737492','No');
INSERT INTO pedido  VALUES('6666','2020-03-21',10.5,'Completado','293857398','099737492','Si');
INSERT INTO pedido  VALUES('7656','2020-03-21',11.5,'Completado','293857398','099737492','Si');
INSERT INTO pedido  VALUES('6433','2020-03-21',13.5,'Completado','293857398','099737492','Si');
INSERT INTO pedido  VALUES('4543','2020-03-21',8.5,'Pendiente','098724923','099737492','No');
INSERT INTO pedido  VALUES('4556','2020-03-21',3.2,'Completado','098724923','231485959','Si');
INSERT INTO pedido  VALUES('7687','2020-03-21',5.5,'Completado','983364848','231485959','Si');
INSERT INTO pedido  VALUES('3445','2020-03-21',6.4,'Pendiente','983364848','231485959','No');
INSERT INTO pedido  VALUES('2344','2020-03-21',5.4,'Pendiente','983364848','231485959','No');
INSERT INTO pedido  VALUES('3455','2020-03-21',3.4,'Pendiente','983364848','095121344','No');
INSERT INTO pedido  VALUES('0001','2020-03-21',12.5,'Pendiente','293857398','000000101','No');
INSERT INTO pedido  VALUES('0002','2020-03-21',10.5,'Completado','293857398','000000102','Si');
INSERT INTO pedido  VALUES('0003','2020-03-21',11.5,'Completado','293857398','000000103','Si');
INSERT INTO pedido  VALUES('0004','2020-03-21',13.5,'Completado','293857398','000000104','Si');
INSERT INTO pedido  VALUES('0005','2020-03-21',8.5,'Pendiente','098724923','000000105','No');
INSERT INTO pedido  VALUES('0006','2020-03-21',3.2,'Completado','098724923','000000106','Si');
INSERT INTO pedido  VALUES('0008','2020-03-21',5.5,'Completado','983364848','000000107','Si');
INSERT INTO pedido  VALUES('0009','2020-03-21',6.4,'Pendiente','983364848','000000108','No');
INSERT INTO pedido  VALUES('0010','2020-03-21',5.4,'Pendiente','983364848','000000109','No');
INSERT INTO pedido  VALUES('0011','2020-03-21',3.4,'Pendiente','983364848','000000110','No');
INSERT INTO pedido  VALUES('0012','2020-03-21',12.5,'Pendiente','293857398','000000111','No');
INSERT INTO pedido  VALUES('0013','2020-03-21',10.5,'Completado','293857398','000000112','Si');
INSERT INTO pedido  VALUES('0014','2020-03-21',11.5,'Completado','293857398','000000113','Si');
INSERT INTO pedido  VALUES('0015','2020-03-21',13.5,'Completado','293857398','000000114','Si');
INSERT INTO pedido  VALUES('0016','2020-03-21',8.5,'Pendiente','098724923','000000115','No');
INSERT INTO pedido  VALUES('0017','2020-03-21',3.2,'Completado','098724923','000000116','Si');
INSERT INTO pedido  VALUES('0018','2020-03-21',5.5,'Completado','983364848','000000117','Si');
INSERT INTO pedido  VALUES('0019','2020-03-21',6.4,'Pendiente','983364848','000000118','No');
INSERT INTO pedido  VALUES('0020','2020-03-21',5.4,'Pendiente','983364848','000000119','No');
INSERT INTO pedido  VALUES('0021','2020-03-21',3.4,'Pendiente','983364848','000000120','No');
INSERT INTO pedido  VALUES('0022','2020-03-21',12.5,'Pendiente','293857398','000000121','No');
INSERT INTO pedido  VALUES('0023','2020-03-21',10.5,'Completado','293857398','000000122','Si');
INSERT INTO pedido  VALUES('0024','2020-03-21',11.5,'Completado','293857398','000000123','Si');
INSERT INTO pedido  VALUES('0025','2020-03-21',13.5,'Completado','293857398','000000124','Si');
INSERT INTO pedido  VALUES('0026','2020-03-21',8.5,'Pendiente','098724923','000000125','No');
INSERT INTO pedido  VALUES('0027','2020-03-21',3.2,'Completado','098724923','000000126','Si');
INSERT INTO pedido  VALUES('0028','2020-03-21',5.5,'Completado','983364848','000000127','Si');
INSERT INTO pedido  VALUES('0029','2020-03-21',6.4,'Pendiente','983364848','000000128','No');
INSERT INTO pedido  VALUES('0030','2020-03-21',5.4,'Pendiente','983364848','000000129','No');
INSERT INTO pedido  VALUES('0031','2020-03-21',3.4,'Pendiente','983364848','000000130','No');
INSERT INTO pedido  VALUES('0032','2020-03-21',12.5,'Pendiente','293857398','000000131','No');
INSERT INTO pedido  VALUES('0033','2020-03-21',10.5,'Completado','293857398','000000132','Si');
INSERT INTO pedido  VALUES('0034','2020-03-21',11.5,'Completado','293857398','000000133','Si');
INSERT INTO pedido  VALUES('0035','2020-03-21',13.5,'Completado','293857398','000000134','Si');
INSERT INTO pedido  VALUES('0036','2020-03-21',8.5,'Pendiente','098724923','000000135','No');
INSERT INTO pedido  VALUES('0037','2020-03-21',3.2,'Completado','098724923','000000136','Si');
INSERT INTO pedido  VALUES('0038','2020-03-21',5.5,'Completado','983364848','000000137','Si');
INSERT INTO pedido  VALUES('0039','2020-03-21',6.4,'Pendiente','983364848','000000138','No');
INSERT INTO pedido  VALUES('0040','2020-03-21',5.4,'Pendiente','983364848','000000139','No');
INSERT INTO pedido  VALUES('0041','2020-03-21',3.4,'Pendiente','983364848','000000140','No');





INSERT INTO Calificaciones  VALUES('001',5,'Buen trabajo','2020-02-20','983364848','095121344');
INSERT INTO Calificaciones  VALUES('002',4.5,'Buen trabajo','2020-02-20','983364848','095121344');
INSERT INTO Calificaciones  VALUES('003',3.5,'Buen trabajo','2020-02-20','983364848','095121344');
INSERT INTO Calificaciones  VALUES('004',4.5,'Buen trabajo','2020-02-20','983364848','231485959');
INSERT INTO Calificaciones  VALUES('005',4.5,'Buen trabajo','2020-02-20','983364848','231485959');
INSERT INTO Calificaciones  VALUES('006',5,'Buen trabajo','2020-02-20','098724923','231485959');
INSERT INTO Calificaciones  VALUES('007',4.5,'Buen trabajo','2020-02-20','098724923','797737848');
INSERT INTO Calificaciones  VALUES('008',5,'Buen trabajo','2020-02-20','098724923','797737848');
INSERT INTO Calificaciones  VALUES('009',4.5,'Buen trabajo','2020-02-20','098724923','797737848');
INSERT INTO Calificaciones  VALUES('010',5,'Buen trabajo','2020-02-20','983364848','797737848');
INSERT INTO Calificaciones  VALUES('011',5,'Buen trabajo','2020-02-20','000000010','095121344');
INSERT INTO Calificaciones  VALUES('012',4.5,'Buen trabajo','2020-02-20','000000011','095121344');
INSERT INTO Calificaciones  VALUES('013',3.5,'Buen trabajo','2020-02-20','000000012','095121344');
INSERT INTO Calificaciones  VALUES('014',4.5,'Buen trabajo','2020-02-20','000000013','231485959');
INSERT INTO Calificaciones  VALUES('015',4.5,'Buen trabajo','2020-02-20','000000014','231485959');
INSERT INTO Calificaciones  VALUES('016',5,'Buen trabajo','2020-02-20','000000015','231485959');
INSERT INTO Calificaciones  VALUES('017',4.5,'Buen trabajo','2020-02-20','000000016','797737848');
INSERT INTO Calificaciones  VALUES('018',5,'Buen trabajo','2020-02-20','000000017','797737848');
INSERT INTO Calificaciones  VALUES('019',4.5,'Buen trabajo','2020-02-20','000000018','797737848');
INSERT INTO Calificaciones  VALUES('020',5,'Buen trabajo','2020-02-20','000000019','797737848');
INSERT INTO Calificaciones  VALUES('021',5,'Buen trabajo','2020-02-20','000000020','095121344');
INSERT INTO Calificaciones  VALUES('022',4.5,'Buen trabajo','2020-02-20','000000021','095121344');
INSERT INTO Calificaciones  VALUES('023',3.5,'Buen trabajo','2020-02-20','000000022','095121344');
INSERT INTO Calificaciones  VALUES('024',4.5,'Buen trabajo','2020-02-20','000000023','231485959');
INSERT INTO Calificaciones  VALUES('025',4.5,'Buen trabajo','2020-02-20','000000024','231485959');
INSERT INTO Calificaciones  VALUES('026',5,'Buen trabajo','2020-02-20','000000026','231485959');
INSERT INTO Calificaciones  VALUES('027',4.5,'Buen trabajo','2020-02-20','000000027','797737848');
INSERT INTO Calificaciones  VALUES('028',5,'Buen trabajo','2020-02-20','000000028','797737848');
INSERT INTO Calificaciones  VALUES('029',4.5,'Buen trabajo','2020-02-20','000000029','797737848');
INSERT INTO Calificaciones  VALUES('030',5,'Buen trabajo','2020-02-20','000000030','797737848');
INSERT INTO Calificaciones  VALUES('031',5,'Buen trabajo','2020-02-20','000000031','095121344');
INSERT INTO Calificaciones  VALUES('032',4.5,'Buen trabajo','2020-02-20','000000032','095121344');
INSERT INTO Calificaciones  VALUES('033',3.5,'Buen trabajo','2020-02-20','000000033','095121344');
INSERT INTO Calificaciones  VALUES('034',4.5,'Buen trabajo','2020-02-20','000000034','231485959');
INSERT INTO Calificaciones  VALUES('035',4.5,'Buen trabajo','2020-02-20','000000035','231485959');
INSERT INTO Calificaciones  VALUES('036',5,'Buen trabajo','2020-02-20','000000036','231485959');
INSERT INTO Calificaciones  VALUES('037',4.5,'Buen trabajo','2020-02-20','000000037','797737848');
INSERT INTO Calificaciones  VALUES('038',5,'Buen trabajo','2020-02-20','000000038','797737848');
INSERT INTO Calificaciones  VALUES('039',4.5,'Buen trabajo','2020-02-20','000000039','797737848');
INSERT INTO Calificaciones  VALUES('040',5,'Buen trabajo','2020-02-20','000000040','797737848');
INSERT INTO Calificaciones  VALUES('041',5,'Buen trabajo','2020-02-20','000000041','095121344');
INSERT INTO Calificaciones  VALUES('042',4.5,'Buen trabajo','2020-02-20','000000042','095121344');
INSERT INTO Calificaciones  VALUES('043',3.5,'Buen trabajo','2020-02-20','000000043','095121344');
INSERT INTO Calificaciones  VALUES('044',4.5,'Buen trabajo','2020-02-20','000000044','231485959');
INSERT INTO Calificaciones  VALUES('045',4.5,'Buen trabajo','2020-02-20','000000045','231485959');
INSERT INTO Calificaciones  VALUES('046',5,'Buen trabajo','2020-02-20','000000046','231485959');
INSERT INTO Calificaciones  VALUES('047',4.5,'Buen trabajo','2020-02-20','000000047','797737848');
INSERT INTO Calificaciones  VALUES('048',5,'Buen trabajo','2020-02-20','000000048','797737848');
INSERT INTO Calificaciones  VALUES('049',4.5,'Buen trabajo','2020-02-20','000000049','797737848');
INSERT INTO Calificaciones  VALUES('050',5,'Buen trabajo','2020-02-20','000000045','797737848');

/******************************Stored Procedure*********************************/

DELIMITER //
CREATE PROCEDURE PROCEDUREcrearcuentacliente(IN Cedula varchar(25), in nombre varchar(50), in telefono int,in Correo varchar(50),in Contraseña varchar(50))
BEGIN
IF Cedula in(select Cedula from cliente) THEN
insert into cliente values(Cedula,nombre,telefono,Correo,Contraseña);
set @mensaje=("Cuenta registrada correctamente");
else
 signal sqlstate '45000' set message_Text ='Error al registrar cliente';
 rollback;
END IF;
END//

DELIMITER //
CREATE PROCEDURE PROCEDUREcrearcuentapastelero(IN Cedula varchar(25), in nombre varchar(50), in telefono int(10),in Correo varchar(50),in Contraseña varchar(50),
in codigopostal int,in Numerodelocal int, in Callepri varchar(50),in callesec varchar(50))
BEGIN
IF Cedula not in(select CedulaPanadero from pastelero) THEN
insert into localizacion values(codigopostal,Numerodelocal,Callepri,callesec);
insert into pastelero values(Cedula,nombre,telefono,correo,contraseña,codigopostal);
set @mensaje=("Cuenta registrada correctamente");
else
 signal sqlstate '45000' set message_Text ='Error al registrar panadero';
rollback;
END IF;
END//


DELIMITER //
CREATE PROCEDURE PROCEDUREingresarcalificiacion(IN Id_calif varchar(10), in nota float, in comentario varchar(250),in fecha date,in clientecedula varchar(25), in pastelero_CedulaPanadero varchar(25))
BEGIN
IF Id_calif in(select Id_calif from calificaciones) THEN
insert into calificaciones values(Id_calif,nota,comentario,fecha,clientecedula,pastelero_CedulaPanadero);
set @mensaje=("Producto registrado correctamente");
else
 signal sqlstate '45000' set message_Text ='Error al ingresaer calificacion';
rollback;
END IF;
END//


DELIMITER //
CREATE PROCEDURE PROCEDUREingresarproductos(IN Prod_Id varchar(25), in nombre varchar(50), in cantidad int,in precio float,in idcat int, in pastelero_CedulaPanadero varchar(25))
BEGIN
IF Prod_Id  in(select Prod_Id from producto) THEN
insert into producto values(Prod_Id,nombre,cantidad,precio,idcat,pastelero_CedulaPanadero);
set @mensaje=("Producto registrado correctamente");
else
 signal sqlstate '45000' set message_Text ='Error al registrar producto';
rollback;
END IF;
END//


/******************************VIEW******************************************/

create view consultapanaderos as 
select distinct p.*,l.Calle_Principal,l.Calle_Secundaria from pastelero p join localizacion l on p.Cod_postal=l.CodigoPostal join producto pr on pr.pastelero_CedulaPanadero=p.CedulaPanadero;

create view consultarpedidos as 
select  p.Pedido_id,p.Fecha,p.Total,p.Estado,p.cliente_Cedula,p.pastelero_CedulaPanadero,pa.Nombre as Nombre_pastelero,pa.telefono as telefono_pastelero,p.calificado from pedido p join cliente c on p.cliente_Cedula=c.Cedula join pastelero pa 
on pa.CedulaPanadero=p.pastelero_CedulaPanadero;

create view consultarproductos as 
SELECT Prod_Id,Nombre,Canti,Precio,c.Nombre_categoria,pastelero_CedulaPanadero FROM Producto p join categoria c on p.Id_Cate =c.Id_Categoria;
select Prod_Id,Nombre,Canti,Precio,Nombre_categoria from consultarproductos;

create view cargarcalificaciones as
select Id_calif,Nota_cali,Comentario,Fecha,cliente_Cedula,Ced_Pas,p.Nombre from calificaciones c 
join pastelero p on c.Ced_Pas=p.CedulaPanadero; 



/********************************TRIGGER****************************************/


DELIMITER |
CREATE TRIGGER actualizacionestadodecalificacion BEFORE update ON pedido
FOR EACH ROW
BEGIN
if new.Estado='Completado' then
update pedido set calificado='No';
END IF;
END |

DELIMITER |
CREATE TRIGGER actualizaciondireccion BEFORE update ON localizacion
FOR EACH ROW
BEGIN
if new.CodigoPostal<>old.CodigoPostal then
update pastelero set Cod_postal=new.CodigoPostal;
END IF;
END |

DELIMITER |
CREATE TRIGGER actualizacionsaldocuenta BEFORE insert ON pedido
FOR EACH ROW
BEGIN
set @saldoanterior=(select saldo from cuentabancaria);
if saldoanterior>Total then
update cuentabancaria set saldo=saldo-Total;

END IF;
END |

/********************************INDEX****************************************/


create index indice1 on calificaciones(Nota_cali);
create index indice2 on cuentabancaria (saldo);
create index indice3 on entrega_domicilio(Fecha);
create index indice4 on pastelero(Nombre);
create index indice5 on producto(pastelero_CedulaPanadero);

/********************************USUARIOS****************************************/


Create user 'admin1'@'localhost' Identified by 'admin1';
GRANT ALL PRIVILEGES on proyectobd.* TO 'admin1'@'localhost';
Create user 'admin2'@'localhost' Identified by 'admin2';
GRANT ALL PRIVILEGES on proyectobd.* TO 'admin2'@'localhost';
Create user 'empleado1'@'localhost' Identified by 'empleado1';
GRANT SELECT(Nota_cali,Comentario,Fecha) on proyectobd.calificaciones TO 'empleado1'@'localhost';
GRANT SELECT(Cedula,Nombre,telefono,Correo) on proyectobd.cliente TO 'empleado1'@'localhost';
GRANT SELECT on proyectobd.consultarpedidos TO 'empleado1'@'localhost';

Create user 'empleado2'@'localhost' Identified by 'empleado2';
GRANT SELECT(Nota_cali,Comentario,Fecha) on proyectobd.calificaciones TO 'empleado2'@'localhost';
GRANT SELECT(Cedula,Nombre,telefono,Correo) on proyectobd.cliente TO 'empleado2'@'localhost';
GRANT SELECT on proyectobd.consultarpedidos TO 'empleado2'@'localhost';
GRANT update(Estado) on proyectobd.pedido TO 'empleado2'@'localhost';

Create user 'empleado3'@'localhost' Identified by 'empleado3';
GRANT SELECT(Nota_cali,Comentario,Fecha) on proyectobd.calificaciones TO 'empleado3'@'localhost';
GRANT SELECT(Cedula,Nombre,telefono,Correo) on proyectobd.cliente TO 'empleado3'@'localhost';
GRANT SELECT on proyectobd.consultarpedidos TO 'empleado3'@'localhost';
GRANT update(Estado) on proyectobd.pedido TO 'empleado3'@'localhost';
