USE MY_SHOP;


-- El procedimiento "NEW_PRODUCT" ingresa un nuevo registro a la tabla PRODUCTS.
-- Al finalizar la ejecucion del codigo, el SP devuelve de la Tabla PRODUCTS el elemento que ingresado.

DROP PROCEDURE IF EXISTS SP_NEW_PRODUCT;
DELIMITER $$
CREATE PROCEDURE `SP_NEW_PRODUCT`(
	IN NOMBRE VARCHAR(100), 
    IN MARCA INT, 
    IN TIPO INT, 
    IN CATEGORIA INT,
    IN PRECIO DECIMAL(6,2), 
    IN STOCK INT
    )
BEGIN	
	INSERT INTO PRODUCTS (NAME,ID_ASSEMBLER,ID_TYPE,ID_CAT,PRICE,STOCK) VALUES (NOMBRE, MARCA, TIPO, CATEGORIA, PRECIO, STOCK);
	SELECT * FROM PRODUCTS
    ORDER BY ID_PROD DESC LIMIT 1;
END$$
DELIMITER ;



-- El procedimiento SP_UPDATE_STOCK permite sumar o restar stock de un determinado producto.
-- Este SP realiza un UPDATE al campo STOCK de la tabla PRODUCTS, siempre y cuando los parametros ingresados cumplan ciertas condiciones.
-- Para su funcionamiento el SP requiere que se le indique en sus parametros de entrada el ID del producto a actualizar, que operacion se realizara (SUMAR o RESTAR) y la cantidad que se suma o resta al stock.
-- Al finalizar su ejecucion el SP devuelve el registro de la tabla PRODUCTS que a sido actualizado.

DROP PROCEDURE IF EXISTS SP_UPDATE_STOCK;
DELIMITER $$
CREATE PROCEDURE `SP_UPDATE_STOCK`(IN ID_PRODUCTO INT, IN SUMAR_RESTAR VARCHAR(6), IN CANTIDAD INT)
BEGIN
IF ID_PRODUCTO IN (SELECT ID_PROD FROM PRODUCTS) THEN
	IF SUMAR_RESTAR = 'SUMAR' THEN
		UPDATE PRODUCTS SET STOCK = STOCK + CANTIDAD WHERE ID_PROD = ID_PRODUCTO;
        SELECT * FROM PRODUCTS WHERE ID_PROD = ID_PRODUCTO;
	ELSE 
		IF SUMAR_RESTAR = 'RESTAR' THEN
			IF CANTIDAD < (SELECT STOCK FROM PRODUCTS WHERE ID_PROD = ID_PRODUCTO) THEN
				UPDATE PRODUCTS SET STOCK = STOCK - CANTIDAD WHERE ID_PROD = ID_PRODUCTO;
				SELECT * FROM PRODUCTS WHERE ID_PROD = ID_PRODUCTO;
			ELSE 
				SET @MESSAGE = "The parameter CANTIDAD entered is greater than the current stock";
				SELECT @MESSAGE;
			END IF;
		ELSE 
			SET @MESSAGE = "The parameter SUMAR_RESTAR entered is incorrect";
			SELECT @MESSAGE;
		END IF;
	END IF;
ELSE 
	SET @MESSAGE = "The ID entered is incorrect";
	SELECT @MESSAGE;
END IF;    
END $$
DELIMITER ;



-- Creacion del procedimiento SP_SPLIT permite fragmentar una cadena de caracteres si es que la misma se encuentra delimitada por un caracter especifico (EJ: 'A-AB-ABC-ABCD-1-123-1234').
-- La funcionalidad principal de este SP es separar campos que fueron concatenados con un caracter divisor, como en las tablas de auditoria, donde se guardan registros completos cocatenandolos.
-- Este SP requiere para su funcionamiento dos parametros: la cadena de caracteres que se desea splitear y el caracter delimitador.
-- Este SP se utiliza de manera conjunta con el SP_RESTORE_DATA_PROD_SALES. Con el uso combinado de estos procedimientos se logra automatizar la restauracion de registros actualizados o eliminados.

DROP PROCEDURE IF EXISTS SP_SPLIT;
DELIMITER $$
CREATE PROCEDURE `SP_SPLIT`(
	IN DATO VARCHAR(255),
	IN LIMITADOR VARCHAR (1),
	OUT FIELD_RESTORED_1 VARCHAR(100), 
    OUT FIELD_RESTORED_2 VARCHAR(100),
	OUT FIELD_RESTORED_3 VARCHAR(100), 
    OUT FIELD_RESTORED_4 VARCHAR(100),
	OUT FIELD_RESTORED_5 VARCHAR(100), 
    OUT FIELD_RESTORED_6 VARCHAR(100),
	OUT FIELD_RESTORED_7 VARCHAR(100)
 )
BEGIN
	SET @CONTDATA = CHAR_LENGTH(DATO);
	SET @CONT = 1;
    SET @CONTAUX = 0;
    SET @COPYDATA = "";
    SET @COPYAUX = "";  
    WHILE @CONT <= @CONTDATA DO	
		SET @COPYAUX = SUBSTR(DATO,@CONT,1);
        WHILE @COPYAUX != LIMITADOR DO
			IF @CONT < @CONTDATA THEN
				SET @CONT = @CONT + 1;                
				SET @COPYDATA = CONCAT(@COPYDATA,@COPYAUX);
                SET @COPYAUX = SUBSTR(DATO,@CONT,1); 
			ELSE
				SET @COPYDATA = CONCAT(@COPYDATA,@COPYAUX);
                SET@CONT = @CONT + 1;
                SET @COPYAUX = LIMITADOR;
            END IF;		
        END WHILE;
        SET@CONT = @CONT + 1;
        IF @CONTAUX = 0 THEN SET FIELD_RESTORED_1 = @COPYDATA; END IF;
        IF @CONTAUX = 1 THEN SET FIELD_RESTORED_2 = @COPYDATA; END IF;
        IF @CONTAUX = 2 THEN SET FIELD_RESTORED_3 = @COPYDATA; END IF;
        IF @CONTAUX = 3 THEN SET FIELD_RESTORED_4 = @COPYDATA; END IF;
        IF @CONTAUX = 4 THEN SET FIELD_RESTORED_5 = @COPYDATA; END IF;
        IF @CONTAUX = 5 THEN SET FIELD_RESTORED_6 = @COPYDATA; END IF;
        IF @CONTAUX = 6 THEN SET FIELD_RESTORED_7 = @COPYDATA; END IF;        	 
        SET @CONTAUX = @CONTAUX + 1;
        SET @COPYDATA = "";
        SET @COPYAUX = "";
    END WHILE;
END $$
DELIMITER ;



-- Creacion del procedimiento SP_RESTORE_DATA_PROD_SALES, este procedimiento permite restaurar elementos eliminados o actualizados de las tablas PRODUCTS y SALES.
-- Para hacer uso de el SP se debe ingresar como parametro el ID_LOG de la tabla de auditoria correspondiente y el nombre de la tabla en la que se desea restaurar el registro.
-- Este SP se apoya fundamentalmente en el el SP_SPLIT  para realizar su funcion.

DROP PROCEDURE IF EXISTS SP_RESTORE_DATA_PROD_SALES;
DELIMITER $$
CREATE PROCEDURE `SP_RESTORE_DATA_PROD_SALES`(IN LOG_ID INT, IN TABLENAME VARCHAR(8))
 BEGIN 
 IF TABLENAME = 'PRODUCTS' THEN
	IF LOG_ID IN (SELECT ID_LOG FROM LOG_PRODUCTS) THEN
		SET @DATA_RESTORE = (SELECT OLD_DATA FROM LOG_PRODUCTS WHERE ID_LOG = LOG_ID);
		SET @DML_SENTENCE = (SELECT ACTIVITY FROM LOG_PRODUCTS WHERE ID_LOG = LOG_ID);
		SET @FLAG = TRUE;
	ELSE
		SET @FLAG = FALSE;
		SET @MESSAGE = 'The parameter "LOG_ID" not exists';
		SELECT @MESSAGE;		
	END IF;
ELSE
	IF TABLENAME = 'SALES' THEN
		IF LOG_ID IN (SELECT ID_LOG FROM LOG_SALES) THEN
			SET @DATA_RESTORE = (SELECT OLD_DATA FROM LOG_SALES WHERE ID_LOG = LOG_ID);
			SET @DML_SENTENCE = (SELECT ACTIVITY FROM LOG_SALES WHERE ID_LOG = LOG_ID);
			SET @FLAG = TRUE;
		ELSE
			SET @FLAG = FALSE;
			SET @MESSAGE = 'The parameter "LOG_ID" not exists';
			SELECT @MESSAGE;
		END IF;
	ELSE
		SET @FLAG = FALSE;
		SET @MESSAGE = 'The parameter "TABLENAME" is wrong';
		SELECT @MESSAGE;
	END IF;
END IF;
IF @FLAG IS TRUE THEN	
	IF @DML_SENTENCE != 'INSERT' THEN
		CALL SP_SPLIT(@DATA_RESTORE, ";", @A,@B,@C,@D,@E,@F,@G); 
		IF TABLENAME = 'PRODUCTS' THEN
			IF @DML_SENTENCE = 'UPDATE' THEN
				SET @CONSULTA = CONCAT('UPDATE PRODUCTS SET NAME = ','"',@B,'"',', ID_ASSEMBLER = ',@C,', ID_TYPE = ',@D,', ID_CAT = ',@E,', PRICE = ',@F,', STOCK = ',@G,' WHERE ID_PROD = ',@A);
			ELSE
				SET @CONSULTA = CONCAT('INSERT INTO PRODUCTS VALUES (',@A,',"',@B,'",',@C,',',@D,',',@E,',',@F,',',@G,')');
			END IF;	
		ELSE 
			IF @DML_SENTENCE = 'UPDATE' THEN
				SET @CONSULTA = CONCAT('UPDATE SALES SET AMOUNT = ','"',@B,'"',', ID_CLIENT = ',@C,', ID_PAY = ',@D,', ID_EMPL = ',@E,', DATE = ','"',@F,'"',', HOUR = ','"',@G,'"',' WHERE ID_SALE = ',@A);
			ELSE
				SET @CONSULTA = CONCAT('INSERT INTO SALES VALUES (',@A,',"',@B,'",',@C,',',@D,',',@E,',','"',@F,'",','"',@G,'"',')');
			END IF;	
		END IF;
		PREPARE CONCAT_QUERY FROM @CONSULTA;
		EXECUTE CONCAT_QUERY;
		DEALLOCATE PREPARE CONCAT_QUERY;
	ELSE 
		SET @MESSAGE = 'Cannot restore INSERT action';
		SELECT @MESSAGE;
	END IF;
END IF;
END$$
DELIMITER ;