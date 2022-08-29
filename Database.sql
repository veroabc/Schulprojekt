### Creating the database for Scooteq Gmbh Hardwrae department 
### Common sql code

CREATE DATABASE Hardware;

CREATE TABLE Laptop
(
  idl INT NOT NULL AUTO_INCREMENT,
  name VARCHAR (128) NOT NULL default '',
  model VARCHAR (128) NOT NULL default '',
  cpu VARCHAR (64) default NULL,
  cpunumber int NOT NULL,
  display VARCHAR (64) default NULL,
  price VARCHAR (128) default NULL,
  PRIMARY KEY (idl)
);

CREATE TABLE Monitor
(
  idm INT NOT NULL AUTO_INCREMENT,
  name VARCHAR (128) NOT NULL default '',
  model VARCHAR (128) NOT NULL default '',
  display VARCHAR (64) default NULL,
  price VARCHAR (128) default NULL,
  PRIMARY KEY (idm)
);

Create Table Customer
(
  idcustomer INT NOT NULL AUTO_INCREMENT,
  name VARCHAR (128) NOT NULL,
  lastname VARCHAR (128) NOT NULL,
  email VARCHAR (128) NOT NULL,
  PRIMARY KEY(idcustomer)
);

Create Table Orderm
(
orderidm INT NOT NULL AUTO_INCREMENT,
idm int NOT NULL,
amount int NOT NULL,
PRIMARY KEY(orderidm),
FOREIGN KEY(idm) REFERENCES Monitor (idm));

Create Table Orderl
(
orderidl INT NOT NULL AUTO_INCREMENT,
idl int NOT NULL,
amount int NOT NULL,
PRIMARY KEY(orderidl),
FOREIGN KEY(idl) REFERENCES Laptop (idl));


Create Table Purchase
(
purchasenum INT NOT NULL AUTO_INCREMENT,
orderidl int NOT NULL,
orderidm int not null,
idcustomer int not null,
PRIMARY KEY(purchasenum),
FOREIGN KEY(orderidl) REFERENCES Orderl (orderidl),
FOREIGN KEY(orderidm) REFERENCES Orderm (orderidm),
FOREIGN KEY(idcustomer) REFERENCES Customer (idcustomer));


INSERT INTO Laptop (idl, name, model, cpu, cpunumber, display, price) VALUES ("011", "HP", "EliteBook", "Intel", 4, "1920X1080", "2185,01");
INSERT INTO Laptop (idl, nname, model, cpu, cpunumber, display, price) VALUES (idl, "Lenovo", "ThinkPad X1", "Intel", 4, "1920X1200", "2344,99");
INSERT INTO Monitor (idm, name, model, display, price) VALUES (idm, "Dell", "UltraSharp U2722DE", "2560X1440", "528,25");
INSERT INTO Monitor (idm, name, model, display, price) VALUES (idm , "Eizo", "FlexScan EV2795", "2560X1440", "749,00");
INSERT INTO Hardware.Customer (idcustomer, name, lastname, email) VALUES (idcustomer, "Lara", "Kroft", "dat@gmail.com");
INSERT INTO Hardware.Customer (idcustomer, name, lastname, email) VALUES (idcustomer, "Nills", "Michiels", "bottoms@aux.com");
INSERT INTO Hardware.Customer (idcustomer, name, lastname, email) VALUES (idcustomer, "Dan", "Borow", "borrowdam@max.com");
Insert iNTO Hardware.Orderl (orderidl, idl, amount) VALUES (orderidl, 1, 2);
Insert iNTO Hardware.Orderl (orderidl, idl, amount) VALUES (orderidl, 13, 22);
Insert iNTO Hardware.Orderl (orderidl, idl, amount) VALUES (orderidl, 11, 44);
Insert iNTO Hardware.Orderm (orderidm, idm, amount) VALUES (orderidm, 1, 515);
Insert iNTO Hardware.Orderm (orderidm, idm, amount) VALUES (orderidm, 2, 50);
Insert iNTO Hardware.Orderm (orderidm, idm, amount) VALUES (orderidm, 1, 550);
Insert iNTO Hardware.Purchase (purchasenum, orderidl, orderidm, idcustomer) VALUES (purchasenum, 1, 2, 3);
Insert iNTO Hardware.Purchase (purchasenum, orderidl, orderidm, idcustomer) VALUES (purchasenum, 2,3, 2);
Insert iNTO Hardware.Purchase (purchasenum, orderidl, orderidm, idcustomer) VALUES (purchasenum, 3, 1, 1);
