-- Part 2.2 insert.sql
--
-- Submitted by: <Zehra Punjwani (1431800 (K1502450)>
-- 

-- do not edit these lines -------------
USE bagelshoppe;
----------------------------------------

-- add your INSERT statements here

------------------------------------
--Pick at least 3 of your favourite celebrities to include as Customers, and give each of them a BagelCard. Make up the DOB/Address/EmailAddress for these Customers.
------------------------------------

INSERT INTO Customer (Title, FName, LName, DOB, Address, Email) 
VALUES ('Ms', 'Sandra', 'Bullock', '1964-07-26', 'Arlington County, Arlington, Virginia, United States', 'Sandra_Bullock@Celebrity.com');

INSERT INTO Customer (Title, FName, LName, DOB, Address, Email) 
VALUES ('Mr', 'Keanu', 'Reeves', '1964-09-02', 'Beirut, Lebanon', 'Keanu_Reeves@Celebrity.com');

INSERT INTO Customer (Title, FName, LName, DOB, Address, Email) 
VALUES ('Mr', 'Jim', 'Carrey', '1962-01-17', 'Newmarket, Canada', 'Jim_Carrey@Celebrity.com');

INSERT INTO Customer (Title, FName, LName, DOB, Address, Email) 
VALUES ('Mr', 'Enrique', 'Iglesias', '1975-05-08', 'Miami, Florida, United States', 'Enrique_Iglesias@Celebrity.com');

INSERT INTO Customer (Title, FName, LName, DOB, Address, Email) 
VALUES ('Mr', 'Robin', 'Williams', '1951-07-21', 'Chicago, Illinois, United States', 'Robin_Williams@Celebrity.com');

INSERT INTO Customer (Title, FName, LName, DOB, Address, Email) 
VALUES ('Miss', 'Emma', 'Watson', '1990-06-15', 'Paris, France', 'Emma_Watson@Celebrity.com');

------------------------------------
--Item types....
------------------------------------

INSERT INTO ItemType(ItemTypeID, ItemTypeName, Description)
VALUES ('1', 'Bagel', 'Dense bread roll in the shape of a ring');

INSERT INTO ItemType(ItemTypeID, ItemTypeName, Description)
VALUES ('2', 'BagelFilling', 'A extra topping that goes into a Bagel');

INSERT INTO ItemType(ItemTypeID, ItemTypeName, Description)
VALUES ('3', 'Drink', 'Liquid that can be consumed as refreshment');

------------------------------------
--Include at least 5 types of Bagels on the menu, and at least 1 should contain have nuts.
--Include “Cream cheese” and at least 2 other types of Bagel Fillings.
--Include “Coffee” and at least 2 types of drinks of various sizes.
------------------------------------

INSERT INTO Items(ItemID, ItemName, Item_Type_ID, Nut, Size, Currency, Price)
VALUES ('101', 'Plain', '1', 'Y', 'N/A', '£', '1.00');

INSERT INTO Items(ItemID, ItemName, Item_Type_ID, Nut, Size, Currency, Price)
VALUES ('102', 'Cinniamon', '1', 'Y', 'N/A', '£', '1.49');

INSERT INTO Items(ItemID, ItemName, Item_Type_ID, Nut, Size, Currency, Price)
VALUES ('103', 'BlueBerry', '1', 'Y', 'N/A', '£', '1.49');

INSERT INTO Items(ItemID, ItemName, Item_Type_ID, Nut, Size, Currency, Price)
VALUES ('104', 'Salted', '1', 'Y', 'N/A', '£', '1.49');

INSERT INTO Items(ItemID, ItemName, Item_Type_ID, Nut, Size, Currency, Price)
VALUES ('105', 'Chocolate Chip', '1', 'N', 'N/A', '£', '1.49');

INSERT INTO Items(ItemID, ItemName, Item_Type_ID, Nut, Size, Currency, Price)
VALUES ('106', 'Creame Cheese', '2', 'N/A', 'N/A', '£', '0.50');

INSERT INTO Items(ItemID, ItemName, Item_Type_ID, Nut, Size, Currency, Price)
VALUES ('107', 'Smoked Salmon', '2', 'N/A', 'N/A', '£', '0.50');

INSERT INTO Items(ItemID, ItemName, Item_Type_ID, Nut, Size, Currency, Price)
VALUES ('108', 'Chocolate Spread', '2', 'N/A', 'N/A', '£', '0.50');

INSERT INTO Items(ItemID, ItemName, Item_Type_ID, Nut, Size, Currency, Price)
VALUES ('109', 'Coffee', '3', 'N/A', 'S', '£', '0.99');

INSERT INTO Items(ItemID, ItemName, Item_Type_ID, Nut, Size, Currency, Price)
VALUES ('110', 'Fanta', '3', 'N/A', 'L', '£', '1.99');

INSERT INTO Items(ItemID, ItemName, Item_Type_ID, Nut, Size, Currency, Price)
VALUES ('111', 'Lemonade', '3', 'N/A', 'J', '£', '2.49');

------------------------------------
--For at least 3 of your customers, have them each have at least 3 orders spread out through out the months of January and February for this year.
------------------------------------

INSERT INTO Orders (OrderDate, Customer_ID)
VALUES ('2016-01-05 09:00:17', '6');

INSERT INTO Orders (OrderDate, Customer_ID)
VALUES ('2016-01-05 011:00:17', '2');

INSERT INTO Orders (OrderDate, Customer_ID)
VALUES ('2016-01-11 13.12.29', '1');

INSERT INTO Orders (OrderDate, Customer_ID)
VALUES ('2016-01-12 09.29.19.25', '6');

INSERT INTO Orders (OrderDate, Customer_ID)
VALUES ('2016-01-12 11:00:00', '4');

INSERT INTO Orders (OrderDate, Customer_ID)
VALUES ('2016-01-26 09.00.12', '1');

INSERT INTO Orders (OrderDate, Customer_ID)
VALUES ('2016-02-04 14:25:16', '4');

INSERT INTO Orders (OrderDate, Customer_ID)
VALUES ('2016-02-18 17.45.00', '1');

INSERT INTO Orders (OrderDate, Customer_ID)
VALUES ('2016-02-19 09:00:17', '2');

INSERT INTO Orders (OrderDate, Customer_ID)
VALUES ('2016-02-19 09:17:19', '6');

INSERT INTO Orders (OrderDate, Customer_ID)
VALUES ('2016-02-28 12:17:34', '4');

INSERT INTO Orders (OrderDate, Customer_ID)
VALUES ('2016-02-28 15:30:00', '3');

------------------------------------
--At least 1 of your customers should order enough items to generate a discount on one of their orders in month of January.
------------------------------------

INSERT INTO Contain (Order_ID, Item_ID, Item_Type_ID, Quantity) 
VALUES ('1', '101', '1', '1');
INSERT INTO Contain (Order_ID, Item_ID, Item_Type_ID,Quantity) 
VALUES ('1', '105', '1', '1');
INSERT INTO Contain (Order_ID, Item_ID, Item_Type_ID, Quantity) 
VALUES ('1', '111', '3', '2');

INSERT INTO Contain (Order_ID, Item_ID, Item_Type_ID, Quantity) 
VALUES ('2', '104', '1', '2');
INSERT INTO Contain (Order_ID, Item_ID, Item_Type_ID, Quantity) 
VALUES ('2', '105', '1', '2');

INSERT INTO Contain (Order_ID, Item_ID, Item_Type_ID, Quantity) 
VALUES ('3', '110', '3', '1');

INSERT INTO Contain (Order_ID, Item_ID, Item_Type_ID, Quantity)  
VALUES ('4', '109', '3', '1');
INSERT INTO Contain (Order_ID, Item_ID, Item_Type_ID, Quantity) 
VALUES ('4', '101', '1', '1');
INSERT INTO Contain (Order_ID, Item_ID, Item_Type_ID, Quantity) 
VALUES ('4', '107', '2', '1');

INSERT INTO Contain (Order_ID, Item_ID, Item_Type_ID, Quantity) 
VALUES ('5', '111', '3', '5');

INSERT INTO Contain (Order_ID, Item_ID, Item_Type_ID, Quantity) 
VALUES ('6', '110', '3', '2');

INSERT INTO Contain (Order_ID, Item_ID, Item_Type_ID, Quantity)  
VALUES ('7', '111', '3', '1');

INSERT INTO Contain (Order_ID, Item_ID, Item_Type_ID, Quantity)  
VALUES ('8', '106', '2', '3');
INSERT INTO Contain (Order_ID, Item_ID, Item_Type_ID, Quantity) 
VALUES ('8', '102', '1', '1');

INSERT INTO Contain (Order_ID, Item_ID, Item_Type_ID, Quantity) 
VALUES ('9', '111', '3', '5');

INSERT INTO Contain (Order_ID, Item_ID, Item_Type_ID, Quantity)  
VALUES ('10', '110', '3', '3');

INSERT INTO Contain (Order_ID, Item_ID, Item_Type_ID, Quantity)  
VALUES ('11', '109', '3', '1');

INSERT INTO Contain (Order_ID, Item_ID, Item_Type_ID, Quantity)  
VALUES ('12', '111', '3', '1');

------------------------------------
--Be sure that your customer’s current BagelPoints balance is consistent with all of their orders.
------------------------------------

INSERT INTO BagelCard(BagelPoints, Customer_ID)
VALUES ('0', '1');

INSERT INTO BagelCard(BagelPoints, Customer_ID)
VALUES ('0', '2');

INSERT INTO BagelCard(BagelPoints, Customer_ID)
VALUES ('0', '3');

INSERT INTO BagelCard(BagelPoints, Customer_ID)
VALUES ('0', '4');

INSERT INTO BagelCard(BagelPoints, Customer_ID)
VALUES ('0', '5');

INSERT INTO BagelCard(BagelPoints, Customer_ID)
VALUES ('0', '6');

------------------------------------
--Discount schema.
------------------------------------

-- INSERT INTO Discount(BagelCardDiscount)
--select sum(cast(price as double)) from tbl_temp	