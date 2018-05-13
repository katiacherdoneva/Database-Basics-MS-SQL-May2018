CREATE DATABASE Hotel --ThisLineNotSubmitInJudge

CREATE TABLE Employees(
Id INT PRIMARY KEY IDENTITY(1, 1), 
FirstName NVARCHAR(50) NOT NULL,
LastName NVARCHAR(50) NOT NULL,
Title NVARCHAR(50) NOT NULL, 
Notes NVARCHAR(MAX) NULL
)

CREATE TABLE Customers(
AccountNumber INT UNIQUE NOT NULL, 
FirstName NVARCHAR(50) NOT NULL, 
LastName NVARCHAR(50) NOT NULL, 
PhoneNumber BIGINT NOT NULL, 
EmergencyName NVARCHAR(50) NULL, 
EmergencyNumber INT NULL, 
Notes NVARCHAR(MAX) NULL
)

CREATE TABLE RoomStatus(
RoomStatus NVARCHAR(10), 
Notes NVARCHAR(MAX) NULL
)

CREATE TABLE RoomTypes(
RoomType NVARCHAR(50) NOT NULL, 
Notes NVARCHAR(MAX) NULL
)

CREATE TABLE BedTypes(
BedType NVARCHAR(50) NOT NULL, 
Notes NVARCHAR(MAX) NULL
)

CREATE TABLE Rooms(
RoomNumber INT UNIQUE NOT NULL, 
RoomType NVARCHAR(50) NOT NULL, 
BedType NVARCHAR(50) NOT NULL, 
Rate INT NOT NULL, 
RoomStatus NVARCHAR(10) NOT NULL, 
Notes NVARCHAR(MAX) NULL
)

CREATE TABLE Payments(
Id INT PRIMARY KEY IDENTITY(1, 1), 
EmployeeId INT NOT NULL, 
PaymentDate DATE NOT NULL, 
AccountNumber BIGINT UNIQUE NOT NULL, 
FirstDateOccupied DATE NOT NULL, 
LastDateOccupied DATE NOT NULL, 
TotalDays INT NOT NULL, 
AmountCharged INT NOT NULL, 
TaxRate INT NULL, 
TaxAmount INT NULL, 
PaymentTotal INT NOT NULL, 
Notes NVARCHAR(MAX) NULL
)

CREATE TABLE Occupancies(
Id INT PRIMARY KEY IDENTITY(1, 1), 
EmployeeId INT NOT NULL, 
DateOccupied DATE NOT NULL, 
AccountNumber BIGINT UNIQUE NOT NULL, 
RoomNumber INT NOT NULL, 
RateApplied INT NULL, 
PhoneCharge INT NULL, 
Notes NVARCHAR(MAX) NULL
)

INSERT INTO Employees (FirstName, LastName, Title, Notes) VALUES
('Petia', 'Ivanova', 'Manager', null),
('Ivan', 'Ivanova', 'Director', null),
('Gosho', 'Goshev', 'Employee', null)

INSERT INTO Customers (AccountNumber, FirstName, LastName, PhoneNumber, EmergencyName, EmergencyNumber, Notes) VALUES
(232343435, 'Daniel', 'Petrov', 08989333333, null, null, null),
(232543435, 'Daniela', 'Petrova', 0898955555, null, null, null),
(232323435, 'Preslav', 'Petrov', 0898944444, null, null, null)

INSERT INTO RoomStatus(RoomStatus, Notes) VALUES
('free', null),
('busy', null),
('wait', null)

INSERT INTO RoomTypes (RoomType, Notes) VALUES
('small', null),
('big', null),
('middle', null)

INSERT INTO BedTypes(BedType, Notes) VALUES
('small', null),
('big', null),
('middle', null)

INSERT INTO Rooms(RoomNumber, RoomType, BedType, Rate, RoomStatus, Notes) VALUES
(12, 'small', 'small', 12, 'free', null),
(13, 'big', 'big', 12, 'busy', null),
(14, 'middle', 'small', 12, 'free', null)

INSERT INTO Payments(EmployeeId, PaymentDate, AccountNumber, 
FirstDateOccupied, LastDateOccupied, TotalDays, 
AmountCharged, TaxRate, TaxAmount, PaymentTotal, Notes) VALUES
(3, '2007-03-12', 33443545445, '2007-04-10', '2007-04-14', 4, 25, null, null, 25, null),
(2, '2017-03-12', 33443545345, '2017-03-10', '2017-03-14', 4, 45, null, null, 45, null),
(1, '2017-03-12', 33443545425, '2017-03-10', '2017-03-14', 4, 55, null, null, 55, null)

INSERT INTO Occupancies(EmployeeId, DateOccupied, AccountNumber, RoomNumber, 
RateApplied, PhoneCharge, Notes) VALUES
(2, '2007-04-05', 3454534564, 12, null, null, null),
(1, '2007-03-05', 345453445464, 11, null, null, null),
(3, '2007-02-05', 34545335464, 10, null, null, null)