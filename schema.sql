-- Part 2.1 schema.sql
--
-- Submitted by: <Zehra Punjwani (1431800 (K1502450)>
-- 

-- do not edit these lines -------------
CREATE SCHEMA IF NOT EXISTS bagelshoppe;
USE bagelshoppe;
----------------------------------------

-- edit your schema here ---------------

CREATE SCHEMA IF NOT EXISTS bagelshoppe;

USE bagelshoppe;

Set sql_mode = 'STRICT_ALL_TABLES';

------------------------------------

------------------------------------

CREATE TABLE Customer 
(
	CustomerID int primary key AUTO_INCREMENT,
	Title varchar(5) NOT NULL,
	FName varchar(255) NOT NULL,
	LName varchar(255) NOT NULL,
	DOB DATE,
	Address nvarchar(255),
	Email nvarchar(255)
);

------------------------------------

------------------------------------

CREATE TABLE BagelCard 
(
	CardID int primary key AUTO_INCREMENT,
	BagelPoints int DEFAULT 0,
	Customer_ID int NOT NULL,
	Foreign key (Customer_ID) REFERENCES Customer (CustomerID)
);

------------------------------------

------------------------------------

CREATE TABLE Orders
(
	OrderID int primary key AUTO_INCREMENT,
	OrderDate datetime NOT NULL,
	Customer_ID int NOT NULL,
	Foreign key (Customer_ID) REFERENCES Customer (CustomerID)
);

------------------------------------

------------------------------------

CREATE TABLE Contain(
	Order_ID int NOT NULL,
	Item_ID int NOT NULL,
	Item_Type_ID int NOT NULL,
	Quantity int DEFAULT 1,
	Foreign key (Order_ID) REFERENCES Orders (OrderID),
	Foreign key (Item_ID) REFERENCES Item (ItemID),
	Foreign key (Item_Type_ID) REFERENCES ItemType (ItemTypeName)
);

------------------------------------

------------------------------------

CREATE TABLE Items
(
	ItemID int primary key AUTO_INCREMENT,
	ItemName varchar(25) NOT NULL,
	Item_Type_ID int NOT NULL,
	Nut ENUM('Y', 'N', 'N/A') NOT NULL,
	Size ENUM('S', 'M', 'L', 'J', 'N/A') NOT NULL,
	Currency ENUM('£') DEFAULT '£',
	Price decimal (9,2) NOT NULL,
	Foreign key (Item_Type_ID) REFERENCES ItemType (ItemTypeName)
);

------------------------------------

------------------------------------

CREATE TABLE ItemType
(
	ItemTypeID int primary key AUTO_INCREMENT,
	ItemTypeName varchar(15) NOT NULL,
	Description varchar(255)
);

------------------------------------

------------------------------------

CREATE TABLE Discount(
	BagelCardDiscount decimal primary key NOT NULL,
	foreign key (BagelCardDiscount) REFERENCES BagelCard (BagelPoints)
);