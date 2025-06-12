/**********************************************************************
********** CAMBIAR EL VALOR DE LA VARIABLE @path POR LA RUTA ********** 
**********      EN DONDE SE ENCUENTREN LOS ARCHIVOS CSV      **********
**********************************************************************/

USE MyStoreDb;

--BEGIN TRANSACTION

--DECLARACION DE VARIABLE PARA LA RUTA DE LOS ARCHIVOS CSV
DECLARE @path VARCHAR(MAX) = 'C:\DatosDb\';

--DECLARACION DE VARIABLE PARA EL NOMBRE DEL ARCHIVO
DECLARE @file VARCHAR(100);

--DECLARACION DE VARIABLE PARA GUARDAR LA QUERY
DECLARE @query NVARCHAR(MAX);


-- CARGA DE DATOS DESDE ARCHIVO CSV PARA LA TABLA "STATE"
SET @file= 'TableState.csv';

SET @query = (
	'BULK INSERT [STATE]' +
    'FROM ''' + @path + @file + ''' ' +
    'WITH ( ' +
    '    FIELDTERMINATOR = '';'', ' +
    '    ROWTERMINATOR = ''\n'', ' +
    '    FIRSTROW = 2, ' +
    '    CODEPAGE = ''1252'', ' +
    '    KEEPIDENTITY ' +
    ')'
)
EXEC sp_executesql @query;


-- CARGA DE DATOS DESDE ARCHIVO CSV PARA LA TABLA "CITY"
SET @file= 'TableCity.csv';

SET @query = (
	'BULK INSERT [CITY]' +
    'FROM ''' + @path + @file + ''' ' +
    'WITH ( ' +
    '    FIELDTERMINATOR = '';'', ' +
    '    ROWTERMINATOR = ''\n'', ' +
    '    FIRSTROW = 2, ' +
    '    CODEPAGE = ''1252'', ' +
    '    KEEPIDENTITY ' +
    ')'
)
EXEC sp_executesql @query;


--INSERCION DE DATOS PARA LA TABLA CUSTOMER_TYPE
INSERT INTO CUSTOMER_TYPE VALUES
	(1,'Empresa'),
	(2,'Minorista');


--INSERCION DE DATOS PARA LA TABLA IDENTIFIER_TYPE
INSERT INTO IDENTIFIER_TYPE VALUES
	('DNI'),
	('CUIL-CUIT'),
	('LE-LC');
	
--INSERCION DE DATOS PARA LA TABLA CUSTOMER
INSERT INTO CUSTOMER(
	ID_CUSTOMER,
	ID_CUSTOMER_TYPE,
	ID_IDENTIFIER_TYPE,
	IDENTIFIER_NUMBER,
	[NAME],
	LAST_NAME,
	GENDER,
	EMAIL,
	STREET,
	NUMBER,
	ID_CITY,
	PHONE,
	BIRTH_DATE
)
VALUES
	(DEFAULT,1,2,20459876546,'Edetop S.A',NULL,'X','edetop_contrataciones@edetop.com','Av. Centenario',666,140553,46987456,'1996-10-05'),
	(DEFAULT,2,2,20652394524,'Anibal','Lopez','M','aLopez.931@live.com','Bacacay',1234,141141,1166857565,'1991-08-11'),
	(DEFAULT,2,2,20452364589,'Pablo Ariel','Martinez','M','pablo.a.martinez@outlook.com','Asamblea',4321,140931,1168974562,'1989-09-19'),
	(DEFAULT,1,2,20658981256,'CaniCan S.A.C',NULL,'X','dptologistica@canican.com.ar','Olazabal',654,141288,47896545,'2003-09-11'),
	(DEFAULT,2,2,64589456984,'Juan Esteban','Do Prado','M','juandoprado.1985@gmail.com','Hernesto Gutierres',6578,140840,563547785,'2007-05-02'),
	(DEFAULT,1,2,20698775645,'ComSolution',NULL,'X','comsolution.contacto@gmail.com','Francia',689,140840,1198745698,'1994-08-04'),
	(DEFAULT,2,2,20350375678,'Ariana Beatriz','Mandela','F','adri.mandela.90@outlook.com','Bernardo de Irigoyen',976,60420,1198569985,'2005-03-02'),
	(DEFAULT,2,2,20657896542,'Rolando Anibal','Monserrat','M','rolandomonse89@gmail.com','Azopardo',687,309945,1187456987,'2001-05-21'),                                                                            
	(DEFAULT,2,2,20235647889,'Armando Esteban','Quito','M','armadoelbanquito@live.com.ar','Curupayti',6899,345070,1169875423,'1982-06-29'),
	(DEFAULT,2,2,20235647890,'Muhammad','Pizarro','M','janoinnapragrei-1279@yopmail.com','Av Pres. Roque S�enz Pena',725,60805,1152293856,'1983-02-16'),
	(DEFAULT,2,2,20235647891,'Mariano Sebastian','Lopez','M','marianoserramno@gmail.com','General Guti�rrez',543,60805,1134712295,'1984-12-28'),
	(DEFAULT,2,2,20235647892,'Guadalupe Alejandra','Arribas','F','guada_arribas@hotmail.com','Tres Arroyos',354,60568,1171301731,'2003-02-15'),
	(DEFAULT,1,2,20235647893,'Maria Dolores','Gutierrez','X','supra_contrataciones@suprasrl.com','Pres. Julio Argentino Rocav',533,60658,1199549167,'2002-03-02'),
	(DEFAULT,2,2,20235647894,'Miguel Angel','Sepulveda','M','miguelitosepulveda@outlook.com','Av Jos� Ignacio de la Roza Oeste',499,60441,1181967606,'2004-10-10'),
	(DEFAULT,2,2,20235647895,'Roxana','Alegre','F','alegre_roxana@yahoo.com','Independencia',661,60357,1164386039,'1982-05-04'),
	(DEFAULT,2,2,20235647896,'Moises Anibal','Padilla','M','prassacropreuffei-5003@yopmail.com','Riobamba',345,60260,1146804475,'1998-01-13'),
	(DEFAULT,2,2,20235647897,'Juan Ignacio','Galera','M','juan_nacho_galera@hotmail.com','Posadas',1557,60154,1129222911,'1990-11-04'),
	(DEFAULT,2,2,20235647898,'Maria Elisa','Palau','F','mariaelisa_palau89@gmail.com','Calle 40',35,60021,111641347,'1983-08-04'),
	(DEFAULT,1,2,20235647899,'Angela','Novo','X','electro.solution@outlook.com','San Jer�nimo',3126,60833,1194059783,'2006-05-27'),
	(DEFAULT,1,2,20235647900,'Pedro Sebastian','Menendez','X','netcore.contact@netcoresac.com.ar','Av Blas Parera',7605,60791,1176478219,'1984-01-11'),
	(DEFAULT,2,2,20235647901,'Jaime Alberto','Corrales','M','jaime.corrales89@live.com.ar','Av Callao',1465,60749,1158896655,'2005-12-03'),
	(DEFAULT,2,2,20235647902,'German Franco','Amoroso','M','broulloimoibala-2221@yopmail.com','Av Albarellos',2565,60749,1141315091,'1999-12-08'),
	(DEFAULT,1,2,20235647903,'Alfonso Macimiliano','Gines','X','automotoressm.logistica@gmail.com','Paraguay',474,60791,1123733527,'1983-11-07'),
	(DEFAULT,2,2,20652971524,'Gerardo','Guzman','M','Gera_Lopez.931@gmail.com','Dorrego',34,309945,1166847565,'1982-10-09');


--INSERCION DE DATOS PARA LA TABLA SECTOR
INSERT INTO SECTOR VALUES
	('Ventas'),
	('RRHH'),
	('Deposito'),
	('Mantenimiento'),
	('Contabilidad'),
	('Gerencia'),
    ('Informatica'),
    ('Logistica');   


--INSERCION DE DATOS PARA LA TABLA EMPLOYEE
INSERT INTO EMPLOYEE(DNI, CUIL_CUIT,[NAME], LAST_NAME, PHONE, STREET, NUMBER, ID_CITY, GENDER, EMAIL, ID_SECTOR, BIRTH_DATE, ENTRY_DATE) VALUES
    (31615926,2031615926, 'Juan Gabriel','Sanchez', '1164589764','Olleros', 22007, 60756, 'M','jg_sanchez@myshop.com',1,'1999-04-11', '2020-08-18'),
    (27182818,20271828184, 'Lorena Isabel','Vizagarra','1169874523','Amigorena', 65,22042,'F','li_vizgarra@myshop.com',1,'1994-01-31', '2020-05-19'),
    (35577932,20355779328, 'Micaela Analia','Gomez','1147852369','Av de Mayo', 1370,60756,'F','ma_gomez@myshop.com',1,'1995-03-31', '2020-08-26'),
    (46245638,23462456384, 'Pablo Mariano','Monje','1169758975','Charcas', 2802,22035,'M','pm_monje@myshop.com',1,'2001-10-08', '2020-05-20'),
    (46243638,20462436386, 'Martin Leonardo','Zapata','1147236845','Hip�lito Irigoyen',950,60756,'M','ml_zapata@myshop.com',1,'1999-09-30', '2020-04-21'),
    (38341950,20383419508, 'Cristian Ezequiel','Soporsky','1169874251','Av Don Pedro de Mendoza',1899,60756,'M','ce_soporsky@myshop.com',1,'1992-09-07','2020-06-08'),
    (84677433,23846774336, 'Vanina Alejandra','Gomez','1184368529','General Lavalle',298,60756,'F','va_gomez@myshop.com',1,'2002-07-25', '2020-02-23'),
    (79502884,20795028844, 'Estefania Beatriz','Garcia','1164289730','Viamonte',1501,22105,'F','eb_garcia@myshop.com',1,'1991-10-31', '2021-01-12'),
    (94441924,20944419246, 'Carlos Manuel','Krasinsky','1190023478','San Luis',84,60756,'M','cm_krasinsky@myshop.com',1,'2001-02-01', '2021-01-30'),
    (26788718,20267887186, 'Leonardo Arturo','Illia','1188965455','Carlos Quiroga',110,60756,'M','la_illia@myshop.com',1,'1983-05-20', '2020-06-01'),
    (31415926,20314159266, 'Karina Alejandra','Sanchez','1162388546','Av Santa Fe',4636,60756,'F','ka_sanchez@myshop.com',1,'1990-04-16', '2020-11-15'),
    (35455932,23354559324, 'Jorge Luis','Santos','1198744533','Patricias Mendocinas',1532,60861,'M','jl_santos@myshop.com',1,'1995-12-13', '2020-12-31'),
    (97932384,20979323846, 'Lorena Martina','Tolosa','1197885212','Av Medrano',1475,60749,'F','lm_tolosa@myshop.com',1,'1989-04-12', '2020-06-12'),
    (38327950,20383279500, 'Pedro Luis','Garcia','1187611422','Ar�valo',2357,60756,'M','pl_garcia@myshop.com',1,'2000-12-03', '2020-03-05'),
    (46264338,20462643384, 'Andrea Estafania','Caseros','1169874563','Nicanor Carranza',3714,60756,'F','ae_caseros@myshop.com',1,'1995-08-22','2020-05-18'),
    (79545684,20795456846, 'Roberto Daniel','Diaz','1165894156','Salta Norte',1294,60756,'X','rd_diaz@myshop.com',3,'1990-03-23','2020-11-16'),
    (90281924,23902819240, 'Maria Claudia','Romero','1169874569','Av Callao',1764,60756,'F','mc_romero@myshop.com',2,'1984-08-17','2020-12-24'),
    (84627733,20846277330, 'Sergio Marcelo','Guzman','1178952368','Av Belgrano',1548,60749,'M','sm_guzman@myshop.com',3,'2000-08-10','2021-01-07'),
    (31475526,23314755268, 'Miguel Oscar','Torres', '1165894125','Independencia',30,60756,'M','mo_torres@myshop.com',3,'1983-07-13','2021-04-19'),
    (64458950,20644589506, 'Rosa Daniela','Acosta','1169872365','Jos� Baigorri',653,60749,'M','rd_acosta@myshop.com',3,'1995-04-15','2021-04-19'),
    (27134418,23271344180, 'Oscar Esteban','Martinez','1169852346','Pablo Abriata',2354,60756,'M','martinezIT@myshop.com',7,'1990-03-11','2020-1-10'),
	(38965782,23389657820, 'Maria Leonarda','Lezcano','1169742346','Olazabal',172,60756,'F','ml_lezcanoIT@myshop.com',1,'1998-03-02','2023-1-10');


--INSERCION DE DATOS PARA LA TABLA PRODUCT_CATEGORY
INSERT INTO PRODUCT_BRAND VALUES
	('OEM'),
	('Intel'),
	('AMD'),
	('Asus'),
	('MSI'),
	('Asrock'),
	('Gigabyte'),
	('Zotac'),
	('EVGA'),
	('Western Digital'),
	('Kingstone'),
	('Crucial'),
	('XFX'),
	('Adata'),
	('Seagate'),
	('Corsair'),
	('Team'),
	('Geil'),
	('Coolermaster'),
	('Thermaltake'),
	('Red Dragon'),
	('Aerocool'),
	('Sentey'),
	('Samsung'),
	('LG'),
	('HP'),
	('Noga'),
	('Genius'),
	('TP-Link'),
	('Cisco'),
	('Nisuta'),
	('Toshiba'),
	('Logitech'),
	('Kolink'),
    ('Lenovo');


--INSERCION DE DATOS PARA LA TABLA PRODUCT_CATEGORY
INSERT INTO PRODUCT_CATEGORY VALUES
	('Microprocesador'),
	('Motherboard'),
	('Memoria RAM'),
	('PSU'),
	('Almacenamiento'),
	('Pantallas'),
	('Mouse'),
	('Teclado'),
	('Parlantes'),
	('Auriculares'),
	('Gabinetes'),
	('WebCam'),
	('Cooler de procesador'),
	('Cooler Case'),
	('GPU'),
	('Adaptador'),
	('Router'),
	('Switch'),
	('Placa WiFi'),
	('USB Wireless Receiver'),
	('Cable'),
	('Gadget'),
    ('Laptop PC');


-- CARGA DE DATOS DESDE ARCHIVO CSV PARA LA TABLA PRODUCT
SET IDENTITY_INSERT MyStoreDb.dbo.[PRODUCT] ON;
SET @file= 'TableProduct.csv';

SET @query = (
	'BULK INSERT [PRODUCT]' +
    'FROM ''' + @path + @file + ''' ' +
    'WITH ( ' +
    '    FIELDTERMINATOR = '';'', ' +
    '    ROWTERMINATOR = ''\n'', ' +
    '    FIRSTROW = 1, ' +
    '    CODEPAGE = ''1252'', ' +
    '    KEEPIDENTITY ' +
    ')'
)
EXEC sp_executesql @query;
SET IDENTITY_INSERT MyStoreDb.dbo.[PRODUCT] OFF;



-- CARGA DE DATOS DESDE ARCHIVO CSV PARA LA TABLA PRODUCT_STOCK
SET @file= 'TableProductStock.csv';
SET @query = (
	'BULK INSERT [PRODUCT_STOCK]' +
    'FROM ''' + @path + @file + ''' ' +
    'WITH ( ' +
    '    FIELDTERMINATOR = '';'', ' +
    '    ROWTERMINATOR = ''\n'', ' +
    '    FIRSTROW = 1, ' +
    '    CODEPAGE = ''1252'', ' +
    '    KEEPIDENTITY ' +
    ')'
)
EXEC sp_executesql @query;


--INSERCION DE DATOS PARA LA TABLA DELIVERY_METHOD
INSERT INTO DELIVERY_METHOD VALUES
	('Retiro en sucursal'),
	('Envio a domicilio');


--INSERCION DE DATOS PARA LA TABLA ORDER
INSERT INTO [ORDER](
	ID_CUSTOMER,
	ID_EMPLOYEE,
	[DATE],
	ID_DELIVERY_METHOD
)
VALUES
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'juandoprado.1985@gmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'ce_soporsky@myshop.com'), '2023-01-03 8:30:00',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'edetop_contrataciones@edetop.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'ae_caseros@myshop.com') ,'2023-01-03 9:30:00',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'supra_contrataciones@suprasrl.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'cm_krasinsky@myshop.com') ,'2023-01-03 10:30:00',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'pablo.a.martinez@outlook.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'ae_caseros@myshop.com') ,'2023-01-03 11:30:00',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'dptologistica@canican.com.ar'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'eb_garcia@myshop.com') ,'2023-01-04 9:20:00',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'supra_contrataciones@suprasrl.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'jl_santos@myshop.com') ,'2023-01-04 10:20:00',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'juan_nacho_galera@hotmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'lm_tolosa@myshop.com') ,'2023-01-04 11:20:00',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'netcore.contact@netcoresac.com.ar'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'ae_caseros@myshop.com') ,'2023-01-05 9:10:00',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'automotoressm.logistica@gmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'lm_tolosa@myshop.com') ,'2023-01-06 10:10:00',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'aLopez.931@live.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'pl_garcia@myshop.com') ,'2023-01-06 11:10:00',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'comsolution.contacto@gmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'li_vizgarra@myshop.com') ,'2023-01-06 12:10:00',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'armadoelbanquito@live.com.ar'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'pm_monje@myshop.com') ,'2023-01-06 13:10:00',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'marianoserramno@gmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'ka_sanchez@myshop.com') ,'2023-01-06 14:10:00',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'dptologistica@canican.com.ar'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'jl_santos@myshop.com') ,'2023-01-06 15:10:00',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'adri.mandela.90@outlook.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'ae_caseros@myshop.com') ,'2023-01-06 16:10:00',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'rolandomonse89@gmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'li_vizgarra@myshop.com') ,'2023-01-06 17:10:00',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'jaime.corrales89@live.com.ar'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'cm_krasinsky@myshop.com') ,'2023-01-11 10:45:00',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'broulloimoibala-2221@yopmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'la_illia@myshop.com') ,'2023-01-11 11:45:00',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'mariaelisa_palau89@gmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'ae_caseros@myshop.com') ,'2023-01-11 12:45:00',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'electro.solution@outlook.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'pm_monje@myshop.com') ,'2023-01-11 13:45:00',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'janoinnapragrei-1279@yopmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'cm_krasinsky@myshop.com') ,'2023-01-12 8:25:00',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'guada_arribas@hotmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'ce_soporsky@myshop.com') ,'2023-01-12 9:25:00',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'miguelitosepulveda@outlook.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'pm_monje@myshop.com') ,'2023-01-12 10:25:00',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'alegre_roxana@yahoo.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'ka_sanchez@myshop.com') ,'2023-01-12 1:25:00',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'alegre_roxana@yahoo.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'va_gomez@myshop.com') ,'2023-01-12 12:25:00',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'edetop_contrataciones@edetop.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'ae_caseros@myshop.com') ,'2023-01-13 15:10:00',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'comsolution.contacto@gmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'va_gomez@myshop.com') ,'2023-01-14 10:45:00',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'comsolution.contacto@gmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'jg_sanchez@myshop.com') ,'2023-01-14 11:45:00',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'edetop_contrataciones@edetop.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'pl_garcia@myshop.com') ,'2023-01-14 16:10:00',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'broulloimoibala-2221@yopmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'lm_tolosa@myshop.com') ,'2023-01-14 16:40:00',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'netcore.contact@netcoresac.com.ar'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'li_vizgarra@myshop.com') ,'2021-01-17 07:00:23',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'pablo.a.martinez@outlook.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'la_illia@myshop.com') ,'2021-01-17 07:00:23',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'juan_nacho_galera@hotmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'la_illia@myshop.com') , '2021-01-17 07:00:23',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'automotoressm.logistica@gmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'eb_garcia@myshop.com') ,'2021-06-15 03:09:01',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'armadoelbanquito@live.com.ar'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'ae_caseros@myshop.com') , '2022-03-01 19:56:30',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'guada_arribas@hotmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'jg_sanchez@myshop.com') ,'2022-03-05 12:04:04',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'electro.solution@outlook.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'lm_tolosa@myshop.com') ,'2022-07-14 03:51:09',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'netcore.contact@netcoresac.com.ar'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'ml_zapata@myshop.com') ,'2021-05-11 14:39:11',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'pablo.a.martinez@outlook.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'ma_gomez@myshop.com') , '2022-05-15 09:20:04',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'juan_nacho_galera@hotmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'ma_gomez@myshop.com') , '2022-11-29 08:23:35',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'marianoserramno@gmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'jg_sanchez@myshop.com') , '2022-04-16 11:26:26',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'automotoressm.logistica@gmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'ce_soporsky@myshop.com'), '2021-03-02 03:33:27',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'aLopez.931@live.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'eb_garcia@myshop.com') , '2022-11-26 15:07:07',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'automotoressm.logistica@gmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'cm_krasinsky@myshop.com'), '2023-01-28 13:39:56',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'netcore.contact@netcoresac.com.ar'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'ml_zapata@myshop.com') , '2022-11-02 10:44:56',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'prassacropreuffei-5003@yopmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'ma_gomez@myshop.com') , '2021-12-12 10:04:03',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'netcore.contact@netcoresac.com.ar'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'eb_garcia@myshop.com') , '2021-08-13 09:14:17',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'juandoprado.1985@gmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'la_illia@myshop.com') , '2021-09-13 11:59:29',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'rolandomonse89@gmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'la_illia@myshop.com') , '2022-10-16 09:12:46',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'armadoelbanquito@live.com.ar'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'pl_garcia@myshop.com') , '2021-03-14 00:46:40',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'electro.solution@outlook.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'va_gomez@myshop.com') , '2021-02-05 10:42:41',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'netcore.contact@netcoresac.com.ar'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'cm_krasinsky@myshop.com') , '2022-06-05 06:37:33',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'prassacropreuffei-5003@yopmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'pm_monje@myshop.com') , '2021-09-20 03:44:28',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'guada_arribas@hotmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'ka_sanchez@myshop.com') , '2022-02-06 10:52:34',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'edetop_contrataciones@edetop.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'jl_santos@myshop.com') , '2022-04-24 06:26:38',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'edetop_contrataciones@edetop.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'li_vizgarra@myshop.com'), '2022-12-15 15:09:25',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'armadoelbanquito@live.com.ar'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'jl_santos@myshop.com') , '2021-01-20 00:12:41',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'automotoressm.logistica@gmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'jl_santos@myshop.com') , '2022-01-25 16:34:16',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'marianoserramno@gmail.com'), (
		SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'ae_caseros@myshop.com') , '2022-01-31 07:55:50',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'armadoelbanquito@live.com.ar'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'pl_garcia@myshop.com') , '2021-12-27 21:12:11',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'juandoprado.1985@gmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'lm_tolosa@myshop.com') , '2021-12-15 20:15:45',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'dptologistica@canican.com.ar'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'ae_caseros@myshop.com') , '2021-01-11 23:25:46',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'armadoelbanquito@live.com.ar'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'jg_sanchez@myshop.com') , '2022-06-13 15:07:56',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'adri.mandela.90@outlook.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'ma_gomez@myshop.com') , '2022-05-14 00:45:56',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'guada_arribas@hotmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'la_illia@myshop.com') , '2021-02-28 00:52:04',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'prassacropreuffei-5003@yopmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'ka_sanchez@myshop.com'), '2022-08-17 06:03:48',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'edetop_contrataciones@edetop.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'lm_tolosa@myshop.com') , '2023-03-31 01:15:32',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'guada_arribas@hotmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'va_gomez@myshop.com') , '2022-01-01 08:44:44',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'edetop_contrataciones@edetop.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'eb_garcia@myshop.com') , '2022-07-15 04:22:46',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'comsolution.contacto@gmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'la_illia@myshop.com') , '2022-05-09 20:34:37',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'jaime.corrales89@live.com.ar'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'cm_krasinsky@myshop.com') , '2023-03-23 03:32:52',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'broulloimoibala-2221@yopmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'ma_gomez@myshop.com') , '2021-04-02 13:30:03',1),
	((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'aLopez.931@live.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'eb_garcia@myshop.com') , '2022-11-26 15:07:07',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'automotoressm.logistica@gmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'cm_krasinsky@myshop.com') , '2023-02-28 13:39:56',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'netcore.contact@netcoresac.com.ar'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'ml_zapata@myshop.com') , '2022-03-02 10:44:56',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'prassacropreuffei-5003@yopmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'ma_gomez@myshop.com') , '2021-03-12 10:04:03',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'netcore.contact@netcoresac.com.ar'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'eb_garcia@myshop.com') , '2021-04-13 09:14:17',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'juandoprado.1985@gmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'la_illia@myshop.com') , '2021-04-13 11:59:29',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'rolandomonse89@gmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'la_illia@myshop.com') , '2022-04-16 09:12:46',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'armadoelbanquito@live.com.ar'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'pl_garcia@myshop.com') , '2021-04-14 00:46:40',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'electro.solution@outlook.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'va_gomez@myshop.com') , '2021-05-05 10:42:41',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'netcore.contact@netcoresac.com.ar'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'cm_krasinsky@myshop.com'), '2022-05-05 06:37:33',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'prassacropreuffei-5003@yopmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'pm_monje@myshop.com'), '2021-06-20 03:44:28',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'guada_arribas@hotmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'ka_sanchez@myshop.com'), '2022-06-06 10:52:34',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'edetop_contrataciones@edetop.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'jl_santos@myshop.com'), '2022-02-24 06:26:38',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'edetop_contrataciones@edetop.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'li_vizgarra@myshop.com'), '2022-12-15 15:09:25',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'armadoelbanquito@live.com.ar'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'jl_santos@myshop.com'), '2021-12-20 00:12:41',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'automotoressm.logistica@gmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'jl_santos@myshop.com'), '2022-03-25 16:34:16',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'marianoserramno@gmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'ae_caseros@myshop.com'), '2022-07-31 07:55:50',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'armadoelbanquito@live.com.ar'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'pl_garcia@myshop.com'), '2022-05-27 21:12:11',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'juandoprado.1985@gmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'lm_tolosa@myshop.com'), '2021-08-15 20:15:45',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'dptologistica@canican.com.ar'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'ae_caseros@myshop.com'), '2021-08-11 23:25:46',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'armadoelbanquito@live.com.ar'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'jg_sanchez@myshop.com'), '2022-08-13 15:07:56',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'adri.mandela.90@outlook.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'ma_gomez@myshop.com') ,'2022-09-14 00:45:56',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'guada_arribas@hotmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'la_illia@myshop.com'), '2021-09-28 00:52:04',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'prassacropreuffei-5003@yopmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'ka_sanchez@myshop.com'), '2022-10-17 06:03:48',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'edetop_contrataciones@edetop.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'lm_tolosa@myshop.com'), '2023-10-31 01:15:32',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'guada_arribas@hotmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'va_gomez@myshop.com'), '2022-10-01 08:44:44',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'edetop_contrataciones@edetop.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'eb_garcia@myshop.com'), '2022-10-15 04:22:46',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'comsolution.contacto@gmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'la_illia@myshop.com') , '2022-09-09 20:34:37',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'jaime.corrales89@live.com.ar'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'cm_krasinsky@myshop.com'), '2023-10-23 03:32:52',1),
    ((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'broulloimoibala-2221@yopmail.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'ma_gomez@myshop.com') ,'2021-11-02 13:30:03',1),
	((SELECT ID_CUSTOMER FROM CUSTOMER WHERE EMAIL = 'edetop_contrataciones@edetop.com'), 
		(SELECT ID_EMPLOYEE FROM EMPLOYEE WHERE EMAIL = 'ae_caseros@myshop.com') , '2023-03-03 9:30:00',1);


--INSERCION DE DATOS PARA LA TABLA ORDER_DETAIL
INSERT INTO ORDER_DETAIL VALUES
	(1,5,1),(1,32,1),
	(2,9,1),(2,38,1),(2,69,2),(2,30,1),(2,90,1),(2,128,1),(2,56,1),
	(3,16,1),(3,31,1),(3,53,1),(3,60,1),(3,70,2),(3,91,1),(3,122,1),(3,132,1),(3,141,1),(3,146,1),(3,108,1),
	(4,161,1),(4,150,1),
	(5,125,1),
	(6,4,1),(6,21,1),(6,61,1),
	(7,163,1),(7,167,1),(7,151,1),(7,149,3),
	(8,163,1),(8,130,1),(8,11,1),(8,95,1),(8,29,2),(8,80,1),(8,122,1),(8,158,1),(8,172,1),(8,137,1),
	(9,20,1),(9,3,1),(9,65,1),(9,101,1),(9,21,1),
	(10,25,2),(10,94,1),(10,109,1),
	(11,125,1),(12,10,1),
	(12,30,1),(12,103,1),
	(13,23,1),(13,51,1),(13,90,1),(13,130,1),
	(14,17,1),(14,33,1),(14,107,3),(14,125,1),
	(15,54,1),
	(16,62,1),
	(17,1,1),(17,11,2),(17,46,1),(17,88,1),(17,140,4),
	(18,12,1),(18,106,1),
	(19,3,1),(19,77,1),(19,92,1),
	(20,91,1),
	(21,120,1),(21,131,1),(21,145,1),
	(22,78,1),(22,116,1),(22,147,1),(22,170,1),
	(23,5,1),(23,23,2),(23,77,1),
	(24,84,1),(24,130,1),(24,168,1),
	(25,9,1),(25,44,1),
	(26,34,1),(26,77,1),
	(27,81,1),
	(28,69,1),
	(29,26,3),(29,60,2),
	(30,4,1),(30,23,1),(30,40,1),(30,56,1),(30,111,1),(30,127,2),(30,148,1),
    (31,150,2),
	(32,8,1),(32,20,6),
    (33,111,2),(33,1,1),(33,16,1),
    (34,11,2),
	(35,133,1),
    (36,161,2),
    (37,101,2),
    (38,77,1),
    (39,6,3),(39,2,1),
    (40,163,1),(40,101,3),
    (41,20,1),
    (42,2,1),
    (43,9,1),
    (44,16,2),
    (45,96,2),
    (46,12,2),(46,1,1),
    (47,63,1),
    (48,60,2),(48,115,2),
    (49,110,1),(49,103,1),
    (50,5,1),(50,77,3),
    (51,50,1),
    (52,88,2),(52,5,1),(52,32,1),
	(53,9,1),(53,38,1),(53,69,2),(53,30,1),(53,90,1),(53,128,1),(53,56,1),
	(54,16,1),(54,31,1),(54,53,1),(54,60,1),(54,70,2),(54,91,1),(54,122,1),(54,132,1),(54,141,1),(54,146,1),(54,108,1),
	(55,161,1),(55,150,1),
	(56,125,1),
	(57,4,1),(57,21,1),(57,61,1),
	(58,163,1),(58,167,1),(58,151,1),(58,149,3),
	(59,163,1),(59,130,1),(59,11,1),(59,95,1),(59,29,2),(59,80,1),(59,122,1),(59,158,1),(59,172,1),(59,137,1),
	(60,20,1),(60,3,1),(60,65,1),(60,101,1),(60,21,1),
	(61,25,2),(61,94,1),(61,109,1),
	(62,125,1),
	(63,10,1),(63,30,1),(63,103,1),
	(64,23,1),(64,51,1),(64,90,1),(64,130,1),
	(65,17,1),(65,33,1),(65,107,3),(65,125,1),
	(66,54,1),
	(67,62,1),
	(68,1,1),(68,11,2),(68,46,1),(68,88,1),(68,140,4),
	(69,12,1),(69,106,1),
	(70,3,1),(70,77,1),(70,92,1),
	(71,91,1),
	(72,120,1),(72,131,1),(72,145,1), 
	(73,21,1),(73,61,1),(73,163,1),(73,167,1),(73,151,1),
	(74,149,3),
	(75,163,1),(75,130,1),
	(76,11,1),(76,95,1),(76,29,2),
	(77,80,1),(77,122,1),
	(78,158,1),
	(79,172,1),
	(80,137,1),
	(81,20,1),(81,3,1),(81,65,1),
	(82,101,1),(82,21,1),
	(83,25,2),
	(84,94,1),
	(85,109,1),(85,125,1),
	(86,10,1),
	(87,30,1),
	(88,103,1),
	(89,23,1),(89,51,1),(89,90,1),
	(90,130,1),(90,17,1),(90,33,1),(90,107,3),
	(91,125,1),(91,54,1),
	(92,62,1),
	(93,1,1),(93,11,2),
	(94,46,1),
	(95,88,1),
	(96,140,4),
	(97,12,1),(97,106,1),
	(98,3,1),(98,77,1),
	(99,92,1),(99,91,1),(99,120,1),(99,131,1),(99,11,2),(99,46,1),
	(100,88,1),(100,140,4),(100,12,1),(100,106,1),
	(101,3,1),(101,77,1),(101,92,1),(101,91,1),(101,120,1),
	(102,131,1),
	(103,140,4);


--INSERCION DE DATOS PARA LA TABLA PAY METHOD
INSERT INTO PAY_METHOD VALUES
	('Efectivo'),
	('Transferencia'),
	('Tarjeta de credito'),
	('Tarjeta de debito');


--INSERCION DE DATOS PARA LA TABLA PROMOTION
INSERT INTO PROMOTION VALUES
	(DEFAULT, 'Promocion comienzo 2021', '2021-01-10', '2021-01-17', 1, 20),
	(DEFAULT, 'Promocion comienzo de clases 2021', '2021-02-25', '2021-03-05', 1, 15),
	(DEFAULT, 'Promocion primavera 2021', '2021-09-15', '2021-09-25', 1, 10),
	(DEFAULT, 'Promocion invierno 2022', '2022-07-01', '2022-07-30', 1, 5),
	(DEFAULT, 'Promocion aniversario del 2023', '2023-03-17', '2023-03-25', 1, 40),
	(DEFAULT, 'Promocion dia del padre 2021', '2021-06-15', '2021-06-24', 2, 15),
	(DEFAULT, 'Promocion comienzo 2023', '2023-01-01', '2023-01-15', 3, 20);


--INSERCION DE DATOS PARA LA TABLA PROMOTION_PRODUCT
INSERT INTO PROMOTION_PRODUCT VALUES
	((SELECT ID_PROMOTION FROM PROMOTION WHERE [DESCRIPTION]='Promocion comienzo 2021'), 125),
	((SELECT ID_PROMOTION FROM PROMOTION WHERE [DESCRIPTION]='Promocion comienzo 2021'), 20),
	((SELECT ID_PROMOTION FROM PROMOTION WHERE [DESCRIPTION]='Promocion comienzo 2021'), 1),
	((SELECT ID_PROMOTION FROM PROMOTION WHERE [DESCRIPTION]='Promocion comienzo 2021'), 12),
	((SELECT ID_PROMOTION FROM PROMOTION WHERE [DESCRIPTION]='Promocion comienzo de clases 2021'), 2),
	((SELECT ID_PROMOTION FROM PROMOTION WHERE [DESCRIPTION]='Promocion comienzo de clases 2021'), 40),
	((SELECT ID_PROMOTION FROM PROMOTION WHERE [DESCRIPTION]='Promocion comienzo de clases 2021'), 32),
	((SELECT ID_PROMOTION FROM PROMOTION WHERE [DESCRIPTION]='Promocion primavera 2021'), 56),
	((SELECT ID_PROMOTION FROM PROMOTION WHERE [DESCRIPTION]='Promocion primavera 2021'), 69),
	((SELECT ID_PROMOTION FROM PROMOTION WHERE [DESCRIPTION]='Promocion invierno 2022'), 101),
	((SELECT ID_PROMOTION FROM PROMOTION WHERE [DESCRIPTION]='Promocion invierno 2022'), 106),
	((SELECT ID_PROMOTION FROM PROMOTION WHERE [DESCRIPTION]='Promocion invierno 2022'), 18),
	((SELECT ID_PROMOTION FROM PROMOTION WHERE [DESCRIPTION]='Promocion invierno 2022'), 69),
	((SELECT ID_PROMOTION FROM PROMOTION WHERE [DESCRIPTION]='Promocion aniversario del 2023'), 91),
	((SELECT ID_PROMOTION FROM PROMOTION WHERE [DESCRIPTION]='Promocion aniversario del 2023'), 100),
	((SELECT ID_PROMOTION FROM PROMOTION WHERE [DESCRIPTION]='Promocion aniversario del 2023'), 17),
	((SELECT ID_PROMOTION FROM PROMOTION WHERE [DESCRIPTION]='Promocion dia del padre 2021'), 11),
	((SELECT ID_PROMOTION FROM PROMOTION WHERE [DESCRIPTION]='Promocion dia del padre 2021'), 25),
	((SELECT ID_PROMOTION FROM PROMOTION WHERE [DESCRIPTION]='Promocion dia del padre 2021'), 15),
	((SELECT ID_PROMOTION FROM PROMOTION WHERE [DESCRIPTION]='Promocion comienzo 2023'), 140),
	((SELECT ID_PROMOTION FROM PROMOTION WHERE [DESCRIPTION]='Promocion comienzo 2023'), 4),
	((SELECT ID_PROMOTION FROM PROMOTION WHERE [DESCRIPTION]='Promocion comienzo 2023'), 108);

--INSERCION DE DATOS PARA LA TABLA PRODUCT_PRICE (Activa TRG_INSERT_PRODUCT_HISTORY_PRICE)
INSERT INTO PRODUCT_PRICE VALUES
	(1,30.00),(2,48.50),(3,85.00),(4,94.80),(5,132.00),
	(6,140.00),(7,240.00),(8,280.00),(9,328.00),(10,292.00),
	(11,96.75),(12,68.40),(13,124.32),(14,113.50),(15,162.30),
	(16,254.00),(17,260.00),(18,291.60),(19,740.50),(20,727.00),
	(21,495.00),(22,485.50),(23,471.75),(24,245.00),(25,250.00),
	(26,1110.00),(27,1090.00),(28,1000.00),(29,970.00),(30,750.00),
	(31,745.00),(32,648.00),(33,270.00),(34,20.00),(35,34.00),
	(36,58.00),(37,58.00),(38,66.40),(39,68.00),(40,70.00),
	(41,72.00),(42,195.00),(43,211.00),(44,267.50),(45,477.00),
	(46,895.00),(47,50.00),(48,53.40),(49,77.00),(50,95.00),
	(51,200.00),(52,512.00),(53,730.00),(54,187.00),(55,70.00),
	(56,68.00),(57,46.50),(58,45.00),(59,52.50),(60,185.00),
	(61,68.00),(62,95.00),(63,86.00),(64,96.50),(65,51.00),
	(66,31.00),(67,50.00),(68,53.00),(69,59.00),(70,57.50),
	(71,63.50),(72,35.00),(73,38.00),(74,40.00),(75,40.00),
	(76,54.00),(77,84.50),(78,105.00),(79,195.00),(80,225.00),
	(81,250.00),(82,21.50),(83,21.50),(84,23.00),(85,24.00),
	(86,33.00),(87,34.00),(88,37.00),(89,61.21),(90,72.00),
	(91,117.50),(92,123.00),(93,8.00),(94,10.00),(95,13.50),
	(96,17.50),(97,33.00),(98,18.00),(99,27.00),(100,29.00),
	(101,33.00),(102,61.50),(103,7.00),(104,8.50),(105,18.00),
	(106,19.00),(107,28.50),(108,37.00),(109,114.00),(110,7.50),
	(111,11.00),(112,11.50),(113,40.00),(114,15.50),(115,19.00),
	(116,25.50),(117,57.00),(118,110.00),(119,118.00),(120,123.00),
	(121,145.00),(122,156.00),(123,176.00),(124,210.00),(125,332.00),
	(126,45.00),(127,53.00),(128,56.00),(129,60.00),(130,62.00),
	(131,88.00),(132,124.00),(133,141.00),(134,352.00),(135,359.00),
	(136,375.00),(137,14.00),(138,20.50),(139,29.00),(140,30.50),
	(141,117.00),(142,147.00),(143,11.00),(144,12.50),(145,13.50),
	(146,2.50),(147,11.00),(148,39.00),(149,1.50),(150,2.00),
	(151,3.00),(152,46.00),(153,4.50),(154,1.50),(155,4.00),
	(156,14.00),(157,6.50),(158,2.00),(159,22.00),(160,60.00),
	(161,40.00),(162,26.00),(163,65.00),(164,14.00),(165,43.00),
	(166,12.00),(167,23.00),(168,14.00),(169,30.00),(170,30.00),
	(171,10.00),(172,13.50),(173,510.00),(174,620.00),(175,1625.00),
	(176,605.00),(177,640.00);