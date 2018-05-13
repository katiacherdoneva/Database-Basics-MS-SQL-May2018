CREATE TABLE People(
Id INT PRIMARY KEY IDENTITY NOT NULL,
[Name] NVARCHAR(200) NOT NULL,
Picture VARBINARY CHECK(DATALENGTH(Picture)<900*1024) NULL,
Height DECIMAL(10,2) NULL,
[Weight] DECIMAL(10, 2) NULL,
Gender NVARCHAR(1) NOT NULL CHECK(Gender = 'm' or Gender = 'f'),
Birthdate INT NOT NULL,
Biography NVARCHAR(MAX) NULL
)

INSERT INTO People([Name], Picture, Height, [Weight], Gender, Birthdate, Biography) VALUES
('Katia', null, null, null, 'f', 22, null),
('Ani', null, null, null, 'f', 16, null),
('Daniel', null, null, null, 'm', 17, null),
('Vasko', null, null, null, 'm', 24, null),
('Gosho', null, null, null, 'm', 19, null)
