-------------------------------------------------------------
-- ****  CoutryValue x CountryFaculty x CountryCategory  | by country
-------------------------------------------------------------

DECLARE @CountryCode VARCHAR(02);
DECLARE @FacultyName VARCHAR (max);
DECLARE @CategoryName VARCHAR (max);
Set @CategoryName = 'master';
Set @FacultyName = 'medicina'
Set @CountryCode = 'ES';

Select  
    pc.[Value] * pf.[Value] 
    AS value_Pais_Fac_Cat
FROM ProductCountryModifiers pc 
LEFT JOIN ProductCountryFacultyModifiers AS pf on pf.CountryCode = pc.CountryCode
WHERE pc.CountryCode = @CountryCode
AND pf.FacultyUrl = @FacultyName
AND pc.CategoryUrl = @CategoryName
-------------------------------------------------------------
-- EJEMPLO
Select   pc.[Value]
        ,pc.CategoryUrl, pc.CountryCode
        ,pf.[Value] VALUE_ProductCountryFaculty
        ,pf.FacultyUrl
        ,pc.[Value] * pf.[Value] AS value_Pais_Fac_Cat
 from ProductCountryModifiers pc 
left JOIN ProductCountryFacultyModifiers AS pf on pf.CountryCode = pc.CountryCode
WHERE pc.CountryCode = 'ES'
AND pf.FacultyUrl = 'medicina'
AND pc.CategoryUrl = 'Master'