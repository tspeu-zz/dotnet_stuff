--SELECT * FROM  ProductCountryModifiers 
-- *  FROM ProductFacultyStudyModifiers

    SELECT ct.Name,  pa.CategoryUrl, pfs.CategoryUrl,pc.CategoryUrl, ct.SeoUrl, pfs.FacultyUrl, pcf.CategoryUrl
        ,pa.Amount , pfs.Value, pc.Value, pcf.value
        ,round((pa.Amount * pfs.Value * pc.Value * pcf.value),2,0) AS New_TotalAmount
        ,c.code 
    FROM [dbo].[CourseTypeCountries] ct
     JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
    JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
    JOIN Countries as c ON c.id = ct.CountryId
    JOIN ProductCountryModifiers as pc ON pc.CategoryUrl = ct.SeoUrl
    JOIN ProductCountryFacultyModifiers as pcf On pcf.CategoryUrl = pfs.FacultyUrl
    WHERE  c.Code = 'AR' 
   AND  pfs.FacultyUrl = 'escuela-de-idiomas'  
    AND ct.SeoUrl = 'maestria'                       
   order by ct.SeoUrl, pfs.FacultyUrl
---
   SELECT * FROM ProductAmounts
   SELECT CategoryUrl FROM ProductCountryModifiers
UPDATE ProductCountryModifiers
SET CategoryUrl ='evaluacion-oficial-idiomas'
WHERE CategoryUrl = 'evaluacion-oficial'

--
SELECT NAME, SeoUrl   FROM [dbo].[CourseTypeCountries] ct
---
SELECT * FROM CourseData DATA

--     --------------------------                              
SELECT * FROM ProductCouponDiscountCountryModifiers
UPDATE ProductCouponDiscountCountryModifiers
SET CategoryUrl = 'examen-oficial-idiomas'
WHERE CategoryUrl = 'examenes-oficiales'


-- -----------------------------------
SELECT * FROM ProductCouponDiscountFacultyStudyModifiers
--------------------------------------

--
--****************************
    SELECT ct.name
          ,pa.CategoryUrl
          --,pcd.CategoryUrl
          ,ct.SeoUrl
          ,pa.Amount * pcd.[Value]
          --, psc.CategoryUrl ProductScholarshipCountryModifiers , psc.CountryCode
    FROM [dbo].[CourseTypeCountries] ct
    JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
    JOIN ProductCouponDiscountFacultyStudyModifiers as pcd ON pcd.CategoryUrl = pa.CategoryUrl
    where pcd.FacultyUrl = 'escuela-de-idiomas'
    and ct.SeoUrl = 'ES'
--
    --    
--*********************************
 
--*********************************


        SELECT round(pc.Value,2,0 ) 
                ,pc.CategoryUrl, pc.CountryCode
                ,ct.SeoUrl,c.Code  
            FROM ProductCouponDiscountCountryModifiers pc 
            INNER JOIN CourseTypeCountries AS ct on ct.SeoUrl = pc.CategoryUrl
            JOIN Countries as c ON c.id = ct.CountryId
            WHERE c.code = 'AR'
            AND pc.CategoryUrl = 'maestria'




SELECT * FROM ProductCouponDiscountCountryModifiers pc
WHERE pc.CountryCode = 'AR'
AND pc.CategoryUrl = 'maestria'
****************************











SELECT * FROM ProductCouponDiscountFacultyStudyModifiers
             
    --JOIN ProductScholarshipCountryModifiers as psc ON psc. = ct.SeoUrl

--examen-oficial-idiomas --evaluacion-oficial-idiomas

SELECT  *  FROM ProductCouponDiscountCountryModifiers 
WHERE CountryCode = 'ES'

---------------
------------------------------------
--SELECT * FROM ProductScholarshipCountryModifiers
------------------------------------
UPDATE ProductScholarshipCountryModifiers
SET CategoryUrl = 'clase-conversacion-idiomas'

WHERE CategoryUrl = 'clases-conversacion-online'
--examen-oficial-idiomas  --evaluacion-oficial-idiomas --clases-conversacion-online

 SELECT VALUE,CategoryUrl FROM ProductScholarshipCountryModifiers
 WHERE CountryCode = 'ES'
 AND CategoryUrl = ''