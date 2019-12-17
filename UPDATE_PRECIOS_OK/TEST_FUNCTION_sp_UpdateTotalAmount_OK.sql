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
ALTER PROCEDURE [dbo].[sp_TEST_update_coursedata_totalAmount]

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
                ROUND((dbo.sfnGetProductAmount(@CountryCode,@FacultyName,@CategoryName) * cd.Credits) ,2,0 )                              
            ELSE 
                cd.TotalAmount    
            END
        ELSE 
             ROUND((dbo.sfnGetProductAmount(@CountryCode,@FacultyName,@CategoryName) ) ,2,0 ) 

        END
    ELSE --'ES LATAM'
        CASE 
        WHEN @CategoryName = 'diplomado' OR  @CategoryName = 'programa-desarrollo-directivo'
        THEN
            CASE 
            WHEN  cd.Credits > 0
            THEN    
                ROUND((dbo.sfnGetProductAmountLatam(@CountryCode,@FacultyName,@CategoryName,@CurrencyRate) * cd.Credits)  * ISNULL(@CurrencyRate,1),2,0 )                                                     
            ELSE 
                cd.TotalAmount    
            END    
        ELSE 
            ROUND(dbo.sfnGetProductAmountLatam(@CountryCode,@FacultyName,@CategoryName,@CurrencyRate)  * ISNULL(@CurrencyRate,1),2,0 )  
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
                (select round(
                    (SELECT  round(dbo.sfnGetProductScholarship(@CountryCode,@FacultyName,@CategoryName) * cd.Credits ,2,0)) * 2,-1) /2 )                                                             

            ELSE 
                cd.ScholarshipAmount    
            END
        ELSE 
            (select round(
                (SELECT  round(dbo.sfnGetProductScholarship(@CountryCode,@FacultyName,@CategoryName),2,0)) * 2,-1) /2 )

        END
    ELSE --'ES LATAM'
        CASE    
        WHEN @CategoryName = 'diplomado' OR  @CategoryName = 'programa-desarrollo-directivo'
        THEN 
            CASE  
            WHEN  cd.Credits > 0
            THEN    
             (SELECT round(dbo.sfnGetProductScholarship(@CountryCode,@FacultyName,@CategoryName) *cd.Credits  * ISNULL(@CurrencyRate,1),2,0))                                                                      
            ELSE 
                cd.TotalAmount    
            END
        ELSE   
            (SELECT round(dbo.sfnGetProductScholarship(@CountryCode,@FacultyName,@CategoryName)* ISNULL(@CurrencyRate,1),2,0))         
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
                (SELECT round( dbo.sfnGetProductCouponDiscount(@CountryCode,@FacultyName,@CategoryName) * cd.Credits,0,0) )                                                             
            ELSE 
                cd.TotalPromoAmount    
            END
        ELSE  
            (SELECT round(dbo.sfnGetProductCouponDiscount(@CountryCode,@FacultyName,@CategoryName) ,0,0) )
        END
    ELSE --'ES LATAM'
        CASE    
        WHEN @CategoryName = 'diplomado' OR  @CategoryName = 'programa-desarrollo-directivo'
        THEN 
            CASE  
            WHEN  cd.Credits > 0
            THEN  
                (SELECT round( dbo.sfnGetProductCouponDiscount(@CountryCode,@FacultyName,@CategoryName)  * cd.Credits  * ISNULL(@CurrencyRate,1),0,0))                                                                              
            ELSE 
                cd.TotalPromoAmount    
            END
        ELSE 
            (SELECT round( dbo.sfnGetProductCouponDiscount(@CountryCode,@FacultyName,@CategoryName) * ISNULL(@CurrencyRate,1),0,0))    
        END    
    END --ProductCouponDiscountFacultyStudyModifiers 
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
