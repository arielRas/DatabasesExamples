/**************************************************************************/
/**************************************************************************/
/************         INSERCION DE DATOS BD SUSODA             ************/
/**************************************************************************/
/**************************************************************************/

USE SusodaOltpDb;
GO

--CLIENTES
INSERT INTO CLIENTE VALUES
	('Juan', 'Pérez', 'Calle Falsa', 123, 'Buenos Aires'),
	('María', 'Gómez', 'Av. Siempre', 456, 'Córdoba'),
	('Lucas', 'Ramírez', 'Av. del Sol', 789, 'Mendoza'),
	('Ana', 'López', 'Calle Luna', 1011, 'Tucumán'),
	('Carlos', 'Fernández', 'Calle Estrella', 1213, 'Salta'),
	('Sofía', 'Torres', 'Av. Río', 1415, 'Santa Fe'),
	('Martín', 'García', 'Calle Sur', 1617, 'Entre Ríos'),
	('Julia', 'Martínez', 'Av. Norte', 1819, 'Neuquén'),
	('Diego', 'Herrera', 'Calle Este', 2021, 'Chubut'),
	('Carla', 'Pérez', 'Calle Oeste', 2223, 'Misiones'),
	('Santiago', 'Mendoza', 'Av. Libertad', 2425, 'San Luis'),
	('Camila', 'Silva', 'Calle Roca', 2627, 'La Pampa'),
	('Tomás', 'Sánchez', 'Av. Mitre', 2829, 'Catamarca'),
	('Florencia', 'Gutiérrez', 'Calle Sarmiento', 3031, 'Chaco'),
	('Gabriel', 'Rodríguez', 'Av. Belgrano', 3233, 'Río Negro'),
	('Matías', 'López', 'Calle Nueva', 101, 'Buenos Aires'),
    ('Carla', 'Martínez', 'Av. San Martín', 202, 'Santa Fe'),
    ('Javier', 'Fernández', 'Calle Los Pinos', 303, 'Córdoba'),
    ('Sofía', 'García', 'Av. Libertador', 404, 'Mendoza'),
    ('Fernando', 'Sánchez', 'Calle El Roble', 505, 'Entre Ríos'),
    ('Luciana', 'Pérez', 'Av. Las Flores', 606, 'Salta'),
    ('Emiliano', 'Gómez', 'Calle La Paz', 707, 'Tucumán'),
    ('Camila', 'Rodríguez', 'Av. Los Álamos', 808, 'Neuquén'),
    ('Valentín', 'Díaz', 'Calle El Bosque', 909, 'Chaco'),
    ('Juliana', 'Méndez', 'Av. Los Cipreses', 110, 'Chubut');



--EMAIL CLIENTE
INSERT INTO CLIENTE_EMAIL VALUES
	(1, 'Juan.Pérez@gmail.com'),
	(2, 'María.Gómez@hotmail.com'),
	(3, 'Lucas.Ramírez@outlook.com'),
	(4, 'Ana.López@gmail.com'),
	(5, 'Carlos.Fernández@hotmail.com'),
	(6, 'Sofía.Torres@outlook.com'),
	(7, 'Martín.García@gmail.com'),
	(8, 'Julia.Martínez@hotmail.com'),
	(9, 'Diego.Herrera@outlook.com'),
	(10,'Carla.Pérez@gmail.com'),
	(11,'Santiago.Mendoza@hotmail.com'),
	(11,'Santi.Mendoza@gmail.com'),
	(12,'Camila.Silva@outlook.com'),
	(13,'Tomás.Sánchez@gmail.com'),
	(14,'Florencia.Gutiérrez@hotmail.com'),
	(15,'Gabriel.Rodríguez@outlook.com'),
	(16,'Matías.López@gmail.com'),
	(17,'Carla.Martínez@hotmail.com'),
	(18,'Javier.Fernández@outlook.com'),
	(19,'Sofía.García@gmail.com'),
	(20,'Fernando.Sánchez@hotmail.com'),
	(21,'Luciana.Pérez@outlook.com'),
	(22,'Emiliano.Gómez@gmail.com'),
	(23,'Camila.Rodríguez@hotmail.com'),
	(24,'Valentín.Díaz@outlook.com'),
	(25,'Juliana.Méndez@gmail.com'),
	(25,'July.Méndez@outlook.com');



--PROVEEDOR
INSERT INTO CLIENTE_TELEFONO VALUES
	(1,	'115423658'),
	(2,	'115429858'),
	(3,	'115423328'),
	(4,	'115423458'),
	(5,	'114259878'),
	(6,	'111423458'),
	(7,	'115343458'),
	(8,	'115424558'),
	(9,	'115453458'),
	(10,'115458748'),
	(11,'115423458'),
	(11,'115963458'),
	(12,'115423458'),
	(13,'115423458'),
	(14,'115423458'),
	(15,'115423458'),
	(16,'115423458'),
	(17,'115423458'),
	(18,'115423458'),
	(19,'115423458'),
	(20,'115423458'),
	(21,'115423458'),
	(22,'115423458'),
	(23,'115423458'),
	(24,'115423458'),
	(25,'115423458'),
	(25,'115442458');
	


--PROVEEDOR	
INSERT INTO PROVEEDOR  VALUES 
	('Bebidas del Sur', 'Buenos Aires', 'Avenida Belgrano', 1020),
	('Distribuidora Gaseosas Norte', 'Córdoba', 'San Juan', 234),
	('Gaseosas y Más', 'Santa Fe', 'Rivadavia', 456),
	('Proveedora de Bebidas Cuyo', 'Mendoza', 'Ruta 40', 789),
	('Soda y Sabor', 'Tucumán', 'Mitre', 567),
	('El Rey de la Gaseosa', 'Salta', 'Independencia', 980),
	('Distribuidora Fizz', 'Neuquén', 'Av. Argentina', 365),
	('Gaseosas Patagonia', 'Río Negro', 'Mitre', 142),
	('Bebidas del Litoral', 'Corrientes', 'Costanera', 214),
	('Gaseosas y Refrescos', 'Chaco', 'Resistencia', 312),
	('Proveedora del Norte', 'Formosa', 'Belgrano', 789),
	('Refrescos Argentinos', 'Misiones', 'Güemes', 654),
	('Sodas y Bebidas Cuyo', 'San Juan', 'Rawson', 456),
	('Gaseosas Total', 'La Rioja', 'San Nicolás', 298),
	('Distribuidora de Bebidas del Este', 'Entre Ríos', 'Paraná', 190),
	('Soda Premium', 'Chubut', 'San Martín', 543),
    ('Refrescos del Centro', 'Buenos Aires', 'Lavalle', 678),
    ('Distribuidora Bebidas del Sur', 'Córdoba', 'San Luis', 120),
    ('Proveedora de Refrescos Patagonia', 'Río Negro', 'Maipú', 305),
    ('Bebidas Andes', 'Mendoza', 'San Juan', 210),
    ('Sabor y Gaseosa', 'Tucumán', 'Entre Ríos', 314),
    ('Fizz y Refrescos', 'Salta', 'Pueyrredón', 876),
    ('Soda Rápida', 'Neuquén', 'Santa Fe', 421),
    ('Distribuidora del Norte', 'Formosa', 'Mitre', 512),
    ('Gaseosas del Valle', 'Catamarca', 'Alem', 302);



--PROVEEDOR EMAIL
INSERT INTO PROVEEDOR_EMAIL VALUES	
	(1  ,'BebidasdelSur@gmail.com'),
	(2  ,'DistribuidoraGaseosasNorte@hotmail.com'),
	(3  ,'GaseosasyMas@outlook.com'),
	(4  ,'ProveedoraBebidasCuyo@gmail.com'),
	(5  ,'SodaySabor@hotmail.com'),
	(6  ,'ElReydelaGaseosa@outlook.com'),
	(7  ,'DistribuidoraFizz@gmail.com'),
	(7  ,'DistribuidoraFizzGestionDeudas@gmail.com'),
	(8  ,'GaseosasPatagonia@hotmail.com'),
	(9  ,'BebidasdelLitoral@outlook.com'),
	(10 ,'GaseosasyRefrescos@gmail.com'),
	(11 ,'ProveedordelNorte@hotmail.com'),
	(12 ,'RefrescosArgentinos@outlook.com'),
	(13 ,'SodasyBebidasCuyo@gmail.com'),
	(14 ,'GaseosasTotal@hotmail.com'),
	(15 ,'DistribuidoradeBebidasdelEste@outlook.com'),
	(16 ,'SodaPremium@gmail.com'),
	(17 ,'RefrescosdelCentro@hotmail.com'),
	(18 ,'DistribuidoraBebidasdelSur@outlook.com'),
	(19 ,'ProveedoraRefrescosPatagonia@gmail.com'),
	(20 ,'BebidasAndes@hotmail.com'),
	(21 ,'SaboryGaseosa@outlook.com'),
	(22 ,'FizzyRefrescos@gmail.com'),
	(23 ,'SodaRapida@hotmail.com'),
	(23 ,'SodaRapidaReclamos@hotmail.com'),
	(24 ,'DistribuidoradelNorte@outlook.com'),
	(25 ,'GaseosasdelValle@gmail.com');



--PROVEEDOR_TELEFONO
INSERT INTO PROVEEDOR_TELEFONO VALUES 
	(1,	'115423658'),
	(2,	'115429858'),
	(3,	'115423328'),
	(4,	'115423458'),
	(5,	'114259878'),
	(6,	'111423458'),
	(7,	'115343458'),
	(8,	'115424558'),
	(9,	'115453458'),
	(10,'115458748'),
	(11,'115423458'),
	(11,'115963458'),
	(12,'115423458'),
	(13,'115423458'),
	(14,'115423458'),
	(15,'115423458'),
	(16,'115423458'),
	(17,'115423458'),
	(18,'115423458'),
	(19,'115423458'),
	(20,'115423458'),
	(21,'115423458'),
	(22,'115423458'),
	(23,'115423458'),
	(24,'115423458'),
	(25,'115423458'),
	(25,'115442458');



--PRODUCTOS
INSERT INTO PRODUCTO VALUES 
	('Soda de Cola 500ml', 1.20),
	('Soda de Cola 1L', 1.80),
	('Soda de Cola 2L', 2.50),
	('Soda de Naranja 500ml', 1.15),
	('Soda de Naranja 1L', 1.75),
	('Soda de Naranja 2L', 2.40),
	('Soda de Lima-Limón 500ml', 1.10),
	('Soda de Lima-Limón 1L', 1.70),
	('Soda de Lima-Limón 2L', 2.35),
	('Soda de Cereza 500ml', 1.25),
	('Soda de Cereza 1L', 1.85),
	('Soda de Cereza 2L', 2.55),
	('Agua con Gas 500ml', 0.90),
	('Agua con Gas 1L', 1.30),
	('Agua con Gas 2L', 1.90);

--FORMA DE PAGO
INSERT INTO FORMA_PAGO VALUES
	('Efectivo'),
	('Tarjeta de credito'),
	('Tarjeta de debito'),
	('Transferencia');


--PEDIDOS
INSERT INTO PEDIDO VALUES
    (5, 2, '2023-03-10', '2023-03-12'),
    (14, 1, '2023-05-15', '2023-05-17'),
    (8, 3, '2023-07-20', '2023-07-22'),
    (19, 4, '2023-09-30', '2023-10-02'),
    (22, 2, '2023-02-25', '2023-02-27'),
    (3, 3, '2023-12-01', '2023-12-03'),
    (9, 1, '2024-01-11', '2024-01-13'),
    (17, 4, '2023-08-05', '2023-08-07'),
    (12, 2, '2023-06-18', '2023-06-20'),
    (7, 3, '2023-10-21', '2023-10-23'),
    (25, 1, '2023-11-07', '2023-11-09'),
    (1, 4, '2023-09-01', '2023-09-03'),
    (20, 2, '2024-02-18', '2024-02-20'),
    (13, 3, '2023-12-25', '2023-12-27'),
    (6, 1, '2023-01-10', '2023-01-12'),
    (10, 4, '2023-04-30', '2023-05-02'),
    (18, 2, '2024-03-09', '2024-03-11'),
    (4, 3, '2023-07-13', '2023-07-15'),
    (15, 1, '2023-08-26', '2023-08-28'),
    (2, 4, '2023-05-05', '2023-05-07'),
    (23, 2, '2023-10-11', '2023-10-13'),
    (11, 3, '2023-11-14', '2023-11-16'),
    (24, 1, '2024-01-28', '2024-01-30'),
    (21, 4, '2024-02-08', '2024-02-10'),
    (16, 2, '2023-03-03', '2023-03-05'),
    (25, 3, '2023-04-20', '2023-04-22'),
    (5, 1, '2024-01-17', '2024-01-19'),
    (13, 4, '2023-06-05', '2023-06-07'),
    (8, 2, '2023-09-22', '2023-09-24'),
    (14, 3, '2023-07-02', '2023-07-04'),
    (1, 1, '2023-12-08', '2023-12-10'),
    (6, 4, '2023-02-12', '2023-02-14'),
    (19, 2, '2024-03-20', '2024-03-22'),
    (9, 3, '2023-10-28', '2023-10-30'),
    (17, 1, '2023-05-19', '2023-05-21'),
    (12, 4, '2023-06-30', '2023-07-02'),
    (23, 2, '2023-08-14', '2023-08-16'),
    (10, 3, '2023-11-18', '2023-11-20'),
    (3, 1, '2023-04-10', '2023-04-12'),
    (21, 4, '2024-01-03', '2024-01-05'),
    (18, 2, '2023-07-25', '2023-07-27'),
    (7, 3, '2023-09-17', '2023-09-19'),
    (4, 1, '2023-05-29', '2023-05-31'),
    (15, 4, '2023-03-28', '2023-03-30'),
    (11, 2, '2024-02-11', '2024-02-13'),
    (16, 3, '2023-12-20', '2023-12-22'),
    (22, 1, '2023-04-01', '2023-04-03'),
    (20, 4, '2024-02-23', '2024-02-25');




INSERT INTO PRODUCTO_PEDIDO VALUES
    (1, 3, 20),
    (1, 7, 15),
    (2, 5, 30),
    (2, 12, 25),
    (3, 8, 40),
    (3, 1, 22),
    (4, 11, 50),
    (4, 3, 15),
    (5, 6, 32),
    (5, 9, 18),
    (6, 7, 24),
    (6, 14, 36),
    (7, 10, 19),
    (7, 2, 42),
    (8, 5, 14),
    (8, 11, 45),
    (9, 8, 21),
    (9, 4, 29),
    (10, 12, 35),
    (10, 6, 27),
    (11, 3, 38),
    (11, 7, 44),
    (12, 13, 12),
    (12, 14, 20),
    (13, 15, 50),
    (13, 8, 19),
    (14, 4, 33),
    (14, 11, 17),
    (15, 1, 28),
    (15, 6, 40),
    (16, 9, 23),
    (16, 5, 31),
    (17, 2, 35),
    (17, 12, 45),
    (18, 13, 13),
    (18, 3, 37),
    (19, 15, 27),
    (19, 10, 32),
    (20, 7, 50),
    (20, 1, 18),
    (21, 9, 41),
    (21, 11, 16),
    (22, 6, 26),
    (22, 2, 47),
    (23, 14, 34),
    (23, 5, 29),
    (24, 13, 21),
    (24, 3, 17),
    (25, 15, 28),
    (25, 8, 37),
    (26, 4, 12),
    (26, 10, 33),
    (27, 12, 19),
    (27, 14, 43),
    (28, 7, 27),
    (28, 2, 50),
    (29, 9, 24),
    (29, 11, 15),
    (30, 13, 44),
    (30, 6, 30),
    (31, 1, 20),
    (31, 5, 36),
    (32, 10, 25),
    (32, 3, 32),
    (33, 12, 16),
    (33, 8, 40),
    (34, 7, 35),
    (34, 4, 22),
    (35, 14, 28),
    (35, 9, 47),
    (36, 15, 13),
    (36, 2, 33),
    (37, 6, 23),
    (37, 10, 42),
    (38, 13, 18),
    (38, 1, 50),
    (39, 5, 31),
    (39, 3, 26),
    (40, 15, 34),
    (40, 11, 29),
    (41, 4, 19),
    (41, 9, 44),
    (42, 12, 38),
    (42, 7, 14),
    (43, 6, 17),
    (43, 2, 46),
    (44, 14, 35),
    (44, 3, 41),
    (45, 8, 32),
    (45, 10, 25),
    (46, 1, 30),
    (46, 9, 50),
    (47, 13, 27),
    (47, 12, 45),
    (48, 11, 22),
    (48, 5, 39);




--INSUMO
INSERT INTO INSUMO VALUES 
	('Agua Carbonatada', 'l'),
	('Azúcar', 'Kg'),
	('Ácido Cítrico', 'g'), 
	('Cafeína', 'g'),
	('Extracto de Cola', 'ml'), 
	('Colorante Caramelo', 'ml'), 
	('Saborizante de Lima-Limón', 'ml'),
	('Saborizante de Naranja', 'ml'),
	('Saborizante de Cereza', 'ml'),
	('Conservante Benzoato de Sodio', 'g'),
	('Sorbato de Potasio', 'g'),
	('Ácido Fosfórico', 'ml'),
	('Edulcorante Acesulfamo de Potasio', 'g'),
	('Edulcorante Aspartame', 'g'),
	('Goma Arábiga', 'g');



-- INSUMO_PRODUCTO
INSERT INTO INSUMO_PRODUCTO VALUES 
	(1, 1, 300),
	(2, 2, 50),
	(5, 3, 10),
	(1, 4, 600),
	(2, 5, 100),
	(5, 6, 20),
	(1, 7, 1200),
	(2, 8, 200),
	(5, 9, 40),
	(1, 10, 300),
	(2, 11, 50),
	(8, 12, 15),
	(1, 13, 600),
	(2, 14, 100),
	(8, 15, 30),--
	(2, 1, 300),
	(3, 2, 50),
	(4, 3, 10),
	(5, 4, 600),
	(6, 5, 100),
	(7, 6, 20),
	(8, 7, 1200),
	(15, 8, 200),
	(12, 9, 40),
	(13, 10, 300),
	(10, 11, 50),
	(9, 12, 15),
	(10, 13, 600),
	(12, 14, 100),
	(14, 15, 30);



--INSUMO STOCK
INSERT INTO INSUMO_STOCK VALUES 
	(1, '2024-10-01 10:00:00'), 
	(1, '2024-10-05 14:30:00'), 
	(2, '2024-10-03 09:15:00'), 
	(3, '2024-10-02 11:00:00'), 
	(3, '2024-10-06 16:45:00'), 
	(4, '2024-10-04 08:30:00'), 
	(5, '2024-10-07 13:20:00'), 
	(6, '2024-10-01 15:00:00'), 
	(6, '2024-10-05 17:30:00'), 
	(7, '2024-10-03 12:00:00'), 
	(8, '2024-10-02 14:10:00'), 
	(9, '2024-10-04 09:45:00'), 
	(10,'2024-10-06 10:50:00');



--SOLICITUD
INSERT INTO SOLICITUD VALUES
    ('2023-01-10', '2023-01-12'),
    ('2023-02-15', '2023-02-19'),
    ('2023-03-20', '2023-03-22'),
    ('2023-04-05', '2023-04-08'),
    ('2023-05-10', '2023-05-12'),
    ('2023-06-14', '2023-06-18'),
    ('2023-07-19', '2023-07-22'),
    ('2023-08-22', '2023-08-24'),
    ('2023-09-03', '2023-09-05'),
    ('2023-10-07', '2023-10-10'),
    ('2023-11-12', '2023-11-16'),
    ('2023-12-20', '2023-12-24'),
    ('2024-01-01', '2024-01-04'),
    ('2024-02-05', '2024-02-07'),
    ('2024-03-10', '2024-03-13'),
    ('2024-04-14', '2024-04-16'),
    ('2024-05-18', '2024-05-22'),
    ('2024-06-23', '2024-06-25'),
    ('2024-07-28', '2024-07-31'),
    ('2024-08-02', '2024-08-05'),
    ('2023-09-06', '2023-09-09'),
    ('2023-10-11', '2023-10-15'),
    ('2023-11-16', '2023-11-19'),
    ('2023-12-22', '2023-12-27'),
    ('2024-01-03', '2024-01-07'),
    ('2024-02-08', '2024-02-10'),
    ('2024-03-13', '2024-03-16'),
    ('2024-04-17', '2024-04-21'),
    ('2024-05-22', '2024-05-24'),
    ('2024-06-26', '2024-06-30'),
    ('2024-07-31', '2024-08-03'),
    ('2024-08-05', '2024-08-09'),
    ('2024-09-09', '2024-09-12'),
    ('2024-10-14', '2024-10-17'),
    ('2024-11-18', '2024-11-23'),
    ('2024-12-23', '2024-12-27'),
    ('2023-01-08', '2023-01-12'),
    ('2023-02-13', '2023-02-16'),
    ('2023-03-18', '2023-03-21'),
    ('2023-04-22', '2023-04-25');



-- SOLICITUD_INSUMOS
INSERT INTO SOLICITUD_INSUMO VALUES
    (1, 1, 1500),
    (2, 2, 3200),
    (3, 3, 2500),
    (4, 4, 4100),
    (5, 5, 5600),
    (6, 6, 6700),
    (7, 7, 4800),
    (8, 8, 7200),
    (9, 9, 3900),
    (10, 10, 5400),
    (11, 11, 6200),
    (12, 12, 2800),
    (13, 13, 3000),
    (14, 14, 4700),
    (15, 15, 6400),
    (16, 1, 5300),
    (17, 2, 7100),
    (18, 3, 3500),
    (19, 4, 2900),
    (20, 5, 7800),
    (21, 6, 6600),
    (22, 7, 2300),
    (23, 8, 6100),
    (24, 9, 3200),
    (25, 10, 4500),
    (26, 11, 3400),
    (27, 12, 5200),
    (28, 13, 7100),
    (29, 14, 4200),
    (30, 15, 6800),
    (31, 1, 3000),
    (32, 2, 7600),
    (33, 3, 4300),
    (34, 4, 5900),
    (35, 5, 3400),
    (36, 6, 7800),
    (37, 7, 2200),
    (38, 8, 5400),
    (39, 9, 2500),
    (40, 10, 6000),
    (1, 11, 7000),
    (2, 12, 4700),
    (3, 13, 6300),
    (4, 14, 3600),
    (5, 15, 7500),
    (6, 1, 2600),
    (7, 2, 5100),
    (8, 3, 5900),
    (9, 4, 6100),
    (10, 5, 7800),
    (11, 6, 3400),
    (12, 7, 4200),
    (13, 8, 5300),
    (14, 9, 3800),
    (15, 10, 7400);



-- COTIZACION
INSERT INTO COTIZACION VALUES
	('2023-01-10', '2023-01-15', 1),
	('2023-01-11', '2023-01-16', 2),
	('2023-02-15', '2023-02-20', 3),
	('2023-02-16', '2023-02-21', 4),
	('2023-02-17', '2023-02-22', 5),
	('2023-03-20', '2023-03-25', 6),
	('2023-03-21', '2023-03-26', 7),
	('2023-04-05', '2023-04-10', 8),
	('2023-04-06', '2023-04-11', 9),
	('2023-05-10', '2023-05-15', 10),
	('2023-05-11', '2023-05-16', 11),
	('2023-06-14', '2023-06-19', 12),
	('2023-06-15', '2023-06-20', 13),
	('2023-07-19', '2023-07-24', 14),
	('2023-07-20', '2023-07-25', 15),
	('2023-08-22', '2023-08-27', 16),
	('2023-08-23', '2023-08-28', 17),
	('2023-09-03', '2023-09-08', 18),
	('2023-09-04', '2023-09-09', 19),
	('2023-10-07', '2023-10-12', 20),
	('2023-10-08', '2023-10-13', 21),
	('2023-11-12', '2023-11-17', 22),
	('2023-11-13', '2023-11-18', 23),
	('2023-12-20', '2023-12-25', 24),
	('2023-12-21', '2023-12-26', 1),
	('2024-01-01', '2024-01-05', 2),
	('2024-01-02', '2024-01-06', 3),
	('2024-02-05', '2024-02-09', 4),
	('2024-02-06', '2024-02-10', 5),
	('2024-03-10', '2024-03-15', 6),
	('2024-03-11', '2024-03-16', 7),
	('2024-04-14', '2024-04-18', 8),
	('2024-04-15', '2024-04-19', 9),
	('2024-05-18', '2024-05-23', 10),
	('2024-05-19', '2024-05-24', 11),
	('2024-06-23', '2024-06-28', 12),
	('2024-06-24', '2024-06-29', 13),
	('2024-07-28', '2024-08-02', 14),
	('2024-07-29', '2024-08-03', 15),
	('2024-08-02', '2024-08-07', 16),
	('2024-08-03', '2024-08-08', 17),
	('2023-09-06', '2023-09-11', 18),
	('2023-09-07', '2023-09-12', 19),
	('2023-10-11', '2023-10-16', 20),
	('2023-10-12', '2023-10-17', 21),
	('2023-11-16', '2023-11-21', 22),
	('2023-11-17', '2023-11-22', 23),
	('2023-12-22', '2023-12-27', 24),
	('2023-12-23', '2023-12-28', 1),
	('2024-01-03', '2024-01-08', 2),
	('2024-01-04', '2024-01-09', 3),
	('2024-02-08', '2024-02-13', 4),
	('2024-02-09', '2024-02-14', 5),
	('2024-03-13', '2024-03-18', 6),
	('2024-03-14', '2024-03-19', 7),
	('2024-04-17', '2024-04-22', 8),
	('2024-04-18', '2024-04-23', 9),
	('2024-05-22', '2024-05-27', 10),
	('2024-05-23', '2024-05-28', 11),
	('2024-06-26', '2024-07-01', 12),
	('2024-06-27', '2024-07-02', 13),
	('2024-07-31', '2024-08-05', 14),
	('2024-08-01', '2024-08-06', 15),
	('2024-08-05', '2024-08-10', 16),
	('2024-08-06', '2024-08-11', 17),
	('2024-09-09', '2024-09-14', 18),
	('2024-09-10', '2024-09-15', 19),
	('2024-10-14', '2024-10-19', 20),
	('2024-10-15', '2024-10-20', 21),
	('2024-11-18', '2024-11-23', 22),
	('2024-11-19', '2024-11-24', 23),
	('2024-12-23', '2024-12-28', 24),
	('2024-12-24', '2024-12-29', 1),
	('2023-01-08', '2023-01-13', 2),
	('2023-01-09', '2023-01-14', 3),
	('2023-02-13', '2023-02-18', 4),
	('2023-02-14', '2023-02-19', 5),
	('2023-03-18', '2023-03-23', 6),
	('2023-03-19', '2023-03-24', 7),
	('2023-04-22', '2023-04-27', 8),
	('2023-04-23', '2023-04-28', 9);



-- COTIZACION_SOLICITUD
INSERT INTO COTIZACION_SOLICITUD VALUES
	(1, 1), (2, 1),
	(3, 2), (4, 2), (5, 2),
	(6, 3), (7, 3),
	(8, 4), (9, 4),
	(10, 5), (11, 5),
	(12, 6), (13, 6),
	(14, 7), (15, 7),
	(16, 8), (17, 8),
	(18, 9), (19, 9),
	(20, 10), (21, 10),
	(22, 11), (23, 11),
	(24, 12), (25, 12),
	(26, 13), (27, 13),
	(28, 14), (29, 14),
	(30, 15), (31, 15),
	(32, 16), (33, 16),
	(34, 17), (35, 17),
	(36, 18), (37, 18),
	(38, 19), (39, 19),
	(40, 20), (41, 20),
	(42, 21), (43, 21),
	(44, 22), (45, 22),
	(46, 23), (47, 23),
	(48, 24), (49, 24),
	(50, 25), (51, 25),
	(52, 26), (53, 26),
	(54, 27), (55, 27),
	(56, 28), (57, 28),
	(58, 29), (59, 29),
	(60, 30), (61, 30),
	(62, 31), (63, 31),
	(64, 32), (65, 32),
	(66, 33), (67, 33),
	(68, 34), (69, 34),
	(70, 35), (71, 35),
	(72, 36), (73, 36),
	(74, 37), (75, 37),
	(76, 38), (77, 38),
	(78, 39), (79, 39),
	(80, 40), (81, 40);

----------------------------------------------
	
-- DETALLE_COTIZACION
INSERT INTO DETALLE_COTIZACION VALUES
	(1, 1, DEFAULT, 1500, 950.00),
    (1, 11, DEFAULT, 7000, 1400.00),
    (2, 1, DEFAULT, 1500, 900.00),
    (2, 11, DEFAULT, 7000, 1200.00),
    (3, 2, DEFAULT, 3200, 800.00),
    (3, 12, DEFAULT, 4700, 1100.00),
    (4, 2, DEFAULT, 3200, 850.00),
    (4, 12, DEFAULT, 4700, 1000.00),
    (5, 2, DEFAULT, 3200, 900.00),
    (5, 12, DEFAULT, 4700, 1200.00),
    (6, 3, DEFAULT, 2500, 1500.00),
    (6, 13, DEFAULT, 6300, 1750.00),
    (7, 3, DEFAULT, 2500, 1400.00),
    (7, 13, DEFAULT, 6300, 1850.00),
    (8, 4, DEFAULT, 4100, 1000.00),
    (8, 14, DEFAULT, 3600, 1800.00),
    (9, 4, DEFAULT, 4100, 1050.00),
    (9, 14, DEFAULT, 3600, 1950.00),
    (10, 4, DEFAULT, 5600, 1150.00),
    (10, 15, DEFAULT, 7500, 1750.00),
    (11, 4, DEFAULT, 5600, 1200.00),
    (11, 15, DEFAULT, 7500, 1800.00),
    (12, 1, DEFAULT, 2600, 950.00),
    (12, 6, DEFAULT, 6700, 1500.00),
    (13, 1, DEFAULT, 2600, 920.00),
    (13, 6, DEFAULT, 6700, 1550.00),
    (14, 2, DEFAULT, 5100, 950.00),
    (14, 7, DEFAULT, 4800, 1600.00),
    (15, 2, DEFAULT, 5100, 920.00),
    (15, 7, DEFAULT, 4800, 1500.00),
    (16, 3, DEFAULT, 5900, 1300.00),
    (16, 8, DEFAULT, 7200, 1700.00),
    (17, 3, DEFAULT, 5900, 1250.00),
    (17, 8, DEFAULT, 7200, 1800.00),
    (18, 4, DEFAULT, 6100, 1100.00),
    (18, 9, DEFAULT, 3900, 1400.00),
    (19, 4, DEFAULT, 6100, 1050.00),
    (19, 9, DEFAULT, 3900, 1300.00),
    (20, 5, DEFAULT, 7800, 1600.00),
    (20, 10, DEFAULT, 5400, 1700.00),
    (21, 5, DEFAULT, 7800, 1500.00),
    (21, 10, DEFAULT, 5400, 1600.00),
    (22, 6, DEFAULT, 3400, 1450.00),
    (22, 11, DEFAULT, 6200, 1300.00),
    (23, 6, DEFAULT, 3400, 1500.00),
    (23, 11, DEFAULT, 6200, 1400.00),
    (24, 7, DEFAULT, 4200, 1550.00),
    (24, 12, DEFAULT, 2800, 1150.00),
    (25, 7, DEFAULT, 4200, 1450.00),
    (25, 12, DEFAULT, 2800, 1200.00),
    (26, 8, DEFAULT, 5300, 1600.00),
    (26, 13, DEFAULT, 3000, 1550.00),
    (27, 8, DEFAULT, 5300, 1650.00),
    (27, 13, DEFAULT, 3000, 1600.00),
    (28, 9, DEFAULT, 3800, 1450.00),
    (28, 14, DEFAULT, 4700, 1800.00),
    (29, 9, DEFAULT, 3800, 1500.00),
    (29, 14, DEFAULT, 4700, 1850.00),
    (30, 10, DEFAULT, 7400, 1700.00),
    (30, 15, DEFAULT, 6400, 1750.00),
    (31, 10, DEFAULT, 7400, 1600.00),
    (31, 15, DEFAULT, 6400, 1800.00),
    (32, 1, DEFAULT, 5300, 1100.00),
    (33, 1, DEFAULT, 5300, 1150.00),
    (34, 2, DEFAULT, 7100, 1200.00),
    (35, 2, DEFAULT, 7100, 1250.00),
    (36, 3, DEFAULT, 3500, 1400.00),
    (37, 3, DEFAULT, 3500, 1450.00),
    (38, 4, DEFAULT, 2900, 1100.00),
    (39, 4, DEFAULT, 2900, 1150.00),
    (40, 5, DEFAULT, 7800, 1700.00),
    (41, 5, DEFAULT, 7800, 1600.00),
    (42, 6, DEFAULT, 6600, 1400.00),
    (43, 6, DEFAULT, 6600, 1450.00),
    (44, 7, DEFAULT, 2300, 1200.00),
    (45, 7, DEFAULT, 2300, 1150.00),
    (46, 8, DEFAULT, 6100, 1500.00),
    (47, 8, DEFAULT, 6100, 1550.00),
    (48, 9, DEFAULT, 3200, 1300.00),
    (49, 9, DEFAULT, 3200, 1250.00),
    (50, 10, DEFAULT, 4500, 1350.00),
    (51, 10, DEFAULT, 4500, 1400.00),
    (52, 11, DEFAULT, 3400, 1300.00),
    (53, 11, DEFAULT, 3400, 1350.00),
    (54, 12, DEFAULT, 5200, 1500.00),
    (55, 12, DEFAULT, 5200, 1450.00),
    (56, 13, DEFAULT, 7100, 1650.00),
    (57, 13, DEFAULT, 7100, 1600.00),
    (58, 14, DEFAULT, 4200, 1400.00),
    (59, 14, DEFAULT, 4200, 1450.00),
    (60, 15, DEFAULT, 6800, 1750.00),
    (61, 15, DEFAULT, 6800, 1700.00),
    (62, 1, DEFAULT, 3000, 1050.00),
    (63, 1, DEFAULT, 3000, 1100.00),
    (64, 2, DEFAULT, 7600, 1250.00),
    (65, 2, DEFAULT, 7600, 1300.00),
    (66, 3, DEFAULT, 4300, 1450.00),
    (67, 3, DEFAULT, 4300, 1500.00),
    (68, 4, DEFAULT, 5900, 1550.00),
    (69, 4, DEFAULT, 5900, 1500.00),
    (70, 5, DEFAULT, 3400, 1200.00),
    (71, 5, DEFAULT, 3400, 1250.00),
    (72, 6, DEFAULT, 7800, 1650.00),
    (73, 6, DEFAULT, 7800, 1700.00),
    (74, 7, DEFAULT, 2200, 1050.00),
    (75, 7, DEFAULT, 2200, 1100.00),
	(76, 8, DEFAULT, 5400, 1490.00),
	(77, 8, DEFAULT, 5400, 1500.00),
	(78, 9, DEFAULT, 2500, 1270.00),
	(79, 9, DEFAULT, 2500, 1295.00),
	(80, 10, DEFAULT, 6000, 1470.00),
	(81, 10, DEFAULT, 6000, 1500.00);



-- PROVEEDOR INSUMO
INSERT INTO PROVEEDOR_INSUMO
SELECT	
	C.ID_PROVEEDOR,
	DC.ID_INSUMO
FROM 
	COTIZACION AS C
JOIN 
	DETALLE_COTIZACION DC
	ON C.ID_COTIZACION = DC.ID_COTIZACION
GROUP BY
	C.ID_PROVEEDOR,
	DC.ID_INSUMO;



--ORDEN COMPRA
INSERT INTO ORDEN_COMPRA
SELECT	
	DATEADD(DAY, -1, C.FECHA_VENCIMIENTO)
FROM 
	COTIZACION AS C
JOIN 
	COTIZACION_SOLICITUD AS CS
	ON C.ID_COTIZACION = CS.ID_COTIZACION
WHERE
	C.ID_COTIZACION % 2 = 0;



--UPDATE DE DETALLE DE COMPRA
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 1 WHERE ID_COTIZACION = 2;
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 2 WHERE ID_COTIZACION = 4;
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 3 WHERE ID_COTIZACION = 6;
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 4 WHERE ID_COTIZACION = 8;
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 5 WHERE ID_COTIZACION = 10;
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 6 WHERE ID_COTIZACION = 12;
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 7 WHERE ID_COTIZACION = 14;
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 8 WHERE ID_COTIZACION = 16;
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 9 WHERE ID_COTIZACION = 18;
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 10 WHERE ID_COTIZACION = 20;
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 11 WHERE ID_COTIZACION = 22;
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 12 WHERE ID_COTIZACION = 24;
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 13 WHERE ID_COTIZACION = 26;
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 14 WHERE ID_COTIZACION = 28;
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 15 WHERE ID_COTIZACION = 30;
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 16 WHERE ID_COTIZACION = 32;
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 17 WHERE ID_COTIZACION = 34;
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 18 WHERE ID_COTIZACION = 36;
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 19 WHERE ID_COTIZACION = 38;
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 20 WHERE ID_COTIZACION = 40;
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 21 WHERE ID_COTIZACION = 42;
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 22 WHERE ID_COTIZACION = 44;
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 23 WHERE ID_COTIZACION = 46;
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 24 WHERE ID_COTIZACION = 48;
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 25 WHERE ID_COTIZACION = 50;
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 26 WHERE ID_COTIZACION = 52;
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 27 WHERE ID_COTIZACION = 54;
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 28 WHERE ID_COTIZACION = 56;
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 29 WHERE ID_COTIZACION = 58;
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 30 WHERE ID_COTIZACION = 60;
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 31 WHERE ID_COTIZACION = 62;
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 32 WHERE ID_COTIZACION = 64;
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 33 WHERE ID_COTIZACION = 66;
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 34 WHERE ID_COTIZACION = 68;
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 35 WHERE ID_COTIZACION = 70;
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 36 WHERE ID_COTIZACION = 72;
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 37 WHERE ID_COTIZACION = 74;
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 38 WHERE ID_COTIZACION = 76;
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 39 WHERE ID_COTIZACION = 78;
UPDATE DETALLE_COTIZACION SET ID_COMPRA = 40 WHERE ID_COTIZACION = 80;



--COMPROBANTE DE RECEPCION
INSERT INTO COMPROBANTE_RECEPCION
SELECT
	ID_COMPRA,
	DATEADD(DAY, 1, FECHA),
	1000
FROM ORDEN_COMPRA;