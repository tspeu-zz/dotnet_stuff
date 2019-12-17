-------------------------------------------------------------------------
-- ****   UPDATE TotalAmount on CourseData BY Country - Faculty - Category - 
-------------------------------------------------------------------------
-- @INPUT   SET @CountryCode = 'ES';
--          Set @FacultyName = 'escuela-de-idiomas'
--          Set @CategoryName = 'examen-oficial-idiomas';
--          SET @CurrencyRate = 66.38;
--*******************************************************************************************
--CREATE PROCEDURE updateCourseDataAmountByCountryFacultyCategory
--
-- @CategoryName NOT IN ('eir', 'posgrado', 'a1','a2','b1','b2','c1', 'c2','programa-desarrollo-directivo' 'curso-oficial-idiomas')
--*******************************************************************************************
-- @CategoryName IN 
--'clase-conversacion-idiomas', 'evaluacion-oficial-idiomas', 'examen-oficial-idiomas' );  
-- master , master-universitario , cfc, experto-universitario, ope-enfermeria
-- clase-conversacion-idiomas, evaluacion-oficial-idiomas, examen-oficial-idiomas, grado
--*******************************************************************************************
-----
DECLARE @CountryCode VARCHAR(02);
DECLARE @FacultyName VARCHAR (max);
DECLARE @CategoryName VARCHAR (max);
DECLARE @CurrencyRate REAL;
-- set values
SET @CountryCode = 'ES';
Set @FacultyName = 'escuela-de-idiomas'
Set @CategoryName = 'examen-oficial-idiomas';
SET @CurrencyRate = 66.38;
----------------------------------------------


        --SELECT  cd.id ,cd.TotalAmount AS C_DATA_TotalAmount ,  cd.credits,   
   UPDATE CourseData 
    SET  CourseData.TotalAmount = 
        (SELECT CASE 
            WHEN @CountryCode IN ('ES', 'PT')
            THEN  
                CASE 
                    WHEN @CategoryName = 'curso-universitario'
                    THEN 
                        CASE  WHEN  cd.Credits > 0
                                THEN                                
                                (SELECT round( (pa.Amount * pfs.Value )  
                                        * (SELECT (pc.[Value] * pf.[Value]) 
                                        FROM ProductCountryModifiers pc 
                                        INNER JOIN ProductCountryFacultyModifiers AS pf on pf.CountryCode = pc.CountryCode
                                        WHERE pc.CountryCode = @CountryCode
                                        AND pf.CategoryUrl = @FacultyName
                                        AND pc.CategoryUrl =  @CategoryName ) 
                                * cd.Credits , 2,0)                          
                                FROM [dbo].[CourseTypeCountries] ct
                                INNER JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
                                JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
                                JOIN Countries as c ON c.id = ct.CountryId
                                WHERE  c.Code = @CountryCode     
                                AND  pfs.FacultyUrl = @FacultyName      
                                AND ct.SeoUrl = @CategoryName                        
                                )
                        ELSE 
                                cd.TotalAmount    
                        END
                    ELSE 
                    (SELECT round((pa.Amount * pfs.Value)   
                            * (SELECT (pc.[Value] * pf.[Value])  
                            FROM ProductCountryModifiers pc 
                            INNER JOIN ProductCountryFacultyModifiers AS pf on pf.CountryCode = pc.CountryCode
                            WHERE pc.CountryCode = @CountryCode
                            AND pf.CategoryUrl = @FacultyName
                            AND pc.CategoryUrl =  @CategoryName ) ,2,0)                        
                    FROM [dbo].[CourseTypeCountries] ct
                    INNER JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
                    JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
                    JOIN Countries as c ON c.id = ct.CountryId
                    WHERE  c.Code = @CountryCode     
                    AND  pfs.FacultyUrl = @FacultyName       
                    AND ct.SeoUrl = @CategoryName                        
                    )
                END
            ELSE --LATAM
                CASE 
                WHEN @CategoryName = 'diplomado'
                    THEN
                        CASE WHEN  cd.Credits > 0
                            THEN                                                       
                            (SELECT round( (pa.Amount * pfs.Value )  
                                    * (SELECT (pc.[Value] * pf.[Value]) 
                                    FROM ProductCountryModifiers pc 
                                    INNER JOIN ProductCountryFacultyModifiers AS pf on pf.CountryCode = pc.CountryCode
                                    WHERE pc.CountryCode = @CountryCode
                                    AND pf.CategoryUrl = @FacultyName
                                    AND pc.CategoryUrl =  @CategoryName ) 
                                    * cd.Credits 
                                    * ISNULL(@CurrencyRate,1), 2,0)                          
                            FROM [dbo].[CourseTypeCountries] ct
                            INNER JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
                            JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
                            JOIN Countries as c ON c.id = ct.CountryId
                            WHERE  c.Code = @CountryCode     
                            AND  pfs.FacultyUrl = @FacultyName      
                            AND ct.SeoUrl = @CategoryName                        
                            )
                        ELSE 
                            cd.TotalAmount    
                    END    
                ELSE 
                    (SELECT round((pa.Amount * pfs.Value)   
                            * (SELECT (pc.[Value] * pf.[Value])  
                            FROM ProductCountryModifiers pc 
                            INNER JOIN ProductCountryFacultyModifiers AS pf on pf.CountryCode = pc.CountryCode
                            WHERE pc.CountryCode = @CountryCode
                            AND pf.CategoryUrl = @FacultyName
                            AND pc.CategoryUrl =  @CategoryName) 
                            * ISNULL(@CurrencyRate,1) ,2,0)                        
                    FROM [dbo].[CourseTypeCountries] ct
                    INNER JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
                    JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
                    JOIN Countries as c ON c.id = ct.CountryId
                    WHERE  c.Code = @CountryCode     
                    AND  pfs.FacultyUrl = @FacultyName      
                    AND ct.SeoUrl = @CategoryName                        
                    )
                END    
            END    
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


