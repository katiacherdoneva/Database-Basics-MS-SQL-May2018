--CREATE DATABASE OnlineStore

--USE OnlineStore
CREATE TABLE Cities(
CityID INT PRIMARY KEY NOT NULL,
[Name] NVARCHAR(50) NOT NULL
)

CREATE TABLE Customers(
CustomerID INT PRIMARY KEY NOT NULL,
[Name] NVARCHAR(50) NOT NULL,
Birthday DATE NULL,
CityID INT NULL,
CONSTRAINT FK_Customers_Cities FOREIGN KEY (CityID) REFERENCES Cities(CityID)
)

CREATE TABLE ItemTypes(
ItemTypeID INT PRIMARY KEY NOT NULL,
[Name] NVARCHAR(50) NOT NULL
)

CREATE TABLE Items(
ItemID INT PRIMARY KEY NOT NULL,
[Name] NVARCHAR(50) NOT NULL,
ItemTypeID  INT NOT NULL,
CONSTRAINT FK_Items_ItemTypes FOREIGN KEY (ItemTypeID) REFERENCES ItemTypes(ItemTypeID)
)

CREATE TABLE Orders(
OrderID INT PRIMARY KEY NOT NULL,
CustomerID INT NOT NULL,
CONSTRAINT FK_Orders_Customers FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
)

CREATE TABLE OrderItems(
OrderID INT NOT NULL,
ItemID INT NOT NULL,
CONSTRAINT PK_OrderID_ItemID PRIMARY KEY (OrderID, ItemID),
CONSTRAINT FK_OrderItems_Items FOREIGN KEY (ItemID) REFERENCES Items(ItemID),
CONSTRAINT FK_OrderItems_Orders FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
)
