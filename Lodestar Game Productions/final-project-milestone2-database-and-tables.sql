CREATE DATABASE LodeStarGameProductions;
GO

USE LodeStarGameProductions;

CREATE TABLE Customers(
ID int NOT NULL,
FName varchar(20) NOT NULL,
LName varchar(30) NOT NULL,
ZipCode varchar(10) NOT NULL,
Phone varchar(15),
Email varchar(30),
PRIMARY KEY(ID)
);

GO
CREATE TABLE ZipCode(
ZipCode varchar(10) NOT NULL,
City varchar(30) NOT NULL,
State varchar(2) NOT NULL,
PRIMARY KEY(Zipcode)
);

GO
CREATE TABLE Distributors(
ID int NOT NULL,
CompanyName varchar(30) NOT NULL,
Zip varchar(10) NOT NULL,
Phone varchar(15),
Email varchar(30),
Fax varchar(15),
PRIMARY KEY(ID)
);

GO
CREATE TABLE Shipping(
ID int NOT NULL,
CompanyName varchar(30) NOT NULL,
zipcodes varchar(10) NOT NULL,
Phone varchar(15),
Email varchar(30),
Fax varchar(15),
PRIMARY KEY(ID)
);

GO
CREATE TABLE Products(
ID int NOT NULL,
ProductType varchar(20) NOT NULL,
Price varchar(30) NOT NULL,
SystemPlatform varchar(15),
GameName varchar(30) NOT NULL,
PRIMARY KEY(ID)
);

GO
CREATE TABLE Orders(
ID int NOT NULL,
CustomerID int NOT NULL,
OrderDate datetime,
PRIMARY KEY(ID)
);

GO
CREATE TABLE OrderDetail(
ID int NOT NULL,
OrderID int NOT NULL,
ProductID int NOT NULL,
Quantity int NOT NULL,
ShippingID int NOT NULL,
PRIMARY KEY(ID)
);

GO