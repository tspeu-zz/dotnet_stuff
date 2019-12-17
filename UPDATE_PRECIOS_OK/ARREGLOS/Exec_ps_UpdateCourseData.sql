DECLARE @RC int
DECLARE @CountryCode varchar(2)
DECLARE @FacultyName varchar(max)
DECLARE @CategoryName varchar(max)
DECLARE @CurrencyRate real

-- TODO: Set parameter values here.
SET @CountryCode = 'ES';
Set @FacultyName = 'educacion'
Set @CategoryName = 'curso-universitario';
SET @CurrencyRate = 66.38;

EXECUTE @RC = [dbo].[sp_update_coursedata_totalAmount] 
   @CountryCode
  ,@FacultyName
  ,@CategoryName
  ,@CurrencyRate
GO