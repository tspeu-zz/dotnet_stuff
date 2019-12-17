        
        
       SELECT cd.CourseId,

       cd.SeoTitle,cd.TotalAmount, cd.Title
       ,ct.SeoUrl,a.SeoUrl  , c.code
        
        FROM dbo.CourseData as cd
            left join countries as c on c.id = cd.CountryId
            left join CourseTypeCountries as ct on ct.Id = cd.CourseTypeCountryId
            left join Courses as cr  on cr.id = cd.CourseId
            left join CourseAreas as ca on ca.CourseId = cr.id
            left join Areas as a on a.id = ca.AreaId
        WHERE c.Code  = 'ES'
        AND a.SeoUrl  = 'medicina'
        --AND ct.SeoUrl = @CategoryName
        ORDER BY c.Code, a.SeoUrl, ct.SeoUrl
-------------------------------------------------------------------------
SELECT round( (pa.Amount * pf.Value) *  pfs.Value *
    (SELECT  pc.Value FROM ProductCouponDiscountCountryModifiers pc
        WHERE pc.CountryCode = 'ES'
        AND pc.CategoryUrl = 'curso-universitario'
    ) * 1 , 2,0)   AS NEW_DISCOUNT 
,pf.CategoryUrl, pfs.CategoryUrl, pfs.FacultyUrl  
FROM [dbo].[CourseTypeCountries] ct
JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
JOIN ProductFacultyStudyModifiers as pf On pf.CategoryUrl = ct.name
JOIN ProductCouponDiscountFacultyStudyModifiers as pfs On pfs.CategoryUrl = pa.CategoryUrl
JOIN Countries as c ON c.id = ct.CountryId
WHERE  c.Code =  'ES'    
AND  pfs.FacultyUrl = 'educacion'     
AND ct.SeoUrl = 'curso-universitario' 
--------------------------------------------------------------------------
SELECT round( (pa.Amount * pfs.Value ) *
            (SELECT pf.Value
            FROM ProductCouponDiscountFacultyStudyModifiers as pf 
            JOIN CourseTypeCountries as ct ON ct.Name = pf.CategoryUrl
            JOIN Countries as c ON c.id = ct.CountryId
            WHERE  pf.FacultyUrl = 'educacion'  
            AND  ct.SeoUrl = 'curso-universitario'    
            AND c.Code =  'ES' )
        * (SELECT  pc.Value FROM ProductCouponDiscountCountryModifiers pc
        WHERE pc.CountryCode = 'ES'
        AND pc.CategoryUrl = 'curso-universitario') 
        * 1 , 2,0)            
FROM [dbo].[CourseTypeCountries] ct
LEFT JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
LEFT JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
LEFT JOIN Countries as c ON c.id = ct.CountryId
WHERE  c.Code =  'ES'    
AND  pfs.FacultyUrl = 'educacion'     
AND ct.SeoUrl = 'curso-universitario' 
--------------------------------------------------------------------------
SELECT pf.CategoryUrl,pf.FacultyUrl  ,pf.[Value]
FROM ProductCouponDiscountFacultyStudyModifiers as pf 
JOIN CourseTypeCountries as ct ON ct.Name = pf.CategoryUrl
 JOIN Countries as c ON c.id = ct.CountryId
WHERE  pf.FacultyUrl = 'educacion'  
AND  ct.SeoUrl = 'curso-universitario'    
AND c.Code =  'ES' 

--------------------------------------------------------------------------
   


