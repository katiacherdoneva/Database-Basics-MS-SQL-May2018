CREATE DATABASE Movies --ThisLineNotSubmitInJudge

CREATE TABLE Directors(
Id INT PRIMARY KEY IDENTITY(1, 1),
DirectorName NVARCHAR(50) NOT NULL,
Notes NVARCHAR(MAX) NULL
)

CREATE TABLE Genres(
Id INT PRIMARY KEY IDENTITY(1, 1),
GenreName NVARCHAR(50) NOT NULL,
Notes NVARCHAR(MAX) NULL
)

CREATE TABLE Categories(
Id INT PRIMARY KEY IDENTITY(1, 1),
CategoryName NVARCHAR(50) NOT NULL,
Notes NVARCHAR(MAX) NULL
)

CREATE TABLE Movies(
Id INT PRIMARY KEY IDENTITY(1, 1),
Title NVARCHAR(50) UNIQUE NOT NULL,
DirectorId INT NOT NULL,
CopyrightYear INT NULL,
[Length] TIME NOT NULL,
GenreId INT NOT NULL,
CategoryId INT NOT NULL,
Rating INT NULL, 
Notes NVARCHAR(MAX) NULL
)

INSERT INTO Directors(DirectorName, Notes) VALUES
('Pesho', null),
('Gosho', null),
('Ivan', null),
('Stanislav', null),
('Todor', null)

INSERT INTO Genres (GenreName, Notes) VALUES
('Drama', null),
('Comedy', null),
('Action', null),
('Crime', null),
('Fantasy', null)

INSERT INTO Categories(CategoryName, Notes) VALUES
('Aimed at young audience', null),
('No age restrictions', null),
('Not recommended for children under 12', null),
('Prohibited for persons under 16', null),
('Restricted to adults only', null)

INSERT INTO Movies(Title, DirectorId, CopyrightYear, [Length], GenreId, CategoryId, Rating, Notes) VALUES
('A Star Wars Story', 1, null, '01:05:00', 2, 3, 5, null),
('Deadpool', 3, null, '01:08:00', 4, 1, 2, null),
('Super Troopers', 4, null, '01:00:00', 3, 3, 3, null),
('Overboard', 5, null, '01:15:00', 2, 5, 4, null),
('Radiogram', 2, null, '01:25:00', 1, 3, 5, null)