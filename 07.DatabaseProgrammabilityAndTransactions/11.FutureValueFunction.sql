CREATE FUNCTION ufn_CalculateFutureValue (@InitialSum DECIMAL(10, 4), @YearlyInterestRate FLOAT, @NumberOfYears  INT)
RETURNS DECIMAL(10, 4)
AS
BEGIN
   RETURN @InitialSum * (POWER((1 + @YearlyInterestRate), @NumberOfYears))
END