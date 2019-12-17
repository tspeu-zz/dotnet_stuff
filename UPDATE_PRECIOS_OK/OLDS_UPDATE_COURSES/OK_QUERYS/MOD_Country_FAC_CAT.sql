-------- MODIFICADOR POR  PAIS - FACULTADES - TODAS LAS CATEGORIAS POR PAIS-------------------------
-----------------------------------
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
--
WHILE @Cnt < @MAX_CODE
BEGIN
        SET @VALUE = (SELECT CODE FROM
                        (SELECT (ROW_NUMBER() OVER (ORDER BY (SELECT NULL))) [index] , Code from Countries) R 
                    ORDER BY R.[index] OFFSET @Cnt 
                    ROWS FETCH NEXT 1 ROWS ONLY);
        --PRINT @VALUE + '            |' -- get actual country
                        
        WHILE @CntFac < @MAX_FACULTYS
                BEGIN
                        SET @CATEGORY_VALUE = (Select SeoUrl FROM 
                                        (SELECT (ROW_NUMBER() OVER (ORDER BY (SELECT NULL))) [index] , SeoUrl from Areas) R
                                                ORDER BY R.[index] OFFSET @CntFac 
                                        ROWS FETCH NEXT 1 ROWS ONLY); 
                --PRINT '------------ FACULTAD -----'  + @CATEGORY_VALUE 
                --PRINT '------------ NUMERO   ----- ' + CAST(@CntFac AS VARCHAR);
                        Set @CountryCode = @VALUE;
                        Set @FacultyName = @CATEGORY_VALUE
                        SELECT     round(pc.[Value] * pf.[Value], 2,1) AS value,
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
--------------actualizar contadores
        SET @CntFac =0;
        SET @Cnt +=1;
END
--------------------------------------------


