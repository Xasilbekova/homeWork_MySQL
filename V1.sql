-- Databazani yasash.
CREATE DATABASE MILLIY_TAOMLAR_db;
SHOW DATABASES;

--Databazaga ulanish
USE MILLIY_TAOMLAR_db;

--Jadvallarni ko'rish.
SHOW TABLES;

-- Jadval yasash.
CREATE TABLE ovqat (
    id VARCHAR(32),
    taom_name VARCHAR(64),
    taom_masalliqlari VARCHAR(216)
);

SHOW TABLES;

-- jadvalni to'ldirish. 1 - usul. bir qatorli.
INSERT INTO ovqat (id, taom_name, taom_masalliqlari) VALUES
('A001', "Sho'rva", "Go'sht, sabzi, kartoshka"),
('A002', "Osh", "Go'sht, sabzi, guruch"),
('A003', "Mastava", "Go'sht, sabzi, kartoshka, guruch"),
('A004', "Tushonka", "Go'sht, ziravorlar"),
('A005', "Norin", "Go'sht, hamir"),
('A006', "Shashlik", "Qiyma"),
('A007', "Shashlik", "Jaz"),
('A008', "Shashlik", "Tovuq"),
('A009', "Tiftel", "Qiyma, guruch, kartoshka"),
('A010', "Golubsi", "Qiyma, guruch, bulg'or qalampiri");

-- jadvalni to'liq ko'rish.
SELECT * FROM ovqat;

-- taom nomi a bilan tugaydiganlarini chiqarish
SELECT * 
FROM ovqat 
WHERE taom_name LIKE "%a";

-- guruch qatnashgan taomlar chiqarish
SELECT * 
FROM ovqat 
WHERE taom_masalliqlari LIKE "%guruch%";