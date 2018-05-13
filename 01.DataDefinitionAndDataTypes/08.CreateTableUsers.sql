CREATE TABLE Users(
Id INT PRIMARY KEY IDENTITY NOT NULL,
Username VARCHAR(30) UNIQUE NOT NULL,
[Password] VARCHAR(26) NOT NULL,
ProfilePicture VARBINARY CHECK(DATALENGTH(ProfilePicture)<900*1024),
LastLoginTime DATETIME,
IsDeleted CHAR(5) NOT NULL CHECK(IsDeleted = 'true' or IsDeleted = 'false')
)

INSERT INTO Users(Username, [Password], ProfilePicture, LastLoginTime, IsDeleted) VALUES
('goshko', 'goshkoisthebest', NULL, NULL, 'true'),
('anito', '123456', NULL, NULL, 'true'),
('daniel', '67890', NULL, NULL, 'false'),
('toshko', '1230000', NULL, NULL, 'true'),
('ivan', '67890', NULL, NULL, 'false')

