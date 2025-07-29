CREATE database Shop;
USE shop;
CREATE Table cats(
Name VARCHAR(50), 
Breed VARCHAR(50),
age INT
);
SELECT database();
INSERT INTO cats(Name, Breed, Age)
VALUE ("Rocky", "XYZ", 4);
SHOW databases;
SELECT * from cats;