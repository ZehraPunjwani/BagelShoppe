-- Part 2.3 select.sql
--
-- Submitted by: <Zehra Punjwani (1431800 (K1502450)>
-- 

-- do not edit these lines -------------
USE bagelshoppe;
----------------------------------------

-- add your SELECT statements here for each section

------------------------------------
-- 1. Total Sales. - Chipp would like to know his total sales for the month of January only. Write a SELECT query that gives the total sales for the month, 
--as well as the total amount of discount (in GBP and not as a percentage) his customers received for that month.
------------------------------------

SELECT MONTH(OrderDate) AS 'January' , SUM(Quantity) AS 'Quantity Sold' 
FROM (Contain
	INNER JOIN Orders
	ON Contain.OrderID = Contain.Order_ID)
WHERE MONTH(OrderDate) = '01';

SELECT Item_ID, Price, Quantity, Price * Quantity
FROM (Contain
	INNER JOIN Items
	ON Items.ItemID = Contain.Item_ID)
GROUP BY Item_ID;

------------------------------------
-- 2. Bagel Report - List the total number of bagels sold by bagel type for the month of February. In the listing, include the bagel types that did not sell 
--(i.e. had 0 quantity sales).
------------------------------------

SELECT SUM(Quantity) AS 'Total Bagel Sale - Feburary'
FROM Contain
WHERE Item_Type_ID = '1';

------------------------------------
-- 3. Number 1 and 2 - Chipp would like to personally email his top 2 customers by total purchases. Write a SELECT query that lists his Customer’s Title, Name 
--and EmailAddress. Sort the customers by their number of purchases, showing the top-purchasing customer first.
------------------------------------



------------------------------------
-- 4. Receipt - Create an itemized receipt for the customer order that generated a discount. To help you write the query, you can hard code the order number. 
--Write a SELECT statement that lists Bagels first, BagelFillings, and finally Drinks as a single query result. For each item show at least the Description, 
--Price, and Quantity purchased. (Hint: You may want to use string CONCAT to add the Drink Size to the Drink Description for a prettier receipt).
------------------------------------



------------------------------------
-- 5. Nut Alert! - Chipp has included a service where a customer can request a nut alert to be on placed on an order that contains a Bagel that contains nuts.
------------------------------------
