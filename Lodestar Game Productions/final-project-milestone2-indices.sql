Use LodeStarGameProductions;
GO 
CREATE INDEX idx_ZipCode ON Customers(ZipCode);
GO
CREATE INDEX idx_Customer ON Orders(CustomerID);
GO
CREATE INDEX idx_Order ON OrderDetail(OrderID);
GO
CREATE INDEX idx_Product ON OrderDetail(ProductID);
GO
CREATE INDEX idx_Shipping ON OrderDetail(ShippingID);
GO
CREATE INDEX idx_Zip ON Distributors(Zip);
GO