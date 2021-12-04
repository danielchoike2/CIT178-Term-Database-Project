/* Final Project Procedures 

-- Retrieves and displays data - in this case Distributor names 


USE LodeStarGameProductions;
GO
CREATE PROC spDistributors
AS
SELECT * FROM Distributors
ORDER BY CompanyName;
GO 

EXEC spDistributors


-- Takes an input parameter - in this case the game Attack of the Pidgeons 
USE LodeStarGameProductions;
GO
CREATE PROC spGETGame
	@ProductID int
AS
BEGIN
	SELECT * FROM Products
	WHERE ID = @ProductID;
END
GO
EXEC spGETGame 11 
-- Takes one input parameter and returns three output parameters -- in this case the 3rd shipper on file, Pro Delivery and their contact information 

USE LodeStarGameProductions;
GO
CREATE PROC spShippingContact
	@ShippingID int,
	@CompanyName nvarchar(30) OUTPUT,
    @PhoneNumber nvarchar(15) OUTPUT,
	@Email nvarchar(30) OUTPUT

AS
SELECT @CompanyName = CompanyName, @PhoneNumber = Phone, @Email = Email
FROM Shipping 
WHERE ID = @ShippingID;
GO
-- Run the procedure
DECLARE @CompanyName nvarchar(30);
DECLARE @PhoneNumber nvarchar(15);
DECLARE @Email nvarchar(30);
EXEC spShippingContact 3, @CompanyName OUTPUT,  @PhoneNumber OUTPUT, @Email OUTPUT;
SELECT  @CompanyName AS 'Company Name', @PhoneNumber AS 'Phone Number', @Email AS 'Email Address';



/* Final Project User Defined Functions 

------------------------------------------------
USE LodeStarGameProductions; -- database 
GO
CREATE FUNCTION fnGrabGame -- function name 
    (@GameName nvarchar(30) = '%')
    RETURNS int
BEGIN
    RETURN (SELECT ID FROM Products WHERE GameName Like @GameName);
END; 

-- uses the function
GO
SELECT ID, ProductType, Price FROM Products 
WHERE ID = fnGrabGame('Attack%');

USE LodeStarGameProductions;
GO
CREATE FUNCTION fnGames
	(@GameName nvarchar(30) = '%')
	RETURNS table
RETURN
	(SELECT * FROM Products WHERE GameName LIKE @GameName);
GO
SELECT * FROM dbo.fnGames('%P%'); */

/* Final Project Triggers 

 -------------------------------------------------------------

 -- create archive table by copying customer table without any rows
 -- create archive table by copying customer table without any rows
 USE LodeStarGameProductions;
 GO
 SELECT * INTO CustomerNewsLetter
 FROM Customers
 WHERE 1=0;

 -- update CustomerTransaction table and add activity column for status
 ALTER TABLE CustomerNewsLetter
 ADD Activity varchar(50);
 GO

 CREATE TRIGGER CustomerNewsLetter_INSERT ON Customers
    AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @CustomerID int
	DECLARE @FirstName nvarchar(20)
	DECLARE @LastName nvarchar(30)
	DECLARE @Zip nvarchar(10)
	DECLARE @PhoneNumber nvarchar(15)
	DECLARE @EmailAddress nvarchar(30)

    SELECT @CustomerID =INSERTED.ID, @FirstName = INSERTED.FName, @LastName = INSERTED.LName, @Zip = INSERTED.ZipCode,
	@PhoneNumber = INSERTED.Phone, @EmailAddress = INSERTED.Email
	FROM INSERTED
	INSERT INTO CustomerNewsLetter VALUES(@CustomerID,@FirstName, @LastName, @Zip, @PhoneNumber, @EmailAddress, 'Inserted' )
     END
     GO
	 -- add row into customer to test insert trigger
INSERT INTO Customers VALUES(880,'Dan','Cho','49501','231-111-1111','someguy@gmail.com');
GO
-- view data in customer archive
SELECT * FROM CustomerNewsLetter;
GO
-- create delete trigger
 CREATE TRIGGER CustomerNewsLetter_Delete ON Customers
    AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @CustomerID int
	DECLARE @FirstName nvarchar(20)
	DECLARE @LastName nvarchar(30)
	DECLARE @Zip nvarchar(10)
	DECLARE @PhoneNumber nvarchar(15)
	DECLARE @EmailAddress nvarchar(30)

    SELECT @CustomerID =DELETED.ID, @FirstName = DELETED.FName, @LastName = DELETED.LName,
	@Zip = DELETED.ZipCode, @PhoneNumber = DELETED.Phone, @EmailAddress = DELETED.Email
	FROM DELETED

   INSERT INTO CustomerNewsLetter VALUES(@CustomerID,@FirstName, @LastName, @Zip, @PhoneNumber, @EmailAddress, 'Deleted' )
END
GO
-- delete row from customer to test delete trigger
DELETE FROM Customers WHERE ID = 880;
GO
-- view data in customer archive
SELECT * FROM CustomerNewsLetter; 

GO
 -- create update trigger
 CREATE TRIGGER CustomerNewsLetter_Update ON Customers
    AFTER UPDATE
AS
BEGIN
   SET NOCOUNT ON;
    DECLARE @CustomerID int
	DECLARE @FirstName nvarchar(20)
	DECLARE @LastName nvarchar(30)
	DECLARE @Zip nvarchar(10)
	DECLARE @PhoneNumber nvarchar(15)
	DECLARE @EmailAddress nvarchar(30)

    SELECT @CustomerID =INSERTED.ID, @FirstName = INSERTED.FName, @LastName = INSERTED.LName, @Zip = INSERTED.ZipCode,
	@PhoneNumber = INSERTED.Phone, @EmailAddress = INSERTED.Email
	FROM INSERTED

	
    INSERT INTO CustomerNewsLetter VALUES(@CustomerID,@FirstName, @LastName, @Zip, @PhoneNumber, @EmailAddress, 'Updated' )
END
GO
-- insert a new row and then update the row (this will test the insert and update triggers)
INSERT INTO Customers VALUES(900,'Bob','Miller','49501','231-111-1111','yeehaw@gmail.com');
GO
UPDATE Customers 
SET FName = 'Billy'
WHERE ID = 900;
GO
-- view data in customer archive
SELECT * FROM CustomerNewsLetter;*/