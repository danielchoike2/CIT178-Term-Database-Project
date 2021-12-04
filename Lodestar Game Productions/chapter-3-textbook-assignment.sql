/* #1 Aggregate Query - Organized Customers by Zip Code and how many are in each one. */

USE LodeStarGameProductions;
SELECT ZipCode.ZipCode, COUNT(DISTINCT Customers.ID) AS [Customers Per Zip Code]
FROM Customers JOIN ZipCode ON  Customers.ZipCode = ZipCode.ZipCode
GROUP BY ZipCode.ZipCode
Order BY ZipCode.ZipCode ASC;

/*
#2 Aggregate Query - A simple query to show the cheapest and most expensive product offered.

Use LodeStarGameProductions;
SELECT MIN(Products.Price) AS [Chepeast Product],
       MAX(Products.Price) AS [Most Expensive Product]
	   FROM Products; 

#3 Aggregate Query - A simple query to show the sum of all products sold so far - Some orders had multiple products
Use LodeStarGameProductions;
SELECT SUM (OrderDetail.Quantity) AS [Total Units Sold]
From OrderDetail;

#4 Aggregate Query #4 

USE LodeStarGameProductions;
SELECT AVG(Products.Price) AS [Average Price of Product]
FROM Products; 
*/




