/**********************************************************************
***********************************************************************
**********                    TRIGGERS                       ********** 
***********************************************************************
**********************************************************************/

USE MyStoreDB;

-- TRG_INSERT_PRODUCT_HISTORY_PRICE
-- Este trigger inserta un registro con el nuevo precio de un producto en el historico de precios
-- Permite llevar un control historico de los precios cuando se produce una insercion o actualizacion en la tabla PRODUCT.
-- Compara si al momento de actualizar un precio este es igual al que ya estaba, en el caso de ser asi lo descarta y evita el duplicado en la tabla historica

IF OBJECT_ID('TRG_INSERT_PRODUCT_HISTORY_PRICE', 'TR') IS NOT NULL
BEGIN
    DROP TRIGGER TRG_INSERT_PRODUCT_HISTORY_PRICE;
END;
GO

CREATE TRIGGER TRG_INSERT_PRODUCT_HISTORY_PRICE
ON [PRODUCT_PRICE]
AFTER INSERT, UPDATE
AS BEGIN	
	DECLARE @countDeleted INT = (SELECT COUNT(*) FROM deleted);
	DECLARE @dateNow DATETIME = GETDATE();

	IF @countDeleted = 0
	BEGIN
		INSERT INTO PRODUCT_PRICE_HISTORY(ID_PRODUCT, [DATE], PRICE)
		(
			SELECT I.ID_PRODUCT, @dateNow, I.PRICE 
			FROM inserted AS I
		);
	END

	ELSE
	BEGIN
		INSERT INTO PRODUCT_PRICE_HISTORY(ID_PRODUCT, [DATE], PRICE)
		(
			SELECT I.ID_PRODUCT, @dateNow, I.PRICE 
			FROM inserted AS I
			JOIN deleted AS D 
				ON I.ID_PRODUCT = D.ID_PRODUCT
			WHERE I.PRICE <> D.PRICE
		);
	END
END
GO