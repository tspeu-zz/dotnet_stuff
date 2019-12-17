SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------------------------------------
-- ****   UPDATE TotalAmount - TotalPromoAmount -ScholarshipAmount -  -on CourseData By Country - Faculty - Category - 
--------------------------------------------------------------------------------------------------------------------
-- @INPUT   SET @CountryCode = 'ES';                      --
--          Set @FacultyName = 'escuela-de-idiomas'       --
--          Set @CategoryName = 'examen-oficial-idiomas'  --
--          SET @CurrencyRate = 66.38;                    --
----------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_update_coursedata_totalAmount]

 @CountryCode VARCHAR(02),
 @FacultyName VARCHAR (max),
 @CategoryName VARCHAR (max),
 @CurrencyRate REAL
------------------------------
-- set values
--SET @CountryCode = 'ES';
--Set @FacultyName = 'educacion'
--Set @CategoryName = 'master-universitario';
--SET @CurrencyRate = 66.38;
------------------------------

AS
  UPDATE CourseData 
  SET  CourseData.TotalAmount = 
   (SELECT 
    CASE 
    WHEN @CountryCode IN ('ES', 'PT')
    THEN  
        CASE 
        WHEN @CategoryName = 'curso-universitario' OR  @CategoryName = 'programa-desarrollo-directivo'
        THEN 
            CASE  
            WHEN  cd.Credits > 0
            THEN  
            -- dbo.sfnGetProductAmount(@CountryCode,@FacultyName,@CategoryName)  * cd.Credits                                
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
                AND pc.CategoryUrl =  @CategoryName ) ,0,0)                        
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
        WHEN @CategoryName = 'diplomado' OR  @CategoryName = 'programa-desarrollo-directivo'
        THEN
            CASE 
            WHEN  cd.Credits > 0
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
    END --AS NEW_TotalAmount     
    )
-- ProductScholarshipCountryModifiers
,CourseData.ScholarshipAmount =
    (Select   
    CASE 
    WHEN @CountryCode IN ('ES', 'PT')
    THEN  
        CASE 
        WHEN @CategoryName = 'curso-universitario' OR  @CategoryName = 'programa-desarrollo-directivo'
        THEN 
            CASE  
            WHEN  cd.Credits > 0
            THEN                                                            
                (SELECT round((pa.Amount * pfs.Value)   
                * (SELECT (pc.[Value] * pf.[Value])  
                FROM ProductCountryModifiers pc 
                INNER JOIN ProductCountryFacultyModifiers AS pf on pf.CountryCode = pc.CountryCode
                WHERE pc.CountryCode = @CountryCode
                AND pf.CategoryUrl = @FacultyName
                AND pc.CategoryUrl =  @CategoryName )
                * (SELECT VALUE FROM ProductScholarshipCountryModifiers ps
                    WHERE ps.CountryCode = @CountryCode
                    AND ps.CategoryUrl = @CategoryName) 
                * cd.Credits,2,0)                        
                FROM [dbo].[CourseTypeCountries] ct
                INNER JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
                JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
                JOIN Countries as c ON c.id = ct.CountryId
                WHERE  c.Code = @CountryCode     
                AND  pfs.FacultyUrl = @FacultyName       
                AND ct.SeoUrl = @CategoryName
                )
            ELSE 
                cd.ScholarshipAmount    
            END
        ELSE 
            (SELECT round((pa.Amount * pfs.Value)   
                * (SELECT (pc.[Value] * pf.[Value])  
                FROM ProductCountryModifiers pc 
                INNER JOIN ProductCountryFacultyModifiers AS pf on pf.CountryCode = pc.CountryCode
                WHERE pc.CountryCode = @CountryCode
                AND pf.CategoryUrl = @FacultyName
                AND pc.CategoryUrl =  @CategoryName )
                * (SELECT VALUE FROM ProductScholarshipCountryModifiers ps
                    WHERE ps.CountryCode = @CountryCode
                    AND ps.CategoryUrl = @CategoryName),2,0)                        
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
        WHEN @CategoryName = 'diplomado' OR  @CategoryName = 'programa-desarrollo-directivo'
        THEN 
            CASE  
            WHEN  cd.Credits > 0
            THEN                                                 
                (SELECT round((pa.Amount * pfs.Value)   
                * (SELECT (pc.[Value] * pf.[Value])  
                FROM ProductCountryModifiers pc 
                INNER JOIN ProductCountryFacultyModifiers AS pf on pf.CountryCode = pc.CountryCode
                WHERE pc.CountryCode = @CountryCode
                AND pf.CategoryUrl = @FacultyName
                AND pc.CategoryUrl =  @CategoryName)
                * (SELECT VALUE FROM ProductScholarshipCountryModifiers ps
                    WHERE ps.CountryCode = @CountryCode
                    AND ps.CategoryUrl = @CategoryName) * cd.Credits 
                    * ISNULL(@CurrencyRate,1),2,0)                        
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
            * (SELECT VALUE FROM ProductScholarshipCountryModifiers ps
                WHERE ps.CountryCode = @CountryCode
                AND ps.CategoryUrl = @CategoryName) 
            * ISNULL(@CurrencyRate,1),2,0)                        
            FROM [dbo].[CourseTypeCountries] ct
            INNER JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
            JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
            JOIN Countries as c ON c.id = ct.CountryId
            WHERE  c.Code = @CountryCode     
            AND  pfs.FacultyUrl = @FacultyName       
            AND ct.SeoUrl = @CategoryName
            )
        END    
    END --AS NEW_ScholarshipAmount -- ProductScholarshipCountryModifiers
    )   
-------- TotalPromoAmount -- ProductCouponDiscountFacultyStudyModifiers
,CourseData.TotalPromoAmount  = 
    (Select 
    CASE
    WHEN @CountryCode IN ('ES', 'PT')
    THEN  
        CASE 
        WHEN @CategoryName = 'curso-universitario' OR  @CategoryName = 'programa-desarrollo-directivo'
        THEN 
            CASE  
            WHEN  cd.Credits > 0
            THEN                                                              
                (SELECT round((pa.Amount * pfs.Value)   
                * (SELECT (pc.[Value] * pf.[Value])  
                FROM ProductCountryModifiers pc 
                INNER JOIN ProductCountryFacultyModifiers AS pf on pf.CountryCode = pc.CountryCode
                WHERE pc.CountryCode = @CountryCode
                AND pf.CategoryUrl = @FacultyName
                AND pc.CategoryUrl =  @CategoryName)
                * (SELECT DISTINCT pf.Value
                FROM ProductCouponDiscountFacultyStudyModifiers as pf 
                JOIN CourseTypeCountries as ct ON ct.Name = pf.CategoryUrl
                JOIN Countries as c ON c.id = ct.CountryId
                WHERE c.Code =  @CountryCode   
                AND  ct.SeoUrl = @CategoryName    
                AND  pf.FacultyUrl = @FacultyName)
                * (SELECT  pc.Value FROM ProductCouponDiscountCountryModifiers pc
                WHERE pc.CountryCode = @CountryCode
                AND pc.CategoryUrl = @CategoryName) * cd.Credits,0,0)                        
                FROM [dbo].[CourseTypeCountries] ct
                INNER JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
                JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
                JOIN Countries as c ON c.id = ct.CountryId
                WHERE  c.Code = @CountryCode     
                AND  pfs.FacultyUrl = @FacultyName       
                AND ct.SeoUrl = @CategoryName  
                )
            ELSE 
                cd.TotalPromoAmount    
            END
        ELSE 
            (SELECT round((pa.Amount * pfs.Value)   
                * (SELECT (pc.[Value] * pf.[Value])  
                FROM ProductCountryModifiers pc 
                INNER JOIN ProductCountryFacultyModifiers AS pf on pf.CountryCode = pc.CountryCode
                WHERE pc.CountryCode = @CountryCode
                AND pf.CategoryUrl = @FacultyName
                AND pc.CategoryUrl =  @CategoryName)
                * (SELECT DISTINCT pf.Value
                FROM ProductCouponDiscountFacultyStudyModifiers as pf 
                JOIN CourseTypeCountries as ct ON ct.Name = pf.CategoryUrl
                JOIN Countries as c ON c.id = ct.CountryId
                WHERE c.Code =  @CountryCode   
                AND  ct.SeoUrl = @CategoryName    
                AND  pf.FacultyUrl = @FacultyName)
                * (SELECT  pc.Value FROM ProductCouponDiscountCountryModifiers pc
                WHERE pc.CountryCode = @CountryCode
                AND pc.CategoryUrl = @CategoryName) ,0,0)                        
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
        WHEN @CategoryName = 'diplomado' OR  @CategoryName = 'programa-desarrollo-directivo'
        THEN 
            CASE  
            WHEN  cd.Credits > 0
            THEN                                                             
                (SELECT round((pa.Amount * pfs.Value)   
                * (SELECT (pc.[Value] * pf.[Value])  
                FROM ProductCountryModifiers pc 
                INNER JOIN ProductCountryFacultyModifiers AS pf on pf.CountryCode = pc.CountryCode
                WHERE pc.CountryCode = @CountryCode
                AND pf.CategoryUrl = @FacultyName
                AND pc.CategoryUrl =  @CategoryName)
                * (SELECT DISTINCT pf.Value
                FROM ProductCouponDiscountFacultyStudyModifiers as pf 
                JOIN CourseTypeCountries as ct ON ct.Name = pf.CategoryUrl
                JOIN Countries as c ON c.id = ct.CountryId
                WHERE c.Code =  @CountryCode   
                AND  ct.SeoUrl = @CategoryName    
                AND  pf.FacultyUrl = @FacultyName)
                * (SELECT  pc.Value FROM ProductCouponDiscountCountryModifiers pc
                WHERE pc.CountryCode = @CountryCode
                AND pc.CategoryUrl = @CategoryName) * cd.Credits 
                * ISNULL(@CurrencyRate,1),0,0)                        
                FROM [dbo].[CourseTypeCountries] ct
                INNER JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
                JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
                JOIN Countries as c ON c.id = ct.CountryId
                WHERE  c.Code = @CountryCode     
                AND  pfs.FacultyUrl = @FacultyName       
                AND ct.SeoUrl = @CategoryName  
                )                    
            ELSE 
                    cd.TotalPromoAmount    
            END
        ELSE 
            (SELECT round((pa.Amount * pfs.Value)   
            * (SELECT (pc.[Value] * pf.[Value])  
            FROM ProductCountryModifiers pc 
            INNER JOIN ProductCountryFacultyModifiers AS pf on pf.CountryCode = pc.CountryCode
            WHERE pc.CountryCode = @CountryCode
            AND pf.CategoryUrl = @FacultyName
            AND pc.CategoryUrl =  @CategoryName)
            * (SELECT DISTINCT pf.Value
            FROM ProductCouponDiscountFacultyStudyModifiers as pf 
            JOIN CourseTypeCountries as ct ON ct.Name = pf.CategoryUrl
            JOIN Countries as c ON c.id = ct.CountryId
            WHERE c.Code =  @CountryCode   
            AND  ct.SeoUrl = @CategoryName    
            AND  pf.FacultyUrl = @FacultyName)
            * (SELECT  pc.Value FROM ProductCouponDiscountCountryModifiers pc
            WHERE pc.CountryCode = @CountryCode
            AND pc.CategoryUrl = @CategoryName) 
            * ISNULL(@CurrencyRate,1),0,0)                        
            FROM [dbo].[CourseTypeCountries] ct
            INNER JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
            JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
            JOIN Countries as c ON c.id = ct.CountryId
            WHERE  c.Code = @CountryCode     
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
and     a.SeoUrl = @FacultyName
AND     ct.SeoUrl = @CategoryName

GO
