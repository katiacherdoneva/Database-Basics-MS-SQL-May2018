ALTER TABLE Users
ADD CONSTRAINT CHK_PasswordSize CHECK (DATALENGTH([Password]) >= 5)
