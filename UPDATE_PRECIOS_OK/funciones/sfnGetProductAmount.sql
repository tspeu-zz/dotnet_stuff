-- Transact-SQL Scalar Function Syntax  
/*
 * Return the ProductAmount with the value modification by country, faculty, category
 * Input -  @CountryCode  = 'ES'
            @FacultyName  = 'filosofia',
            @CategoryName = 'master
   Output type(Real)- 3600 -          
*/ 
CREATE FUNCTION dbo.sfnGetProductAmount (
    @CountryCode VARCHAR(02),
    @FacultyName VARCHAR (max),
    @CategoryName VARCHAR (max)
)

RETURNS Real AS   
BEGIN

    RETURN
        (SELECT round(
        (pa.Amount * pfs.Value)  
        * (SELECT (pc.[Value] * pf.[Value])  
        FROM ProductCountryModifiers pc 
        INNER JOIN ProductCountryFacultyModifiers AS pf on pf.CountryCode = pc.CountryCode
        WHERE pc.CountryCode = @CountryCode
        AND pf.CategoryUrl = @FacultyName
        AND pc.CategoryUrl =  @CategoryName)            
        ,0,0)                        
        FROM [dbo].[CourseTypeCountries] ct
        INNER JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
        JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
        JOIN Countries as c ON c.id = ct.CountryId
        WHERE  c.Code = @CountryCode     
        AND  pfs.FacultyUrl = @FacultyName       
        AND ct.SeoUrl = @CategoryName                        
        ) 
END