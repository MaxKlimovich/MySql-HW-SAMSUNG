# DROP DATABASE IF EXISTS HW_sales;
CREATE DATABASE IF NOT EXISTS HW2;

USE HW2;

DROP TABLE IF EXISTS sales;
CREATE TABLE sales
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE NOT NULL,
    count_product INT NOT NULL
);
    
    INSERT INTO sales (order_date,count_product)
VALUES
	('2022-01-01', 156),
    ('2022-01-02', 180),
    ('2022-01-03', 21),
    ('2022-01-04', 124),
    ('2022-01-05', 341);

SELECT *
FROM sales;

SELECT
	id AS "id",
    count_product AS "Размер заказа",
    IF (count_product < 100,"Маленький заказ",
		IF (count_product BETWEEN 100 AND 300, "Средний заказ", "Большой заказ")) 
	AS "Тип заказа"
FROM sales;







SELECT 
id AS "id",
count 
payment_status AS "Статус оплаты", -- Перед CASE ставится запятая
CASE 
	WHEN payment_status = 0 THEN "Заказ не оплачен, оплатите его"
    WHEN payment_status = 1 THEN "Заказ оплачен"
    ELSE "Ошибка" -- Все остальные статусы, кроме 0 и 1
END AS "Комментарий"
FROM cinema;

