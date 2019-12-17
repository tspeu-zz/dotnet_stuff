-------------------------------------------------------------------------
-- ****   UPDATE TotalAmount - TotalPromoAmount -ScholarshipAmount -  -on CourseData BY Country - Faculty - Category - 
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
-- clase-conversacion-idiomas, evaluacion-oficial-idiomas, examen-oficial-idiomas, grado -curso-universitario - diplomado -grado
----------------
-- escuela-de-idiomas , medicina- 
--*******************************************************************************************
-----
DECLARE @CountryCode VARCHAR(02);
DECLARE @FacultyName VARCHAR (max);
DECLARE @CategoryName VARCHAR (max);
DECLARE @CurrencyRate REAL;
-- set values
SET @CountryCode = 'ES';
Set @FacultyName = 'educacion'
Set @CategoryName = 'master-universitario';
SET @CurrencyRate = 66.38;
------------------------------

--UPDATE
UPDATE CourseData 
  SET  CourseData.TotalAmount = 
   ( SELECT 
        CASE 
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
                            AND pc.CategoryUrl =  @CategoryName ) +1 ,2,0)                        
                    FROM [dbo].[CourseTypeCountries] ct
                    INNER JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
                    JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
                    JOIN Countries as c ON c.id = ct.CountryId
                    WHERE  c.Code = @CountryCode     
                    AND  pfs.FacultyUrl = @FacultyName       
                    AND ct.SeoUrl = @CategoryName                        
                    )
            END
        ELSE --'ES LATAM'
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

--,cd.ScholarshipAmount -- ProductScholarshipCountryModifiers
,CourseData.ScholarshipAmount =
    (Select   
        CASE 
        WHEN @CountryCode IN ('ES', 'PT')
            THEN  
            CASE 
                WHEN @CategoryName = 'curso-universitario'
                    THEN 
                    CASE  WHEN  cd.Credits > 0
                            THEN                                                     
                                (SELECT round( (pa.Amount * pfs.Value ) *
                                    (SELECT VALUE FROM ProductScholarshipCountryModifiers ps
                                        WHERE ps.CountryCode = @CountryCode
                                        AND ps.CategoryUrl = @CategoryName
                                    )* cd.Credits , 2,0)            
                                FROM [dbo].[CourseTypeCountries] ct
                                LEFT JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
                                LEFT JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
                                LEFT JOIN Countries as c ON c.id = ct.CountryId
                                WHERE  c.Code =  @CountryCode    
                                AND  pfs.FacultyUrl = @FacultyName     
                                AND ct.SeoUrl = @CategoryName 
                                )
                    ELSE 
                        cd.ScholarshipAmount    
                    END
                ELSE 
                    (SELECT round( (pa.Amount * pfs.Value ) *
                        (SELECT VALUE FROM ProductScholarshipCountryModifiers ps
                            WHERE ps.CountryCode = @CountryCode
                            AND ps.CategoryUrl = @CategoryName
                        ), 2,0)            
                    FROM [dbo].[CourseTypeCountries] ct
                    LEFT JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
                    LEFT JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
                    LEFT JOIN Countries as c ON c.id = ct.CountryId
                    WHERE  c.Code =  @CountryCode    
                    AND  pfs.FacultyUrl = @FacultyName     
                    AND ct.SeoUrl = @CategoryName                    
                    )
            END
        ELSE --'ES LATAM'
            CASE    
                WHEN @CategoryName = 'diplomado'
                THEN 
                    CASE  WHEN  cd.Credits > 0
                        THEN                                      
                        (SELECT round( (pa.Amount * pfs.Value ) *
                            (SELECT VALUE FROM ProductScholarshipCountryModifiers ps
                                WHERE ps.CountryCode = @CountryCode
                                AND ps.CategoryUrl = @CategoryName
                            )* cd.Credits * ISNULL(@CurrencyRate,1) , 2,0)            
                        FROM [dbo].[CourseTypeCountries] ct
                        LEFT JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
                        LEFT JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
                        LEFT JOIN Countries as c ON c.id = ct.CountryId
                        WHERE  c.Code =  @CountryCode    
                        AND  pfs.FacultyUrl = @FacultyName     
                        AND ct.SeoUrl = @CategoryName 
                        )         
                    ELSE 
                        cd.TotalAmount    
                    END
                ELSE 
                    (SELECT round( (pa.Amount * pfs.Value ) *
                        (SELECT VALUE FROM ProductScholarshipCountryModifiers ps
                            WHERE ps.CountryCode = @CountryCode
                            AND ps.CategoryUrl = @CategoryName
                        ) * ISNULL(@CurrencyRate,1) , 2,0)            
                    FROM [dbo].[CourseTypeCountries] ct
                    LEFT JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
                    LEFT JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
                    LEFT JOIN Countries as c ON c.id = ct.CountryId
                    WHERE  c.Code =  @CountryCode    
                    AND  pfs.FacultyUrl = @FacultyName     
                    AND ct.SeoUrl = @CategoryName  
                    )
            END    
        END --AS NEW_ScholarshipAmount -- ProductScholarshipCountryModifiers
    )   
-------- TotalPromoAmount -- ProductCouponDiscountFacultyStudyModifiers
    , CourseData.TotalPromoAmount  = 
        (Select 
            CASE
            WHEN @CountryCode IN ('ES', 'PT')
                THEN  
                CASE 
                    WHEN @CategoryName = 'curso-universitario'
                    THEN 
                        CASE  WHEN  cd.Credits > 0
                        THEN                                                    
                            (SELECT round( (pa.Amount * pfs.Value ) *
                                (SELECT pf.Value
                                FROM ProductCouponDiscountFacultyStudyModifiers as pf 
                                JOIN CourseTypeCountries as ct ON ct.Name = pf.CategoryUrl
                                JOIN Countries as c ON c.id = ct.CountryId
                                WHERE c.Code =  @CountryCode   
                                AND  ct.SeoUrl = @CategoryName    
                                AND  pf.FacultyUrl = @FacultyName)
                                    * (SELECT  pc.Value FROM ProductCouponDiscountCountryModifiers pc
                                    WHERE pc.CountryCode = @CountryCode
                                    AND pc.CategoryUrl = @CategoryName) 
                            * cd.Credits , 2,0)            
                            FROM [dbo].[CourseTypeCountries] ct
                            LEFT JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
                            LEFT JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
                            LEFT JOIN Countries as c ON c.id = ct.CountryId
                            WHERE  c.Code =  @CountryCode    
                            AND  pfs.FacultyUrl = @FacultyName     
                            AND ct.SeoUrl = @CategoryName 
                            )
                    ELSE 
                        cd.TotalPromoAmount    
                    END
                ELSE 
                    (SELECT round( (pa.Amount * pfs.Value ) *
                        (SELECT pf.Value
                        FROM ProductCouponDiscountFacultyStudyModifiers as pf 
                        JOIN CourseTypeCountries as ct ON ct.Name = pf.CategoryUrl
                        JOIN Countries as c ON c.id = ct.CountryId
                        WHERE c.Code =  @CountryCode   
                        AND  ct.SeoUrl = @CategoryName    
                        AND  pf.FacultyUrl = @FacultyName)
                            * (SELECT  pc.Value FROM ProductCouponDiscountCountryModifiers pc
                            WHERE pc.CountryCode = @CountryCode
                            AND pc.CategoryUrl = @CategoryName) 
                    , 2,0)            
                    FROM [dbo].[CourseTypeCountries] ct
                    LEFT JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
                    LEFT JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
                    LEFT JOIN Countries as c ON c.id = ct.CountryId
                    WHERE  c.Code =  @CountryCode    
                    AND  pfs.FacultyUrl = @FacultyName     
                    AND ct.SeoUrl = @CategoryName                       
                    )
                END
            ELSE --'ES LATAM'
                CASE    
                WHEN @CategoryName = 'diplomado'
                    THEN 
                    CASE  WHEN  cd.Credits > 0
                        THEN                                      
                        (SELECT round( (pa.Amount * pfs.Value ) 
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
                        * cd.Credits * ISNULL(@CurrencyRate,1), 2,0)            
                        FROM [dbo].[CourseTypeCountries] ct
                        LEFT JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
                        LEFT JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
                        LEFT JOIN Countries as c ON c.id = ct.CountryId
                        WHERE  c.Code =  @CountryCode    
                        AND  pfs.FacultyUrl = @FacultyName     
                        AND ct.SeoUrl = @CategoryName 
                        )                    
                    ELSE 
                        cd.TotalPromoAmount    
                    END
                ELSE 
                    (SELECT round( (pa.Amount * pfs.Value ) 
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
                        * ISNULL(@CurrencyRate,1), 2,0)            
                        FROM [dbo].[CourseTypeCountries] ct
                        LEFT JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
                        LEFT JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
                        LEFT JOIN Countries as c ON c.id = ct.CountryId
                        WHERE  c.Code =  @CountryCode    
                        AND  pfs.FacultyUrl = @FacultyName     
                        AND ct.SeoUrl = @CategoryName  
                    )
                END    
            END --AS NEW_TotalPromoAmount_DISCOUNT         --ProductCouponDiscountFacultyStudyModifiers  
        )
    FROM dbo.CourseData as cd
        left join countries as c on c.id = cd.CountryId
        left join CourseTypeCountries as ct on ct.Id = cd.CourseTypeCountryId
        left join Courses as cr  on cr.id = cd.CourseId
        left join CourseAreas as ca on ca.CourseId = cr.id
        left join Areas as a on a.id = ca.AreaId
    WHERE   c.Code = @CountryCode
    AND     a.SeoUrl = @FacultyName
    AND     ct.SeoUrl = @CategoryName

    /* 
    WHERE cd.Id = 33490837
    */
   --33490517 Dislexia
    --cd.Id = 33490837 --intervención Logopédica --cd.Id = 33490440
--------------------------------------------------------------------------


