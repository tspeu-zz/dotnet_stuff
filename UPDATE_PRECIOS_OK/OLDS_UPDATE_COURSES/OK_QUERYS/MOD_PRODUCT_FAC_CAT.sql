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

                SELECT  pa.Amount * pfs.Value  AS newAmount
                    ,pfs.FacultyUrl, pfs.CategoryUrl, c.code
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