CREATE DATABASE IF NOT EXISTS homework1;
USE homework1;

DROP TABLE IF EXISTS mobile_phone;
CREATE TABLE mobile_phone
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	productName VARCHAR(45) NOT NULL,
	manufacturer VARCHAR(45) NOT NULL,
	productCount INT(3),
	price INT(20)
);

DESCRIBE mobile_phone;

INSERT mobile_phone(productName, manufacturer, productCount, price)
VALUES
	("iPhone X", "Apple", 3, 76000),
    ("iPhone 8", "Apple", 2, 51000),
    ("Galaxy S9", "Samsung", 2, 56000),
    ("Galaxy S8", "Samsung", 1, 41000),
    ("P20 Pro", "Huawei", 5, 36000);
    
SELECT productName, manufacturer, price
FROM mobile_phone
WHERE productCount > 2;

SELECT productName, productCount, price
FROM mobile_phone
WHERE manufacturer = "Samsung"; 


SELECT productName, manufacturer, productCount, price
FROM mobile_phone
WHERE productCount * price > 100000 && productCount * price < 145000; 

SELECT productName, manufacturer, productCount, price
FROM mobile_phone
WHERE productName LIKE "iPhone%";

SELECT productName, manufacturer, productCount, price
FROM mobile_phone
WHERE productName LIKE "Galaxy%";



