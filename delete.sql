-- Part 2.5 delete.sql
--
-- Submitted by: <Zehra Punjwani (1431800 (K1502450)>
-- 

-- do not edit these lines -------------
USE bagelshoppe;
----------------------------------------

-- add your DELETE statements here

------------------------------------
--Write the DELETE statement(s) that removes this customer, identified by their email 
--address, from the database. To avoid any future embarrassment in case of a data leak, 
--make sure you remove all trace of the customer from the database.
------------------------------------

--Number one Customer Emma Watson, deleting the customer from the Database

DELETE FROM 'Customer', 'Orders', 'Contain'
WHERE Email = 'Emma_Watson@Celebrity.com', Customer_ID = '6',  Order_ID = '1';

DELETE FROM 'Orders'
WHERE Customer_ID = '6';

DELETE FROM 'Contain'
WHERE Order_ID = '1';
