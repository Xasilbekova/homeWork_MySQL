-- Databazani yasash.
CREATE DATABASE brand_db;
SHOW DATABASES;

--Databazaga ulanish
USE brand_db;

-- Jadval yasash.
CREATE TABLE brand (
    model_name VARCHAR(64),
    cpu VARCHAR(64),
    frequency VARCHAR(8),
    ram INTEGER,
    os VARCHAR(32),
    price INTEGER
);

SHOW TABLES;

CREATE TABLE IF NOT EXISTS brand (  
    id INT NOT NULL AUTO_INCREMENT,  
    model_name VARCHAR(64) NOT NULL,  
    cpu VARCHAR(64) NOT NULL,  
    frequency VARCHAR(8),  
    ram INTEGER,
    os VARCHAR(32),
    price INTEGER,
    PRIMARY KEY (id)  
);

-- jadvalni to'ldirish. 2 - usul. ko'p qatorli.
INSERT INTO brand (model_name, cpu, frequency, ram, os, price) VALUES
('MacBook Pro', 'Intel Core i7','1.8', 4, 'Windows 10', 1000),
('ZenBook', 'AMD Ryzen 5','2.4', 3, 'Ubuntu 20.04', 800),
('MacBook Pro', 'Intel Core i7','1.8', 4, 'Windows 10', 900),
('ZenBook', 'AMD Ryzen 5','2.4', 3, 'Ubuntu 20.04', 850),
('MacBook Pro', 'Intel Core i7','1.8', 4, 'Windows 10', 950),
('ZenBook', 'AMD Ryzen 5','2.4', 3, 'Ubuntu 20.04', 1050),
('MSI', 'Intel Core i8','2.2', 4, 'Windows 10 pro', 600),
('Victor', 'Intel Core i10','2.0', 5, 'Windows 10', 650),
('MSI', 'Intel Core i8','2.2', 4, 'Windows 10 pro', 700),
('Asus', 'Intel Core i6','1.6', 8, 'Windows 11', 750),
('MacBook Pro', 'Intel Core i7','1.8', 4, 'Windows 10', 500),
('MSI', 'Intel Core i8','2.2', 4, 'Windows 10 pro', 550),
('MacBook Pro', 'Intel Core i7','1.8', 4, 'Windows 10', 1100),
('MacBook Pro', 'Intel Core i7','1.8', 4, 'Windows 10', 1150),
('MacBook Pro', 'Intel Core i7','1.8', 4, 'Windows 10', 1200),
('MacBook Pro', 'Intel Core i7','1.8', 4, 'Windows 10', 1250),
('MSI', 'Intel Core i8','2.2', 4, 'Windows 10 pro', 1300),
('Asus', 'Intel Core i6','1.6', 8, 'Windows 11', 1350),
('MacBook Pro', 'Intel Core i7','1.8', 4, 'Windows 10', 1400),
('MSI', 'Intel Core i8','2.2', 4, 'Windows 10 pro', 1450);

-- jadvalni to'liq ko'rish.
SELECT * FROM brand;

-- eng arzonini chiqarish
SELECT * 
FROM brand
ORDER BY price ASC
LIMIT 1;

-- eng qimmatini chiqarish
SELECT * 
FROM brand
ORDER BY price DESC
LIMIT 1;

-- <price> 400 va 1000 oralig'ida bo'lgan va <cpu> ustunida
-- "Intel" so'zi qatnashgan barcha kompyuterlarning
-- faqat <frequency> ustunini
SELECT frequency 
FROM brand
WHERE price > 400 and price < 1000 and cpu LIKE "%intel%";

-- <brand> "MSI" bo'lgan barcha kompyuterlar sonini hisoblang.
SELECT COUNT(*)
FROM brand
WHERE model_name LIKE "%MSI%";

-- <os> "Windows" bo'lgan, lekin <ram> 8 bo'lgan 
-- ASUS kompyuterlarini <price> ustuni o'sish tartibida chop eting
SELECT price 
FROM brand
WHERE os LIKE "Windows%" and ram = 8 and model_name = "Asus"
ORDER BY price ASC;