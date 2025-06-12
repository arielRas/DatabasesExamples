/**********************************************************************
***********************************************************************
**********                 CONSULTAS VARIAS                  ********** 
***********************************************************************
**********************************************************************/


USE MyStoreDb;

/* Se solicita una lista de aquellos clientes que residan en la provincia (estado) de Buenos Aires
   Datos a mostrar: todos los datos de los clientes que cumplan la consigna
   Filas resultantes: 15 filas */
SELECT *
FROM 
	CUSTOMER AS CTM
JOIN 
	CITY AS C
	ON CTM.ID_CITY = C.ID_CITY
WHERE 
	C.ID_STATE = 6;


/* Se solicita un listado de aquellos clientes que no hayan realizado ningun pedido (Utilizar subconsulta)
   Datos a mostrar: ID_CLIENTE, Apellido si lo tuviere, nombre y email.
   Filas resultantes: 1 fila*/
SELECT
	C.ID_CUSTOMER,
	C.LAST_NAME,
	C.[NAME],
	C.EMAIL
FROM
	CUSTOMER AS C
WHERE
	C.ID_CUSTOMER NOT IN(
		SELECT DISTINCT O.ID_CUSTOMER 
		FROM [ORDER] AS O
	);

	
/* Se solicita un listado de la edad de los empleados que trabajen en ventas.
   Puede utilizar JOIN para obtener el sector de trabajo o simplemente utilizar
   el ID correspondiente.
   Datos a mostrar: Apellido, nombre, edad.
   Filas resultantes. 16 filas*/
SELECT
	LAST_NAME,
	[NAME],
	DATEDIFF(YEAR, BIRTH_DATE, GETDATE()) AS EDAD
FROM 
	EMPLOYEE
WHERE
	ID_SECTOR = 1;


/* Modificar la consulta anterior para obtener tambien el tiempo que lleva el empleado en la empresa.
   Datos a mostrar: Apellido, nombre, edad, antiguedad en la empresa.
   Filas resultantes: 16 filas*/
SELECT
	LAST_NAME,
	[NAME],
	DATEDIFF(YEAR, BIRTH_DATE, GETDATE()) AS EDAD,
	DATEDIFF(YEAR, ENTRY_DATE, GETDATE()) AS ANTIGUEDAD
FROM 
	EMPLOYEE
WHERE
	ID_SECTOR = 1;


/* Modificar la consulta anterior para que el apellido y el nombre sean un
   solo campo. Tambien filtrar el listado con aquellos vendedores que tengan
   mas de 3 a�os de antiguedad y tengan mas de 30 a�os de edad.
   Datos a mostrar: Apellido, nombre, edad, antiguedad en la empresa.
   Filas resultantes: 4 filas*/
SELECT
	CONCAT(LAST_NAME,', ', [NAME]) AS EMPLEADO,
	DATEDIFF(YEAR, BIRTH_DATE, GETDATE()) AS EDAD,
	DATEDIFF(YEAR, ENTRY_DATE, GETDATE()) AS ANTIGUEDAD
FROM 
	EMPLOYEE
WHERE
	ID_SECTOR = 1
GROUP BY
	CONCAT(LAST_NAME,', ', [NAME]),
	DATEDIFF(YEAR, BIRTH_DATE, GETDATE()),
	DATEDIFF(YEAR, ENTRY_DATE, GETDATE())
HAVING
	DATEDIFF(YEAR, BIRTH_DATE, GETDATE()) > 30 AND
	DATEDIFF(YEAR, ENTRY_DATE, GETDATE()) > 3;


/* Se solicita un listado de los productos que no has sido comprado nunca.
   Puede usar JOIN o subconsulta para obtener lo solicitado.
   Datos a mostrar: ID_PRODUCTO, nombre del producto
   Filas resultantes: 89 filas*/

--FORMA 1: LEFT JOIN con operador GROUP BY y HAVING
SELECT 
	P.ID_PRODUCT,
	P.[NAME]
FROM 
	PRODUCT AS P
LEFT JOIN
	ORDER_DETAIL AS OD
	ON P.ID_PRODUCT = OD.ID_PRODUCT
GROUP BY
	P.ID_PRODUCT,
	P.[NAME]
HAVING
	COUNT(OD.ID_PRODUCT) = 0;


--FORMA 2: Subconsulta con operador NOT IN
SELECT
	P.ID_PRODUCT,
	P.[NAME]
FROM
	PRODUCT AS P
WHERE
	P.ID_PRODUCT NOT IN(
		SELECT DISTINCT OD.ID_PRODUCT 
		FROM ORDER_DETAIL AS OD
	);


--FORMA 3: Subconsulta con operador NOT EXISTS
SELECT
	P.ID_PRODUCT,
	P.[NAME]
FROM
	PRODUCT AS P
WHERE
	NOT EXISTS(
		SELECT 1 
		FROM ORDER_DETAIL AS OD 
		WHERE OD.ID_PRODUCT = P.ID_PRODUCT
	);


/* Se solicita un listado de la cantidad de ventas por empleado ordenado de mayor
   a menor cantidad de ventas, mostrar solo aquellos empleados que hayan realizado ventas.
   Datos a mostrar: ID_EMPLEADO, CANTIDAD DE VENTAS 
   Filas resultantes. 15 filas*/
SELECT
	O.ID_EMPLOYEE,
	COUNT(*) AS [CANTIDAD DE VENTAS]
FROM 
	[ORDER] AS O
JOIN 
	EMPLOYEE AS E
	ON O.ID_EMPLOYEE = E.ID_EMPLOYEE
GROUP BY
	O.ID_EMPLOYEE
ORDER BY
	[CANTIDAD DE VENTAS] DESC;


/* Modificar la consulta anterir para agregar el apellido y nombre del empleado(por separado o concatenado).
   Datos a mostrar: ID_EMPLEADO, APELLIDO y NOMBRE, CANTIDAD DE VENTAS
   Filas resultantes. 15 filas */
SELECT
	O.ID_EMPLOYEE,
	CONCAT(E.LAST_NAME,' ', E.[NAME]) AS EMPLOYEE,
	COUNT(*) AS [CANTIDAD DE VENTAS]
FROM 
	[ORDER] AS O
JOIN 
	EMPLOYEE AS E
	ON O.ID_EMPLOYEE = E.ID_EMPLOYEE
GROUP BY
	O.ID_EMPLOYEE,
	CONCAT(E.LAST_NAME,' ', E.[NAME])
ORDER BY
	[CANTIDAD DE VENTAS] DESC;


/* Modificar la consulta anterior para mostrar aquellos empleados que trabajen en 
   ventas hayan o no hecho alguna venta.
   Datos a mostrar: ID_EMPLEADO, APELLIDO y NOMBRE, CANTIDAD DE VENTAS 
   Filas resultantes: 16 filas*/
SELECT
	E.ID_EMPLOYEE,
	CONCAT(E.LAST_NAME,' ', E.[NAME]) AS EMPLOYEE,
	COUNT(O.ID_ORDER) AS [CANTIDAD DE VENTAS]
FROM 
	[ORDER] AS O
RIGHT JOIN
	EMPLOYEE AS E
	ON O.ID_EMPLOYEE = E.ID_EMPLOYEE
WHERE
	E.ID_SECTOR = 1
GROUP BY
	E.ID_EMPLOYEE,
	CONCAT(E.LAST_NAME,' ', E.[NAME])
ORDER BY
	[CANTIDAD DE VENTAS] DESC;


/* Se solicita un listado de los productos cuyos precios han sido modificados al menos
   1 vez a lo largo del tiempo.
   Datos a mostrar: ID_PRODUCTO, NOMBRE DEL PRODUCTO.
   Filas resultantes: 109 filas  */
SELECT
	PP.ID_PRODUCT,
	P.[NAME]
FROM 
	PRODUCT_PRICE AS PP
JOIN 
	PRODUCT AS P
	ON PP.ID_PRODUCT = P.ID_PRODUCT
GROUP BY
	PP.ID_PRODUCT,
	P.[NAME]
HAVING
	COUNT(PP.ID_PRODUCT) > 1;


/* Se solicita un listado de los productos con sus precios actuales.
   Datos a mostrar: ID_PRODUCTO, NOMBRE DEL PRODUCTO, precio actual.
   Filas resultantes: 177 filas  */
SELECT
	P.ID_PRODUCT,
	P.[NAME],
	PP.PRICE
FROM 
	PRODUCT AS P --Tabla principal
JOIN
	PRODUCT_PRICE AS PP --Tabla de union
	ON P.ID_PRODUCT = PP.ID_PRODUCT
WHERE
	PP.[DATE] = ( --Subconsulta
		SELECT MAX(PP2.[DATE])
		FROM PRODUCT_PRICE AS PP2
		WHERE PP2.ID_PRODUCT = P.ID_PRODUCT
	);


/* Se solicita un listado de los vendedores que realizaron pedidos.
   Datos a mostrar: ID_VENDEDEOR, Nombre completo del vendedor, 
					cantidad de pedidos realizados, suma de dinero vendida.
   Filas resultantes: 109 filas  */


-- FORMA 1: Resolucion del enunciado utilizando solo JOINS
SELECT
	O.ID_EMPLOYEE,
	CONCAT(E.LAST_NAME, ', ', E.[NAME]) AS SELLER,
	COUNT(DISTINCT(O.ID_ORDER)) AS ORDERS,
	SUM(OD.QUANTITY * PP.PRICE) AS [TOTAL SOLD]
FROM 
	[ORDER] AS O
JOIN
	[EMPLOYEE] AS E
	ON O.ID_EMPLOYEE = E.ID_EMPLOYEE
JOIN
	ORDER_DETAIL AS OD
	ON O.ID_ORDER = OD.ID_ORDER
JOIN
	PRODUCT_PRICE AS PP
	ON OD.ID_PRODUCT = PP.ID_PRODUCT
GROUP BY
	O.ID_EMPLOYEE,
	CONCAT(E.LAST_NAME, ', ', E.[NAME])
ORDER BY
	[TOTAL SOLD] DESC;


-- FORMA 2: Resolucion del enunciado utilizando CROSS APPLY y la UDF de tabla FN_GET_ORDERS_BY_EMPLOYEE
SELECT
	[ORDERS].ID_EMPLOYEE,
	[ORDERS].EMPLOYEE_NAME,
	COUNT([ORDERS].ID_ORDER) AS ORDERS_PLACED,
	SUM([ORDERS].TOTAL_AMOUNT)TOTAL_AMOUNT_SOLD
FROM 
	[EMPLOYEE] AS E
CROSS APPLY 
	dbo.FN_GET_ORDERS_BY_EMPLOYEE(E.ID_EMPLOYEE) AS [ORDERS]
GROUP BY 
	[ORDERS].ID_EMPLOYEE,
	[ORDERS].EMPLOYEE_NAME
ORDER BY
	TOTAL_AMOUNT_SOLD DESC;