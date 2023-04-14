CREATE DATABASE IF NOT EXISTS Samsung; -- Создаем БД с именем Samsung
USE Samsung; -- работаем с БД Samsung

CREATE TABLE IF NOT EXISTS Samsung -- создаем таблицу Samsung
(
	#Формула столбца: номер_столбца, название_телефона, модель_телефона, стоимость.
	id INT PRIMARY KEY AUTO_INCREMENT,
	name_phone VARCHAR(45), -- название телефона, представленное строкой в 45 символов
	model VARCHAR (45),
	price VARCHAR (45)
);

INSERT samsung (name_phone, model, price) -- INSERT таблица (столбец1, столбец2) VALUES (значение1, значение2);
VALUE
("Samsung","GalaxyA5","1000$"),
("Samsung","GalaxyA4","900$"),
("Samsung","GalaxyA6","1100$"),
("Samsung","GalaxyA3","700$");

SELECT name_phone, model, price
FROM Samsung



