-------------------------------------------------------------------------
-- ****  TEST UPDATE TotalAmount - ScholarshipAmount -  -on CourseData BY Country - Faculty - Category - 
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
-- clase-conversacion-idiomas, evaluacion-oficial-idiomas, examen-oficial-idiomas, 
--- grado - curso-universitario - diplomado -grado --cfc --programa-desarrollo-directivo
--------------------------------------------------------------------------------------------
-- escuela-de-idiomas , medicina - odontologia - enfermeria - escuela-de-negocios
-- farmacia -filosofia - fisioterapia	medicina -	nutricion - psicologia
--*******************************************************************************************
DECLARE @TEST_VALUE REAL;
--*******************************************************************************************
DECLARE @CountryCode VARCHAR(02);
DECLARE @FacultyName VARCHAR (max);
DECLARE @CategoryName VARCHAR (max);
DECLARE @CurrencyRate REAL;
-- set values
--Set @FacultyName = 'odontologia' 
--Set @FacultyName = 'farmacia' 
--Set @FacultyName = 'enfermeria' 
--Set @FacultyName = 'fisioterapia' 
--Set @FacultyName = 'nutricion' 
--Set @FacultyName = 'psicologia' 
--Set @FacultyName = 'educacion' 
--Set @FacultyName = 'filosofia' 
--Set @FacultyName = 'escuela-de-idiomas' 
--Set @FacultyName = 'escuela-de-negocios' 
Set @FacultyName = 'medicina' 
---------------------------
SET @CountryCode = 'ES'; 
--Set @CategoryName = 'clase-conversacion-idiomas';
--Set @CategoryName = 'grado';	
Set @CategoryName = 'master';	
--Set @CategoryName = 'curso-universitario';	
--Set @CategoryName = 'diplomado';	
--Set @CategoryName = 'maestria';	
--Set @CategoryName = 'programa-desarrollo-directivo';	
--Set @CategoryName = 'cfc';	
SET @CurrencyRate = 1;
------------------------------
	
--
SELECT  cd.id ,cd.TotalAmount AS C_DATA_TotalAmount ,  cd.credits, cr.Title,  cd.SeoTitle,
    CASE 
    WHEN @CountryCode IN ('ES', 'PT')
    THEN  
        CASE 
        WHEN @CategoryName = 'curso-universitario' OR  @CategoryName = 'programa-desarrollo-directivo'
        THEN 
            CASE  
            WHEN  cd.Credits > 0
            THEN         
                CASE   
                    WHEN dbo.sfnGetProductAmount(@CountryCode,@FacultyName,@CategoryName) * cd.Credits > 0    
                    AND  dbo.sfnGetProductAmount(@CountryCode,@FacultyName,@CategoryName) * cd.Credits < 500
                        THEN ROUND((dbo.sfnGetProductAmount(@CountryCode,@FacultyName,@CategoryName) * cd.Credits) - 0.01,2,0 ) 

                    WHEN dbo.sfnGetProductAmount(@CountryCode,@FacultyName,@CategoryName) * cd.Credits >=500    
                    AND  dbo.sfnGetProductAmount(@CountryCode,@FacultyName,@CategoryName) * cd.Credits < 800
                        THEN ROUND((dbo.sfnGetProductAmount(@CountryCode,@FacultyName,@CategoryName) * cd.Credits) - 0.01,2,0 )

                    WHEN dbo.sfnGetProductAmount(@CountryCode,@FacultyName,@CategoryName) * cd.Credits >= 800            
                    AND  dbo.sfnGetProductAmount(@CountryCode,@FacultyName,@CategoryName) * cd.Credits < 900
                        THEN  ROUND((dbo.sfnGetProductAmount(@CountryCode,@FacultyName,@CategoryName) * cd.Credits) + 49.99,2,0 ) 

                    WHEN dbo.sfnGetProductAmount(@CountryCode,@FacultyName,@CategoryName) * cd.Credits >= 900            
                    AND  dbo.sfnGetProductAmount(@CountryCode,@FacultyName,@CategoryName) * cd.Credits < 1000
                        THEN  ROUND((dbo.sfnGetProductAmount(@CountryCode,@FacultyName,@CategoryName) * cd.Credits) - 0.01 ,2,0 ) 

                    WHEN dbo.sfnGetProductAmount(@CountryCode,@FacultyName,@CategoryName) * cd.Credits >= 1000 
                    AND  dbo.sfnGetProductAmount(@CountryCode,@FacultyName,@CategoryName) * cd.Credits < 1500
                        THEN ROUND((dbo.sfnGetProductAmount(@CountryCode,@FacultyName,@CategoryName) * cd.Credits) - 0.01,2,0 )                     
                END               

            ELSE             
               cd.TotalAmount            
            END
        ELSE  
            CASE   
                WHEN dbo.sfnGetProductAmount(@CountryCode,@FacultyName,@CategoryName) > 0    
                AND  dbo.sfnGetProductAmount(@CountryCode,@FacultyName,@CategoryName) < 500
                     THEN ROUND((dbo.sfnGetProductAmount(@CountryCode,@FacultyName,@CategoryName) ) - 0.01,2,0 ) 
                     
                WHEN dbo.sfnGetProductAmount(@CountryCode,@FacultyName,@CategoryName) >= 500    
                AND  dbo.sfnGetProductAmount(@CountryCode,@FacultyName,@CategoryName) < 800
                     THEN ROUND((dbo.sfnGetProductAmount(@CountryCode,@FacultyName,@CategoryName) ) - 0.01,2,0 ) 

                WHEN dbo.sfnGetProductAmount(@CountryCode,@FacultyName,@CategoryName) >= 800            
                AND  dbo.sfnGetProductAmount(@CountryCode,@FacultyName,@CategoryName) < 1000
                     THEN  ROUND((dbo.sfnGetProductAmount(@CountryCode,@FacultyName,@CategoryName) ) - 0.01,2,0 )

                WHEN dbo.sfnGetProductAmount(@CountryCode,@FacultyName,@CategoryName) >= 1000 
                AND  dbo.sfnGetProductAmount(@CountryCode,@FacultyName,@CategoryName) < 1500
                     THEN  ROUND((dbo.sfnGetProductAmount(@CountryCode,@FacultyName,@CategoryName) ) - 0.01,2,0 )
                ELSE
                     ROUND((dbo.sfnGetProductAmount(@CountryCode,@FacultyName,@CategoryName) ) ,2,0 )        
            END
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
    END AS NEW_TotalAmount 
    
    ,cd.ScholarshipAmount 

    -- ProductScholarshipCountryModifiers
    ,CASE 
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
        --(select FLOOR(( ) / 10) * 10 )
            ELSE 
                cd.ScholarshipAmount    
            END
        ELSE 
           (select round(
               (SELECT  round(dbo.sfnGetProductScholarship(@CountryCode,@FacultyName,@CategoryName),2,0)) * 2,-1) /2 )
     -- (select FLOOR(( ) / 10) * 10)
       
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
    END AS NEW_ScholarshipAmount -- ProductScholarshipCountryModifiers
       
    ,cd.TotalPromoAmount 

---------- ProductCouponDiscountFacultyStudyModifiers
    ,CASE
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
    END AS NEW_TotalPromoAmount_DISCOUNT         --ProductCouponDiscountFacultyStudyModifiers  

    FROM dbo.CourseData as cd
        left join countries as c on c.id = cd.CountryId
        left join CourseTypeCountries as ct on ct.Id = cd.CourseTypeCountryId
        left join Courses as cr  on cr.id = cd.CourseId
        left join CourseAreas as ca on ca.CourseId = cr.id
        left join Areas as a on a.id = ca.AreaId
        WHERE c.Code = @CountryCode
        and a.SeoUrl = @FacultyName
        AND ct.SeoUrl = @CategoryName
        --AND cd.Title like '%frecuentes%'
       -- order by cd.id

--------------------------------------------------------------------------

/*              
************************************************************************************
-- sfnGetProductAmount
(SELECT round((pa.Amount * pfs.Value )  
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
************************************************************************************
*/

/*
************************************************************************************
-- sfnGetProductAmountLatam
(SELECT round( 
(pa.Amount * pfs.Value )  
* (SELECT (pc.[Value] * pf.[Value]) 
FROM ProductCountryModifiers pc 
INNER JOIN ProductCountryFacultyModifiers AS pf on pf.CountryCode = pc.CountryCode
WHERE pc.CountryCode = @CountryCode
AND pf.CategoryUrl = @FacultyName
AND pc.CategoryUrl =  @CategoryName ) 
* cd.Credits 
* ISNULL(@CurrencyRate,1) , 2,0)                          
FROM [dbo].[CourseTypeCountries] ct
INNER JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
JOIN Countries as c ON c.id = ct.CountryId
WHERE  c.Code = @CountryCode     
AND  pfs.FacultyUrl = @FacultyName      
AND ct.SeoUrl = @CategoryName) 
************************************************************************************
*/

/* 
************************************************************************************
--sfnGetProductScholarship            
(pa.Amount * pfs.Value)   
* (SELECT (pc.[Value] * pf.[Value])  
FROM ProductCountryModifiers pc 
INNER JOIN ProductCountryFacultyModifiers AS pf on pf.CountryCode = pc.CountryCode
WHERE pc.CountryCode = @CountryCode
AND pf.CategoryUrl = @FacultyName
AND pc.CategoryUrl =  @CategoryName )
* (SELECT VALUE FROM ProductScholarshipCountryModifiers ps
WHERE ps.CountryCode = @CountryCode
AND ps.CategoryUrl = @CategoryName)
,2,0)                        
FROM [dbo].[CourseTypeCountries] ct
INNER JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
JOIN Countries as c ON c.id = ct.CountryId
WHERE  c.Code = @CountryCode     
AND  pfs.FacultyUrl = @FacultyName       
AND ct.SeoUrl = @CategoryName                     
************************************************************************************    
*/

/*
************************************************************************************    
-- sfnGetProductCouponDiscount
(SELECT round(
(pa.Amount * pfs.Value)   
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
,0,0)                        
FROM [dbo].[CourseTypeCountries] ct
INNER JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
JOIN Countries as c ON c.id = ct.CountryId
WHERE  c.Code = @CountryCode     
AND  pfs.FacultyUrl = @FacultyName       
AND ct.SeoUrl = @CategoryName                    
)
************************************************************************************    
*/