
/*
SELECT * from ProductScholarshipCountryModifiers
where CountryCode = 'ES'
AND CategoryUrl = 'experto-universitario'*/
-----------------------
DECLARE @CountryCode VARCHAR(02);
DECLARE @FacultyName VARCHAR (max);
DECLARE @CategoryName VARCHAR (max);
DECLARE @CurrencyRate REAL;
-- set values
SET @CountryCode = 'ES';
Set @FacultyName = 'odontologia'
Set @CategoryName = 'experto-universitario';
SET @CurrencyRate = 66.38;

--ProductScholarshipCountryModifiers
/*
SELECT round( (pa.Amount * pfs.Value ) *
(   SELECT VALUE FROM ProductScholarshipCountryModifiers ps
    WHERE ps.CountryCode = @CountryCode
    AND ps.CategoryUrl = @CategoryName
),2,0) 
, (pa.Amount * pfs.Value )            
FROM [dbo].[CourseTypeCountries] ct
LEFT JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
LEFT JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
LEFT JOIN Countries as c ON c.id = ct.CountryId
WHERE  c.Code =  @CountryCode    
AND  pfs.FacultyUrl = @FacultyName     
AND ct.SeoUrl = @CategoryName     
*/
--ProductScholarshipCountryModifiers
---------------------------------------------------------
SELECT round((pa.Amount * pfs.Value)   
        * (SELECT (pc.[Value] * pf.[Value])  
        FROM ProductCountryModifiers pc 
        INNER JOIN ProductCountryFacultyModifiers AS pf on pf.CountryCode = pc.CountryCode
        WHERE pc.CountryCode = @CountryCode
        AND pf.CategoryUrl = @FacultyName
        AND pc.CategoryUrl =  @CategoryName )
        * ( SELECT VALUE FROM ProductScholarshipCountryModifiers ps
            WHERE ps.CountryCode = @CountryCode
            AND ps.CategoryUrl = @CategoryName),2,0)                        
FROM [dbo].[CourseTypeCountries] ct
INNER JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
JOIN Countries as c ON c.id = ct.CountryId
WHERE  c.Code = @CountryCode     
AND  pfs.FacultyUrl = @FacultyName       
AND ct.SeoUrl = @CategoryName    

--ProductCouponDiscountFacultyStudyModifiers
-------------------------------------------------------
SELECT round((pa.Amount * pfs.Value)   
    * (SELECT (pc.[Value] * pf.[Value])  
    FROM ProductCountryModifiers pc 
    INNER JOIN ProductCountryFacultyModifiers AS pf on pf.CountryCode = pc.CountryCode
    WHERE pc.CountryCode = @CountryCode
    AND pf.CategoryUrl = @FacultyName
    AND pc.CategoryUrl =  @CategoryName)
    * (SELECT pf.Value
    FROM ProductCouponDiscountFacultyStudyModifiers as pf 
    JOIN CourseTypeCountries as ct ON ct.Name = pf.CategoryUrl
    JOIN Countries as c ON c.id = ct.CountryId
    WHERE c.Code =  @CountryCode   
    AND  ct.SeoUrl = @CategoryName    
    AND  pf.FacultyUrl = @FacultyName)
    * (SELECT  pc.Value FROM ProductCouponDiscountCountryModifiers pc
    WHERE pc.CountryCode = @CountryCode
    AND pc.CategoryUrl = @CategoryName) 
,2,0)                        
FROM [dbo].[CourseTypeCountries] ct
INNER JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
JOIN Countries as c ON c.id = ct.CountryId
WHERE  c.Code = @CountryCode     
AND  pfs.FacultyUrl = @FacultyName       
AND ct.SeoUrl = @CategoryName  
---------------------------------------------------------