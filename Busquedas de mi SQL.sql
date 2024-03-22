use evaluacion3

/*Consulta para obtener el nombre de la moneda elegida por un
 usuario específico*/
SELECT m.CURR_NAME /*aqui le pedimos que la tome este valor, pero de la tabla moneda por eso la m pequeña*/
FROM cuentas
INNER JOIN monedas m  ON cuentas.CURR_ID = m.CURR_ID  /*aqui le pedimos que la cuenta monedas 
tome en la tabla cuentas CURR_ID y sea igual que la tabla monedas m el CURR_ID, tuve que hacerlo asi porque me daba error.*/
WHERE cuentas.CUENTA_ID = 3030; 

/* todas las transacciones que exsiten en sistema*/
SELECT * FROM transacciones

/* transaccion especifica de un usuario 2 ejemplos*/
SELECT * FROM transacciones
WHERE USU_ID = 3030 ;

SELECT * FROM transacciones
WHERE USU_ID = 7030 ;

/* Sentencia DML para modificar el campo correo electrónico de un
 usuario específico*/
UPDATE usuarios
SET USU_EMAIL = 'correocambiado@cosas.com'
WHERE USU_ID = 20 ;

/*Sentencia para eliminar los datos de una transacción (elimine la ID numero 49)*/
DELETE FROM transacciones
WHERE TRAN_ID = 49;
/*Sentencia para eliminar los datos de una transacción (elimina en base a la fecha especificada)*/
DELETE FROM transacciones
WHERE TRAN_FECHA > '2024-01-11';