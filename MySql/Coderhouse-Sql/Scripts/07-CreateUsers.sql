USE MYSQL;

USE MYSQL;

DROP USER IF EXISTS 'it_user'@'localhost';
DROP USER IF EXISTS 'deposit'@'localhost';
DROP USER IF EXISTS 'sellers'@'localhost';
DROP USER IF EXISTS 'rrhh'@'localhost';

CREATE USER IF NOT EXISTS 'it_user'@'localhost' IDENTIFIED BY 'it4321';
CREATE USER IF NOT EXISTS 'deposit'@'localhost' IDENTIFIED BY 'depo1234';
CREATE USER IF NOT EXISTS 'sellers'@'localhost' IDENTIFIED BY 'venta4321';
CREATE USER IF NOT EXISTS 'rrhh'@'localhost' IDENTIFIED BY 'rrhh1234';

-- Permisos para el usuario "it_user@localhost"

GRANT ALL ON MY_SHOP.* TO 'it_user'@'localhost';


-- Permisos para el usuario "deposit@localhost"
GRANT ALL ON MY_SHOP.PRODUCTS TO 'deposit'@'localhost';
GRANT ALL ON MY_SHOP.PRODUCTS_CATEGORY TO 'deposit'@'localhost';
GRANT ALL ON MY_SHOP.PRODUCTS_TYPE TO 'deposit'@'localhost';
GRANT ALL ON MY_SHOP.PRODUCTS_ASSEMBLERS TO 'deposit'@'localhost';
GRANT SELECT ON MY_SHOP.VW_TIPOS_PRODUCTOS_X_MARCA TO 'deposit'@'localhost';
GRANT EXECUTE ON PROCEDURE MY_SHOP.SP_NEW_PRODUCT TO 'deposit'@'localhost';
GRANT EXECUTE ON PROCEDURE MY_SHOP.SP_UPDATE_STOCK TO 'deposit'@'localhost';


-- Permisos para el usuario "sellers@localhost"
GRANT ALL ON MY_SHOP.SALES TO 'sellers'@'localhost';
GRANT ALL ON MY_SHOP.SALES_DESCRIPTION TO 'sellers'@'localhost';
GRANT ALL ON MY_SHOP.CLIENTS TO 'sellers'@'localhost';
GRANT SELECT ON MY_SHOP.PROVINCE TO 'sellers'@'localhost';
GRANT SELECT ON MY_SHOP.EMPLOYEES TO 'sellers'@'localhost';
GRANT SELECT ON MY_SHOP.PRODUCTS TO 'sellers'@'localhost';
GRANT SELECT ON MY_SHOP.PAYMENT_METHOD TO 'sellers'@'localhost';
GRANT UPDATE(STOCK) ON MY_SHOP.PRODUCTS TO 'sellers'@'localhost';
GRANT SELECT ON MY_SHOP.VW_TIPOS_PRODUCTOS_X_MARCA TO 'sellers'@'localhost';
GRANT SELECT ON MY_SHOP.VW_PRODUCTO_MAS_VENDIDO TO 'sellers'@'localhost';
GRANT SELECT ON MY_SHOP.VW_VENDEDOR_MAS_VENTAS TO 'sellers'@'localhost';
GRANT EXECUTE ON PROCEDURE MY_SHOP.SP_UPDATE_STOCK TO 'sellers'@'localhost';
GRANT EXECUTE ON FUNCTION MY_SHOP.FN_BUSCAR_CLIENTE_X_ID TO 'sellers'@'localhost';
GRANT EXECUTE ON FUNCTION MY_SHOP.FN_MAX_MIN_PRECIO_TIPO_PRODUCTO TO 'sellers'@'localhost';


-- Permisos para el usuario "rrhh@localhost"
GRANT ALL ON MY_SHOP.EMPLOYEES TO 'rrhh'@'localhost';
GRANT SELECT ON MY_SHOP.VW_EMPLEADOS_DE_VACACIONES TO 'rrhh'@'localhost';

SHOW GRANTS FOR 'rrhh'@'localhost';
SHOW GRANTS FOR 'deposit'@'localhost';
SHOW GRANTS FOR 'sellers'@'localhost';
SHOW GRANTS FOR 'it_user'@'localhost';