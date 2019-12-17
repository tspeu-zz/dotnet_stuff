-------------------------------------------------------------
-- ****   AMOUNT  Faculty x Category |   by Country
-------------------------------------------------------------
DECLARE @CountryCode VARCHAR(02);
DECLARE @FacultyName VARCHAR (max);
DECLARE @CategoryName VARCHAR (max);
Set @CategoryName = 'curso-universitario';
Set @FacultyName = 'medicina'
Set @CountryCode = 'ES';
SELECT  
    pa.Amount * pfs.Value * ( Select   pc.[Value] * pf.[Value] 
                                AS value_Pais_Fac_Cat
                                FROM ProductCountryModifiers pc 
                                LEFT JOIN ProductCountryFacultyModifiers AS pf on pf.CountryCode = pc.CountryCode
                                WHERE pc.CountryCode = @CountryCode
                                AND pf.FacultyUrl = @FacultyName
                                AND pc.CategoryUrl = @CategoryName )

    AS AMOUNT_Category_faculty
FROM [dbo].[CourseTypeCountries] ct
INNER JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
JOIN Countries as c ON c.id = ct.CountryId
WHERE pfs.FacultyUrl = @FacultyName
AND ct.SeoUrl = @CategoryName
And c.Code = @CountryCode
-------------------------------------------------------------

/*
Select  
    pc.[Value] * pf.[Value] 
    AS value_Pais_Fac_Cat
FROM ProductCountryModifiers pc 
LEFT JOIN ProductCountryFacultyModifiers AS pf on pf.CountryCode = pc.CountryCode
WHERE pc.CountryCode = @CountryCode
AND pf.FacultyUrl = @FacultyName
AND pc.CategoryUrl = @CategoryName
*/
-------------------------------------------------------------
-------------------------------------------------------------
-------------------------------------------------------------
--- EJEMPLO
/*
SELECT   ct.Name, ct.SeoUrl , ct.CountryId
        ,pa.CategoryUrl ,pa.Amount  
        ,ps.CategoryUrl, ps.FacultyUrl, ps.value,
        pa.Amount * ps.Value AS AMOUNT_Category_faculty
FROM [dbo].[CourseTypeCountries] ct
inner join ProductAmounts as pa on pa.CategoryUrl = ct.Name
JOIN ProductFacultyStudyModifiers as ps On ps.CategoryUrl = ct.name
JOIN Countries as c ON c.id = ct.CountryId
WHERE ps.FacultyUrl = 'odontologia'
AND ct.SeoUrl = 'maestria'
And c.Code = 'AR
*/

DECLARE @MAX_CODE INT = (SELECT count(code) from Countries)
DECLARE @Cnt INT = 1;
DECLARE @VALUE VARCHAR(02);

WHILE @Cnt <= @MAX_CODE
BEGIN
        SET @VALUE = (SELECT CODE FROM
                        (SELECT (ROW_NUMBER() OVER (ORDER BY (SELECT NULL))) [index] , Code from Countries) R 
                    ORDER BY R.[index] OFFSET @Cnt 
                    ROWS FETCH NEXT 1 ROWS ONLY);

PRINT @VALUE


        SET @Cnt +=1;
END
------
DECLARE @MAX_CODE INT = (SELECT count(code) from Countries)
DECLARE @Cnt INT = 1;
DECLARE @VALUE VARCHAR(02);
WHILE @Cnt <= @MAX_CODE
BEGIN
        SET @VALUE = (SELECT CODE FROM
                        (SELECT (ROW_NUMBER() OVER (ORDER BY (SELECT NULL))) [index] , Code from Countries) R 
                    ORDER BY R.[index] OFFSET @Cnt 
                    ROWS FETCH NEXT 1 ROWS ONLY);
        PRINT @VALUE
        SELECT cd.TotalAmount
        ,cd.SeoUrl ,a.SeoUrl ,a.Name ,ct.SeoUrl
        ,cd.Credits ,c.code  
            FROM dbo.CourseData as cd
                left join countries as c on c.id = cd.CountryId
                left join CourseTypeCountries as ct on ct.Id = cd.CourseTypeCountryId
                left join Courses as cr  on cr.id = cd.CourseId
                left join CourseAreas as ca on ca.CourseId = cr.id
                left join Areas as a on a.id = ca.AreaId
            where c.Code = @VALUE
            and a.SeoUrl  =  'medicina'
            AND ct.SeoUrl = 'master'
            ORDER BY c.code, ct.SeoUrl

        SET @Cnt +=1;
END
-----------------------------------
DECLARE @MAX_CODE INT = (SELECT count(code) from Countries)
DECLARE @Cnt INT = 0;
DECLARE @VALUE VARCHAR(02);
Declare @facultiesTemp Table (faculty varchar(max));
Insert into  @facultiesTemp(faculty)
Select SeoUrl from Areas 
WHILE @Cnt <= @MAX_CODE
BEGIN
        SET @VALUE = (SELECT CODE FROM
                        (SELECT (ROW_NUMBER() OVER (ORDER BY (SELECT NULL))) [index] , Code from Countries) R 
                    ORDER BY R.[index] OFFSET @Cnt 
                    ROWS FETCH NEXT 1 ROWS ONLY);
        PRINT @VALUE -- get actual country
        SELECT cd.TotalAmount
        ,cd.SeoUrl ,a.SeoUrl ,a.Name ,ct.SeoUrl
        ,cd.Credits ,c.code  
            FROM dbo.CourseData as cd
                left join countries as c on c.id = cd.CountryId
                left join CourseTypeCountries as ct on ct.Id = cd.CourseTypeCountryId
                left join Courses as cr  on cr.id = cd.CourseId
                left join CourseAreas as ca on ca.CourseId = cr.id
                left join Areas as a on a.id = ca.AreaId
            where c.Code = @VALUE
            and a.SeoUrl  IN (SELECT faculty from @facultiesTemp)
            AND ct.SeoUrl = 'master'
            ORDER BY c.code, ct.SeoUrl
        --    
        SET @Cnt +=1;
END


