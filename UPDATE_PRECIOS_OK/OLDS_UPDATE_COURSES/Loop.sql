
---
Declare @countriesTemp Table (code varchar(02));
Insert into  @countriesTemp(code)
Select Code from Countries 
--Select * from @countriesTemp;
--
Declare @facultiesTemp Table (faculty varchar(max));
Insert into  @facultiesTemp(faculty)
Select SeoUrl from Areas 
--Select * from @facultiesTemp
---
Declare @categoryTemp Table(category varchar(max))
Insert into  @categoryTemp(category)
Select DISTINCT SeoUrl from CourseTypeCountries 
WHERE SeoUrl NOT IN ('eir', 'posgrado', 'a1','a2','b1','b2','c1', 'c2')
--Select * from @categoryTemp
----------------------------------------
Declare @lengthCountries INT, @lenthFact INT, @lenthCat INT;
DECLARE @cnt INT = 0, @cntCat INT = 0, @cntFac INT = 0;
SET @lengthCountries = (SELECT count(code) from Countries);     --24
SET @lenthFact = (SELECT Count(SeoUrl) FROM Areas);             --11
SET @lenthCat = (Select  Count(DISTINCT SeoUrl) from CourseTypeCountries 
                 WHERE SeoUrl NOT IN ('eir', 'posgrado', 'a1','a2','b1','b2','c1', 'c2')); --18
WHILE @cnt <= 3-- @lengthCountries
BEGIN
        PRINT 'PAIS--> ' + CAST(@cnt AS VARCHAR);
                WHILE  @cntFac <= 2-- @lenthFact 
                BEGIN
                        PRINT '-------FACULTAD '+ CAST(@cntFac AS VARCHAR);
                                WHILE @cntCat <= 3--@lenthCat
                                BEGIN
                                        PRINT '       |-----CATEGORIA '+ CAST(@cntCat AS VARCHAR);
                                        SET @cntCat +=1;
                                END
                        SET @cntCat =0;       
                        SET @cntFac +=1;
                END
       SET @cntFac =0;
       SET @cnt +=1;
END;

------------------------------------------------------
/*WHILE EXISTS( 
        SELECT cd.TotalAmount
                ,cd.SeoUrl ,a.SeoUrl ,a.Name ,ct.SeoUrl
                ,cd.Credits 
        FROM dbo.CourseData as cd
        left join countries as c on c.id = cd.CountryId
        left join CourseTypeCountries as ct on ct.Id = cd.CourseTypeCountryId
        left join Courses as cr  on cr.id = cd.CourseId
        left join CourseAreas as ca on ca.CourseId = cr.id
        left join Areas as a on a.id = ca.AreaId
        where c.Code = 'ES'
        and a.SeoUrl = 'medicina'
        AND ct.SeoUrl = 'curso-universitario'
        )
BEGIN


END
*/
-------------
DECLARE @MAX_CODE INT = (SELECT count(code) from Countries)
DECLARE @Cnt INT = 0, @CntFac INT =0;
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
        PRINT @VALUE + '            |' -- get actual country
                        
        WHILE @CntFac < 4--@MAX_FACULTYS
                BEGIN
                        SET @CATEGORY_VALUE = (Select SeoUrl FROM 
                                        (SELECT (ROW_NUMBER() OVER (ORDER BY (SELECT NULL))) [index] , SeoUrl from Areas) R
                                                ORDER BY R.[index] OFFSET @CntFac 
                                        ROWS FETCH NEXT 1 ROWS ONLY); 
                PRINT '------------ FACULTAD -----'  + @CATEGORY_VALUE 
                PRINT '------------ NUMERO   ----- ' + CAST(@CntFac AS VARCHAR);
                        Set @CountryCode = @VALUE;
                        Set @FacultyName = @CATEGORY_VALUE
                        Set @CategoryName = 'maestria';
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