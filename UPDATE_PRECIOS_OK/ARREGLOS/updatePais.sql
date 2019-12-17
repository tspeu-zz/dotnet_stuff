-- contadores
DECLARE @Cnt INT = 0, @CntFac INT =0 , @cntCat INT = 0;
-- lista de Facutlades - Categorias
Declare @FacultiesTemp Table (SeoUrl varchar(max));
Insert into  @FacultiesTemp(SeoUrl)
Select SeoUrl from Areas;
-- lista de Categorias
Declare @CategoriesTemp Table (SeoUrl varchar(max));
Insert into  @CategoriesTemp(SeoUrl)
SELECT DISTINCT  ct.SeoUrl from CourseTypeCountries ct
LEFT JOIN Countries as c on c.Id = ct.CountryId 
WHERE  SeoUrl NOT IN ('eir', 'posgrado', 'a1','a2','b1','b2','c1', 'c2', 'clase-conversacion-idiomas', 
'curso-oficial-idiomas','evaluacion-oficial-idiomas', 'examen-oficial-idiomas', 'programa-desarrollo-directivo');  
-- lista de paises
--DECLARE @MAX_CODE INT = (SELECT count(code) from Countries WHERE CODE IN('AR','ES'))
--DECLARE @VALUE VARCHAR(02);
--
DECLARE @MAX_FACULTYS INT = (Select Count(SeoUrl) from Areas) 
DECLARE @FACULTY_VALUE VARCHAR(max);
--
DECLARE @MAX_CATEGORYS INT = (SELECT count(DISTINCT SeoUrl)
                              FROM @CategoriesTemp);
DECLARE @CATEGORY_VALUE VARCHAR(max);
--
DECLARE @CountryCode VARCHAR(02);
DECLARE @FacultyName VARCHAR (max);
DECLARE @CategoryName VARCHAR (max);
---
DECLARE @CurrencyRate REAL;
SET @CountryCode = 'AR';
SET @CurrencyRate = 66.38;



WHILE @CntFac < @MAX_FACULTYS -- loop facultades
        BEGIN
                SET @FACULTY_VALUE = 
                        (Select SeoUrl FROM 
                                (SELECT (ROW_NUMBER() OVER (ORDER BY (SELECT NULL))) [index] , SeoUrl from @FacultiesTemp) R
                        ORDER BY R.[index] OFFSET @CntFac 
                        ROWS FETCH NEXT 1 ROWS ONLY); 
                PRINT '------------ FACULTAD ----- '  + @FACULTY_VALUE 
        
                WHILE @cntCat < @MAX_CATEGORYS -- loop categorias
                BEGIN   
                        SET @CATEGORY_VALUE = 
                            (Select  SeoUrl FROM 
                                (SELECT (ROW_NUMBER() OVER (ORDER BY (SELECT NULL))) [index] ,  SeoUrl from @CategoriesTemp) R
                            ORDER BY R.[index] OFFSET @cntCat 
                            ROWS FETCH NEXT 1 ROWS ONLY); 
        
                        PRINT '|--------------------------CATEGORIA '+ @CATEGORY_VALUE

                        --Set @CountryCode = @VALUE;
                        Set @FacultyName = @FACULTY_VALUE
                        Set @CategoryName = @CATEGORY_VALUE;
                        PRINT '|---------------------------------@CountryCode -> ' + @CountryCode;
                        PRINT '|---------------------------------@FacultyName -> ' + @FacultyName;
                        PRINT '|---------------------------------@CategoryName -> ' + @CategoryName;
                                
                        SELECT  cd.id
                                ,cd.TotalAmount AS C_DATA_TotalAmount   
                                ,CASE 
                                WHEN @CountryCode IN ('ES', 'PT')
                                        THEN  
                                        CASE 
                                                WHEN @CategoryName = 'curso-universitario'
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
                                                AND  pfs.FacultyUrl = @FACULTY_VALUE       
                                                AND ct.SeoUrl = @CategoryName                        
                                                )

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
                                                AND  pfs.FacultyUrl = @FACULTY_VALUE       
                                                AND ct.SeoUrl = @CategoryName                        
                                                )
                                        END
                                ELSE --'ES LATAM'
                                CASE 
                                        WHEN @CategoryName = 'diplomado'
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
                                                AND  pfs.FacultyUrl = @FACULTY_VALUE       
                                                AND ct.SeoUrl = @CategoryName                        
                                                )

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
                                                AND  pfs.FacultyUrl = @FACULTY_VALUE       
                                                AND ct.SeoUrl = @CategoryName                        
                                                )
                                        END    
                                END AS NEW_TotalAmount     
                                
                                ,(SELECT round( (pa.Amount * pfs.Value )
                                                * (SELECT pc.[Value] * pf.[Value]
                                                FROM ProductCountryModifiers pc 
                                                INNER JOIN ProductCountryFacultyModifiers AS pf on pf.CountryCode = pc.CountryCode
                                                WHERE pc.CountryCode = @CountryCode
                                                AND pf.CategoryUrl = @FacultyName
                                                AND pc.CategoryUrl =  @CategoryName) 
                                        ,2,0)                          
                                        FROM [dbo].[CourseTypeCountries] ct
                                        INNER JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
                                        JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
                                        JOIN Countries as c ON c.id = ct.CountryId
                                        WHERE  c.Code = @CountryCode     
                                        AND  pfs.FacultyUrl = @FACULTY_VALUE       
                                        AND ct.SeoUrl = @CategoryName                        
                                ) AS PRODUCT_Amout_EUR
                                ,cd.Credits
                                ,cd.SeoUrl, a.SeoUrl AS C_DATA_FACTULTY, ct.SeoUrl AS C_DATA_CATEGORY, c.code
                        FROM dbo.CourseData as cd
                                left join countries as c on c.id = cd.CountryId
                                left join CourseTypeCountries as ct on ct.Id = cd.CourseTypeCountryId
                                left join Courses as cr  on cr.id = cd.CourseId
                                left join CourseAreas as ca on ca.CourseId = cr.id
                                left join Areas as a on a.id = ca.AreaId
                        WHERE c.Code  = @CountryCode
                        AND a.SeoUrl  = @FacultyName
                        AND ct.SeoUrl = @CategoryName
                        ORDER BY c.Code, a.SeoUrl, ct.SeoUrl

-- reset contadores
                        SET @cntCat +=1;
                END
                SET @cntCat =0;   
                SET @CntFac +=1;
        END
--        SET @CntFac =0;
--        SET @Cnt +=1;