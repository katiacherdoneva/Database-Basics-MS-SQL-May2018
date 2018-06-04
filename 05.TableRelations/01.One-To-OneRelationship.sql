CREATE TABLE Persons(
PersonID INT PRIMARY KEY IDENTITY NOT NULL,
FirstName NVARCHAR(50) NOT NULL,
Salary DECIMAL(15, 2) NOT NULL,
PassportID INT NOT NULL
)

CREATE TABLE Passports(
PassportID INT PRIMARY KEY NOT NULL,
PassportNumber NVARCHAR(20) NOT NULL
)

INSERT Persons(FirstName, Salary, PassportID) VALUES
('Roberto', 43300.00, 102),
('Tom', 56100.00, 103),
('Yana', 60200.00, 101)

INSERT Passports(PassportID, PassportNumber) VALUES
(101, 'N34FG21B'),
(102, 'K65LO4R7'),
(103, 'ZE657QP2')

ALTER TABLE Persons
ADD CONSTRAINT FK_Persons_Passports FOREIGN KEY (PassportID) REFERENCES Passports(PassportID)