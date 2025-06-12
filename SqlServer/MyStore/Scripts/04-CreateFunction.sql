/**********************************************************************
***********************************************************************
**********               UDF y STORE PROCEDURES              ********** 
***********************************************************************
**********************************************************************/

USE MyStoreDb;
GO


-- FN_IS_PRODUCT_IN_STOCK
-- Devuelve True(1) si el producto tiene la cantidad de stock pasada por parametro, en caso contrario devuelve False(0)

IF OBJECT_ID('FN_IS_PRODUCT_IN_STOCK', 'FN') IS NOT NULL
BEGIN
    DROP FUNCTION TRG_INSERT_PRODUCT_HISTORY_PRICE;
END;
GO

CREATE FUNCTION FN_IS_PRODUCT_IN_STOCK(@idProduct INT, @quantity INT)
RETURNS BIT
AS
BEGIN
	DECLARE @bool BIT;
	SET @bool = (SELECT 1 FROM PRODUCT_STOCK WHERE ID_PRODUCT = @idProduct AND STOCK >= @quantity);

	IF @bool IS NULL 
		BEGIN 
		RETURN 0 
		END

	RETURN @bool;
END
GO

-- Test Function
--SELECT dbo.FN_IS_PRODUCT_IN_STOCK(20,10);


------------------------------------------------------------------------------------------------------------------

-- FN_GET_ORDERS_BY_CUSTOMER
-- Devuelve una tabla con datos de las ordenes de un determinado cliente.

IF OBJECT_ID('FN_GET_ORDERS_BY_CUSTOMER', 'FN') IS NOT NULL
BEGIN
    DROP FUNCTION TRG_INSERT_PRODUCT_HISTORY_PRICE;
END;
GO

CREATE FUNCTION FN_GET_ORDERS_BY_CUSTOMER(@idCustomer UNIQUEIDENTIFIER )
RETURNS TABLE --> Retorna una funcion de tabla
AS
RETURN (
	SELECT
	O.ID_ORDER,
	O.[DATE],
	CASE
		WHEN C.LAST_NAME IS NULL THEN C.[NAME]
		ELSE CONCAT(C.LAST_NAME,', ', C.[NAME])
	END AS [CUSTOMER],
	SUM(OD.QUANTITY * PP.PRICE) AS TOTAL_AMOUNT
	FROM [ORDER] AS O
	JOIN
		ORDER_DETAIL AS OD
		ON O.ID_ORDER = OD.ID_ORDER
	JOIN
		PRODUCT_PRICE AS PP
		ON OD.ID_PRODUCT = PP.ID_PRODUCT
	JOIN
		CUSTOMER AS C
		ON O.ID_CUSTOMER = C.ID_CUSTOMER
	WHERE O.ID_CUSTOMER = @idCustomer
	GROUP BY
		O.ID_ORDER,
		O.[DATE],
		CASE
			WHEN C.LAST_NAME IS NULL THEN C.[NAME]
			ELSE CONCAT(C.LAST_NAME,', ', C.[NAME])
		END
);
GO

-- Test Function
-- SELECT * FROM dbo.FN_GET_ORDERS_BY_CUSTOMER('F27798BC-5FBC-4DB2-9C6D-11FDA810DFE2');
------------------------------------------------------------------------------------------------------------------


-- FN_GET_ORDERS_BY_EMPLOYEE
-- Funcion de tabla que devuelve las ordenes realizadas por empleado, segun el id de este.
-- Las ordenes devuelta incluyen el monto total de la orden.


IF OBJECT_ID('FN_GET_ORDERS_BY_EMPLOYEE','FN') IS NOT NULL
BEGIN
	DROP FUNCTION FN_GET_ORDERS_BY_EMPLOYEE;
END
GO

CREATE FUNCTION FN_GET_ORDERS_BY_EMPLOYEE(@employeeId UNIQUEIDENTIFIER)
RETURNS @ordersByEmployee TABLE
(
	ID_EMPLOYEE UNIQUEIDENTIFIER,
	EMPLOYEE_NAME VARCHAR(100),
	ID_ORDER INT,
	DATE_ORDER DATETIME,
	TOTAL_AMOUNT DECIMAL(10,2)
)
AS
BEGIN
	
	INSERT INTO @ordersByEmployee	
	SELECT
		O.ID_EMPLOYEE,
		CONCAT(E.LAST_NAME, ', ', E.[NAME]) AS EMPLOYEE_NAME,
		O.ID_ORDER,
		O.[DATE] AS ORDER_DATE,
		SUM(OD.QUANTITY * PP.PRICE) AS TOTAL_AMOUNT
	FROM [ORDER] AS O
	JOIN 
		[EMPLOYEE] AS E ON O.ID_EMPLOYEE = E.ID_EMPLOYEE
	JOIN 
		[ORDER_DETAIL] AS OD ON O.ID_ORDER = OD.ID_ORDER
	JOIN 
		[PRODUCT_PRICE] AS PP ON OD.ID_PRODUCT = PP.ID_PRODUCT
	WHERE
		O.ID_EMPLOYEE = @employeeId
	GROUP BY
		O.ID_EMPLOYEE,
		CONCAT(E.LAST_NAME, ', ', E.[NAME]),
		O.ID_ORDER,
		O.[DATE]
	ORDER BY
		EMPLOYEE_NAME ASC;

	RETURN;	
END
GO

-- Test Function
-- SELECT * FROM dbo.FN_GET_ORDERS_BY_EMPLOYEE('34DCEF46-9462-4D29-800F-27370FF3BFA7');
