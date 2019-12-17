-------------------------------------------------------------------------
-- ****   UPDATE TotalAmount COURSE DATA BY  Faculty - Category - Country
-------------------------------------------------------------------------
--CREATE PROCEDURE updateCourseDataAmountByProductCountryFacultyCategory
-- "curso-universitario","diplomado","experto-universitario","especializacion","grado","licenciatura", 
-- "master","maestria","master-universitario","maestria-oficial","maestria-rvoe",
DECLARE @CountryCode VARCHAR(02);
DECLARE @FacultyName VARCHAR (max);
DECLARE @CategoryName VARCHAR (max);
Set @CountryCode = 'ES';
Set @FacultyName = 'medicina'
Set @CategoryName = 'master';
UPDATE CourseData 
    SET  CourseData.TotalAmount = (SELECT  pa.Amount * pfs.Value * ( 
                                    SELECT   pc.[Value] * pf.[Value] AS value
                                    FROM ProductCountryModifiers pc 
                                    LEFT JOIN ProductCountryFacultyModifiers AS pf on pf.CountryCode = pc.CountryCode
                                    WHERE pc.CountryCode = @CountryCode
                                    AND pf.CategoryUrl = @FacultyName
                                    AND pc.CategoryUrl = @CategoryName )                
                            FROM [dbo].[CourseTypeCountries] ct
                            INNER JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
                            JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
                            JOIN Countries as c ON c.id = ct.CountryId
                            WHERE pfs.FacultyUrl = @FacultyName
                            AND ct.SeoUrl = @CategoryName
                            And c.Code = @CountryCode
                            )
    FROM dbo.CourseData as cd
        left join countries as c on c.id = cd.CountryId
        left join CourseTypeCountries as ct on ct.Id = cd.CourseTypeCountryId
        left join Courses as cr  on cr.id = cd.CourseId
        left join CourseAreas as ca on ca.CourseId = cr.id
        left join Areas as a on a.id = ca.AreaId
    WHERE c.Code = @CountryCode
    and a.SeoUrl = @FacultyName
    AND ct.SeoUrl = @CategoryName
--------------------------------------------------------------------------

--------------------------------------------------------------------------
--CREATE PROCEDURE updateCourseDataAmountByProductCountryFacultyCategory 
-- PRECIO POR CREDITO SOLO --'curso','curso-universitario','diplomado'
DECLARE @CountryCode VARCHAR(02);
DECLARE @FacultyName VARCHAR (max);
DECLARE @CategoryName VARCHAR (max);
Set @CountryCode = 'ES';
Set @FacultyName = 'medicina'
Set @CategoryName = 'curso-universitario';
UPDATE CourseData 
    SET  CourseData.TotalAmount = (
                        SELECT  pa.Amount * pfs.Value * ( 
                                    SELECT   pc.[Value] * pf.[Value] AS value
                                    FROM ProductCountryModifiers pc 
                                    LEFT JOIN ProductCountryFacultyModifiers AS pf on pf.CountryCode = pc.CountryCode
                                    WHERE pc.CountryCode = @CountryCode
                                    AND pf.FacultyUrl = @FacultyName
                                    AND pc.CategoryUrl = @CategoryName )                
                        FROM [dbo].[CourseTypeCountries] ct
                        INNER JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
                        JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
                        JOIN Countries as c ON c.id = ct.CountryId
                        WHERE pfs.FacultyUrl = @FacultyName
                        AND ct.SeoUrl = @CategoryName
                        And c.Code = @CountryCode
                        ) 
                            * cd.Credits
    FROM dbo.CourseData as cd
        left join countries as c on c.id = cd.CountryId
        left join CourseTypeCountries as ct on ct.Id = cd.CourseTypeCountryId
        left join Courses as cr  on cr.id = cd.CourseId
        left join CourseAreas as ca on ca.CourseId = cr.id
        left join Areas as a on a.id = ca.AreaId
    WHERE c.Code = @CountryCode
    and a.SeoUrl = @FacultyName
    AND ct.SeoUrl = @CategoryName
-------------------------------------------------------------------------
---VERIFICAR RESULTADO -----------------------------------------------------------------------
DECLARE @CountryCode VARCHAR(02);
DECLARE @FacultyName VARCHAR (max), @CategoryName VARCHAR (max);
Set @CountryCode = 'ES';
Set @FacultyName = 'medicina'
Set @CategoryName = 'curso-universitario';
SELECT  cd.TotalAmount, cd.id , cd.TotalAmount/IIF(cd.Credits!=0, cd.Credits,1)  as P_CREDITO, cd.Credits
        ,cd.SeoUrl ,a.SeoUrl ,a.Name ,ct.SeoUrl
       FROM dbo.CourseData as cd
              left join countries as c on c.id = cd.CountryId
              left join CourseTypeCountries as ct on ct.Id = cd.CourseTypeCountryId
              left join Courses as cr  on cr.id = cd.CourseId
              left join CourseAreas as ca on ca.CourseId = cr.id
              left join Areas as a on a.id = ca.AreaId
          where c.Code IN (SELECT Code from Countries )
          AND ct.SeoUrl IN ('curso','curso-universitario','diplomado')
          and a.SeoUrl IN (SELECT SeoUrl from Areas )
--------------------------------------------------------------------------
-- EJ
Declare @countriesTemp Table (code varchar(02));
Insert into  @countriesTemp(code)
SELECT Code from Countries 
--SELECT * from @countriesTemp;
--
Declare @facultiesTemp Table (faculty varchar(max));
Insert into  @facultiesTemp(faculty)
SELECT SeoUrl from Areas 
--SELECT * from @facultiesTemp
---
Declare @categoryTemp Table(category varchar(max))
Insert into  @categoryTemp(category)
SELECT DISTINCT SeoUrl from CourseTypeCountries 
WHERE SeoUrl NOT IN ('eir', 'posgrado', 'A1','A2','B1','B2','C1', 'C2','curso','curso-universitario','diplomado')
--SELECT * from @categoryTemp
---
Declare @categoryTemp2 Table(category varchar(max))
Insert into  @categoryTemp(category)
SELECT DISTINCT SeoUrl from CourseTypeCountries 
WHERE SeoUrl NOT IN ('eir', 'posgrado', 'A1','A2','B1','B2','C1', 'C2')
---------------------
SELECT cd.TotalAmount
        ,cd.SeoUrl ,a.SeoUrl ,a.Name ,ct.SeoUrl
        ,cd.Credits 
FROM dbo.CourseData as cd
    left join countries as c on c.id = cd.CountryId
    left join CourseTypeCountries as ct on ct.Id = cd.CourseTypeCountryId
    left join Courses as cr  on cr.id = cd.CourseId
    left join CourseAreas as ca on ca.CourseId = cr.id
    left join Areas as a on a.id = ca.AreaId
where c.Code IN (SELECT Code from Countries )
and a.SeoUrl  IN (SELECT SeoUrl from Areas) 
AND ct.SeoUrl IN (SELECT DISTINCT SeoUrl from CourseTypeCountries 
WHERE SeoUrl NOT IN ('eir', 'posgrado', 'A1','A2','B1','B2','C1', 'C2'))

--------------------------------------------------------------------------
--'curso','curso-universitario','diplomado'
--CREATE PROCEDURE updateCourseDataAmountByProductCountryFacultyCategory
DECLARE @CountryCode VARCHAR(02);
DECLARE @FacultyName VARCHAR (max);
DECLARE @CategoryName VARCHAR (max);
Set @CountryCode = 'ES';
Set @FacultyName = 'medicina'
Set @CategoryName = 'master';
UPDATE CourseData 
    SET  CourseData.TotalAmount = ( 
                            SELECT  pa.Amount * pfs.Value * 
                                        (SELECT  pc.Value * pf.Value  AS value
                                        FROM ProductCountryModifiers pc 
                                        LEFT JOIN ProductCountryFacultyModifiers AS pf on pf.CountryCode = pc.CountryCode
                                        WHERE pc.CountryCode = @CountryCode
                                        AND pf.FacultyUrl  = @FacultyName
                                        AND pc.CategoryUrl = @CategoryName
                                        )               
                            FROM [dbo].[CourseTypeCountries] ct
                            INNER JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
                            JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
                            JOIN Countries as c ON c.id = ct.CountryId
                            WHERE c.Code = @CountryCode
                            AND pfs.CategoryUrl = @FacultyName
                            AND pfs.CategoryUrl   = @CategoryName 
                            )
    FROM dbo.CourseData as cd
        left join countries as c on c.id = cd.CountryId
        left join CourseTypeCountries as ct on ct.Id = cd.CourseTypeCountryId
        left join Courses as cr  on cr.id = cd.CourseId
        left join CourseAreas as ca on ca.CourseId = cr.id
        left join Areas as a on a.id = ca.AreaId
    WHERE c.Code = @CountryCode
    and a.SeoUrl = @FacultyName
    AND ct.SeoUrl = @CategoryName

--------------------------------
SELECT  pa.Amount * pfs.Value AS AMOUNT,   c.Code, pfs.FacultyUrl,pfs.CategoryUrl
        FROM [dbo].[CourseTypeCountries] ct
        INNER JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
        JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
        JOIN Countries as c ON c.id = ct.CountryId
        WHERE c.Code IN (SELECT Code from Countries) 
        AND pfs.FacultyUrl  IN (SELECT SeoUrl from Areas)
        AND ct.SeoUrl IN (SELECT DISTINCT SeoUrl from CourseTypeCountries 
                            WHERE SeoUrl NOT IN ('eir', 'posgrado', 'A1','A2','B1','B2','C1', 'C2'))
---------------------------------
SELECT  pc.Value * pf.Value  AS value
        ,pc.CountryCode, pf.FacultyUrl, pc.CategoryUrl
    FROM ProductCountryModifiers pc 
    LEFT JOIN ProductCountryFacultyModifiers AS pf on pf.CountryCode = pc.CountryCode
    WHERE pc.CountryCode IN (SELECT Code from Countries) 
    AND pf.FacultyUrl IN (SELECT SeoUrl from Areas)
    AND pc.CategoryUrl IN (SELECT DISTINCT SeoUrl from CourseTypeCountries 
                            WHERE SeoUrl NOT IN ('eir', 'posgrado', 'A1','A2','B1','B2','C1', 'C2'))
ORDER BY pc.CountryCode, pf.FacultyUrl
--------------------------------------                           
---
---
--SET IDENTITY_INSERT = true
DECLARE @CountryCode VARCHAR(02);
DECLARE @FacultyName VARCHAR (max);
DECLARE @CategoryName VARCHAR (max);
Set @CountryCode = 'ES';
Set @FacultyName = 'medicina'
Set @CategoryName = 'master';
--IGNORE_DUP_KEY = ON
--INSERT INTO CourseData(Id, TotalAmount)
SELECT cd.id, cd.TotalAmount,(SELECT  pa.Amount * pfs.Value * 
                    (SELECT   pc.[Value] * pf.[Value] AS value
                    FROM ProductCountryModifiers pc 
                    LEFT JOIN ProductCountryFacultyModifiers AS pf on pf.CountryCode = pc.CountryCode
                    WHERE pc.CountryCode = @CountryCode
                    AND pf.FacultyUrl = @FacultyName
                    AND pc.CategoryUrl = @CategoryName)                
        FROM [dbo].[CourseTypeCountries] ct
        INNER JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
        JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
        JOIN Countries as c ON c.id = ct.CountryId
        WHERE pfs.FacultyUrl = @FacultyName
        AND ct.SeoUrl = @CategoryName
        And c.Code = @CountryCode) 
FROM dbo.CourseData as cd
    left join countries as c on c.id = cd.CountryId
    left join CourseTypeCountries as ct on ct.Id = cd.CourseTypeCountryId
    left join Courses as cr  on cr.id = cd.CourseId
    left join CourseAreas as ca on ca.CourseId = cr.id
    left join Areas as a on a.id = ca.AreaId
where c.Code  = @CountryCode
and a.SeoUrl  =@FacultyName
AND ct.SeoUrl = @CategoryName

--WHERE SeoUrl NOT IN ('eir', 'posgrado', 'A1','A2','B1','B2','C1', 'C2'))
--and a.SeoUrl  IN (SELECT SeoUrl from Areas) 
--AND ct.SeoUrl IN (SELECT DISTINCT SeoUrl from CourseTypeCountries 


------------------------------------ SOLUCION TEMP DATAS
DECLARE @CountryCode VARCHAR(02);
DECLARE @FacultyName VARCHAR (max);
DECLARE @CategoryName VARCHAR (max);
Set @CountryCode = 'ES';
Set @FacultyName = 'medicina'
Set @CategoryName = 'master';
IF OBJECT_ID('tempdb.dbo.#TempES_Med_MASTER', 'U') IS NOT NULL
  DROP TABLE  #TempES_Med_MASTER
CREATE TABLE #TempES_Med_MASTER (ID INT, NEWTotalAmount INT) 
INSERT INTO #TempES_Med_MASTER (ID,NEWTotalAmount) 
SELECT cd.id, 
        (SELECT  pa.Amount * pfs.Value * 
                    ( 
                    SELECT   pc.[Value] * pf.[Value] AS value
                    FROM ProductCountryModifiers pc 
                    LEFT JOIN ProductCountryFacultyModifiers AS pf on pf.CountryCode = pc.CountryCode
                    WHERE pc.CountryCode = @CountryCode
                    AND pf.FacultyUrl = @FacultyName
                    AND pc.CategoryUrl = @CategoryName
                    )                
        FROM [dbo].[CourseTypeCountries] ct
        INNER JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
        JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
        JOIN Countries as c ON c.id = ct.CountryId
        WHERE pfs.FacultyUrl = @FacultyName
        AND ct.SeoUrl = @CategoryName
        And c.Code = @CountryCode
        )  AS NEWTotalAmount
FROM dbo.CourseData as cd
    left join countries as c on c.id = cd.CountryId
    left join CourseTypeCountries as ct on ct.Id = cd.CourseTypeCountryId
    left join Courses as cr  on cr.id = cd.CourseId
    left join CourseAreas as ca on ca.CourseId = cr.id
    left join Areas as a on a.id = ca.AreaId
where c.Code  = @CountryCode
and a.SeoUrl  = @FacultyName
AND ct.SeoUrl = @CategoryName

SELECT * FROM #TempES_Med_MASTER 
---
UPDATE CourseData 
SET TotalAmount = temp.NEWTotalAmount
FROM CourseData
JOIN #TempES_Med_MASTER as temp ON temp.ID = CourseData.Id
Where CourseData.Id = temp.id
---
Select  CourseData.Id, TotalAmount 
        ,temp.ID, temp.NEWTotalAmount
FROM CourseData
JOIN #TempES_Med_MASTER as temp ON temp.ID = CourseData.Id
Where CourseData.Id = temp.id


--------------------------LAMAR A  FUNCION -----------OK
DECLARE @CountryCode VARCHAR(02);
DECLARE @FacultyName VARCHAR (max);
DECLARE @CategoryName VARCHAR (max);
Set @CountryCode = 'AR';
Set @FacultyName = 'odontologia'
Set @CategoryName = 'maestria';
SELECT  pa.Amount * pfs.Value  *(select dbo.testModCountryFacCat(@CountryCode,@FacultyName,@CategoryName)) 
        ,pa.Amount * pfs.Value AS AMOUNT
        ,(select dbo.testModCountryFacCat(@CountryCode,@FacultyName,@CategoryName))

    FROM [dbo].[CourseTypeCountries] ct
    INNER JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
    JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
    JOIN Countries as c ON c.id = ct.CountryId
    WHERE pfs.FacultyUrl = @FacultyName
    AND ct.SeoUrl = @CategoryName
    And c.Code = @CountryCode  
------------------------------------
--SELECT * FROM ProductAmounts
--SELECT * FROM ProductFacultyStudyModifiers
--SELECT * FROM ProductCountryModifiers
--SELECT * FROM ProductCountryFacultyModifiers
---------------------
Declare @categoryTemp Table(category varchar(max))
Insert into  @categoryTemp(category)
Select DISTINCT SeoUrl from CourseTypeCountries 
WHERE SeoUrl NOT IN ('eir', 'posgrado', 'a1','a2','b1','b2','c1', 'c2')
SELECT * FROM @categoryTemp
--------
SELECT ct.SeoUrl, c.Code
 FROM CourseTypeCountries ct
JOIN Countries as c on c.Id = ct.CountryId
WHERE c.Code = 'ES'
AND SeoUrl NOT IN ('eir', 'posgrado', 'a1','a2','b1','b2','c1', 'c2')
SELECT ct.SeoUrl, c.Code
 FROM CourseTypeCountries ct
JOIN Countries as c on c.Id = ct.CountryId
WHERE c.Code = 'AR'
AND SeoUrl NOT IN ('eir', 'posgrado', 'a1','a2','b1','b2','c1', 'c2')
--------

---------------------------------
-- FUNCION -> MOD -> testModCountryFacCat

---

   /* DECLARE @ret int;  
    SELECT @ret = SUM(p.Quantity)   
    FROM Production.ProductInventory p   
    WHERE p.ProductID = @ProductID   
        AND p.LocationID = '6';  

     IF (@ret IS NULL)   
        SET @ret = 0;  
    RETURN @ret; */
DECLARE @CountryCode VARCHAR(02);
DECLARE @FacultyName VARCHAR (max);
DECLARE @CategoryName VARCHAR (max);
Set @CountryCode = 'AR';
Set @FacultyName = 'medicina'
Set @CategoryName = 'maestria';
                SELECT  pa.Amount * pfs.Value  
                ,c.Code,ct.SeoUrl
                    --*(select testModCountryFacCat(@CountryCode,@FacultyName,@CategoryName))
                   -- ,(select testModCountryFacCat(@CountryCode,@FacultyName,@CategoryName))
                    FROM [dbo].[CourseTypeCountries] ct
                    INNER JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
                    JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
                    JOIN Countries as c ON c.id = ct.CountryId
                    WHERE c.Code = @CountryCode                   
                    AND pfs.FacultyUrl = @FacultyName
                    AND ct.SeoUrl = @CategoryName




SELECT   pc.[Value] * pf.[Value] AS value
            FROM ProductCountryModifiers pc 
            LEFT JOIN ProductCountryFacultyModifiers AS pf on pf.CountryCode = pc.CountryCode
            WHERE pc.CountryCode = @CountryCode
            AND pf.FacultyUrl = @FacultyName
            AND pc.CategoryUrl = @CategoryName 
---------
DECLARE @MAX_CODE INT = (SELECT count(code) from Countries)
DECLARE @Cnt INT = 0, @CntFac INT =0 , @cntCat INT = 0;
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
        --PRINT @VALUE + '            |' -- get actual country
                        
        WHILE @CntFac < @MAX_FACULTYS -- loop facultades
                BEGIN
                        SET @CATEGORY_VALUE = (Select SeoUrl FROM 
                                        (SELECT (ROW_NUMBER() OVER (ORDER BY (SELECT NULL))) [index] , SeoUrl from Areas) R
                                                ORDER BY R.[index] OFFSET @CntFac 
                                        ROWS FETCH NEXT 1 ROWS ONLY); 
                PRINT '------------ FACULTAD -----'  + @CATEGORY_VALUE 
                PRINT '------------ NUMERO   ----- ' + CAST(@CntFac AS VARCHAR);
                        Set @CountryCode = @VALUE;
                        Set @FacultyName = @CATEGORY_VALUE
                        --Set @CategoryName = 'maestria';
                        --(SELECT   dbo.testModCountryFacCat('ES','medicina''master') AS VALUE)
                        WHILE @cntCat <= @lenthCat
                        BEGIN
                                PRINT '|-----CATEGORIA '+ CAST(@cntCat AS VARCHAR);
                                SET @cntCat +=1;
                        END
                SET @cntCat =0;   
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


------------ORIGINAL  COURSEDTA POR PAIS FACULTAD CATEGORIA-------------------------------------
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
        --PRINT @VALUE -- get actual country
        SELECT cd.TotalAmount
        ,cd.SeoUrl ,a.SeoUrl AS FACTULTY,ct.SeoUrl AS CATEGORY
        ,cd.Credits ,c.code  
            FROM dbo.CourseData as cd
                left join countries as c on c.id = cd.CountryId
                left join CourseTypeCountries as ct on ct.Id = cd.CourseTypeCountryId
                left join Courses as cr  on cr.id = cd.CourseId
                left join CourseAreas as ca on ca.CourseId = cr.id
                left join Areas as a on a.id = ca.AreaId
            where c.Code = @VALUE
            and a.SeoUrl  IN  (SELECT faculty FROM @facultiesTemp)
            AND ct.SeoUrl IN (SELECT ct.SeoUrl
                                FROM CourseTypeCountries ct
                                JOIN Countries as c on c.Id = ct.CountryId
                                WHERE c.Code =  @VALUE
                                AND SeoUrl NOT IN ('eir', 'posgrado', 'a1','a2','b1','b2','c1', 'c2')) 
            ORDER BY c.code, a.SeoUrl, ct.SeoUrl
--------------
        SET @Cnt +=1;
END
--------HASTA AKI----ORIGINAL  COURSEDTA POR PAIS FACULTAD CATEGORIA-------------------------------------
-----------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------
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
                PRINT '------------ NUMERO   ----- ' + CAST(@CntFac AS VARCHAR);

                Set @CountryCode = @VALUE;
                Set @FacultyName = @FACULTY_VALUE

                SELECT  pa.Amount * pfs.Value  AS newAmount
                    ,pfs.FacultyUrl, pfs.CategoryUrl
                    --*(select testModCountryFacCat(@CountryCode,@FacultyName,@CategoryName))
                   -- ,(select testModCountryFacCat(@CountryCode,@FacultyName,@CategoryName))
                    FROM [dbo].[CourseTypeCountries] ct
                    INNER JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
                    JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
                    JOIN Countries as c ON c.id = ct.CountryId
                    WHERE c.Code = @VALUE                   
                    AND pfs.FacultyUrl = @FACULTY_VALUE
                    AND ct.SeoUrl IN  (SELECT ct.SeoUrl
                                        FROM CourseTypeCountries ct
                                        JOIN Countries as c on c.Id = ct.CountryId
                                        WHERE c.Code =  @VALUE
                                        AND SeoUrl NOT IN ('eir', 'posgrado', 'a1','a2','b1','b2','c1', 'c2'))
                SET @CntFac +=1;
        END
------------reset counters
        SET @CntFac =0;
        SET @Cnt +=1;
END
--------------
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