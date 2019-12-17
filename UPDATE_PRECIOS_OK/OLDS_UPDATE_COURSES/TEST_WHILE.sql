/*
SELECT cd.TotalAmount
        ,cd.SeoUrl ,a.SeoUrl ,a.Name ,ct.SeoUrl
        ,cd.Credits ,c.code  
FROM dbo.CourseData as cd
    left join countries as c on c.id = cd.CountryId
    left join CourseTypeCountries as ct on ct.Id = cd.CourseTypeCountryId
    left join Courses as cr  on cr.id = cd.CourseId
    left join CourseAreas as ca on ca.CourseId = cr.id
    left join Areas as a on a.id = ca.AreaId
where c.Code IN (Select Code from Countries )
and a.SeoUrl  IN (Select SeoUrl from Areas) 
AND ct.SeoUrl IN (Select DISTINCT SeoUrl from CourseTypeCountries 
                  WHERE SeoUrl NOT IN ('eir', 'posgrado', 'a1','a2','b1','b2','c1', 'c2'))
ORDER BY c.code, ct.SeoUrl
*/
-- 78657
---------------------------------
-------TEST LOOP--------------------------
---------------------------------
---
DECLARE @MAX_CODE INT = (SELECT count(code) from Countries)
DECLARE @Cnt INT = 0;
DECLARE @VALUE VARCHAR(02);
Declare @facultiesTemp Table (faculty varchar(max));
Insert into  @facultiesTemp(faculty)
Select SeoUrl from Areas
DECLARE @MAX_FACULTYS INT = (Select Count(SeoUrl) from Areas) 
PRINT @MAX_FACULTYS
WHILE @Cnt <= @MAX_CODE
BEGIN
        SET @VALUE = (SELECT CODE FROM
                        (SELECT (ROW_NUMBER() OVER (ORDER BY (SELECT NULL))) [index] , Code from Countries) R 
                    ORDER BY R.[index] OFFSET @Cnt 
                    ROWS FETCH NEXT 1 ROWS ONLY);
        --PRINT @VALUE -- get actual country
        SELECT  cd.TotalAmount
                ,cd.SeoUrl ,a.SeoUrl AS FACTULTY,ct.SeoUrl AS CATEGORY
                ,cd.Credits ,c.code
        FROM dbo.CourseData as cd
                left join countries as c on c.id = cd.CountryId
                left join CourseTypeCountries as ct on ct.Id = cd.CourseTypeCountryId
                left join Courses as cr  on cr.id = cd.CourseId
                left join CourseAreas as ca on ca.CourseId = cr.id
                left join Areas as a on a.id = ca.AreaId
            WHERE c.Code = @VALUE
            AND a.SeoUrl  IN (SELECT faculty FROM @facultiesTemp)
            AND ct.SeoUrl IN (SELECT ct.SeoUrl
                              FROM CourseTypeCountries ct
                              JOIN Countries as c on c.Id = ct.CountryId
                              WHERE c.Code =  @VALUE
                              AND SeoUrl NOT IN ('eir', 'posgrado', 'a1','a2','b1','b2','c1', 'c2')) 
        ORDER BY c.code, a.SeoUrl, ct.SeoUrl
--------------
        SET @Cnt +=1;
END
--------------------------------------------

------------------------
/*SELECT cd.TotalAmount
,cd.SeoUrl ,a.SeoUrl AS FACULTY ,ct.SeoUrl AS ATEGORY
,cd.Credits ,c.code  
    FROM dbo.CourseData as cd
        left join countries as c on c.id = cd.CountryId
        left join CourseTypeCountries as ct on ct.Id = cd.CourseTypeCountryId
        left join Courses as cr  on cr.id = cd.CourseId
        left join CourseAreas as ca on ca.CourseId = cr.id
        left join Areas as a on a.id = ca.AreaId
    where c.Code = 'ES'
    and a.SeoUrl  =  'nutricion'
    AND ct.SeoUrl = 'master'
    ORDER BY c.code,a.SeoUrl, ct.SeoUrl
*/
    --  FACULTADES ('medicina','enfermeria','escuela-de-idiomas','escuela-de-negocios','farmacia','fisioterapia','nutricion','odontologia','psicologia')
----------------------------------------------------------------------------------------------
---------QUERY PARA EL UPDATE INDIVUADUAL POR PAIS - FACULTAD- CATEGORIA
----------------------------------------------------------------------------------------------
---------EL EJEMPLO ES EL UN SELECT PARA TEST
----------------------------------------------------------------------------------------------
DECLARE @CountryCode VARCHAR(02);
DECLARE @FacultyName VARCHAR (max);
DECLARE @CategoryName VARCHAR (max);
Set @CountryCode = 'AR';
Set @FacultyName = 'escuela-de-idiomas'
Set @CategoryName = 'maestria';
SELECT cd.id, cd.TotalAmount,
        (SELECT  pa.Amount * pfs.Value * 
                    (SELECT   pc.[Value] * pf.[Value] AS value
                    FROM ProductCountryModifiers pc 
                    LEFT JOIN ProductCountryFacultyModifiers AS pf on pf.CountryCode = pc.CountryCode
                    WHERE pc.CountryCode = @CountryCode
                    AND pf.CategoryUrl = @FacultyName
                    AND pc.CategoryUrl = @CategoryName)                
        FROM [dbo].[CourseTypeCountries] ct
        INNER JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
        JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
        JOIN Countries as c ON c.id = ct.CountryId
        WHERE pfs.FacultyUrl = @FacultyName
        AND ct.SeoUrl = @CategoryName
        And c.Code = @CountryCode) NewTotalAmount
        ,@CountryCode   AS Country
        ,@FacultyName   AS Faculty
        ,@CategoryName  AS Category
FROM dbo.CourseData as cd
    left join countries as c on c.id = cd.CountryId
    left join CourseTypeCountries as ct on ct.Id = cd.CourseTypeCountryId
    left join Courses as cr  on cr.id = cd.CourseId
    left join CourseAreas as ca on ca.CourseId = cr.id
    left join Areas as a on a.id = ca.AreaId
where c.Code  = @CountryCode
and a.SeoUrl  =@FacultyName
AND ct.SeoUrl = @CategoryName
--------------------------------
--------------------------------
--------------------------------
--tablas nuevas
        (SELECT  pa.Amount * pfs.Value * 
                    (SELECT   pc.[Value] * pf.[Value] AS value
                    FROM ProductCountryModifiers pc 
                    LEFT JOIN ProductCountryFacultyModifiers AS pf on pf.CountryCode = pc.CountryCode
                    WHERE pc.CountryCode = @CountryCode
                    AND pf.CategoryUrl = @FacultyName
                    AND pc.CategoryUrl = @CategoryName)                
        FROM [dbo].[CourseTypeCountries] ct
        INNER JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
        JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
        JOIN Countries as c ON c.id = ct.CountryId
        WHERE pfs.FacultyUrl = @FacultyName
        AND ct.SeoUrl = @CategoryName
        And c.Code = @CountryCode) NewTotalAmount
--------- 
DECLARE @CountryCode VARCHAR(02);
DECLARE @FacultyName VARCHAR (max);
DECLARE @CategoryName VARCHAR (max);
Set @CountryCode = 'ES';
Set @FacultyName = 'medicina'
Set @CategoryName = 'master';
SELECT  pa.Amount * pfs.Value  AS  NewTotalAmount
FROM [dbo].[CourseTypeCountries] ct
INNER JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
JOIN Countries as c ON c.id = ct.CountryId
WHERE pfs.FacultyUrl = @FacultyName
AND ct.SeoUrl = @CategoryName
And c.Code = @CountryCode 
-------------------------------------
DECLARE @CountryCode VARCHAR(02);
DECLARE @FacultyName VARCHAR (max);
DECLARE @CategoryName VARCHAR (max);
Set @CountryCode = 'ES';
Set @FacultyName = 'medicina'
Set @CategoryName = 'master';    
        (SELECT   pc.[Value] * pf.[Value] AS value
                    FROM ProductCountryModifiers pc 
                    LEFT JOIN ProductCountryFacultyModifiers AS pf on pf.CountryCode = pc.CountryCode
                    WHERE pc.CountryCode = @CountryCode
                    AND pf.CategoryUrl = @FacultyName
                    AND pc.CategoryUrl = @CategoryName) 

---------------------------------
-------TEST LOOP2--------------------------
---------------------------------
-----------------------------------
DECLARE @MAX_CODE INT = (SELECT count(code) from Countries)
DECLARE @Cnt INT = 0;
DECLARE @VALUE VARCHAR(02);
Declare @facultiesTemp Table (faculty varchar(max));
Insert into  @facultiesTemp(faculty)
Select SeoUrl from Areas
DECLARE @MAX_FACULTYS INT = (Select Count(SeoUrl) from Areas) 
DECLARE @CATEGORY_VALUE VARCHAR(max)
DECLARE @CountryCode VARCHAR(02);
DECLARE @FacultyName VARCHAR (max);
DECLARE @CategoryName VARCHAR (max);
WHILE @Cnt < @MAX_CODE
BEGIN
        SET @VALUE = (SELECT CODE FROM
                        (SELECT (ROW_NUMBER() OVER (ORDER BY (SELECT NULL))) [index] , Code from Countries) R 
                    ORDER BY R.[index] OFFSET @Cnt 
                    ROWS FETCH NEXT 1 ROWS ONLY);
        PRINT @VALUE -- get actual country


        SET @CATEGORY_VALUE = (Select SeoUrl FROM 
                              (SELECT (ROW_NUMBER() OVER (ORDER BY (SELECT NULL))) [index] , SeoUrl from Areas) R
                                ORDER BY R.[index] OFFSET @Cnt 
                               ROWS FETCH NEXT 1 ROWS ONLY); 
        PRINT @CATEGORY_VALUE

        Set @CountryCode = @VALUE;
        Set @FacultyName = @CATEGORY_VALUE
        Set @CategoryName = 'maestria';
        SELECT      pc.[Value] * pf.[Value] AS value,
                    PC.CountryCode AS CODE, pf.CategoryUrl AS FACULTY,  pc.CategoryUrl AS CATEGORY
            FROM ProductCountryModifiers pc 
            LEFT JOIN ProductCountryFacultyModifiers AS pf on pf.CountryCode = pc.CountryCode
        WHERE pc.CountryCode = @CountryCode
        AND pf.CategoryUrl = @FacultyName
        AND pc.CategoryUrl = @CategoryName

        
/*        SELECT  cd.TotalAmount
                ,cd.SeoUrl ,a.SeoUrl AS FACTULTY,ct.SeoUrl AS CATEGORY
                ,cd.Credits ,c.code
        FROM dbo.CourseData as cd
                left join countries as c on c.id = cd.CountryId
                left join CourseTypeCountries as ct on ct.Id = cd.CourseTypeCountryId
                left join Courses as cr  on cr.id = cd.CourseId
                left join CourseAreas as ca on ca.CourseId = cr.id
                left join Areas as a on a.id = ca.AreaId
            WHERE c.Code = @VALUE
            AND a.SeoUrl  IN (SELECT faculty FROM @facultiesTemp)
            AND ct.SeoUrl IN (SELECT ct.SeoUrl
                              FROM CourseTypeCountries ct
                              JOIN Countries as c on c.Id = ct.CountryId
                              WHERE c.Code =  @VALUE
                              AND SeoUrl NOT IN ('eir', 'posgrado', 'a1','a2','b1','b2','c1', 'c2')) 
        ORDER BY c.code, a.SeoUrl, ct.SeoUrl
*/
--------------
        SET @Cnt +=1;
END
--------------------------------------------
---------------------------------
-------TEST LOOP3--------------------------
--------WHILE ANIDADOS PAIS - FACULTADES - TODAS LAS CATEGORIAS POR PAIS-------------------------
-----------------------------------
DECLARE @MAX_CODE INT = (SELECT count(code) from Countries)
DECLARE @Cnt INT = 0, @CntFac INT =0;
DECLARE @VALUE VARCHAR(02);
Declare @facultiesTemp Table (faculty varchar(max));
Insert into  @facultiesTemp(faculty)
Select SeoUrl from Areas
DECLARE @MAX_FACULTYS INT = (Select Count(SeoUrl) from Areas) 
DECLARE @FACULTY_VALUE VARCHAR(max)
DECLARE @CountryCode VARCHAR(02);
DECLARE @FacultyName VARCHAR (max);
DECLARE @CategoryName VARCHAR (max);
WHILE @Cnt < @MAX_CODE
BEGIN
        SET @VALUE = (SELECT CODE FROM
                        (SELECT (ROW_NUMBER() OVER (ORDER BY (SELECT NULL))) [index] , Code from Countries) R 
                    ORDER BY R.[index] OFFSET @Cnt 
                    ROWS FETCH NEXT 1 ROWS ONLY);
        --PRINT @VALUE + '            |' -- get actual country
                        
        WHILE @CntFac < @MAX_FACULTYS -- loop facultades
                BEGIN
                        SET @FACULTY_VALUE = (Select SeoUrl FROM 
                                        (SELECT (ROW_NUMBER() OVER (ORDER BY (SELECT NULL))) [index] , SeoUrl from Areas) R
                                                ORDER BY R.[index] OFFSET @CntFac 
                                        ROWS FETCH NEXT 1 ROWS ONLY); 
                PRINT '------------ FACULTAD -----'  + @FACULTY_VALUE 
                PRINT '------------ NUMERO   ----- ' + CAST(@CntFac AS VARCHAR);
                        Set @CountryCode = @VALUE;
                        Set @FacultyName = @FACULTY_VALUE
                        --Set @CategoryName = 'maestria';
                        SELECT      pc.[Value] * pf.[Value] AS value,
                                PC.CountryCode AS CODE, pf.CategoryUrl AS FACULTY,  pc.CategoryUrl AS CATEGORY
                        FROM ProductCountryModifiers pc 
                        LEFT JOIN ProductCountryFacultyModifiers AS pf on pf.CountryCode = pc.CountryCode
                        WHERE pc.CountryCode = @CountryCode
                        AND pf.CategoryUrl = @FacultyName
                        AND pc.CategoryUrl IN (
                                        SELECT ct.SeoUrl
                                        FROM CourseTypeCountries ct
                                        JOIN Countries as c on c.Id = ct.CountryId
                                        WHERE c.Code =  @VALUE
                                        AND SeoUrl NOT IN ('eir', 'posgrado', 'a1','a2','b1','b2','c1', 'c2')
                                        )
                SET @CntFac +=1;
        END
/*
      
*/
        
/*        SELECT  cd.TotalAmount
                ,cd.SeoUrl ,a.SeoUrl AS FACTULTY,ct.SeoUrl AS CATEGORY
                ,cd.Credits ,c.code
        FROM dbo.CourseData as cd
                left join countries as c on c.id = cd.CountryId
                left join CourseTypeCountries as ct on ct.Id = cd.CourseTypeCountryId
                left join Courses as cr  on cr.id = cd.CourseId
                left join CourseAreas as ca on ca.CourseId = cr.id
                left join Areas as a on a.id = ca.AreaId
            WHERE c.Code = @VALUE
            AND a.SeoUrl  IN (SELECT faculty FROM @facultiesTemp)
            AND ct.SeoUrl IN (SELECT ct.SeoUrl
                              FROM CourseTypeCountries ct
                              JOIN Countries as c on c.Id = ct.CountryId
                              WHERE c.Code =  @VALUE
                              AND SeoUrl NOT IN ('eir', 'posgrado', 'a1','a2','b1','b2','c1', 'c2')) 
        ORDER BY c.code, a.SeoUrl, ct.SeoUrl
*/
--------------
        SET @CntFac =0;
        SET @Cnt +=1;
END
--------------------------------------------


-----------------------------------------------------------------------------------------------
-----------------PRODUT AMOUNT------------WHILE POR PAIS FACULTAD -CATEGORIA ------------------------------------------
DECLARE @MAX_CODE INT = (SELECT count(code) from Countries)
DECLARE @Cnt INT = 0, @CntFac INT =0;
DECLARE @VALUE VARCHAR(02);
Declare @facultiesTemp Table (faculty varchar(max));
Insert into  @facultiesTemp(faculty)
Select SeoUrl from Areas;
DECLARE @MAX_FACULTYS INT = (Select Count(SeoUrl) from Areas) 
DECLARE @FACULTY_VALUE VARCHAR(max)
DECLARE @CountryCode VARCHAR(02);
DECLARE @FacultyName VARCHAR (max);
DECLARE @CategoryName VARCHAR (max);
WHILE @Cnt < @MAX_CODE
BEGIN
        SET @VALUE =(SELECT CODE FROM
                    (SELECT (ROW_NUMBER() OVER (ORDER BY (SELECT NULL))) [index] , Code from Countries) R 
                    ORDER BY R.[index] OFFSET @Cnt 
                    ROWS FETCH NEXT 1 ROWS ONLY);
        PRINT 'PAIS ' +@VALUE  -- get actual country
                        
        WHILE @CntFac < @MAX_FACULTYS -- loop facultades
                BEGIN
                        SET @FACULTY_VALUE =(Select SeoUrl FROM 
                                            (SELECT (ROW_NUMBER() OVER (ORDER BY (SELECT NULL))) [index] , SeoUrl from Areas) R
                                            ORDER BY R.[index] OFFSET @CntFac 
                                            ROWS FETCH NEXT 1 ROWS ONLY); 
                PRINT '------------ FACULTAD -----'  + @FACULTY_VALUE 
            
                Set @CountryCode = @VALUE;
                Set @FacultyName = @FACULTY_VALUE

                SELECT  pa.Amount * pfs.Value  AS AmountProduct
                    ,(pa.Amount * pfs.Value)   *
                    ( SELECT   pc.[Value] * pf.[Value] 
                        FROM ProductCountryModifiers pc 
                        LEFT JOIN ProductCountryFacultyModifiers AS pf on pf.CountryCode = pc.CountryCode
                        WHERE pc.CountryCode = @CountryCode
                        AND pf.CategoryUrl = @FacultyName
                        AND pc.CategoryUrl =  'maestria' ) AS NEWAmount
                    ,pfs.FacultyUrl, pfs.CategoryUrl, c.code
                   ,( SELECT   pc.[Value] * pf.[Value] 
                        FROM ProductCountryModifiers pc 
                        LEFT JOIN ProductCountryFacultyModifiers AS pf on pf.CountryCode = pc.CountryCode
                        WHERE pc.CountryCode = @CountryCode
                        AND pf.CategoryUrl = @FacultyName
                        AND pc.CategoryUrl =  'maestria' )
                    FROM [dbo].[CourseTypeCountries] ct
                    INNER JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
                    JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
                    JOIN Countries as c ON c.id = ct.CountryId
                    WHERE pfs.FacultyUrl = @FACULTY_VALUE
                    AND  c.Code = @VALUE                   
                    AND ct.SeoUrl = 'maestria'
                    /*IN  (SELECT ct.SeoUrl
                                        FROM CourseTypeCountries ct
                                        JOIN Countries as c on c.Id = ct.CountryId
                                        WHERE c.Code =  @VALUE
                                        AND SeoUrl NOT IN ('eir', 'posgrado', 'a1','a2','b1','b2','c1', 'c2')
                    */
                SET @CntFac +=1;
        END
------------reset counters
        SET @CntFac =0;
        SET @Cnt +=1;
END
--------------












