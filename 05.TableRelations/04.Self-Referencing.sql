CREATE TABLE Teachers(
TeacherID INT PRIMARY KEY IDENTITY (101, 1) NOT NULL,
[Name] NVARCHAR(50) NOT NULL,
ManagerID INT NULL,
CONSTRAINT FK_ManagerID_TeacherID FOREIGN KEY (ManagerID) REFERENCES Teachers(TeacherID)
)

INSERT Teachers([Name], ManagerID) VALUES
('John', NULL),
('Maya', 106),
('Silvia', 106),
('Ted', 105),
('Mark', 101),
('Greta', 101)

