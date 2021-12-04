USE LodeStarGameProductions
GO

/*  View #1  

-- updatable view --

CREATE VIEW [2021 Games]
AS
SELECT GameName, ProductType, SystemPlatform, Price
FROM Products;
GO

SELECT * FROM [2021 Games]
Updated Game Name -- 

GO
UPDATE [2021 Games]
SET GameName = 'Demon Hunter: The Prequel'
WHERE GameName='Demon Hunter';
GO

--SELECT * FROM [2021 Games]*/

/*  View #2  

--Create View 

GO
CREATE VIEW [Customer Contact Information]
AS
SELECT FName +' ' + LName as [Contact Name], Phone, Email
FROM Customers 
GO

-- using the view to display the data 
SELECT * FROM [Customer Contact Information]; */

/* View #3 

--Create View 
  
GO
CREATE VIEW CustomerOrders
AS
SELECT FName +' ' + LName as [Customer], Phone, Orders.ID, OrderDate
FROM Customers JOIN Orders ON Customers.ID = Orders.CustomerID;
GO

-- Show View 
SELECT * FROM CustomerOrders;*/

/* View #4 

--Create View 
GO
CREATE View [Distributors In Michigan]
AS
Select CompanyName,Email,Fax,Zip
FROM Distributors
WHERE Zip = 49684 OR Zip = 48601
GO

-- Show View 
SELECT * FROM [Distributors In Michigan]*/







