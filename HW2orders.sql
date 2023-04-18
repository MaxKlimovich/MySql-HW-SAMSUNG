DROP DATABASE IF EXISTS HW2_2;
CREATE DATABASE IF NOT EXISTS HW2_2;

USE HW2_2;

DROP TABLE IF EXISTS orders;
CREATE TABLE orders
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id VARCHAR (45),
    amount DOUBLE NOT NULL,
    order_status VARCHAR(45)
);
    
    INSERT INTO orders (employee_id,amount,order_status)
VALUES
	("e03", 15.00, "OPEN"),
    ("e01", 25.50, "OPEN"),
    ("e05", 100.70, "CLOSED"),
    ("e02", 22.18, "OPEN"),
    ("e04", 9.50, "CANCELLED");
    
SELECT *
FROM orders;

ALTER TABLE orders
ADD orders_status FLOAT; -- Изначально столбец заполнен значениями NULL

-- UPDATE orders
-- SET orders_status = RAND();

-- SELECT *
-- FROM orders; 

-- UPDATE orders
-- SET orders_status = 2
-- WHERE id = 5;

-- SELECT *
-- FROM orders; 

SELECT 
id,
order_status,
CASE 
	WHEN order_status = "OPEN" THEN "Order is in open state"
    WHEN order_status = "CLOSED" THEN "Order is closed"
    ELSE "Order is cancelled"
END AS "full_order_status"
FROM orders;

