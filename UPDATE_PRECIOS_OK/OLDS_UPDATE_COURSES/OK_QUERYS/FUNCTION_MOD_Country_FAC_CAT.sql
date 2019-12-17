IF OBJECT_ID (N'dbo.testModCountryFacCat', N'FN') IS NOT NULL  
    DROP FUNCTION testModCountryFacCat;  
GO 
CREATE FUNCTION dbo.testModCountryFacCat
( 
            @CountryCode VARCHAR(2),
            @FacultyName VARCHAR (max),
            @CategoryName VARCHAR (max)
)  
RETURNS REAL   
AS   
BEGIN  
    DECLARE @mod REAL;
    SELECT @mod =  pc.[Value] * pf.[Value] 
                FROM ProductCountryModifiers pc 
                LEFT JOIN ProductCountryFacultyModifiers AS pf on pf.CountryCode = pc.CountryCode
                WHERE pc.CountryCode = @CountryCode
                AND pf.FacultyUrl = @FacultyName
                AND pc.CategoryUrl = @CategoryName ;

    RETURN @mod;
END; 
--