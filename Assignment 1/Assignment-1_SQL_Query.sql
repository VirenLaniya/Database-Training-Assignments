/* 1. Creating Database */
CREATE DATABASE Northwind

/* 2. Creating table */
CREATE TABLE Products
( 
	ProductID int  NOT NULL PRIMARY KEY IDENTITY(1, 1),
	ProductName varchar(50) NOT NULL DEFAULT '',
	SupplierID int NOT NULL,
	CategoryID tinyint NOT NULL,
	QuantityPerUnit varchar(20) NOT NULL DEFAULT '',
	UnitPrice decimal NOT NULL DEFAULT '0',
	UnitsInStock smallint NOT NULL DEFAULT '0',
	UnitsOnOrder smallint NOT NULL DEFAULT '0',
	ReorderLevel smallint NOT NULL DEFAULT '0',
	Discontinued bit NOT NULL DEFAULT 0
)

/* 3. Insert table data */
INSERT INTO Products (ProductName,SupplierID,CategoryID,QuantityPerUnit,UnitPrice,UnitsInStock,UnitsOnOrder,ReorderLevel,Discontinued) values
('Chai',1,1,'10 boxes x 20 bags',18,39,0,10,0),
('Chang',1,1,'24 - 12 oz bottles',19,17,40,25,0),
('Aniseed Syrup',1,2,'12 - 550 ml bottles',10,13,70,25,0),
('Chef Anton''s Cajun Seasoning',2,2,'48 - 6 oz jars',22,53,0,0,0),
('Chef Anton''s Gumbo Mix',2,2,'36 boxes',21.35,0,0,0,1),
('Grandma''s Boysenberry Spread',3,2,'12 - 8 oz jars',25,120,0,25,0),
('Uncle Bob''s Organic Dried Pears',3,7,'12 - 1 lb pkgs.',30,15,0,10,0),
('Northwoods Cranberry Sauce',3,2,'12 - 12 oz jars',40,6,0,0,0),
('Mishi Kobe Niku',4,6,'18 - 500 g pkgs.',97,29,0,0,1),
('Ikura',4,8,'12 - 200 ml jars',31,31,0,0,0),
('Queso Cabrales',5,4,'1 kg pkg.',21,22,30,30,0),
('Queso Manchego La Pastora',5,4,'10 - 500 g pkgs.',38,86,0,0,0),
('Konbu',6,8,'2 kg box',6,24,0,5,0),
('Tofu',6,7,'40 - 100 g pkgs.',23.25,35,0,0,0),
('Genen Shouyu',6,2,'24 - 250 ml bottles',15.5,39,0,5,0),
('Pavlova',7,3,'32 - 500 g boxes',17.45,29,0,10,0),
('Alice Mutton',7,6,'20 - 1 kg tins',39,0,0,0,1),
('Carnarvon Tigers',7,8,'16 kg pkg.',62.5,42,0,0,0),
('Teatime Chocolate Biscuits',8,3,'10 boxes x 12 pieces',9.2,25,0,5,0),
('Sir Rodney''s Marmalade',8,3,'30 gift boxes',81,40,0,0,0),
('Sir Rodney''s Scones',8,3,'24 pkgs. x 4 pieces',10,3,40,5,0),
('Gustaf''s Kn?ckebr?d',9,5,'24 - 500 g pkgs.',21,104,0,25,0),
('Tunnbr?d',9,5,'12 - 250 g pkgs.',9,61,0,25,0),
('Guaran? Fant?stica',10,1,'12 - 355 ml cans',4.5,20,0,0,1),
('NuNuCa Nu?-Nougat-Creme',11,3,'20 - 450 g glasses',14,76,0,30,0),
('Gumb?r Gummib?rchen',11,3,'100 - 250 g bags',31.23,15,0,0,0),
('Schoggi Schokolade',11,3,'100 - 100 g pieces',43.9,49,0,30,0),
('R?ssle Sauerkraut',12,7,'25 - 825 g cans',45.6,26,0,0,1),
('Th?ringer Rostbratwurst',12,6,'50 bags x 30 sausgs.',123.79,0,0,0,1),
('Nord-Ost Matjeshering',13,8,'10 - 200 g glasses',25.89,10,0,15,0),
('Gorgonzola Telino',14,4,'12 - 100 g pkgs',12.5,0,70,20,0),
('Mascarpone Fabioli',14,4,'24 - 200 g pkgs.',32,9,40,25,0),
('Geitost',15,4,'500 g',2.5,112,0,20,0),
('Sasquatch Ale',16,1,'24 - 12 oz bottles',14,111,0,15,0),
('Steeleye Stout',16,1,'24 - 12 oz bottles',18,20,0,15,0),
('Inlagd Sill',17,8,'24 - 250 g  jars',19,112,0,20,0),
('Gravad lax',17,8,'12 - 500 g pkgs.',26,11,50,25,0),
('C?te de Blaye',18,1,'12 - 75 cl bottles',263.5,17,0,15,0),
('Chartreuse verte',18,1,'750 cc per bottle',18,69,0,5,0),
('Boston Crab Meat',19,8,'24 - 4 oz tins',18.4,123,0,30,0),
('Jack''s New England Clam Chowder',19,8,'12 - 12 oz cans',9.65,85,0,10,0),
('Singaporean Hokkien Fried Mee',20,5,'32 - 1 kg pkgs.',14,26,0,0,1),
('Ipoh Coffee',20,1,'16 - 500 g tins',46,17,10,25,0),
('Gula Malacca',20,2,'20 - 2 kg bags',19.45,27,0,15,0),
('R?gede sild',21,8,'1k pkg.',9.5,5,70,15,0),
('Spegesild',21,8,'4 - 450 g glasses',12,95,0,0,0),
('Zaanse koeken',22,3,'10 - 4 oz boxes',9.5,36,0,0,0),
('Chocolade',22,3,'10 pkgs.',12.75,15,70,25,0),
('Maxilaku',23,3,'24 - 50 g pkgs.',20,10,60,15,0),
('Valkoinen suklaa',23,3,'12 - 100 g bars',16.25,65,0,30,0),
('Manjimup Dried Apples',24,7,'50 - 300 g pkgs.',53,20,0,10,0),
('Filo Mix',24,5,'16 - 2 kg boxes',7,38,0,25,0),
('Perth Pasties',24,6,'48 pieces',32.8,0,0,0,1),
('Tourti?re',25,6,'16 pies',7.45,21,0,10,0),
('P?t? chinois',25,6,'24 boxes x 2 pies',24,115,0,20,0),
('Gnocchi di nonna Alice',26,5,'24 - 250 g pkgs.',38,21,10,30,0),
('Ravioli Angelo',26,5,'24 - 250 g pkgs.',19.5,36,0,20,0),
('Escargots de Bourgogne',27,8,'24 pieces',13.25,62,0,20,0),
('Raclette Courdavault',28,4,'5 kg pkg.',55,79,0,0,0),
('Camembert Pierrot',28,4,'15 - 300 g rounds',34,19,0,0,0),
('Sirop d''?rable',29,2,'24 - 500 ml bottles',28.5,113,0,25,0),
('Tarte au sucre',29,3,'48 pies',49.3,17,0,0,0),
('Vegie-spread',7,2,'15 - 625 g jars',43.9,24,0,5,0),
('Wimmers gute Semmelkn?del',12,5,'20 bags x 4 pieces',33.25,22,80,30,0),
('Louisiana Fiery Hot Pepper Sauce',2,2,'32 - 8 oz bottles',21.05,76,0,0,0),
('Louisiana Hot Spiced Okra',2,2,'24 - 8 oz jars',17,4,100,20,0),
('Laughing Lumberjack Lager',16,1,'24 - 12 oz bottles',14,52,0,10,0),
('Scottish Longbreads',8,3,'10 boxes x 8 pieces',12.5,6,10,15,0),
('Gudbrandsdalsost',15,4,'10 kg pkg.',36,26,0,15,0),
('Outback Lager',7,1,'24 - 355 ml bottles',15,15,10,30,0),
('Fl?temysost',15,4,'10 - 500 g pkgs.',21.5,26,0,0,0),
('Mozzarella di Giovanni',14,4,'24 - 200 g pkgs.',34.8,14,0,0,0),
('R?d Kaviar',17,8,'24 - 150 g jars',15,101,0,5,0),
('Longlife Tofu',4,7,'5 kg pkg.',10,4,20,5,0),
('Rh?nbr?u Klosterbier',12,1,'24 - 0.5 l bottles',7.75,125,0,25,0),
('Lakkalik??ri',23,1,'500 ml',18,57,0,20,0),
('Original Frankfurter',12,2,'12 boxes',13,32,0,15,0)

/* Getting Table data */
SELECT * FROM Products

/*** Assignment 1 ***/
/* 1.1 Write a query to get a Product list (id, name, unit price) where current products cost
less than $20. */
SELECT ProductId, ProductName, UnitPrice FROM Northwind.dbo.Products WHERE (UnitPrice < 20) AND (Discontinued = 0)

/* 1.2 Write a query to get Product list (id, name, unit price) where products cost between
$15 and $25*/
SELECT ProductId, ProductName, UnitPrice FROM Northwind.dbo.Products WHERE UnitPrice > 15 AND UnitPrice < 25

/* 1.3 Write a query to get Product list (name, unit price) of above average price. */
SELECT ProductName, UnitPrice FROM Products WHERE UnitPrice > (SELECT AVG(UnitPrice) FROM Products)

/* 1.4 Write a query to get Product list (name, unit price) of ten most expensive products.*/
SELECT TOP 10 ProductName, UnitPrice FROM Products ORDER BY UnitPrice DESC

/* 1.5 Write a query to count current and discontinued products*/
/* Count Current Products */
SELECT COUNT(Discontinued) AS CurrentProducts FROM Products GROUP BY Discontinued HAVING Discontinued=0 
/* Count Discountined Products */
SELECT COUNT(Discontinued) AS DiscontinuedProducts FROM Products GROUP BY Discontinued HAVING Discontinued=1

/* 1.6 Write a query to get Product list (name, units on order , units in stock) of stock is less
than the quantity on order*/
SELECT ProductName, UnitsOnOrder, UnitsInStock FROM Products WHERE UnitsInStock < UnitsOnOrder





