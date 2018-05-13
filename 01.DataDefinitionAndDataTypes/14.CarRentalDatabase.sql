CREATE DATABASE CarRental --ThisLineNotSubmitInJudge

CREATE TABLE Categories(
Id INT PRIMARY KEY IDENTITY(1, 1), 
CategoryName NVARCHAR(50) UNIQUE NOT NULL, 
DailyRate INT NULL,
WeeklyRate INT NULL, 
MonthlyRate INT NULL, 
WeekendRate INT NULL
)

CREATE TABLE Cars(
Id INT PRIMARY KEY IDENTITY(1, 1), 
PlateNumber NVARCHAR(50) UNIQUE NULL, 
Manufacturer NVARCHAR(190) NULL, 
Model NVARCHAR(50) NOT NULL, 
CarYear INT NOT NULL, 
CategoryId INT NOT NULL,
Doors INT NOT NULL, 
Picture BINARY NULL, 
Condition NVARCHAR(50) NULL, 
Available INT NULL
)

CREATE TABLE Employees(
Id INT PRIMARY KEY IDENTITY(1, 1),
FirstName NVARCHAR(50) NOT NULL, 
LastName NVARCHAR(50) NOT NULL, 
Title NVARCHAR(100) NOT NULL, 
Notes NVARCHAR(MAX) NULL
)

CREATE TABLE Customers(
Id INT PRIMARY KEY IDENTITY(1, 1), 
DriverLicenceNumber BIGINT UNIQUE NOT NULL, 
FullName NVARCHAR(100) NOT NULL,
[Address] NVARCHAR(100) NULL,
City NVARCHAR(50) NULL,
ZIPCode NVARCHAR(50) NULL, 
Notes NVARCHAR(MAX) NULL
)

CREATE TABLE RentalOrders(
Id INT PRIMARY KEY IDENTITY(1, 1), 
EmployeeId INT NOT NULL, 
CustomerId INT NOT NULL, 
CarId INT UNIQUE NOT NULL, 
TankLevel INT NOT NULL, 
KilometrageStart INT NOT NULL, 
KilometrageEnd INT NOT NULL, 
TotalKilometrage INT NOT NULL, 
StartDate DATE NOT NULL, 
EndDate DATE NOT NULL, 
TotalDays INT NOT NULL, 
RateApplied NVARCHAR(50) NULL, 
TaxRate NVARCHAR(50) NULL, 
OrderStatus NVARCHAR(50) NULL, 
Notes NVARCHAR(MAX) NULL
)

INSERT INTO Categories(CategoryName, DailyRate, WeeklyRate, MonthlyRate, WeekendRate) VALUES
('FirstCategory', 3, 4, 5, 1),
('SecondCategory', 3, 2, 1, 1),
('ThirdCategory', 2, 3, 5, 1)


INSERT INTO Cars(PlateNumber, Manufacturer, Model, CarYear, CategoryId, Doors, Picture, Condition, Available) VALUES
('AB0507BE', 'AUDI', 'A8', 1997, 2, 2, NULL, NULL, NULL),
('AC0437BE', 'MERCEDES', 'C2', 2005, 3, 4, NULL, NULL, NULL),
('BA0407EB', 'BMW', 'A4', 2007, 1, 2, NULL, NULL, NULL)

INSERT INTO	Employees(FirstName, LastName, Title, Notes) VALUES
('Ivan', 'Ivanov', 'Employee', null),
('Pesho', 'Ivanov', 'Director', null),
('Ivan', 'Dimitrov', 'Employee', null)

INSERT INTO Customers (DriverLicenceNumber, FullName, [Address], City, ZIPCode, Notes) VALUES
(3456678819, 'Ivan Ivanov', null, 'Stara Zagora', null, null),
(3456678579, 'Georgi Ivanov', null, 'Sofia', null, null),
(3456578869, 'Stanislava Petrova', null, 'Stara Zagora', null, null)

INSERT INTO RentalOrders(EmployeeId, CustomerId, CarId, TankLevel, 
KilometrageStart, KilometrageEnd, TotalKilometrage, StartDate, EndDate, TotalDays, 
RateApplied, TaxRate, OrderStatus, Notes) VALUES
(2, 1, 3, 1, 120000, 130000, 10000, '2018-01-01', '2018-01-11', 10, null, null, null, null),
(2, 1, 2, 2, 120000, 130000, 10000, '2018-03-01', '2018-03-11', 10, null, null, null, null),
(2, 1, 1, 3, 120000, 130000, 10000, '2018-04-01', '2018-04-11', 10, null, null, null, null)


