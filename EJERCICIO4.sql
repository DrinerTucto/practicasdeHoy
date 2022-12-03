
-- PRIMERO LLAMA A LA TABLA POR FAVOR => USE ejmplo1;
DELIMITER $
CREATE PROCEDURE buscarPorID(IN id INT)
BEGIN
SELECT e.firstname AS Nombre,e.lastName AS Apellido ,x.companyname AS compañiaZ
FROM  orders o -- LA 'o' ES EL ALIAS DE LA TABLA orders
INNER JOIN
    employees e ON o.employeeID=e.employeeID -- Es mas facil poner un  alias para cada tabla
INNER JOIN 
customers x ON  x.customerID=o.customerID -- LAS LETRAS AL COSTADO SON SUS ALIAS DE CADA TABLA
WHERE o.orderID=id;

END$
CALL buscarPorID(10250)