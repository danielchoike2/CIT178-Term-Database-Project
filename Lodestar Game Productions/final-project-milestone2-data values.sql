/*USE LodeStarGameProductions;
GO 
INSERT INTO ZipCode VALUES ('49501','Grand Rapids', 'MI')
INSERT INTO ZipCode VALUES ('10001','New York', 'NY')
INSERT INTO ZipCode VALUES ('23173','Richmond', 'VA')
INSERT INTO ZipCode VALUES ('60007','Chicago', 'IL')
INSERT INTO ZipCode VALUES ('61016','Rockford', 'IL')
INSERT INTO ZipCode VALUES ('49684','Traverse City', 'MI')
INSERT INTO ZipCode VALUES ('48601','Saginaw', 'MI')

INSERT INTO ZipCode VALUES ('60002','Chicago', 'IL')
INSERT INTO ZipCode VALUES ('10003','New York', 'NY')
INSERT INTO ZipCode VALUES ('23454','Stafford', 'VA')
INSERT INTO ZipCode VALUES ('49502','Grand Rapids', 'MI')
INSERT INTO ZipCode VALUES ('10004','New York', 'NY')
INSERT INTO ZipCode VALUES ('23171','Richmond', 'VA')
INSERT INTO ZipCode VALUES ('60207','Chicago', 'IL')
INSERT INTO ZipCode VALUES ('61316','Rockford', 'MI')
 

INSERT INTO Products VALUES (11, 'Standard Physical','$60.00','PC','Attack of the Pidgeons') 
INSERT INTO Products VALUES (22, 'Standard Physical', '$60.00','XBOX','Demon Hunter') 
INSERT INTO Products VALUES (26, 'Standard Physical','$60.00','Nintendo','Watching Paint Dry')
INSERT INTO Products VALUES (65, 'Standard Physical','$60.00','PC','Beast Tamer')
INSERT INTO Products VALUES (33, 'Collectors Edition','$80.00','Playstation','Rock Star Simulator')

SELECT * FROM Products;


INSERT INTO CUSTOMERS VALUES(234, 'Joe', 'Smith', '49501', '567-901-1021', 'jsmith@gmail.com')
INSERT INTO CUSTOMERS VALUES(456, 'Bob', 'Darrow', '10001', '214-901-2212', 'bdarrow@gmail.com')
INSERT INTO CUSTOMERS VALUES(489, 'Hunter', 'Auburne', '23173', '678-221-2212', 'hauburne@gmail.com')
INSERT INTO CUSTOMERS VALUES(789, 'Beth', 'Thompson', '60007', '234-890-5677', 'bthompson@gmail.com')
INSERT INTO CUSTOMERS VALUES(690, 'Gary', 'Olds', '61016', '334-908-4456', 'golds@gmail.com')



INSERT INTO Distributors VALUES(1,'BC GAMES', '49684', '231-989-2000', 'bcgames@gmail.com','231- 989-2000')
INSERT INTO Distributors VALUES(2,'Gamer Gallery','48601','989-567-8900','gamergallery@gmail.com','989-567-8900')
INSERT INTO Distributors VALUES(3,'Garys Games','60007','773-989-4567','garysgames@gmail.com','773-989-4567')
INSERT INTO Distributors VALUES(4,'Game Express','10001','718-291-0278','gameexpress@gmail.com','718-291-0278')

INSERT INTO Distributors VALUES(5,'Video Game Haven','23173','540-789-3412','videogamehaven@gmail.com','540-789-3412')

SELECT * FROM Distributors

INSERT INTO Shipping VALUES(1,'Easy Shippers','49501','616-908-2222','easyshippers@gmail.com','616-908-2222')
INSERT INTO Shipping VALUES(2,'Shipping Express', '10001', '212-980-5467','shippingexpress@gmail.com','212-980-5467')
INSERT INTO Shipping VALUES(3,'Pro Delivery','23173','804-567-3241','prodelivery@gmail.com','804-567-3241')
INSERT INTO Shipping VALUES(4, 'Rush Shipping','60007','773-2899-2222','rushshipping@gmail.com','773-2899-2222')
INSERT INTO Shipping VALUES(5, 'Xpress Delivery', '61016','779-990-2233','xpressdelivery@gmail.com','779-990-2233')

SELECT * FROM Shipping 
INSERT INTO Orders VALUES(11,234,'10/02/2021')
INSERT INTO Orders VALUES(23,456,'10/02/2021')
INSERT INTO Orders VALUES(34,489,'10/02/2021')
INSERT INTO Orders VALUES(45,789,'10/02/2021')
INSERT INTO Orders VALUES(67,456,'10/02/2021')


SELECT * FROM Orders

INSERT INTO OrderDetail VALUES(1,11,11,1,1)
INSERT INTO OrderDetail VALUES(2,11,33,1,2)
INSERT INTO OrderDetail VALUES(3,23,22,2,1)
INSERT INTO OrderDetail VALUES(4,34,33,1,2)
INSERT INTO OrderDetail VALUES(5,45,26,2,3)
INSERT INTO OrderDetail VALUES(6,67,65,1,4)

SELECT * FROM OrderDetail*/
USE LodeStarGameProductions;
SELECT * FROM ZipCode
